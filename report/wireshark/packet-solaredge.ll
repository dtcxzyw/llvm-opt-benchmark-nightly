Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-solaredge?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.384 = private unnamed_addr constant [26 x i8] c"JUPMNGR_READ_JUPPWR_MEAS3\00", align 1
@.str.385 = private unnamed_addr constant [26 x i8] c"JUPMNGR_READ_JUPPWR_MEAS4\00", align 1
@.str.386 = private unnamed_addr constant [26 x i8] c"JUPMNGR_READ_JUPPWR_MEAS5\00", align 1
@.str.387 = private unnamed_addr constant [18 x i8] c"JUPMNGR_READ_MEAS\00", align 1
@.str.388 = private unnamed_addr constant [23 x i8] c"JUPMNGR_GET_SYS_STATUS\00", align 1
@.str.389 = private unnamed_addr constant [18 x i8] c"JUPMNGR_GET_TELEM\00", align 1
@.str.390 = private unnamed_addr constant [25 x i8] c"JUPMNGR_GET_COUNTRY_CODE\00", align 1
@.str.391 = private unnamed_addr constant [20 x i8] c"JUPMNGR_SET_COUNTRY\00", align 1
@.str.392 = private unnamed_addr constant [29 x i8] c"JUPMNGR_GET_COUNTRY_DEFAULTS\00", align 1
@.str.393 = private unnamed_addr constant [24 x i8] c"JUPMNGR_PRIVILEGED_MODE\00", align 1
@.str.394 = private unnamed_addr constant [29 x i8] c"JUPMNGR_PRIVILEGED_SET_PARAM\00", align 1
@.str.395 = private unnamed_addr constant [29 x i8] c"JUPMNGR_PRIVILEGED_GET_EVENT\00", align 1
@.str.396 = private unnamed_addr constant [30 x i8] c"JUPMNGR_PRIVILEGED_GET_STATUS\00", align 1
@.str.397 = private unnamed_addr constant [26 x i8] c"JUPMNGR_SET_PRODUCT_MODEL\00", align 1
@.str.398 = private unnamed_addr constant [26 x i8] c"JUPMNGR_GET_PRODUCT_MODEL\00", align 1
@.str.399 = private unnamed_addr constant [33 x i8] c"JUPMNGR_DYNAMIC_SET_INVPWR_PARAM\00", align 1
@.str.400 = private unnamed_addr constant [30 x i8] c"JUPMNGR_GET_INVPWR_PARAM_TYPE\00", align 1
@.str.401 = private unnamed_addr constant [24 x i8] c"JUPMNGR_GET_FANS_STATUS\00", align 1
@.str.402 = private unnamed_addr constant [31 x i8] c"RESP_JUPMNGR_READ_JUPPWR_MEAS1\00", align 1
@.str.403 = private unnamed_addr constant [31 x i8] c"RESP_JUPMNGR_READ_JUPPWR_MEAS2\00", align 1
@.str.404 = private unnamed_addr constant [31 x i8] c"RESP_JUPMNGR_READ_JUPPWR_MEAS3\00", align 1
@.str.405 = private unnamed_addr constant [31 x i8] c"RESP_JUPMNGR_READ_JUPPWR_MEAS4\00", align 1
@.str.406 = private unnamed_addr constant [31 x i8] c"RESP_JUPMNGR_READ_JUPPWR_MEAS5\00", align 1
@.str.407 = private unnamed_addr constant [23 x i8] c"RESP_JUPMNGR_READ_MEAS\00", align 1
@.str.408 = private unnamed_addr constant [28 x i8] c"RESP_JUPMNGR_GET_SYS_STATUS\00", align 1
@.str.409 = private unnamed_addr constant [23 x i8] c"RESP_JUPMNGR_GET_TELEM\00", align 1
@.str.410 = private unnamed_addr constant [30 x i8] c"RESP_JUPMNGR_GET_COUNTRY_CODE\00", align 1
@.str.411 = private unnamed_addr constant [34 x i8] c"RESP_JUPMNGR_GET_COUNTRY_DEFAULTS\00", align 1
@.str.412 = private unnamed_addr constant [34 x i8] c"RESP_JUPMNGR_PRIVILEGED_GET_EVENT\00", align 1
@.str.413 = private unnamed_addr constant [35 x i8] c"RESP_JUPMNGR_PRIVILEGED_GET_STATUS\00", align 1
@.str.414 = private unnamed_addr constant [31 x i8] c"RESP_JUPMNGR_GET_PRODUCT_MODEL\00", align 1
@.str.415 = private unnamed_addr constant [35 x i8] c"RESP_JUPMNGR_GET_INVPWR_PARAM_TYPE\00", align 1
@.str.416 = private unnamed_addr constant [29 x i8] c"RESP_JUPMNGR_GET_FANS_STATUS\00", align 1
@.str.417 = private unnamed_addr constant [21 x i8] c"INVERTER_TURN_15V_ON\00", align 1
@.str.418 = private unnamed_addr constant [22 x i8] c"INVERTER_TURN_15V_OFF\00", align 1
@.str.419 = private unnamed_addr constant [23 x i8] c"INVERTER_ENABLE_RELAYS\00", align 1
@.str.420 = private unnamed_addr constant [24 x i8] c"INVERTER_DISABLE_RELAYS\00", align 1
@.str.421 = private unnamed_addr constant [29 x i8] c"INVERTER_DYNAMIC_POWER_LIMIT\00", align 1
@.str.422 = private unnamed_addr constant [23 x i8] c"INVERTER_IVTRACE_START\00", align 1
@.str.423 = private unnamed_addr constant [24 x i8] c"INVERTER_GRID_TRIP_TEST\00", align 1
@.str.424 = private unnamed_addr constant [27 x i8] c"INVERTER_SET_LMVGC_PARAMS1\00", align 1
@.str.425 = private unnamed_addr constant [27 x i8] c"INVERTER_GET_LMVGC_PARAMS1\00", align 1
@.str.426 = private unnamed_addr constant [29 x i8] c"INVERTER_SET_PWR_GAIN_PARAMS\00", align 1
@.str.427 = private unnamed_addr constant [27 x i8] c"INVERTER_SET_LMVGC_PARAMS2\00", align 1
@.str.428 = private unnamed_addr constant [27 x i8] c"INVERTER_GET_LMVGC_PARAMS2\00", align 1
@.str.429 = private unnamed_addr constant [27 x i8] c"INVERTER_SET_LMVGC_PARAMS3\00", align 1
@.str.430 = private unnamed_addr constant [27 x i8] c"INVERTER_GET_LMVGC_PARAMS3\00", align 1
@.str.431 = private unnamed_addr constant [17 x i8] c"INVERTER_LOCK_IN\00", align 1
@.str.432 = private unnamed_addr constant [18 x i8] c"INVERTER_LOCK_OUT\00", align 1
@.str.433 = private unnamed_addr constant [17 x i8] c"INVERTER_GET_VDC\00", align 1
@.str.434 = private unnamed_addr constant [28 x i8] c"INVERTER_PAIRING_DO_NOTHING\00", align 1
@.str.435 = private unnamed_addr constant [27 x i8] c"INVERTER_PAIRING_DO_SAFETY\00", align 1
@.str.436 = private unnamed_addr constant [34 x i8] c"RESP_INVERTER_DYNAMIC_POWER_LIMIT\00", align 1
@.str.437 = private unnamed_addr constant [31 x i8] c"RESP_INVERTER_GET_LMVGC_PARAMS\00", align 1
@.str.438 = private unnamed_addr constant [15 x i8] c"VEGA_READ_MEAS\00", align 1
@.str.439 = private unnamed_addr constant [20 x i8] c"VEGA_GET_SYS_STATUS\00", align 1
@.str.440 = private unnamed_addr constant [15 x i8] c"VEGA_GET_TELEM\00", align 1
@.str.441 = private unnamed_addr constant [23 x i8] c"VEGA_GET_MAX_VDC_VALUE\00", align 1
@.str.442 = private unnamed_addr constant [23 x i8] c"VEGA_SET_MAX_VDC_VALUE\00", align 1
@.str.443 = private unnamed_addr constant [15 x i8] c"VEGA_RELAY_SET\00", align 1
@.str.444 = private unnamed_addr constant [16 x i8] c"VEGA_SET_OPMODE\00", align 1
@.str.445 = private unnamed_addr constant [16 x i8] c"VEGA_GET_OPMODE\00", align 1
@.str.446 = private unnamed_addr constant [15 x i8] c"VEGA_SET_RANGE\00", align 1
@.str.447 = private unnamed_addr constant [20 x i8] c"RESP_VEGA_READ_MEAS\00", align 1
@.str.448 = private unnamed_addr constant [25 x i8] c"RESP_VEGA_GET_SYS_STATUS\00", align 1
@.str.449 = private unnamed_addr constant [20 x i8] c"RESP_VEGA_GET_TELEM\00", align 1
@.str.450 = private unnamed_addr constant [28 x i8] c"RESP_VEGA_GET_MAX_VDC_VALUE\00", align 1
@.str.451 = private unnamed_addr constant [23 x i8] c"COMBI_PAUSE_MONITORING\00", align 1
@.str.452 = private unnamed_addr constant [21 x i8] c"COMBI_SET_TIME_STAMP\00", align 1
@.str.453 = private unnamed_addr constant [22 x i8] c"COMBI_RCD_CALIBRATION\00", align 1
@.str.454 = private unnamed_addr constant [16 x i8] c"COMBI_GET_TELEM\00", align 1
@.str.455 = private unnamed_addr constant [18 x i8] c"COMBI_FORCE_TELEM\00", align 1
@.str.456 = private unnamed_addr constant [23 x i8] c"COMBI_SWITCHES_CONNECT\00", align 1
@.str.457 = private unnamed_addr constant [26 x i8] c"COMBI_SWITCHES_DISCONNECT\00", align 1
@.str.458 = private unnamed_addr constant [27 x i8] c"COMBI_SWITCHES_CONNECT_ALL\00", align 1
@.str.459 = private unnamed_addr constant [30 x i8] c"COMBI_SWITCHES_DISCONNECT_ALL\00", align 1
@.str.460 = private unnamed_addr constant [23 x i8] c"COMBI_RCD_TEST_EXECUTE\00", align 1
@.str.461 = private unnamed_addr constant [26 x i8] c"COMBI_RELAYS_TEST_EXECUTE\00", align 1
@.str.462 = private unnamed_addr constant [28 x i8] c"COMBI_GET_COMBISTRING_PARAM\00", align 1
@.str.463 = private unnamed_addr constant [28 x i8] c"COMBI_SET_COMBISTRING_PARAM\00", align 1
@.str.464 = private unnamed_addr constant [33 x i8] c"COMBI_GET_ALL_COMBISTRING_PARAMS\00", align 1
@.str.465 = private unnamed_addr constant [27 x i8] c"COMBI_GET_ALL_COMBI_PARAMS\00", align 1
@.str.466 = private unnamed_addr constant [24 x i8] c"COMBI_READ_MEASUREMENTS\00", align 1
@.str.467 = private unnamed_addr constant [24 x i8] c"COMBI_GET_STRING_STATUS\00", align 1
@.str.468 = private unnamed_addr constant [23 x i8] c"COMBI_GET_COMBI_STATUS\00", align 1
@.str.469 = private unnamed_addr constant [25 x i8] c"COMBI_GET_ACTIVE_STRINGS\00", align 1
@.str.470 = private unnamed_addr constant [23 x i8] c"COMBI_FWD_STRING_TELEM\00", align 1
@.str.471 = private unnamed_addr constant [22 x i8] c"COMBI_FWD_COMBI_TELEM\00", align 1
@.str.472 = private unnamed_addr constant [32 x i8] c"COMBI_GET_UNIFIED_STRING_STATUS\00", align 1
@.str.473 = private unnamed_addr constant [31 x i8] c"COMBI_GET_UNIFIED_COMBI_STATUS\00", align 1
@.str.474 = private unnamed_addr constant [27 x i8] c"COMBI_CHECK_INNER_PROTOCOL\00", align 1
@.str.475 = private unnamed_addr constant [29 x i8] c"COMBI_SWITCHES_CONNECT_RELAY\00", align 1
@.str.476 = private unnamed_addr constant [32 x i8] c"COMBI_SWITCHES_DISCONNECT_RELAY\00", align 1
@.str.477 = private unnamed_addr constant [28 x i8] c"COMBI_GET_GEMINI_STRING_IDS\00", align 1
@.str.478 = private unnamed_addr constant [30 x i8] c"COMBI_GET_ALL_SWITCHES_STATUS\00", align 1
@.str.479 = private unnamed_addr constant [23 x i8] c"COMBI_SET_RCD_TEST_PIN\00", align 1
@.str.480 = private unnamed_addr constant [30 x i8] c"COMBI_RELAYS_TEST_CHECK_CONDS\00", align 1
@.str.481 = private unnamed_addr constant [21 x i8] c"RESP_COMBI_GET_TELEM\00", align 1
@.str.482 = private unnamed_addr constant [29 x i8] c"RESP_COMBI_GET_STRING_STATUS\00", align 1
@.str.483 = private unnamed_addr constant [28 x i8] c"RESP_COMBI_GET_COMBI_STATUS\00", align 1
@.str.484 = private unnamed_addr constant [30 x i8] c"RESP_COMBI_GET_ACTIVE_STRINGS\00", align 1
@.str.485 = private unnamed_addr constant [37 x i8] c"RESP_COMBI_GET_UNIFIED_STRING_STATUS\00", align 1
@.str.486 = private unnamed_addr constant [36 x i8] c"RESP_COMBI_GET_UNIFIED_COMBI_STATUS\00", align 1
@.str.487 = private unnamed_addr constant [33 x i8] c"RESP_COMBI_GET_GEMINI_STRING_IDS\00", align 1
@.str.488 = private unnamed_addr constant [24 x i8] c"INVPWR_GET_ERROR_STATUS\00", align 1
@.str.489 = private unnamed_addr constant [18 x i8] c"INVPWR_GET_STATUS\00", align 1
@.str.490 = private unnamed_addr constant [10 x i8] c"INVPWR_GO\00", align 1
@.str.491 = private unnamed_addr constant [12 x i8] c"INVPWR_HALT\00", align 1
@.str.492 = private unnamed_addr constant [24 x i8] c"INVPWR_CONST_DUTY_CYCLE\00", align 1
@.str.493 = private unnamed_addr constant [18 x i8] c"INVPWR_DUMY_ERROR\00", align 1
@.str.494 = private unnamed_addr constant [25 x i8] c"INVPWR_PAIRING_SET_STATE\00", align 1
@.str.495 = private unnamed_addr constant [24 x i8] c"INVPWR_TEST_IAC_CONTROL\00", align 1
@.str.496 = private unnamed_addr constant [29 x i8] c"RESP_INVPWR_GET_ERROR_STATUS\00", align 1
@.str.497 = private unnamed_addr constant [23 x i8] c"RESP_INVPWR_GET_STATUS\00", align 1
@.str.498 = private unnamed_addr constant [15 x i8] c"RESP_INVPWR_GO\00", align 1
@.str.499 = private unnamed_addr constant [17 x i8] c"RESP_INVPWR_HALT\00", align 1
@.str.500 = private unnamed_addr constant [29 x i8] c"RESP_INVPWR_CONST_DUTY_CYCLE\00", align 1
@.str.501 = private unnamed_addr constant [23 x i8] c"RESP_INVPWR_DUMY_ERROR\00", align 1
@.str.502 = private unnamed_addr constant [18 x i8] c"BOOTLOADER_SECURE\00", align 1
@.str.503 = private unnamed_addr constant [20 x i8] c"BOOTLOADER_UNSECURE\00", align 1
@.str.504 = private unnamed_addr constant [19 x i8] c"ACTIVATOR_ACTIVATE\00", align 1
@.str.505 = private unnamed_addr constant [26 x i8] c"ACTIVATOR_GET_ADC_SAMPLES\00", align 1
@.str.506 = private unnamed_addr constant [23 x i8] c"ACTIVATOR_SET_VO_RANGE\00", align 1
@.str.507 = private unnamed_addr constant [26 x i8] c"ACTIVATOR_GET_AVG_SAMPLES\00", align 1
@.str.508 = private unnamed_addr constant [18 x i8] c"ACTIVATOR_TX_TEST\00", align 1
@.str.509 = private unnamed_addr constant [19 x i8] c"ACTIVATOR_LCD_TEST\00", align 1
@.str.510 = private unnamed_addr constant [23 x i8] c"ACTIVATOR_BUTTONS_TEST\00", align 1
@.str.511 = private unnamed_addr constant [19 x i8] c"FANCONTROL_SET_PWM\00", align 1
@.str.512 = private unnamed_addr constant [19 x i8] c"FANCONTROL_GET_PWM\00", align 1
@.str.513 = private unnamed_addr constant [23 x i8] c"FANCONTROL_GET_ALL_PWM\00", align 1
@.str.514 = private unnamed_addr constant [24 x i8] c"FANCONTROL_SHUT_ALL_PWM\00", align 1
@.str.515 = private unnamed_addr constant [15 x i8] c"FANCONTROL_RES\00", align 1
@.str.516 = private unnamed_addr constant [24 x i8] c"DISPLAY_BOARD_LCD_WRITE\00", align 1
@.str.517 = private unnamed_addr constant [22 x i8] c"DISPLAY_BOARD_LED_SET\00", align 1
@solaredge_packet_commandtypes = internal constant [421 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.98 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.99 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.100 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.101 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.102 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.103 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.104 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.105 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.106 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.107 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.108 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.109 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.110 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.111 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.113 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.115 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.116 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.117 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.118 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.119 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.120 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.121 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.123 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.125 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.126 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.127 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.128 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.129 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.130 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.131 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.134 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.135 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } { i32 144, [4 x i8] zeroinitializer, ptr @.str.137 }, { i32, [4 x i8], ptr } { i32 145, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } { i32 146, [4 x i8] zeroinitializer, ptr @.str.139 }, { i32, [4 x i8], ptr } { i32 147, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } { i32 148, [4 x i8] zeroinitializer, ptr @.str.141 }, { i32, [4 x i8], ptr } { i32 149, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 160, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 161, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 176, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 177, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } { i32 178, [4 x i8] zeroinitializer, ptr @.str.147 }, { i32, [4 x i8], ptr } { i32 179, [4 x i8] zeroinitializer, ptr @.str.148 }, { i32, [4 x i8], ptr } { i32 180, [4 x i8] zeroinitializer, ptr @.str.149 }, { i32, [4 x i8], ptr } { i32 256, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } { i32 257, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } { i32 258, [4 x i8] zeroinitializer, ptr @.str.152 }, { i32, [4 x i8], ptr } { i32 259, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 260, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 261, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } { i32 262, [4 x i8] zeroinitializer, ptr @.str.156 }, { i32, [4 x i8], ptr } { i32 263, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 264, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 265, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } { i32 266, [4 x i8] zeroinitializer, ptr @.str.160 }, { i32, [4 x i8], ptr } { i32 267, [4 x i8] zeroinitializer, ptr @.str.161 }, { i32, [4 x i8], ptr } { i32 268, [4 x i8] zeroinitializer, ptr @.str.162 }, { i32, [4 x i8], ptr } { i32 269, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 270, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 271, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } { i32 272, [4 x i8] zeroinitializer, ptr @.str.166 }, { i32, [4 x i8], ptr } { i32 273, [4 x i8] zeroinitializer, ptr @.str.167 }, { i32, [4 x i8], ptr } { i32 274, [4 x i8] zeroinitializer, ptr @.str.168 }, { i32, [4 x i8], ptr } { i32 275, [4 x i8] zeroinitializer, ptr @.str.169 }, { i32, [4 x i8], ptr } { i32 276, [4 x i8] zeroinitializer, ptr @.str.170 }, { i32, [4 x i8], ptr } { i32 277, [4 x i8] zeroinitializer, ptr @.str.171 }, { i32, [4 x i8], ptr } { i32 278, [4 x i8] zeroinitializer, ptr @.str.172 }, { i32, [4 x i8], ptr } { i32 279, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 280, [4 x i8] zeroinitializer, ptr @.str.174 }, { i32, [4 x i8], ptr } { i32 281, [4 x i8] zeroinitializer, ptr @.str.175 }, { i32, [4 x i8], ptr } { i32 282, [4 x i8] zeroinitializer, ptr @.str.176 }, { i32, [4 x i8], ptr } { i32 283, [4 x i8] zeroinitializer, ptr @.str.177 }, { i32, [4 x i8], ptr } { i32 284, [4 x i8] zeroinitializer, ptr @.str.178 }, { i32, [4 x i8], ptr } { i32 285, [4 x i8] zeroinitializer, ptr @.str.179 }, { i32, [4 x i8], ptr } { i32 286, [4 x i8] zeroinitializer, ptr @.str.180 }, { i32, [4 x i8], ptr } { i32 287, [4 x i8] zeroinitializer, ptr @.str.181 }, { i32, [4 x i8], ptr } { i32 288, [4 x i8] zeroinitializer, ptr @.str.182 }, { i32, [4 x i8], ptr } { i32 289, [4 x i8] zeroinitializer, ptr @.str.183 }, { i32, [4 x i8], ptr } { i32 290, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } { i32 291, [4 x i8] zeroinitializer, ptr @.str.185 }, { i32, [4 x i8], ptr } { i32 292, [4 x i8] zeroinitializer, ptr @.str.186 }, { i32, [4 x i8], ptr } { i32 293, [4 x i8] zeroinitializer, ptr @.str.187 }, { i32, [4 x i8], ptr } { i32 294, [4 x i8] zeroinitializer, ptr @.str.188 }, { i32, [4 x i8], ptr } { i32 295, [4 x i8] zeroinitializer, ptr @.str.189 }, { i32, [4 x i8], ptr } { i32 296, [4 x i8] zeroinitializer, ptr @.str.190 }, { i32, [4 x i8], ptr } { i32 297, [4 x i8] zeroinitializer, ptr @.str.191 }, { i32, [4 x i8], ptr } { i32 298, [4 x i8] zeroinitializer, ptr @.str.192 }, { i32, [4 x i8], ptr } { i32 299, [4 x i8] zeroinitializer, ptr @.str.193 }, { i32, [4 x i8], ptr } { i32 384, [4 x i8] zeroinitializer, ptr @.str.194 }, { i32, [4 x i8], ptr } { i32 385, [4 x i8] zeroinitializer, ptr @.str.195 }, { i32, [4 x i8], ptr } { i32 386, [4 x i8] zeroinitializer, ptr @.str.196 }, { i32, [4 x i8], ptr } { i32 387, [4 x i8] zeroinitializer, ptr @.str.197 }, { i32, [4 x i8], ptr } { i32 388, [4 x i8] zeroinitializer, ptr @.str.198 }, { i32, [4 x i8], ptr } { i32 389, [4 x i8] zeroinitializer, ptr @.str.199 }, { i32, [4 x i8], ptr } { i32 390, [4 x i8] zeroinitializer, ptr @.str.200 }, { i32, [4 x i8], ptr } { i32 391, [4 x i8] zeroinitializer, ptr @.str.201 }, { i32, [4 x i8], ptr } { i32 392, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 512, [4 x i8] zeroinitializer, ptr @.str.203 }, { i32, [4 x i8], ptr } { i32 513, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 514, [4 x i8] zeroinitializer, ptr @.str.205 }, { i32, [4 x i8], ptr } { i32 515, [4 x i8] zeroinitializer, ptr @.str.206 }, { i32, [4 x i8], ptr } { i32 516, [4 x i8] zeroinitializer, ptr @.str.207 }, { i32, [4 x i8], ptr } { i32 517, [4 x i8] zeroinitializer, ptr @.str.208 }, { i32, [4 x i8], ptr } { i32 518, [4 x i8] zeroinitializer, ptr @.str.209 }, { i32, [4 x i8], ptr } { i32 519, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 520, [4 x i8] zeroinitializer, ptr @.str.211 }, { i32, [4 x i8], ptr } { i32 521, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } { i32 522, [4 x i8] zeroinitializer, ptr @.str.213 }, { i32, [4 x i8], ptr } { i32 523, [4 x i8] zeroinitializer, ptr @.str.214 }, { i32, [4 x i8], ptr } { i32 524, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 525, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 526, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 527, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 528, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 529, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 530, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 531, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 532, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 533, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } { i32 534, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 535, [4 x i8] zeroinitializer, ptr @.str.226 }, { i32, [4 x i8], ptr } { i32 536, [4 x i8] zeroinitializer, ptr @.str.227 }, { i32, [4 x i8], ptr } { i32 537, [4 x i8] zeroinitializer, ptr @.str.228 }, { i32, [4 x i8], ptr } { i32 538, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 539, [4 x i8] zeroinitializer, ptr @.str.230 }, { i32, [4 x i8], ptr } { i32 540, [4 x i8] zeroinitializer, ptr @.str.231 }, { i32, [4 x i8], ptr } { i32 541, [4 x i8] zeroinitializer, ptr @.str.232 }, { i32, [4 x i8], ptr } { i32 542, [4 x i8] zeroinitializer, ptr @.str.233 }, { i32, [4 x i8], ptr } { i32 543, [4 x i8] zeroinitializer, ptr @.str.234 }, { i32, [4 x i8], ptr } { i32 544, [4 x i8] zeroinitializer, ptr @.str.235 }, { i32, [4 x i8], ptr } { i32 545, [4 x i8] zeroinitializer, ptr @.str.236 }, { i32, [4 x i8], ptr } { i32 546, [4 x i8] zeroinitializer, ptr @.str.237 }, { i32, [4 x i8], ptr } { i32 547, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 548, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } { i32 549, [4 x i8] zeroinitializer, ptr @.str.240 }, { i32, [4 x i8], ptr } { i32 640, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } { i32 641, [4 x i8] zeroinitializer, ptr @.str.242 }, { i32, [4 x i8], ptr } { i32 642, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } { i32 643, [4 x i8] zeroinitializer, ptr @.str.244 }, { i32, [4 x i8], ptr } { i32 644, [4 x i8] zeroinitializer, ptr @.str.245 }, { i32, [4 x i8], ptr } { i32 645, [4 x i8] zeroinitializer, ptr @.str.246 }, { i32, [4 x i8], ptr } { i32 646, [4 x i8] zeroinitializer, ptr @.str.247 }, { i32, [4 x i8], ptr } { i32 647, [4 x i8] zeroinitializer, ptr @.str.248 }, { i32, [4 x i8], ptr } { i32 648, [4 x i8] zeroinitializer, ptr @.str.249 }, { i32, [4 x i8], ptr } { i32 649, [4 x i8] zeroinitializer, ptr @.str.250 }, { i32, [4 x i8], ptr } { i32 650, [4 x i8] zeroinitializer, ptr @.str.251 }, { i32, [4 x i8], ptr } { i32 651, [4 x i8] zeroinitializer, ptr @.str.252 }, { i32, [4 x i8], ptr } { i32 652, [4 x i8] zeroinitializer, ptr @.str.253 }, { i32, [4 x i8], ptr } { i32 653, [4 x i8] zeroinitializer, ptr @.str.254 }, { i32, [4 x i8], ptr } { i32 768, [4 x i8] zeroinitializer, ptr @.str.255 }, { i32, [4 x i8], ptr } { i32 769, [4 x i8] zeroinitializer, ptr @.str.256 }, { i32, [4 x i8], ptr } { i32 770, [4 x i8] zeroinitializer, ptr @.str.257 }, { i32, [4 x i8], ptr } { i32 771, [4 x i8] zeroinitializer, ptr @.str.258 }, { i32, [4 x i8], ptr } { i32 772, [4 x i8] zeroinitializer, ptr @.str.259 }, { i32, [4 x i8], ptr } { i32 773, [4 x i8] zeroinitializer, ptr @.str.260 }, { i32, [4 x i8], ptr } { i32 774, [4 x i8] zeroinitializer, ptr @.str.261 }, { i32, [4 x i8], ptr } { i32 775, [4 x i8] zeroinitializer, ptr @.str.262 }, { i32, [4 x i8], ptr } { i32 776, [4 x i8] zeroinitializer, ptr @.str.263 }, { i32, [4 x i8], ptr } { i32 777, [4 x i8] zeroinitializer, ptr @.str.264 }, { i32, [4 x i8], ptr } { i32 778, [4 x i8] zeroinitializer, ptr @.str.265 }, { i32, [4 x i8], ptr } { i32 779, [4 x i8] zeroinitializer, ptr @.str.266 }, { i32, [4 x i8], ptr } { i32 780, [4 x i8] zeroinitializer, ptr @.str.267 }, { i32, [4 x i8], ptr } { i32 781, [4 x i8] zeroinitializer, ptr @.str.268 }, { i32, [4 x i8], ptr } { i32 782, [4 x i8] zeroinitializer, ptr @.str.269 }, { i32, [4 x i8], ptr } { i32 783, [4 x i8] zeroinitializer, ptr @.str.270 }, { i32, [4 x i8], ptr } { i32 784, [4 x i8] zeroinitializer, ptr @.str.271 }, { i32, [4 x i8], ptr } { i32 785, [4 x i8] zeroinitializer, ptr @.str.272 }, { i32, [4 x i8], ptr } { i32 786, [4 x i8] zeroinitializer, ptr @.str.273 }, { i32, [4 x i8], ptr } { i32 787, [4 x i8] zeroinitializer, ptr @.str.274 }, { i32, [4 x i8], ptr } { i32 788, [4 x i8] zeroinitializer, ptr @.str.275 }, { i32, [4 x i8], ptr } { i32 789, [4 x i8] zeroinitializer, ptr @.str.276 }, { i32, [4 x i8], ptr } { i32 790, [4 x i8] zeroinitializer, ptr @.str.277 }, { i32, [4 x i8], ptr } { i32 791, [4 x i8] zeroinitializer, ptr @.str.278 }, { i32, [4 x i8], ptr } { i32 792, [4 x i8] zeroinitializer, ptr @.str.279 }, { i32, [4 x i8], ptr } { i32 793, [4 x i8] zeroinitializer, ptr @.str.280 }, { i32, [4 x i8], ptr } { i32 794, [4 x i8] zeroinitializer, ptr @.str.281 }, { i32, [4 x i8], ptr } { i32 795, [4 x i8] zeroinitializer, ptr @.str.282 }, { i32, [4 x i8], ptr } { i32 796, [4 x i8] zeroinitializer, ptr @.str.283 }, { i32, [4 x i8], ptr } { i32 797, [4 x i8] zeroinitializer, ptr @.str.284 }, { i32, [4 x i8], ptr } { i32 798, [4 x i8] zeroinitializer, ptr @.str.285 }, { i32, [4 x i8], ptr } { i32 799, [4 x i8] zeroinitializer, ptr @.str.286 }, { i32, [4 x i8], ptr } { i32 800, [4 x i8] zeroinitializer, ptr @.str.287 }, { i32, [4 x i8], ptr } { i32 801, [4 x i8] zeroinitializer, ptr @.str.288 }, { i32, [4 x i8], ptr } { i32 802, [4 x i8] zeroinitializer, ptr @.str.289 }, { i32, [4 x i8], ptr } { i32 803, [4 x i8] zeroinitializer, ptr @.str.290 }, { i32, [4 x i8], ptr } { i32 804, [4 x i8] zeroinitializer, ptr @.str.291 }, { i32, [4 x i8], ptr } { i32 805, [4 x i8] zeroinitializer, ptr @.str.292 }, { i32, [4 x i8], ptr } { i32 806, [4 x i8] zeroinitializer, ptr @.str.293 }, { i32, [4 x i8], ptr } { i32 807, [4 x i8] zeroinitializer, ptr @.str.294 }, { i32, [4 x i8], ptr } { i32 808, [4 x i8] zeroinitializer, ptr @.str.295 }, { i32, [4 x i8], ptr } { i32 809, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 810, [4 x i8] zeroinitializer, ptr @.str.297 }, { i32, [4 x i8], ptr } { i32 811, [4 x i8] zeroinitializer, ptr @.str.298 }, { i32, [4 x i8], ptr } { i32 812, [4 x i8] zeroinitializer, ptr @.str.299 }, { i32, [4 x i8], ptr } { i32 813, [4 x i8] zeroinitializer, ptr @.str.300 }, { i32, [4 x i8], ptr } { i32 814, [4 x i8] zeroinitializer, ptr @.str.301 }, { i32, [4 x i8], ptr } { i32 815, [4 x i8] zeroinitializer, ptr @.str.302 }, { i32, [4 x i8], ptr } { i32 816, [4 x i8] zeroinitializer, ptr @.str.303 }, { i32, [4 x i8], ptr } { i32 817, [4 x i8] zeroinitializer, ptr @.str.304 }, { i32, [4 x i8], ptr } { i32 818, [4 x i8] zeroinitializer, ptr @.str.305 }, { i32, [4 x i8], ptr } { i32 819, [4 x i8] zeroinitializer, ptr @.str.306 }, { i32, [4 x i8], ptr } { i32 820, [4 x i8] zeroinitializer, ptr @.str.307 }, { i32, [4 x i8], ptr } { i32 821, [4 x i8] zeroinitializer, ptr @.str.308 }, { i32, [4 x i8], ptr } { i32 822, [4 x i8] zeroinitializer, ptr @.str.309 }, { i32, [4 x i8], ptr } { i32 823, [4 x i8] zeroinitializer, ptr @.str.310 }, { i32, [4 x i8], ptr } { i32 824, [4 x i8] zeroinitializer, ptr @.str.311 }, { i32, [4 x i8], ptr } { i32 825, [4 x i8] zeroinitializer, ptr @.str.312 }, { i32, [4 x i8], ptr } { i32 826, [4 x i8] zeroinitializer, ptr @.str.313 }, { i32, [4 x i8], ptr } { i32 827, [4 x i8] zeroinitializer, ptr @.str.314 }, { i32, [4 x i8], ptr } { i32 828, [4 x i8] zeroinitializer, ptr @.str.315 }, { i32, [4 x i8], ptr } { i32 829, [4 x i8] zeroinitializer, ptr @.str.316 }, { i32, [4 x i8], ptr } { i32 830, [4 x i8] zeroinitializer, ptr @.str.317 }, { i32, [4 x i8], ptr } { i32 831, [4 x i8] zeroinitializer, ptr @.str.318 }, { i32, [4 x i8], ptr } { i32 832, [4 x i8] zeroinitializer, ptr @.str.319 }, { i32, [4 x i8], ptr } { i32 833, [4 x i8] zeroinitializer, ptr @.str.320 }, { i32, [4 x i8], ptr } { i32 834, [4 x i8] zeroinitializer, ptr @.str.321 }, { i32, [4 x i8], ptr } { i32 835, [4 x i8] zeroinitializer, ptr @.str.322 }, { i32, [4 x i8], ptr } { i32 836, [4 x i8] zeroinitializer, ptr @.str.323 }, { i32, [4 x i8], ptr } { i32 837, [4 x i8] zeroinitializer, ptr @.str.324 }, { i32, [4 x i8], ptr } { i32 838, [4 x i8] zeroinitializer, ptr @.str.325 }, { i32, [4 x i8], ptr } { i32 839, [4 x i8] zeroinitializer, ptr @.str.326 }, { i32, [4 x i8], ptr } { i32 840, [4 x i8] zeroinitializer, ptr @.str.327 }, { i32, [4 x i8], ptr } { i32 841, [4 x i8] zeroinitializer, ptr @.str.328 }, { i32, [4 x i8], ptr } { i32 842, [4 x i8] zeroinitializer, ptr @.str.329 }, { i32, [4 x i8], ptr } { i32 843, [4 x i8] zeroinitializer, ptr @.str.330 }, { i32, [4 x i8], ptr } { i32 844, [4 x i8] zeroinitializer, ptr @.str.331 }, { i32, [4 x i8], ptr } { i32 845, [4 x i8] zeroinitializer, ptr @.str.332 }, { i32, [4 x i8], ptr } { i32 846, [4 x i8] zeroinitializer, ptr @.str.333 }, { i32, [4 x i8], ptr } { i32 896, [4 x i8] zeroinitializer, ptr @.str.334 }, { i32, [4 x i8], ptr } { i32 897, [4 x i8] zeroinitializer, ptr @.str.335 }, { i32, [4 x i8], ptr } { i32 898, [4 x i8] zeroinitializer, ptr @.str.336 }, { i32, [4 x i8], ptr } { i32 899, [4 x i8] zeroinitializer, ptr @.str.337 }, { i32, [4 x i8], ptr } { i32 900, [4 x i8] zeroinitializer, ptr @.str.338 }, { i32, [4 x i8], ptr } { i32 901, [4 x i8] zeroinitializer, ptr @.str.339 }, { i32, [4 x i8], ptr } { i32 902, [4 x i8] zeroinitializer, ptr @.str.340 }, { i32, [4 x i8], ptr } { i32 903, [4 x i8] zeroinitializer, ptr @.str.341 }, { i32, [4 x i8], ptr } { i32 904, [4 x i8] zeroinitializer, ptr @.str.342 }, { i32, [4 x i8], ptr } { i32 905, [4 x i8] zeroinitializer, ptr @.str.343 }, { i32, [4 x i8], ptr } { i32 906, [4 x i8] zeroinitializer, ptr @.str.344 }, { i32, [4 x i8], ptr } { i32 907, [4 x i8] zeroinitializer, ptr @.str.345 }, { i32, [4 x i8], ptr } { i32 908, [4 x i8] zeroinitializer, ptr @.str.346 }, { i32, [4 x i8], ptr } { i32 909, [4 x i8] zeroinitializer, ptr @.str.347 }, { i32, [4 x i8], ptr } { i32 910, [4 x i8] zeroinitializer, ptr @.str.348 }, { i32, [4 x i8], ptr } { i32 911, [4 x i8] zeroinitializer, ptr @.str.349 }, { i32, [4 x i8], ptr } { i32 912, [4 x i8] zeroinitializer, ptr @.str.350 }, { i32, [4 x i8], ptr } { i32 913, [4 x i8] zeroinitializer, ptr @.str.351 }, { i32, [4 x i8], ptr } { i32 914, [4 x i8] zeroinitializer, ptr @.str.352 }, { i32, [4 x i8], ptr } { i32 915, [4 x i8] zeroinitializer, ptr @.str.353 }, { i32, [4 x i8], ptr } { i32 916, [4 x i8] zeroinitializer, ptr @.str.354 }, { i32, [4 x i8], ptr } { i32 917, [4 x i8] zeroinitializer, ptr @.str.355 }, { i32, [4 x i8], ptr } { i32 918, [4 x i8] zeroinitializer, ptr @.str.356 }, { i32, [4 x i8], ptr } { i32 919, [4 x i8] zeroinitializer, ptr @.str.357 }, { i32, [4 x i8], ptr } { i32 920, [4 x i8] zeroinitializer, ptr @.str.358 }, { i32, [4 x i8], ptr } { i32 921, [4 x i8] zeroinitializer, ptr @.str.359 }, { i32, [4 x i8], ptr } { i32 922, [4 x i8] zeroinitializer, ptr @.str.360 }, { i32, [4 x i8], ptr } { i32 923, [4 x i8] zeroinitializer, ptr @.str.361 }, { i32, [4 x i8], ptr } { i32 924, [4 x i8] zeroinitializer, ptr @.str.362 }, { i32, [4 x i8], ptr } { i32 925, [4 x i8] zeroinitializer, ptr @.str.363 }, { i32, [4 x i8], ptr } { i32 926, [4 x i8] zeroinitializer, ptr @.str.364 }, { i32, [4 x i8], ptr } { i32 927, [4 x i8] zeroinitializer, ptr @.str.365 }, { i32, [4 x i8], ptr } { i32 928, [4 x i8] zeroinitializer, ptr @.str.366 }, { i32, [4 x i8], ptr } { i32 929, [4 x i8] zeroinitializer, ptr @.str.367 }, { i32, [4 x i8], ptr } { i32 1024, [4 x i8] zeroinitializer, ptr @.str.368 }, { i32, [4 x i8], ptr } { i32 1025, [4 x i8] zeroinitializer, ptr @.str.369 }, { i32, [4 x i8], ptr } { i32 1026, [4 x i8] zeroinitializer, ptr @.str.370 }, { i32, [4 x i8], ptr } { i32 1027, [4 x i8] zeroinitializer, ptr @.str.371 }, { i32, [4 x i8], ptr } { i32 1028, [4 x i8] zeroinitializer, ptr @.str.372 }, { i32, [4 x i8], ptr } { i32 1152, [4 x i8] zeroinitializer, ptr @.str.373 }, { i32, [4 x i8], ptr } { i32 1153, [4 x i8] zeroinitializer, ptr @.str.374 }, { i32, [4 x i8], ptr } { i32 1280, [4 x i8] zeroinitializer, ptr @.str.375 }, { i32, [4 x i8], ptr } { i32 1281, [4 x i8] zeroinitializer, ptr @.str.376 }, { i32, [4 x i8], ptr } { i32 1282, [4 x i8] zeroinitializer, ptr @.str.377 }, { i32, [4 x i8], ptr } { i32 1283, [4 x i8] zeroinitializer, ptr @.str.378 }, { i32, [4 x i8], ptr } { i32 1408, [4 x i8] zeroinitializer, ptr @.str.379 }, { i32, [4 x i8], ptr } { i32 1409, [4 x i8] zeroinitializer, ptr @.str.380 }, { i32, [4 x i8], ptr } { i32 1664, [4 x i8] zeroinitializer, ptr @.str.381 }, { i32, [4 x i8], ptr } { i32 2048, [4 x i8] zeroinitializer, ptr @.str.382 }, { i32, [4 x i8], ptr } { i32 2049, [4 x i8] zeroinitializer, ptr @.str.383 }, { i32, [4 x i8], ptr } { i32 2050, [4 x i8] zeroinitializer, ptr @.str.384 }, { i32, [4 x i8], ptr } { i32 2051, [4 x i8] zeroinitializer, ptr @.str.385 }, { i32, [4 x i8], ptr } { i32 2052, [4 x i8] zeroinitializer, ptr @.str.386 }, { i32, [4 x i8], ptr } { i32 2053, [4 x i8] zeroinitializer, ptr @.str.387 }, { i32, [4 x i8], ptr } { i32 2054, [4 x i8] zeroinitializer, ptr @.str.388 }, { i32, [4 x i8], ptr } { i32 2055, [4 x i8] zeroinitializer, ptr @.str.389 }, { i32, [4 x i8], ptr } { i32 2056, [4 x i8] zeroinitializer, ptr @.str.390 }, { i32, [4 x i8], ptr } { i32 2057, [4 x i8] zeroinitializer, ptr @.str.391 }, { i32, [4 x i8], ptr } { i32 2058, [4 x i8] zeroinitializer, ptr @.str.392 }, { i32, [4 x i8], ptr } { i32 2059, [4 x i8] zeroinitializer, ptr @.str.393 }, { i32, [4 x i8], ptr } { i32 2060, [4 x i8] zeroinitializer, ptr @.str.394 }, { i32, [4 x i8], ptr } { i32 2061, [4 x i8] zeroinitializer, ptr @.str.395 }, { i32, [4 x i8], ptr } { i32 2062, [4 x i8] zeroinitializer, ptr @.str.396 }, { i32, [4 x i8], ptr } { i32 2063, [4 x i8] zeroinitializer, ptr @.str.397 }, { i32, [4 x i8], ptr } { i32 2064, [4 x i8] zeroinitializer, ptr @.str.398 }, { i32, [4 x i8], ptr } { i32 2065, [4 x i8] zeroinitializer, ptr @.str.399 }, { i32, [4 x i8], ptr } { i32 2066, [4 x i8] zeroinitializer, ptr @.str.400 }, { i32, [4 x i8], ptr } { i32 2067, [4 x i8] zeroinitializer, ptr @.str.401 }, { i32, [4 x i8], ptr } { i32 2176, [4 x i8] zeroinitializer, ptr @.str.402 }, { i32, [4 x i8], ptr } { i32 2177, [4 x i8] zeroinitializer, ptr @.str.403 }, { i32, [4 x i8], ptr } { i32 2178, [4 x i8] zeroinitializer, ptr @.str.404 }, { i32, [4 x i8], ptr } { i32 2179, [4 x i8] zeroinitializer, ptr @.str.405 }, { i32, [4 x i8], ptr } { i32 2180, [4 x i8] zeroinitializer, ptr @.str.406 }, { i32, [4 x i8], ptr } { i32 2181, [4 x i8] zeroinitializer, ptr @.str.407 }, { i32, [4 x i8], ptr } { i32 2182, [4 x i8] zeroinitializer, ptr @.str.408 }, { i32, [4 x i8], ptr } { i32 2183, [4 x i8] zeroinitializer, ptr @.str.409 }, { i32, [4 x i8], ptr } { i32 2184, [4 x i8] zeroinitializer, ptr @.str.410 }, { i32, [4 x i8], ptr } { i32 2185, [4 x i8] zeroinitializer, ptr @.str.411 }, { i32, [4 x i8], ptr } { i32 2186, [4 x i8] zeroinitializer, ptr @.str.412 }, { i32, [4 x i8], ptr } { i32 2187, [4 x i8] zeroinitializer, ptr @.str.413 }, { i32, [4 x i8], ptr } { i32 2188, [4 x i8] zeroinitializer, ptr @.str.414 }, { i32, [4 x i8], ptr } { i32 2189, [4 x i8] zeroinitializer, ptr @.str.415 }, { i32, [4 x i8], ptr } { i32 2190, [4 x i8] zeroinitializer, ptr @.str.416 }, { i32, [4 x i8], ptr } { i32 2304, [4 x i8] zeroinitializer, ptr @.str.417 }, { i32, [4 x i8], ptr } { i32 2305, [4 x i8] zeroinitializer, ptr @.str.418 }, { i32, [4 x i8], ptr } { i32 2306, [4 x i8] zeroinitializer, ptr @.str.419 }, { i32, [4 x i8], ptr } { i32 2307, [4 x i8] zeroinitializer, ptr @.str.420 }, { i32, [4 x i8], ptr } { i32 2308, [4 x i8] zeroinitializer, ptr @.str.421 }, { i32, [4 x i8], ptr } { i32 2309, [4 x i8] zeroinitializer, ptr @.str.422 }, { i32, [4 x i8], ptr } { i32 2310, [4 x i8] zeroinitializer, ptr @.str.423 }, { i32, [4 x i8], ptr } { i32 2311, [4 x i8] zeroinitializer, ptr @.str.424 }, { i32, [4 x i8], ptr } { i32 2312, [4 x i8] zeroinitializer, ptr @.str.425 }, { i32, [4 x i8], ptr } { i32 2313, [4 x i8] zeroinitializer, ptr @.str.426 }, { i32, [4 x i8], ptr } { i32 2314, [4 x i8] zeroinitializer, ptr @.str.427 }, { i32, [4 x i8], ptr } { i32 2315, [4 x i8] zeroinitializer, ptr @.str.428 }, { i32, [4 x i8], ptr } { i32 2316, [4 x i8] zeroinitializer, ptr @.str.429 }, { i32, [4 x i8], ptr } { i32 2317, [4 x i8] zeroinitializer, ptr @.str.430 }, { i32, [4 x i8], ptr } { i32 2318, [4 x i8] zeroinitializer, ptr @.str.431 }, { i32, [4 x i8], ptr } { i32 2319, [4 x i8] zeroinitializer, ptr @.str.432 }, { i32, [4 x i8], ptr } { i32 2320, [4 x i8] zeroinitializer, ptr @.str.433 }, { i32, [4 x i8], ptr } { i32 2321, [4 x i8] zeroinitializer, ptr @.str.434 }, { i32, [4 x i8], ptr } { i32 2322, [4 x i8] zeroinitializer, ptr @.str.435 }, { i32, [4 x i8], ptr } { i32 2432, [4 x i8] zeroinitializer, ptr @.str.436 }, { i32, [4 x i8], ptr } { i32 2433, [4 x i8] zeroinitializer, ptr @.str.437 }, { i32, [4 x i8], ptr } { i32 2560, [4 x i8] zeroinitializer, ptr @.str.438 }, { i32, [4 x i8], ptr } { i32 2561, [4 x i8] zeroinitializer, ptr @.str.439 }, { i32, [4 x i8], ptr } { i32 2562, [4 x i8] zeroinitializer, ptr @.str.440 }, { i32, [4 x i8], ptr } { i32 2563, [4 x i8] zeroinitializer, ptr @.str.441 }, { i32, [4 x i8], ptr } { i32 2564, [4 x i8] zeroinitializer, ptr @.str.442 }, { i32, [4 x i8], ptr } { i32 2565, [4 x i8] zeroinitializer, ptr @.str.443 }, { i32, [4 x i8], ptr } { i32 2566, [4 x i8] zeroinitializer, ptr @.str.444 }, { i32, [4 x i8], ptr } { i32 2567, [4 x i8] zeroinitializer, ptr @.str.445 }, { i32, [4 x i8], ptr } { i32 2568, [4 x i8] zeroinitializer, ptr @.str.446 }, { i32, [4 x i8], ptr } { i32 2688, [4 x i8] zeroinitializer, ptr @.str.447 }, { i32, [4 x i8], ptr } { i32 2689, [4 x i8] zeroinitializer, ptr @.str.448 }, { i32, [4 x i8], ptr } { i32 2690, [4 x i8] zeroinitializer, ptr @.str.449 }, { i32, [4 x i8], ptr } { i32 2691, [4 x i8] zeroinitializer, ptr @.str.450 }, { i32, [4 x i8], ptr } { i32 2816, [4 x i8] zeroinitializer, ptr @.str.451 }, { i32, [4 x i8], ptr } { i32 2817, [4 x i8] zeroinitializer, ptr @.str.452 }, { i32, [4 x i8], ptr } { i32 2818, [4 x i8] zeroinitializer, ptr @.str.453 }, { i32, [4 x i8], ptr } { i32 2819, [4 x i8] zeroinitializer, ptr @.str.454 }, { i32, [4 x i8], ptr } { i32 2820, [4 x i8] zeroinitializer, ptr @.str.455 }, { i32, [4 x i8], ptr } { i32 2821, [4 x i8] zeroinitializer, ptr @.str.456 }, { i32, [4 x i8], ptr } { i32 2822, [4 x i8] zeroinitializer, ptr @.str.457 }, { i32, [4 x i8], ptr } { i32 2823, [4 x i8] zeroinitializer, ptr @.str.458 }, { i32, [4 x i8], ptr } { i32 2824, [4 x i8] zeroinitializer, ptr @.str.459 }, { i32, [4 x i8], ptr } { i32 2825, [4 x i8] zeroinitializer, ptr @.str.460 }, { i32, [4 x i8], ptr } { i32 2826, [4 x i8] zeroinitializer, ptr @.str.461 }, { i32, [4 x i8], ptr } { i32 2827, [4 x i8] zeroinitializer, ptr @.str.462 }, { i32, [4 x i8], ptr } { i32 2828, [4 x i8] zeroinitializer, ptr @.str.463 }, { i32, [4 x i8], ptr } { i32 2829, [4 x i8] zeroinitializer, ptr @.str.464 }, { i32, [4 x i8], ptr } { i32 2830, [4 x i8] zeroinitializer, ptr @.str.465 }, { i32, [4 x i8], ptr } { i32 2831, [4 x i8] zeroinitializer, ptr @.str.466 }, { i32, [4 x i8], ptr } { i32 2832, [4 x i8] zeroinitializer, ptr @.str.467 }, { i32, [4 x i8], ptr } { i32 2833, [4 x i8] zeroinitializer, ptr @.str.468 }, { i32, [4 x i8], ptr } { i32 2834, [4 x i8] zeroinitializer, ptr @.str.469 }, { i32, [4 x i8], ptr } { i32 2835, [4 x i8] zeroinitializer, ptr @.str.470 }, { i32, [4 x i8], ptr } { i32 2836, [4 x i8] zeroinitializer, ptr @.str.471 }, { i32, [4 x i8], ptr } { i32 2837, [4 x i8] zeroinitializer, ptr @.str.472 }, { i32, [4 x i8], ptr } { i32 2838, [4 x i8] zeroinitializer, ptr @.str.473 }, { i32, [4 x i8], ptr } { i32 2839, [4 x i8] zeroinitializer, ptr @.str.474 }, { i32, [4 x i8], ptr } { i32 2840, [4 x i8] zeroinitializer, ptr @.str.475 }, { i32, [4 x i8], ptr } { i32 2841, [4 x i8] zeroinitializer, ptr @.str.476 }, { i32, [4 x i8], ptr } { i32 2842, [4 x i8] zeroinitializer, ptr @.str.477 }, { i32, [4 x i8], ptr } { i32 2843, [4 x i8] zeroinitializer, ptr @.str.478 }, { i32, [4 x i8], ptr } { i32 2844, [4 x i8] zeroinitializer, ptr @.str.479 }, { i32, [4 x i8], ptr } { i32 2845, [4 x i8] zeroinitializer, ptr @.str.480 }, { i32, [4 x i8], ptr } { i32 2944, [4 x i8] zeroinitializer, ptr @.str.481 }, { i32, [4 x i8], ptr } { i32 2945, [4 x i8] zeroinitializer, ptr @.str.482 }, { i32, [4 x i8], ptr } { i32 2946, [4 x i8] zeroinitializer, ptr @.str.483 }, { i32, [4 x i8], ptr } { i32 2947, [4 x i8] zeroinitializer, ptr @.str.484 }, { i32, [4 x i8], ptr } { i32 2948, [4 x i8] zeroinitializer, ptr @.str.485 }, { i32, [4 x i8], ptr } { i32 2949, [4 x i8] zeroinitializer, ptr @.str.486 }, { i32, [4 x i8], ptr } { i32 2950, [4 x i8] zeroinitializer, ptr @.str.487 }, { i32, [4 x i8], ptr } { i32 3072, [4 x i8] zeroinitializer, ptr @.str.488 }, { i32, [4 x i8], ptr } { i32 3073, [4 x i8] zeroinitializer, ptr @.str.489 }, { i32, [4 x i8], ptr } { i32 3074, [4 x i8] zeroinitializer, ptr @.str.490 }, { i32, [4 x i8], ptr } { i32 3075, [4 x i8] zeroinitializer, ptr @.str.491 }, { i32, [4 x i8], ptr } { i32 3076, [4 x i8] zeroinitializer, ptr @.str.492 }, { i32, [4 x i8], ptr } { i32 3077, [4 x i8] zeroinitializer, ptr @.str.493 }, { i32, [4 x i8], ptr } { i32 3078, [4 x i8] zeroinitializer, ptr @.str.494 }, { i32, [4 x i8], ptr } { i32 3079, [4 x i8] zeroinitializer, ptr @.str.495 }, { i32, [4 x i8], ptr } { i32 3200, [4 x i8] zeroinitializer, ptr @.str.496 }, { i32, [4 x i8], ptr } { i32 3201, [4 x i8] zeroinitializer, ptr @.str.497 }, { i32, [4 x i8], ptr } { i32 3202, [4 x i8] zeroinitializer, ptr @.str.498 }, { i32, [4 x i8], ptr } { i32 3203, [4 x i8] zeroinitializer, ptr @.str.499 }, { i32, [4 x i8], ptr } { i32 3204, [4 x i8] zeroinitializer, ptr @.str.500 }, { i32, [4 x i8], ptr } { i32 3205, [4 x i8] zeroinitializer, ptr @.str.501 }, { i32, [4 x i8], ptr } { i32 5120, [4 x i8] zeroinitializer, ptr @.str.502 }, { i32, [4 x i8], ptr } { i32 5121, [4 x i8] zeroinitializer, ptr @.str.503 }, { i32, [4 x i8], ptr } { i32 5376, [4 x i8] zeroinitializer, ptr @.str.504 }, { i32, [4 x i8], ptr } { i32 5377, [4 x i8] zeroinitializer, ptr @.str.505 }, { i32, [4 x i8], ptr } { i32 5378, [4 x i8] zeroinitializer, ptr @.str.506 }, { i32, [4 x i8], ptr } { i32 5379, [4 x i8] zeroinitializer, ptr @.str.507 }, { i32, [4 x i8], ptr } { i32 5380, [4 x i8] zeroinitializer, ptr @.str.508 }, { i32, [4 x i8], ptr } { i32 5381, [4 x i8] zeroinitializer, ptr @.str.509 }, { i32, [4 x i8], ptr } { i32 5382, [4 x i8] zeroinitializer, ptr @.str.510 }, { i32, [4 x i8], ptr } { i32 5632, [4 x i8] zeroinitializer, ptr @.str.511 }, { i32, [4 x i8], ptr } { i32 5633, [4 x i8] zeroinitializer, ptr @.str.512 }, { i32, [4 x i8], ptr } { i32 5634, [4 x i8] zeroinitializer, ptr @.str.513 }, { i32, [4 x i8], ptr } { i32 5635, [4 x i8] zeroinitializer, ptr @.str.514 }, { i32, [4 x i8], ptr } { i32 5760, [4 x i8] zeroinitializer, ptr @.str.515 }, { i32, [4 x i8], ptr } { i32 5888, [4 x i8] zeroinitializer, ptr @.str.516 }, { i32, [4 x i8], ptr } { i32 5889, [4 x i8] zeroinitializer, ptr @.str.517 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.519 = private unnamed_addr constant [10 x i8] c"Optimizer\00", align 1
@.str.520 = private unnamed_addr constant [22 x i8] c"Single phase inverter\00", align 1
@.str.521 = private unnamed_addr constant [21 x i8] c"Three phase inverter\00", align 1
@.str.522 = private unnamed_addr constant [17 x i8] c"Wake/sleep event\00", align 1
@solaredge_data_devicetypes = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.519 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.520 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.521 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.519 }, { i32, [4 x i8], ptr } { i32 768, [4 x i8] zeroinitializer, ptr @.str.522 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.524 = private unnamed_addr constant [57 x i8] c"Invalid length: inverse length %d not matching length %d\00", align 1
@.str.525 = private unnamed_addr constant [16 x i8] c"Unknown command\00", align 1
@.str.526 = private unnamed_addr constant [17 x i8] c"Decrypted Packet\00", align 1
@.str.527 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.528 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.529 = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@.str.530 = private unnamed_addr constant [3 x i8] c", \00", align 1
@cipher_hd_system = internal global ptr null, align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_solaredge() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @solaredge_handle, align 8
  tail call void @dissector_add_for_decode_as(ptr noundef nonnull @.str, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_solaredge() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) ; 2 uses
  store i32 %i.a, ptr @proto_solaredge, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.91, ptr noundef nonnull @dissect_solaredge, i32 noundef %i.a)
  store ptr %i.b, ptr @solaredge_handle, align 8
  %i.c = load i32, ptr @proto_solaredge, align 4
  %i.d = tail call ptr @prefs_register_protocol(i32 noundef %i.c, ptr noundef null) ; 2 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.d, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @global_show_unknown_fields)
  tail call void @prefs_register_string_preference(ptr noundef %i.d, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef nonnull @global_system_encryption_key)
  %i.e = load i32, ptr @proto_solaredge, align 4
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef nonnull @proto_register_solaredge.hf, i32 noundef 45)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_solaredge.ett, i32 noundef 4)
  %i.f = load i32, ptr @proto_solaredge, align 4
  %i.g = tail call ptr @expert_register_protocol(i32 noundef %i.f)
  tail call void @expert_register_field_array(ptr noundef %i.g, ptr noundef nonnull @proto_register_solaredge.ei, i32 noundef 2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 65558) i32 @dissect_solaredge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @find_or_create_conversation(ptr noundef %1) ; 3 uses
  %i.b = load i32, ptr @proto_solaredge, align 4
  %i.c = tail call ptr @conversation_get_proto_data(ptr noundef %i.a, i32 noundef %i.b)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @wmem_file_scope()
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.e, i64 noundef 24) #7 ; 2 uses
  store i8 0, ptr %i.f, align 8
  %i.g = load i32, ptr @proto_solaredge, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.a, i32 noundef %i.g, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr @ett_solaredge_packet, align 4
  %i.i = tail call fastcc i32 @dissect_solaredge_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.h, ptr noundef %i.a)
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_string_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 65558) i32 @dissect_solaredge_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 6 uses
  %i.g = alloca [16 x i8], align 16               ; 7 uses
  %i.h = alloca [16 x i8], align 16               ; 7 uses
  %i.i = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 0, i32 noundef -2147483648)
  %.not = icmp eq i32 %i.i, 2035692562
  br i1 %.not, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef nonnull @.str.90)
  %i.l = load ptr, ptr %i.j, align 8
  tail call void @col_clear(ptr noundef %i.l, i32 noundef 25)
  %i.m = load i32, ptr @proto_solaredge, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %3) ; 11 uses
  %i.p = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 4, i32 noundef -2147483648) ; 6 uses
  %i.q = load i32, ptr @hf_solaredge_length_type, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.q, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.s = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 6, i32 noundef -2147483648)
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = zext i16 %i.p to i32                     ; 14 uses
  %i.v = xor i32 %i.t, %i.u
  %.not97 = icmp eq i32 %i.v, 65535
  br i1 %.not97, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.o, ptr noundef %1, ptr noundef nonnull @ei_solaredge_invalid_length, ptr noundef %0, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.524, i32 noundef %i.t, i32 noundef %i.u) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load i32, ptr @hf_solaredge_length_inverse_type, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.x, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.z = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 8, i32 noundef -2147483648)
  %i.aa = load i32, ptr @hf_solaredge_sequence_number_type, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.aa, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ac = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 10, i32 noundef -2147483648)
  %i.ad = load i32, ptr @hf_solaredge_source_address_type, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.ad, ptr noundef %0, i32 noundef 10, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.af = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 14, i32 noundef -2147483648)
  %i.ag = load i32, ptr @hf_solaredge_destination_address_type, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.ag, ptr noundef %0, i32 noundef 14, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ai = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 18, i32 noundef -2147483648) ; 3 uses
  %i.aj = load i32, ptr @hf_solaredge_command_type, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.aj, ptr noundef %0, i32 noundef 18, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = zext i16 %i.ai to i32
  %i.an = tail call ptr @val_to_str_const(i32 noundef %i.am, ptr noundef nonnull @solaredge_packet_commandtypes, ptr noundef nonnull @.str.525)
  tail call void @col_append_str(ptr noundef %i.al, i32 noundef 25, ptr noundef %i.an)
  tail call void @increment_dissection_depth(ptr noundef %1)
  switch i16 %i.ai, label %bb.ba [
    i16 61, label %bb.e
    i16 1280, label %bb.l
    i16 1283, label %bb.ao
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr @hf_solaredge_payload_type, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.ao, ptr noundef %0, i32 noundef 20, i32 noundef %i.u, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @proto_solaredge, align 4
  %i.ar = tail call ptr @conversation_get_proto_data(ptr noundef %4, i32 noundef %i.aq) ; 3 uses
  %.not98 = icmp eq ptr %i.ar, null
  br i1 %.not98, label %solaredge_decrypt.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i8, ptr %i.ar, align 8, !range !15, !noundef !16
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %solaredge_decrypt.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %1, i64 416
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 20, i32 noundef %i.u) ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult i16 %i.p, 22
  br i1 %i.az, label %solaredge_decrypt.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.ba = add nsw i32 %i.u, -16
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bd = tail call ptr @wmem_memdup(ptr noundef %i.av, ptr noundef %i.bb, i64 noundef %i.bc) #9 ; 14 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef align 1 dereferenceable(16) %i.aw, i64 noundef 16, i1 noundef false) #8
  %i.be = call i32 @gcry_cipher_encrypt(ptr noundef %i.ay, ptr noundef nonnull %i.g, i64 noundef 16, ptr noundef nonnull %i.h, i64 noundef 16)
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %.lr.ph.i, label %solaredge_decrypt.exit

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.03749.i = phi i32 [ %.1.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.bf = add i32 %.03749.i, 1                    ; 2 uses
  %i.bg = sext i32 %.03749.i to i64
  %i.bh = getelementptr i8, ptr %i.g, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr i8, ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = xor i8 %i.bk, %i.bi
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = icmp eq i32 %i.bf, 16
  br i1 %i.bm, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.048.i = phi i32 [ %i.br, %.preheader.i ], [ 15, %.lr.ph.i ] ; 3 uses
  %i.bn = zext nneg i32 %.048.i to i64
  %i.bo = getelementptr i8, ptr %i.h, i64 %i.bn   ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = add i8 %i.bp, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.bo, align 1
  %.not44.i = icmp eq i8 %i.bq, 0
  %i.br = add nsw i32 %.048.i, -1
  %i.bs = icmp ne i32 %.048.i, 0
  %or.cond.i = and i1 %i.bs, %.not44.i
  br i1 %or.cond.i, label %.preheader.i, label %bb.i, !llvm.loop !6

bb.i:                                             ; preds = %.preheader.i
  %i.bt = call i32 @gcry_cipher_encrypt(ptr noundef %i.ay, ptr noundef nonnull %i.g, i64 noundef 16, ptr noundef nonnull %i.h, i64 noundef 16)
  %.not45.i = icmp eq i32 %i.bt, 0
  br i1 %.not45.i, label %bb.j, label %solaredge_decrypt.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1.i = phi i32 [ 0, %bb.i ], [ %i.bf, %.lr.ph.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.j
  %i.bu = add nsw i32 %i.u, -22                   ; 4 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = call noalias ptr @wmem_alloc(ptr noundef %i.av, i64 noundef %i.bv) #7 ; 8 uses
  %.not54.i = icmp eq i16 %i.p, 22
  br i1 %.not54.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bu, i32 1) ; 2 uses
  %wide.trip.count60.i = zext nneg i32 %smax.i to i64 ; 7 uses
  %min.iters.check = icmp ult i16 %i.p, 26
  %5 = add nsw i32 %smax.i, -5
  %6 = icmp ult i32 %5, -4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %6
  br i1 %or.cond, label %.lr.ph53.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bx = getelementptr i8, ptr %i.bw, i64 %wide.trip.count60.i
  %i.by = getelementptr i8, ptr %i.bd, i64 2
  %i.bz = getelementptr i8, ptr %i.bd, i64 %wide.trip.count60.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 6
  %bound0 = icmp ult ptr %i.bw, %i.ca
  %bound1 = icmp ult ptr %i.by, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph53.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i16 %i.p, 54
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %7 = getelementptr i8, ptr %i.bd, i64 2
  %8 = getelementptr i8, ptr %i.bd, i64 18
  %wide.load37 = load <16 x i8>, ptr %7, align 1, !alias.scope !18
  %wide.load38 = load <16 x i8>, ptr %8, align 1, !alias.scope !18
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 3 uses
  %9 = getelementptr i8, ptr %i.bd, i64 %index    ; 2 uses
  %10 = getelementptr i8, ptr %9, i64 6
  %11 = getelementptr i8, ptr %9, i64 22
  %wide.load = load <16 x i8>, ptr %10, align 1, !alias.scope !18
  %wide.load36 = load <16 x i8>, ptr %11, align 1, !alias.scope !18
  %12 = xor <16 x i8> %wide.load37, %wide.load
  %13 = xor <16 x i8> %wide.load38, %wide.load36
  %14 = getelementptr i8, ptr %i.bw, i64 %index   ; 2 uses
  %15 = getelementptr i8, ptr %14, i64 16
  store <16 x i8> %12, ptr %14, align 1, !alias.scope !19, !noalias !18
  store <16 x i8> %13, ptr %15, align 1, !alias.scope !19, !noalias !18
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec39 = and i64 %wide.trip.count60.i, 4      ; 3 uses
  %16 = getelementptr i8, ptr %i.bd, i64 2
  %wide.load42 = load <4 x i8>, ptr %16, align 1, !alias.scope !18
  br label %vec.epilog.vector.body.a

vec.epilog.vector.body.a:                         ; preds = %vec.epilog.vector.body.a, %vec.epilog.ph
  %index40 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body.a ] ; 3 uses
  %17 = getelementptr i8, ptr %i.bd, i64 %index40
  %18 = getelementptr i8, ptr %17, i64 6
  %wide.load41 = load <4 x i8>, ptr %18, align 1, !alias.scope !18
  %19 = xor <4 x i8> %wide.load42, %wide.load41
  %20 = getelementptr i8, ptr %i.bw, i64 %index40
  store <4 x i8> %19, ptr %20, align 1, !alias.scope !19, !noalias !18
  %index.next43 = add nuw i64 %index40, 4         ; 2 uses
  %21 = icmp eq i64 %index.next43, %n.vec39
  br i1 %21, label %vec.epilog.middle.block, label %vec.epilog.vector.body.a, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.a
  %cmp.n44 = icmp eq i64 %n.vec39, %wide.trip.count60.i
  br i1 %cmp.n44, label %.loopexit, label %.lr.ph53.i.preheader

