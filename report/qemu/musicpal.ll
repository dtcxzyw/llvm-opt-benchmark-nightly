Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/musicpal?download=true
inline.NumInlined: 67
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.30 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/target/arm/cpu-qom.h\00", align 1
@__func__.ARM_CPU = private unnamed_addr constant [8 x i8] c"ARM_CPU\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@musicpal_binfo = internal global { i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64, i64, i64, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i8, [7 x i8], i64, ptr, i8, [3 x i8], i32, ptr } { i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i8 0, [7 x i8] zeroinitializer, i64 0, i64 0, i64 0, i32 526, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, i64 0, i8 0, [7 x i8] zeroinitializer, i64 0, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null }, align 8
@mv88w8618_pic_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.9, ptr @.str.33, i64 1104, i64 0, ptr @mv88w8618_pic_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @mv88w8618_pic_class_init, ptr null, ptr null, ptr null }, align 8
@.str.37 = private unnamed_addr constant [13 x i8] c"musicpal-pic\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"../hw/arm/musicpal.c\00", align 1
@__func__.MV88W8618_PIC = private unnamed_addr constant [14 x i8] c"MV88W8618_PIC\00", align 1
@mv88w8618_pic_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @mv88w8618_pic_read, ptr @mv88w8618_pic_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.41 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.compoundliteral = internal constant [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.40, i64 1088, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.41, i64 1092, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@mv88w8618_pic_vmsd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.9, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@mv88w8618_pit_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.10, ptr @.str.33, i64 1184, i64 0, ptr @mv88w8618_pit_init, ptr null, ptr @mv88w8618_pit_finalize, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @mv88w8618_pit_class_init, ptr null, ptr null, ptr null }, align 8
@.str.44 = private unnamed_addr constant [13 x i8] c"musicpal-pit\00", align 1
@__func__.MV88W8618_PIT = private unnamed_addr constant [14 x i8] c"MV88W8618_PIT\00", align 1
@mv88w8618_pit_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @mv88w8618_pit_read, ptr @mv88w8618_pit_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.compoundliteral.47 = internal constant [2 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.46, i64 1088, i64 24, i64 0, i64 0, i32 4, [4 x i8] zeroinitializer, i64 0, ptr null, i32 12, [4 x i8] zeroinitializer, ptr @mv88w8618_timer_vmsd, i32 1, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@mv88w8618_pit_vmsd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.10, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.47, ptr null }, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"ptimer\00", align 1
@vmstate_ptimer = external constant %struct.VMStateDescription, align 8
@.str.50 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.compoundliteral.51 = internal constant [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.49, i64 0, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 10, [4 x i8] zeroinitializer, ptr @vmstate_ptimer, i32 1, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.50, i64 8, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@mv88w8618_timer_vmsd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.46, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.51, ptr null }, align 8
@mv88w8618_flashcfg_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.15, ptr @.str.33, i64 1104, i64 0, ptr @mv88w8618_flashcfg_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @mv88w8618_flashcfg_class_init, ptr null, ptr null, ptr null }, align 8
@.str.54 = private unnamed_addr constant [18 x i8] c"musicpal-flashcfg\00", align 1
@__func__.MV88W8618_FLASHCFG = private unnamed_addr constant [19 x i8] c"MV88W8618_FLASHCFG\00", align 1
@mv88w8618_flashcfg_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @mv88w8618_flashcfg_read, ptr @mv88w8618_flashcfg_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.56 = private unnamed_addr constant [6 x i8] c"cfgr0\00", align 1
@.compoundliteral.57 = internal constant [2 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.56, i64 1088, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@mv88w8618_flashcfg_vmsd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.15, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.57, ptr null }, align 8
@mv88w8618_wlan_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.19, ptr @.str.33, i64 808, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @mv88w8618_wlan_class_init, ptr null, ptr null, ptr null }, align 8
@.str.60 = private unnamed_addr constant [14 x i8] c"musicpal-wlan\00", align 1
@mv88w8618_wlan_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @mv88w8618_wlan_read, ptr @mv88w8618_wlan_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@musicpal_lcd_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.24, ptr @.str.33, i64 2144, i64 0, ptr @musicpal_lcd_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @musicpal_lcd_class_init, ptr null, ptr null, ptr null }, align 8
@.str.63 = private unnamed_addr constant [13 x i8] c"musicpal-lcd\00", align 1
@__func__.MUSICPAL_LCD = private unnamed_addr constant [13 x i8] c"MUSICPAL_LCD\00", align 1
@musicpal_lcd_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @musicpal_lcd_read, ptr @musicpal_lcd_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.65 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"irqctrl\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"page_off\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"video_ram\00", align 1
@vmstate_info_buffer = external constant %struct.VMStateInfo, align 8
@.compoundliteral.71 = internal constant [7 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.65, i64 1088, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.66, i64 1092, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.67, i64 1096, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.68, i64 1100, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.69, i64 1104, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.70, i64 1120, i64 1024, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_buffer, i32 32, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@musicpal_lcd_vmsd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.24, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.71, ptr null }, align 8
@musicpal_gfx_ops = internal constant %struct.GraphicHwOps { ptr null, ptr @lcd_invalidate, ptr @lcd_refresh, ptr null, ptr null, ptr null }, align 8
@musicpal_gpio_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.21, ptr @.str.33, i64 1168, i64 0, ptr @musicpal_gpio_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @musicpal_gpio_class_init, ptr null, ptr null, ptr null }, align 8
@.str.74 = private unnamed_addr constant [14 x i8] c"musicpal-gpio\00", align 1
@__func__.MUSICPAL_GPIO = private unnamed_addr constant [14 x i8] c"MUSICPAL_GPIO\00", align 1
@musicpal_gpio_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @musicpal_gpio_read, ptr @musicpal_gpio_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@.str.76 = private unnamed_addr constant [15 x i8] c"lcd_brightness\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"out_state\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"in_state\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"ier\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"imr\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"isr\00", align 1
@.compoundliteral.82 = internal constant [7 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.76, i64 1088, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.77, i64 1092, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.78, i64 1096, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.79, i64 1100, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.80, i64 1104, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.81, i64 1108, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@musicpal_gpio_vmsd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.21, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.82, ptr null }, align 8
@musicpal_key_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.25, ptr @.str.33, i64 888, i64 0, ptr @musicpal_key_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @musicpal_key_class_init, ptr null, ptr null, ptr null }, align 8
@__func__.MUSICPAL_KEY = private unnamed_addr constant [13 x i8] c"MUSICPAL_KEY\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"pressed_keys\00", align 1
@.compoundliteral.86 = internal constant [2 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.85, i64 816, i64 4, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@musicpal_key_vmsd = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.25, i8 0, i8 0, [2 x i8] zeroinitializer, i32 2, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.86, ptr null }, align 8
@musicpal_key_handler = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.25, i32 1, [4 x i8] zeroinitializer, ptr @musicpal_key_event, ptr null }, align 8
@musicpal_misc_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.20, ptr @.str.33, i64 1088, i64 0, ptr @musicpal_misc_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr null, ptr null, ptr null, ptr null }, align 8
@__func__.MUSICPAL_MISC = private unnamed_addr constant [14 x i8] c"MUSICPAL_MISC\00", align 1
@musicpal_misc_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], %struct.anon.2, %struct.anon.3, [4 x i8] } { ptr @musicpal_misc_read, ptr @musicpal_misc_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.3 zeroinitializer, [4 x i8] zeroinitializer }, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_musicpal_machine_init_register_types, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_musicpal_register_types, ptr null }]
@.str.91 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.92 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-io.h\00", section "llvm.metadata"
@.str.93 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @blk_getlength, ptr @.str.91, ptr @.str.92, i32 90, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_getlength, ptr @.str.93, ptr @.str.92, i32 90, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_musicpal_machine_init_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @musicpal_machine_init_register_types, i32 noundef 4) #9
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @musicpal_machine_init_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @musicpal_machine_init_typeinfo) #9 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_musicpal_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @musicpal_register_types, i32 noundef 4) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @musicpal_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @mv88w8618_pic_info) #9 ; 0 uses
  %i.b = tail call ptr @type_register_static(ptr noundef nonnull @mv88w8618_pit_info) #9 ; 0 uses
  %i.c = tail call ptr @type_register_static(ptr noundef nonnull @mv88w8618_flashcfg_info) #9 ; 0 uses
  %i.d = tail call ptr @type_register_static(ptr noundef nonnull @mv88w8618_wlan_info) #9 ; 0 uses
  %i.e = tail call ptr @type_register_static(ptr noundef nonnull @musicpal_lcd_info) #9 ; 0 uses
  %i.f = tail call ptr @type_register_static(ptr noundef nonnull @musicpal_gpio_info) #9 ; 0 uses
  %i.g = tail call ptr @type_register_static(ptr noundef nonnull @musicpal_key_info) #9 ; 0 uses
  %i.h = tail call ptr @type_register_static(ptr noundef nonnull @musicpal_misc_info) #9 ; 0 uses
  ret void
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @musicpal_machine_init_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_CLASS) #9 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @.str.4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @musicpal_init, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 273
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @.str.5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i64 33554432, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr @.str.6, ptr %i.g, align 8
  tail call void @machine_add_audiodev_property(ptr noundef %i.a) #9
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @musicpal_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #9
  %i.c = tail call ptr @get_system_memory() #9    ; 4 uses
  %i.d = tail call noalias dereferenceable_or_null(272) ptr @g_malloc(i64 noundef 272) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq i64 %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @size_to_str(i64 noundef %i.h) #9 ; 2 uses
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.7, ptr noundef %i.i) #9
  tail call void @g_free(ptr noundef %i.i) #9
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @cpu_create(ptr noundef %i.k) #9
  %i.m = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.l, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 27, ptr noundef nonnull @__func__.ARM_CPU) #9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @memory_region_add_subregion(ptr noundef %i.c, i64 noundef 0, ptr noundef %i.o) #9
  %i.p = tail call zeroext i1 @memory_region_init_ram(ptr noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.8, i64 noundef 131072, ptr noundef nonnull @error_fatal) #9 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef %i.c, i64 noundef 3221225472, ptr noundef %i.d) #9
  %i.q = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.m, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  %i.r = tail call ptr @qdev_get_gpio_in(ptr noundef %i.q, i32 noundef 0) #9
  %i.s = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.9, i64 noundef 2415951872, ptr noundef %i.r, ptr noundef null) #9 ; 8 uses
  %i.t = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 4) #9
  %i.u = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 5) #9
  %i.v = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 6) #9
  %i.w = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 7) #9
  %i.x = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.10, i64 noundef 2415955968, ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef null) #9 ; 0 uses
  %i.y = tail call ptr @qdev_new(ptr noundef nonnull @.str.11) #9 ; 5 uses
  %i.z = tail call zeroext i1 @object_property_set_int(ptr noundef %i.y, ptr noundef nonnull @.str.12, i64 noundef 2, ptr noundef nonnull @error_fatal) #9 ; 0 uses
  %i.aa = tail call zeroext i1 @qdev_realize_and_unref(ptr noundef %i.y, ptr noundef null, ptr noundef nonnull @error_fatal) #9 ; 0 uses
  %i.ab = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 11) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.y, i32 noundef 0, ptr noundef %i.ab) #9
  %i.ac = tail call ptr @qdev_get_gpio_in(ptr noundef %i.y, i32 noundef 0) #9
  %i.ad = tail call ptr @serial_hd(i32 noundef 0) #9
  %i.ae = tail call ptr @serial_mm_init(ptr noundef %i.c, i64 noundef 2147534912, i32 noundef 2, ptr noundef %i.ac, i32 noundef 1825000, ptr noundef %i.ad, i32 noundef 0) #9 ; 0 uses
  %i.af = tail call ptr @qdev_get_gpio_in(ptr noundef %i.y, i32 noundef 1) #9
  %i.ag = tail call ptr @serial_hd(i32 noundef 1) #9
  %i.ah = tail call ptr @serial_mm_init(ptr noundef %i.c, i64 noundef 2147535168, i32 noundef 2, ptr noundef %i.af, i32 noundef 1825000, ptr noundef %i.ag, i32 noundef 0) #9 ; 0 uses
  %i.ai = tail call ptr @drive_get(i32 noundef 4, i32 noundef 0, i32 noundef 0) #9 ; 2 uses
  %.not97 = icmp eq ptr %i.ai, null
  br i1 %.not97, label %.preheader99.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call ptr @blk_by_legacy_dinfo(ptr noundef nonnull %i.ai) #9 ; 2 uses
  %i.ak = tail call i64 @blk_getlength(ptr noundef %i.aj) #9 ; 3 uses
  switch i64 %i.ak, label %bb.e [
    i64 33554432, label %bb.f
    i64 16777216, label %bb.f
    i64 8388608, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.13) #9
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  %.rhs.trunc = trunc nuw nsw i64 %i.ak to i32
  %1 = udiv i32 33554432, %.rhs.trunc
  %i.al = tail call ptr @pflash_cfi02_register(i64 noundef 4261412864, ptr noundef nonnull @.str.14, i64 noundef %i.ak, ptr noundef %i.aj, i32 noundef 65536, i32 noundef %1, i32 noundef 2, i16 noundef zeroext 191, i16 noundef zeroext 9069, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 21845, i16 noundef zeroext 10922, i32 noundef 0) #9 ; 0 uses
  br label %.preheader99.preheader

