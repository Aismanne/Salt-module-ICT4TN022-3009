Lamp_stack:
  pkg.installed:
    - pkgs:
      - apache2
      - mariadb-server
      - php
      - libapache2-mod-php
      - php-mysql


apache2:
  service.running:
    - watch:
      - file: /etc/apache2/apache2.conf
      - file: /etc/apache2/ports.conf


/etc/apache2/apache2.conf:
  file.managed:
    - source: salt://Lamp_stack/Config_files/apache2.conf

/etc/apache2/ports.conf:
  file.managed:
    - source: salt://Lamp_stack/Config_files/ports.conf

