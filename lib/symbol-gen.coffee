SymbolGenView = require './symbol-gen-view'

module.exports =
  symbolGenView: null

  activate: (state) ->
    @symbolGenView = new SymbolGenView(state.symbolGenViewState)

  deactivate: ->
    @symbolGenView.destroy()

  serialize: ->
    symbolGenViewState: @symbolGenView.serialize()
