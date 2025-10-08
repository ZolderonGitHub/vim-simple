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
    s({trig="im ", snippetType="autosnippet"},
    {
        t("\\( "),
        i(1),
        t(" \\)"),
    }),

    s({trig="dm ", snippetType="autosnippet"},
    {
        t("\\[ "),
        i(1),
        t(" \\]"),
    }),

    s({trig="th"},
    fmta(
        [[
        \begin{theorem}
            <>
        \end{theorem}
        ]],
        { i(1) }
    )),

    s({trig="prop"},
    fmta(
        [[
        \begin{prop}
            <>
        \end{prop}
        ]],
        { i(1) }
    )),

    s({trig="lem"},
    fmta(
        [[
        \begin{lemme}
            <>
        \end{lemme}
        ]],
        { i(1) }
    )),

    s({trig="cor"},
    fmta(
        [[
        \begin{cor}
            <>
        \end{cor}
        ]],
        { i(1) }
    )),

    s({trig="proof"},
    fmta(
        [[
        \begin{proof}
            <>
        \end{proof}
        ]],
        { i(1) }
    )),

    s({trig="begin"},
    fmta(
        [[
        \begin{<>}
            <>
        \end{<>}
        ]],
        { i(1), i(2), rep(1) }
    )),

    s({trig="enum"},
    fmta(
        [[
        \begin{enumerate}
            <>
        \end{enumerate}
        ]],
        { i(1) }
    )),
}

