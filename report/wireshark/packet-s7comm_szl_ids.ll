Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-s7comm_szl_ids?download=true
inline.NumInlined: 52
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.2743 = private unnamed_addr constant [76 x i8] c"Maximum number of racks (racknr) and total number of possible slots (anzst)\00", align 1
@szl_0118_index_names = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2740 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2741 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2742 }, { i32, [4 x i8], ptr } { i32 255, [4 x i8] zeroinitializer, ptr @.str.2743 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@szl_0121_index_names = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2730 }, { i32, [4 x i8], ptr } { i32 2570, [4 x i8] zeroinitializer, ptr @.str.2731 }, { i32, [4 x i8], ptr } { i32 5140, [4 x i8] zeroinitializer, ptr @.str.2732 }, { i32, [4 x i8], ptr } { i32 7715, [4 x i8] zeroinitializer, ptr @.str.2733 }, { i32, [4 x i8], ptr } { i32 10280, [4 x i8] zeroinitializer, ptr @.str.2734 }, { i32, [4 x i8], ptr } { i32 20560, [4 x i8] zeroinitializer, ptr @.str.2735 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.2736 }, { i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.2737 }, { i32, [4 x i8], ptr } { i32 30840, [4 x i8] zeroinitializer, ptr @.str.2738 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2746 = private unnamed_addr constant [13 x i8] c"DP interrupt\00", align 1
@.str.2747 = private unnamed_addr constant [58 x i8] c"Multicomputing or synchronous cycle (isochrone) interrupt\00", align 1
@.str.2748 = private unnamed_addr constant [47 x i8] c"Redundancy interrupt (on with S7-400H systems)\00", align 1
@szl_0222_index_names = internal constant [13 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2730 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.2731 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.2732 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.2733 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.2734 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.2746 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.2747 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.2748 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.2735 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.2736 }, { i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.2737 }, { i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @.str.2738 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2750 = private unnamed_addr constant [10 x i8] c"Mode STOP\00", align 1
@.str.2751 = private unnamed_addr constant [13 x i8] c"Mode STARTUP\00", align 1
@.str.2752 = private unnamed_addr constant [9 x i8] c"Mode RUN\00", align 1
@.str.2753 = private unnamed_addr constant [10 x i8] c"Mode HOLD\00", align 1
@.str.2754 = private unnamed_addr constant [12 x i8] c"Mode DEFECT\00", align 1
@szl_0524_index_names = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 20480, [4 x i8] zeroinitializer, ptr @.str.2750 }, { i32, [4 x i8], ptr } { i32 20496, [4 x i8] zeroinitializer, ptr @.str.2751 }, { i32, [4 x i8], ptr } { i32 20512, [4 x i8] zeroinitializer, ptr @.str.2752 }, { i32, [4 x i8], ptr } { i32 20528, [4 x i8] zeroinitializer, ptr @.str.2753 }, { i32, [4 x i8], ptr } { i32 17696, [4 x i8] zeroinitializer, ptr @.str.2754 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2756 = private unnamed_addr constant [31 x i8] c"General data for communication\00", align 1
@.str.2757 = private unnamed_addr constant [41 x i8] c"Test and installation function constants\00", align 1
@.str.2758 = private unnamed_addr constant [25 x i8] c"Operator interface (O/I)\00", align 1
@.str.2759 = private unnamed_addr constant [31 x i8] c"Object management system (OMS)\00", align 1
@.str.2760 = private unnamed_addr constant [12 x i8] c"Diagnostics\00", align 1
@.str.2761 = private unnamed_addr constant [35 x i8] c"Communication function block (CFB)\00", align 1
@.str.2762 = private unnamed_addr constant [12 x i8] c"Global data\00", align 1
@.str.2763 = private unnamed_addr constant [48 x i8] c"Test and installation function time information\00", align 1
@.str.2764 = private unnamed_addr constant [34 x i8] c"Time-of-day capability parameters\00", align 1
@.str.2765 = private unnamed_addr constant [19 x i8] c"Message parameters\00", align 1
@.str.2766 = private unnamed_addr constant [27 x i8] c"SCAN capability parameters\00", align 1
@szl_0131_index_names = internal constant [12 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2756 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2757 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2758 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.2759 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.2760 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.2761 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.2762 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.2763 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.2764 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.2765 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.2766 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2768 = private unnamed_addr constant [29 x i8] c"Test and installation status\00", align 1
@.str.2769 = private unnamed_addr constant [26 x i8] c"Operator interface status\00", align 1
@.str.2770 = private unnamed_addr constant [32 x i8] c"Object management system status\00", align 1
@.str.2771 = private unnamed_addr constant [24 x i8] c"Data exchange with CFBs\00", align 1
@.str.2772 = private unnamed_addr constant [11 x i8] c"MPI status\00", align 1
@.str.2773 = private unnamed_addr constant [25 x i8] c"Communication bus status\00", align 1
@.str.2774 = private unnamed_addr constant [26 x i8] c"32-bit runtime meters 0-7\00", align 1
@.str.2775 = private unnamed_addr constant [27 x i8] c"32-bit runtime meters 8-15\00", align 1
@.str.2776 = private unnamed_addr constant [15 x i8] c"S7-SCAN part 1\00", align 1
@.str.2777 = private unnamed_addr constant [15 x i8] c"S7-SCAN part 2\00", align 1
@szl_0132_index_names = internal constant [15 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2756 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2768 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2769 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.2770 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.2760 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.2771 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.2762 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.2725 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.2772 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.2773 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.2774 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.2775 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.2776 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.2777 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@s7comm_szl_xy22_00xx_al1_fields = internal constant [7 x ptr] [ptr @hf_s7comm_szl_xy22_00xx_al1_0, ptr @hf_s7comm_szl_xy22_00xx_al1_1, ptr @hf_s7comm_szl_xy22_00xx_al1_2, ptr @hf_s7comm_szl_xy22_00xx_al1_4, ptr @hf_s7comm_szl_xy22_00xx_al1_5, ptr @hf_s7comm_szl_xy22_00xx_al1_6, ptr null], align 16
@s7comm_szl_xy22_00xx_al2_fields = internal constant [5 x ptr] [ptr @hf_s7comm_szl_xy22_00xx_al2_0, ptr @hf_s7comm_szl_xy22_00xx_al2_1, ptr @hf_s7comm_szl_xy22_00xx_al2_2, ptr @hf_s7comm_szl_xy22_00xx_al2_3, ptr null], align 16
@s7comm_szl_0131_0002_funkt_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0002_funkt_0_0, ptr @hf_s7comm_szl_0131_0002_funkt_0_1, ptr @hf_s7comm_szl_0131_0002_funkt_0_2, ptr @hf_s7comm_szl_0131_0002_funkt_0_3, ptr @hf_s7comm_szl_0131_0002_funkt_0_4, ptr @hf_s7comm_szl_0131_0002_funkt_0_5, ptr @hf_s7comm_szl_0131_0002_funkt_0_6, ptr @hf_s7comm_szl_0131_0002_funkt_0_7, ptr null], align 16
@s7comm_szl_0131_0002_funkt_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0002_funkt_1_0, ptr @hf_s7comm_szl_0131_0002_funkt_1_1, ptr @hf_s7comm_szl_0131_0002_funkt_1_2, ptr @hf_s7comm_szl_0131_0002_funkt_1_3, ptr @hf_s7comm_szl_0131_0002_funkt_1_4, ptr @hf_s7comm_szl_0131_0002_funkt_1_5, ptr @hf_s7comm_szl_0131_0002_funkt_1_6, ptr @hf_s7comm_szl_0131_0002_funkt_1_7, ptr null], align 16
@s7comm_szl_0131_0002_funkt_2_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0002_funkt_2_0, ptr @hf_s7comm_szl_0131_0002_funkt_2_1, ptr @hf_s7comm_szl_0131_0002_funkt_2_2, ptr @hf_s7comm_szl_0131_0002_funkt_2_3, ptr @hf_s7comm_szl_0131_0002_funkt_2_4, ptr @hf_s7comm_szl_0131_0002_funkt_2_5, ptr @hf_s7comm_szl_0131_0002_funkt_2_6, ptr @hf_s7comm_szl_0131_0002_funkt_2_7, ptr null], align 16
@s7comm_szl_0131_0002_trgereig_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0002_trgereig_0_0, ptr @hf_s7comm_szl_0131_0002_trgereig_0_1, ptr @hf_s7comm_szl_0131_0002_trgereig_0_2, ptr @hf_s7comm_szl_0131_0002_trgereig_0_3, ptr @hf_s7comm_szl_0131_0002_trgereig_0_4, ptr @hf_s7comm_szl_0131_0002_trgereig_0_5, ptr @hf_s7comm_szl_0131_0002_trgereig_0_6, ptr @hf_s7comm_szl_0131_0002_trgereig_0_7, ptr null], align 16
@s7comm_szl_0131_0002_trgereig_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0002_trgereig_1_0, ptr @hf_s7comm_szl_0131_0002_trgereig_1_1, ptr @hf_s7comm_szl_0131_0002_trgereig_1_2, ptr @hf_s7comm_szl_0131_0002_trgereig_1_3, ptr @hf_s7comm_szl_0131_0002_trgereig_1_4, ptr @hf_s7comm_szl_0131_0002_trgereig_1_5, ptr @hf_s7comm_szl_0131_0002_trgereig_1_6, ptr @hf_s7comm_szl_0131_0002_trgereig_1_7, ptr null], align 16
@s7comm_szl_0131_0003_funkt_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0003_funkt_0_0, ptr @hf_s7comm_szl_0131_0003_funkt_0_1, ptr @hf_s7comm_szl_0131_0003_funkt_0_2, ptr @hf_s7comm_szl_0131_0003_funkt_0_3, ptr @hf_s7comm_szl_0131_0003_funkt_0_4, ptr @hf_s7comm_szl_0131_0003_funkt_0_5, ptr @hf_s7comm_szl_0131_0003_funkt_0_6, ptr @hf_s7comm_szl_0131_0003_funkt_0_7, ptr null], align 16
@s7comm_szl_0131_0003_funkt_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0003_funkt_1_0, ptr @hf_s7comm_szl_0131_0003_funkt_1_1, ptr @hf_s7comm_szl_0131_0003_funkt_1_2, ptr @hf_s7comm_szl_0131_0003_funkt_1_3, ptr @hf_s7comm_szl_0131_0003_funkt_1_4, ptr @hf_s7comm_szl_0131_0003_funkt_1_5, ptr @hf_s7comm_szl_0131_0003_funkt_1_6, ptr @hf_s7comm_szl_0131_0003_funkt_1_7, ptr null], align 16
@s7comm_szl_0131_0003_funkt_2_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0003_funkt_2_0, ptr @hf_s7comm_szl_0131_0003_funkt_2_1, ptr @hf_s7comm_szl_0131_0003_funkt_2_2, ptr @hf_s7comm_szl_0131_0003_funkt_2_3, ptr @hf_s7comm_szl_0131_0003_funkt_2_4, ptr @hf_s7comm_szl_0131_0003_funkt_2_5, ptr @hf_s7comm_szl_0131_0003_funkt_2_6, ptr @hf_s7comm_szl_0131_0003_funkt_2_7, ptr null], align 16
@s7comm_szl_0131_0003_funkt_3_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0003_funkt_3_0, ptr @hf_s7comm_szl_0131_0003_funkt_3_1, ptr @hf_s7comm_szl_0131_0003_funkt_3_2, ptr @hf_s7comm_szl_0131_0003_funkt_3_3, ptr @hf_s7comm_szl_0131_0003_funkt_3_4, ptr @hf_s7comm_szl_0131_0003_funkt_3_5, ptr @hf_s7comm_szl_0131_0003_funkt_3_6, ptr @hf_s7comm_szl_0131_0003_funkt_3_7, ptr null], align 16
@s7comm_szl_0131_0004_funkt_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0004_funkt_0_0, ptr @hf_s7comm_szl_0131_0004_funkt_0_1, ptr @hf_s7comm_szl_0131_0004_funkt_0_2, ptr @hf_s7comm_szl_0131_0004_funkt_0_3, ptr @hf_s7comm_szl_0131_0004_funkt_0_4, ptr @hf_s7comm_szl_0131_0004_funkt_0_5, ptr @hf_s7comm_szl_0131_0004_funkt_0_6, ptr @hf_s7comm_szl_0131_0004_funkt_0_7, ptr null], align 16
@s7comm_szl_0131_0004_funkt_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0004_funkt_1_0, ptr @hf_s7comm_szl_0131_0004_funkt_1_1, ptr @hf_s7comm_szl_0131_0004_funkt_1_2, ptr @hf_s7comm_szl_0131_0004_funkt_1_3, ptr @hf_s7comm_szl_0131_0004_funkt_1_4, ptr @hf_s7comm_szl_0131_0004_funkt_1_5, ptr @hf_s7comm_szl_0131_0004_funkt_1_6, ptr @hf_s7comm_szl_0131_0004_funkt_1_7, ptr null], align 16
@s7comm_szl_0131_0004_funkt_2_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0004_funkt_2_0, ptr @hf_s7comm_szl_0131_0004_funkt_2_1, ptr @hf_s7comm_szl_0131_0004_funkt_2_2, ptr @hf_s7comm_szl_0131_0004_funkt_2_3, ptr @hf_s7comm_szl_0131_0004_funkt_2_4, ptr @hf_s7comm_szl_0131_0004_funkt_2_5, ptr @hf_s7comm_szl_0131_0004_funkt_2_6, ptr @hf_s7comm_szl_0131_0004_funkt_2_7, ptr null], align 16
@s7comm_szl_0131_0004_funkt_3_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0004_funkt_3_0, ptr @hf_s7comm_szl_0131_0004_funkt_3_1, ptr @hf_s7comm_szl_0131_0004_funkt_3_2, ptr @hf_s7comm_szl_0131_0004_funkt_3_3, ptr @hf_s7comm_szl_0131_0004_funkt_3_4, ptr @hf_s7comm_szl_0131_0004_funkt_3_5, ptr @hf_s7comm_szl_0131_0004_funkt_3_6, ptr @hf_s7comm_szl_0131_0004_funkt_3_7, ptr null], align 16
@s7comm_szl_0131_0004_funkt_4_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0004_funkt_4_0, ptr @hf_s7comm_szl_0131_0004_funkt_4_1, ptr @hf_s7comm_szl_0131_0004_funkt_4_2, ptr @hf_s7comm_szl_0131_0004_funkt_4_3, ptr @hf_s7comm_szl_0131_0004_funkt_4_4, ptr @hf_s7comm_szl_0131_0004_funkt_4_5, ptr @hf_s7comm_szl_0131_0004_funkt_4_6, ptr @hf_s7comm_szl_0131_0004_funkt_4_7, ptr null], align 16
@s7comm_szl_0131_0005_funkt_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0005_funkt_0_0, ptr @hf_s7comm_szl_0131_0005_funkt_0_1, ptr @hf_s7comm_szl_0131_0005_funkt_0_2, ptr @hf_s7comm_szl_0131_0005_funkt_0_3, ptr @hf_s7comm_szl_0131_0005_funkt_0_4, ptr @hf_s7comm_szl_0131_0005_funkt_0_5, ptr @hf_s7comm_szl_0131_0005_funkt_0_6, ptr @hf_s7comm_szl_0131_0005_funkt_0_7, ptr null], align 16
@s7comm_szl_0131_0006_funkt_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_funkt_0_0, ptr @hf_s7comm_szl_0131_0006_funkt_0_1, ptr @hf_s7comm_szl_0131_0006_funkt_0_2, ptr @hf_s7comm_szl_0131_0006_funkt_0_3, ptr @hf_s7comm_szl_0131_0006_funkt_0_4, ptr @hf_s7comm_szl_0131_0006_funkt_0_5, ptr @hf_s7comm_szl_0131_0006_funkt_0_6, ptr @hf_s7comm_szl_0131_0006_funkt_0_7, ptr null], align 16
@s7comm_szl_0131_0006_funkt_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_funkt_1_0, ptr @hf_s7comm_szl_0131_0006_funkt_1_1, ptr @hf_s7comm_szl_0131_0006_funkt_1_2, ptr @hf_s7comm_szl_0131_0006_funkt_1_3, ptr @hf_s7comm_szl_0131_0006_funkt_1_4, ptr @hf_s7comm_szl_0131_0006_funkt_1_5, ptr @hf_s7comm_szl_0131_0006_funkt_1_6, ptr @hf_s7comm_szl_0131_0006_funkt_1_7, ptr null], align 16
@s7comm_szl_0131_0006_funkt_2_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_funkt_2_0, ptr @hf_s7comm_szl_0131_0006_funkt_2_1, ptr @hf_s7comm_szl_0131_0006_funkt_2_2, ptr @hf_s7comm_szl_0131_0006_funkt_2_3, ptr @hf_s7comm_szl_0131_0006_funkt_2_4, ptr @hf_s7comm_szl_0131_0006_funkt_2_5, ptr @hf_s7comm_szl_0131_0006_funkt_2_6, ptr @hf_s7comm_szl_0131_0006_funkt_2_7, ptr null], align 16
@s7comm_szl_0131_0006_funkt_3_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_funkt_3_0, ptr @hf_s7comm_szl_0131_0006_funkt_3_1, ptr @hf_s7comm_szl_0131_0006_funkt_3_2, ptr @hf_s7comm_szl_0131_0006_funkt_3_3, ptr @hf_s7comm_szl_0131_0006_funkt_3_4, ptr @hf_s7comm_szl_0131_0006_funkt_3_5, ptr @hf_s7comm_szl_0131_0006_funkt_3_6, ptr @hf_s7comm_szl_0131_0006_funkt_3_7, ptr null], align 16
@s7comm_szl_0131_0006_funkt_6_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_funkt_6_0, ptr @hf_s7comm_szl_0131_0006_funkt_6_1, ptr @hf_s7comm_szl_0131_0006_funkt_6_2, ptr @hf_s7comm_szl_0131_0006_funkt_6_3, ptr @hf_s7comm_szl_0131_0006_funkt_6_4, ptr @hf_s7comm_szl_0131_0006_funkt_6_5, ptr @hf_s7comm_szl_0131_0006_funkt_6_6, ptr @hf_s7comm_szl_0131_0006_funkt_6_7, ptr null], align 16
@s7comm_szl_0131_0006_funkt_7_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_funkt_7_0, ptr @hf_s7comm_szl_0131_0006_funkt_7_1, ptr @hf_s7comm_szl_0131_0006_funkt_7_2, ptr @hf_s7comm_szl_0131_0006_funkt_7_3, ptr @hf_s7comm_szl_0131_0006_funkt_7_4, ptr @hf_s7comm_szl_0131_0006_funkt_7_5, ptr @hf_s7comm_szl_0131_0006_funkt_7_6, ptr @hf_s7comm_szl_0131_0006_funkt_7_7, ptr null], align 16
@s7comm_szl_0131_0006_zugtyp_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_zugtyp_0_0, ptr @hf_s7comm_szl_0131_0006_zugtyp_0_1, ptr @hf_s7comm_szl_0131_0006_zugtyp_0_2, ptr @hf_s7comm_szl_0131_0006_zugtyp_0_3, ptr @hf_s7comm_szl_0131_0006_zugtyp_0_4, ptr @hf_s7comm_szl_0131_0006_zugtyp_0_5, ptr @hf_s7comm_szl_0131_0006_zugtyp_0_6, ptr @hf_s7comm_szl_0131_0006_zugtyp_0_7, ptr null], align 16
@s7comm_szl_0131_0006_zugtyp_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_zugtyp_1_0, ptr @hf_s7comm_szl_0131_0006_zugtyp_1_1, ptr @hf_s7comm_szl_0131_0006_zugtyp_1_2, ptr @hf_s7comm_szl_0131_0006_zugtyp_1_3, ptr @hf_s7comm_szl_0131_0006_zugtyp_1_4, ptr @hf_s7comm_szl_0131_0006_zugtyp_1_5, ptr @hf_s7comm_szl_0131_0006_zugtyp_1_6, ptr @hf_s7comm_szl_0131_0006_zugtyp_1_7, ptr null], align 16
@s7comm_szl_0131_0006_zugtyp_2_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_zugtyp_2_0, ptr @hf_s7comm_szl_0131_0006_zugtyp_2_1, ptr @hf_s7comm_szl_0131_0006_zugtyp_2_2, ptr @hf_s7comm_szl_0131_0006_zugtyp_2_3, ptr @hf_s7comm_szl_0131_0006_zugtyp_2_4, ptr @hf_s7comm_szl_0131_0006_zugtyp_2_5, ptr @hf_s7comm_szl_0131_0006_zugtyp_2_6, ptr @hf_s7comm_szl_0131_0006_zugtyp_2_7, ptr null], align 16
@s7comm_szl_0131_0006_zugtyp_3_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_zugtyp_3_0, ptr @hf_s7comm_szl_0131_0006_zugtyp_3_1, ptr @hf_s7comm_szl_0131_0006_zugtyp_3_2, ptr @hf_s7comm_szl_0131_0006_zugtyp_3_3, ptr @hf_s7comm_szl_0131_0006_zugtyp_3_4, ptr @hf_s7comm_szl_0131_0006_zugtyp_3_5, ptr @hf_s7comm_szl_0131_0006_zugtyp_3_6, ptr @hf_s7comm_szl_0131_0006_zugtyp_3_7, ptr null], align 16
@s7comm_szl_0131_0006_zugtyp_6_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_zugtyp_6_0, ptr @hf_s7comm_szl_0131_0006_zugtyp_6_1, ptr @hf_s7comm_szl_0131_0006_zugtyp_6_2, ptr @hf_s7comm_szl_0131_0006_zugtyp_6_3, ptr @hf_s7comm_szl_0131_0006_zugtyp_6_4, ptr @hf_s7comm_szl_0131_0006_zugtyp_6_5, ptr @hf_s7comm_szl_0131_0006_zugtyp_6_6, ptr @hf_s7comm_szl_0131_0006_zugtyp_6_7, ptr null], align 16
@s7comm_szl_0131_0006_zugtyp_7_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0006_zugtyp_7_0, ptr @hf_s7comm_szl_0131_0006_zugtyp_7_1, ptr @hf_s7comm_szl_0131_0006_zugtyp_7_2, ptr @hf_s7comm_szl_0131_0006_zugtyp_7_3, ptr @hf_s7comm_szl_0131_0006_zugtyp_7_4, ptr @hf_s7comm_szl_0131_0006_zugtyp_7_5, ptr @hf_s7comm_szl_0131_0006_zugtyp_7_6, ptr @hf_s7comm_szl_0131_0006_zugtyp_7_7, ptr null], align 16
@s7comm_szl_0131_0007_funkt_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0007_funkt_0_0, ptr @hf_s7comm_szl_0131_0007_funkt_0_1, ptr @hf_s7comm_szl_0131_0007_funkt_0_2, ptr @hf_s7comm_szl_0131_0007_funkt_0_3, ptr @hf_s7comm_szl_0131_0007_funkt_0_4, ptr @hf_s7comm_szl_0131_0007_funkt_0_5, ptr @hf_s7comm_szl_0131_0007_funkt_0_6, ptr @hf_s7comm_szl_0131_0007_funkt_0_7, ptr null], align 16
@s7comm_szl_0131_0007_obj_0_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0007_obj_0_0, ptr @hf_s7comm_szl_0131_0007_obj_0_1, ptr @hf_s7comm_szl_0131_0007_obj_0_2, ptr @hf_s7comm_szl_0131_0007_obj_0_3, ptr @hf_s7comm_szl_0131_0007_obj_0_4, ptr @hf_s7comm_szl_0131_0007_obj_0_5, ptr @hf_s7comm_szl_0131_0007_obj_0_6, ptr @hf_s7comm_szl_0131_0007_obj_0_7, ptr null], align 16
@s7comm_szl_0131_0007_mode_fields = internal constant [3 x ptr] [ptr @hf_s7comm_szl_0131_0007_mode_0, ptr @hf_s7comm_szl_0131_0007_mode_1, ptr null], align 16
@s7comm_szl_0131_0009_sync_k_fields = internal constant [4 x ptr] [ptr @hf_s7comm_szl_0131_0009_sync_k_0, ptr @hf_s7comm_szl_0131_0009_sync_k_1, ptr @hf_s7comm_szl_0131_0009_sync_k_2, ptr null], align 16
@s7comm_szl_0131_0009_sync_mpi_fields = internal constant [4 x ptr] [ptr @hf_s7comm_szl_0131_0009_sync_mpi_0, ptr @hf_s7comm_szl_0131_0009_sync_mpi_1, ptr @hf_s7comm_szl_0131_0009_sync_mpi_2, ptr null], align 16
@s7comm_szl_0131_0009_sync_mfi_fields = internal constant [4 x ptr] [ptr @hf_s7comm_szl_0131_0009_sync_mfi_0, ptr @hf_s7comm_szl_0131_0009_sync_mfi_1, ptr @hf_s7comm_szl_0131_0009_sync_mfi_2, ptr null], align 16
@s7comm_szl_0131_0010_funk_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0010_funk_1_0, ptr @hf_s7comm_szl_0131_0010_funk_1_1, ptr @hf_s7comm_szl_0131_0010_funk_1_2, ptr @hf_s7comm_szl_0131_0010_funk_1_3, ptr @hf_s7comm_szl_0131_0010_funk_1_4, ptr @hf_s7comm_szl_0131_0010_funk_1_5, ptr @hf_s7comm_szl_0131_0010_funk_1_6, ptr @hf_s7comm_szl_0131_0010_funk_1_7, ptr null], align 16
@s7comm_szl_0131_0010_ber_meld_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0010_ber_meld_1_0, ptr @hf_s7comm_szl_0131_0010_ber_meld_1_1, ptr @hf_s7comm_szl_0131_0010_ber_meld_1_2, ptr @hf_s7comm_szl_0131_0010_ber_meld_1_3, ptr @hf_s7comm_szl_0131_0010_ber_meld_1_4, ptr @hf_s7comm_szl_0131_0010_ber_meld_1_5, ptr @hf_s7comm_szl_0131_0010_ber_meld_1_6, ptr @hf_s7comm_szl_0131_0010_ber_meld_1_7, ptr null], align 16
@s7comm_szl_0131_0010_ber_zus_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0010_ber_zus_1_0, ptr @hf_s7comm_szl_0131_0010_ber_zus_1_1, ptr @hf_s7comm_szl_0131_0010_ber_zus_1_2, ptr @hf_s7comm_szl_0131_0010_ber_zus_1_3, ptr @hf_s7comm_szl_0131_0010_ber_zus_1_4, ptr @hf_s7comm_szl_0131_0010_ber_zus_1_5, ptr @hf_s7comm_szl_0131_0010_ber_zus_1_6, ptr @hf_s7comm_szl_0131_0010_ber_zus_1_7, ptr null], align 16
@s7comm_szl_0131_0010_typ_zus_1_fields = internal constant [9 x ptr] [ptr @hf_s7comm_szl_0131_0010_typ_zus_1_0, ptr @hf_s7comm_szl_0131_0010_typ_zus_1_1, ptr @hf_s7comm_szl_0131_0010_typ_zus_1_2, ptr @hf_s7comm_szl_0131_0010_typ_zus_1_3, ptr @hf_s7comm_szl_0131_0010_typ_zus_1_4, ptr @hf_s7comm_szl_0131_0010_typ_zus_1_5, ptr @hf_s7comm_szl_0131_0010_typ_zus_1_6, ptr @hf_s7comm_szl_0131_0010_typ_zus_1_7, ptr null], align 16
@.str.2779 = private unnamed_addr constant [6 x i8] c" / %s\00", align 1
@.str.2780 = private unnamed_addr constant [15 x i8] c"unknown 0x%04x\00", align 1
@.str.2781 = private unnamed_addr constant [16 x i8] c" / CHET: 0x%04x\00", align 1
@.str.2782 = private unnamed_addr constant [17 x i8] c" [%u CHET entry]\00", align 1
@s7comm_szl_xy78_xxxx_dis_comp_state_detail_fields = internal constant [21 x ptr] [ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_0_2, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_3, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_4, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_5, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_6, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_7_10, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_11_14, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_15, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_16, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_17, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_18, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_19, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_20, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_21, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_22, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_23, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_24, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_25, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_26, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail_b_27_31, ptr null], align 16
@s7comm_szl_xy78_xxxx_dis_io_state_fields = internal constant [11 x ptr] [ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_0, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_1, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_2, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_3, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_4, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_5, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_6, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_7, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_8_14, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_15, ptr null], align 16
@s7comm_szl_xy78_xxxx_sub_ord_io_state_fields = internal constant [11 x ptr] [ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_0, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_1, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_2, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_3, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_4, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_5, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_6, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_7, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_8_14, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state_15, ptr null], align 16
@s7comm_szl_0091_0000_eastat_fields = internal constant [10 x ptr] [ptr @hf_s7comm_szl_0091_0000_eastat_0, ptr @hf_s7comm_szl_0091_0000_eastat_1, ptr @hf_s7comm_szl_0091_0000_eastat_2, ptr @hf_s7comm_szl_0091_0000_eastat_3, ptr @hf_s7comm_szl_0091_0000_eastat_4, ptr @hf_s7comm_szl_0091_0000_eastat_5, ptr @hf_s7comm_szl_0091_0000_eastat_6, ptr @hf_s7comm_szl_0091_0000_eastat_7, ptr @hf_s7comm_szl_0091_0000_eastat_dataid, ptr null], align 16
@s7comm_szl_0091_0000_berbgbr_fields = internal constant [5 x ptr] [ptr @hf_s7comm_szl_0091_0000_berbgbr_0_2, ptr @hf_s7comm_szl_0091_0000_berbgbr_3, ptr @hf_s7comm_szl_0091_0000_berbgbr_areaid, ptr @hf_s7comm_szl_0091_0000_berbgbr_7, ptr null], align 16
@.str.2783 = private unnamed_addr constant [24 x i8] c"Rack/Station configured\00", align 1
@.str.2784 = private unnamed_addr constant [19 x i8] c"Station configured\00", align 1
@.str.2785 = private unnamed_addr constant [33 x i8] c"Station configured and activated\00", align 1
@.str.2786 = private unnamed_addr constant [46 x i8] c"Rack/Station exists, activated and not failed\00", align 1
@.str.2787 = private unnamed_addr constant [41 x i8] c"Station exists, activated and not failed\00", align 1
@.str.2788 = private unnamed_addr constant [71 x i8] c"Modules of a station in a expansion rack not OK or station deactivated\00", align 1
@.str.2789 = private unnamed_addr constant [51 x i8] c"Modules of a station not OK or station deactivated\00", align 1
@.str.2790 = private unnamed_addr constant [21 x i8] c"Station info bit set\00", align 1
@.str.2791 = private unnamed_addr constant [7 x i8] c"%s: %d\00", align 1
@.str.2792 = private unnamed_addr constant [35 x i8] c"Station configured and deactivated\00", align 1
@.str.2793 = private unnamed_addr constant [63 x i8] c"Rack/Station with at least one module disrupted or deactivated\00", align 1
@.str.2794 = private unnamed_addr constant [65 x i8] c"Rack/Station with problem and/or maintenance requirement/request\00", align 1
@s7comm_szl_0096_xxxx_eastat_fields = internal constant [11 x ptr] [ptr @hf_s7comm_szl_0096_xxxx_eastat_0, ptr @hf_s7comm_szl_0096_xxxx_eastat_1, ptr @hf_s7comm_szl_0096_xxxx_eastat_2, ptr @hf_s7comm_szl_0096_xxxx_eastat_3, ptr @hf_s7comm_szl_0096_xxxx_eastat_4, ptr @hf_s7comm_szl_0096_xxxx_eastat_5, ptr @hf_s7comm_szl_0096_xxxx_eastat_6, ptr @hf_s7comm_szl_0096_xxxx_eastat_7, ptr @hf_s7comm_szl_0096_xxxx_eastat_8, ptr @hf_s7comm_szl_0096_xxxx_eastat_9, ptr null], align 16
@s7comm_szl_0096_xxxx_berbgbr_fields = internal constant [5 x ptr] [ptr @hf_s7comm_szl_0096_xxxx_berbgbr_0_2, ptr @hf_s7comm_szl_0096_xxxx_berbgbr_3, ptr @hf_s7comm_szl_0096_xxxx_berbgbr_areaid, ptr @hf_s7comm_szl_0096_xxxx_berbgbr_7, ptr null], align 16
@s7comm_szl_0424_0000_bzu_id_fields = internal constant [3 x ptr] [ptr @hf_s7comm_szl_0424_0000_bzu_id_req, ptr @hf_s7comm_szl_0424_0000_bzu_id_pre, ptr null], align 16
@switch.table.s7comm_decode_ud_cpu_szl_subfunc = private unnamed_addr constant [8 x ptr] [ptr @.str.2783, ptr @.str.2792, ptr @.str.2786, ptr @.str.2790, ptr @.str.2790, ptr @.str.2790, ptr @.str.2793, ptr @.str.2794], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @s7comm_register_szl_types(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @proto_register_subtree_array(ptr noundef @s7comm_register_szl_types.ett, i32 noundef 47)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_register_szl_types.hf, i32 noundef 11)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0000_0000_register.hf, i32 noundef 4)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0013_0000_register.hf, i32 noundef 16)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy14_000x_register.hf, i32 noundef 4)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy15_000x_register.hf, i32 noundef 4)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy11_0001_register.hf, i32 noundef 5)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy22_00xx_register.hf, i32 noundef 14)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0001_register.hf, i32 noundef 6)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0002_register.hf, i32 noundef 62)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0003_register.hf, i32 noundef 42)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0004_register.hf, i32 noundef 55)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0005_register.hf, i32 noundef 21)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0006_register.hf, i32 noundef 122)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0007_register.hf, i32 noundef 39)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0008_register.hf, i32 noundef 32)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0009_register.hf, i32 noundef 18)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0131_0010_register.hf, i32 noundef 43)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_0001_register.hf, i32 noundef 11)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_0002_register.hf, i32 noundef 3)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_0004_register.hf, i32 noundef 13)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_0005_register.hf, i32 noundef 6)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_0006_register.hf, i32 noundef 13)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_0008_register.hf, i32 noundef 13)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_000b_register.hf, i32 noundef 14)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0132_000c_register.hf, i32 noundef 14)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy1c_000x_register.hf, i32 noundef 16)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy91_0000_register.hf, i32 noundef 23)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy92_xxxx_register.hf, i32 noundef 16)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0x94_xxxx_register.hf, i32 noundef 3)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy96_xxxx_register.hf, i32 noundef 32)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy74_0000_register.hf, i32 noundef 6)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_0424_0000_register.hf, i32 noundef 11)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy76_0000_register.hf, i32 noundef 2)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy77_xxxx_register.hf, i32 noundef 9)
  tail call void @proto_register_subtree_array(ptr noundef @s7comm_szl_xy78_xxxx_register.ett, i32 noundef 11)
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef @s7comm_szl_xy78_xxxx_register.hf, i32 noundef 84)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @s7comm_decode_ud_cpu_szl_subfunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %i.i = alloca i16, align 2                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  switch i8 %3, label %.loopexit [
    i8 1, label %bb.b
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %6) ; 2 uses
  %i.l = load i32, ptr @hf_s7comm_userdata_szl_id, align 4
  %i.m = load i32, ptr @ett_s7comm_userdata_szl_id, align 4
  %i.n = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, ptr noundef @s7comm_userdata_szl_id_fields, i32 noundef 0) ; 0 uses
  %i.o = add i32 %6, 2                            ; 2 uses
  %i.p = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.o) ; 2 uses
  %i.q = load i32, ptr @hf_s7comm_userdata_szl_index, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.o, i32 noundef 2, i32 noundef 0)
  %i.s = add i32 %6, 4
  %i.t = tail call fastcc ptr @s7comm_get_szl_id_index_description_text(i16 noundef zeroext %i.k, i16 noundef zeroext %i.p) ; 2 uses
  %.not226 = icmp eq ptr %i.t, null
  br i1 %.not226, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.r, ptr noundef @.str.25, ptr noundef nonnull %i.t)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = zext i16 %i.k to i32                     ; 2 uses
  %i.v = zext i16 %i.p to i32                     ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.26, i32 noundef %i.u, i32 noundef %i.v)
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.x, i32 noundef 25, ptr noundef @.str.27, i32 noundef %i.u, i32 noundef %i.v)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.y = icmp eq i8 %4, -1
  br i1 %i.y, label %bb.f, label %bb.cs

