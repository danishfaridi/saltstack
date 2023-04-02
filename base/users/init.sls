{% for user, data in pillar.get('admin_users', {}).items() %}
{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - home: {{ data['home'] }}
    - uid: {{ data['uid'] }}
    - gid_from_name: {{ data['gid_from_name'] }}
    - groups: {{ data['groups'] }}
    - ssh_key: {{ data['ssh_key'] }}

{% endfor %}}
