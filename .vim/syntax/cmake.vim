" Additional Vim commands, functions, and macros not found in the default
" cmake syntax files. This is intended to replace the default cmake syntax
" files
" Maintainer: Isabell Muerte
" Version: 0.2
" Ordered by CMake Module

syn case ignore

" cmake 3.0 language change
syn region cmake_comment start="#\[\[" end="\]\]" contains=cmakeTodo

" builtins commands generated via
" cmake --help-command-list | tr '[:lower:]' '[:upper:]'
" followed by s/$/ nextgroup=cmakeArguments
syn keyword cmake_statement ADD_COMPILE_OPTIONS nextgroup=cmakeArguments
syn keyword cmake_statement ADD_CUSTOM_COMMAND nextgroup=cmakeArguments
syn keyword cmake_statement ADD_CUSTOM_TARGET nextgroup=cmakeArguments
syn keyword cmake_statement ADD_DEFINITIONS nextgroup=cmakeArguments
syn keyword cmake_statement ADD_DEPENDENCIES nextgroup=cmakeArguments
syn keyword cmake_statement ADD_EXECUTABLE nextgroup=cmakeArguments
syn keyword cmake_statement ADD_LIBRARY nextgroup=cmakeArguments
syn keyword cmake_statement ADD_SUBDIRECTORY nextgroup=cmakeArguments
syn keyword cmake_statement ADD_TEST nextgroup=cmakeArguments
syn keyword cmake_statement AUX_SOURCE_DIRECTORY nextgroup=cmakeArguments
syn keyword cmake_statement BREAK nextgroup=cmakeArguments
syn keyword cmake_statement BUILD_COMMAND nextgroup=cmakeArguments
syn keyword cmake_statement BUILD_NAME nextgroup=cmakeArguments
syn keyword cmake_statement CMAKE_HOST_SYSTEM_INFORMATION nextgroup=cmakeArguments
syn keyword cmake_statement CMAKE_MINIMUM_REQUIRED nextgroup=cmakeArguments
syn keyword cmake_statement CMAKE_POLICY nextgroup=cmakeArguments
syn keyword cmake_statement CONFIGURE_FILE nextgroup=cmakeArguments
syn keyword cmake_statement CONTINUE nextgroup=cmakeArguments
syn keyword cmake_statement CREATE_TEST_SOURCELIST nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_BUILD nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_CONFIGURE nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_COVERAGE nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_EMPTY_BINARY_DIRECTORY nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_MEMCHECK nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_READ_CUSTOM_FILES nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_RUN_SCRIPT nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_SLEEP nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_START nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_SUBMIT nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_TEST nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_UPDATE nextgroup=cmakeArguments
syn keyword cmake_statement CTEST_UPLOAD nextgroup=cmakeArguments
syn keyword cmake_statement DEFINE_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement ELSE nextgroup=cmakeArguments
syn keyword cmake_statement ELSEIF nextgroup=cmakeArguments
syn keyword cmake_statement ENABLE_LANGUAGE nextgroup=cmakeArguments
syn keyword cmake_statement ENABLE_TESTING nextgroup=cmakeArguments
syn keyword cmake_statement ENDFOREACH nextgroup=cmakeArguments
syn keyword cmake_statement ENDFUNCTION nextgroup=cmakeArguments
syn keyword cmake_statement ENDIF nextgroup=cmakeArguments
syn keyword cmake_statement ENDMACRO nextgroup=cmakeArguments
syn keyword cmake_statement ENDWHILE nextgroup=cmakeArguments
syn keyword cmake_statement EXEC_PROGRAM nextgroup=cmakeArguments
syn keyword cmake_statement EXECUTE_PROCESS nextgroup=cmakeArguments
syn keyword cmake_statement EXPORT nextgroup=cmakeArguments
syn keyword cmake_statement EXPORT_LIBRARY_DEPENDENCIES nextgroup=cmakeArguments
syn keyword cmake_statement FILE nextgroup=cmakeArguments
syn keyword cmake_statement FIND_FILE nextgroup=cmakeArguments
syn keyword cmake_statement FIND_LIBRARY nextgroup=cmakeArguments
syn keyword cmake_statement FIND_PACKAGE nextgroup=cmakeArguments
syn keyword cmake_statement FIND_PATH nextgroup=cmakeArguments
syn keyword cmake_statement FIND_PROGRAM nextgroup=cmakeArguments
syn keyword cmake_statement FLTK_WRAP_UI nextgroup=cmakeArguments
syn keyword cmake_statement FOREACH nextgroup=cmakeArguments
syn keyword cmake_statement FUNCTION nextgroup=cmakeArguments
syn keyword cmake_statement GET_CMAKE_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement GET_DIRECTORY_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement GET_FILENAME_COMPONENT nextgroup=cmakeArguments
syn keyword cmake_statement GET_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement GET_SOURCE_FILE_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement GET_TARGET_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement GET_TEST_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement IF nextgroup=cmakeArguments
syn keyword cmake_statement INCLUDE nextgroup=cmakeArguments
syn keyword cmake_statement INCLUDE_DIRECTORIES nextgroup=cmakeArguments
syn keyword cmake_statement INCLUDE_EXTERNAL_MSPROJECT nextgroup=cmakeArguments
syn keyword cmake_statement INCLUDE_REGULAR_EXPRESSION nextgroup=cmakeArguments
syn keyword cmake_statement INSTALL nextgroup=cmakeArguments
syn keyword cmake_statement INSTALL_FILES nextgroup=cmakeArguments
syn keyword cmake_statement INSTALL_PROGRAMS nextgroup=cmakeArguments
syn keyword cmake_statement INSTALL_TARGETS nextgroup=cmakeArguments
syn keyword cmake_statement LINK_DIRECTORIES nextgroup=cmakeArguments
syn keyword cmake_statement LINK_LIBRARIES nextgroup=cmakeArguments
syn keyword cmake_statement LIST nextgroup=cmakeArguments
syn keyword cmake_statement LOAD_CACHE nextgroup=cmakeArguments
syn keyword cmake_statement LOAD_COMMAND nextgroup=cmakeArguments
syn keyword cmake_statement MACRO nextgroup=cmakeArguments
syn keyword cmake_statement MAKE_DIRECTORY nextgroup=cmakeArguments
syn keyword cmake_statement MARK_AS_ADVANCED nextgroup=cmakeArguments
syn keyword cmake_statement MATH nextgroup=cmakeArguments
syn keyword cmake_statement MESSAGE nextgroup=cmakeArguments
syn keyword cmake_statement OPTION nextgroup=cmakeArguments
syn keyword cmake_statement OUTPUT_REQUIRED_FILES nextgroup=cmakeArguments
syn keyword cmake_statement PROJECT nextgroup=cmakeArguments
syn keyword cmake_statement QT_WRAP_CPP nextgroup=cmakeArguments
syn keyword cmake_statement QT_WRAP_UI nextgroup=cmakeArguments
syn keyword cmake_statement REMOVE nextgroup=cmakeArguments
syn keyword cmake_statement REMOVE_DEFINITIONS nextgroup=cmakeArguments
syn keyword cmake_statement RETURN nextgroup=cmakeArguments
syn keyword cmake_statement SEPARATE_ARGUMENTS nextgroup=cmakeArguments
syn keyword cmake_statement SET nextgroup=cmakeArguments
syn keyword cmake_statement SET_DIRECTORY_PROPERTIES nextgroup=cmakeArguments
syn keyword cmake_statement SET_PROPERTY nextgroup=cmakeArguments
syn keyword cmake_statement SET_SOURCE_FILES_PROPERTIES nextgroup=cmakeArguments
syn keyword cmake_statement SET_TARGET_PROPERTIES nextgroup=cmakeArguments
syn keyword cmake_statement SET_TESTS_PROPERTIES nextgroup=cmakeArguments
syn keyword cmake_statement SITE_NAME nextgroup=cmakeArguments
syn keyword cmake_statement SOURCE_GROUP nextgroup=cmakeArguments
syn keyword cmake_statement STRING nextgroup=cmakeArguments
syn keyword cmake_statement SUBDIR_DEPENDS nextgroup=cmakeArguments
syn keyword cmake_statement SUBDIRS nextgroup=cmakeArguments
syn keyword cmake_statement TARGET_COMPILE_DEFINITIONS nextgroup=cmakeArguments
syn keyword cmake_statement TARGET_COMPILE_FEATURES nextgroup=cmakeArguments
syn keyword cmake_statement TARGET_COMPILE_OPTIONS nextgroup=cmakeArguments
syn keyword cmake_statement TARGET_INCLUDE_DIRECTORIES nextgroup=cmakeArguments
syn keyword cmake_statement TARGET_LINK_LIBRARIES nextgroup=cmakeArguments
syn keyword cmake_statement TARGET_SOURCES nextgroup=cmakeArguments
syn keyword cmake_statement TRY_COMPILE nextgroup=cmakeArguments
syn keyword cmake_statement TRY_RUN nextgroup=cmakeArguments
syn keyword cmake_statement UNSET nextgroup=cmakeArguments
syn keyword cmake_statement USE_MANGLED_MESA nextgroup=cmakeArguments
syn keyword cmake_statement UTILITY_SOURCE nextgroup=cmakeArguments
syn keyword cmake_statement VARIABLE_REQUIRES nextgroup=cmakeArguments
syn keyword cmake_statement VARIABLE_WATCH nextgroup=cmakeArguments
syn keyword cmake_statement WHILE nextgroup=cmakeArguments
syn keyword cmake_statement WRITE_FILE nextgroup=cmakeArguments

