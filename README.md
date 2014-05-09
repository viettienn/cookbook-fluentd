cookbook-fluentd Cookbook
=========================

This cookbook helps you to install fluentd.

Requirements
------------

e.g.
#### packages
- `ruby` - cookbook-fluentd needs ruby.

Attributes
----------

#### cookbook-fluentd::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cookbook-fluentd']['install_from_source']</tt></td>
    <td>Boolean</td>
    <td>whether to install from source</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### cookbook-fluentd::default

Just include `cookbook-fluentd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cookbook-fluentd]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Tien Nguyen
