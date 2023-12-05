local C = require "monet.palette"
local O = require "monet.config"

local M = {}

function M.get()
	return {
		DiagnosticError = { fg = C.red },
		DiagnosticHint = { fg = C.softturqoise },
		DiagnosticInfo = { fg = C.lightcyan },
		DiagnosticWarn = { fg = C.yellow },
		DiagnosticUnderlineError = { sp = C.red, undercurl = true },
		DiagnosticUnderlineHint = { sp = C.softturqoise, undercurl = true },
		DiagnosticUnderlineInfo = { sp = C.lightcyan, undercurl = true },
		DiagnosticUnderlineWarn = { sp = C.yellow, undercurl = true },

		LspReferenceText = { bg = C.darkgrey2 },
		LspReferenceRead = { bg = C.darkgrey2 },
		LspReferenceWrite = { bg = C.darkgrey2 },

		-- Misc
		["@comment"] = { link = "Comment" },
		["@error"] = { link = "Error" },
		["@preproc"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
		["@define"] = { link = "Define" },   -- preprocessor definition directives
		["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

		-- Punctuation
		["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
		["@punctuation.bracket"] = { fg = C.grey3 },       -- For brackets and parenthesis.
		["@punctuation.special"] = { link = "Special" },   -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

		-- Literals
		["@string"] = { link = "String" },                                     -- For strings.
		["@string.regex"] = { fg = C.orange, style = O.styles.strings or {} }, -- For regexes.
		["@string.escape"] = { fg = C.skyblue, style = O.styles.strings or {} }, -- For escape characters within a string.
		["@string.special"] = { link = "Special" },                            -- other special strings (e.g. dates)

		["@character"] = { link = "Character" },                               -- character literals
		["@character.special"] = { link = "SpecialChar" },                     -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" },                                   -- For booleans.
		["@number"] = { link = "Number" },                                     -- For all numbers
		["@float"] = { link = "Float" },                                       -- For floats.

		-- Functions
		["@function"] = { link = "Function" },                                           -- For function (calls and definitions).
		["@function.builtin"] = { fg = C.pastelorange, style = O.styles.functions or {} }, -- For builtin functions: table.insert in Lua.
		["@function.call"] = { link = "Function" },                                      -- function calls
		["@function.macro"] = { fg = C.softturqoise, style = O.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in Rust.
		["@method"] = { link = "Function" },                                             -- For method definitions.
		["@method.call"] = { link = "Function" },                                        -- For method calls.

		["@constructor"] = { fg = C.azureblue },                                         -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@parameter"] = { fg = C.pastelgreen, style = O.styles.variables or {} },       -- For parameters of a function.

		-- Keywords
		["@keyword"] = { link = "Keyword" },                                               -- For keywords that don't fall in previous categories.
		["@keyword.function"] = { fg = C.cornflowerblue, style = O.styles.keywords or {} }, -- For keywords used to define a function.
		["@keyword.operator"] = { fg = C.cornflowerblue, style = O.styles.operators or {} }, -- For new keyword operator
		["@keyword.return"] = { fg = C.cornflowerblue, style = O.styles.keywords or {} },
		-- JS & derivative
		["@keyword.export"] = { fg = C.lightcyan, style = O.styles.keywords },

		["@conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
		["@repeat"] = { link = "Repeat" },         -- For keywords related to loops.
		-- @debug            ; keywords related to debugging
		["@label"] = { link = "Label" },           -- For labels: label: in C and :label: in Lua.
		["@include"] = { link = "Include" },       -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@exception"] = { link = "Exception" },   -- For exception related keywords.

		-- Types
		["@type"] = { link = "Type" },                                                -- For types.
		["@type.builtin"] = { fg = C.pastelorange, style = O.styles.properties or {} }, -- For builtin types.
		["@type.definition"] = { link = "Type" },                                     -- type definitions (e.g. `typedef` in C)
		["@type.qualifier"] = { link = "Keyword" },                                   -- type qualifiers (e.g. `const`)

		["@storageclass"] = { link = "StorageClass" },                                -- visibility/life-time/etc. modifiers (e.g. `static`)
		["@attribute"] = { link = "Constant" },                                       -- attribute annotations (e.g. Python decorators)
		["@field"] = { fg = C.pastelturqoise },                                       -- For fields.
		["@property"] = { fg = C.pastelturqoise, style = O.styles.properties or {} }, -- Same as TSField.

		-- Identifiers

		["@variable"] = { fg = C.lightpeach, style = O.styles.variables or {} },          -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = C.lavenderblue, style = O.styles.properties or {} }, -- Variable names that are defined by the languages, like this or self.

		["@constant"] = { link = "Constant" },                                            -- For constants
		["@constant.builtin"] = { fg = C.orange, style = O.styles.keywords or {} },       -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { link = "Macro" },                                         -- For constants that are defined by macros: NULL in C.

		["@namespace"] = { fg = C.pastelturqoise, style = { "italic" } },                 -- For identifiers referring to modules and namespaces.
		["@symbol"] = { fg = C.pastelpink },

		-- Text
		["@text"] = { fg = C.grey0 },                                          -- For strings considerated text in a markup language.
		["@text.strong"] = { fg = C.softaqua, style = { "bold" } },            -- bold
		["@text.emphasis"] = { fg = C.softaqua, style = { "italic" } },        -- italic
		["@text.underline"] = { link = "Underline" },                          -- underlined text
		["@text.strike"] = { fg = C.grey0, style = { "strikethrough" } },      -- strikethrough text
		["@text.title"] = { fg = C.softblue, style = { "bold" } },             -- titles like: # Example
		["@text.literal"] = { fg = C.softturqoise },                           -- used for inline code in markdown and for doc in python (""")
		["@text.uri"] = { fg = C.lightcyan, style = { "italic", "underline" } }, -- urls, links and emails
		["@text.math"] = { fg = C.softblue },                                  -- math environments (e.g. `$ ... $` in LaTeX)
		["@text.environment"] = { fg = C.skyblue },                            -- text environments of markup languages
		["@text.environment.name"] = { fg = C.softblue },                      -- text indicating the type of an environment
		["@text.reference"] = { link = "Tag" },                                -- text references, footnotes, citations, etc.

		["@text.todo"] = { fg = C.dark0, bg = C.yellow },                      -- todo notes
		["@text.todo.checked"] = { fg = C.mossgreen },                         -- todo notes
		["@text.todo.unchecked"] = { fg = C.grey4 },                           -- todo notes
		["@text.note"] = { fg = C.dark0, bg = C.softblue },
		["@text.warning"] = { fg = C.dark0, bg = C.yellow },
		["@text.danger"] = { fg = C.dark0, bg = C.red },

		["@text.diff.add"] = { link = "diffAdded" },    -- added text (for diff files)
		["@text.diff.delete"] = { link = "diffRemoved" }, -- deleted text (for diff files)

		-- Tags
		["@tag"] = { fg = C.cornflowerblue },                             -- Tags like html tag names.
		["@tag.attribute"] = { fg = C.softturqoise, style = { "italic" } }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = C.lightcyan },                        -- Tag delimiter like < > /

		-- Language specific
		-- bash
		["@function.builtin.bash"] = { fg = C.red, style = { "italic" } },

		-- markdown
		["@text.title.2.markdown"] = { link = "rainbow2" },
		["@text.title.1.markdown"] = { link = "rainbow1" },
		["@text.title.3.markdown"] = { link = "rainbow3" },
		["@text.title.4.markdown"] = { link = "rainbow4" },
		["@text.title.5.markdown"] = { link = "rainbow5" },
		["@text.title.6.markdown"] = { link = "rainbow6" },

		-- css
		["@property.css"] = { fg = C.pastelturqoise },
		["@property.id.css"] = { fg = C.softblue },
		["@property.class.css"] = { fg = C.yellow },
		["@type.css"] = { fg = C.pastelturqoise },
		["@type.tag.css"] = { fg = C.cornflowerblue },
		["@string.plain.css"] = { fg = C.orange },
		["@number.css"] = { fg = C.orange },

		-- toml
		["@property.toml"] = { fg = C.softblue },

		-- json
		["@label.json"] = { fg = C.softblue },

		-- lua
		["@constructor.lua"] = { fg = C.pastelpink },

		-- typescript
		["@property.typescript"] = { fg = C.pastelturqoise, style = O.styles.properties or {} },
		["@constructor.typescript"] = { fg = C.pastelturqoise },

		-- TSX (Typescript React)
		["@constructor.tsx"] = { fg = C.pastelturqoise },
		["@tag.attribute.tsx"] = { fg = C.cornflowerblue, style = { "italic" } },

		-- Python
		["@string.documentation.python"] = { link = "Comment" },

		-- Misc
		gitcommitSummary = { fg = C.pastelpeach, style = { "italic" } },
		zshKSHFunction = { link = "Function" },

		-- Semantic Tokens
		["@lsp.type.boolean"] = { link = "@boolean" },
		["@lsp.type.builtinType"] = { link = "@type.builtin" },
		["@lsp.type.comment"] = { link = "@comment" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.escapeSequence"] = { link = "@string.escape" },
		["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
		["@lsp.type.interface"] = { fg = C.pastelpink },
		["@lsp.type.keyword"] = { link = "@keyword" },
		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.number"] = { link = "@number" },
		["@lsp.type.operator"] = { link = "@operator" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
		["@lsp.type.typeAlias"] = { link = "@type.definition" },
		["@lsp.type.unresolvedReference"] = { link = "@error" },
		["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
		["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
		["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.operator.injected"] = { link = "@operator" },
		["@lsp.typemod.string.injected"] = { link = "@string" },
		["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
		["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
		["@lsp.typemod.variable.injected"] = { link = "@variable" },
	}
end

return M
