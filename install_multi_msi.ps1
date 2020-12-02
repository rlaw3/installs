#this script installs multiple msi installers without user interaction. the script has been tested with 10 msi installers

#setting the varible. 
$all = @('path to msi','path to msi', <#add more if needed#> )
  
  <#for each loop. start install in specified path. arguments to install normal, quietly, with progress bar, no restart
  until all of installed.#>
foreach ($install in $all){
    start-process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i $install /qn /passive /norestart" -Wait
}
#The computer restarts after the script is finished. 
Restart-Computer
