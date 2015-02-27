should = require 'should'
BIN_DIR = "#{__dirname}/../bin"

describe 'sphere', ->

  beforeEach ->
    @command = require '../src/sphere'
    @command.program = require('rewire')('commander')
    @command.run(['node', "#{BIN_DIR}/sphere"])

  it 'should initialize command', ->
    @command.program.name.should.be.a.Function
    @command.program.name().should.equal('sphere')
    @command.program.commands[0].name().should.equal('import')
    @command.program.commands[1].name().should.equal('help')
    @command.program.options.should.have.lengthOf(1)
    @command.program.options[0].flags.should.equal('-V, --version')
