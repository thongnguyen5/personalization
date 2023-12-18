#!/bash/bin

git config --global user.name "thong.nguyen5"
git config --global user.email "thong.nguyen5@mservice.com.vn"

git config --global core.editor "vim"

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue) <%an>%Creset' --abbrev-commit"
git config --global alias.review "!sh -c 'git push review HEAD:refs/for/master%r=$0'"

