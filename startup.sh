#!/bin/bash
echo Starting Custom Startup.sh
bash /config/start_socat.sh
python -m homeassistant --config /config
