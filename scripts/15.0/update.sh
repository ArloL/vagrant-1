#!/usr/bin/env bash
set -x

rm -f /etc/zypp/repos.d/*.repo

rpm --import http://linuxmirror.rz.evosec.de/opensuse/distribution/leap/15.0/repo/oss/content.key
zypper addrepo -n 'openSUSE OSS' http://linuxmirror.rz.evosec.de/opensuse/distribution/leap/15.0/repo/oss/ distro-oss

rpm --import http://linuxmirror.rz.evosec.de/opensuse/update/leap/15.0/oss/repodata/repomd.xml.key
zypper addrepo -n 'openSUSE OSS Update' http://linuxmirror.rz.evosec.de/opensuse/update/leap/15.0/oss/ distro-update-oss

rpm --import http://linuxmirror.rz.evosec.de/opensuse/distribution/leap/15.0/repo/non-oss/content.key
zypper addrepo -n 'openSUSE Non-OSS' http://linuxmirror.rz.evosec.de/opensuse/distribution/leap/15.0/repo/non-oss/ distro-non-oss

rpm --import repomd.xml.key
zypper addrepo -n 'openSUSE Non-OSS Update' http://linuxmirror.rz.evosec.de/opensuse/update/leap/15.0/non-oss/ distro-update-non-oss

zypper --gpg-auto-import-keys --non-interactive ref
zypper --gpg-auto-import-keys --non-interactive dup

exit 0
