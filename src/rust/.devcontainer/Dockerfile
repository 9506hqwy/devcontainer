FROM redhat/ubi9

ENV RUSTUP_HOME=/opt/rustup
ENV CARGO_HOME=/opt/cargo
ENV PATH=$RUSTUP_HOME/bin:$CARGO_HOME/bin:$PATH

RUN set -eux; \
    \
    sed -i /etc/dnf/plugins/subscription-manager.conf -e 's/^enabled=1/enabled=0/'; \
    \
    dnf update -y; \
    dnf install -y gcc lldb; \
    \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | \
        sh -s -- -y -c llvm-tools,rls,rust-analysis,rust-analyzer,rust-src --no-modify-path; \
    \
    dnf clean all