.preheader99.preheader:                           ; preds = %bb.f, %bb.c
  %i.am = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.15, i64 noundef 2415943680, ptr noundef null, ptr noundef null) #9 ; 0 uses
  %i.an = tail call ptr @qdev_new(ptr noundef nonnull @.str.16) #9 ; 5 uses
  %i.ao = tail call zeroext i1 @qemu_configure_nic_device(ptr noundef %i.an, i1 noundef zeroext true, ptr noundef nonnull @.str.17) #9 ; 0 uses
  %i.ap = tail call ptr @get_system_memory() #9
  %i.aq = tail call zeroext i1 @object_property_set_link(ptr noundef %i.an, ptr noundef nonnull @.str.18, ptr noundef %i.ap, ptr noundef nonnull @error_fatal) #9 ; 0 uses
  %i.ar = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.an, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  %i.as = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.ar, ptr noundef nonnull @error_fatal) #9 ; 0 uses
  %i.at = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.an, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  tail call void @sysbus_mmio_map(ptr noundef %i.at, i32 noundef 0, i64 noundef 2147516416) #9
  %i.au = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.an, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9
  %i.av = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 9) #9
  tail call void @sysbus_connect_irq(ptr noundef %i.au, i32 noundef 0, ptr noundef %i.av) #9
  %i.aw = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.19, i64 noundef 2147532800, ptr noundef null, ptr noundef null) #9 ; 0 uses
  %i.ax = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.20, i64 noundef 2147491840, ptr noundef null, ptr noundef null) #9 ; 0 uses
  %i.ay = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 12) #9
  %i.az = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.21, i64 noundef 2147536896, ptr noundef %i.ay, ptr noundef null) #9 ; 14 uses
  %i.ba = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.22, i64 noundef -1, ptr noundef null, ptr noundef null) #9 ; 4 uses
  %i.bb = tail call ptr @qdev_get_child_bus(ptr noundef %i.ba, ptr noundef nonnull @.str.23) #9
  %i.bc = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.24, i64 noundef 2415968256, ptr noundef null, ptr noundef null) #9 ; 3 uses
  %i.bd = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.25, i64 noundef -1, ptr noundef null, ptr noundef null) #9 ; 8 uses
  %i.be = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 29) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.ba, i32 noundef 0, ptr noundef %i.be) #9
  %i.bf = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ba, i32 noundef 0) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.az, i32 noundef 3, ptr noundef %i.bf) #9
  %i.bg = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ba, i32 noundef 1) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.az, i32 noundef 4, ptr noundef %i.bg) #9
  %i.bh = tail call ptr @qdev_get_gpio_in(ptr noundef %i.bc, i32 noundef 0) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.az, i32 noundef 0, ptr noundef %i.bh) #9
  %i.bi = tail call ptr @qdev_get_gpio_in(ptr noundef %i.bc, i32 noundef 1) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.az, i32 noundef 1, ptr noundef %i.bi) #9
  %i.bj = tail call ptr @qdev_get_gpio_in(ptr noundef %i.bc, i32 noundef 2) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.az, i32 noundef 2, ptr noundef %i.bj) #9
  %i.bk = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 8) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 0, ptr noundef %i.bk) #9
  %i.bl = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 9) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 1, ptr noundef %i.bl) #9
  %i.bm = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 10) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 2, ptr noundef %i.bm) #9
  %i.bn = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 11) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 3, ptr noundef %i.bn) #9
  %i.bo = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 19) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 4, ptr noundef %i.bo) #9
  %i.bp = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 20) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 5, ptr noundef %i.bp) #9
  %i.bq = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 21) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 6, ptr noundef %i.bq) #9
  %i.br = tail call ptr @qdev_get_gpio_in(ptr noundef %i.az, i32 noundef 22) #9
  tail call void @qdev_connect_gpio_out(ptr noundef %i.bd, i32 noundef 7, ptr noundef %i.br) #9
  %i.bs = tail call ptr @i2c_slave_new(ptr noundef nonnull @.str.26, i8 noundef zeroext 26) #9 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not98 = icmp eq ptr %i.bu, null
  br i1 %.not98, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader99.preheader
  %i.bv = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.bs, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  %i.bw = load ptr, ptr %i.bt, align 8
  tail call void @qdev_prop_set_string(ptr noundef %i.bv, ptr noundef nonnull @.str.27, ptr noundef %i.bw) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader99.preheader
  %i.bx = tail call zeroext i1 @i2c_slave_realize_and_unref(ptr noundef %i.bs, ptr noundef %i.bb, ptr noundef nonnull @error_abort) #9 ; 0 uses
  %i.by = tail call ptr @qdev_new(ptr noundef nonnull @.str.28) #9 ; 2 uses
  %i.bz = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.by, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9 ; 3 uses
  %i.ca = tail call zeroext i1 @object_property_set_link(ptr noundef %i.by, ptr noundef nonnull @.str.26, ptr noundef %i.bs, ptr noundef null) #9 ; 0 uses
  %i.cb = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.bz, ptr noundef nonnull @error_fatal) #9 ; 0 uses
  tail call void @sysbus_mmio_map(ptr noundef %i.bz, i32 noundef 0, i64 noundef 2415947776) #9
  %i.cc = tail call ptr @qdev_get_gpio_in(ptr noundef %i.s, i32 noundef 30) #9
  tail call void @sysbus_connect_irq(ptr noundef %i.bz, i32 noundef 0, ptr noundef %i.cc) #9
  store i64 33554432, ptr @musicpal_binfo, align 8
  tail call void @arm_load_kernel(ptr noundef %i.m, ptr noundef nonnull %0, ptr noundef nonnull @musicpal_binfo) #9
  ret void
}