bb.f:                                             ; preds = %bb.e
  %i.z = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %6) ; 4 uses
  %i.aa = load i32, ptr @hf_s7comm_userdata_szl_id, align 4
  %i.ab = load i32, ptr @ett_s7comm_userdata_szl_id, align 4
  %i.ac = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %6, i32 noundef %i.aa, i32 noundef %i.ab, ptr noundef @s7comm_userdata_szl_id_fields, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %6, 2                           ; 2 uses
  %i.ae = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ad) ; 5 uses
  %i.af = load i32, ptr @hf_s7comm_userdata_szl_index, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ad, i32 noundef 2, i32 noundef 0)
  %i.ah = add i32 %6, 4                           ; 2 uses
  %i.ai = tail call fastcc ptr @s7comm_get_szl_id_index_description_text(i16 noundef zeroext %i.z, i16 noundef zeroext %i.ae) ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ag, ptr noundef @.str.25, ptr noundef nonnull %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = zext i16 %i.z to i32                    ; 3 uses
  %i.ak = zext i16 %i.ae to i32                   ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef @.str.26, i32 noundef %i.aj, i32 noundef %i.ak)
  %i.al = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.am, i32 noundef 25, ptr noundef @.str.27, i32 noundef %i.aj, i32 noundef %i.ak)
  %i.an = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ah)
  %i.ao = load i32, ptr @hf_s7comm_userdata_szl_id_partlist_len, align 4
  %i.ap = zext i16 %i.an to i32                   ; 7 uses
  %i.aq = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ah, i32 noundef 2, i32 noundef %i.ap) ; 0 uses
  %i.ar = add i32 %6, 6                           ; 2 uses
  %i.as = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ar) ; 2 uses
  %i.at = load i32, ptr @hf_s7comm_userdata_szl_id_partlist_cnt, align 4
  %i.au = zext i16 %i.as to i32                   ; 2 uses
  %i.av = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.ar, i32 noundef 2, i32 noundef %i.au) ; 0 uses
  %i.aw = add i32 %6, 8                           ; 3 uses
  %i.ax = mul nuw i32 %i.au, %i.ap
  %i.ay = add i32 %5, -8                          ; 2 uses
  %i.az = icmp ugt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = udiv i32 %i.ay, %i.ap
  %i.bb = trunc i32 %i.ba to i16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0218 = phi i16 [ %i.bb, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %i.bc = icmp ugt i32 %5, 8
  br i1 %i.bc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.bd = zext i16 %.0218 to i32
  %i.be = mul nuw i32 %i.bd, %i.ap
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = icmp ne i16 %.0218, 0
  %i.bh = select i1 %i.bg, i1 %i.bf, i1 false
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bi = add nsw i32 %i.aj, -148                 ; 2 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 24) ; 2 uses
  %7 = icmp eq i16 %i.ae, 0                       ; 2 uses
  %i.bk = getelementptr i8, ptr %1, i64 416
  %i.bl = icmp ult i32 %i.bj, 8
  %i.bm = zext nneg i32 %i.bj to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.s7comm_decode_ud_cpu_szl_subfunc, i64 %i.bm
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.thread
  %.0217240 = phi i16 [ 1, %.lr.ph ], [ %i.aad, %.thread ] ; 2 uses
  %.0219239 = phi i32 [ %i.aw, %.lr.ph ], [ %.2, %.thread ] ; 137 uses
  %i.bn = zext i16 %.0217240 to i32
  %i.bo = load i32, ptr @hf_s7comm_userdata_szl_tree, align 4
  %i.bp = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bo, ptr noundef %0, i32 noundef %.0219239, i32 noundef %i.ap, i32 noundef 0) ; 2 uses
  %i.bq = load i32, ptr @ett_s7comm_szl, align 4
  %i.br = call ptr @proto_item_add_subtree(ptr noundef %i.bp, i32 noundef %i.bq) ; 159 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bp, ptr noundef @.str.28, i32 noundef %i.bn)
  switch i16 %i.z, label %bb.cr [
    i16 0, label %s7comm_decode_szl_id_xy00.exit
    i16 18, label %bb.l
    i16 274, label %bb.l
    i16 19, label %bb.m
    i16 275, label %bb.m
    i16 20, label %bb.o
    i16 276, label %bb.o
    i16 21, label %bb.p
    i16 277, label %bb.p
    i16 17, label %bb.q
    i16 273, label %bb.q
    i16 546, label %bb.r
    i16 160, label %bb.s
    i16 416, label %bb.s
    i16 1184, label %bb.s
    i16 1440, label %bb.s
    i16 1696, label %bb.s
    i16 1952, label %bb.s
    i16 2208, label %bb.s
    i16 2464, label %bb.s
    i16 2720, label %bb.s
    i16 2976, label %bb.s
    i16 3232, label %bb.s
    i16 3488, label %bb.s
    i16 3744, label %bb.s
    i16 28, label %bb.t
    i16 284, label %bb.t
    i16 540, label %bb.t
    i16 796, label %bb.t
    i16 305, label %bb.af
    i16 306, label %bb.aq
    i16 25, label %bb.az
    i16 281, label %bb.az
    i16 116, label %bb.az
    i16 372, label %bb.az
    i16 118, label %bb.ba
    i16 119, label %bb.bb
    i16 120, label %bb.bc
    i16 145, label %bb.bs
    i16 401, label %bb.bs
    i16 657, label %bb.bs
    i16 913, label %bb.bs
    i16 1169, label %bb.bs
    i16 1425, label %bb.bs
    i16 2449, label %bb.bs
    i16 2705, label %bb.bs
    i16 3217, label %bb.bs
    i16 19601, label %bb.bs
    i16 3473, label %bb.bs
    i16 3729, label %bb.bs
    i16 1060, label %bb.cp
    i16 292, label %bb.cp
    i16 3222, label %bb.co
    i16 1686, label %bb.co
    i16 1940, label %bb.cc
    i16 1684, label %bb.cc
    i16 660, label %bb.cc
    i16 404, label %bb.cc
    i16 148, label %bb.cc
    i16 146, label %s7comm_decode_szl_id_xy92_idx_xxxx.exit
    i16 16530, label %bb.bv
    i16 402, label %bb.bw
    i16 658, label %bb.bx
    i16 1170, label %bb.by
    i16 1682, label %bb.bz
    i16 18066, label %bb.ca
    i16 914, label %bb.cb
    i16 1426, label %bb.cb
    i16 17042, label %bb.cb
  ]

