local Yajl = require('yajl')

local parser = Yajl.new({
  allow_comments = false,
  on_null = function ()
    p("on_null")
  end,
  on_boolean = function (value)
    p("on_boolean", value)
  end,
  on_number = function (value)
    p("on_number", value)
  end,
  on_string = function (value)
    p("on_string", value)
  end,
  on_start_map = function ()
    p("on_start_map")
  end,
  on_map_key = function (key)
    p("on_map_key", key)
  end,
  on_end_map = function ()
    p("on_end_map")
  end,
  on_start_array = function ()
    p("on_start_array")
  end,
  on_end_array = function ()
    p("on_end_array")
  end,
  on_error = function (err)
    error(err)
  end
})

parser:write('{"name":"tim",values:')
parser:write("[1,2,3]")
parser:write("}")
