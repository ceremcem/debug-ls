# How To Debug Server Side Livescript Process

Normally you would run `hello.ls` by: 

    lsc hello.ls 

When you want to debug, run the same file 

    ./debug-ls hello.ls

...and 

* Go to `chrome://inspect/#devices` address in Chrome
* Find your process that is listed under "Remote Target" section 
* Click "inspect" button

# Example 

See the [./example](./example) folder. 

# Screenshot

![image](https://user-images.githubusercontent.com/6639874/92029989-0f2d4800-ed6f-11ea-9d16-503114ef400f.png)

