Set-Location -Path 'C:\win10una1703frapro_home\sources\$oem$\$1\_util\share_folder_and_acl_git'

git init

#Will add the files in the current git directory to the git repository
git add . 

#prepare the remote  git path for operations
git remote remove origin 

git remote add origin https://github.com/Wildboy85/create_folder_share_acl_permissions.git

#verify
git remote -v 

#Will commit for first publication
git commit -m "third commit" 

git push origin master 

