FROM hashicorp/packer:1.5.4

LABEL "com.github.actions.name" = "Packer build"
LABEL "com.github.actions.description" = "Run packer build on a template file"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository" = "https://github.com/riznob/packer-build-action"
LABEL "homepage" = "https://github.com/riznob/packer-build-action"
LABEL "maintainer" = "Robert Anderson <riznob@gmail.com>"

RUN apk add --no-cache jq
RUN apk add --no-cache curl

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