declare void @machine_add_audiodev_property(ptr noundef) local_unnamed_addr #1

declare ptr @get_system_memory() local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @size_to_str(i64 noundef) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare ptr @cpu_create(ptr noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_init_ram(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_gpio_in(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @sysbus_create_varargs(ptr noundef, i64 noundef, ...) local_unnamed_addr #1

declare ptr @qdev_new(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @object_property_set_int(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qdev_realize_and_unref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_connect_gpio_out(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @serial_mm_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @serial_hd(i32 noundef) local_unnamed_addr #1

declare ptr @drive_get(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @blk_by_legacy_dinfo(ptr noundef) local_unnamed_addr #1

declare i64 @blk_getlength(ptr noundef) #1

declare ptr @pflash_cfi02_register(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_configure_nic_device(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @object_property_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @sysbus_realize_and_unref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_mmio_map(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_connect_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_child_bus(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @i2c_slave_new(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @qdev_prop_set_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @i2c_slave_realize_and_unref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @arm_load_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @mv88w8618_pic_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #9 ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.38, i32 noundef 313, ptr noundef nonnull @__func__.MV88W8618_PIC) #9 ; 3 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  tail call void @qdev_init_gpio_in(ptr noundef %i.c, ptr noundef nonnull @mv88w8618_pic_set_irq, i32 noundef 32) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  tail call void @sysbus_init_irq(ptr noundef %i.a, ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull @mv88w8618_pic_ops, ptr noundef %i.b, ptr noundef nonnull @.str.37, i64 noundef 4096) #9
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @mv88w8618_pic_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #9 ; 2 uses
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @mv88w8618_pic_reset) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @mv88w8618_pic_vmsd, ptr %i.b, align 8
  ret void
}

declare void @qdev_init_gpio_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @mv88w8618_pic_set_irq(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = shl nuw i32 1, %1                        ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.c = load i32, ptr %i.b, align 16
  %i.d = or i32 %i.c, %i.a                        ; 2 uses
  store i32 %i.d, ptr %i.b, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = xor i32 %i.a, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.g = load i32, ptr %i.f, align 16
  %i.h = and i32 %i.g, %i.e                       ; 2 uses
  store i32 %i.h, ptr %i.f, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.k = load ptr, ptr %i.j, align 8
end_hunk_0
