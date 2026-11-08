# A deliberately trivial image whose digest changes on every build.
#
# That is the point: proving force_image_pull needs the :dev tag to actually
# move to a new digest. BUILD_ID comes from the workflow run, so two builds of
# the same commit produce two different images — which is exactly the case
# doco-cd has to notice without a new commit to go on.
FROM traefik/whoami:v1.10.3

ARG BUILD_ID=unknown
ENV WHOAMI_NAME=ptah-test-${BUILD_ID}
