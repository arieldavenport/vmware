#these are all all currently set to false and will be updated to true
#test
$vms =  Get-VM
foreach ($vm in $vms) {
New-AdvancedSetting -Entity $vm -Name isolation.bios.bbs.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.device.connectable.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.device.edit.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.ghi.host.shellAction.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.autoInstall.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.diskShrink.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.diskWiper.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.dispTopoRequest.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.getCreds.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.ghi.autologon.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.ghi.launchmenu.change -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.ghi.protocolhandler.info.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.ghi.trayicon.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.guestDnDVersionSet.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.hgfsServerSet.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.memSchedFakeSampleStats.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.trashFolderState.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.unity.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.unity.push.update.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.unity.taskbar.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.unity.windowContents.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.unityActive.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.unityInterlockOperation.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.vixMessage.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name isolation.tools.vmxDnDVersionGet.disable -Value TRUE -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name tools.setInfo.sizeLimit -Value "1048576" -Confirm:$false -Force:$true
New-AdvancedSetting -Entity $vm -Name vmci0.unrestricted -Value FALSE -Confirm:$false -Force:$true
Get-CDDrive -VM $vm |Set-CDDrive -StartConnected:$false -NoMedia -Connected:$false -Confirm:$false
}
