FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine

ARG helm_desired_version
ARG kubectl_desired_version
ENV HELM_VERSION=${helm_desired_version}
ENV KUBECTL_VERSION=${kubectl_desired_version}

RUN apk add --no-cache ca-certificates bash git openssh curl \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm

RUN helm plugin install https://github.com/hayorov/helm-gcs