project "ImGui"
    language "C++"
    kind "StaticLib"
    
    targetdir ("bin/"..outputdir.."/%{prj.name}")
    objdir ("bin-int/"..outputdir.."/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstc_textedit.h",
        "imstb_truetype.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp"
    }

    includedirs
    {
        "",
        "../GLFW/src/glfw-3.4/include"
    }

    filter "system:windows"
        cppdialect "C++17"
        systemversion "latest"
        staticruntime "On"

    filter ("system:windows", "configurations:Debug")
        buildoptions "/MTd"
    
    filter ("system:windows", "configurations:Release")
        buildoptions "/MT"
    
    filter ("system:windows", "configurations:Dist")
        buildoptions "/MT"