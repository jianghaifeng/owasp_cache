FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
USER root

ENV PATH=$PATH:/opt/dependency-check/bin

# Install Gradle and Istio, Add Certificate of Email Notification Gateway
ADD dependency-check-5.2.4-release.zip .
RUN unzip -q dependency-check-5.2.4-release.zip -d /opt && \
    rm -f dependency-check-5.2.4-release.zip && \
    mkdir -p /owasp/cache

USER 1001
