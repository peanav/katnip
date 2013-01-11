define ['views/katalus-view'], (View) ->
  describe 'katalus view', ->
    beforeEach ->
      @view = new View()

    it 'should be a header', ->
      expect(@view.tagName).toEqual 'header'
