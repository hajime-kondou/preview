===============================
Enabling Slogging in DevStack
===============================

1. Download Devstack::

    git clone https://git.openstack.org/openstack-dev/devstack
    cd devstack

2. Add this repo as an external repository in ``local.conf`` file::

    [[local|localrc]]
    enable_plugin slogging https://git.openstack.org/openstack/slogging

   Optionally, a git refspec (branch or tag or commit) may be provided as follows::

    [[local|localrc]]
    enable_plugin slogging https://git.openstack.org/openstack/slogging <refspec>

   In case triggered by cron, set environ variable ``SLOGGING_CRON``::

    [[local|localrc]]
    SLOGGING_CRON=True

3. Run ``stack.sh``::

    ./stack.sh
