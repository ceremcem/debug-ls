const livescript = require('rollup-plugin-livescript');
import commonjs from '@rollup/plugin-commonjs';
import builtins from 'rollup-plugin-node-builtins';
import resolve from '@rollup/plugin-node-resolve';
import includePaths from 'rollup-plugin-includepaths';

let includePathOptions = {
    include: {},
    paths: process.env.NODE_PATH.split( /[:;]/ ),
    external: [],
    extensions: ['.js', '.json', '.ls']
};

export default {
  output: {
    sourcemap: "inline",
    format: 'cjs'
  },
  plugins: [
    livescript(),
    includePaths(includePathOptions),
    // commonjs before bultins      
    commonjs({ 
        extensions: ['.js', '.ls'],
        }), // import commonjs from 'rollup-plugin-commonjs';
    builtins(), //  import builtins from 'rollup-plugin-node-builtins';
    resolve({ 
        extensions: ['.js', '.ls']
        }),
    ]
};
