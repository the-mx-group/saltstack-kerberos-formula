{% from "kerberos/map.jinja" import kerberos with context %}

include:
  - kerberos.install
  - kerberos.config
  - kerberos.keytab
