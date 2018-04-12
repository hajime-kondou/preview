This directory contains the Slogging DevStack plugin.

To configure Slogging with DevStack, you will need to enable this plugin and
the Slogging service by adding one line to the [[local|localrc]] section of
your local.conf file.

To enable the plugin, add a line of the form:

.. code-block:: bash

    enable_plugin slogging <GITURL> [GITREF]


where

.. code-block:: bash

    <GITURL> is the URL of a Slogging repository
    [GITREF] is an optional git ref (branch/ref/tag).  The default is master.

For example

.. code-block:: bash

    enable_plugin slogging https://git.openstack.org/openstack/slogging stable/rocky

For more information, see the "Externally Hosted Plugins" section of
https://docs.openstack.org/devstack/latest/plugins.html
