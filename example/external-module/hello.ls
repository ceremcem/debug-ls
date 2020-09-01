require! 'my-lib': {sleep}
require! 'fs'
require! './my-data'

console.log "hello!", my-data
i = 0
<~ :lo(op) ~>
    console.log "looping... #{i++}"
    console.log fs.readdirSync('.')
    <~ sleep 1000ms
    return op! if i > 20
    debugger
    lo(op)
console.log "Ended."