.lr.ph53.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv57.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec39, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter.a = and i64 %wide.trip.count60.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol

.lr.ph53.i.prol:                                  ; preds = %.lr.ph53.i.preheader
  %22 = getelementptr i8, ptr %i.bd, i64 %indvars.iv57.i.ph
  %i.cb = getelementptr i8, ptr %22, i64 6
  %23 = load i8, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %i.bd, i64 2
  %24 = load i8, ptr %i.cc, align 1
  %25 = xor i8 %24, %23
  %26 = getelementptr i8, ptr %i.bw, i64 %indvars.iv57.i.ph
  store i8 %25, ptr %26, align 1
  %indvars.iv.next58.i.prol = or disjoint i64 %indvars.iv57.i.ph, 1
  br label %.lr.ph53.i.prol.loopexit

.lr.ph53.i.prol.loopexit:                         ; preds = %.lr.ph53.i.prol, %.lr.ph53.i.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %.lr.ph53.i.preheader ], [ %indvars.iv.next58.i.prol, %.lr.ph53.i.prol ]
  %27 = add nsw i64 %wide.trip.count60.i, -1
  %28 = icmp eq i64 %indvars.iv57.i.ph, %27
  br i1 %28, label %.loopexit, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i
  %indvars.iv57.i.a = phi i64 [ %indvars.iv.next58.i.1.a, %.lr.ph53.i ], [ %indvars.iv57.i.unr, %.lr.ph53.i.prol.loopexit ] ; 5 uses
  %i.cd = getelementptr i8, ptr %i.bd, i64 %indvars.iv57.i.a
  %i.ce = getelementptr i8, ptr %i.cd, i64 6
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = and i64 %indvars.iv57.i.a, 3
  %i.ch = getelementptr i8, ptr %i.bd, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = xor i8 %i.cj, %i.cf
  %i.cl = getelementptr i8, ptr %i.bw, i64 %indvars.iv57.i.a
  store i8 %i.ck, ptr %i.cl, align 1
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i.a, 1 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.bd, i64 %indvars.iv.next58.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 6
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = and i64 %indvars.iv.next58.i, 3
  %i.cq = getelementptr i8, ptr %i.bd, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = xor i8 %i.cs, %i.co
  %i.cu = getelementptr i8, ptr %i.bw, i64 %indvars.iv.next58.i
  store i8 %i.ct, ptr %i.cu, align 1
  %indvars.iv.next58.i.1.a = add nuw nsw i64 %indvars.iv57.i.a, 2 ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %indvars.iv.next58.i.1.a, %wide.trip.count60.i
  br i1 %exitcond61.not.i.1, label %.loopexit, label %.lr.ph53.i, !llvm.loop !13

