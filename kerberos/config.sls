{% from "kerberos/map.jinja" import kerberos with context %}

/etc/krb5.conf:
  file.managed:
    - user: root
    - source: salt://kerberos/files/krb5.conf.jinja
    - group: {{ kerberos.get('root_group', 'root') }}
    - mode: 444
    - template: jinja
