set_project("rocket")
set_version("0.0.1")

add_rules("mode.debug", "mode.release")
add_requires("sfml")

target("rocket")
    -- Global preferences
    set_kind("binary")
    set_languages("c++17")
    
    add_files("src/*.cpp") 
    add_files("src/component/*.cpp")
    add_files("src/entity/*.cpp")
    add_files("src/system/*.cpp") 
    add_files("src/graphic/*.cpp")
    add_packages("sfml")

    -- Debug preferences
    -- none, faster, fastest, smallest
    if is_mode("debug") then
        set_optimize("none")
    else
        set_optimize("fastest")
    end


-- To set platform, toolchain, archetecture or xmake mode use that command:
-- > xmake f --toolchain=msvc -p windows -a x64 -m debug
