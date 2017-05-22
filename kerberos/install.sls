{% from "kerberos/map.jinja" import kerberos with context %}

{% if kerberos.pkg is defined %}
kerberos-tools:
  pkg.installed:
    - name: {{ kerberos.pkg }}
{% endif %}

