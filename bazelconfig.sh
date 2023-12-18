#!/bin/bash

echo -e "startup --max_idle_secs=1" >> ~/.bazelrc
echo -e "startup --shutdown_on_low_sys_mem" >> ~/.bazelrc
