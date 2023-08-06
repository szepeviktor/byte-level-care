# Byte-level care

[![theories](https://img.shields.io/badge/more-theories-purple)](https://github.com/stars/szepeviktor/lists/theory)
[![Tweet](https://img.shields.io/badge/Tweet-share-d5d5d5?style=social&logo=twitter)](https://twitter.com/intent/tweet?text=Living%20with%20zero%20problems%20while%20developing%20your%20web%20application&url=https%3A%2F%2Fgithub.com%2Fszepeviktor%2Fbyte-level-care)

How to live with zero problems through Total Control.

-   Analyze service providers before you choose one
-   Monitor your service providers
-   Collaborate closely with your service providers
-   Know every piece of software on your server and its author;
    uninstall anything that is not needed
-   Monitor every process on your server with functional tests, not just pings
-   Run [QA tools](.github/workflows) on every byte of your git repositories
-   Know your dependencies (packages) and their authors
-   Deploy 100% automatically
-   Run production environments without human intervention
-   Be conservative with software versions when upgrading

See [Special infrastructure for web applications][href-infrastructure]

## Support my work

Please consider supporting my work if you benefit from this knowledge.

[![Sponsor][src-sponsor-button]][href-sponsor-page]

Thank you!

---

[![Back-end][src-gha-back-end-badge]][href-gha-back-end]
[![Coverage Status][src-coveralls-badge]][href-coveralls]
[![License][src-packagist-license]][href-license-file]
[![PHP Version][src-php-version]][href-composer-file]
[![Packagist stats][src-packagist-downloads]][href-packagist-stats]
[![Latest version][src-latest-version]][href-packagist]
[![PHPStan enabled][src-phpstan-enabled]][href-phpstan-org]

## CI

How to design and implement continuous integration.

You find a complete CI workflow in [this repository](.github/workflows).

-   Run in a premade container or install OS packages
-   Display environment information
-   Set access credentials
-   Version control
    - Git committer
    - Commit message
    - PR title
-   Cache OS and programming language library packages
-   Check programming language and framework version compatibility
-   Check package management configuration (validate & normalize)
-   Check outdated packages and known security vulnerabilities
-   Build code
-   Configure application
-   :zero: Byte-level
    -   Check execute file mode bit
    -   Look for non-ASCII characters
        (non-English alphabets, whitespace characters, control characters)
-   :one: Syntax errors
    - Check source code for syntax errors
    - Check template files for syntax errors
-   :two: Run unit and functional tests
-   :three: Static Analysis
    - Run static analysis: **PHPStan**
    - Magic Number Detector
    - Copy-Paste Detector
-   :four: Coding Standards
    - Check coding style
    - Adhere to EditorConfig
-   Measure code coverage
-   Check route methods (controllers of routes)
-   Check list of distributed files
-   Check spelling: Codespell
-   Custom checks and warnings
-   Display logs in CI output or upload logs as artifacts
-   Start CD by SSH-ing to own server
    (`restrict,command` in authorized_keys and `DenyUsers` in sshd.conf)
-   Wipe sensitive data

## CD

How to design and implement continuous delivery.

-   Possible constrains:
    - successful tests
    - do not run on PR-s
    - our repo
    - specific branch
    - tag in commit message `[deploy:prod]`
    - deploy head commit only
    - optional manual start ([GitLab manual actions][href-gitlab-manual-actions])
-   Do not run as root user
-   Keep deploy configuration in a file
-   Log every output to a file, log start and finish to syslog
-   Limit execution time of time-consuming steps (timeout)
-   Optionally back up project files before starting to deploy
-   Create a bot user on the server for git access with SSH key (`@companybot`)
-   List changes in current project files
-   [Check for maintenance mode][href-laravel-isdown],
    Turn on maintenance mode `php artisan down`
    covering static resource, page, AJAX and API requests
-   Clear caches (configuration, routes, application, template etc.)
-   Wait for to finish and disable cron jobs and background workers
    after clearing caches (email piped to a program)
-   Identify git repository and branch
-   Checkout by commit hash (not by branch HEAD)
-   At least **lint the source code**
-   Don't deploy testing packages
-   Enable production optimizations in package manager
-   Build code
-   Run database migrations
-   Turn off maintenance mode
-   Populate caches (application, OPcache, `wp rewrite flush`)
-   Run at least 1 basic functional or unit test (e.g. log in or display dashboard)
-   Check HTML output
-   Special sudo configuration for reloading PHP-FPM or Cachetool
-   **Alert on failure**
-   "Was down for X seconds"
-   Send email, Slack, Trello or Google Hangouts notification

## Static analysis with PHPStan

- [Extensions](https://phpstan.org/user-guide/extension-library)
- `phpstan/phpstan-strict-rules`
- `phpstan/phpstan-deprecation-rules`
- `dave-liddament/sarb`
- `ekino/phpstan-banned-code`
- `tomasvotruba/type-coverage`
- `pepakriz/phpstan-exception-rules`
- `canvural/larastan-strict-rules`
- `schlndh/maria-stan`
- [Starred repositories](https://github.com/stars/szepeviktor/lists/static-analysis)

[href-composer-file]: https://github.com/szepeviktor/byte-level-care/blob/master/composer.json
[href-coveralls]: https://coveralls.io/github/szepeviktor/byte-level-care?branch=master
[href-gha-back-end]: https://github.com/szepeviktor/byte-level-care/actions/workflows/back-end.yml
[href-gitlab-manual-actions]: https://gitlab.com/help/ci/yaml/README.md#manual-actions
[href-infrastructure]: https://github.com/szepeviktor/infrastructure-for-hosting-web-applications
[href-laravel-isdown]: https://github.com/szepeviktor/running-laravel/blob/master/app/Console/Commands/IsDownForMaintenanceCommand.php
[href-license-file]: https://github.com/szepeviktor/byte-level-care/blob/master/LICENSE
[href-packagist]: https://packagist.org/packages/szepeviktor/phpstan-wordpress
[href-packagist-stats]: https://packagist.org/packages/szepeviktor/phpstan-wordpress/stats
[href-phpcs-commenting]: https://github.com/squizlabs/PHP_CodeSniffer/tree/master/src/Standards/PEAR/Sniffs/Commenting
[href-phpstan-org]: https://phpstan.org/
[href-sponsor-page]: https://github.com/sponsors/szepeviktor
[src-coveralls-badge]: https://coveralls.io/repos/github/szepeviktor/byte-level-care/badge.svg?branch=master
[src-gha-back-end-badge]: https://github.com/szepeviktor/byte-level-care/actions/workflows/back-end.yml/badge.svg
[src-latest-version]: https://img.shields.io/packagist/v/szepeviktor/phpstan-wordpress.svg
[src-packagist-downloads]: https://img.shields.io/packagist/dt/szepeviktor/phpstan-wordpress.svg
[src-packagist-license]: https://img.shields.io/packagist/l/szepeviktor/phpstan-wordpress
[src-phpstan-enabled]: https://img.shields.io/badge/PHPStan-enabled-44CC11
[src-php-version]: https://img.shields.io/packagist/dependency-v/szepeviktor/phpstan-wordpress/php
[src-sponsor-button]: https://github.com/szepeviktor/.github/raw/master/.github/assets/github-like-sponsor-button.svg