solaredge_decrypt.exit:                           ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %solaredge_decrypt.exit.thread

.loopexit:                                        ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i, %vec.epilog.middle.block, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %i.cv = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.bw, i32 noundef %i.bu, i32 noundef %i.bu) ; 3 uses
  %i.cw = call i32 @tvb_get_uint32(ptr noundef %i.cv, i32 noundef 0, i32 noundef -2147483648)
  %i.cx = icmp eq i32 %i.cw, 2035692562
  br i1 %i.cx, label %bb.k, label %solaredge_decrypt.exit.thread

bb.k:                                             ; preds = %.loopexit
  %i.cy = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.cv, ptr noundef nonnull @.str.526) ; 0 uses
  %i.cz = load i32, ptr @ett_solaredge_packet_decrypted, align 4
  %i.da = call fastcc i32 @dissect_solaredge_recursive(ptr noundef %i.cv, ptr noundef %1, ptr noundef %2, i32 noundef %i.cz, ptr noundef %4) ; 0 uses
  br label %solaredge_decrypt.exit.thread

solaredge_decrypt.exit.thread:                    ; preds = %bb.g, %bb.k, %.loopexit, %solaredge_decrypt.exit, %bb.f, %bb.e
  %i.db = add nuw nsw i32 %i.u, 20                ; 2 uses
  br label %dissect_solaredge_devicedata.exit

