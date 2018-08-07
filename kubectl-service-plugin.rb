class KubectlServicePlugin < Formula
  desc "A kubectl plugin that open the Kubernetes URL(s) for the specified service in your browser."
  homepage "https://github.com/superbrothers/kubectl-service-plugin"
  version "v1.1.0"
  url "https://github.com/superbrothers/kubectl-service-plugin/releases/download/#{version}/service-darwin-amd64.zip"
  sha256 "8197bc5506c628381cf1ae73ec03cc44d0513f6ca102d8b7165ba7dff034208e"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    This plugin was renamed to "open-svc", so please use "kubectl-open-svc-plugin" instead.
    Note that this formula will be removed in the near future.

    Run the following commands in terminal:
      mkdir -p ~/.kube/plugins && \\
      rm -rf ~/.kube/plugins/kubectl-service-plugin && \\
      cp -RH $(brew --prefix kubectl-service-plugin) ~/.kube/plugins/
    EOS
  end
end
