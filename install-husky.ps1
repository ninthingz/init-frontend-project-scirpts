pnpm add --save-dev husky lint-staged
pnpm exec husky init
Write-Output "pnpm exec lint-staged" > .husky/pre-commit
Write-Output "commitlint -e `$HUSKY_GIT_PARAMS" > .husky/commit-msg
Write-Output "{
  `"**/*`": `"prettier --write --ignore-unknown`"
}" > .lintstagedrc.json