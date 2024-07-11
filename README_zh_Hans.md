<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Domoticz

[![集成程度](https://dash.yunohost.org/integration/domoticz.svg)](https://ci-apps.yunohost.org/ci/apps/domoticz/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/domoticz.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/domoticz.maintain.svg)

[![使用 YunoHost 安装 Domoticz](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Domoticz。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

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

**分发版本：** 2024.6~ynh1

## 截图

![Domoticz 的截图](./doc/screenshots/domoticz_Switches_screen.png)
![Domoticz 的截图](./doc/screenshots/domoticz_floorplan_machineon.png)

## 文档与资源

- 官方应用网站： <https://domoticz.com/>
- 官方用户文档： <https://www.domoticz.com/DomoticzManual.pdf>
- 官方管理文档： <https://www.domoticz.com/wiki/Main_Page>
- 上游应用代码库： <https://github.com/domoticz/domoticz>
- YunoHost 商店： <https://apps.yunohost.org/app/domoticz>
- 报告 bug： <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
或
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
