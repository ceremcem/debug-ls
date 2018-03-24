# How To Debug Server Side Livescript Process

Normally you would run `hello.ls` by: 

    ./run-ls hello.ls 

When you want to debug, run the same file 

    ./debug-ls hello.ls

...and 

* Go to `chrome://inspect/#devices` address in Chrome
* Find your process that is listed under "Remote Target" section 
* Click "inspect" button
