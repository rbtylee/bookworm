# umask

The default umask in ubuntu is 002 while in debian it is 022.
ON bl7 (Ubuntu 22.04):

```ylee@ylee-Inspiron-530:~$ umask
0002
ylee@ylee-Inspiron-530:~$ mkdir 0002
ylee@ylee-Inspiron-530:~$ ls -la 0002
total 8
drwxrwxr-x  2 ylee ylee 4096 Dec 23 10:44 .
drwxr-x--- 39 ylee ylee 4096 Dec 23 10:44 ..
ylee@ylee-Inspiron-530:~$ umask 0022
ylee@ylee-Inspiron-530:~$ mkdir 0022
ylee@ylee-Inspiron-530:~$ ls -la 0022
total 8
drwxr-xr-x  2 ylee ylee 4096 Dec 23 10:45 .
drwxr-x--- 40 ylee ylee 4096 Dec 23 10:45 ..
ylee@ylee-Inspiron-530:~$ 
```

This seems to be because of the difference in /etc/pam.d/common-session

```diff -bur common-session.debian /etc/pam.d/common-session
--- common-session.debian	2023-12-23 10:18:46.289418357 -0500
+++ /etc/pam.d/common-session	2023-11-20 12:38:27.599671498 -0500
@@ -19,6 +19,11 @@
 # this avoids us returning an error just because nothing sets a success code
 # since the modules above will each just jump around
 session	required			pam_permit.so
+# The pam_umask module will set the umask according to the system default in
+# /etc/login.defs and user settings, solving the problem of different
+# umask settings with different shells, display managers, remote sessions etc.
+# See "man pam_umask".
+session optional			pam_umask.so
```
in debian /etc/login.defs one finds the comment:

```
# If set to yes, userdel will remove the user's group if it contains no
# more members, and useradd will create by default a group with the name
# of the user.
#
# Other former uses of this variable such as setting the umask when
# user==primary group are not used in PAM environments, such as Debian
#
USERGROUPS_ENAB yes ```

In Ubuntu 18.04 LTS, umask 0002 is the default for regular users.

It is defined in /etc/login.defs, but the definition is in two parts.

First, the UMASK setting determines the initial umask for both root and regular users. Note that the comments suggest that a later USERGROUPS_ENAB setting will modify it for regular users:

## Debian umask

In /etc/pam.d/common-session:

```session optional			pam_umask.so umask=022```

## references

PAM_UMASK(8)
[How to change umask mode permanently?](https://askubuntu.com/questions/805862/how-to-change-umask-mode-permanently)
[I cannot find where 0002 umask is being set on Ubuntu 20.04](https://serverfault.com/questions/1126370/i-cannot-find-where-0002-umask-is-being-set-on-ubuntu-20-04)
