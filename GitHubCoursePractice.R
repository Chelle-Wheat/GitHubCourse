#configure global git settings
library(usethis)
usethis::git_sitrep()


usethis::use_git_config(user.name = "Chelle-Wheat", user.email = "Chelle.Wheat@va.gov")
usethis::git_sitrep()
usethis::git_vaccinate()

#command line interface (don't have to use this since we did above)
#git config --global user.name "Chelle Wheat"
#git config --global user.email "Chelle.Wheat@va.gov"

#have to also set up github authentication
#github requires you to have a personal access token
#usethis package will help with this
usethis::create_github_token()
#copy this token to your clipboard once it is generated
#eventually these will expire so you have to do this ever once in a while

#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

#set the pat on your local machine
gitcreds::gitcreds_set()
#paste pat here when prompted then use git_sitrep() again to check credentials

#how to turn something into an R project
usethis::create_project(".")