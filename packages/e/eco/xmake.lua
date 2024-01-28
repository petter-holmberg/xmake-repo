package("eco")
    set_kind("library", {headeronly = true})
    set_description("A generic C++ library of efficient components")
    set_license("CC0 1.0 Universal")

    add_urls("https://github.com/petter-holmberg/eco.git")
    add_versions("cpp20", "<shasum256 or gitcommit>")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
