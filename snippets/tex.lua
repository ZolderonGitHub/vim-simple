local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
return {
    s({trig="im", snippetType="autosnippet"},
    {
        t("\\( "),
        i(1),
        t("\\)"),
    }),

    s({trig="dm", snippetType="autosnippet"},
    {
        t("\\[ "),
        i(1),
        t("\\]"),
    }),

    s({trig="th", snippetType="autosnippet"},
    fmta(
        [[
        \begin{theorem}
            <>
        \end{theorem}
        ]],
        { i(1) }
    )),

    s({trig="prop", snippetType="autosnippet"},
    fmta(
        [[
        \begin{prop}
            <>
        \end{prop}
        ]],
        { i(1) }
    )),

    s({trig="lem", snippetType="autosnippet"},
    fmta(
        [[
        \begin{lemme}
            <>
        \end{lemme}
        ]],
        { i(1) }
    )),

    s({trig="proof", snippetType="autosnippet"},
    fmta(
        [[
        \begin{proof}
            <>
        \end{proof}
        ]],
        { i(1) }
    )),
}

