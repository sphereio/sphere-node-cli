nconf   = require('nconf')

exports.ROOT = ROOT = process.env.HOME or process.env.HOMEPATH or process.env.USERPROFILE
exports.ROOT_FOLDER = ROOT_FOLDER = "#{ROOT}/.sphere-cli"
exports.PATH_TO_CREDENTIALS = PATH_TO_CREDENTIALS = "#{ROOT_FOLDER}/credentials.json"

nconf.use 'file', file: PATH_TO_CREDENTIALS
exports.nconf = nconf