" builtin variables (This covers *most* of the builtin variables)
syn keyword cmake_variable APPLE
syn keyword cmake_variable BORLAND
syn keyword cmake_variable BUILD_SHARED_LIBS
syn keyword cmake_variable CMAKE_ABSOLUTE_DESTINATION_FILES
syn keyword cmake_variable CMAKE_ANDROID_API
syn keyword cmake_variable CMAKE_ANDROID_API_MIN
syn keyword cmake_variable CMAKE_ANDROID_GUI
syn keyword cmake_variable CMAKE_APPBUNDLE_PATH
syn keyword cmake_variable CMAKE_AR
syn keyword cmake_variable CMAKE_ARCHIVE_OUTPUT_DIRECTORY
syn keyword cmake_variable CMAKE_ARGC
syn keyword cmake_variable CMAKE_ARGV0
syn keyword cmake_variable CMAKE_AUTOMOC
syn keyword cmake_variable CMAKE_AUTOMOC_MOC_OPTIONS
syn keyword cmake_variable CMAKE_AUTOMOC_RELAXED_MODE
syn keyword cmake_variable CMAKE_AUTORCC
syn keyword cmake_variable CMAKE_AUTORCC_OPTIONS
syn keyword cmake_variable CMAKE_AUTOUIC
syn keyword cmake_variable CMAKE_AUTOUIC_OPTIONS
syn keyword cmake_variable CMAKE_BACKWARDS_COMPATIBILITY
syn keyword cmake_variable CMAKE_BINARY_DIR
syn keyword cmake_variable CMAKE_BUILD_TOOL
syn keyword cmake_variable CMAKE_BUILD_TYPE
syn keyword cmake_variable CMAKE_BUILD_WITH_INSTALL_RPATH
syn keyword cmake_variable CMAKE_CACHEFILE_DIR
syn keyword cmake_variable CMAKE_CACHE_MAJOR_VERSION
syn keyword cmake_variable CMAKE_CACHE_MINOR_VERSION
syn keyword cmake_variable CMAKE_CACHE_PATCH_VERSION
syn keyword cmake_variable CMAKE_CFG_INTDIR
syn keyword cmake_variable CMAKE_CL_64
syn keyword cmake_variable CMAKE_COLOR_MAKEFILE
syn keyword cmake_variable CMAKE_COMMAND
syn keyword cmake_variable CMAKE_COMPILER_2005
syn keyword cmake_variable CMAKE_COMPILER_IS_GNU<LANG>
syn keyword cmake_variable CMAKE_COMPILE_PDB_OUTPUT_DIRECTORY
syn keyword cmake_variable CMAKE_COMPILE_PDB_OUTPUT_DIRECTORY_<CONFIG>
syn keyword cmake_variable CMAKE_CONFIGURATION_TYPES
syn keyword cmake_variable CMAKE_CROSSCOMPILING
syn keyword cmake_variable CMAKE_CTEST_COMMAND
syn keyword cmake_variable CMAKE_CURRENT_BINARY_DIR
syn keyword cmake_variable CMAKE_CURRENT_LIST_DIR
syn keyword cmake_variable CMAKE_CURRENT_LIST_FILE
syn keyword cmake_variable CMAKE_CURRENT_LIST_LINE
syn keyword cmake_variable CMAKE_CURRENT_SOURCE_DIR
syn keyword cmake_variable CMAKE_CXX_COMPILE_FEATURES
syn keyword cmake_variable CMAKE_CXX_EXTENSIONS
syn keyword cmake_variable CMAKE_CXX_STANDARD
syn keyword cmake_variable CMAKE_CXX_STANDARD_REQUIRED
syn keyword cmake_variable CMAKE_C_COMPILE_FEATURES
syn keyword cmake_variable CMAKE_C_EXTENSIONS
syn keyword cmake_variable CMAKE_C_STANDARD
syn keyword cmake_variable CMAKE_C_STANDARD_REQUIRED
syn keyword cmake_variable CMAKE_DEBUG_POSTFIX
syn keyword cmake_variable CMAKE_DEBUG_TARGET_PROPERTIES
syn keyword cmake_variable CMAKE_DISABLE_FIND_PACKAGE_<PACKAGENAME>
syn keyword cmake_variable CMAKE_DL_LIBS
syn keyword cmake_variable CMAKE_EDIT_COMMAND
syn keyword cmake_variable CMAKE_ERROR_DEPRECATED
syn keyword cmake_variable CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION
syn keyword cmake_variable CMAKE_EXECUTABLE_SUFFIX
syn keyword cmake_variable CMAKE_EXE_LINKER_FLAGS
syn keyword cmake_variable CMAKE_EXE_LINKER_FLAGS_<CONFIG>
syn keyword cmake_variable CMAKE_EXPORT_NO_PACKAGE_REGISTRY
syn keyword cmake_variable CMAKE_EXTRA_GENERATOR
syn keyword cmake_variable CMAKE_EXTRA_SHARED_LIBRARY_SUFFIXES
syn keyword cmake_variable CMAKE_FIND_LIBRARY_PREFIXES
syn keyword cmake_variable CMAKE_FIND_LIBRARY_SUFFIXES
syn keyword cmake_variable CMAKE_FIND_NO_INSTALL_PREFIX
syn keyword cmake_variable CMAKE_FIND_PACKAGE_NAME
syn keyword cmake_variable CMAKE_FIND_PACKAGE_NO_PACKAGE_REGISTRY
syn keyword cmake_variable CMAKE_FIND_PACKAGE_NO_SYSTEM_PACKAGE_REGISTRY
syn keyword cmake_variable CMAKE_FIND_PACKAGE_WARN_NO_MODULE
syn keyword cmake_variable CMAKE_FIND_ROOT_PATH
syn keyword cmake_variable CMAKE_FIND_ROOT_PATH_MODE_INCLUDE
syn keyword cmake_variable CMAKE_FIND_ROOT_PATH_MODE_LIBRARY
syn keyword cmake_variable CMAKE_FIND_ROOT_PATH_MODE_PACKAGE
syn keyword cmake_variable CMAKE_FIND_ROOT_PATH_MODE_PROGRAM
syn keyword cmake_variable CMAKE_FRAMEWORK_PATH
syn keyword cmake_variable CMAKE_FORTRAN_FORMAT
syn keyword cmake_variable CMAKE_FORTRAN_MODDIR_DEFAULT
syn keyword cmake_variable CMAKE_FORTRAN_MODDIR_FLAG
syn keyword cmake_variable CMAKE_FORTRAN_MODOUT_FLAG
syn keyword cmake_variable CMAKE_FORTRAN_MODULE_DIRECTORY
syn keyword cmake_variable CMAKE_GENERATOR
syn keyword cmake_variable CMAKE_GENERATOR_PLATFORM
syn keyword cmake_variable CMAKE_GENERATOR_TOOLSET
syn keyword cmake_variable CMAKE_GNUTOMS
syn keyword cmake_variable CMAKE_HOME_DIRECTORY
syn keyword cmake_variable CMAKE_HOST_APPLE
syn keyword cmake_variable CMAKE_HOST_SYSTEM
syn keyword cmake_variable CMAKE_HOST_SYSTEM_NAME
syn keyword cmake_variable CMAKE_HOST_SYSTEM_PROCESSOR
syn keyword cmake_variable CMAKE_HOST_SYSTEM_VERSION
syn keyword cmake_variable CMAKE_HOST_UNIX
syn keyword cmake_variable CMAKE_HOST_WIN32
syn keyword cmake_variable CMAKE_IGNORE_PATH
syn keyword cmake_variable CMAKE_IMPORT_LIBRARY_PREFIX
syn keyword cmake_variable CMAKE_IMPORT_LIBRARY_SUFFIX
syn keyword cmake_variable CMAKE_INCLUDE_CURRENT_DIR
syn keyword cmake_variable CMAKE_INCLUDE_CURRENT_DIR_IN_INTERFACE
syn keyword cmake_variable CMAKE_INCLUDE_DIRECTORIES_BEFORE
syn keyword cmake_variable CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE
syn keyword cmake_variable CMAKE_INCLUDE_PATH
syn keyword cmake_variable CMAKE_INSTALL_DEFAULT_COMPONENT_NAME
syn keyword cmake_variable CMAKE_INSTALL_MESSAGE
syn keyword cmake_variable CMAKE_INSTALL_NAME_DIR
syn keyword cmake_variable CMAKE_INSTALL_PREFIX
syn keyword cmake_variable CMAKE_INSTALL_RPATH
syn keyword cmake_variable CMAKE_INSTALL_RPATH_USE_LINK_PATH
syn keyword cmake_variable CMAKE_INTERNAL_PLATFORM_ABI
syn keyword cmake_variable CMAKE_JOB_POOL_COMPILE
syn keyword cmake_variable CMAKE_JOB_POOL_LINK
syn keyword cmake_variable CMAKE_LIBRARY_ARCHITECTURE
syn keyword cmake_variable CMAKE_LIBRARY_ARCHITECTURE_REGEX
syn keyword cmake_variable CMAKE_LIBRARY_OUTPUT_DIRECTORY
syn keyword cmake_variable CMAKE_LIBRARY_PATH
syn keyword cmake_variable CMAKE_LIBRARY_PATH_FLAG
syn keyword cmake_variable CMAKE_LINK_DEF_FILE_FLAG
syn keyword cmake_variable CMAKE_LINK_DEPENDS_NO_SHARED
syn keyword cmake_variable CMAKE_LINK_INTERFACE_LIBRARIES
syn keyword cmake_variable CMAKE_LINK_LIBRARY_FILE_FLAG
syn keyword cmake_variable CMAKE_LINK_LIBRARY_FLAG
syn keyword cmake_variable CMAKE_LINK_LIBRARY_SUFFIX
syn keyword cmake_variable CMAKE_MACOSX_BUNDLE
syn keyword cmake_variable CMAKE_MACOSX_RPATH
syn keyword cmake_variable CMAKE_MAJOR_VERSION
syn keyword cmake_variable CMAKE_MAKE_PROGRAM
syn keyword cmake_variable CMAKE_MAP_IMPORTED_CONFIG_<CONFIG>
syn keyword cmake_variable CMAKE_MATCH_COUNT
syn keyword cmake_variable CMAKE_MFC_FLAG
syn keyword cmake_variable CMAKE_MINIMUM_REQUIRED_VERSION
syn keyword cmake_variable CMAKE_MINOR_VERSION
syn keyword cmake_variable CMAKE_MODULE_LINKER_FLAGS
syn keyword cmake_variable CMAKE_MODULE_LINKER_FLAGS_<CONFIG>
syn keyword cmake_variable CMAKE_MODULE_PATH
syn keyword cmake_variable CMAKE_NOT_USING_CONFIG_FLAGS
syn keyword cmake_variable CMAKE_NO_BUILTIN_CHRPATH
syn keyword cmake_variable CMAKE_NO_SYSTEM_FROM_IMPORTED
syn keyword cmake_variable CMAKE_OBJECT_PATH_MAX
syn keyword cmake_variable CMAKE_OSX_ARCHITECTURES
syn keyword cmake_variable CMAKE_OSX_DEPLOYMENT_TARGET
syn keyword cmake_variable CMAKE_OSX_SYSROOT
syn keyword cmake_variable CMAKE_PARENT_LIST_FILE
syn keyword cmake_variable CMAKE_PATCH_VERSION
syn keyword cmake_variable CMAKE_PDB_OUTPUT_DIRECTORY
syn keyword cmake_variable CMAKE_PDB_OUTPUT_DIRECTORY_<CONFIG>
syn keyword cmake_variable CMAKE_POLICY_DEFAULT_CMP<NNNN>
syn keyword cmake_variable CMAKE_POLICY_WARNING_CMP<NNNN>
syn keyword cmake_variable CMAKE_POSITION_INDEPENDENT_CODE
syn keyword cmake_variable CMAKE_PREFIX_PATH
syn keyword cmake_variable CMAKE_PROGRAM_PATH
syn keyword cmake_variable CMAKE_PROJECT_<PROJECT-NAME>_INCLUDE
syn keyword cmake_variable CMAKE_PROJECT_NAME
syn keyword cmake_variable CMAKE_RANLIB
syn keyword cmake_variable CMAKE_ROOT
syn keyword cmake_variable CMAKE_RUNTIME_OUTPUT_DIRECTORY
syn keyword cmake_variable CMAKE_SCRIPT_MODE_FILE
syn keyword cmake_variable CMAKE_SHARED_LIBRARY_PREFIX
syn keyword cmake_variable CMAKE_SHARED_LIBRARY_SUFFIX
syn keyword cmake_variable CMAKE_SHARED_LINKER_FLAGS
syn keyword cmake_variable CMAKE_SHARED_LINKER_FLAGS_<CONFIG>
syn keyword cmake_variable CMAKE_SHARED_MODULE_PREFIX
syn keyword cmake_variable CMAKE_SHARED_MODULE_SUFFIX
syn keyword cmake_variable CMAKE_SIZEOF_VOID_P
syn keyword cmake_variable CMAKE_SKIP_BUILD_RPATH
syn keyword cmake_variable CMAKE_SKIP_INSTALL_ALL_DEPENDENCY
syn keyword cmake_variable CMAKE_SKIP_INSTALL_RPATH
syn keyword cmake_variable CMAKE_SKIP_INSTALL_RULES
syn keyword cmake_variable CMAKE_SKIP_RPATH
syn keyword cmake_variable CMAKE_SOURCE_DIR
syn keyword cmake_variable CMAKE_STAGING_PREFIX
syn keyword cmake_variable CMAKE_STANDARD_LIBRARIES
syn keyword cmake_variable CMAKE_STATIC_LIBRARY_PREFIX
syn keyword cmake_variable CMAKE_STATIC_LIBRARY_SUFFIX
syn keyword cmake_variable CMAKE_STATIC_LINKER_FLAGS
syn keyword cmake_variable CMAKE_STATIC_LINKER_FLAGS_<CONFIG>
syn keyword cmake_variable CMAKE_SYSROOT
syn keyword cmake_variable CMAKE_SYSTEM
syn keyword cmake_variable CMAKE_SYSTEM_IGNORE_PATH
syn keyword cmake_variable CMAKE_SYSTEM_INCLUDE_PATH
syn keyword cmake_variable CMAKE_SYSTEM_LIBRARY_PATH
syn keyword cmake_variable CMAKE_SYSTEM_NAME
syn keyword cmake_variable CMAKE_SYSTEM_PREFIX_PATH
syn keyword cmake_variable CMAKE_SYSTEM_PROCESSOR
syn keyword cmake_variable CMAKE_SYSTEM_PROGRAM_PATH
syn keyword cmake_variable CMAKE_SYSTEM_VERSION
syn keyword cmake_variable CMAKE_TOOLCHAIN_FILE
syn keyword cmake_variable CMAKE_TRY_COMPILE_CONFIGURATION
syn keyword cmake_variable CMAKE_TWEAK_VERSION
syn keyword cmake_variable CMAKE_USER_MAKE_RULES_OVERRIDE
syn keyword cmake_variable CMAKE_USE_RELATIVE_PATHS
syn keyword cmake_variable CMAKE_VERBOSE_MAKEFILE
syn keyword cmake_variable CMAKE_VERSION
syn keyword cmake_variable CMAKE_VISIBILITY_INLINES_HIDDEN
syn keyword cmake_variable CMAKE_VS_DEVENV_COMMAND
syn keyword cmake_variable CMAKE_VS_INTEL_FORTRAN_PROJECT_VERSION
syn keyword cmake_variable CMAKE_VS_MSBUILD_COMMAND
syn keyword cmake_variable CMAKE_VS_MSDEV_COMMAND
syn keyword cmake_variable CMAKE_VS_NSIGHTTEGRA_VERSION
syn keyword cmake_variable CMAKE_VS_PLATFORM_NAME
syn keyword cmake_variable CMAKE_VS_PLATFORM_TOOLSET
syn keyword cmake_variable CMAKE_WARN_DEPRECATED
syn keyword cmake_variable CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION
syn keyword cmake_variable CMAKE_WIN32_EXECUTABLE
syn keyword cmake_variable CMAKE_XCODE_PLATFORM_TOOLSET
syn keyword cmake_variable CPACK_ABSOLUTE_DESTINATION_FILES
syn keyword cmake_variable CPACK_COMPONENT_INCLUDE_TOPLEVEL_DIRECTORY
syn keyword cmake_variable CPACK_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION
syn keyword cmake_variable CPACK_INCLUDE_TOPLEVEL_DIRECTORY
syn keyword cmake_variable CPACK_INSTALL_SCRIPT
syn keyword cmake_variable CPACK_PACKAGING_INSTALL_PREFIX
syn keyword cmake_variable CPACK_SET_DESTDIR
syn keyword cmake_variable CPACK_WARN_ON_ABSOLUTE_INSTALL_DESTINATION
syn keyword cmake_variable CTEST_BINARY_DIRECTORY
syn keyword cmake_variable CTEST_BUILD_COMMAND
syn keyword cmake_variable CTEST_BUILD_NAME
syn keyword cmake_variable CTEST_BZR_COMMAND
syn keyword cmake_variable CTEST_BZR_UPDATE_OPTIONS
syn keyword cmake_variable CTEST_CHECKOUT_COMMAND
syn keyword cmake_variable CTEST_CONFIGURATION_TYPE
syn keyword cmake_variable CTEST_CONFIGURE_COMMAND
syn keyword cmake_variable CTEST_COVERAGE_COMMAND
syn keyword cmake_variable CTEST_COVERAGE_EXTRA_FLAGS
syn keyword cmake_variable CTEST_CURL_OPTIONS
syn keyword cmake_variable CTEST_CVS_CHECKOUT
syn keyword cmake_variable CTEST_CVS_COMMAND
syn keyword cmake_variable CTEST_CVS_UPDATE_OPTIONS
syn keyword cmake_variable CTEST_DROP_LOCATION
syn keyword cmake_variable CTEST_DROP_METHOD
syn keyword cmake_variable CTEST_DROP_SITE
syn keyword cmake_variable CTEST_DROP_SITE_CDASH
syn keyword cmake_variable CTEST_DROP_SITE_PASSWORD
syn keyword cmake_variable CTEST_DROP_SITE_USER
syn keyword cmake_variable CTEST_GIT_COMMAND
syn keyword cmake_variable CTEST_GIT_UPDATE_CUSTOM
syn keyword cmake_variable CTEST_GIT_UPDATE_OPTIONS
syn keyword cmake_variable CTEST_HG_COMMAND
syn keyword cmake_variable CTEST_HG_UPDATE_OPTIONS
syn keyword cmake_variable CTEST_MEMORYCHECK_COMMAND
syn keyword cmake_variable CTEST_MEMORYCHECK_COMMAND_OPTIONS
syn keyword cmake_variable CTEST_MEMORYCHECK_SANITIZER_OPTIONS
syn keyword cmake_variable CTEST_MEMORYCHECK_SUPPRESSIONS_FILE
syn keyword cmake_variable CTEST_MEMORYCHECK_TYPE
syn keyword cmake_variable CTEST_NIGHTLY_START_TIME
syn keyword cmake_variable CTEST_P4_CLIENT
syn keyword cmake_variable CTEST_P4_COMMAND
syn keyword cmake_variable CTEST_P4_OPTIONS
syn keyword cmake_variable CTEST_P4_UPDATE_OPTIONS
syn keyword cmake_variable CTEST_SCP_COMMAND
syn keyword cmake_variable CTEST_SITE
syn keyword cmake_variable CTEST_SOURCE_DIRECTORY
syn keyword cmake_variable CTEST_SVN_COMMAND
syn keyword cmake_variable CTEST_SVN_OPTIONS
syn keyword cmake_variable CTEST_SVN_UPDATE_OPTIONS
syn keyword cmake_variable CTEST_TEST_TIMEOUT
syn keyword cmake_variable CTEST_TRIGGER_SITE
syn keyword cmake_variable CTEST_UPDATE_COMMAND
syn keyword cmake_variable CTEST_UPDATE_OPTIONS
syn keyword cmake_variable CTEST_UPDATE_VERSION_ONLY
syn keyword cmake_variable CTEST_USE_LAUNCHERS
syn keyword cmake_variable CYGWIN
syn keyword cmake_variable ENV
syn keyword cmake_variable EXECUTABLE_OUTPUT_PATH
syn keyword cmake_variable LIBRARY_OUTPUT_PATH
syn keyword cmake_variable MINGW
syn keyword cmake_variable MSVC
syn keyword cmake_variable MSVC10
syn keyword cmake_variable MSVC11
syn keyword cmake_variable MSVC12
syn keyword cmake_variable MSVC14
syn keyword cmake_variable MSVC60
syn keyword cmake_variable MSVC70
syn keyword cmake_variable MSVC71
syn keyword cmake_variable MSVC80
syn keyword cmake_variable MSVC90
syn keyword cmake_variable MSVC_IDE
syn keyword cmake_variable MSVC_VERSION
syn keyword cmake_variable PROJECT_BINARY_DIR
syn keyword cmake_variable PROJECT_NAME
syn keyword cmake_variable PROJECT_SOURCE_DIR
syn keyword cmake_variable PROJECT_VERSION
syn keyword cmake_variable PROJECT_VERSION_MAJOR
syn keyword cmake_variable PROJECT_VERSION_MINOR
syn keyword cmake_variable PROJECT_VERSION_PATCH
syn keyword cmake_variable PROJECT_VERSION_TWEAK
syn keyword cmake_variable UNIX
syn keyword cmake_variable WIN32
syn keyword cmake_variable WINCE
syn keyword cmake_variable WINDOWS_PHONE
syn keyword cmake_variable WINDOWS_STORE
syn keyword cmake_variable XCODE_VERSION

" CMakePackageConfigHelpers
syn keyword cmake_macro WRITE_BASIC_PACKAGE_VERSION_FILE
syn keyword cmake_macro CONFIGURE_PACKAGE_CONFIG_FILE
syn keyword cmake_macro CHECK_REQUIRED_COMPONENTS
syn keyword cmake_macro SET_AND_CHECK

" CMakeDependentOption
syn keyword cmake_macro CMAKE_DEPENDENT_OPTION

" CheckIncludeFile
syn keyword cmake_macro CHECK_INCLUDE_FILE

" CheckIncludeFileCXX
syn keyword cmake_macro CHECK_INCLUDE_FILE_CXX

" CheckCXXCompilerFlag
syn keyword cmake_macro CHECK_CXX_COMPILER_FLAG

" ExternalProject
syn keyword cmake_function ExternalProject_Add

hi def link cmake_statement Statement
hi def link cmake_constant Constant
hi def link cmake_function PreProc
hi def link cmake_comment Comment
hi def link cmake_macro PreProc