#!/bin/bash

function pmrplugin_repofactory() {
	local def=$1
	local args=$2
	local repo
	local cfg

	repo="$pdcyml_package_manager_repository_repository"
	cfg="${pdcyml_settings_path_plugins}/pdc-package-manager-repository-plugin/sh/repositories/${repo}.cfg"

	eval "${$(echo $(cat ${cfg} | grep "^${def}=" | cut -d '=' -f2) )/\%args\%/$args}"
}
