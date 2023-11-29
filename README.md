# Haskell bit by bit

Live website of [Haskell bit by bit][haskyll].  See the [project page][haskyll]
for more details.

## How to merge commits from haskyll

To sync this repository with [haskyll][haskyll], merge the commits as follows:

```sh
$ git remote add haskyll https://github.com/quacksouls/haskyll.git
$ git fetch haskyll --tags
$ git merge --allow-unrelated-histories haskyll/main
$ git remote remove haskyll
```

You might have to manually resolve merge conflicts.

[haskyll]: https://github.com/quacksouls/haskyll
