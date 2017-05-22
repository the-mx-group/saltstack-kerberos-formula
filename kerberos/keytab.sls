{% from "kerberos/map.jinja" import kerberos with context %}

/etc/krb5:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 750
    - file_mode: 600
    - recurse:
      - user
      - group
      - mode
    - makedirs: True

{%- for keytab in kerberos.get('keytab') %}
/etc/krb5/{{ keytab }}:
  file.managed:
    - user: root
    - source: salt://kerberos/files/{{ keytab }}
    - group: {{ kerberos.get('root_group', 'root') }}
    - template: jinja
{%- endfor %}