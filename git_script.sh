#Exercise 1a
git init
echo "Hello Git" > hello.txt
git add hello.txt
git commit -m "feat: initial commit with hello.txt"
git remote add origin http://github.com/Quachuoinhaynhot/git-assignment.git
git branch -M main
git push -u origin main

#Exercise 1b
echo "Bug fix" >> hello.txt
git add hello.txt
git commit -m "feat: add feature 1 implementation"

echo "Bug fix" >> hello.txt
git add hello.txt
git commit -m "fix: resolve null pointer exception in feature 1"

echo "Documentation" > README.md
git add README.md
git commit -m "docs: add README documentation"
git log --online

#Exercise 2a
git checkout -b feature-branch
echo "Feature branch changes" >> hello.txt
git add hello.txt
git commit -m "feat: add changes in feature-branch"
git checkout main
git merge feature-branch

#Exercise 2b
git checkout -b branchA
echo "Content from branchA" > conflict.txt
git add conflict.txt
git commit -m "feat: add conflict.txt in branchA"

git checkout main
git checkout -b branchB

echo "Content from branchB" > conflict.txt
git add conflict.txt
git commit -m "feat: add conflict.txt in branchB"

git checkout branchA
git merge branchB

cat conflict.txt
nano conflict.txt

git add conflict.txt
git commit -m "fix: resolve merge conflict in conflict.txt"
