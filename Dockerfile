FROM jumanjiman/eiffelstudio:d7e5cd2

COPY precomp.e /tmp
ENV EIFFEL_VERSION=13.11
ENV ISE_EIFFEL=/usr/local/Eiffel_$EIFFEL_VERSION
ENV ISE_PLATFORM=linux-x86-64
ENV ISE_LIBRARY=$ISE_EIFFEL
ENV ISE_PRECOMP=$ISE_EIFFEL/precomp/spec/$ISE_PLATFORM
ENV PATH=$PATH:$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin

USER root
RUN cd /tmp && \
    ec -stop precomp.e && \
    rm -rf precomp* EIFGENs/

ENTRYPOINT []
