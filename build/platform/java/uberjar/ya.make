RESOURCES_LIBRARY()

IF(USE_SYSTEM_UBERJAR)
    MESSAGE(WARNING System uberjar $USE_SYSTEM_UBERJAR will be used)
ELSEIF(JDK_VERSION == "15")
    DECLARE_EXTERNAL_RESOURCE(UBERJAR sbr:2074702997)
ELSEIF(JDK_VERSION == "14")
    DECLARE_EXTERNAL_RESOURCE(UBERJAR sbr:1407329657)
ELSEIF(JDK_VERSION == "13")
    DECLARE_EXTERNAL_RESOURCE(UBERJAR sbr:1165818979)
ELSEIF(JDK_VERSION == "12")
    DECLARE_EXTERNAL_RESOURCE(UBERJAR sbr:962498940)
ELSEIF(JDK_VERSION == "11")
    DECLARE_EXTERNAL_RESOURCE(UBERJAR sbr:962498940)
ELSEIF(JDK_VERSION == "10" OR JDK10) # !JDK10 flag is deprecated, this check should be removed later
    DECLARE_EXTERNAL_RESOURCE(UBERJAR sbr:720309903)
ELSEIF(JDK_VERSION == "8")
    DECLARE_EXTERNAL_RESOURCE(UBERJAR sbr:962511340)
ELSE()
    MESSAGE(FATAL_ERROR Uberjar is not supported for selected JDK version)
ENDIF()
END()
