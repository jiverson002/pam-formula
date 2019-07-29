pam:
  pkg.installed:
    - name: {{ pillar['pkg']['pam'] }}
  file.managed:
    - name: /etc/pam.d/system-login
    - user: root
    - group: root
    - mode: '0644'
    - source: salt://pam/files/system-login
    - require:
      - pkg: pam
