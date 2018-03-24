sleep = (f, ms) -> set-timeout ms, f

console.log "hello!"
i = 0
<~ :lo(op) ~>
    console.log "looping... #{i++}"
    <~ sleep 2000ms
    return op! if i > 2
    lo(op)
console.log "Ended."    
