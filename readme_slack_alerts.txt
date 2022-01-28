# alerts to slack. paste to alermanager/config.yml

global:
  resolve_timeout: 1m

route:
  receiver: 'slack_notifications'
  group_by: ['alertname']
  group_wait: 10s
  group_interval: 10s
  repeat_interval: 60m
receivers:
- name: 'slack_notifications'
  slack_configs:
  - api_url: https://hooks.slack.com/services/############################
    channel: '#alerts_prom'
    send_resolved: true


inhibit_rules:
  - source_match:
      severity: 'critical'
    target_match:
      severity: 'warning'
    equal: ['alertname', 'dev', 'instance']
