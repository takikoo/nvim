local NO_PLUGINS = vim.env.NOPLUGINS

-- [[ Global variables ]]
require 'tko.globals'

-- [[ Setting options ]]
require 'tko.options'

-- [[ Basic Keymaps ]]
require 'tko.maps'

-- [[ Auto commands ]]
require 'tko.autocommands'

if NO_PLUGINS then
  -- Do not load plugins
  return
end

-- [[ Lazy Plugin Manager ]]
require 'tko.lazy-bootstrap'
require 'tko.lazy-plugins'