bb.l:                                             ; preds = %bb.d
  %i.dc = load i32, ptr @hf_solaredge_post_type, align 4
  %i.dd = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.dc, ptr noundef %0, i32 noundef 20, i32 noundef %i.u, i32 noundef 0)
  %i.de = load i32, ptr @ett_solaredge_packet_post, align 4
  %i.df = tail call ptr @proto_item_add_subtree(ptr noundef %i.dd, i32 noundef %i.de)
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.an, %bb.l
  %.tr267.i = phi i32 [ 20, %bb.l ], [ %.1.i99, %bb.an ] ; 52 uses
  %i.dg = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %.tr267.i), !inline_history !14
  %i.dh = add nuw nsw i32 %.tr267.i, 2            ; 2 uses
  %i.di = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.dh), !inline_history !14 ; 0 uses
  %i.dj = add nuw nsw i32 %.tr267.i, 6            ; 2 uses
  %i.dk = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.dj), !inline_history !14
  %i.dl = load i32, ptr @hf_solaredge_post_device_type, align 4
  %i.dm = zext i16 %i.dk to i32                   ; 3 uses
  %i.dn = add nuw nsw i32 %i.dm, 8
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.dl, ptr noundef %0, i32 noundef %.tr267.i, i32 noundef %i.dn, i32 noundef 0), !inline_history !14
  %i.dp = load i32, ptr @ett_solaredge_packet_post_device, align 4
  %i.dq = tail call ptr @proto_item_add_subtree(ptr noundef %i.do, i32 noundef %i.dp), !inline_history !14 ; 52 uses
  %i.dr = load i32, ptr @hf_solaredge_post_device_type_type, align 4
  %i.ds = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.dr, ptr noundef %0, i32 noundef %.tr267.i, i32 noundef 2, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.dt = load i32, ptr @hf_solaredge_post_device_id_type, align 4
  %i.du = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.dt, ptr noundef %0, i32 noundef %i.dh, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.dv = load i32, ptr @hf_solaredge_post_length_type, align 4
  %i.dw = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.dv, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.dx = add nuw nsw i32 %.tr267.i, 8            ; 6 uses
  %i.dy = load ptr, ptr %i.j, align 8
  tail call void @col_append_str(ptr noundef %i.dy, i32 noundef 25, ptr noundef nonnull @.str.527), !inline_history !14
  tail call void @increment_dissection_depth(ptr noundef %1), !inline_history !14
  %i.dz = load ptr, ptr %i.j, align 8             ; 6 uses
  switch i16 %i.dg, label %bb.al [
    i16 0, label %bb.m
    i16 16, label %bb.p
    i16 17, label %bb.ae
    i16 128, label %bb.af
    i16 768, label %bb.ag
  ]

