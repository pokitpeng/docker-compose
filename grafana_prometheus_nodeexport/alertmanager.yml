global:
  smtp_smarthost: 'smtp.163.com:25'
  smtp_from: 'ahpp1001@163.comm'
  smtp_auth_username: 'ahpp1001@163.com'
  smtp_auth_password: 'qazwsx5998'
  smtp_require_tls: false

route:
  group_by: ['alertname']
  group_wait: 10s
  group_interval: 10s
  repeat_interval: 10m
  receiver: live-monitoring

receivers:
- name: 'live-monitoring'
  email_configs:
  - to: 'pokit@qq.com'
