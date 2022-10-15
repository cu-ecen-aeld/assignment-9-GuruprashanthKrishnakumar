#! /bin/sh

case "$1" in
    start)
        echo "Starting socket daemon"
        start-stop-daemon -S -n scull_load -a /usr/bin/scull_load
        start-stop-daemon -S -n module_load -a /usr/bin/module_load -- faulty
        modprobe hello
        ;;
    stop)
        echo "Stopping socket daemon"
        start-stop-daemon -K -n scull_load
        start-stop-daemon -K -n module_unload
        rmmod hello
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1

esac
exit 0
