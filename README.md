# PixelJpeg [![NPM version][npm-image]][npm] [![Build Status][travis-image]][travis] [![Coverage Status][coveralls-image]][coveralls]

[![Sauce Test Status][sauce-image]][sauce]

> Parse JPEG to ImageData in cross-platform.

## Installation
```bash
$ npm install pixel-jpg --save
```
```js
var pixelJpeg= require('pixel-jpg');
console.log(pixelJpeg); //object
```

# API

## pixelJpeg.parse(`file`) -> promise.then(`images`)

return `images` is Array contains one or more `ImageData`.
> Return the `object` instead of `ImageData` in Node.js

```js
var file= 'https://59naga.github.io/fixtures/still.JPG';

pixelJpeg.parse(file).then(function(images){
  console.log(images[0]);
});
// {width: 256, height: 192, data: <Uint8Array ..>}
```

# See
* [pixel](https://github.com/59naga/pixel/)
* [pixel-util](https://github.com/59naga/pixel-util/)
* [pixel-gif](https://github.com/59naga/pixel-gif-/)
* [pixel-png](https://github.com/59naga/pixel-png/)
* __pixel-jpg__
* [pixel-bmp](https://github.com/59naga/pixel-bmp/)

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/

[sauce-image]: http://soysauce.berabou.me/u/59798/pixel-jpg.svg?large
[sauce]: https://saucelabs.com/u/59798
[npm-image]:https://img.shields.io/npm/v/pixel-jpg.svg?style=flat-square
[npm]: https://npmjs.org/package/pixel-jpg
[travis-image]: http://img.shields.io/travis/59naga/pixel-jpg.svg?style=flat-square
[travis]: https://travis-ci.org/59naga/pixel-jpg
[coveralls-image]: http://img.shields.io/coveralls/59naga/pixel-jpg.svg?style=flat-square
[coveralls]: https://coveralls.io/r/59naga/pixel-jpg?branch=master