
git init bac_a_sable

pushd bac_a_sable

ls -la

ls --classify -1 .git

ls --recursive --classify -1

find .git/objects -type f

echo "je suis content d'assister au dej tech" | git hash-object -w --stdin

find .git/objects -type f

git cat-file -p 1800880b3d3c97c85cf5912acc058bcef9a8d591

echo 'version 1' > test.txt

git hash-object -w test.txt

echo 'version 2' > test.txt

git hash-object -w test.txt

find .git/objects -type f

git cat-file -p 83baae61804e65cc73a7201a7252750c76066a30 > test.txt

cat test.txt

git cat-file -p 1f7a7a472abf3dd9643fd615f6da379c4acb3e3a > test.txt

cat test.txt

git cat-file -t 1f7a7a472abf3dd9643fd615f6da379c4acb3e3a

git update-index --add --cacheinfo 100644 \
    83baae61804e65cc73a7201a7252750c76066a30 test.txt

git write-tree

git cat-file -t d8329fc1cc938780ffdd9f94e0d364e0ea74f579

git cat-file -p d8329fc1cc938780ffdd9f94e0d364e0ea74f579

git update-index --add --cacheinfo 100644 \
  1f7a7a472abf3dd9643fd615f6da379c4acb3e3a test.txt

echo 'new file' > new.txt

git update-index --add new.txt

git write-tree

git cat-file -p 0155eb4229851634a0f03eb265b69f5a2d56f341

git read-tree --prefix=bak d8329fc1cc938780ffdd9f94e0d364e0ea74f579

git write-tree

git cat-file -p 3c4e9cd789d88d8d89c1073707c3585e41b0e614

FIRST=$(echo 'mon premier commit' | git commit-tree d8329f)

echo $FIRST

git cat-file -p $FIRST

SECOND=$(echo 'second commit' | git commit-tree 0155eb -p $FIRST)

THIRD=$(echo 'et le troisième!' | git commit-tree 3c4e9c -p $SECOND)

git log --stat $THIRD

find .git/objects -type f

find .git/objects -type f | sed -r -e "s#.*/([0-9a-f]{2})/(.*$)#\1\2#" | xargs -n 1 git cat-file -t

(echo -ne "blob `wc -c < new.txt`\0"; cat new.txt) | sha1sum

pigz -d .git/objects/01/55eb4229851634a0f03eb265b69f5a2d56f341

pigz -d .git/objects/01/55eb4229851634a0f03eb265b69f5a2d56f341 | hexdump -C

find .git/refs

find .git/refs -type f

echo $THIRD > .git/refs/heads/master

git log --pretty=oneline master

git update-ref refs/heads/master $THIRD

git update-ref refs/heads/test $SECOND

git log --pretty=oneline test

cat .git/HEAD

git checkout test

cat .git/HEAD

git symbolic-ref HEAD

git symbolic-ref HEAD refs/heads/test

cat .git/HEAD

git symbolic-ref HEAD test

git update-ref refs/tags/v1.0 cac0cab538b970a37ea1e769cbbde608743bc96d

git tag -a v1.1 1a410efbd13591db07496601ebc7a059dd55cfe9 -m 'test tag'

cat .git/refs/tags/v1.1

cat .git/refs/remotes/origin/master

git remote add git@github.com:fabienhinault/git_sous_le_capot.git

cat .git/refs/remotes/origin/master

find .git/objects -type f

curl https://raw.githubusercontent.com/mojombo/grit/master/lib/grit/repo.rb > repo.rb



popd
rm -rf bac_a_sable
rm -rf simplegit