bb.m:                                             ; preds = %tailrecurse.i
  tail call void @col_append_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.519), !inline_history !14
  %i.ea = load i32, ptr @hf_solaredge_post_optimizer_timestamp_type, align 4
  %i.eb = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ea, ptr noundef %0, i32 noundef %i.dx, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.ec = add nuw nsw i32 %.tr267.i, 12
  %i.ed = load i32, ptr @hf_solaredge_post_optimizer_inverter_type, align 4
  %i.ee = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ed, ptr noundef %0, i32 noundef %i.ec, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.ef = load i8, ptr @global_show_unknown_fields, align 1, !range !15, !noundef !16
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eh = add nuw nsw i32 %.tr267.i, 16
  %i.ei = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.ej = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ei, ptr noundef %0, i32 noundef %i.eh, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ek = add nuw nsw i32 %.tr267.i, 20
  %i.el = load i32, ptr @hf_solaredge_post_optimizer_uptime_type, align 4
  %i.em = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.el, ptr noundef %0, i32 noundef %i.ek, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.en = add nuw nsw i32 %.tr267.i, 24
  %i.eo = load i32, ptr @hf_solaredge_post_optimizer_dc_voltage_panel_type, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.en, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.eq = add nuw nsw i32 %.tr267.i, 28
  %i.er = load i32, ptr @hf_solaredge_post_optimizer_dc_voltage_optimzer_type, align 4
  %i.es = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.er, ptr noundef %0, i32 noundef %i.eq, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.et = add nuw nsw i32 %.tr267.i, 32
  %i.eu = load i32, ptr @hf_solaredge_post_optimizer_dc_current_panel_type, align 4
  %i.ev = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.eu, ptr noundef %0, i32 noundef %i.et, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.ew = add nuw nsw i32 %.tr267.i, 36
  %i.ex = load i32, ptr @hf_solaredge_post_optimizer_energy_day_type, align 4
  %i.ey = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ex, ptr noundef %0, i32 noundef %i.ew, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.ez = add nuw nsw i32 %.tr267.i, 40
  %i.fa = load i32, ptr @hf_solaredge_post_optimizer_temperature_type, align 4
  %i.fb = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.ez, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.fc = add nuw nsw i32 %.tr267.i, 44
  br label %bb.am

