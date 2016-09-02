describe('Game', function() {

  it('calls startGame on first keystroke', function(){
    // var e = $.Event('keydown');
    //
    // var triggerKeyDown = function (element, keyCode) {
    //     var inputEl = element.find('input');
    //     e.which = keyCode;
    //     $(inputEl).trigger(e);
    // };
    // triggerKeyDown(window, 5);
    // if(e.which === 5){
    //   console.log('hellllloooooooooo, susaaaaaan!')
    // }
    var startGameSpy = jasmine.createSpy('start')
    spyOn(Game, 'startGameSpy');
    Game.toString();
    Game.start();
    expect(Game.start).toHaveBeenCalled();
  });

});