s7comm_decode_szl_id_xy00.exit:                   ; preds = %bb.k
  %i.bs = load i32, ptr @hf_s7comm_szl_0000_0000_szl_id, align 4
  %i.bt = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.bs, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.0.i = add i32 %.0219239, 2
  br label %.thread

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.bu = load i32, ptr @hf_s7comm_szl_xy12_0x00_charac, align 4
  %i.bv = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.bu, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bw = add i32 %.0219239, 2
  br label %.thread

bb.m:                                             ; preds = %bb.k, %bb.k
  br i1 %7, label %bb.n, label %bb.cr

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr @hf_s7comm_szl_0013_0000_index, align 4
  %i.by = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.bx, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bz = add i32 %.0219239, 2
  %i.ca = load i32, ptr @hf_s7comm_szl_0013_0000_code, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cc = add i32 %.0219239, 4
  %i.cd = load i32, ptr @hf_s7comm_szl_0013_0000_size, align 4
  %i.ce = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.cc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cf = add i32 %.0219239, 8                    ; 6 uses
  %i.cg = load i32, ptr @hf_s7comm_szl_0013_0000_mode, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ci = load i32, ptr @hf_s7comm_szl_0013_0000_mode_0, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ck = load i32, ptr @hf_s7comm_szl_0013_0000_mode_1, align 4
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_s7comm_szl_0013_0000_mode_2, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_s7comm_szl_0013_0000_mode_3, align 4
  %i.cp = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.co, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cq = load i32, ptr @hf_s7comm_szl_0013_0000_mode_4, align 4
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.cq, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cs = add i32 %.0219239, 10
  %i.ct = load i32, ptr @hf_s7comm_szl_0013_0000_granu, align 4
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ct, ptr noundef %0, i32 noundef %i.cs, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cv = add i32 %.0219239, 12
  %i.cw = load i32, ptr @hf_s7comm_szl_0013_0000_ber1, align 4
  %i.cx = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.cv, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cy = add i32 %.0219239, 16
  %i.cz = load i32, ptr @hf_s7comm_szl_0013_0000_belegt1, align 4
  %i.da = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.cy, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.db = add i32 %.0219239, 20
  %i.dc = load i32, ptr @hf_s7comm_szl_0013_0000_block1, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.db, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.de = add i32 %.0219239, 24
  %i.df = load i32, ptr @hf_s7comm_szl_0013_0000_ber2, align 4
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.de, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dh = add i32 %.0219239, 28
  %i.di = load i32, ptr @hf_s7comm_szl_0013_0000_belegt2, align 4
  %i.dj = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.dh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dk = add i32 %.0219239, 32
  %i.dl = load i32, ptr @hf_s7comm_szl_0013_0000_block2, align 4
  %i.dm = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.dl, ptr noundef %0, i32 noundef %i.dk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dn = add i32 %.0219239, 36
  br label %.thread

