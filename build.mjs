import fs from 'node:fs';
fs.mkdirSync('dist',{recursive:true});fs.cpSync('public','dist',{recursive:true});
