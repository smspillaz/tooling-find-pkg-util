# /tests/CheckAndReportToolVersionTooLow.cmake
# Check tool version, the actual version will be lower than requested
#
# See LICENCE.md for Copyright information.

include (${POLYSQUARE_FP_TOOLING_CMAKE_DIRECTORY}/ToolingFindPackageUtil.cmake)
include (${POLYSQUARE_FP_TOOLING_CMAKE_TESTS_DIRECTORY}/CMakeUnit.cmake)

set (PREFIX_FIND_VERSION ${CUSTOM_EXECUTABLE_HIGHER_VERSION})
psq_check_and_report_tool_version (PREFIX 
                                   ${CUSTOM_EXECUTABLE_LOWER_VERSION}
                                   SUCCESS)

assert_false (${SUCCESS})