bb.o:                                             ; preds = %bb.k, %bb.k
  %i.do = load i32, ptr @hf_s7comm_szl_xy14_000x_index, align 4
  %i.dp = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.do, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dq = add i32 %.0219239, 2
  %i.dr = load i32, ptr @hf_s7comm_szl_xy14_000x_code, align 4
  %i.ds = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.dr, ptr noundef %0, i32 noundef %i.dq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dt = add i32 %.0219239, 4
  %i.du = load i32, ptr @hf_s7comm_szl_xy14_000x_quantity, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.du, ptr noundef %0, i32 noundef %i.dt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dw = add i32 %.0219239, 6
  %i.dx = load i32, ptr @hf_s7comm_szl_xy14_000x_reman, align 4
  %i.dy = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.dx, ptr noundef %0, i32 noundef %i.dw, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dz = add i32 %.0219239, 8
  br label %.thread

bb.p:                                             ; preds = %bb.k, %bb.k
  %i.ea = load i32, ptr @hf_s7comm_szl_xy15_000x_index, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ea, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ec = add i32 %.0219239, 2
  %i.ed = load i32, ptr @hf_s7comm_szl_xy15_000x_maxanz, align 4
  %i.ee = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ed, ptr noundef %0, i32 noundef %i.ec, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ef = add i32 %.0219239, 4
  %i.eg = load i32, ptr @hf_s7comm_szl_xy15_000x_maxlng, align 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.eg, ptr noundef %0, i32 noundef %i.ef, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ei = add i32 %.0219239, 6
  %i.ej = load i32, ptr @hf_s7comm_szl_xy15_000x_maxabl, align 4
  %i.ek = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ej, ptr noundef %0, i32 noundef %i.ei, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.el = add i32 %.0219239, 10
  br label %.thread

bb.q:                                             ; preds = %bb.k, %bb.k
  %i.em = load i32, ptr @hf_s7comm_szl_xy11_0001_index, align 4
  %i.en = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.em, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eo = add i32 %.0219239, 2
  %i.ep = load i32, ptr @hf_s7comm_szl_xy11_0001_mlfb, align 4
  %i.eq = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.eo, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.er = add i32 %.0219239, 22
  %i.es = load i32, ptr @hf_s7comm_szl_xy11_0001_bgtyp, align 4
  %i.et = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.es, ptr noundef %0, i32 noundef %i.er, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.eu = add i32 %.0219239, 24
  %i.ev = load i32, ptr @hf_s7comm_szl_xy11_0001_ausbg, align 4
  %i.ew = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ev, ptr noundef %0, i32 noundef %i.eu, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ex = add i32 %.0219239, 26
  %i.ey = load i32, ptr @hf_s7comm_szl_xy11_0001_ausbe, align 4
  %i.ez = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ey, ptr noundef %0, i32 noundef %i.ex, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fa = add i32 %.0219239, 28
  br label %.thread

