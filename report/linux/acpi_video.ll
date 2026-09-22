Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/acpi_video?download=true
inline.NumInlined: 120
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_video_handles_brightness_key_presses: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad acpi_video_handles_brightness_key_presses ; .previous"
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_video__644_2233_acpi_video_init6:\09\09\09"
    ".long\09acpi_video_init - .\09"
    ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.auxiliary_device_id = type { [40 x i8], i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.13 }
%struct.anon.13 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.acpi_buffer = type { i64, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.acpi_object = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i64, i32 }
%struct.acpi_object_list = type { i32, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_modinfo_622 = internal constant [26 x i8] c"video.author=Bruno Ducrot\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_623 = internal constant [36 x i8] c"video.description=ACPI Video Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_624 = internal constant [30 x i8] c"video.file=drivers/acpi/video\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_625 = internal constant [18 x i8] c"video.license=GPL\00", section ".modinfo", align 1
@__param_str_brightness_switch_enabled = internal constant [32 x i8] c"video.brightness_switch_enabled\00", align 16
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@brightness_switch_enabled = internal global i8 1, align 1
@__param_brightness_switch_enabled = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_brightness_switch_enabled, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @brightness_switch_enabled } }, section "__param", align 8
@__UNIQUE_ID_modinfo_626 = internal constant [46 x i8] c"video.parmtype=brightness_switch_enabled:bool\00", section ".modinfo", align 1
@__param_str_allow_duplicates = internal constant [23 x i8] c"video.allow_duplicates\00", align 16
@allow_duplicates = internal global i8 0, align 1
@__param_allow_duplicates = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_allow_duplicates, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @allow_duplicates } }, section "__param", align 8
@__UNIQUE_ID_modinfo_627 = internal constant [37 x i8] c"video.parmtype=allow_duplicates:bool\00", section ".modinfo", align 1
@__param_str_report_key_events = internal constant [24 x i8] c"video.report_key_events\00", align 16
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@report_key_events = internal global i32 -1, align 4
@__param_report_key_events = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_report_key_events, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @report_key_events } }, section "__param", align 8
@__UNIQUE_ID_modinfo_628 = internal constant [37 x i8] c"video.parmtype=report_key_events:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_629 = internal constant [87 x i8] c"video.parm=report_key_events:0: none, 1: output changes, 2: brightness changes, 3: all\00", section ".modinfo", align 1
@__param_str_hw_changes_brightness = internal constant [28 x i8] c"video.hw_changes_brightness\00", align 16
@hw_changes_brightness = internal global i32 -1, align 4
@__param_hw_changes_brightness = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_hw_changes_brightness, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @hw_changes_brightness } }, section "__param", align 8
@__UNIQUE_ID_modinfo_630 = internal constant [41 x i8] c"video.parmtype=hw_changes_brightness:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_631 = internal constant [166 x i8] c"video.parm=hw_changes_brightness:Set this to 1 on buggy hw which changes the brightness itself when a hotkey is pressed: -1: auto, 0: normal 1: hw-changes-brightness\00", section ".modinfo", align 1
@__param_str_device_id_scheme = internal constant [23 x i8] c"video.device_id_scheme\00", align 16
@device_id_scheme = internal global i8 0, align 1
@__param_device_id_scheme = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_device_id_scheme, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @device_id_scheme } }, section "__param", align 8
@__UNIQUE_ID_modinfo_632 = internal constant [37 x i8] c"video.parmtype=device_id_scheme:bool\00", section ".modinfo", align 1
@__param_str_only_lcd = internal constant [15 x i8] c"video.only_lcd\00", align 1
@only_lcd = internal global i32 0, align 4
@__param_only_lcd = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_only_lcd, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @only_lcd } }, section "__param", align 8
@__UNIQUE_ID_modinfo_633 = internal constant [28 x i8] c"video.parmtype=only_lcd:int\00", section ".modinfo", align 1
@__mod_device_table__kmod_video__auxiliary__video_bus_auxiliary_id_table = internal constant [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [40 x i8] c"acpi.video_bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.auxiliary_device_id zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid data\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Too many duplicates in _BCL package\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Found unordered _BCL package\00", align 1
@__UNIQUE_ID_addressable_acpi_video_get_levels_634 = internal global ptr @acpi_video_get_levels, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_acpi_video_get_edid_635 = internal global ptr @acpi_video_get_edid, section ".discard.addressable", align 8
@register_count_mutex = internal global %struct.mutex zeroinitializer, align 8
@register_count = internal unnamed_addr global i1 false, align 4
@video_dmi_table = internal constant [12 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @video_set_bqc_offset, ptr @.str.10, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Aspire 5720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @video_set_bqc_offset, ptr @.str.11, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Aspire 5710Z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @video_set_bqc_offset, ptr @.str.12, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"EMACHINES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"eMachines E510\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @video_set_bqc_offset, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Aspire 5315\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @video_set_bqc_offset, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Aspire 7720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @video_set_device_id_scheme, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"FUJITSU SIEMENS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ESPRIMO Mobile M9410\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @video_enable_only_lcd, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"FUJITSU SIEMENS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ESPRIMO Mobile M9410\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @video_set_report_key_events, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Vostro V131\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i64 1 to ptr) }, %struct.dmi_system_id { ptr @video_set_report_key_events, ptr @.str.17, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Vostro 3350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i64 2 to ptr) }, %struct.dmi_system_id { ptr @video_set_report_key_events, ptr @.str.18, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"COLORFUL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"X15 AT 23\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i64 2 to ptr) }, %struct.dmi_system_id { ptr @video_hw_changes_brightness, ptr @.str.19, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Packard Bell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"EasyNote MZ35\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16
@acpi_video_bus = internal global %struct.auxiliary_driver { ptr @acpi_video_bus_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, ptr @__mod_device_table__kmod_video__auxiliary__video_bus_auxiliary_id_table }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@__UNIQUE_ID_addressable_acpi_video_register_640 = internal global ptr @acpi_video_register, section ".discard.addressable", align 8
@may_report_brightness_keys = internal unnamed_addr global i1 false, align 1
@__UNIQUE_ID_addressable_acpi_video_unregister_641 = internal global ptr @acpi_video_unregister, section ".discard.addressable", align 8
@video_list_lock = internal global %struct.mutex zeroinitializer, align 8
@video_bus_head = internal global %struct.list_head { ptr @video_bus_head, ptr @video_bus_head }, align 8
@__UNIQUE_ID_addressable_acpi_video_register_backlight_642 = internal global ptr @acpi_video_register_backlight, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_acpi_video_handles_brightness_key_presses_643 = internal global ptr @acpi_video_handles_brightness_key_presses, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_acpi_video_init_645 = internal global ptr @acpi_video_init, section ".discard.addressable", align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"_BCL\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Invalid _BCL data\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@__const.acpi_video_device_EDID.arg0 = private unnamed_addr constant { i32, [20 x i8] } { i32 1, [20 x i8] zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"_DDC\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Acer Aspire 5720\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Acer Aspire 5710Z\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"eMachines E510\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Acer Aspire 5315\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Acer Aspire 7720\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"ESPRIMO Mobile M9410\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Dell Vostro V131\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Dell Vostro 3350\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"COLORFUL X15 AT 23\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Packard Bell EasyNote MZ35\00", align 1
@bqc_offset_aml_bug_workaround = internal unnamed_addr global i1 false, align 4
@acpi_video_bus_probe.probe_lock = internal global %struct.mutex zeroinitializer, align 8
@acpi_video_bus_probe.instance = internal unnamed_addr global i32 0, align 4
@.str.20 = private unnamed_addr constant [184 x i8] c"\016ACPI: video: [Firmware Bug]: Duplicate ACPI video bus devices for the same VGA controller, please try module parameter \22video.allow_duplicates=1\22if the current driver doesn't work.\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"acpi_video_bus_free\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"VID\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"VGA\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"\016ACPI: video: Video Device [%s] (multi-head: %s  rom: %s  post: %s)\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"acpi_video_bus_del\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"acpi_video_bus_remove_notify_handler\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"_DOS\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"_DOD\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"_ROM\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"_GPD\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"_SPD\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"_VPO\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"\016ACPI: video: [Firmware Bug]: ACPI(%s) defines _DOD but not _DOS\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"acpi_video_bus_put_devices\00", align 1
@__const.acpi_video_device_enumerate.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.36 = private unnamed_addr constant [28 x i8] c"_DOD evaluation failed: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Invalid _DOD data\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Invalid _DOD data in element %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Failed to switch brightness\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"_BQC\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"_BCQ\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s returned an invalid level\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"%s evaluation failed\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"_BCM\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"_BCM evaluation failed\0A\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"Current brightness invalid\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"_BCQ is used instead of _BQC\0A\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"%s/video/input0\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"Video Bus\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"Error installing notify handler\0A\00", align 1
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@acpi_video_dev_register_backlight.count = internal unnamed_addr global i32 0, align 4
@.str.56 = private unnamed_addr constant [13 x i8] c"acpi_video%d\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"LCD\00", align 1
@video_cooling_ops = internal constant %struct.thermal_cooling_device_ops { ptr @video_get_max_state, ptr @video_get_cur_state, ptr @video_set_cur_state, ptr null, ptr null, ptr null }, align 8
@.str.58 = private unnamed_addr constant [32 x i8] c"registered as cooling_device%d\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"\016ACPI: video: sysfs link creation failed\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"\016ACPI: video: Reverse sysfs link creation failed\0A\00", align 1
@acpi_backlight_ops = internal constant { i32, [4 x i8], ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @acpi_video_set_brightness, ptr @acpi_video_get_brightness, ptr null }, align 8
@.str.62 = private unnamed_addr constant [27 x i8] c"Restoring backlight state\0A\00", align 1
@acpi_disabled = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_addressable_acpi_video_get_edid_635, ptr @__UNIQUE_ID_addressable_acpi_video_get_levels_634, ptr @__UNIQUE_ID_addressable_acpi_video_handles_brightness_key_presses_643, ptr @__UNIQUE_ID_addressable_acpi_video_init_645, ptr @__UNIQUE_ID_addressable_acpi_video_register_640, ptr @__UNIQUE_ID_addressable_acpi_video_register_backlight_642, ptr @__UNIQUE_ID_addressable_acpi_video_unregister_641, ptr @__UNIQUE_ID_modinfo_622, ptr @__UNIQUE_ID_modinfo_623, ptr @__UNIQUE_ID_modinfo_624, ptr @__UNIQUE_ID_modinfo_625, ptr @__UNIQUE_ID_modinfo_626, ptr @__UNIQUE_ID_modinfo_627, ptr @__UNIQUE_ID_modinfo_628, ptr @__UNIQUE_ID_modinfo_629, ptr @__UNIQUE_ID_modinfo_630, ptr @__UNIQUE_ID_modinfo_631, ptr @__UNIQUE_ID_modinfo_632, ptr @__UNIQUE_ID_modinfo_633, ptr @__mod_device_table__kmod_video__auxiliary__video_bus_auxiliary_id_table, ptr @__param_allow_duplicates, ptr @__param_brightness_switch_enabled, ptr @__param_device_id_scheme, ptr @__param_hw_changes_brightness, ptr @__param_only_lcd, ptr @__param_report_key_events, ptr @acpi_video_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @acpi_video_get_levels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.acpi_buffer, align 8        ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.acpi_video_device_enumerate.buffer, i64 16, i1 false)
  %i.c = call i32 @acpi_evaluate_object(ptr noundef %i.b, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef nonnull %3) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %acpi_video_device_lcd_query_levels.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 9 uses
  %.not12.i = icmp eq ptr %i.e, null
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 8
  %.not13.i = icmp eq i32 %i.f, 4
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str, ptr noundef %i.b, ptr noundef nonnull @.str.6) #21
  %i.g = load ptr, ptr %i.d, align 8
  call void @kfree(ptr noundef %i.g) #21
  br label %acpi_video_device_lcd_query_levels.exit.thread

