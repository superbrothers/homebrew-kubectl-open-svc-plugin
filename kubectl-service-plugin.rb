class KubectlServicePlugin < Formula
  desc "A kubectl plugin that open the Kubernetes URL(s) for the specified service in your browser."
  homepage "https://github.com/superbrothers/kubectl-service-plugin"
  version "v1.0.0"
  url "https://github.com/superbrothers/kubectl-service-plugin/releases/download/#{version}/service-darwin-amd64.zip"
  sha256 "eec1b82725b8c660ba2b1fb3436273b2082179650eef5f4d7d96fb7e36291dc9"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    Run the following commands in terminal:
      mkdir -p ~/.kube/plugins && \\
      rm -rf ~/.kube/plugins/kubectl-service-plugin && \\
      cp -RH $(brew --prefix kubectl-service-plugin) ~/.kube/plugins/
    EOS
  end
end