bb.r:                                             ; preds = %bb.k
  %i.fb = load i32, ptr @hf_s7comm_szl_xy22_00xx_info, align 4
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.fb, ptr noundef %0, i32 noundef %.0219239, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.fd = add i32 %.0219239, 20
  %i.fe = load i32, ptr @hf_s7comm_szl_xy22_00xx_al1, align 4
  %i.ff = load i32, ptr @ett_s7comm_szl_xy22_00xx_al1, align 4
  %i.fg = call ptr @proto_tree_add_bitmask(ptr noundef %i.br, ptr noundef %0, i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef %i.ff, ptr noundef @s7comm_szl_xy22_00xx_al1_fields, i32 noundef 0) ; 0 uses
  %i.fh = add i32 %.0219239, 22
  %i.fi = load i32, ptr @hf_s7comm_szl_xy22_00xx_al2, align 4
  %i.fj = load i32, ptr @ett_s7comm_szl_xy22_00xx_al2, align 4
  %i.fk = call ptr @proto_tree_add_bitmask(ptr noundef %i.br, ptr noundef %0, i32 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.fj, ptr noundef @s7comm_szl_xy22_00xx_al2_fields, i32 noundef 0) ; 0 uses
  %i.fl = add i32 %.0219239, 24
  %i.fm = load i32, ptr @hf_s7comm_szl_xy22_00xx_al3, align 4
  %i.fn = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.fm, ptr noundef %0, i32 noundef %i.fl, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fo = add i32 %.0219239, 28
  br label %.thread

bb.s:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.fp = call i32 @s7comm_decode_ud_cpu_diagnostic_message(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %i.br, i32 noundef %.0219239)
  br label %.thread

bb.t:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.fq = load i32, ptr @hf_s7comm_szl_001c_000x_index, align 4
  %i.fr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.br, i32 noundef %i.fq, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.j) ; 0 uses
  %i.fs = add i32 %.0219239, 2                    ; 11 uses
  %i.ft = load i32, ptr %i.j, align 4
  %i.fu = and i32 %i.ft, 15
  switch i32 %i.fu, label %bb.ae [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
    i32 7, label %bb.z
    i32 8, label %bb.aa
    i32 9, label %bb.ab
    i32 10, label %bb.ac
    i32 11, label %bb.ad
  ]

bb.u:                                             ; preds = %bb.t
  %i.fv = load i32, ptr @hf_s7comm_szl_001c_0001_name, align 4
  %i.fw = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.fv, ptr noundef %0, i32 noundef %i.fs, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.fx = add i32 %.0219239, 26
  %i.fy = load i32, ptr @hf_s7comm_szl_001c_000x_res, align 4
  %i.fz = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.fy, ptr noundef %0, i32 noundef %i.fx, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %s7comm_decode_szl_id_xy1c_idx_000x.exit

bb.v:                                             ; preds = %bb.t
  %i.ga = load i32, ptr @hf_s7comm_szl_001c_0002_name, align 4
  %i.gb = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ga, ptr noundef %0, i32 noundef %i.fs, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.gc = add i32 %.0219239, 26
  %i.gd = load i32, ptr @hf_s7comm_szl_001c_000x_res, align 4
  %i.ge = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gd, ptr noundef %0, i32 noundef %i.gc, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %s7comm_decode_szl_id_xy1c_idx_000x.exit

bb.w:                                             ; preds = %bb.t
  %i.gf = load i32, ptr @hf_s7comm_szl_001c_0003_tag, align 4
  %i.gg = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gf, ptr noundef %0, i32 noundef %i.fs, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %s7comm_decode_szl_id_xy1c_idx_000x.exit

bb.x:                                             ; preds = %bb.t
  %i.gh = load i32, ptr @hf_s7comm_szl_001c_0004_copyright, align 4
  %i.gi = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.fs, i32 noundef 26, i32 noundef 0) ; 0 uses
  %i.gj = add i32 %.0219239, 28
  %i.gk = load i32, ptr @hf_s7comm_szl_001c_000x_res, align 4
  %i.gl = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.gj, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %s7comm_decode_szl_id_xy1c_idx_000x.exit

bb.y:                                             ; preds = %bb.t
  %i.gm = load i32, ptr @hf_s7comm_szl_001c_0005_serialn, align 4
  %i.gn = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gm, ptr noundef %0, i32 noundef %i.fs, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.go = add i32 %.0219239, 26
  %i.gp = load i32, ptr @hf_s7comm_szl_001c_000x_res, align 4
  %i.gq = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gp, ptr noundef %0, i32 noundef %i.go, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %s7comm_decode_szl_id_xy1c_idx_000x.exit

bb.z:                                             ; preds = %bb.t
  %i.gr = load i32, ptr @hf_s7comm_szl_001c_0007_cputypname, align 4
  %i.gs = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gr, ptr noundef %0, i32 noundef %i.fs, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %s7comm_decode_szl_id_xy1c_idx_000x.exit

bb.aa:                                            ; preds = %bb.t
  %i.gt = load i32, ptr @hf_s7comm_szl_001c_0008_snmcmmc, align 4
  %i.gu = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.gt, ptr noundef %0, i32 noundef %i.fs, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %s7comm_decode_szl_id_xy1c_idx_000x.exit

bb.ab:                                            ; preds = %bb.t
end_hunk_0
begin_hunk_1_@s7comm_decode_ud_cpu_szl_subfunc:bb.a

bb.bn:                                            ; preds = %bb.bm
  %i.ot = getelementptr i8, ptr %i.os, i64 40
  %i.ou = load ptr, ptr %i.ot, align 8            ; 2 uses
  %.not5.i288.i = icmp eq ptr %i.ou, null
  br i1 %.not5.i288.i, label %proto_item_set_generated.exit289.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ov = getelementptr i8, ptr %i.ou, i64 28     ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4
  %i.ox = or i32 %i.ow, 2
  store i32 %i.ox, ptr %i.ov, align 4
  br label %proto_item_set_generated.exit289.i

