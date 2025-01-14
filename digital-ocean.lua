 -- Digital Ocean theme for NvChad with enhanced syntax differentiation
local M = {}

M.base_30 = {
  white = "#E6F8FF",          -- Base text
  darker_black = "#000D1A",   -- Deepest background
  black = "#001428",          -- Background
  black2 = "#001F3D",         -- Selection background
  one_bg = "#002952",         -- Lighter background
  one_bg2 = "#003666",        -- Even lighter background
  one_bg3 = "#004380",        -- Lightest background highlights
  grey = "#4A6B8C",           -- Dimmed syntax
  grey_fg = "#6B8CAA",        -- Comments (brightened for visibility)
  grey_fg2 = "#8BA4C4",       -- Brighter grey text
  light_grey = "#A3B8D4",     -- Brightest grey elements
  red = "#FF3366",           -- Errors & important keywords
  baby_pink = "#FF99DD",     -- Special highlights
  pink = "#FF66FF",          -- Punctuation & delimiters
  line = "#80FFFF",          -- Line highlights
  green = "#80FFB3",         -- Strings
  vibrant_green = "#99FF99", -- Success indicators
  blue = "#47A8FF",         -- Functions & methods
  nord_blue = "#66FFFF",    -- Special functions
  yellow = "#FFEE99",       -- Warnings & special variables
  sun = "#FFB366",          -- Operators
  purple = "#E680FF",       -- Types & definitions
  dark_purple = "#CC99FF",  -- Secondary type information
  teal = "#66FFE6",        -- Built-in elements
  orange = "#FF9966",      -- Constants & numbers
  cyan = "#99FFFF",        -- Links & references
  statusline_bg = "#002952",
  lightbg = "#004380",
  pmenu_bg = "#1A4B80",
  folder_bg = "#80DDFF",
}

M.base_16 = {
  base00 = M.base_30.darker_black,
  base01 = M.base_30.black2,
  base02 = M.base_30.one_bg,
  base03 = M.base_30.one_bg2,
  base04 = M.base_30.one_bg3,
  base05 = M.base_30.blue,       -- Main text color
  base06 = M.base_30.light_grey,
  base07 = M.base_30.white,
  base08 = M.base_30.purple,     -- Types & special identifiers
  base09 = M.base_30.orange,     -- Numbers & constants
  base0A = M.base_30.yellow,     -- Attributes & parameters
  base0B = M.base_30.green,      -- Strings
  base0C = M.base_30.teal,       -- Built-in functions
  base0D = M.base_30.blue,       -- Functions
  base0E = M.base_30.red,        -- Keywords
  base0F = M.base_30.pink,       -- Punctuation
}

M.polish_hl = {
  treesitter = {
    -- Variables and identifiers
    ["@variable"] = { fg = M.base_30.white },           -- Regular variables
    ["@variable.builtin"] = { fg = M.base_30.teal },    -- Built-in variables
    ["@variable.parameter"] = { fg = M.base_30.yellow }, -- Parameters
    ["@variable.member"] = { fg = M.base_30.cyan },     -- Object properties
    ["@variable.member.key"] = { fg = M.base_30.cyan }, -- Object keys

    -- Modules and imports
    ["@module"] = { fg = M.base_30.purple },           -- Module names

    -- Constants
    ["@constant"] = { fg = M.base_30.orange },         -- Constants
    ["@constant.builtin"] = { fg = M.base_30.orange }, -- Built-in constants
    ["@constant.macro"] = { fg = M.base_30.teal },     -- Macro constants

    -- Strings and characters
    ["@string"] = { fg = M.base_30.green },            -- String literals
    ["@string.regex"] = { fg = M.base_30.orange },     -- Regular expressions
    ["@string.escape"] = { fg = M.base_30.orange },    -- Escape characters
    ["@character"] = { fg = M.base_30.green },         -- Character literals
    ["@number"] = { fg = M.base_30.orange },           -- Numbers
    ["@number.float"] = { fg = M.base_30.orange },     -- Float numbers

    -- Keywords and operators
    ["@keyword"] = { fg = M.base_30.red },             -- General keywords
    ["@keyword.function"] = { fg = M.base_30.red },    -- Function keywords
    ["@keyword.return"] = { fg = M.base_30.red },      -- Return keyword
    ["@keyword.operator"] = { fg = M.base_30.sun },    -- Operator keywords
    ["@keyword.import"] = { fg = M.base_30.red },      -- Import keywords
    ["@keyword.conditional"] = { fg = M.base_30.red }, -- Conditional keywords
    ["@keyword.repeat"] = { fg = M.base_30.red },      -- Loop keywords

    -- Functions
    ["@function"] = { fg = M.base_30.blue },           -- Function definitions
    ["@function.builtin"] = { fg = M.base_30.teal },   -- Built-in functions
    ["@function.call"] = { fg = M.base_30.blue },      -- Function calls
    ["@constructor"] = { fg = M.base_30.purple },      -- Constructor calls

    -- Operators and punctuation
    ["@operator"] = { fg = M.base_30.sun },            -- Operators
    ["@punctuation.bracket"] = { fg = M.base_30.pink }, -- Brackets
    ["@punctuation.delimiter"] = { fg = M.base_30.pink }, -- Delimiters

    -- Tags (JSX/TSX)
    ["@tag"] = { fg = M.base_30.red },                 -- Tags
    ["@tag.attribute"] = { fg = M.base_30.yellow },    -- Tag attributes
    ["@tag.delimiter"] = { fg = M.base_30.pink },      -- Tag delimiters

    -- Comments
    ["@comment"] = { fg = M.base_30.grey_fg, italic = true },     -- Regular comments
    ["@comment.todo"] = { fg = M.base_30.black, bg = M.base_30.yellow },
    ["@comment.warning"] = { fg = M.base_30.black, bg = M.base_30.orange },
    ["@comment.note"] = { fg = M.base_30.black, bg = M.base_30.blue },
    ["@comment.danger"] = { fg = M.base_30.black, bg = M.base_30.red },
  },

  -- LSP Highlights
  defaults = {
    -- LSP References
    LspReferenceText = { bg = M.base_30.one_bg3, bold = true },
    LspReferenceRead = { bg = M.base_30.one_bg3, bold = true },
    LspReferenceWrite = { bg = M.base_30.one_bg3, bold = true },

    -- Diagnostics
    DiagnosticHint = { fg = M.base_30.purple, bold = true },
    DiagnosticError = { fg = M.base_30.red, bold = true },
    DiagnosticWarn = { fg = M.base_30.yellow, bold = true },
    DiagnosticInfo = { fg = M.base_30.blue, bold = true },

    -- Inlay hints
    LspInlayHint = { 
      fg = M.base_30.light_grey,
      bg = M.base_30.black2,
      italic = true
    },
  }
}

M.type = "dark"

M = require("base46").override_theme(M, "digital_ocean")

return M
