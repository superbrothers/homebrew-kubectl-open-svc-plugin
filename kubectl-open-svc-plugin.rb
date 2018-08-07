class KubectlOpenSvcPlugin < Formula
  desc "A kubectl plugin that open the Kubernetes URL(s) for the specified service in your browser."
  homepage "https://github.com/superbrothers/kubectl-open-svc-plugin"
  version "v1.2.0"
  url "https://github.com/superbrothers/kubectl-open-svc-plugin/releases/download/#{version}/open-svc-darwin-amd64.zip"
  sha256 "92e21f890c8fed584fe16f4e7cfbb707c8fbc95de286422e06a66ac550040ac5"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    Run the following commands in terminal:
      mkdir -p ~/.kube/plugins && \\
      rm -rf ~/.kube/plugins/kubectl-open-svc-plugin && \\
      cp -RH $(brew --prefix kubectl-open-svc-plugin) ~/.kube/plugins/
    EOS
  end
end
