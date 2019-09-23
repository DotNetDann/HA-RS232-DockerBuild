# HA-RS232-DockerBuild
When you run Docker on windows server host you are unable to map hardware devices.

This is my docker build files that gets the latest Home Assistant and installs socat. The container will setup a virtual com port that connects to an IP/RS232 device on the network.

Long way around but it works.
