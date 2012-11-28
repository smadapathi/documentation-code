/**
 * Copyright Amadeus
 */
{Template {
  $classpath : 'samples.widgets.touch.slider.Slider',
  $wlibs : {
    'touch' : 'aria.touch.widgets.TouchWidgetLib'
  }
}}

  {macro main()}
    Here is a Touch Slider Widget bound with a Text Widget to display a value between $0 and $100 :

    <br><br>
	////#mobileSlider1
    {@touch:Slider {
      bindValue: {
        to: "value",
        inside: data
      },
      width: 100
    }/}
	////#mobileSlider1
    <br>
    Value $: {@aria:Text {
      bind: {
        text: {
          to: "value",
          inside: data,
          transform : {
            toWidget : function (value) {
              var newNumber = value*100;
              return newNumber.toFixed(0);
            }
          }
        }
      }
    }/}

    <br><br>

    Here is a medium slider (width: 200px):

    <br><br>
	////#mobileSlider2
    {@touch:Slider {
      width: 200
    }/}
	////#mobileSlider2
    <br><br>

    Here is a longer slider (width: 300px):

    <br><br>

    {@touch:Slider {
      width: 300
    }/}

  {/macro}

{/Template}