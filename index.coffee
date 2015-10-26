nfc  = require('nfc').nfc
util = require 'util'

console.log 'version: ' + util.inspect(version, { depth: null })

console.log 'devices: ' + util.inspect(devices, { depth: null })

device = new nfc.NFC()

device.on 'read', (tag) ->

    if !!tag.data && !!tag.offset
      console.log util.inspect(nfc.parse(tag.data.slice(tag.offset)), { depth: null })

.on 'error', (err) ->
  console.log error
.start()