bb.p:                                             ; preds = %tailrecurse.i
  tail call void @col_append_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.520), !inline_history !14
  %i.fd = load i32, ptr @hf_solaredge_post_singlephase_inverter_timestamp_type, align 4
  %i.fe = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fd, ptr noundef %0, i32 noundef %i.dx, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.ff = add nuw nsw i32 %.tr267.i, 12
  %i.fg = load i32, ptr @hf_solaredge_post_singlephase_inverter_uptime_type, align 4
  %i.fh = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fg, ptr noundef %0, i32 noundef %i.ff, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.fi = add nuw nsw i32 %.tr267.i, 16
  %i.fj = load i32, ptr @hf_solaredge_post_singlephase_inverter_interval_type, align 4
  %i.fk = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fj, ptr noundef %0, i32 noundef %i.fi, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.fl = add nuw nsw i32 %.tr267.i, 20
  %i.fm = load i32, ptr @hf_solaredge_post_singlephase_inverter_temperature_type, align 4
  %i.fn = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fm, ptr noundef %0, i32 noundef %i.fl, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.fo = add nuw nsw i32 %.tr267.i, 24
  %i.fp = load i32, ptr @hf_solaredge_post_singlephase_inverter_energy_day_type, align 4
  %i.fq = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fp, ptr noundef %0, i32 noundef %i.fo, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.fr = add nuw nsw i32 %.tr267.i, 28
  %i.fs = load i32, ptr @hf_solaredge_post_singlephase_inverter_energy_interval_type, align 4
  %i.ft = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fs, ptr noundef %0, i32 noundef %i.fr, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.fu = add nuw nsw i32 %.tr267.i, 32
  %i.fv = load i32, ptr @hf_solaredge_post_singlephase_inverter_ac_voltage_type, align 4
  %i.fw = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fv, ptr noundef %0, i32 noundef %i.fu, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.fx = add nuw nsw i32 %.tr267.i, 36
  %i.fy = load i32, ptr @hf_solaredge_post_singlephase_inverter_ac_current_type, align 4
  %i.fz = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.fy, ptr noundef %0, i32 noundef %i.fx, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.ga = add nuw nsw i32 %.tr267.i, 40
  %i.gb = load i32, ptr @hf_solaredge_post_singlephase_inverter_ac_frequency_type, align 4
  %i.gc = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.gb, ptr noundef %0, i32 noundef %i.ga, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.gd = load i8, ptr @global_show_unknown_fields, align 1, !range !15, !noundef !16
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.gf = add nuw nsw i32 %.tr267.i, 44
  %i.gg = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.gh = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.gg, ptr noundef %0, i32 noundef %i.gf, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre270.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.gi = trunc nuw i8 %.pre270.i to i1
  br i1 %i.gi, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.gj = add nuw nsw i32 %.tr267.i, 48
  %i.gk = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.gl = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.gj, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q, %bb.p
  %i.gm = add nuw nsw i32 %.tr267.i, 52
  %i.gn = load i32, ptr @hf_solaredge_post_singlephase_inverter_dc_voltage_type, align 4
  %i.go = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.gn, ptr noundef %0, i32 noundef %i.gm, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.gp = load i8, ptr @global_show_unknown_fields, align 1, !range !15, !noundef !16
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i
  %i.gr = add nuw nsw i32 %.tr267.i, 56
  %i.gs = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.gs, ptr noundef %0, i32 noundef %i.gr, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread.i
  %i.gu = add nuw nsw i32 %.tr267.i, 60
  %i.gv = load i32, ptr @hf_solaredge_post_singlephase_inverter_energy_total_type, align 4
  %i.gw = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.gv, ptr noundef %0, i32 noundef %i.gu, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.gx = load i8, ptr @global_show_unknown_fields, align 1, !range !15, !noundef !16
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.u, label %.thread281.i