acpi_video_device_lcd_query_levels.exit.thread:   ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.h = getelementptr i8, ptr %i.e, i64 4        ; 4 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ult i32 %i.i, 2
  br i1 %i.j, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.l = call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.k, i32 noundef 3520, i64 noundef range(i64 0, 721554505561) 24) #22 ; 7 uses
  %.not93 = icmp eq ptr %i.l, null
  br i1 %.not93, label %bb.w, label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.f
  %i.m = load i32, ptr %i.h, align 4
  %i.n = add i32 %i.m, 2
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 721554505561) %i.p, i32 noundef 3264) #23 ; 2 uses
  %i.r = getelementptr i8, ptr %i.l, i64 8        ; 8 uses
  store ptr %i.q, ptr %i.r, align 8
  %.not94 = icmp eq ptr %i.q, null
  br i1 %.not94, label %bb.g, label %.preheader111

.preheader111:                                    ; preds = %_kmalloc_noprof.exit
  %i.s = load i32, ptr %i.h, align 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader111
  %i.t = getelementptr i8, ptr %i.e, i64 8
  br label %bb.h

bb.g:                                             ; preds = %_kmalloc_noprof.exit
  call void @kfree(ptr noundef nonnull %i.l) #21
  br label %bb.w

.preheader:                                       ; preds = %bb.m
  %i.u = icmp sgt i32 %.184, 2
  br i1 %i.u, label %.lr.ph118, label %._crit_edge.thread

