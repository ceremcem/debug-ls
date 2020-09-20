# How To Debug a Server Side Livescript Process

Normally you would run `hello.ls` by: 

    lsc hello.ls 

When you want to debug, run the same file with:

    ./debug-ls hello.ls

...and:

### OPTION 1: (Preferred way)

If you install NiM (Node Inspection Manager) extension, there is nothing to be done manually. A debugger window will be automatically (re)launched when `./debug-ls your-file.ls` is invoked (or `your-file.ls` is modified). 

This approach is way more convenient during development, as explained [here](https://github.com/gkz/LiveScript/issues/972#issuecomment-695342539).

### OPTION 2: (Manual way, no external application needed)

* Go to `chrome://inspect/#devices` address in Chrome
* Find your process that is listed under "Remote Target" section 
* Click "inspect" button

If you prefer this way, you need to close the current debugger window and repeat these steps everytime your source file is modified.

# Watch for changes 

The source file is watched and re-bundled when it is or any of its dependencies are modified. 

# Install

```
# Assuming you are in /path/to/somewhere
git clone https://github.com/ceremcem/debug-ls
cd debug-ls && npm install
npm i -g rollup # if you haven't already 
```

Add `/path/to/somewhere/debug-ls/debug-ls` in your `$PATH`. 

# Example 

See the [./example](./example) folder. 

# Screenshot

![image](https://user-images.githubusercontent.com/6639874/92029989-0f2d4800-ed6f-11ea-9d16-503114ef400f.png)

