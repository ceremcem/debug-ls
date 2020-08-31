require! './my-lib': {sleep}

console.log "hello!"
i = 0
<~ :lo(op) ~>
    console.log "looping... #{i++}"
    <~ sleep 1000ms
    return op! if i > 20
    debugger
    lo(op)
console.log "Ended."