bb.u:                                             ; preds = %bb.t
  %i.gz = add nuw nsw i32 %.tr267.i, 64
  %i.ha = load i32, ptr @hf_solaredge_post_padding_float_type, align 4
  %i.hb = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ha, ptr noundef %0, i32 noundef %i.gz, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre271.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.hc = trunc nuw i8 %.pre271.i to i1
  br i1 %i.hc, label %bb.v, label %.thread281.i

bb.v:                                             ; preds = %bb.u
  %i.hd = add nuw nsw i32 %.tr267.i, 68
  %i.he = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.hf = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hd, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre272.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.hg = trunc nuw i8 %.pre272.i to i1
  br i1 %i.hg, label %bb.w, label %.thread281.i

bb.w:                                             ; preds = %bb.v
  %i.hh = add nuw nsw i32 %.tr267.i, 72
  %i.hi = load i32, ptr @hf_solaredge_post_padding_float_type, align 4
  %i.hj = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.hi, ptr noundef %0, i32 noundef %i.hh, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre273.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.hk = trunc nuw i8 %.pre273.i to i1
  br i1 %i.hk, label %bb.x, label %.thread281.i

bb.x:                                             ; preds = %bb.w
  %i.hl = add nuw nsw i32 %.tr267.i, 76
  %i.hm = load i32, ptr @hf_solaredge_post_padding_float_type, align 4
  %i.hn = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.hm, ptr noundef %0, i32 noundef %i.hl, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  br label %.thread281.i

.thread281.i:                                     ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %i.ho = add nuw nsw i32 %.tr267.i, 80
  %i.hp = load i32, ptr @hf_solaredge_post_singlephase_inverter_power_max_type, align 4
  %i.hq = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.hp, ptr noundef %0, i32 noundef %i.ho, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.hr = load i8, ptr @global_show_unknown_fields, align 1, !range !15, !noundef !16
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.y, label %.thread286.i

bb.y:                                             ; preds = %.thread281.i
  %i.ht = add nuw nsw i32 %.tr267.i, 84
  %i.hu = load i32, ptr @hf_solaredge_post_padding_float_type, align 4
  %i.hv = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.hu, ptr noundef %0, i32 noundef %i.ht, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre274.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.hw = trunc nuw i8 %.pre274.i to i1
  br i1 %i.hw, label %bb.z, label %.thread286.i

bb.z:                                             ; preds = %bb.y
  %i.hx = add nuw nsw i32 %.tr267.i, 88
  %i.hy = load i32, ptr @hf_solaredge_post_padding_float_type, align 4
  %i.hz = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.hy, ptr noundef %0, i32 noundef %i.hx, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre275.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.ia = trunc nuw i8 %.pre275.i to i1
  br i1 %i.ia, label %bb.aa, label %.thread286.i

bb.aa:                                            ; preds = %bb.z
  %i.ib = add nuw nsw i32 %.tr267.i, 92
  %i.ic = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.id = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ic, ptr noundef %0, i32 noundef %i.ib, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre276.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.ie = trunc nuw i8 %.pre276.i to i1
  br i1 %i.ie, label %bb.ab, label %.thread286.i

bb.ab:                                            ; preds = %bb.aa
  %i.if = add nuw nsw i32 %.tr267.i, 96
  %i.ig = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.ih = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ig, ptr noundef %0, i32 noundef %i.if, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  br label %.thread286.i

.thread286.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %.thread281.i
  %i.ii = add nuw nsw i32 %.tr267.i, 100
  %i.ij = load i32, ptr @hf_solaredge_post_singlephase_inverter_ac_power_type, align 4
  %i.ik = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ij, ptr noundef %0, i32 noundef %i.ii, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.il = load i8, ptr @global_show_unknown_fields, align 1, !range !15, !noundef !16
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ac, label %.thread287.i

bb.ac:                                            ; preds = %.thread286.i
  %i.in = add nuw nsw i32 %.tr267.i, 104
  %i.io = load i32, ptr @hf_solaredge_post_padding_float_type, align 4
  %i.ip = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.io, ptr noundef %0, i32 noundef %i.in, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre277.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.iq = trunc nuw i8 %.pre277.i to i1
  br i1 %i.iq, label %bb.ad, label %.thread287.i

bb.ad:                                            ; preds = %bb.ac
  %i.ir = add nuw nsw i32 %.tr267.i, 108
  %i.is = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.it = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.is, ptr noundef %0, i32 noundef %i.ir, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  br label %.thread287.i

.thread287.i:                                     ; preds = %bb.ad, %bb.ac, %.thread286.i
  %i.iu = add nuw nsw i32 %.tr267.i, 112
  br label %bb.am

bb.ae:                                            ; preds = %tailrecurse.i
  tail call void @col_append_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.521), !inline_history !14
  %i.iv = add nuw nsw i32 %i.dx, %i.dm
  br label %bb.am

bb.af:                                            ; preds = %tailrecurse.i
  tail call void @col_append_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.519), !inline_history !14
  %i.iw = load i32, ptr @hf_solaredge_post_optimizer_timestamp_type, align 4
  %i.ix = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.iw, ptr noundef %0, i32 noundef %i.dx, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.iy = add nuw nsw i32 %.tr267.i, 12
  %i.iz = load i32, ptr @hf_solaredge_post_optimizer_uptime_short_type, align 4
  %i.ja = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.iz, ptr noundef %0, i32 noundef %i.iy, i32 noundef 2, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.jb = add nuw nsw i32 %.tr267.i, 14           ; 5 uses
  %i.jc = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.jb, i32 noundef 6), !inline_history !14 ; 5 uses
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = zext i8 %i.jd to i32
  %i.jf = getelementptr i8, ptr %i.jc, i64 1      ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = zext i8 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 8
  %i.jj = and i32 %i.ji, 768
  %i.jk = or disjoint i32 %i.jj, %i.je
  %i.jl = uitofp nneg i32 %i.jk to float
  %i.jm = fmul nnan float %i.jl, 1.250000e-01     ; 2 uses
  %i.jn = load i32, ptr @hf_solaredge_post_optimizer_dc_voltage_panel_type, align 4
  %i.jo = fpext float %i.jm to double
  %i.jp = tail call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format_value(ptr noundef %i.dq, i32 noundef %i.jn, ptr noundef %0, i32 noundef %i.jb, i32 noundef 6, float noundef %i.jm, ptr noundef nonnull @.str.528, double noundef %i.jo), !inline_history !14 ; 0 uses
  %i.jq = load i8, ptr %i.jf, align 1
  %i.jr = lshr i8 %i.jq, 2
  %i.js = zext nneg i8 %i.jr to i32
  %i.jt = getelementptr i8, ptr %i.jc, i64 2      ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jv, 6
  %i.jx = and i32 %i.jw, 960
  %i.jy = or disjoint i32 %i.jx, %i.js
  %i.jz = uitofp nneg i32 %i.jy to float
  %i.ka = fmul nnan float %i.jz, 1.250000e-01     ; 2 uses
  %i.kb = load i32, ptr @hf_solaredge_post_optimizer_dc_voltage_optimzer_type, align 4
  %i.kc = fpext float %i.ka to double
  %i.kd = tail call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format_value(ptr noundef %i.dq, i32 noundef %i.kb, ptr noundef %0, i32 noundef %i.jb, i32 noundef 6, float noundef %i.ka, ptr noundef nonnull @.str.528, double noundef %i.kc), !inline_history !14 ; 0 uses
  %i.ke = getelementptr i8, ptr %i.jc, i64 3
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i32
  %i.kh = shl nuw nsw i32 %i.kg, 4
  %i.ki = load i8, ptr %i.jt, align 1
  %i.kj = lshr i8 %i.ki, 4
  %i.kk = zext nneg i8 %i.kj to i32
  %i.kl = or disjoint i32 %i.kh, %i.kk
  %i.km = uitofp nneg i32 %i.kl to double
  %i.kn = fmul nnan double %i.km, 6.250000e-03
  %i.ko = fptrunc double %i.kn to float           ; 2 uses
  %i.kp = load i32, ptr @hf_solaredge_post_optimizer_dc_current_optimzer_type, align 4
  %i.kq = fpext float %i.ko to double
  %i.kr = tail call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format_value(ptr noundef %i.dq, i32 noundef %i.kp, ptr noundef %0, i32 noundef %i.jb, i32 noundef 6, float noundef %i.ko, ptr noundef nonnull @.str.528, double noundef %i.kq), !inline_history !14 ; 0 uses
  %i.ks = getelementptr i8, ptr %i.jc, i64 5
  %i.kt = load i16, ptr %i.ks, align 1
  %i.ku = uitofp i16 %i.kt to float
  %i.kv = fmul nnan float %i.ku, 2.500000e-01     ; 2 uses
  %i.kw = load i32, ptr @hf_solaredge_post_optimizer_energy_day_type, align 4
  %i.kx = fpext float %i.kv to double
  %i.ky = tail call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format_value(ptr noundef %i.dq, i32 noundef %i.kw, ptr noundef %0, i32 noundef %i.jb, i32 noundef 6, float noundef %i.kv, ptr noundef nonnull @.str.528, double noundef %i.kx), !inline_history !14 ; 0 uses
  %i.kz = add nuw nsw i32 %.tr267.i, 20           ; 2 uses
  %i.la = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kz), !inline_history !14
  %i.lb = uitofp i8 %i.la to float
  %i.lc = fmul nnan float %i.lb, 2.000000e+00     ; 2 uses
  %i.ld = load i32, ptr @hf_solaredge_post_optimizer_temperature_type, align 4
  %i.le = fpext float %i.lc to double
  %i.lf = tail call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format_value(ptr noundef %i.dq, i32 noundef %i.ld, ptr noundef %0, i32 noundef %i.kz, i32 noundef 2, float noundef %i.lc, ptr noundef nonnull @.str.528, double noundef %i.le), !inline_history !14 ; 0 uses
  %i.lg = add nuw nsw i32 %.tr267.i, 21
  br label %bb.am

