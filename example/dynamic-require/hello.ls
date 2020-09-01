require! 'my-lib': {sleep}
require! 'fs'

console.log "hello!"
i = 0
<~ :lo(op) ~>
    console.log "looping... #{i++}"
    console.log fs.readdirSync('.')
    <~ sleep 1000ms
    return op! if i > 20
    debugger
    lo(op)
console.log "Ended."
