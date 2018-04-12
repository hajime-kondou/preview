function install_slogging {
    PWD=$(pwd)
    cd $DEST/slogging
    sudo python setup.py install
    cd ${PWD}
}

# check for service enabled
if is_service_enabled slogging; then

    if [[ "$1" == "stack" && "$2" == "pre-install" ]]; then
        # Set up system services                  # apt-get install, pip insall
        #echo_summary "Configuring system services Slogging"
        #install_package cowsay
        :

    elif [[ "$1" == "stack" && "$2" == "install" ]]; then
        # Perform installation of service source  # python setup.py install
        echo_summary "Installing Slogging"
        install_slogging

    elif [[ "$1" == "stack" && "$2" == "post-config" ]]; then
        # Configure after the other layer 1 and 2 services have been configured
        #echo_summary "Configuring Template"  # memcached, rsyslog, ... etc
        #configure_template
        :

    elif [[ "$1" == "stack" && "$2" == "extra" ]]; then
        # Initialize and start the template service
        :
    fi

    if [[ "$1" == "unstack" ]]; then
        # Shut down template services
        # no-op
        :
    fi

    if [[ "$1" == "clean" ]]; then
        # Remove state and transient data
        # Remember clean.sh first calls unstack.sh
        # no-op
        :
    fi
fi

