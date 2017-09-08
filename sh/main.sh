#!/bin/bash

function pmrplugin_confirm(){
	# TODO
	return
}

function pmrplugin_run_before() {
	for i in ${!pdcyml_package_manager_repository_run_before[*]}; do
		eval "${pdcyml_package_manager_repository_run_before[$i]}"
	done
}

function pmrplugin_update_distro() {
	pmrplugin_factory "UPDATE"
}

function pmrplugin_install() {
	pmrplugin_factory "INSTALL" "${pdcyml_package_manager_repository_install[*]}"
}

function pmrplugin_install_packages() {
	pmrplugin_factory "INSTALL_PACKAGE" "${pdcyml_package_manager_repository_packages_install[*]}"
}
