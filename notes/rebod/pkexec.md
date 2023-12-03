rebod breaks pkexec: pkexec asks for the root account's password. But the account is locked, it doesn't have a password. Therefore it fails. It should ask for user password

running rebod:
  userdel: user systemd-timesync is currently used by process 296
  userdel: user polkitd is currently used by process 405
In code

```
grep '^[^:]*:[^:]*:[5-9][0-9][0-9]:' /etc/passwd | awk -F ":" '{print "/usr/sbin/userdel -f",$1}'> $WORKDIR/cleantmpusers
. $WORKDIR/cleantmpusers
```

```ylee@debian:~$ grep '^[^:]*:[^:]*:[5-9][0-9][0-9]:' /etc/passwd
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
systemd-timesync:x:997:997:systemd Time Synchronization:/:/usr/sbin/nologin
polkitd:x:996:996:polkit:/nonexistent:/usr/sbin/nologin```

the pattern is looking for lines that match the following criteria:

It starts at the beginning of the line.
Followed by any sequence of characters (except a colon), a colon, another sequence of characters (except a colon), a colon, then a three-digit number where the first digit is between 5 and 9 and the next two digits can be any digit.
