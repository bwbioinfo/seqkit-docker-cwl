FROM rockylinux/rockylinux:9.1

RUN dnf -y update && \
    dnf -y install wget bzip2 python3 python3-pip && 

RUN pip3 install conda

CMD ["/bin/bash"]
