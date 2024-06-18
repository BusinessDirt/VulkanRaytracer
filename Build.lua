-- premake5.lua
workspace "Vulkan Raytracer"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Raytracer"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "Dependencies.lua"
include "Raytracer/Build-Raytracer.lua"