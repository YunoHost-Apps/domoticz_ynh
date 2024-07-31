<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Domoticz untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/domoticz.svg)](https://ci-apps.yunohost.org/ci/apps/domoticz/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/domoticz.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/domoticz.maintain.svg)

[![Pasang Domoticz dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Domoticz secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Domoticz is a Home Automation system design to control various devices and receive input from various sensors.
For example this system can be used with: 

* Light switches
* Door sensors
* Doorbells
* Security devices
* Weather sensors like: UV/Rain/Wind Meters
* Temperature Sensors
* Pulse Meters
* Voltage / AD Meters
* And more...


The MQTT broker Mosquitto is integrated into the package and requires its own domain or subdomain. It's an optional setting.
You may also install the [Mosquitto package](https://github.com/YunoHost-Apps/mosquitto_ynh) without using the one provided by domoticz_ynh.

**Versi terkirim:** 2024.6~ynh1

## Tangkapan Layar

![Tangkapan Layar pada Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Tangkapan Layar pada Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://domoticz.com/>
- Dokumentasi pengguna resmi: <https://www.domoticz.com/DomoticzManual.pdf>
- Dokumentasi admin resmi: <https://www.domoticz.com/wiki/Main_Page>
- Depot kode aplikasi hulu: <https://github.com/domoticz/domoticz>
- Gudang YunoHost: <https://apps.yunohost.org/app/domoticz>
- Laporkan bug: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
atau
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
