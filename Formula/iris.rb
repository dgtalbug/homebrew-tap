class Iris < Formula
  desc "Visual, versioned HTML docs for AI coding work"
  homepage "https://github.com/dgtalbug/iris"
  url "https://registry.npmjs.org/@dgtalbug/iris/-/iris-0.4.0.tgz"
  sha256 "5b0c1a34156a4bded5e792c1f1eff5c821a16c6699fd97f61d8dcdec316829b5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iris --version")

    # init must scaffold a workspace from packaged assets alone, with no network.
    system bin/"iris", "init"
    assert_path_exists testpath/"iris/index.html"
    assert_path_exists testpath/"iris/state.json"
  end
end
