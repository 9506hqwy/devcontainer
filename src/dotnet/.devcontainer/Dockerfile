FROM redhat/ubi9

RUN set -eux; \
    \
    sed -i /etc/dnf/plugins/subscription-manager.conf -e 's/^enabled=1/enabled=0/'; \
    \
    dnf update -y; \
    dnf install -y dotnet-sdk-8.0; \
    \
    dnf clean all
