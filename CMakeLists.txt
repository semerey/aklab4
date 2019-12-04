ADD_LIBRARY( AnyaLib STATIC
             calculator.cpp )


# CMake instructions to test using the static lib

SET( APP_EXE AnyaExe.exe )

ADD_EXECUTABLE( ${APP_EXE}
                calculator.cpp )

TARGET_LINK_LIBRARIES( ${APP_EXE}
                       AnyaLib )
