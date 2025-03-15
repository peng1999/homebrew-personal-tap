class Seadrive < Formula
  desc "Seafile Drive Client for Linux"
  homepage "https://www.seafile.com/en/download/"
  url "https://s3.eu-central-1.amazonaws.com/download.seadrive.org/SeaDrive-x86_64-3.0.13.AppImage"
  sha256 "c4d5a8bc1f2d4c3ce624b54f440cecd062f083a7eab9a4e03fa7903dee76e58c"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(/SeaDrive-x86_64-(\d+.\d+.\d+).AppImage/)
  end

  def install
    if OS.mac?
      odie "This formula is only for Linux."
    end
    chmod 0755, "SeaDrive-x86_64-#{version}.AppImage"
    bin.install "SeaDrive-x86_64-#{version}.AppImage" => "seadrive"
  end

  test do
    assert_predicate bin/"seadrive", :exist?
    assert_predicate bin/"seadrive", :executable?
  end

  def caveats
    <<~EOS
      To use Seadrive, run:

        seadrive

      Then, follow the prompts to log in to your Seafile server.

      For more information, see the Seafile user manual:

        https://help.seafile.com/drive_client/drive_client_for-linux/
    EOS
  end
end
