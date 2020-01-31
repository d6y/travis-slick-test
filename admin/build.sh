#!/bin/bash

# Setup:
# - Copy keys to admin/secring.asc, admin/pubring.asc
#   - Use a new key pair per repository
# - ssh-keygen -t rsa -b 4096 -C "<github-user-email>" #save as deploykey
#   - Setup github deploy keys using generated keys, keep a copy of generated keys
# - cp deploykey deploykey.pub admin/
# - openssl rsa -in admin/deploykey -outform pem > admin/deploykey.pem
# - chmod 400 admin/deploykey.pem
# - cp ~/.sbt/sonatype.sbt ./
# - tar cvf secrets.tar admin/secring.asc sonatype.sbt admin/deploykey.pem
# - travis encrypt-file secrets.tar --add
# - rm sonatype.sbt admin/secring.asc admin/deploykey admin/deploykey.pub admin/deploykey.pem secrets.tar
# - Set passphrase in admin/publish-settings.sbt
set -e

sbt run
