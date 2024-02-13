package("bpm")
    set_description("A simple C++23 multimedia library")
    add_deps("raylib")

    add_urls("https://github.com/petter-holmberg/bpm.git")
    add_versions("0.1", "07bb1b2b9febac04e2d47dd08affa68253fdabff")

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