.lr.ph118:                                        ; preds = %.preheader
  %i.v = load ptr, ptr %i.r, align 8              ; 5 uses
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %wide.trip.count = zext nneg i32 %.184 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.z = icmp eq i32 %.184, 3
  br i1 %i.z, label %.epil.preheader, label %.lr.ph118.new

.lr.ph118.new:                                    ; preds = %.lr.ph118
  %i.aa = and i64 %wide.trip.count, 2147483646
  %i.ab = add nsw i64 %i.aa, -4
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %.0114 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.m ] ; 2 uses
  %.079113 = phi i32 [ 0, %.lr.ph ], [ %.281, %bb.m ] ; 3 uses
  %.083112 = phi i32 [ 0, %.lr.ph ], [ %.184, %bb.m ] ; 6 uses
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = sext i32 %.0114 to i64
  %i.ae = getelementptr [24 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not98 = icmp eq i32 %i.af, 1
  br i1 %.not98, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str, ptr noundef %i.ag, ptr noundef nonnull @.str.1) #21
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = icmp sgt i32 %.083112, 2
  %.pre = load ptr, ptr %i.r, align 8             ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = zext nneg i32 %.083112 to i64
  %i.am = getelementptr [4 x i8], ptr %.pre, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, %i.aj
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = sext i32 %.083112 to i64                ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %.pre, i64 %i.aq
  store i32 %i.aj, ptr %i.ar, align 4
  %i.as = load ptr, ptr %i.r, align 8
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.aq
  %i.au = load i32, ptr %i.at, align 4
  %spec.select = call i32 @llvm.smax.i32(i32 %i.au, i32 %.079113)
  %i.av = add i32 %.083112, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.184 = phi i32 [ %.083112, %bb.i ], [ %.083112, %bb.k ], [ %i.av, %bb.l ] ; 9 uses
  %.281 = phi i32 [ %.079113, %bb.i ], [ %.079113, %bb.k ], [ %spec.select, %bb.l ] ; 5 uses
  %i.aw = add nuw i32 %.0114, 1                   ; 2 uses
  %i.ax = load i32, ptr %i.h, align 4
  %i.ay = icmp ult i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %.preheader, !llvm.loop !17