proto_item_set_generated.exit289.i:               ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %i.oy = add i32 %.0277294.i, 20                 ; 2 uses
  %i.oz = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_cdiag_entry_add_val, align 4
  %i.pa = call ptr @proto_tree_add_item(ptr noundef %i.mu, i32 noundef %i.oz, ptr noundef %0, i32 noundef %i.oy, i32 noundef 8, i32 noundef 0)
  %i.pb = load i32, ptr @ett_s7comm_szl_xy78_xxxx_dis_cdiag_add_val, align 4
  %i.pc = call ptr @proto_item_add_subtree(ptr noundef %i.pa, i32 noundef %i.pb) ; 4 uses
  %i.pd = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_cdiag_entry_add_val_0, align 4
  %i.pe = call ptr @proto_tree_add_item(ptr noundef %i.pc, i32 noundef %i.pd, ptr noundef %0, i32 noundef %i.oy, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.pf = add i32 %.0277294.i, 22
  %i.pg = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_cdiag_entry_add_val_1, align 4
  %i.ph = call ptr @proto_tree_add_item(ptr noundef %i.pc, i32 noundef %i.pg, ptr noundef %0, i32 noundef %i.pf, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.pi = add i32 %.0277294.i, 24
  %i.pj = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_cdiag_entry_add_val_2, align 4
  %i.pk = call ptr @proto_tree_add_item(ptr noundef %i.pc, i32 noundef %i.pj, ptr noundef %0, i32 noundef %i.pi, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.pl = add i32 %.0277294.i, 26
  %i.pm = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_cdiag_entry_add_val_3, align 4
  %i.pn = call ptr @proto_tree_add_item(ptr noundef %i.pc, i32 noundef %i.pm, ptr noundef %0, i32 noundef %i.pl, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.po = add i32 %.0277294.i, 28                 ; 3 uses
  %i.pp = add nuw i16 %.0275295.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i16 %i.pp, %i.mc
  br i1 %exitcond.not.i, label %bb.bp, label %bb.bg, !llvm.loop !10

bb.bp:                                            ; preds = %proto_item_set_generated.exit289.i
  %.not286.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not286.i, label %.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pq = load ptr, ptr %i.al, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.pq, i32 noundef 25, ptr noundef @.str.2782, i32 noundef %spec.select.i)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bq, %bb.bp, %bb.be
  %.1278293.i = phi i32 [ %i.po, %bb.bp ], [ %i.po, %bb.bq ], [ %i.mm, %bb.be ] ; 18 uses
  %i.pr = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_comp_state_detail, align 4
  %i.ps = load i32, ptr @ett_s7comm_szl_xy78_xxxx_dis_comp_state_detail, align 4
  %i.pt = call ptr @proto_tree_add_bitmask(ptr noundef %i.mj, ptr noundef %0, i32 noundef %.1278293.i, i32 noundef %i.pr, i32 noundef %i.ps, ptr noundef @s7comm_szl_xy78_xxxx_dis_comp_state_detail_fields, i32 noundef -2147483648) ; 0 uses
  %i.pu = add i32 %.1278293.i, 4
  %i.pv = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_io_state, align 4
  %i.pw = load i32, ptr @ett_s7comm_szl_xy78_xxxx_dis_io_state, align 4
  %i.px = call ptr @proto_tree_add_bitmask(ptr noundef %i.mj, ptr noundef %0, i32 noundef %i.pu, i32 noundef %i.pv, i32 noundef %i.pw, ptr noundef @s7comm_szl_xy78_xxxx_dis_io_state_fields, i32 noundef -2147483648) ; 0 uses
  %i.py = add i32 %.1278293.i, 6
  %i.pz = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_res, align 4
  %i.qa = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.pz, ptr noundef %0, i32 noundef %i.py, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qb = add i32 %.1278293.i, 8
  %i.qc = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_maint_state, align 4
  %i.qd = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.qc, ptr noundef %0, i32 noundef %i.qb, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.qe = add i32 %.1278293.i, 12
  %i.qf = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_operating_state, align 4
  %i.qg = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.qf, ptr noundef %0, i32 noundef %i.qe, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qh = add i32 %.1278293.i, 14
  %i.qi = load i32, ptr @hf_s7comm_szl_xy78_xxxx_dis_own_state, align 4
  %i.qj = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.qi, ptr noundef %0, i32 noundef %i.qh, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qk = add i32 %.1278293.i, 16
  %i.ql = load i32, ptr @hf_s7comm_szl_xy78_xxxx_sub_ord_io_state, align 4
  %i.qm = load i32, ptr @ett_s7comm_szl_xy78_xxxx_sub_ord_io_state, align 4
  %i.qn = call ptr @proto_tree_add_bitmask(ptr noundef %i.mj, ptr noundef %0, i32 noundef %i.qk, i32 noundef %i.ql, i32 noundef %i.qm, ptr noundef @s7comm_szl_xy78_xxxx_sub_ord_io_state_fields, i32 noundef -2147483648) ; 0 uses
  %i.qo = add i32 %.1278293.i, 18
  %i.qp = load i32, ptr @hf_s7comm_szl_xy78_xxxx_sub_ord_state, align 4
  %i.qq = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.qp, ptr noundef %0, i32 noundef %i.qo, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qr = add i32 %.1278293.i, 20
  %i.qs = load i32, ptr @hf_s7comm_szl_xy78_xxxx_disp_own_state, align 4
  %i.qt = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.qs, ptr noundef %0, i32 noundef %i.qr, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qu = add i32 %.1278293.i, 22
  %i.qv = load i32, ptr @hf_s7comm_szl_xy78_xxxx_disp_sub_ord_state, align 4
  %i.qw = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.qv, ptr noundef %0, i32 noundef %i.qu, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qx = add i32 %.1278293.i, 24
  %i.qy = load i32, ptr @hf_s7comm_szl_xy78_xxxx_disp_mode, align 4
  %i.qz = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.qy, ptr noundef %0, i32 noundef %i.qx, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ra = add i32 %.1278293.i, 26
  %i.rb = load i32, ptr @hf_s7comm_szl_xy78_xxxx_vendor, align 4
  %i.rc = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.rb, ptr noundef %0, i32 noundef %i.ra, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rd = add i32 %.1278293.i, 28
  %i.re = load i32, ptr @hf_s7comm_szl_xy78_xxxx_order_id, align 4
  %i.rf = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.re, ptr noundef %0, i32 noundef %i.rd, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.rg = add i32 %.1278293.i, 48                 ; 2 uses
  %i.rh = load i32, ptr @hf_s7comm_szl_xy78_xxxx_im1, align 4
  %i.ri = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.rh, ptr noundef %0, i32 noundef %i.rg, i32 noundef 54, i32 noundef 0)
  %i.rj = load i32, ptr @ett_s7comm_szl_xy78_xxxx_iam1, align 4
  %i.rk = call ptr @proto_item_add_subtree(ptr noundef %i.ri, i32 noundef %i.rj) ; 2 uses
  %i.rl = load i32, ptr @hf_s7comm_szl_xy78_xxxx_iam1_function, align 4
  %i.rm = call ptr @proto_tree_add_item(ptr noundef %i.rk, i32 noundef %i.rl, ptr noundef %0, i32 noundef %i.rg, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.rn = add i32 %.1278293.i, 80
  %i.ro = load i32, ptr @hf_s7comm_szl_xy78_xxxx_iam1_location, align 4
  %i.rp = call ptr @proto_tree_add_item(ptr noundef %i.rk, i32 noundef %i.ro, ptr noundef %0, i32 noundef %i.rn, i32 noundef 22, i32 noundef 0) ; 0 uses
  %i.rq = add i32 %.1278293.i, 102
  %i.rr = load i32, ptr @hf_s7comm_szl_xy78_xxxx_asset_id, align 4
  %i.rs = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.rr, ptr noundef %0, i32 noundef %i.rq, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.rt = add i32 %.1278293.i, 134                ; 5 uses
  %i.ru = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.rt) ; 2 uses
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %s7comm_decode_szl_id_xy78_idx_xxxx.exit, label %bb.br

bb.br:                                            ; preds = %.thread.i
  %i.rw = load i32, ptr @hf_s7comm_szl_xy78_xxxx_tlv, align 4
  %i.rx = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.rw, ptr noundef %0, i32 noundef %i.rt, i32 noundef %i.ru, i32 noundef 0)
  %i.ry = load i32, ptr @ett_s7comm_szl_xy78_xxxx_tlv, align 4
  %i.rz = call ptr @proto_item_add_subtree(ptr noundef %i.rx, i32 noundef %i.ry) ; 2 uses
  %i.sa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.rt) ; 2 uses
  %i.sb = load i32, ptr @hf_s7comm_szl_xy78_xxxx_tlv_num, align 4
  %i.sc = call ptr @proto_tree_add_item(ptr noundef %i.rz, i32 noundef %i.sb, ptr noundef %0, i32 noundef %i.rt, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.sd = add i32 %.1278293.i, 136                ; 2 uses
  %i.se = zext i8 %i.sa to i16
  %.not299.i = icmp eq i8 %i.sa, 0
  br i1 %.not299.i, label %s7comm_decode_szl_id_xy78_idx_xxxx.exit, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %bb.br, %.lr.ph.i230
  %.1276298.i = phi i16 [ %i.su, %.lr.ph.i230 ], [ 0, %bb.br ]
  %.2279297.i = phi i32 [ %.3.i, %.lr.ph.i230 ], [ %i.sd, %bb.br ] ; 4 uses
  %i.sf = load i32, ptr @hf_s7comm_szl_xy78_xxxx_tlv_item, align 4
  %i.sg = call ptr @proto_tree_add_item(ptr noundef %i.rz, i32 noundef %i.sf, ptr noundef %0, i32 noundef %.2279297.i, i32 noundef 2, i32 noundef 0)
  %i.sh = load i32, ptr @ett_s7comm_szl_xy78_xxxx_tlv_item, align 4
  %i.si = call ptr @proto_item_add_subtree(ptr noundef %i.sg, i32 noundef %i.sh) ; 3 uses
  %i.sj = load i32, ptr @hf_s7comm_szl_xy78_xxxx_tlv_item_type, align 4
  %i.sk = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.si, i32 noundef %i.sj, ptr noundef %0, i32 noundef %.2279297.i, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.sl = add i32 %.2279297.i, 1
  %i.sm = load i32, ptr @hf_s7comm_szl_xy78_xxxx_tlv_item_len, align 4
  %i.sn = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.si, i32 noundef %i.sm, ptr noundef %0, i32 noundef %i.sl, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.so = add i32 %.2279297.i, 2                  ; 2 uses
  %i.sp = load i8, ptr %i.b, align 1
  %cond.i = icmp eq i8 %i.sp, 1                   ; 2 uses
  %i.sq = load i8, ptr %i.a, align 1
  %i.sr = zext i8 %i.sq to i32
  %..i = select i1 %cond.i, i32 -2147483648, i32 0
  %hf_s7comm_szl_xy78_xxxx_tlv_item_dti_type.val.i = load i32, ptr @hf_s7comm_szl_xy78_xxxx_tlv_item_dti_type, align 4
  %hf_s7comm_szl_xy78_xxxx_tlv_item_data.val.i = load i32, ptr @hf_s7comm_szl_xy78_xxxx_tlv_item_data, align 4
  %i.ss = select i1 %cond.i, i32 %hf_s7comm_szl_xy78_xxxx_tlv_item_dti_type.val.i, i32 %hf_s7comm_szl_xy78_xxxx_tlv_item_data.val.i
  %i.st = call ptr @proto_tree_add_item(ptr noundef %i.si, i32 noundef %i.ss, ptr noundef %0, i32 noundef %i.so, i32 noundef %i.sr, i32 noundef %..i) ; 0 uses
  %.pn.in.i = load i8, ptr %i.a, align 1
  %.pn.i = zext i8 %.pn.in.i to i32
  %.3.i = add i32 %i.so, %.pn.i                   ; 2 uses
  %i.su = add nuw nsw i16 %.1276298.i, 1          ; 2 uses
  %exitcond300.not.i = icmp eq i16 %i.su, %i.se
  br i1 %exitcond300.not.i, label %s7comm_decode_szl_id_xy78_idx_xxxx.exit, label %.lr.ph.i230, !llvm.loop !11

s7comm_decode_szl_id_xy78_idx_xxxx.exit:          ; preds = %.lr.ph.i230, %bb.bd, %.thread.i, %bb.br
  %.0280.i = phi i32 [ %i.kz, %bb.bd ], [ %i.rt, %.thread.i ], [ %i.sd, %bb.br ], [ %.3.i, %.lr.ph.i230 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread

bb.bs:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.sv = load i32, ptr @hf_s7comm_szl_0091_0000_adr1, align 4
  %i.sw = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.sv, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sx = add i32 %.0219239, 2
  %i.sy = load i32, ptr @hf_s7comm_szl_0091_0000_adr2, align 4
  %i.sz = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.sy, ptr noundef %0, i32 noundef %i.sx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ta = add i32 %.0219239, 4
  %i.tb = load i32, ptr @hf_s7comm_szl_0091_0000_logadr, align 4
  %i.tc = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.tb, ptr noundef %0, i32 noundef %i.ta, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.td = add i32 %.0219239, 6
  %i.te = load i32, ptr @hf_s7comm_szl_0091_0000_solltyp, align 4
  %i.tf = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.te, ptr noundef %0, i32 noundef %i.td, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tg = add i32 %.0219239, 8
  %i.th = load i32, ptr @hf_s7comm_szl_0091_0000_isttyp, align 4
  %i.ti = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.th, ptr noundef %0, i32 noundef %i.tg, i32 noundef 2, i32 noundef 0) ; 0 uses
  switch i16 %i.z, label %bb.bu [
    i16 3217, label %s7comm_decode_szl_id_xy91_idx_0000.exit
    i16 19601, label %s7comm_decode_szl_id_xy91_idx_0000.exit
    i16 3473, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs
  br label %s7comm_decode_szl_id_xy91_idx_0000.exit

bb.bu:                                            ; preds = %bb.bs
  br label %s7comm_decode_szl_id_xy91_idx_0000.exit

s7comm_decode_szl_id_xy91_idx_0000.exit:          ; preds = %bb.bs, %bb.bs, %bb.bt, %bb.bu
  %hf_s7comm_szl_0091_0000_res1.sink.i = phi ptr [ @hf_s7comm_szl_0091_0000_res1, %bb.bu ], [ @hf_s7comm_szl_0091_0000_res1_0d, %bb.bt ], [ @hf_s7comm_szl_0091_0000_res1_0c_4c_4d, %bb.bs ], [ @hf_s7comm_szl_0091_0000_res1_0c_4c_4d, %bb.bs ]
  %i.tj = add i32 %.0219239, 10
  %i.tk = load i32, ptr %hf_s7comm_szl_0091_0000_res1.sink.i, align 4
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.tk, ptr noundef %0, i32 noundef %i.tj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tm = add i32 %.0219239, 12
  %i.tn = load i32, ptr @hf_s7comm_szl_0091_0000_eastat, align 4
  %i.to = load i32, ptr @ett_s7comm_szl_0091_0000_eastat, align 4
  %i.tp = call ptr @proto_tree_add_bitmask(ptr noundef %i.br, ptr noundef %0, i32 noundef %i.tm, i32 noundef %i.tn, i32 noundef %i.to, ptr noundef @s7comm_szl_0091_0000_eastat_fields, i32 noundef 0) ; 0 uses
  %i.tq = add i32 %.0219239, 14
  %i.tr = load i32, ptr @hf_s7comm_szl_0091_0000_berbgbr, align 4
  %i.ts = load i32, ptr @ett_s7comm_szl_0091_0000_berbgbr, align 4
  %i.tt = call ptr @proto_tree_add_bitmask(ptr noundef %i.br, ptr noundef %0, i32 noundef %i.tq, i32 noundef %i.tr, i32 noundef %i.ts, ptr noundef @s7comm_szl_0091_0000_berbgbr_fields, i32 noundef 0) ; 0 uses
  %i.tu = add i32 %.0219239, 16
  br label %.thread

bb.bv:                                            ; preds = %bb.k
  br label %s7comm_decode_szl_id_xy92_idx_xxxx.exit

bb.bw:                                            ; preds = %bb.k
  br label %s7comm_decode_szl_id_xy92_idx_xxxx.exit

bb.bx:                                            ; preds = %bb.k
  br label %s7comm_decode_szl_id_xy92_idx_xxxx.exit

bb.by:                                            ; preds = %bb.k
  br label %s7comm_decode_szl_id_xy92_idx_xxxx.exit

bb.bz:                                            ; preds = %bb.k
  br label %s7comm_decode_szl_id_xy92_idx_xxxx.exit

bb.ca:                                            ; preds = %bb.k
  br label %s7comm_decode_szl_id_xy92_idx_xxxx.exit

bb.cb:                                            ; preds = %bb.k, %bb.k, %bb.k
  br label %s7comm_decode_szl_id_xy92_idx_xxxx.exit

s7comm_decode_szl_id_xy92_idx_xxxx.exit:          ; preds = %bb.k, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb
  %.0.i231 = phi ptr [ @.str.2790, %bb.cb ], [ @.str.2789, %bb.ca ], [ @.str.2784, %bb.bv ], [ @.str.2785, %bb.bw ], [ @.str.2786, %bb.bx ], [ @.str.2787, %bb.by ], [ @.str.2788, %bb.bz ], [ @.str.2783, %bb.k ] ; 16 uses
  %i.tv = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_0, align 4
  %i.tw = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.tv, ptr noundef nonnull %.0.i231, i32 noundef 1, i32 noundef %.0219239)
  %i.tx = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_1, align 4
  %i.ty = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.tx, ptr noundef nonnull %.0.i231, i32 noundef 9, i32 noundef %i.tw)
  %i.tz = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_2, align 4
  %i.ua = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.tz, ptr noundef nonnull %.0.i231, i32 noundef 17, i32 noundef %i.ty)
  %i.ub = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_3, align 4
  %i.uc = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.ub, ptr noundef nonnull %.0.i231, i32 noundef 25, i32 noundef %i.ua)
  %i.ud = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_4, align 4
  %i.ue = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.ud, ptr noundef nonnull %.0.i231, i32 noundef 33, i32 noundef %i.uc)
  %i.uf = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_5, align 4
  %i.ug = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.uf, ptr noundef nonnull %.0.i231, i32 noundef 41, i32 noundef %i.ue)
  %i.uh = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_6, align 4
  %i.ui = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.uh, ptr noundef nonnull %.0.i231, i32 noundef 49, i32 noundef %i.ug)
  %i.uj = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_7, align 4
  %i.uk = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.uj, ptr noundef nonnull %.0.i231, i32 noundef 57, i32 noundef %i.ui)
  %i.ul = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_8, align 4
  %i.um = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.ul, ptr noundef nonnull %.0.i231, i32 noundef 65, i32 noundef %i.uk)
  %i.un = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_9, align 4
  %i.uo = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.un, ptr noundef nonnull %.0.i231, i32 noundef 73, i32 noundef %i.um)
  %i.up = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_10, align 4
  %i.uq = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.up, ptr noundef nonnull %.0.i231, i32 noundef 81, i32 noundef %i.uo)
  %i.ur = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_11, align 4
  %i.us = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.ur, ptr noundef nonnull %.0.i231, i32 noundef 89, i32 noundef %i.uq)
  %i.ut = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_12, align 4
  %i.uu = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.ut, ptr noundef nonnull %.0.i231, i32 noundef 97, i32 noundef %i.us)
  %i.uv = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_13, align 4
  %i.uw = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.uv, ptr noundef nonnull %.0.i231, i32 noundef 105, i32 noundef %i.uu)
  %i.ux = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_14, align 4
  %i.uy = call fastcc i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.ux, ptr noundef nonnull %.0.i231, i32 noundef 113, i32 noundef %i.uw)
  %i.uz = load i32, ptr @hf_s7comm_szl_0092_0xxx_status_15, align 4
  %i.va = call fastcc noundef i32 @add_station_byte_with_bitinfo(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.uz, ptr noundef nonnull %.0.i231, i32 noundef 121, i32 noundef %i.uy)
  br label %.thread

