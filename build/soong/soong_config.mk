_json_contents := $(_json_contents)    "Acme":{$(newline)

# See build/core/soong_config.mk for the add_json_* functions you can use here.

# This causes the build system to strip out the last comma in our nested struct, to keep the JSON valid.
_json_contents := $(_json_contents)__SV_END

_json_contents := $(_json_contents)    },$(newline)
