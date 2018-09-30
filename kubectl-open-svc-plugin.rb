class KubectlOpenSvcPlugin < Formula
  desc "A kubectl plugin that open the Kubernetes URL(s) for the specified service in your browser."
  homepage "https://github.com/superbrothers/kubectl-open-svc-plugin"
  version "v2.0.0"
  url "https://github.com/superbrothers/kubectl-open-svc-plugin/releases/download/#{version}/kubectl-open_svc-darwin-amd64.zip"
  sha256 "8b8c17a9591473a7a42973dd439c0bed3476bee49f72db3753fbb73e81a50ff6"

  def install
    bin.install "kubectl-open_svc"
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    Note that kubectl-open-svc v2.0.0 only supports kubectl v1.12 and more.
    If you are using kubectl v1.11, you can install kubectl-open-svc v1.2.0 from the release page below.

    https://github.com/superbrothers/kubectl-open-svc-plugin/releases/tag/v1.2.0
    EOS
  end
end
