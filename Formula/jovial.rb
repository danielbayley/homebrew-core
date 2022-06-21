class Jovial < Formula
  desc "Jovial - A lovely zsh theme with responsive-design, it's pretty fast, keep simple but useful"
  homepage "https://github.com/zthxxx/jovial"
  url "https://github.com/zthxxx/jovial/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "a3d8db1802c1038cdc1c2934e93ea177fecced694549b927d373d6457d2b2bab"
  license "MIT"

  depends_on "zsh" => :test

  def install
    #system "./installer.sh", TODO
  end

  test do
    #ENV["JOVIAL_SYMBOL"] = "🍺"
    prompt = "setopt prompt_subst; autoload -U promptinit; promptinit && prompt -p jovial"
    assert_match "─➤", shell_output("zsh -c '#{prompt}'")
  end
end
