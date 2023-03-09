user_danfar:
  user.present:
    - name: danfar 
    - fullname: dan far
    - shell: /bin/bash
    - home: /home/danfar
    - uid: 10000
    - gid_from_name: True
    - group:
      - wheel

key_danfar:
  ssh_auth.present:
    - name: danfar
    - user: danfar
    - source: salt://root/.ssh/danfar.pub