## Contributing

Contributions are welcome and encouraged, provided your code is of sufficient quality. Before submitting a pull request, please ensure your code adheres to the following requirements:

1. Licensed under MIT, BSD or compatible license, or dedicated to the public domain
1. KISS (Keep It Simple Stupid). Your script should have 1 job and do it well. Keep the User Interface clean and simple. Only include options that will benefit the majority of users. Trying to cram in every conceivable option is not only confusing, it clutters the script interface and makes the code more difficult to test and maintain as well.
1. No errors reported by PEBakery's Syntax Checker
1. Runs cleanly with no errors or warnings
1. Encoding should be UTF-8/UTF-16
1. Use 2-spaces for code blocks & indentation
1. Use descriptive function and variable names in the **P**ascal**C**ase convention (e.g. `%SourceFile%` instead of `%file%`, `%WimFile%` instead of `%w%`, and `[SetDefaultOptions]` instead of `[reset]`)
1. Follow the established naming conventions for interface components, variables, sections, etc.
1. Avoid the use of `Not` and uses positive conditionals wherever possible (e.g. `If,%foo%,Equal,0` instead of `If,Not,%foo%,Equal,1`)
1. Use common sense when it comes to embedded files. **Do not embed files or licensed software you do not have permission to distribute**. Do not create .script "container files" that only contain attachments; if your running into performance issues with attachment size use a standalone .7z file instead. Where possible downloading the files from the author's official website and caching them is preferred.
1. Do not use section parameters (#1, #2 , #9, etc.) as temporary variables for storing values. If you need temporary variables use `SetLocal` and declare an actual variable. If you need more then 1 section parameter please use `GetParam` and assign each parameter to a variable. This makes the code much easier to read and debug.

Your pull request should fully describe the functionality you are adding/removing or the problem you are solving. Regardless of whether your patch modifies one line or one thousand lines, you must describe what has prompted and/or motivated the change.

Solve only one problem in each pull request. If you're fixing a bug and adding a new feature, you need to make two separate pull requests. If you're fixing three bugs, you need to make three separate pull requests. If you're adding four new features, you need to make four separate pull requests. So on, and so forth.

If your patch fixes a bug, please be sure there is an [issue](https://github.com/PhoenixPE/PhoenixPE/issues) open for the bug before submitting a pull request. If your patch aims to improve performance or optimize a process, be sure to quantify your optimizations and document the trade-offs, and back up your claims with benchmarks and metrics.

In order to maintain the quality and integrity of the **PhoenixPE** source tree, all pull requests must be reviewed before being merged. The [project lead](https://github.com/Homes32) has the ultimate authority in deciding whether to accept or reject a pull request. Do not be discouraged if your pull request is rejected!

## Versioning

### .Script Files

Script files use semantic versioning in the form of `MAJOR.MINOR.PATCH.BUILD` eg. `1.0.2.0`.

The Date of the version change should be specified in the format: `YYYY-MM-DD`. 

|Version|Description|
|---|---|
|MAJOR|Major change in feature, function, or API usage. Minor version and Patch version MUST be reset to 0 when Major version is incremented.|
|MINOR|New feature/functionality added or minor functionality removed. Patch version MUST be reset to 0 when Minor version is incremented.|
|PATCH|Bugfixes, download url updates, etc.|
|BUILD|Zero for release. May be incremented by the end user to track personal changes or for special builds.|
