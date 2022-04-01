# Utils

Role meant to be used as reusable tasks

```yaml
- name: Run tasks/other.yaml instead of 'main'
  include_role:
    name: myrole
    tasks_from: other
```
