const livescript = require('rollup-plugin-livescript');
import commonjs from '@rollup/plugin-commonjs';
import builtins from 'rollup-plugin-node-builtins';
import resolve from '@rollup/plugin-node-resolve';
import includePaths from 'rollup-plugin-includepaths';
const builtinModules = require('builtin-modules');
import json from '@rollup/plugin-json';

var paths = process.env.NODE_PATH.split( /[:;]/ ).filter(x => x.length > 0)

let includePathOptions = {
    include: {},
    paths: paths,
    external: builtinModules,
    extensions: ['.js', '.json', '.ls']
};

export default {
  output: {
    //sourcemap: "inline", <- decided via command line arguments
    format: 'cjs',
    exports: "auto"
  },
  plugins: [
    includePaths(includePathOptions),
    livescript(),
    json(),
    // commonjs before bultins
    commonjs({
        extensions: ['.js', '.ls'],
        }), // import commonjs from 'rollup-plugin-commonjs';
    builtins(), //  import builtins from 'rollup-plugin-node-builtins';
    resolve({
        extensions: ['.js', '.ls']
        }),
    {
      transform ( code, id ) {
        // Debug the Rollup Config:
        // ------------------------
        //console.log("paths: ", paths);
        //console.log(builtinModules);
        // ------------------------
        // not returning anything, so doesn't affect bundle
      }
    }
    ]
};
