#!/bin/bash

#target
echo 'CONFIG_TARGET_ipq807x=y' >> .config
echo 'CONFIG_TARGET_ipq807x_generic=y' >> .config
echo 'CONFIG_TARGET_ipq807x_generic_DEVICE_xiaomi_ax3600=y' >> .config
echo 'CONFIG_HAS_SUBTARGETS=y' >> .config
echo 'CONFIG_TARGET_BOARD="ipq807x"' >> .config
echo 'CONFIG_TARGET_SUBTARGET="generic"' >> .config
echo 'CONFIG_TARGET_PROFILE="DEVICE_xiaomi_ax3600"' >> .config
echo 'CONFIG_TARGET_ARCH_PACKAGES="aarch64_cortex-a53"' >> .config
echo 'CONFIG_DEFAULT_TARGET_OPTIMIZATION="-Os -pipe -mcpu=cortex-a53"' >> .config
echo 'CONFIG_TARGET_ROOTFS_INITRAMFS=y' >> .config
echo 'CONFIG_TARGET_INITRAMFS_COMPRESSION_ZSTD=y' >> .config
echo 'CONFIG_TARGET_ROOTFS_SQUASHFS=y' >> .config
echo 'CONFIG_TARGET_SQUASHFS_BLOCK_SIZE=256' >> .config
echo 'CONFIG_TARGET_UBIFS_FREE_SPACE_FIXUP=y' >> .config
echo 'CONFIG_TARGET_OPTIMIZATION="-Os -pipe -mcpu=cortex-a53"' >> .config
#firmware
echo "CONFIG_PACKAGE_nss-firmware-ipq8074=y" >> .config
echo "CONFIG_PACKAGE_kmod-qca-nss-dp=y" >> .config
#echo "CONFIG_PACKAGE_kmod-qca-nss-ecm=y\n" >> .config
#echo "CONFIG_PACKAGE_kmod-qca-nss-drv=y\n" >> .config
#echo "CONFIG_PACKAGE_kmod-qca-nss-drv-pppoe=y\n" >> .config
#echo "CONFIG_PACKAGE_kmod-qca-nss-drv-bridge-mgr=y\n" >> .config
#echo "CONFIG_PACKAGE_kmod-qca-nss-drv-vlan-mgr=y\n" >> .config
echo "CONFIG_PACKAGE_ath10k-firmware-qca9887-ct=n" >> .config
echo "CONFIG_PACKAGE_ath10k-firmware-qca9887-ct-full-htt=y" >> .config
# wpad full
echo "CONFIG_PACKAGE_curl=y" >> .config
echo "CONFIG_PACKAGE_wpad-mini=n" >> .config
echo "CONFIG_PACKAGE_wpad-basic-wolfssl=n" >> .config
echo "CONFIG_PACKAGE_wpad-wolfssl=y" >> .config
# services and tools
echo "CONFIG_PACKAGE_arp-scan=y" >> .config
echo "CONFIG_PACKAGE_bind-host=y" >> .config
echo "CONFIG_PACKAGE_ca-certificates=y" >> .config      
echo "CONFIG_PACKAGE_ca-bundle=y" >> .config
echo "CONFIG_PACKAGE_ddns-scripts=y" >> .config
echo "CONFIG_PACKAGE_ddns-scripts-cloudflare=y" >> .config
echo "CONFIG_PACKAGE_ddns-scripts-noip=y" >> .config
echo "CONFIG_PACKAGE_ddns-scripts-services=y" >> .config
echo "CONFIG_PACKAGE_findutils-xargs=y" >> .config
echo "CONFIG_PACKAGE_fping=y" >> .config
echo "CONFIG_PACKAGE_gawk=y" >> .config
echo "CONFIG_PACKAGE_iputils-arping=y" >> .config
echo "CONFIG_PACKAGE_irqbalance=y" >> .config
echo "CONFIG_PACKAGE_iwinfo=y" >> .config
echo "CONFIG_PACKAGE_less-wide=y" >> .config
echo "CONFIG_PACKAGE_lldpd=y" >> .config
echo "CONFIG_PACKAGE_miniupnpd=y" >> .config
echo "CONFIG_PACKAGE_procd-seccomp=y" >> .config
echo "CONFIG_PACKAGE_wget=y" >> .config
echo "CONFIG_PACKAGE_iw-full=y" >> .config
echo "CONFIG_PACKAGE_htop=y" >> .config
echo "CONFIG_HTOP_LMSENSORS=y" >> .config
echo "CONFIG_PACKAGE_iperf3=y" >> .config
echo "CONFIG_PACKAGE_fail2ban=y" >> .config
echo "CONFIG_PACKAGE_jq=y" >> .config
echo "CONFIG_PACKAGE_mc=y" >> .config
echo "CONFIG_PACKAGE_nano=y" >> .config
echo "CONFIG_PACKAGE_openssh-sftp-server=y" >> .config
echo "CONFIG_PACKAGE_openvpn-wolfssl=y" >> .config
echo "CONFIG_PACKAGE_umdns=y" >> .config
echo "CONFIG_PACKAGE_vpn-policy-routing=y" >> .config
echo "CONFIG_PACKAGE_qca-ssdk-shell=y" >> .config
echo "CONFIG_PACKAGE_lm-sensors=y" >> .config
#wireguard
echo "CONFIG_PACKAGE_wireguard=y" >> .config
echo "CONFIG_PACKAGE_kmod-wireguard=y" >> .config
echo "CONFIG_PACKAGE_luci-app-wireguard=y" >> .config
echo "CONFIG_PACKAGE_luci-proto-wireguard=y" >> .config
# luci
echo "CONFIG_PACKAGE_luci=y" >> .config
echo "CONFIG_PACKAGE_luci-base=y" >> .config
echo "CONFIG_PACKAGE_luci-compat=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ddns=y" >> .config
echo "CONFIG_PACKAGE_luci-app-firewall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-upnp=y" >> .config
echo "CONFIG_PACKAGE_luci-mod-dashboard=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ddns=y" >> .config
echo "CONFIG_PACKAGE_less=n" >> .config
echo "CONFIG_PACKAGE_luci-app-dawn=y" >> .config
echo "CONFIG_PACKAGE_luci-app-nlbwmon=y" >> .config
echo "CONFIG_PACKAGE_luci-app-openvpn=y" >> .config
echo "CONFIG_PACKAGE_luci-app-sqm=y" >> .config
echo "CONFIG_PACKAGE_luci-app-vpn-policy-routing=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-bootstrap=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-material=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-openwrt=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-openwrt-2020=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ntpc=y" >> .config
echo "CONFIG_PACKAGE_luci-app-opkg=y" >> .config
# firewall4
echo "CONFIG_IPTABLES_NFTABLES=y" >> .config
echo "CONFIG_PACKAGE_firewall=n" >> .config
echo "CONFIG_PACKAGE_ip6tables=n" >> .config
echo "CONFIG_PACKAGE_iptables=n" >> .config
echo "CONFIG_PACKAGE_kmod-ipt-offload=n" >> .config
echo "CONFIG_PACKAGE_firewall4=y" >> .config
echo "CONFIG_PACKAGE_nftables=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-offload=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-conntrack=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-flow=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-ipt=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-nat=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-reject=y" >> .config
echo "CONFIG_NETFILTER_NETLINK=m" >> .config
echo "CONFIG_NETFILTER_NETLINK_HOOK=m" >> .config
# IPv6 support 
echo "CONFIG_PACKAGE_luci-proto-ipv6=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-ipt6=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-reject6=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-conntrack6=y" >> .config
echo "CONFIG_PACKAGE_6in4=y" >> .config
echo "CONFIG_PACKAGE_6to4=y" >> .config
echo "CONFIG_PACKAGE_6rd=y" >> .config
echo "CONFIG_PACKAGE_kmod-sit=y" >> .config 
