#!/usr/bin/env texlua

-- Build script for LaTeX3 "l3ldb" files

-- Identify the bundle and module: the module may be empty in the case where
-- there is no subdivision
bundle = "l3trial"
module = "l3ldb"

-- Location of main directory: use Unix-style path separators
maindir = "../.."

-- Non-standard settings
checkdeps   =
  {
    maindir .. "/l3build",
    maindir .. "/l3kernel",
    maindir .. "/l3packages/xtemplate"
  }
checksuppfiles  =
  {
    "article.cls",
    "fontenc.sty",
    "ot1enc.def",
    "regression-test.cfg",
    "size10.clo",
  }

-- Load the common build code: this is the one place that a path needs to be
-- hard-coded
-- As the build system is 'self-contained' there is no module set up here: just
--load the file in a similar way to a TeX \input
dofile (maindir .. "/build-config.lua")
dofile (maindir .. "/l3build/l3build.lua")
