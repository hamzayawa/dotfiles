#!/bin/bash

# i3exit.sh - A script for locking, logging out, suspending, hibernating, rebooting, and shutting down

LOCK_CMD="i3lock -c 000000"  # Command for locking the screen (change if necessary)
LOGOUT_CMD="i3-msg exit"     # Command for logging out from i3
SUSPEND_CMD="systemctl suspend"  # Command for suspending
HIBERNATE_CMD="systemctl hibernate"  # Command for hibernating
REBOOT_CMD="systemctl reboot"   # Command for rebooting
SHUTDOWN_CMD="systemctl poweroff"  # Command for shutting down

# Get the action passed as an argument
ACTION=$1

case "$ACTION" in
  lock)
    # Lock the screen
    $LOCK_CMD
    ;;
  logout)
    # Log out of i3
    $LOGOUT_CMD
    ;;
  suspend)
    # Suspend the system
    $SUSPEND_CMD
    ;;
  hibernate)
    # Hibernate the system
    $HIBERNATE_CMD
    ;;
  reboot)
    # Reboot the system
    $REBOOT_CMD
    ;;
  shutdown)
    # Shut down the system
    $SHUTDOWN_CMD
    ;;
  *)
    echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
    exit 1
    ;;
esac
