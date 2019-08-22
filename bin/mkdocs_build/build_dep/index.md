![Renovate banner](https://renovatebot.com/images/design/header_small.jpg)

# Renovate

Automated dependency updates. Flexible, so you don't need to be.

## Why Use Renovate?

* Receive automated Pull Requests whenever dependencies need updating. Or whenever you schedule it for.
* Renovate discovers and processes all dependency files in a repository (e.g. supports
  monorepo architecture such as lerna or yarn workspaces)
* Extremely customisable behaviour via configuration files or within your `package.json`
* Use eslint-like shared config presets for ease of use and simplifying configuration
* Update lock files natively in the same commit, including immediately resolving conflicts whenever PRs are merged
* Supports GitHub, GitLab (APIv4) and VSTS. BitBucket is a WIP.
* Open source (installable via npm/yarn) so can be self-hosted or used for free via GitHub App

## The Renovate Approach

* Everyone can benefit from automation, whether it's a little or a lot
* Renovate should not cause you to change your workflow against your wishes - don't enforce opinions on users
* All behaviour should be configurable, down to a ridiculous level if desired
* Autodetect settings wherever possible (to minimise configuration) but always allow overrides

## Using Renovate

The easiest way to use Renovate if you are on GitHub is to use the Renovate app. Go to
[https://github.com/marketplace/renovate](https://github.com/marketplace/renovate) to install
it now.

## Configuration Help

You can raise an issue in [https://github.com/renovatebot/config-help](https://github.com/renovatebot/config-help) if
you'd like to get your config reviewed or ask any questions.

## Self-Hosting

If you are not on GitHub or you prefer to run your own copy of Renovate, then you can easily run your own copy. Please see [docs/self-hosting.md](https://github.com/renovatebot/renovate/blob/master/docs/self-hosting.md) for instructions. There is also a commercially licensed [Renovate Pro Edition](https://renovatebot.com/pro) available for GitHub Enterprise.

## Security / Disclosure

If you discover any important bug with Renovate that may pose a security problem, please disclose it confidentially to security@renovatebot.com first, so that it can be assessed and hopefully fixed prior to being exploited. Please do not raise GitHub issues for security-related doubts or problems.
