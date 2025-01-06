project "libsndfile"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
	systemversion "latest"
	staticruntime "on"
	
	targetdir "%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}"
	objdir "%{wks.location}/bin-obj/%{cfg.buildcfg}/%{prj.name}"

	flags {
		"MultiProcessorCompile",
	}

    includedirs {
		"include",
		"src",
    }

    files {
		"include/*.h",
		"include/*.hh",
		"src/**.h",
		"src/**.c",
    }

	removefiles {
		"src/test_**.h",
		"src/test_**.c",
	}

    defines {
		
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"