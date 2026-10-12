Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/power_supply_sysfs?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.63 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MIN\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"TEMP_AMBIENT_ALERT_MAX\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_NOW\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"TIME_TO_EMPTY_AVG\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_NOW\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"TIME_TO_FULL_AVG\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@POWER_SUPPLY_TYPE_TEXT = internal constant [13 x ptr] [ptr @.str.84, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], align 16
@.str.70 = private unnamed_addr constant [9 x i8] c"USB_TYPE\00", align 1
@POWER_SUPPLY_USB_TYPE_TEXT = internal constant [12 x ptr] [ptr @.str.84, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.126], align 16
@.str.71 = private unnamed_addr constant [6 x i8] c"SCOPE\00", align 1
@POWER_SUPPLY_SCOPE_TEXT = internal constant [3 x ptr] [ptr @.str.84, ptr @.str.138, ptr @.str.139], align 16
@.str.72 = private unnamed_addr constant [18 x i8] c"PRECHARGE_CURRENT\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"CHARGE_TERM_CURRENT\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"CALIBRATE\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"MANUFACTURE_YEAR\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"MANUFACTURE_MONTH\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"MANUFACTURE_DAY\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"INTERNAL_RESISTANCE\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"STATE_OF_HEALTH\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"MODEL_NAME\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"SERIAL_NUMBER\00", align 1
@power_supply_attrs = internal global [79 x { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] }] [{ ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.4, [31 x i8] c"STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_STATUS_TEXT, i32 5, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.5, [31 x i8] c"CHARGE_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 9, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.6, [31 x i8] c"CHARGE_TYPES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 9, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.7, [31 x i8] c"HEALTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_HEALTH_TEXT, i32 18, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.8, [31 x i8] c"PRESENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.9, [31 x i8] c"ONLINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.10, [31 x i8] c"AUTHENTIC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.11, [31 x i8] c"TECHNOLOGY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TECHNOLOGY_TEXT, i32 7, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.12, [31 x i8] c"CYCLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.13, [31 x i8] c"VOLTAGE_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.14, [31 x i8] c"VOLTAGE_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.15, [31 x i8] c"VOLTAGE_MAX_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.16, [31 x i8] c"VOLTAGE_MIN_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.17, [31 x i8] c"VOLTAGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.18, [31 x i8] c"VOLTAGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.19, [31 x i8] c"VOLTAGE_OCV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.20, [31 x i8] c"VOLTAGE_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.21, [31 x i8] c"CURRENT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.22, [31 x i8] c"CURRENT_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.23, [31 x i8] c"CURRENT_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.24, [31 x i8] c"CURRENT_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.25, [31 x i8] c"POWER_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.26, [31 x i8] c"POWER_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.27, [31 x i8] c"CHARGE_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.28, [31 x i8] c"CHARGE_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.29, [31 x i8] c"CHARGE_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.30, [31 x i8] c"CHARGE_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.31, [31 x i8] c"CHARGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.32, [31 x i8] c"CHARGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.33, [31 x i8] c"CHARGE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.34, [31 x i8] c"CONSTANT_CHARGE_CURRENT\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.35, [31 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.36, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.37, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.38, [31 x i8] c"CHARGE_CONTROL_LIMIT\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.39, [31 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.40, [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.41, [31 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.42, [31 x i8] c"CHARGE_BEHAVIOUR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 4, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.43, [31 x i8] c"INPUT_CURRENT_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.44, [31 x i8] c"INPUT_VOLTAGE_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.45, [31 x i8] c"INPUT_POWER_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.46, [31 x i8] c"ENERGY_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.47, [31 x i8] c"ENERGY_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.48, [31 x i8] c"ENERGY_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.49, [31 x i8] c"ENERGY_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.50, [31 x i8] c"ENERGY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.51, [31 x i8] c"ENERGY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.52, [31 x i8] c"CAPACITY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.53, [31 x i8] c"CAPACITY_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.54, [31 x i8] c"CAPACITY_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.55, [31 x i8] c"CAPACITY_ERROR_MARGIN\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.56, [31 x i8] c"CAPACITY_LEVEL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, i32 6, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.57, [31 x i8] c"TEMP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.58, [31 x i8] c"TEMP_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.59, [31 x i8] c"TEMP_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.60, [31 x i8] c"TEMP_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.61, [31 x i8] c"TEMP_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.62, [31 x i8] c"TEMP_AMBIENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.63, [31 x i8] c"TEMP_AMBIENT_ALERT_MIN\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.64, [31 x i8] c"TEMP_AMBIENT_ALERT_MAX\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.65, [31 x i8] c"TIME_TO_EMPTY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.66, [31 x i8] c"TIME_TO_EMPTY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.67, [31 x i8] c"TIME_TO_FULL_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.68, [31 x i8] c"TIME_TO_FULL_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.69, [31 x i8] c"TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TYPE_TEXT, i32 13, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.70, [31 x i8] c"USB_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_USB_TYPE_TEXT, i32 12, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.71, [31 x i8] c"SCOPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_SCOPE_TEXT, i32 3, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.72, [31 x i8] c"PRECHARGE_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.73, [31 x i8] c"CHARGE_TERM_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.74, [31 x i8] c"CALIBRATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.75, [31 x i8] c"MANUFACTURE_YEAR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.76, [31 x i8] c"MANUFACTURE_MONTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.77, [31 x i8] c"MANUFACTURE_DAY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.78, [31 x i8] c"INTERNAL_RESISTANCE\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.79, [31 x i8] c"STATE_OF_HEALTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.80, [31 x i8] c"MODEL_NAME\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.81, [31 x i8] c"MANUFACTURER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, [31 x i8], i8, %struct.device_attribute, ptr, i32, [4 x i8] } { ptr @.str.82, [31 x i8] c"SERIAL_NUMBER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.device_attribute zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }], section ".data..ro_after_init", align 16
@.str.84 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"Charging\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"Not charging\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"Good\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"Overheat\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"Dead\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Over voltage\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"Under voltage\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"Unspecified failure\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Cold\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"Watchdog timer expire\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"Safety timer expire\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Over current\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"Calibration required\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"Warm\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"Cool\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"Hot\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"No battery\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"Blown fuse\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"Cell imbalance\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"NiMH\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"Li-ion\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"Li-poly\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"LiFe\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"NiCd\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"LiMn\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"UPS\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"Mains\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"USB_DCP\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"USB_CDP\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"USB_ACA\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"USB_C\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"USB_PD\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"USB_PD_DRP\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"BrickID\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"Wireless\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"CDP\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"ACA\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"PD_DRP\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"PD_PPS\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"PD_SPR_AVS\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"PD_PPS_SPR_AVS\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@power_supply_format_property._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.power_supply_format_property = private unnamed_addr constant [29 x i8] c"power_supply_format_property\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"driver failed to report `%s' property: %zd\0A\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"POWER_SUPPLY_%s=%s\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.146 = private unnamed_addr constant [44 x i8] c"driver reporting unavailable enum value %d\0A\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"inhibit-charge\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"inhibit-charge-awake\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"force-discharge\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"Trickle\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"Adaptive\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"Long Life\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"Bypass\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable_power_supply_charge_behaviour_parse_453, ptr @__UNIQUE_ID_addressable_power_supply_charge_behaviour_show_452, ptr @__UNIQUE_ID_addressable_power_supply_charge_types_parse_455, ptr @__UNIQUE_ID_addressable_power_supply_charge_types_show_454], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @power_supply_init_attrs() local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %string_lower.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %string_lower.exit ] ; 4 uses
  %i.a = getelementptr [88 x i8], ptr @power_supply_attrs, i64 %indvars.iv ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.d = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_supply_init_attrs, i32 noundef %i.c) #8 ; 0 uses
  %i.e = getelementptr i8, ptr %i.a, i64 8
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.e, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.c) #9 ; 0 uses
  br label %string_lower.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.03.i = phi ptr [ %i.g, %bb.d ], [ %i.n, %bb.e ] ; 3 uses
  %i.h = load i8, ptr %.03.i, align 1             ; 2 uses
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr i8, ptr @_ctype, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = shl i8 %i.k, 5
  %i.m = and i8 %i.l, 32
  %spec.select.i.i = add i8 %i.m, %i.h            ; 2 uses
  %i.n = getelementptr i8, ptr %.03.i, i64 1
  store i8 %spec.select.i.i, ptr %.03.i, align 1
  %.not.i = icmp eq i8 %spec.select.i.i, 0
  br i1 %.not.i, label %string_lower.exit, label %bb.e, !llvm.loop !14

string_lower.exit:                                ; preds = %bb.e, %bb.c
  %i.o = getelementptr i8, ptr %i.a, i64 40       ; 2 uses
  %i.p = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.a, i64 56
  store ptr @power_supply_show_property, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.a, i64 64
  store ptr @power_supply_store_property, ptr %i.r, align 8
  %i.s = getelementptr [8 x i8], ptr @__power_supply_attrs, i64 %indvars.iv
  store ptr %i.o, ptr %i.s, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 79
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !15

bb.f:                                             ; preds = %string_lower.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_supply_show_property(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @power_supply_format_property(ptr noundef %0, i1 noundef zeroext false, ptr noundef %1, ptr noundef %2) #10, !srcloc !16
  ret i64 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_supply_store_property(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %4 = alloca %union.power_supply_propval, align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 -48
  %i.d = getelementptr i8, ptr %1, i64 -40
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %i.e, ptrtoint (ptr @power_supply_attrs to i64)
  %i.g = sdiv exact i64 %i.f, 88
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !11
  %i.i = getelementptr i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  %i.o = tail call i32 @__sysfs_match_string(ptr noundef %i.m, i64 noundef range(i64 1, 2147483648) %i.n, ptr noundef %2) #9 ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.thread33, label %.preheader.i

.thread33:                                        ; preds = %bb.b
  %5 = zext nneg i32 %i.o to i64
  br label %.loopexit

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.021.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %.021.i
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef %i.r, i64 noundef 32) #9 ; 0 uses
  %i.t = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.u = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.v = add nuw nsw i64 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.n
  br i1 %exitcond.not.i, label %.thread, label %.preheader.i, !llvm.loop !17

.thread:                                          ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !annotation !11
  %i.w = call i32 @kstrtoll(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp sgt i32 %i.w, -1
  %i.z = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %i.y, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.preheader.i, %.thread33, %.thread
  %.2 = phi i64 [ %i.z, %.thread ], [ %5, %.thread33 ], [ %.021.i, %.preheader.i ]
  %i.aa = trunc i64 %.2 to i32
  store i32 %i.aa, ptr %4, align 8
  %i.ab = call i32 @power_supply_set_property(ptr noundef %i.c, i32 noundef %i.h, ptr noundef nonnull %4) #9 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = sext i32 %i.ab to i64
  %spec.select = select i1 %i.ac, i64 %i.ad, i64 %3
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %.thread
  %.1 = phi i64 [ %spec.select, %.loopexit ], [ %i.x, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @power_supply_uevent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -48        ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not39 = icmp eq ptr %i.b, null
  br i1 %.not39, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %i.c) #9 ; 2 uses
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 887
  %i.f = load i8, ptr %i.e, align 1, !range !19, !noundef !20
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @get_zeroed_page_noprof(i32 noundef 3264) #9 ; 3 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 7 uses
  %.not41 = icmp eq i64 %i.h, 0
  br i1 %.not41, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @power_supply_attrs, i64 5800), align 8 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %or.cond5.i = icmp ult i32 %i.l, %i.m
  %or.cond.i = select i1 %i.n, i1 %or.cond5.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @power_supply_attrs, i64 5792), align 16
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.141, ptr noundef %i.r) #9
  br label %power_supply_format_property.exit

bb.h:                                             ; preds = %bb.f
  %i.t = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.142, i32 noundef %i.l) #9
  br label %power_supply_format_property.exit

power_supply_format_property.exit:                ; preds = %bb.g, %bb.h
  %.0.i47.in = phi i32 [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  switch i32 %.0.i47.in, label %bb.i [
    i32 -19, label %.preheader.preheader
    i32 -22, label %.preheader.preheader
    i32 -61, label %.preheader.preheader
  ]

bb.i:                                             ; preds = %power_supply_format_property.exit
  %i.u = icmp slt i32 %.0.i47.in, 0
  br i1 %i.u, label %add_prop_uevent.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 10) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %add_prop_uevent.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.v, align 1
  br label %add_prop_uevent.exit

add_prop_uevent.exit:                             ; preds = %bb.j, %bb.k
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @power_supply_attrs, i64 5720), align 8
  %i.x = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.143, ptr noundef %i.w, ptr noundef nonnull %i.i) #9 ; 2 uses
  %.not42 = icmp eq i32 %i.x, 0
  br i1 %.not42, label %.preheader.preheader, label %add_prop_uevent.exit.thread

.preheader.preheader:                             ; preds = %power_supply_format_property.exit, %power_supply_format_property.exit, %power_supply_format_property.exit, %add_prop_uevent.exit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %add_prop_uevent.exit46.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %add_prop_uevent.exit46.thread ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.y = getelementptr [88 x i8], ptr @power_supply_attrs, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 40
  %i.aa = tail call fastcc i64 @power_supply_format_property(ptr noundef %0, i1 noundef zeroext true, ptr noundef %i.z, ptr noundef nonnull %i.i) #10, !srcloc !21
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  switch i32 %i.ab, label %bb.l [
    i32 -19, label %add_prop_uevent.exit46.thread
    i32 -22, label %add_prop_uevent.exit46.thread
    i32 -61, label %add_prop_uevent.exit46.thread
  ]

bb.l:                                             ; preds = %.preheader
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %add_prop_uevent.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 10) #9 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ad, null
  br i1 %.not.i45, label %add_prop_uevent.exit46, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.ad, align 1
  br label %add_prop_uevent.exit46

add_prop_uevent.exit46:                           ; preds = %bb.m, %bb.n
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.143, ptr noundef %i.ae, ptr noundef nonnull %i.i) #9 ; 2 uses
  %.not43 = icmp eq i32 %i.af, 0
  br i1 %.not43, label %add_prop_uevent.exit46.thread, label %add_prop_uevent.exit.thread

add_prop_uevent.exit46.thread:                    ; preds = %.preheader, %.preheader, %.preheader, %add_prop_uevent.exit46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 79
  br i1 %exitcond.not, label %add_prop_uevent.exit.thread, label %.preheader, !llvm.loop !18

add_prop_uevent.exit.thread:                      ; preds = %bb.l, %add_prop_uevent.exit46.thread, %add_prop_uevent.exit46, %bb.i, %add_prop_uevent.exit
  %.1 = phi i32 [ %i.x, %add_prop_uevent.exit ], [ %.0.i47.in, %bb.i ], [ %i.ab, %bb.l ], [ 0, %add_prop_uevent.exit46.thread ], [ %i.af, %add_prop_uevent.exit46 ]
  tail call void @free_pages(i64 noundef %i.h, i32 noundef 0) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %add_prop_uevent.exit.thread
  %.0 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.c ], [ %.1, %add_prop_uevent.exit.thread ], [ 0, %bb.d ], [ 0, %bb.b ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @get_zeroed_page_noprof(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @power_supply_charge_behaviour_show(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @power_supply_show_enum_with_available(ptr noundef %0, ptr noundef nonnull @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 noundef 4, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10, !srcloc !12
  ret i64 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @power_supply_show_enum_with_available(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 4, 13) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.b = zext i32 %3 to i64
  %i.c = zext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.a
  %indvars.iv.ph = phi i64 [ %indvars.iv.next35, %.thread ], [ 0, %bb.a ]
  %.02631.ph = phi i64 [ %i.s, %.thread ], [ 0, %bb.a ]
  %.02730.ph = phi i1 [ true, %.thread ], [ false, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.ph, %.outer ] ; 5 uses
  %.02631 = phi i64 [ %.1, %bb.e ], [ %.02631.ph, %.outer ] ; 5 uses
  %i.d = shl nuw i64 1, %indvars.iv
  %i.e = and i64 %i.d, %i.b
  %i.f = icmp ne i64 %i.e, 0                      ; 2 uses
  %i.g = icmp eq i64 %indvars.iv, %i.c
  %i.h = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef %i.i, i64 noundef 32) #9 ; 0 uses
  %i.k = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc i64 %.02631 to i32
  %i.m = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %5, i32 noundef %i.l, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.a) #9
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %.02631, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %.02631, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !22

.thread:                                          ; preds = %bb.b
  %i.p = trunc i64 %.02631 to i32
  %i.q = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %5, i32 noundef %i.p, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.a) #9
  %i.r = sext i32 %i.q to i64
  %i.s = add i64 %.02631, %i.r                    ; 2 uses
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not36 = icmp eq i64 %indvars.iv.next35, %wide.trip.count
  br i1 %exitcond.not36, label %.thread39, label %.outer, !llvm.loop !22

bb.f:                                             ; preds = %bb.e
  br i1 %.02730.ph, label %.thread39, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.146, i32 noundef %4) #8
  br label %bb.i

.thread39:                                        ; preds = %.thread, %bb.f
  %.13842 = phi i64 [ %.1, %bb.f ], [ %i.s, %.thread ] ; 3 uses
  %.not = icmp eq i64 %.13842, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread39
  %i.t = getelementptr i8, ptr %5, i64 %.13842
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  store i8 10, ptr %i.u, align 1
  br label %bb.i

bb.i:                                             ; preds = %.thread39, %bb.h, %bb.g
  %.029 = phi i64 [ -22, %bb.g ], [ %.13842, %bb.h ], [ 0, %.thread39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.029
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @power_supply_charge_behaviour_parse(i32 noundef %0, ptr noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @__sysfs_match_string(ptr noundef nonnull @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i64 noundef 4, ptr noundef %1) #9 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  %i.c = zext i32 %0 to i64
  %i.d = zext nneg i32 %i.a to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = and i64 %i.e, %i.c
  %.not = icmp ne i64 %i.f, 0
  %i.g = select i1 %i.b, i1 true, i1 %.not
  %.0 = select i1 %i.g, i32 %i.a, i32 -22
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @power_supply_charge_types_show(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @power_supply_show_enum_with_available(ptr noundef %0, ptr noundef nonnull @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 noundef 9, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10, !srcloc !13
  ret i64 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, -2147483648) i32 @power_supply_charge_types_parse(i32 noundef %0, ptr noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 54 uses
  %i.b = tail call i32 @__sysfs_match_string(ptr noundef nonnull @POWER_SUPPLY_CHARGE_TYPE_TEXT, i64 noundef 9, ptr noundef %1) #9 ; 3 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %power_supply_match_string.exit.thread12, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.d = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.84, i64 noundef 32) #9 ; 0 uses
  %i.e = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.f = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.f, label %power_supply_match_string.exit, label %.preheader.i.1

power_supply_match_string.exit.thread12:          ; preds = %bb.a
  %2 = zext i32 %0 to i64
  %3 = zext nneg i32 %i.b to i64
  %4 = shl nuw i64 1, %3
  %5 = and i64 %4, %2
  %.not14 = icmp eq i64 %5, 0
  %.15 = select i1 %.not14, i32 -22, i32 %i.b
  br label %power_supply_match_string.exit.thread

.preheader.i.1:                                   ; preds = %.preheader.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.g = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.151, i64 noundef 32) #9 ; 0 uses
  %i.h = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.i = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.i, label %power_supply_match_string.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.j = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.152, i64 noundef 32) #9 ; 0 uses
  %i.k = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.l = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.l, label %power_supply_match_string.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.m = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.153, i64 noundef 32) #9 ; 0 uses
  %i.n = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.o = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.o, label %power_supply_match_string.exit, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %.preheader.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.p = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.154, i64 noundef 32) #9 ; 0 uses
  %i.q = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.r = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.r, label %power_supply_match_string.exit, label %.preheader.i.5

.preheader.i.5:                                   ; preds = %.preheader.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.s = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.155, i64 noundef 32) #9 ; 0 uses
  %i.t = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.u = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.u, label %power_supply_match_string.exit, label %.preheader.i.6

.preheader.i.6:                                   ; preds = %.preheader.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.v = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.156, i64 noundef 32) #9 ; 0 uses
  %i.w = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.x = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.x, label %power_supply_match_string.exit, label %.preheader.i.7

.preheader.i.7:                                   ; preds = %.preheader.i.6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.y = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.157, i64 noundef 32) #9 ; 0 uses
  %i.z = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.aa = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.aa, label %power_supply_match_string.exit, label %.preheader.i.8

.preheader.i.8:                                   ; preds = %.preheader.i.7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  %i.ab = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.158, i64 noundef 32) #9 ; 0 uses
  %i.ac = call ptr @strreplace(ptr noundef nonnull %i.a, i8 noundef zeroext 32, i8 noundef zeroext 95) #9 ; 0 uses
  %i.ad = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.a, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.ad, label %power_supply_match_string.exit, label %power_supply_match_string.exit.thread

power_supply_match_string.exit:                   ; preds = %.preheader.i.8, %.preheader.i.7, %.preheader.i.6, %.preheader.i.5, %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i.preheader
  %.021.i.lcssa = phi i64 [ 0, %.preheader.i.preheader ], [ 1, %.preheader.i.1 ], [ 2, %.preheader.i.2 ], [ 3, %.preheader.i.3 ], [ 4, %.preheader.i.4 ], [ 5, %.preheader.i.5 ], [ 6, %.preheader.i.6 ], [ 7, %.preheader.i.7 ], [ 8, %.preheader.i.8 ] ; 2 uses
  %6 = trunc nuw nsw i64 %.021.i.lcssa to i32
  %i.ae = zext i32 %0 to i64
  %i.af = shl nuw nsw i64 1, %.021.i.lcssa
  %i.ag = and i64 %i.af, %i.ae
  %.not = icmp eq i64 %i.ag, 0
  %. = select i1 %.not, i32 -22, i32 %6
  br label %power_supply_match_string.exit.thread

power_supply_match_string.exit.thread:            ; preds = %.preheader.i.8, %power_supply_match_string.exit, %power_supply_match_string.exit.thread12
  %7 = phi i32 [ %.15, %power_supply_match_string.exit.thread12 ], [ %., %power_supply_match_string.exit ], [ -22, %.preheader.i.8 ]
  ret i32 %7
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @power_supply_sysfs_add_extension(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call i32 @sysfs_add_link_to_group(ptr noundef %i.a, ptr noundef nonnull @.str.3, ptr noundef %2, ptr noundef %i.b) #9
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_add_link_to_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @power_supply_sysfs_remove_extension(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %1, align 8
  tail call void @sysfs_remove_link_from_group(ptr noundef %i.a, ptr noundef nonnull @.str.3, ptr noundef %i.b) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sysfs_remove_link_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext range(i16 0, 421) i16 @power_supply_attr_is_visible(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -48        ; 2 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr [88 x i8], ptr @power_supply_attrs, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 65
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 904        ; 2 uses
  tail call void @down_read(ptr noundef %i.f) #9
  %i.g = tail call zeroext i1 @power_supply_has_property(ptr noundef %i.a, i32 noundef %2) #9
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @power_supply_property_is_writeable(ptr noundef %i.a, i32 noundef %2) #9
  %i.i = icmp sgt i32 %i.h, 0
  %spec.select = select i1 %i.i, i16 420, i16 292
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.017 = phi i16 [ %spec.select, %bb.d ], [ 0, %bb.c ]
  tail call void @up_read(ptr noundef %i.f) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.1 = phi i16 [ 0, %bb.a ], [ %.017, %bb.e ], [ 292, %bb.b ]
  ret i16 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @power_supply_has_property(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @power_supply_property_is_writeable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @power_supply_format_property(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %4 = alloca %union.power_supply_propval, align 8 ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 -48        ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 -40
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = sub i64 %i.c, ptrtoint (ptr @power_supply_attrs to i64)
  %i.e = sdiv exact i64 %i.d, 88
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !11
  %i.g = icmp eq i32 %i.f, 65
  br i1 %i.g, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %4, align 8
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @power_supply_get_property(ptr noundef %i.a, i32 noundef %i.f, ptr noundef nonnull %4) #9 ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 7 uses
  %i.m = icmp slt i32 %i.k, 0
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  switch i32 %i.k, label %bb.d [
    i32 -61, label %power_supply_show_charge_behaviour.exit
    i32 -11, label %power_supply_show_charge_behaviour.exit
    i32 -19, label %power_supply_show_charge_behaviour.exit
    i32 -22, label %power_supply_show_charge_behaviour.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @___ratelimit(ptr noundef nonnull @power_supply_format_property._rs, ptr noundef nonnull @__func__.power_supply_format_property) #9
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %power_supply_show_charge_behaviour.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.140, ptr noundef %i.o, i64 noundef %i.l) #8
  br label %power_supply_show_charge_behaviour.exit

bb.f:                                             ; preds = %bb.b
  switch i32 %i.f, label %bb.s [
    i32 66, label %bb.g
    i32 38, label %bb.h
    i32 2, label %bb.m
    i32 76, label %bb.r
    i32 77, label %bb.r
    i32 78, label %bb.r
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load i32, ptr %4, align 8
  %i.t = call fastcc i64 @power_supply_show_enum_with_available(ptr noundef %0, ptr noundef nonnull @POWER_SUPPLY_USB_TYPE_TEXT, i32 noundef 12, i32 noundef %i.r, i32 noundef %i.s, ptr noundef %3) #10, !srcloc !25
  br label %power_supply_show_charge_behaviour.exit

bb.h:                                             ; preds = %bb.f
  br i1 %1, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 904        ; 3 uses
  call void @down_read(ptr noundef %i.u) #9
  %i.v = getelementptr i8, ptr %0, i64 936        ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.021.in.i = phi ptr [ %i.v, %bb.i ], [ %.021.i, %bb.k ]
  %.021.i = load ptr, ptr %.021.in.i, align 8     ; 4 uses
  %.not.i = icmp eq ptr %.021.i, %i.v
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %.021.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call zeroext i1 @power_supply_ext_has_property(ptr noundef %i.x, i32 noundef 38) #9
  br i1 %i.y, label %.thread.i, label %bb.j, !llvm.loop !23

.thread.i:                                        ; preds = %bb.k
  %i.z = getelementptr i8, ptr %.021.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = load i32, ptr %4, align 8
  %i.af = call fastcc i64 @power_supply_show_enum_with_available(ptr noundef %0, ptr noundef nonnull @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 noundef 4, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef %3) #10, !srcloc !12
  call void @up_read(ptr noundef %i.u) #9
  br label %power_supply_show_charge_behaviour.exit

bb.l:                                             ; preds = %bb.j
  call void @up_read(ptr noundef %i.u) #9
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 12
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = zext i8 %i.ai to i32
  %i.ak = load i32, ptr %4, align 8
  %i.al = call fastcc i64 @power_supply_show_enum_with_available(ptr noundef %0, ptr noundef nonnull @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 noundef 4, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef %3) #10, !srcloc !12
  br label %power_supply_show_charge_behaviour.exit

bb.m:                                             ; preds = %bb.f
  br i1 %1, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %4, align 8               ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 904       ; 3 uses
  call void @down_read(ptr noundef %i.an) #9
  %i.ao = getelementptr i8, ptr %0, i64 936       ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.021.in.i47 = phi ptr [ %i.ao, %bb.n ], [ %.021.i48, %bb.p ]
  %.021.i48 = load ptr, ptr %.021.in.i47, align 8 ; 4 uses
  %.not.i49 = icmp eq ptr %.021.i48, %i.ao
  br i1 %.not.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
