# pick this so that https://github.com/LineageOS/android_packages_services_Telecomm would build
(
	cd frameworks/base
	if [ -z "$(git remote | grep lineage)" ]
	then
		git remote add lineage https://github.com/LineageOS/android_frameworks_base.git
		git fetch lineage
	fi
	git cherry-pick 5c68b1333bb3d3a2522bc6f2631c9fa91b8eff47
)