bb.cc:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.vb = load i32, ptr @hf_s7comm_szl_0094_xxxx_index, align 4
  %i.vc = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.vb, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vd = add i32 %.0219239, 2                    ; 4 uses
  %i.ve = load i32, ptr @hf_s7comm_szl_0094_xxxx_status_0, align 4
  %i.vf = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ve, ptr noundef %0, i32 noundef %i.vd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vg = load i32, ptr @hf_s7comm_szl_0094_xxxx_status_1_2047, align 4
  %i.vh = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.vg, ptr noundef %0, i32 noundef %i.vd, i32 noundef 256, i32 noundef 0)
  %i.vi = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.vd)
  %i.vj = and i8 %i.vi, 1
  %.not.i232 = icmp eq i8 %i.vj, 0
  br i1 %.not.i232, label %s7comm_decode_szl_id_0x94_idx_xxxx.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.bl, label %switch.lookup, label %bb.ce

switch.lookup:                                    ; preds = %bb.cd
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %switch.lookup
  %.0.i233 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.2790, %bb.cd ] ; 8 uses
  %i.vk = load i32, ptr @ett_s7comm_szl_xx9x_station_info, align 4
  %i.vl = call ptr @proto_item_add_subtree(ptr noundef %i.vh, i32 noundef %i.vk) ; 8 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.i, %bb.ce
  %.03751.i = phi i32 [ 0, %bb.ce ], [ %i.wr, %.loopexit.i ] ; 10 uses
  %.03850.i = phi i32 [ %i.vd, %bb.ce ], [ %i.ws, %.loopexit.i ] ; 10 uses
  %.04049.i = phi i32 [ 0, %bb.ce ], [ %i.wt, %.loopexit.i ]
  %i.vm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.03850.i) ; 9 uses
  %.not43.i = icmp eq i8 %i.vm, 0
  br i1 %.not43.i, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.cf
  %i.vn = and i8 %i.vm, 1
  %.not44.i = icmp eq i8 %i.vn, 0
  %or.cond.i234 = icmp eq i32 %.03751.i, 0
  %or.cond45.i = select i1 %.not44.i, i1 true, i1 %or.cond.i234
  br i1 %or.cond45.i, label %.preheader.1.i, label %bb.cg

bb.cg:                                            ; preds = %.preheader.preheader.i
  %i.vo = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.vp = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.vo, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.vp, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %.03751.i)
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.cg, %.preheader.preheader.i
  %i.vq = and i8 %i.vm, 2
  %.not44.1.i = icmp eq i8 %i.vq, 0
  br i1 %.not44.1.i, label %.preheader.2.i, label %bb.ch

bb.ch:                                            ; preds = %.preheader.1.i
  %i.vr = or disjoint i32 %.03751.i, 1
  %i.vs = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.vt = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.vs, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.vt, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %i.vr)
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.ch, %.preheader.1.i
  %i.vu = and i8 %i.vm, 4
  %.not44.2.i = icmp eq i8 %i.vu, 0
  br i1 %.not44.2.i, label %.preheader.3.i, label %bb.ci

bb.ci:                                            ; preds = %.preheader.2.i
  %i.vv = or disjoint i32 %.03751.i, 2
  %i.vw = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.vx = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.vw, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.vx, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %i.vv)
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.ci, %.preheader.2.i
  %i.vy = and i8 %i.vm, 8
  %.not44.3.i = icmp eq i8 %i.vy, 0
  br i1 %.not44.3.i, label %.preheader.4.i, label %bb.cj

bb.cj:                                            ; preds = %.preheader.3.i
  %i.vz = or disjoint i32 %.03751.i, 3
  %i.wa = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.wb = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.wa, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.wb, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %i.vz)
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.cj, %.preheader.3.i
  %i.wc = and i8 %i.vm, 16
  %.not44.4.i = icmp eq i8 %i.wc, 0
  br i1 %.not44.4.i, label %.preheader.5.i, label %bb.ck

bb.ck:                                            ; preds = %.preheader.4.i
  %i.wd = or disjoint i32 %.03751.i, 4
  %i.we = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.wf = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.we, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.wf, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %i.wd)
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.ck, %.preheader.4.i
  %i.wg = and i8 %i.vm, 32
  %.not44.5.i = icmp eq i8 %i.wg, 0
  br i1 %.not44.5.i, label %.preheader.6.i, label %bb.cl

bb.cl:                                            ; preds = %.preheader.5.i
  %i.wh = or disjoint i32 %.03751.i, 5
  %i.wi = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.wj = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.wi, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.wj, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %i.wh)
  br label %.preheader.6.i

.preheader.6.i:                                   ; preds = %bb.cl, %.preheader.5.i
  %i.wk = and i8 %i.vm, 64
  %.not44.6.i = icmp eq i8 %i.wk, 0
  br i1 %.not44.6.i, label %.preheader.7.i, label %bb.cm

bb.cm:                                            ; preds = %.preheader.6.i
  %i.wl = or disjoint i32 %.03751.i, 6
  %i.wm = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.wn = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.wm, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.wn, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %i.wl)
  br label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.cm, %.preheader.6.i
  %.not44.7.i = icmp sgt i8 %i.vm, -1
  br i1 %.not44.7.i, label %.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %.preheader.7.i
  %i.wo = or disjoint i32 %.03751.i, 7
  %i.wp = load i32, ptr @hf_s7comm_szl_xx9x_station_info, align 4
  %i.wq = call ptr @proto_tree_add_item(ptr noundef %i.vl, i32 noundef %i.wp, ptr noundef %0, i32 noundef %.03850.i, i32 noundef 1, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.wq, ptr noundef @.str.2791, ptr noundef %.0.i233, i32 noundef %i.wo)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.cn, %.preheader.7.i, %bb.cf
  %i.wr = add nuw nsw i32 %.03751.i, 8
  %i.ws = add i32 %.03850.i, 1
  %i.wt = add nuw nsw i32 %.04049.i, 1            ; 2 uses
  %exitcond.not.i235 = icmp eq i32 %i.wt, 256
  br i1 %exitcond.not.i235, label %s7comm_decode_szl_id_0x94_idx_xxxx.exit, label %bb.cf, !llvm.loop !12

s7comm_decode_szl_id_0x94_idx_xxxx.exit:          ; preds = %.loopexit.i, %bb.cc
  %i.wu = add i32 %.0219239, 258
  br label %.thread

bb.co:                                            ; preds = %bb.k, %bb.k
  %i.wv = load i32, ptr @hf_s7comm_szl_0096_xxxx_logadr_adr, align 4
  %i.ww = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.wv, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.wx = load i32, ptr @hf_s7comm_szl_0096_xxxx_logadr_area, align 4
  %i.wy = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.wx, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.wz = add i32 %.0219239, 2
  %i.xa = load i32, ptr @hf_s7comm_szl_0096_xxxx_system, align 4
  %i.xb = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xa, ptr noundef %0, i32 noundef %i.wz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xc = add i32 %.0219239, 4
  %i.xd = load i32, ptr @hf_s7comm_szl_0096_xxxx_api, align 4
  %i.xe = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xd, ptr noundef %0, i32 noundef %i.xc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.xf = add i32 %.0219239, 8
  %i.xg = load i32, ptr @hf_s7comm_szl_0096_xxxx_station, align 4
  %i.xh = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xg, ptr noundef %0, i32 noundef %i.xf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xi = add i32 %.0219239, 10
  %i.xj = load i32, ptr @hf_s7comm_szl_0096_xxxx_slot, align 4
  %i.xk = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xj, ptr noundef %0, i32 noundef %i.xi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xl = add i32 %.0219239, 12
  %i.xm = load i32, ptr @hf_s7comm_szl_0096_xxxx_subslot, align 4
  %i.xn = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xm, ptr noundef %0, i32 noundef %i.xl, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xo = add i32 %.0219239, 14
  %i.xp = load i32, ptr @hf_s7comm_szl_0096_xxxx_offset, align 4
  %i.xq = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xp, ptr noundef %0, i32 noundef %i.xo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xr = add i32 %.0219239, 16
  %i.xs = load i32, ptr @hf_s7comm_szl_0096_xxxx_solltyp1, align 4
  %i.xt = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xs, ptr noundef %0, i32 noundef %i.xr, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xu = add i32 %.0219239, 18
  %i.xv = load i32, ptr @hf_s7comm_szl_0096_xxxx_solltyp2, align 4
  %i.xw = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xv, ptr noundef %0, i32 noundef %i.xu, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xx = add i32 %.0219239, 20
  %i.xy = load i32, ptr @hf_s7comm_szl_0096_xxxx_solltyp3, align 4
  %i.xz = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.xy, ptr noundef %0, i32 noundef %i.xx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ya = add i32 %.0219239, 22
  %i.yb = load i32, ptr @hf_s7comm_szl_0096_xxxx_solltyp4_5, align 4
  %i.yc = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.yb, ptr noundef %0, i32 noundef %i.ya, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.yd = add i32 %.0219239, 26
  %i.ye = load i32, ptr @hf_s7comm_szl_0096_xxxx_solltyp6_7, align 4
  %i.yf = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.ye, ptr noundef %0, i32 noundef %i.yd, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.yg = add i32 %.0219239, 30
  %i.yh = load i32, ptr @hf_s7comm_szl_0096_xxxx_expactid, align 4
  %i.yi = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.yh, ptr noundef %0, i32 noundef %i.yg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yj = add i32 %.0219239, 32
  %i.yk = load i32, ptr @hf_s7comm_szl_0096_xxxx_reserve1, align 4
  %i.yl = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.yk, ptr noundef %0, i32 noundef %i.yj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ym = add i32 %.0219239, 34
  %i.yn = load i32, ptr @hf_s7comm_szl_0096_xxxx_eastat, align 4
  %i.yo = load i32, ptr @ett_s7comm_szl_0096_xxxx_eastat, align 4
  %i.yp = call ptr @proto_tree_add_bitmask(ptr noundef %i.br, ptr noundef %0, i32 noundef %i.ym, i32 noundef %i.yn, i32 noundef %i.yo, ptr noundef @s7comm_szl_0096_xxxx_eastat_fields, i32 noundef 0) ; 0 uses
  %i.yq = add i32 %.0219239, 36
  %i.yr = load i32, ptr @hf_s7comm_szl_0096_xxxx_berbgbr, align 4
  %i.ys = load i32, ptr @ett_s7comm_szl_0096_xxxx_berbgbr, align 4
  %i.yt = call ptr @proto_tree_add_bitmask(ptr noundef %i.br, ptr noundef %0, i32 noundef %i.yq, i32 noundef %i.yr, i32 noundef %i.ys, ptr noundef @s7comm_szl_0096_xxxx_berbgbr_fields, i32 noundef 0) ; 0 uses
  %i.yu = add i32 %.0219239, 38
  %i.yv = load i32, ptr @hf_s7comm_szl_0096_xxxx_reserve2, align 4
  %i.yw = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.yv, ptr noundef %0, i32 noundef %i.yu, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.yx = add i32 %.0219239, 48
  br label %.thread

