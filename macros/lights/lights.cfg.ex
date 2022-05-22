[gcode_macro LED_BAR]
gcode:
  {% if printer['output_pin LED_Bar'].value == 1 %}
    SET_PIN PIN=LED_Bar VALUE=0
  {% else %}
    SET_PIN PIN=LED_Bar VALUE=1
  {% endif %}

# Tool head top led
[gcode_macro TOOL_TOP_LED_ON]
gcode:
  {% set R = params.R|default(0.0)|int %}
  {% set G = params.G|default(0.0)|int %}
  {% set B = params.B|default(1.0)|int %}
  SET_LED LED=neo RED={R} GREEN={G} BLUE={B} INDEX=31 SYNC=0

[gcode_macro TOOL_TOP_LED_OFF]
gcode:
  SET_LED LED=neo RED=0 GREEN=0 BLUE=0 INDEX=31 SYNC=0

# Hotend mid led
[gcode_macro TOOL_MID_LED_ON]
gcode:
  {% set R = params.R|default(0.0)|int %}
  {% set G = params.G|default(0.0)|int %}
  {% set B = params.B|default(1.0)|int %}
  SET_LED LED=neo RED={R} GREEN={G} BLUE={B} INDEX=32 SYNC=0

[gcode_macro TOOL_MID_LED_OFF]
gcode:
  SET_LED LED=neo RED=0 GREEN=0 BLUE=0 INDEX=32 SYNC=0

# Nozzle led
[gcode_macro NOZZLE_LED_ON]
gcode:
  {% set R = params.R|default(1.0)|int %}
  {% set G = params.G|default(1.0)|int %}
  {% set B = params.B|default(1.0)|int %}
  SET_LED LED=neo RED={R} GREEN={G} BLUE={B} INDEX=33 SYNC=0

[gcode_macro NOZZLE_LED_OFF]
gcode:
  SET_LED LED=neo RED=0 GREEN=0 BLUE=0 INDEX=33 SYNC=0