bb.n:                                             ; preds = %bb.n, %.lr.ph118.new
  %indvars.iv = phi i64 [ 2, %.lr.ph118.new ], [ %indvars.iv.next.1, %bb.n ] ; 3 uses
  %.086116 = phi i32 [ 0, %.lr.ph118.new ], [ %.288.1, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph118.new ], [ %niter.next.1, %bb.n ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = icmp eq i32 %i.ba, %i.w
  %i.bc = zext i1 %i.bb to i32
  %spec.select99 = add i32 %.086116, %i.bc
  %i.bd = icmp eq i32 %i.ba, %i.y
  %i.be = zext i1 %i.bd to i32
  %.288 = add i32 %spec.select99, %i.be
  %i.bf = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, %i.w
  %i.bj = zext i1 %i.bi to i32
  %spec.select99.1 = add i32 %.288, %i.bj
  %i.bk = icmp eq i32 %i.bh, %i.y
  %i.bl = zext i1 %i.bk to i32
  %.288.1 = add i32 %spec.select99.1, %i.bl       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ab
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !18

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph118
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph118 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.086116.epil.init = phi i32 [ 0, %.lr.ph118 ], [ %.288.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod145 = trunc i32 %.184 to i1
  call void @llvm.assume(i1 %lcmp.mod145)
  %i.bm = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv.epil.init
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, %i.w
  %i.bp = zext i1 %i.bo to i32
  %spec.select99.epil = add i32 %.086116.epil.init, %i.bp
  %i.bq = icmp eq i32 %i.bn, %i.y
  %i.br = zext i1 %i.bq to i32
  %.288.epil = add i32 %spec.select99.epil, %i.br
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.288.lcssa = phi i32 [ %.288.1, %._crit_edge.unr-lcssa ], [ %.288.epil, %.epil.preheader ] ; 3 uses
  %i.bs = icmp slt i32 %.288.lcssa, 2
  br i1 %i.bs, label %._crit_edge.thread, label %bb.o

._crit_edge.thread:                               ; preds = %.preheader111, %.preheader, %._crit_edge
  %.086.lcssa143 = phi i32 [ %.288.lcssa, %._crit_edge ], [ 0, %.preheader ], [ 0, %.preheader111 ] ; 2 uses
  %.083.lcssa135142 = phi i32 [ %.184, %._crit_edge ], [ %.184, %.preheader ], [ 0, %.preheader111 ] ; 2 uses
  %.079.lcssa136141 = phi i32 [ %.281, %._crit_edge ], [ %.281, %.preheader ], [ 0, %.preheader111 ]
  %i.bt = sub i32 2, %.086.lcssa143               ; 4 uses
  %i.bu = getelementptr i8, ptr %i.l, i64 16      ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8
  %i.bw = or i8 %i.bv, 1
  store i8 %i.bw, ptr %i.bu, align 8
  %i.bx = add i32 %.083.lcssa135142, 1
  %i.by = sub i32 %i.bx, %.086.lcssa143           ; 4 uses
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %._crit_edge.thread
  %4 = zext nneg i32 %i.by to i64                 ; 4 uses
  %5 = and i64 %4, 1
  %lcmp.mod147.not.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod147.not.not, label %.lr.ph122.preheader.a, label %.lr.ph122.prol.loopexit

.lr.ph122.preheader.a:                            ; preds = %.lr.ph122.preheader
  %6 = load ptr, ptr %i.r, align 8                ; 2 uses
  %7 = sub i32 %i.by, %i.bt
  %8 = sext i32 %7 to i64
  %9 = getelementptr [4 x i8], ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [4 x i8], ptr %6, i64 %4
  store i32 %10, ptr %11, align 4
  %indvars.iv.next126.prol = add nsw i64 %4, -1
  br label %.lr.ph122.prol.loopexit

.lr.ph122.prol.loopexit:                          ; preds = %.lr.ph122.preheader.a, %.lr.ph122.preheader
  %indvars.iv125.unr = phi i64 [ %4, %.lr.ph122.preheader ], [ %indvars.iv.next126.prol, %.lr.ph122.preheader.a ]
  %12 = icmp eq i32 %i.by, 2
  br i1 %12, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.prol.loopexit, %.lr.ph122
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.a, %.lr.ph122 ], [ %indvars.iv125.unr, %.lr.ph122.prol.loopexit ] ; 5 uses
  %13 = load ptr, ptr %i.r, align 8               ; 2 uses
  %14 = trunc nuw nsw i64 %indvars.iv125 to i32
  %15 = sub i32 %14, %i.bt
  %16 = sext i32 %15 to i64
  %17 = getelementptr [4 x i8], ptr %13, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [4 x i8], ptr %13, i64 %indvars.iv125
  store i32 %18, ptr %19, align 4
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, -1 ; 2 uses
  %i.ca = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.next126 to i32
  %i.cc = sub i32 %i.cb, %i.bt
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.next126
  store i32 %i.cf, ptr %i.cg, align 4
  %indvars.iv.next126.a = add nsw i64 %indvars.iv125, -2
  %20 = icmp sgt i64 %indvars.iv125, 3
  br i1 %20, label %.lr.ph122, label %._crit_edge123, !llvm.loop !19

._crit_edge123:                                   ; preds = %.lr.ph122.prol.loopexit, %.lr.ph122, %._crit_edge.thread
  %i.ch = add i32 %i.bt, %.083.lcssa135142
  br label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %.not95 = icmp eq i32 %.288.lcssa, 2
  br i1 %.not95, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str, ptr noundef %i.ci, ptr noundef nonnull @.str.2) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %._crit_edge123
  %.079.lcssa136140 = phi i32 [ %.079.lcssa136141, %._crit_edge123 ], [ %.281, %bb.p ], [ %.281, %bb.o ] ; 3 uses
  %.285 = phi i32 [ %i.ch, %._crit_edge123 ], [ %.184, %bb.p ], [ %.184, %bb.o ] ; 3 uses
  %i.cj = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8      ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %.079.lcssa136140, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr i8, ptr %i.l, i64 16      ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = or i8 %i.co, 2
  store i8 %i.cp, ptr %i.cn, align 8
  %i.cq = add i32 %.285, -2
  %i.cr = sext i32 %i.cq to i64
  call void @sort(ptr noundef %i.ck, i64 noundef %i.cr, i64 noundef 4, ptr noundef nonnull @acpi_video_cmp_level, ptr noundef null) #21
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cs = add i32 %.285, -1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %i.cj, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4
  %.not96 = icmp eq i32 %.079.lcssa136140, %i.cv
  br i1 %.not96, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str, ptr noundef %i.cw, ptr noundef nonnull @.str.3) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %i.cx = getelementptr i8, ptr %i.l, i64 4
  store i32 %.285, ptr %i.cx, align 4
  store ptr %i.l, ptr %1, align 8
  %.not97 = icmp eq ptr %2, null
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.079.lcssa136140, ptr %2, align 4
  br label %bb.w

