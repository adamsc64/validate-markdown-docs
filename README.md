# Markdown Link Validator

The Markdown Link Validator is a Ruby script that checks for broken links inside a set of Markdown. It does this by finding all links inside markdown files inside a directory and subdirectories, and then checking that these links refer to valid internal resources.

It's important to note that the Markdown Link Validator focuses solely on links internal to the documentation. It does not validate links that lead outside the documentation's scope, such as external URLs.

The validator supports the following types of links:

- Relative links (e.g. `[link title](../../dir/file.md)`)
- Absolute links to the same repo (e.g. `https://github.com/user/repo/blob/master/...`)
- Section links (e.g. `#link-to-anchor`) - but only within the same file only for now.

It does not:

- Make HTTP requests.
- Confirm that external links resolve and do in fact result in 200s.
- Validate section links across files (yet), e.g. `[link title](../../dir/file.md#link-to-anchor)`

## Installation

1. Install Ruby.
1. Copy or symlink the utility `validate-markdown-docs` to your path.

## Usage

To use the Markdown Link Validator, simply run the following command:

```sh
markdown-link-validator /path/to/markdown/files/root/
```

This will check all Markdown files in the directory and its subdirectories for broken links.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/adamsc64/markdown-link-validator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
