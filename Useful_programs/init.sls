Useful_packages: 
  pkg.installed:
    - pkgs:
      - curl 
      - tree 
      - nano
      - openssh-server

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://Useful_programs/Config_files/sshd_config

sshd:
  service.running:
    - watch:
      - file: /etc/ssh/sshd_config

