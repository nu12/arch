
# set -eEo pipefail

nu12-assert-file-exist /usr/lib/systemd/system/gdm.service
nu12-assert-file-exist /etc/gdm/custom.conf