bb.cp:                                            ; preds = %bb.k, %bb.k
  br i1 %7, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.yy = load i32, ptr @hf_s7comm_szl_0424_0000_ereig, align 4
  %i.yz = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.yy, ptr noundef %0, i32 noundef %.0219239, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.za = add i32 %.0219239, 2
  %i.zb = load i32, ptr @hf_s7comm_szl_0424_0000_ae, align 4
  %i.zc = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.zb, ptr noundef %0, i32 noundef %i.za, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zd = add i32 %.0219239, 3
  %i.ze = load i32, ptr @hf_s7comm_szl_0424_0000_bzu_id, align 4
  %i.zf = load i32, ptr @ett_s7comm_szl_0424_0000_bzu_id, align 4
  %i.zg = call ptr @proto_tree_add_bitmask(ptr noundef %i.br, ptr noundef %0, i32 noundef %i.zd, i32 noundef %i.ze, i32 noundef %i.zf, ptr noundef @s7comm_szl_0424_0000_bzu_id_fields, i32 noundef 0) ; 0 uses
  %i.zh = add i32 %.0219239, 4
  %i.zi = load i32, ptr @hf_s7comm_szl_0424_0000_res, align 4
  %i.zj = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.zi, ptr noundef %0, i32 noundef %i.zh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zk = add i32 %.0219239, 8
  %i.zl = load i32, ptr @hf_s7comm_szl_0424_0000_anlinfo1, align 4
  %i.zm = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.zl, ptr noundef %0, i32 noundef %i.zk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zn = add i32 %.0219239, 9
  %i.zo = load i32, ptr @hf_s7comm_szl_0424_0000_anlinfo2, align 4
  %i.zp = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.zo, ptr noundef %0, i32 noundef %i.zn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zq = add i32 %.0219239, 10
  %i.zr = load i32, ptr @hf_s7comm_szl_0424_0000_anlinfo3, align 4
  %i.zs = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.zr, ptr noundef %0, i32 noundef %i.zq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zt = add i32 %.0219239, 11
  %i.zu = load i32, ptr @hf_s7comm_szl_0424_0000_anlinfo4, align 4
  %i.zv = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.zu, ptr noundef %0, i32 noundef %i.zt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zw = add i32 %.0219239, 12
  %i.zx = load i32, ptr @hf_s7comm_szl_0424_0000_time, align 4
  %i.zy = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.zx, ptr noundef %0, i32 noundef %i.zw, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.zz = add i32 %.0219239, 20
  br label %.thread

bb.cr:                                            ; preds = %bb.k, %bb.m, %bb.af, %bb.aq, %bb.cp
  %i.aaa = load i32, ptr @hf_s7comm_userdata_szl_partial_list, align 4
  %i.aab = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.aaa, ptr noundef %0, i32 noundef %.0219239, i32 noundef %i.ap, i32 noundef 0) ; 0 uses
  %i.aac = add i32 %.0219239, %i.ap
  br label %.thread

.thread:                                          ; preds = %bb.cq, %bb.co, %s7comm_decode_szl_id_0x94_idx_xxxx.exit, %s7comm_decode_szl_id_xy92_idx_xxxx.exit, %s7comm_decode_szl_id_xy91_idx_0000.exit, %s7comm_decode_szl_id_xy78_idx_xxxx.exit, %s7comm_decode_szl_id_xy77_idx_xxxx.exit, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %s7comm_decode_szl_id_xy1c_idx_000x.exit, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %s7comm_decode_szl_id_xy00.exit, %bb.cr
  %.2 = phi i32 [ %i.aac, %bb.cr ], [ %i.zz, %bb.cq ], [ %i.yx, %bb.co ], [ %i.wu, %s7comm_decode_szl_id_0x94_idx_xxxx.exit ], [ %i.va, %s7comm_decode_szl_id_xy92_idx_xxxx.exit ], [ %i.tu, %s7comm_decode_szl_id_xy91_idx_0000.exit ], [ %.0280.i, %s7comm_decode_szl_id_xy78_idx_xxxx.exit ], [ %.347.lcssa.i, %s7comm_decode_szl_id_xy77_idx_xxxx.exit ], [ %i.je, %bb.ba ], [ %i.iy, %bb.az ], [ %i.ij, %bb.ay ], [ %i.ii, %bb.ax ], [ %i.ih, %bb.aw ], [ %i.ig, %bb.av ], [ %i.if, %bb.au ], [ %i.ie, %bb.at ], [ %i.id, %bb.as ], [ %i.ic, %bb.ar ], [ %i.ib, %bb.ap ], [ %i.ia, %bb.ao ], [ %i.hz, %bb.an ], [ %i.hy, %bb.am ], [ %i.hx, %bb.al ], [ %i.hw, %bb.ak ], [ %i.hv, %bb.aj ], [ %i.hu, %bb.ai ], [ %i.ht, %bb.ah ], [ %i.hs, %bb.ag ], [ %.0.i227, %s7comm_decode_szl_id_xy1c_idx_000x.exit ], [ %i.fp, %bb.s ], [ %i.fo, %bb.r ], [ %i.fa, %bb.q ], [ %i.el, %bb.p ], [ %i.dz, %bb.o ], [ %i.dn, %bb.n ], [ %i.bw, %bb.l ], [ %.0.i, %s7comm_decode_szl_id_xy00.exit ] ; 2 uses
  %i.aad = add i16 %.0217240, 1                   ; 2 uses
  %.not257 = icmp ugt i16 %i.aad, %.0218
  br i1 %.not257, label %.loopexit, label %bb.k, !llvm.loop !13

bb.cs:                                            ; preds = %bb.e
  %i.aae = zext i8 %4 to i32
  %i.aaf = getelementptr i8, ptr %1, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8
  %i.aah = getelementptr i8, ptr %1, i64 416
  %i.aai = load ptr, ptr %i.aah, align 8
  %i.aaj = tail call ptr @val_to_str(ptr noundef %i.aai, i32 noundef %i.aae, ptr noundef @s7comm_item_return_valuenames, ptr noundef @.str.30)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.aag, i32 noundef 25, ptr noundef @.str.29, ptr noundef %i.aaj)
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.preheader, %bb.a, %bb.j, %bb.cs, %bb.d
  %.3 = phi i32 [ %i.s, %bb.d ], [ %6, %bb.a ], [ %i.aw, %bb.j ], [ %6, %bb.cs ], [ %i.aw, %.preheader ], [ %.2, %.thread ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @s7comm_get_szl_id_index_description_text(i16 noundef zeroext %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  switch i16 %0, label %bb.r [
    i16 119, label %bb.b
    i16 120, label %bb.b
    i16 273, label %bb.c
    i16 274, label %bb.d
    i16 275, label %bb.e
    i16 276, label %bb.f
    i16 277, label %bb.g
    i16 278, label %bb.h
    i16 280, label %bb.i
    i16 281, label %bb.j
    i16 289, label %bb.k
    i16 546, label %bb.l
    i16 1316, label %bb.m
    i16 305, label %bb.n
    i16 306, label %bb.o
    i16 372, label %bb.p
    i16 284, label %bb.q
    i16 796, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.a = zext i16 %1 to i32
  %i.b = tail call ptr @val_to_str_const(i32 noundef %i.a, ptr noundef @szl_0111_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.c = zext i16 %1 to i32
  %i.d = tail call ptr @val_to_str_const(i32 noundef %i.c, ptr noundef @szl_0112_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.e = zext i16 %1 to i32
  %i.f = tail call ptr @val_to_str_const(i32 noundef %i.e, ptr noundef @szl_0113_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32
  %i.h = tail call ptr @val_to_str_const(i32 noundef %i.g, ptr noundef @szl_0114_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.i = zext i16 %1 to i32
  %i.j = tail call ptr @val_to_str_const(i32 noundef %i.i, ptr noundef @szl_0115_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.k = zext i16 %1 to i32
  %i.l = tail call ptr @val_to_str_const(i32 noundef %i.k, ptr noundef @szl_0116_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.m = zext i16 %1 to i32
  %i.n = tail call ptr @val_to_str_const(i32 noundef %i.m, ptr noundef @szl_0118_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.o = zext i16 %1 to i32
  %i.p = tail call ptr @val_to_str_const(i32 noundef %i.o, ptr noundef @szl_0119_0174_ledid_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.q = zext i16 %1 to i32
  %i.r = tail call ptr @val_to_str_const(i32 noundef %i.q, ptr noundef @szl_0121_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.s = zext i16 %1 to i32
  %i.t = tail call ptr @val_to_str_const(i32 noundef %i.s, ptr noundef @szl_0222_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.u = zext i16 %1 to i32
  %i.v = tail call ptr @val_to_str_const(i32 noundef %i.u, ptr noundef @szl_0524_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.w = zext i16 %1 to i32
  %i.x = tail call ptr @val_to_str_const(i32 noundef %i.w, ptr noundef @szl_0131_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.y = zext i16 %1 to i32
  %i.z = tail call ptr @val_to_str_const(i32 noundef %i.y, ptr noundef @szl_0132_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.aa = zext i16 %1 to i32
  %i.ab = tail call ptr @val_to_str_const(i32 noundef %i.aa, ptr noundef @szl_0119_0174_ledid_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.ac = zext i16 %1 to i32
  %i.ad = tail call ptr @val_to_str_const(i32 noundef %i.ac, ptr noundef @szl_xy1c_index_names, ptr noundef @.str.2723)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @.str.2722, %bb.b ], [ %i.ad, %bb.q ], [ %i.b, %bb.c ], [ %i.d, %bb.d ], [ %i.f, %bb.e ], [ %i.h, %bb.f ], [ %i.j, %bb.g ], [ %i.l, %bb.h ], [ %i.n, %bb.i ], [ %i.p, %bb.j ], [ %i.r, %bb.k ], [ %i.t, %bb.l ], [ %i.v, %bb.m ], [ %i.x, %bb.n ], [ %i.z, %bb.o ], [ %i.ab, %bb.p ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @s7comm_decode_ud_cpu_diagnostic_message(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @s7comm_decode_szl_id_0131_idx_0001(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_s7comm_szl_0131_0001_index, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = add i32 %2, 2
  %i.d = load i32, ptr @hf_s7comm_szl_0131_0001_pdu, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.c, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = add i32 %2, 4
  %i.g = load i32, ptr @hf_s7comm_szl_0131_0001_anz, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = add i32 %2, 6
  %i.j = load i32, ptr @hf_s7comm_szl_0131_0001_mpi_bps, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.l = add i32 %2, 10
  %i.m = load i32, ptr @hf_s7comm_szl_0131_0001_kbus_bps, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = add i32 %2, 14
  %i.p = load i32, ptr @hf_s7comm_szl_0131_0001_res, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 26, i32 noundef 0) ; 0 uses
  %i.r = add i32 %2, 40
  ret i32 %i.r
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @s7comm_decode_szl_id_0131_idx_0002(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_s7comm_szl_0131_0002_index, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = add i32 %2, 2
  %i.d = load i32, ptr @hf_s7comm_szl_0131_0002_funkt_0, align 4
  %i.e = load i32, ptr @ett_s7comm_szl_0131_0002_funkt_0, align 4
  %i.f = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %0, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e, ptr noundef @s7comm_szl_0131_0002_funkt_0_fields, i32 noundef 0) ; 0 uses
  %i.g = add i32 %2, 3
  %i.h = load i32, ptr @hf_s7comm_szl_0131_0002_funkt_1, align 4
  %i.i = load i32, ptr @ett_s7comm_szl_0131_0002_funkt_1, align 4
  %i.j = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %0, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i, ptr noundef @s7comm_szl_0131_0002_funkt_1_fields, i32 noundef 0) ; 0 uses
  %i.k = add i32 %2, 4
  %i.l = load i32, ptr @hf_s7comm_szl_0131_0002_funkt_2, align 4
  %i.m = load i32, ptr @ett_s7comm_szl_0131_0002_funkt_2, align 4
end_hunk_1