bb.w:                                             ; preds = %acpi_video_device_lcd_query_levels.exit.thread, %bb.f, %bb.e, %bb.u, %bb.v, %bb.g
  %.0106110 = phi ptr [ %i.e, %bb.e ], [ null, %acpi_video_device_lcd_query_levels.exit.thread ], [ %i.e, %bb.v ], [ %i.e, %bb.u ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.090 = phi i32 [ -22, %bb.e ], [ -19, %acpi_video_device_lcd_query_levels.exit.thread ], [ 0, %bb.v ], [ 0, %bb.u ], [ -12, %bb.g ], [ -12, %bb.f ]
  call void @kfree(ptr noundef %.0106110) #21
  ret i32 %.090
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal i32 @acpi_video_cmp_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, -2147483648) i32 @acpi_video_get_edid(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.acpi_buffer, align 8        ; 21 uses
  %5 = alloca %union.acpi_object, align 8         ; 21 uses
  %6 = alloca %struct.acpi_object_list, align 8   ; 22 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit45, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 600
  %.val40 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not31 = icmp eq ptr %.val40, null
  br i1 %.not31, label %.loopexit45, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr i8, ptr %.val40, i64 24    ; 2 uses
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %.not49 = icmp eq i8 %i.c, 0
  br i1 %.not49, label %.loopexit45, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr i8, ptr %.val40, i64 16
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %i.j = phi i8 [ %i.c, %.lr.ph ], [ %i.dt, %.loopexit ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  %.not32 = icmp eq ptr %i.n, null
  br i1 %.not32, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.n, i64 9
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 32
  %.not33 = icmp eq i8 %i.q, 0
  br i1 %.not33, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %1, label %bb.k [
    i32 0, label %bb.j
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 1
  %.not39 = icmp eq i8 %i.t, 0
  br i1 %.not39, label %.loopexit, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.n, i64 8
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 4
  %.not38 = icmp eq i8 %i.w, 0
  br i1 %.not38, label %.loopexit, label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.n, i64 8
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 8
  %.not37 = icmp eq i8 %i.z, 0
  br i1 %.not37, label %.loopexit, label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.n, i64 8
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = and i8 %i.ab, 2
  %.not36 = icmp eq i8 %i.ac, 0
  br i1 %.not36, label %.loopexit, label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.n, align 8
  %.not35 = icmp eq i64 %i.ad, %i.e
  br i1 %.not35, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.f, %bb.g, %bb.h, %bb.i
  %i.ae = getelementptr i8, ptr %i.n, i64 136     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @__const.acpi_video_device_enumerate.buffer, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.acpi_video_device_EDID.arg0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 1, ptr %6, align 8
  store i32 0, ptr %i.f, align 4
  store ptr %5, ptr %i.g, align 8
  store ptr null, ptr %3, align 8
  store i64 4, ptr %i.h, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i32 @acpi_evaluate_object(ptr noundef %i.ah, ptr noundef nonnull @.str.9, ptr noundef nonnull %6, ptr noundef nonnull %4) #21
  %.not30.i = icmp eq i32 %i.ai, 0
  br i1 %.not30.i, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.i, align 8             ; 8 uses
  %.not31.i = icmp eq ptr %i.aj, null
  br i1 %.not31.i, label %acpi_video_device_EDID.exit.thread43, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
