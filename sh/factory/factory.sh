#!/bin/bash

function pmrplugin_factory() {
	local def=$1
	local args=$2

	pmrplugin_repofactory "$def" "${args[*]}"
}
