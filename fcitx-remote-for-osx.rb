class FcitxRemoteForOsx < Formula
  desc "Handle input method in command-line"
  homepage "https://github.com/peng1999/fcitx-remote-for-osx"
  url "https://github.com/peng1999/fcitx-remote-for-osx/archive/refs/heads/master.tar.gz"
  version "master"
  sha256 "c8dabf9a7e61abf2501e42137e0b72a5fa84eca7c75ad7294f53cbcba35af0c0"

  INPUT_METHOD = %w[baidu-pinyin baidu-wubi sogou-pinyin qq-wubi squirrel-rime osx-pinyin].freeze
  INPUT_METHOD.each do |im|
    option "with-#{im}", "Build fcitx-remote for osx with #{im} support"
  end

  def install
    input_method = nil
    INPUT_METHOD.each do |im|
      input_method = im if build.with? im
    end

    input_method ||= "baidu-pinyin"

    system "./build.py", "build", input_method
    bin.install "fcitx-remote-#{input_method}"
    bin.install_symlink "fcitx-remote-#{input_method}" => "fcitx-remote"
  end

  test do
    system "#{bin}/fcitx-remote"
  end
end
