etcd-cookbook
=============
Installs and configures the [etcd][1] highly-available key-value store.

## Supported Platforms
- CentOS 6.5, 5.10
- Ubuntu 12.04, 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['etcd']['version']</tt></td>
    <td>String</td>
    <td>Version of the etcd release</td>
    <td><tt>0.4.1</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['install_dir']</tt></td>
    <td>String</td>
    <td>Directory to install binary</td>
    <td><tt>/usr/local/bin</tt></td>
  </tr>
</table>

## Usage

### etcd::default

Include `etcd` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[etcd::default]"
  ]
}
```

## Authors

Created and maintained by [John Bellone][3] [@johnbellone][2] (<jbellone@bloomberg.net>) and a growing community of [contributors][4].

[1]: https://github.com/coreos/etcd
[2]: https://twitter.com/johnbellone
[3]: https://github.com/johnbellone
[4]: https://github.com/johnbellone/etcd-cookbook/graphs/contributors
