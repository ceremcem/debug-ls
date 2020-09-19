# How To Debug Server Side Livescript Process

Normally you would run `hello.ls` by: 

    lsc hello.ls 

When you want to debug, run the same file with:

    ./debug-ls hello.ls

...and:

OPTION 1: 

(Preferred way)

* Install Chrome Extension: NIM (Node Inspector Manager)

In this case there is nothing to be done manually. 

NIM extension simply watches `node` and whenever `node` is (re)started with `--inspect` parameter, NIM opens a debugger in a new window. 

OPTION 2:

(Manual way, no need an external application)

* Go to `chrome://inspect/#devices` address in Chrome
* Find your process that is listed under "Remote Target" section 
* Click "inspect" button

If you prefer this way, you need to repeat these steps whenever your source file changed.

# Behavior 

The source file is re-bundled when it is or its dependencies are changed. 

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

