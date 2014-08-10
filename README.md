Description
===========

Updates motd with useful node data

Requirements
============

Needs to be used on a system that utilizes /etc/motd, e.g. FreeBSD, Ubuntu.

Attributes
==========

* `node['motd']['additional_text']` - Additional text to add to the end
  of the motd (e.g. unauthorized access banner).

Usage
=====

```json
"run_list": [
    "recipe[motd]"
]
```

default
----

Updates motd with useful node data

Examples
--------

For example,

    % ssh myserver.int.example.org
    FreeBSD 10.0-RELEASE-p7 (BIGNKPT) #0: Thu Aug  7 08:53:31 UTC 2014     
    **************************************************
    !!! THIS NODE IS MANAGED BY CHEF !!!
    last Chef run was at: 2014-08-08 19:48:22 +0000
     
    Chef-Client - test
    Hostname: test
    Roles:
      base
    **************************************************
    Additional text here when `node['motd']['additional_text']` present.


License and Author
==================

Author:: Nathan Haneysmith <nathan@opscode.com>
Copyright:: 2009-2012, Opscode, Inc
Author:: John Ko <git@johnko.ca>
Copyright:: 2014, John Ko

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
