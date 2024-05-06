class FcitxRemoteForOsx < Formula
  desc "Handle input method in command-line"
  homepage "https://github.com/peng1999/fcitx-remote-for-osx"
  url "https://github.com/peng1999/fcitx-remote-for-osx/archive/refs/heads/master.tar.gz"
  version "latest"

  INPUT_METHOD = %w[baidu-pinyin baidu-wubi sogou-pinyin qq-wubi squirrel-rime macos-pinyin].freeze
  INPUT_METHOD.each do |im|
    option "with-#{im}", "Build fcitx-remote for osx with #{im} support"
  end

  def install
    input_method = nil
    INPUT_METHOD.each do |im|
      input_method = im if build.with? im
    end

    input_method ||= "macos-pinyin"

    system "./build.py", "build", input_method, "abc"
    bin.install "fcitx-remote-#{input_method}"
    bin.install_symlink "fcitx-remote-#{input_method}" => "fcitx-remote"
  end

  test do
    system "#{bin}/fcitx-remote"
  end
end
