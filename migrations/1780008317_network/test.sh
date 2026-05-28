
# set -eEo pipefail

nu12-assert-file-exist /usr/lib/systemd/system/NetworkManager.service
nu12-assert-file-exist /usr/lib/systemd/system/NetworkManager-dispatcher.service
nu12-assert-file-exist /usr/lib/systemd/system/NetworkManager-wait-online.service
