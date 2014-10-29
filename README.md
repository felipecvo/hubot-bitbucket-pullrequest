# hubot-bitbucket-pullrequest
[![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][daviddm-url]][daviddm-image]

A hubot script that notifies pull requests

See [`src/bitbucket-pullrequest.coffee`](src/bitbucket-pullrequest.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-bitbucket-pullrequest --save`

Then add **hubot-bitbucket-pullrequest** to your `external-scripts.json`:

```json
["hubot-bitbucket-pullrequest"]
```

## Sample Interaction

```
user1>> hubot hello
hubot>> hello!
```

[npm-url]: https://npmjs.org/package/hubot-bitbucket-pullrequest
[npm-image]: http://img.shields.io/npm/v/hubot-bitbucket-pullrequesty.svg?style=flat
[travis-url]: https://travis-ci.org/felipecvo/hubot-bitbucket-pullrequest
[travis-image]: http://img.shields.io/travis/felipecvo/hubot-bitbucket-pullrequest/master.svg?style=flat
[daviddm-url]: https://david-dm.org/felipecvo/hubot-bitbucket-pullrequest.svg?theme=shields.io
[daviddm-image]: http://img.shields.io/david/felipecvo/hubot-bitbucket-pullrequest.svg?style=flat
[coveralls-url]: https://coveralls.io/r/felipecvo/hubot-bitbucket-pullrequest
[coveralls-image]: http://img.shields.io/coveralls/felipecvo/hubot-bitbucket-pullrequest/master.svg?style=flat
