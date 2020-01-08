class Igor < Formula
  desc "Opens a shell in your favorite docker container"
  homepage "https://github.com/felixb/igor"
  version "de4d3fa"
  head "https://github.com/felixb/igor.git"

  def install
    bin_path = buildpath/"igor"

    bin_path.install Dir["*"]

    cd bin_path do
      mv "igor.sh", "igor"
      bin.install "igor"
    end
  end
end