bb.ag:                                            ; preds = %tailrecurse.i
  tail call void @col_append_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.522), !inline_history !14
  %i.lh = load i32, ptr @hf_solaredge_post_event_timestamp_type, align 4
  %i.li = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.lh, ptr noundef %0, i32 noundef %i.dx, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.lj = add nuw nsw i32 %.tr267.i, 12           ; 2 uses
  %i.lk = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.lj, i32 noundef -2147483648), !inline_history !14
  %i.ll = load i32, ptr @hf_solaredge_post_event_type_type, align 4
  %i.lm = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ll, ptr noundef %0, i32 noundef %i.lj, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.ln = add nuw nsw i32 %.tr267.i, 16
  %i.lo = load i32, ptr @hf_solaredge_post_event_event_start_timestamp_type, align 4
  %i.lp = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.lo, ptr noundef %0, i32 noundef %i.ln, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.lq = add nuw nsw i32 %.tr267.i, 20           ; 2 uses
  %i.lr = icmp eq i32 %i.lk, 1
  br i1 %i.lr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ls = load i32, ptr @hf_solaredge_post_event_event_timezone_offset_type, align 4
  %i.lt = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.ls, ptr noundef %0, i32 noundef %i.lq, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.lu = add nuw nsw i32 %.tr267.i, 24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink289.i = phi i32 [ %i.lu, %bb.ah ], [ %i.lq, %bb.ag ]
  %i.lv = load i32, ptr @hf_solaredge_post_event_event_end_timestamp_type, align 4
  %i.lw = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.lv, ptr noundef %0, i32 noundef %.sink289.i, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %i.lx = load i8, ptr @global_show_unknown_fields, align 1, !range !15, !noundef !16
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.aj, label %.thread288.i

bb.aj:                                            ; preds = %bb.ai
  %.0.i = add nuw nsw i32 %.tr267.i, 28
  %i.lz = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.ma = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.lz, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  %.pre.i = load i8, ptr @global_show_unknown_fields, align 1, !range !15
  %i.mb = trunc nuw i8 %.pre.i to i1
  br i1 %i.mb, label %bb.ak, label %.thread288.i

bb.ak:                                            ; preds = %bb.aj
  %i.mc = add nuw nsw i32 %.tr267.i, 32
  %i.md = load i32, ptr @hf_solaredge_post_padding_uint32_type, align 4
  %i.me = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.md, ptr noundef %0, i32 noundef %i.mc, i32 noundef 4, i32 noundef -2147483648), !inline_history !14 ; 0 uses
  br label %.thread288.i

.thread288.i:                                     ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.mf = add nuw nsw i32 %.tr267.i, 36
  br label %bb.am

bb.al:                                            ; preds = %tailrecurse.i
  tail call void @col_append_str(ptr noundef %i.dz, i32 noundef 25, ptr noundef nonnull @.str.529), !inline_history !14
  %i.mg = add nuw nsw i32 %i.dx, %i.dm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread288.i, %bb.af, %bb.ae, %.thread287.i, %bb.o
  %.1.i99 = phi i32 [ %i.mg, %bb.al ], [ %i.fc, %bb.o ], [ %i.iu, %.thread287.i ], [ %i.iv, %bb.ae ], [ %i.lg, %bb.af ], [ %i.mf, %.thread288.i ] ; 2 uses
  tail call void @decrement_dissection_depth(ptr noundef %1), !inline_history !14
  %i.mh = icmp samesign ult i32 %.1.i99, %i.u
  br i1 %i.mh, label %bb.an, label %dissect_solaredge_devicedata.exit.loopexit

bb.an:                                            ; preds = %bb.am
  %i.mi = load ptr, ptr %i.j, align 8
  tail call void @col_append_str(ptr noundef %i.mi, i32 noundef 25, ptr noundef nonnull @.str.530), !inline_history !14
  br label %tailrecurse.i

bb.ao:                                            ; preds = %bb.d
  %i.mj = load i32, ptr @hf_solaredge_session_key_type, align 4
  %i.mk = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.mj, ptr noundef %0, i32 noundef 20, i32 noundef %i.u, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.ml = load i32, ptr @proto_solaredge, align 4
  %i.mm = tail call ptr @conversation_get_proto_data(ptr noundef %4, i32 noundef %i.ml) ; 2 uses
  %.not.i100 = icmp eq ptr %i.mm, null
  br i1 %.not.i100, label %solaredge_set_key.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mn = load i8, ptr %i.mm, align 8, !range !15, !noundef !16
  %i.mo = icmp eq i8 %i.mn, 0
  br i1 %i.mo, label %bb.aq, label %solaredge_set_key.exit

bb.aq:                                            ; preds = %bb.ap
  %i.mp = tail call i32 @gcry_cipher_open(ptr noundef nonnull @cipher_hd_system, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not23.i = icmp eq i32 %i.mp, 0
  br i1 %.not23.i, label %bb.ar, label %solaredge_set_key.exit

bb.ar:                                            ; preds = %bb.aq
  %i.mq = tail call ptr @g_byte_array_new()       ; 4 uses
  %i.mr = load ptr, ptr @global_system_encryption_key, align 8
  %i.ms = tail call zeroext i1 @hex_str_to_bytes(ptr noundef %i.mr, ptr noundef %i.mq, i1 noundef zeroext false)
  br i1 %i.ms, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.mt = getelementptr i8, ptr %i.mq, i64 8
  %i.mu = load i32, ptr %i.mt, align 8
  %i.mv = icmp eq i32 %i.mu, 16
  br i1 %i.mv, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.mw = load ptr, ptr @cipher_hd_system, align 8
  %i.mx = load ptr, ptr %i.mq, align 8
  %i.my = tail call i32 @gcry_cipher_setkey(ptr noundef %i.mw, ptr noundef %i.mx, i64 noundef 16)
  %.not24.i = icmp eq i32 %i.my, 0
  br i1 %.not24.i, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.mz = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 20, i64 noundef 16) ; 0 uses
  %i.na = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 36, i64 noundef 16) ; 0 uses
  %i.nb = load ptr, ptr @cipher_hd_system, align 8
  %i.nc = call i32 @gcry_cipher_encrypt(ptr noundef %i.nb, ptr noundef nonnull %i.e, i64 noundef 16, ptr noundef null, i64 noundef 0)
  %.not25.i = icmp eq i32 %i.nc, 0
  br i1 %.not25.i, label %.preheader.preheader.i, label %bb.ay

.preheader.preheader.i:                           ; preds = %bb.au
  %i.nd = load <16 x i8>, ptr %i.e, align 16
  %i.ne = load <16 x i8>, ptr %i.f, align 16
  %i.nf = xor <16 x i8> %i.ne, %i.nd
  store <16 x i8> %i.nf, ptr %i.f, align 16
  %i.ng = load i32, ptr @proto_solaredge, align 4
  %i.nh = call ptr @conversation_get_proto_data(ptr noundef %4, i32 noundef %i.ng) ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 8      ; 4 uses
  %i.nj = call i32 @gcry_cipher_open(ptr noundef %i.ni, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not26.i = icmp eq i32 %i.nj, 0
  br i1 %.not26.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.preheader.preheader.i
  %i.nk = load ptr, ptr %i.ni, align 8
  %i.nl = call i32 @gcry_cipher_setkey(ptr noundef %i.nk, ptr noundef nonnull %i.f, i64 noundef 16)
  %.not27.i = icmp eq i32 %i.nl, 0
  br i1 %.not27.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.nh, align 8
  %i.nm = call ptr @wmem_file_scope()
  %i.nn = load ptr, ptr %i.ni, align 8
  %i.no = call i32 @wmem_register_callback(ptr noundef %i.nm, ptr noundef nonnull @gcry_cipher_close_cb, ptr noundef %i.nn) ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.np = load ptr, ptr %i.ni, align 8
  call void @gcry_cipher_close(ptr noundef %i.np)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.preheader.preheader.i, %bb.au, %bb.at
  %i.nq = load ptr, ptr @cipher_hd_system, align 8
  call void @gcry_cipher_close(ptr noundef %i.nq)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.as, %bb.ar
  call void @g_byte_array_unref(ptr noundef %i.mq)
  br label %solaredge_set_key.exit

solaredge_set_key.exit:                           ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.nr = add nuw nsw i32 %i.u, 20                ; 2 uses
  br label %dissect_solaredge_devicedata.exit

bb.ba:                                            ; preds = %bb.d
  %i.ns = add nuw nsw i32 %i.u, 20                ; 2 uses
  br label %dissect_solaredge_devicedata.exit

dissect_solaredge_devicedata.exit.loopexit:       ; preds = %bb.am
  %.pre = add nuw nsw i32 %i.u, 20
  br label %dissect_solaredge_devicedata.exit

dissect_solaredge_devicedata.exit:                ; preds = %dissect_solaredge_devicedata.exit.loopexit, %bb.ba, %solaredge_set_key.exit, %solaredge_decrypt.exit.thread
  %.pre-phi = phi i32 [ %.pre, %dissect_solaredge_devicedata.exit.loopexit ], [ %i.ns, %bb.ba ], [ %i.nr, %solaredge_set_key.exit ], [ %i.db, %solaredge_decrypt.exit.thread ]
  %.0 = phi i32 [ 20, %dissect_solaredge_devicedata.exit.loopexit ], [ %i.ns, %bb.ba ], [ %i.nr, %solaredge_set_key.exit ], [ %i.db, %solaredge_decrypt.exit.thread ]
  call void @decrement_dissection_depth(ptr noundef %1)
  %i.nt = load i32, ptr @hf_solaredge_crc_type, align 4
  %i.nu = load i32, ptr @hf_solaredge_crc_status_type, align 4
  %i.nv = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 20, i32 noundef %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %rev.i = call i16 @llvm.bswap.i16(i16 %i.z)
  store i16 %rev.i, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.nw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ac) #10, !srcloc !22
  store i32 %i.nw, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.nx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #10, !srcloc !23
  store i32 %i.nx, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %rev35.i = call i16 @llvm.bswap.i16(i16 %i.ai)
  store i16 %rev35.i, ptr %i.d, align 2
  %i.ny = call zeroext i16 @crc16_plain_update(i16 noundef zeroext 23130, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.nz = call zeroext i16 @crc16_plain_update(i16 noundef zeroext %i.ny, ptr noundef nonnull %i.b, i64 noundef 4)
  %i.oa = call zeroext i16 @crc16_plain_update(i16 noundef zeroext %i.nz, ptr noundef nonnull %i.c, i64 noundef 4)
  %i.ob = call zeroext i16 @crc16_plain_update(i16 noundef zeroext %i.oa, ptr noundef nonnull %i.d, i64 noundef 2)
  %i.oc = zext i16 %i.p to i64
  %i.od = call zeroext i16 @crc16_plain_update(i16 noundef zeroext %i.ob, ptr noundef %i.nv, i64 noundef %i.oc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.oe = zext i16 %i.od to i32
  %i.of = call ptr @proto_tree_add_checksum(ptr noundef %i.o, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.nt, i32 noundef %i.nu, ptr noundef nonnull @ei_solaredge_invalid_crc, ptr noundef %1, i32 noundef %i.oe, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.og = add nuw nsw i32 %.0, 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %dissect_solaredge_devicedata.exit
  %.094 = phi i32 [ %i.og, %dissect_solaredge_devicedata.exit ], [ 0, %bb.a ]
  ret i32 %.094
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_new() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @hex_str_to_bytes(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_register_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @gcry_cipher_close_cb(ptr nofree readnone captures(none) %0, i32 %1, ptr noundef %2) #0 {
bb.a:
  tail call void @gcry_cipher_close(ptr noundef %2)
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_byte_array_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @crc16_plain_update(i16 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { allocsize(1) }
attributes #8 = { nounwind }
attributes #9 = { allocsize(2) }
attributes #10 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !17}
!7 = distinct !{!7, !17}
!8 = distinct !{!8, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !17, !20, !21}
!12 = distinct !{!12, !17, !20, !21}
!13 = distinct !{!13, !17, !20}
!14 = distinct !{null}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!9}
!19 = !{!10}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{i64 2151788293}
!23 = !{i64 2151789036}
end_hunk_0
