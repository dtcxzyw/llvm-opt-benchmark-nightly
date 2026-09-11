Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_lt_phy?download=true
inline.NumInlined: 179
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.22 = private unnamed_addr constant [77 x i8] c"PHY %c Timeout waiting for previous transaction to complete. Resetting bus.\0A\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"PHY %c Error occurred during P2P write command. Status: 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"lane_count\00", align 1
@intel_lt_phy_enable_disable_tx.__UNIQUE_ID_addressable___SCK__WARN_trap_711 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.25 = private unnamed_addr constant [82 x i8] c"[drm] PLL state %s (%s): clock difference too high: computed %d, pre-computed %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"precomputed\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"computed\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"PLL state %s (%s):\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i64, align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"xe3plpd_lt_dp_rbr\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"xe3plpd_lt_dp_hbr1\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"xe3plpd_lt_dp_hbr2\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"xe3plpd_lt_dp_hbr3\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"xe3plpd_lt_dp_uhbr10\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"xe3plpd_lt_dp_uhbr13_5\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"xe3plpd_lt_dp_uhbr20\00", align 1
@xe3plpd_lt_dp_tables = internal unnamed_addr constant [8 x { ptr, i8, [3 x i8], i32, ptr }] [{ ptr, i8, [3 x i8], i32, ptr } { ptr @.str.29, i8 0, [3 x i8] zeroinitializer, i32 162000, ptr @xe3plpd_lt_dp_rbr }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.30, i8 0, [3 x i8] zeroinitializer, i32 270000, ptr @xe3plpd_lt_dp_hbr1 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.31, i8 0, [3 x i8] zeroinitializer, i32 540000, ptr @xe3plpd_lt_dp_hbr2 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.32, i8 0, [3 x i8] zeroinitializer, i32 810000, ptr @xe3plpd_lt_dp_hbr3 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.33, i8 0, [3 x i8] zeroinitializer, i32 1000000, ptr @xe3plpd_lt_dp_uhbr10 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.34, i8 0, [3 x i8] zeroinitializer, i32 1350000, ptr @xe3plpd_lt_dp_uhbr13_5 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.35, i8 0, [3 x i8] zeroinitializer, i32 2000000, ptr @xe3plpd_lt_dp_uhbr20 }, { ptr, i8, [3 x i8], i32, ptr } zeroinitializer], align 16
@xe3plpd_lt_dp_rbr = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\05\0A* ", [4 x i8] c"\80\00\00\00", [4 x i8] c"\04\04\82(", [4 x i8] c"\FA\16\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\05\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"KH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0A", [4 x i8] zeroinitializer], [3 x i8] c"\83-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_dp_hbr1 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\03\CA4\A0", [4 x i8] c"\E0\00\00\00", [4 x i8] c"\05\04\81\AD", [4 x i8] c"\FA\11\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\07\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"CH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0D", [4 x i8] zeroinitializer], [3 x i8] c"\8B-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_dp_hbr2 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\01M4\A0", [4 x i8] c"\E0\00\00\00", [4 x i8] c"\0A\04\81\DA", [4 x i8] c"\FA\11\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\07\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"CH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0D", [4 x i8] zeroinitializer], [3 x i8] c"\93-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_dp_hbr3 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\01J4\A0", [4 x i8] c"\E0\00\00\00", [4 x i8] c"\05\04\80\A8", [4 x i8] c"\FA\11\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\07\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"CH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0D", [4 x i8] zeroinitializer], [3 x i8] c"\9B-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_dp_uhbr10 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\85\85\85\85\86\86\86\86\86\86\86\86\86", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\01\0A \80", [4 x i8] c"j\AA\AA\AB", [4 x i8] c"\00\03\04\94", [4 x i8] c"\FA\1C\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\04\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"EH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\14*\14", [4 x i8] c"\00[\E0\08", [4 x i8] zeroinitializer], [3 x i8] c"C-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_dp_uhbr13_5 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\02\09+\E0", [4 x i8] c"\90\00\00\00", [4 x i8] c"\08\04\80\E0", [4 x i8] c"\FA\15\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\06\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"IH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00W\E0\0C", [4 x i8] zeroinitializer], [3 x i8] c"\CB-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_dp_uhbr20 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\85\85\85\85\86\86\86\86\86\86\86\86\86", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\01\0A \80", [4 x i8] c"j\AA\AA\AB", [4 x i8] c"\00\03\04\94", [4 x i8] c"\FA\1C\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\04\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"EH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\14*\14", [4 x i8] c"\00[\E0\08", [4 x i8] zeroinitializer], [3 x i8] c"S-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.44 = private unnamed_addr constant [20 x i8] c"xe3plpd_lt_edp_2_16\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"xe3plpd_lt_edp_2_43\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"xe3plpd_lt_edp_3_24\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"xe3plpd_lt_edp_4_32\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"xe3plpd_lt_edp_6_75\00", align 1
@xe3plpd_lt_edp_tables = internal unnamed_addr constant [10 x { ptr, i8, [3 x i8], i32, ptr }] [{ ptr, i8, [3 x i8], i32, ptr } { ptr @.str.29, i8 0, [3 x i8] zeroinitializer, i32 162000, ptr @xe3plpd_lt_dp_rbr }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.44, i8 0, [3 x i8] zeroinitializer, i32 216000, ptr @xe3plpd_lt_edp_2_16 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.45, i8 0, [3 x i8] zeroinitializer, i32 243000, ptr @xe3plpd_lt_edp_2_43 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.30, i8 0, [3 x i8] zeroinitializer, i32 270000, ptr @xe3plpd_lt_dp_hbr1 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.46, i8 0, [3 x i8] zeroinitializer, i32 324000, ptr @xe3plpd_lt_edp_3_24 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.47, i8 0, [3 x i8] zeroinitializer, i32 432000, ptr @xe3plpd_lt_edp_4_32 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.31, i8 0, [3 x i8] zeroinitializer, i32 540000, ptr @xe3plpd_lt_dp_hbr2 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.48, i8 0, [3 x i8] zeroinitializer, i32 675000, ptr @xe3plpd_lt_edp_6_75 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.32, i8 0, [3 x i8] zeroinitializer, i32 810000, ptr @xe3plpd_lt_dp_hbr3 }, { ptr, i8, [3 x i8], i32, ptr } zeroinitializer], align 16
@xe3plpd_lt_edp_2_16 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\03\CA* ", [4 x i8] c"\80\00\00\00", [4 x i8] c"\06\04\81\BC", [4 x i8] c"\FA\16\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\05\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"KH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0A", [4 x i8] zeroinitializer], [3 x i8] c"\A3-\01", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_edp_2_43 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\03\CA/`", [4 x i8] c"\B0\00\00\00", [4 x i8] c"\06\04\81\BC", [4 x i8] c"\FA\13\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\06\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"GH\00\00", [4 x i8] zeroinitializer, [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0C", [4 x i8] zeroinitializer], [3 x i8] c"\AB-\01", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_edp_3_24 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\02\8A* ", [4 x i8] c"\80\00\00\00", [4 x i8] c"\06\04\81(", [4 x i8] c"\FA\16\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\05\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"KH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0A", [4 x i8] zeroinitializer], [3 x i8] c"\B3-\01", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_edp_4_32 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\01M* ", [4 x i8] c"\80\00\00\00", [4 x i8] c"\0C\04\81\BC", [4 x i8] c"\FA\16\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\05\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"KH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00[\E0\0A", [4 x i8] zeroinitializer], [3 x i8] c"\BB-\01", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_edp_6_75 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\01J+\E0", [4 x i8] c"\90\00\00\00", [4 x i8] c"\06\04\80\A8", [4 x i8] c"\FA\15\83\11", [4 x i8] c"\80\0F\F9S", [4 x i8] c"\84&\06\04", [4 x i8] c"\00\E0\01\00", [4 x i8] c"IH\00\00", [4 x i8] c"'\08\00\00", [4 x i8] c"Z\13)\13", [4 x i8] c"\00W\E0\0C", [4 x i8] zeroinitializer], [3 x i8] c"\DB-\01", i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [20 x i8] c"xe3plpd_lt_hdmi_252\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"xe3plpd_lt_hdmi_742p5\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"xe3plpd_lt_hdmi_1p485\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"xe3plpd_lt_hdmi_5p94\00", align 1
@xe3plpd_lt_hdmi_tables = internal unnamed_addr constant [5 x { ptr, i8, [3 x i8], i32, ptr }] [{ ptr, i8, [3 x i8], i32, ptr } { ptr @.str.55, i8 1, [3 x i8] zeroinitializer, i32 25200, ptr @xe3plpd_lt_hdmi_252 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.56, i8 1, [3 x i8] zeroinitializer, i32 74250, ptr @xe3plpd_lt_hdmi_742p5 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.57, i8 1, [3 x i8] zeroinitializer, i32 148500, ptr @xe3plpd_lt_hdmi_1p485 }, { ptr, i8, [3 x i8], i32, ptr } { ptr @.str.58, i8 1, [3 x i8] zeroinitializer, i32 594000, ptr @xe3plpd_lt_hdmi_5p94 }, { ptr, i8, [3 x i8], i32, ptr } zeroinitializer], align 16
@xe3plpd_lt_hdmi_252 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\0C\15'`", [4 x i8] zeroinitializer, [4 x i8] c"\08\04\98(", [4 x i8] c"B\00\84\10", [4 x i8] c"\80\0F\D9\B5", [4 x i8] c"\86\00\00\00", [4 x i8] c"\01\A0\01\00", [4 x i8] c"K\00\00\00", [4 x i8] c"(\00\00\00", [4 x i8] c"\00\14*\14", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [3 x i8] c"\84-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_hdmi_742p5 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\04\15&\A0", [4 x i8] c"`\00\00\00", [4 x i8] c"\08\04\88(", [4 x i8] c"\FA\0C\84\11", [4 x i8] c"\80\0F\D9S", [4 x i8] c"\86\00\00\00", [4 x i8] c"\01\A0\01\00", [4 x i8] c"K\00\00\00", [4 x i8] c"(\00\00\00", [4 x i8] c"\00\14*\14", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [3 x i8] c"\84-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_hdmi_1p485 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\02\15&\A0", [4 x i8] c"`\00\00\00", [4 x i8] c"\08\04\84(", [4 x i8] c"\FA\0C\84\11", [4 x i8] c"\80\0F\D9S", [4 x i8] c"\86\00\00\00", [4 x i8] c"\01\A0\01\00", [4 x i8] c"K\00\00\00", [4 x i8] c"(\00\00\00", [4 x i8] c"\00\14*\14", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [3 x i8] c"\84-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@xe3plpd_lt_hdmi_5p94 = internal constant { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i8, i32 } { [13 x i8] c"\87\87\87\87\88\88\88\88\88\88\88\88\88", [13 x i8] c"\10\0C\14\E4\0C\10\14\18H@L$D", [13 x [4 x i8]] [[4 x i8] c"\00L\02\00", [4 x i8] c"\00\95&\A0", [4 x i8] c"`\00\00\00", [4 x i8] c"\08\04\81(", [4 x i8] c"\FA\0C\84\11", [4 x i8] c"\80\0F\D9S", [4 x i8] c"\86\00\00\00", [4 x i8] c"\01\A0\01\00", [4 x i8] c"K\00\00\00", [4 x i8] c"(\00\00\00", [4 x i8] c"\00\14*\14", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [3 x i8] c"\84-\00", i8 0, i8 0, i8 0, i32 0 }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_modinfo_556, ptr @assert_dc_off.__UNIQUE_ID_addressable___SCK__WARN_trap_680, ptr @intel_lt_phy_calc_hdmi_port_clock.__UNIQUE_ID_addressable___SCK__WARN_trap_698, ptr @intel_lt_phy_calc_port_clock.__UNIQUE_ID_addressable___SCK__WARN_trap_709, ptr @intel_lt_phy_enable_disable_tx.__UNIQUE_ID_addressable___SCK__WARN_trap_711, ptr @intel_lt_phy_get_dp_clock.__UNIQUE_ID_addressable___SCK__WARN_trap_691, ptr @intel_lt_phy_pll_calc_state.__UNIQUE_ID_addressable___SCK__WARN_trap_710, ptr @intel_lt_phy_pll_tables_get.__UNIQUE_ID_addressable___SCK__WARN_trap_697, ptr @intel_lt_phy_set_signal_levels.__UNIQUE_ID_addressable___SCK__WARN_trap_712], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: write)
define dso_local range(i32 -22, 1) i32 @intel_lt_phy_calculate_hdmi_state(ptr nofree noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.04876.i = phi i64 [ 11850, %bb.a ], [ 10000, %bb.f ]
  %.04975.i = phi i64 [ 16200, %bb.a ], [ 12000, %bb.f ]
  %.05474.i = phi i32 [ 0, %bb.a ], [ %i.be, %bb.f ] ; 2 uses
  %i.b = icmp eq i32 %.05474.i, 2
  %i.c = select i1 %i.b, i64 2, i64 1             ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ 2, %bb.b ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.d = mul nuw nsw i64 %indvars.iv.i, %i.a
  %i.e = udiv i64 %i.d, 200                       ; 5 uses
  %i.f = shl i64 %i.e, 32
  %i.g = udiv i64 %i.f, 38400                     ; 2 uses
  %i.h = and i64 %i.g, 562945658454016
  %i.i = and i64 %i.g, 4294967295
  %i.j = mul nuw nsw i64 %i.i, 500                ; 2 uses
  %i.k = and i64 %i.j, 2194728288256
  %i.l = mul nuw nsw i64 %i.h, 500
  %i.m = add nuw nsw i64 %i.k, %i.l
  %i.n = and i64 %i.j, 4294967292
  %i.o = mul nuw nsw i64 %i.n, 38400              ; 2 uses
  %i.p = and i64 %i.o, 281470681743360
  %i.q = mul i64 %i.m, 38400
  %i.r = add i64 %i.p, %i.q
  %i.s = and i64 %i.o, 4294965248
  %i.t = or disjoint i64 %i.r, %i.s
  %.fr.i = freeze i64 %i.t
  %i.u = udiv i64 %.fr.i, 500                     ; 2 uses
  %i.v = lshr i64 %i.u, 32                        ; 5 uses
  %i.w = icmp samesign ugt i64 %i.v, %i.e
  %i.x = sub nuw nsw i64 %i.v, %i.e
  %i.y = sub nuw nsw i64 %i.e, %i.v
  %i.z = select i1 %i.w, i64 %i.x, i64 %i.y
  %i.aa = udiv i64 %i.z, %i.e
  %.not.i = icmp samesign uge i64 %i.v, %.04876.i
  %.not60.i = icmp samesign ule i64 %i.v, %.04975.i
  %or.cond.not64.i = select i1 %.not.i, i1 %.not60.i, i1 false
  %i.ab = icmp samesign ult i64 %i.aa, %i.c
  %or.cond63.i = select i1 %or.cond.not64.i, i1 %i.ab, i1 false
  br i1 %or.cond63.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.ac = icmp samesign ult i64 %indvars.iv.i, 254
  br i1 %i.ac, label %bb.c, label %.preheader, !llvm.loop !20

.preheader:                                       ; preds = %bb.d, %bb.e
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %bb.e ], [ 2, %bb.d ] ; 4 uses
  %i.ad = mul nuw nsw i64 %indvars.iv.1.i, %i.a
  %i.ae = udiv i64 %i.ad, 200                     ; 5 uses
  %i.af = shl i64 %i.ae, 32
  %i.ag = udiv i64 %i.af, 38400                   ; 2 uses
  %i.ah = and i64 %i.ag, 562945658454016
  %i.ai = and i64 %i.ag, 4294967295
  %i.aj = mul nuw nsw i64 %i.ai, 500              ; 2 uses
  %i.ak = and i64 %i.aj, 2194728288256
  %i.al = mul nuw nsw i64 %i.ah, 500
  %i.am = add nuw nsw i64 %i.ak, %i.al
  %i.an = and i64 %i.aj, 4294967292
  %i.ao = mul nuw nsw i64 %i.an, 38400            ; 2 uses
  %i.ap = and i64 %i.ao, 281470681743360
  %i.aq = mul i64 %i.am, 38400
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = and i64 %i.ao, 4294965248
  %i.at = or disjoint i64 %i.ar, %i.as
  %.fr.1.i = freeze i64 %i.at                     ; 2 uses
  %i.au = udiv i64 %.fr.1.i, 500                  ; 2 uses
  %i.av = lshr i64 %i.au, 32                      ; 3 uses
  %i.aw = icmp samesign ugt i64 %i.av, %i.ae
  %i.ax = sub nuw nsw i64 %i.av, %i.ae
  %i.ay = sub nuw nsw i64 %i.ae, %i.av
  %i.az = select i1 %i.aw, i64 %i.ax, i64 %i.ay
  %i.ba = udiv i64 %i.az, %i.ae
  %i.bb = add i64 %.fr.1.i, -21474836480000000
  %or.cond.not64.1.i = icmp ult i64 %i.bb, 4297114779648000
  %i.bc = icmp samesign ult i64 %i.ba, %i.c
  %or.cond63.1.i = select i1 %or.cond.not64.1.i, i1 %i.bc, i1 false
  br i1 %or.cond63.1.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 2
  %i.bd = icmp samesign ult i64 %indvars.iv.1.i, 254
  br i1 %i.bd, label %.preheader, label %bb.f, !llvm.loop !20

bb.f:                                             ; preds = %bb.e
  %i.be = add nuw nsw i32 %.05474.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, 5
  br i1 %exitcond.not.i, label %calculate_target_dco_and_loop_cnt.exit, label %bb.b, !llvm.loop !21

.loopexit:                                        ; preds = %bb.c, %.preheader
  %.05270.lcssa.wide.i = phi i64 [ %indvars.iv.1.i, %.preheader ], [ %indvars.iv.i, %bb.c ] ; 3 uses
  %.lcssa.i = phi i64 [ %i.au, %.preheader ], [ %i.u, %bb.c ]
  %i.bf = trunc nuw nsw i64 %.05270.lcssa.wide.i to i32
  %i.bg = add nuw nsw i64 %.lcssa.i, 42949671     ; 2 uses
  %i.bh = urem i64 %i.bg, 42949672
  %i.bi = sub nuw nsw i64 %i.bg, %i.bh            ; 4 uses
  %i.bj = udiv i64 %i.bi, 38400                   ; 2 uses
  %i.bk = and i64 %i.bj, 4393751543808
  %i.bl = and i64 %i.bj, 4294967295
  %i.bm = mul nuw nsw i64 %i.bl, 1000             ; 6 uses
  %i.bn = and i64 %i.bm, 4393751543808            ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bk, 1000
  %i.bp = add nuw nsw i64 %i.bn, %i.bo            ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.bp, 2199023255551
  br i1 %i.bq, label %calculate_target_dco_and_loop_cnt.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.br = and i64 %i.bm, 4294967288
  %.not.not = icmp eq i64 %i.br, 0                ; 3 uses
  %. = select i1 %.not.not, i64 36, i64 70        ; 2 uses
  %i.bs = mul nuw nsw i64 %., 220000
  %i.bt = add nuw nsw i64 %i.bs, 20000000000
  %i.bu = mul nuw nsw i64 %., 16896000            ; 2 uses
  %i.bv = udiv i64 %i.bt, %i.bu
  %.lhs.trunc = trunc nuw nsw i64 %i.bu to i32
  %i.bw = udiv i32 %.lhs.trunc, 1000              ; 2 uses
  %.lhs.trunc201 = add nuw nsw i32 %i.bw, 80000000
  %i.bx = udiv i32 %.lhs.trunc201, %i.bw
  %.zext202 = zext nneg i32 %i.bx to i64
  %.v = select i1 %.not.not, i64 %i.bv, i64 %.zext202
  %i.by = lshr i64 %.v, 1                         ; 2 uses
  br i1 %.not.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = mul nuw nsw i64 %i.bi, 70
  %i.ca = lshr i64 %i.bz, 32
  %.rhs.trunc203 = trunc nuw nsw i64 %i.ca to i32
  %i.cb = udiv i32 10000000, %.rhs.trunc203
  %.zext204 = zext nneg i32 %i.cb to i64
  %i.cc = shl nuw nsw i64 %.zext204, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cd = phi i8 [ 83, %bb.h ], [ -75, %bb.g ]
  %i.ce = phi i64 [ 4194304000, %bb.h ], [ 1107296256, %bb.g ]
  %i.cf = phi i64 [ %i.cc, %bb.h ], [ 0, %bb.g ]
  %i.cg = icmp samesign ult i64 %i.bi, 50895362457600 ; 5 uses
  %i.ch = icmp samesign ugt i64 %i.bi, 55667071123455
  %.162 = select i1 %i.ch, i32 168067072, i32 134512640
  %sh.diff = lshr exact i64 %i.bn, 27
  %i.ci = shl nuw nsw i32 %i.bf, 6                ; 2 uses
  %i.cj = add nuw nsw i32 %.162, %i.ci            ; 3 uses
  %i.ck = select i1 %i.cg, i64 33792, i64 29440
  %i.cl = add nuw nsw i64 %i.ck, %i.by            ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, %i.ce
  %i.cn = add nuw nsw i64 %i.cm, %i.cf            ; 2 uses
  %i.co = select i1 %i.cg, i32 4, i32 3           ; 2 uses
  %2 = select i1 %i.cg, i32 512, i32 256
  %3 = shl nuw nsw i32 %i.co, 16
  %i.cp = or disjoint i32 %3, %2
  %i.cq = or disjoint i32 %i.cp, %i.co
  %i.cr = or disjoint i32 %i.cq, 1058832          ; 3 uses
  %i.cs = icmp eq i32 %1, 10000
  %i.ct = icmp eq i32 %1, 20000
  %or.cond.not207.not212 = or i1 %i.cs, %i.ct
  %i.cu = icmp eq i32 %1, 2500
  %or.cond3.not.not209 = or i1 %i.cu, %or.cond.not207.not212
  %narrow.not = select i1 %or.cond3.not.not209, i1 true, i1 %i.cg ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 78
  store i8 -124, ptr %i.cv, align 2
  %i.cw = getelementptr i8, ptr %0, i64 79
  store i8 45, ptr %i.cw, align 1
  %i.cx = select i1 %narrow.not, i8 -123, i8 -121 ; 4 uses
  store i8 %i.cx, ptr %0, align 4
  %i.cy = getelementptr i8, ptr %0, i64 13
  store i8 16, ptr %i.cy, align 1
  %i.cz = getelementptr i8, ptr %0, i64 1
  store i8 %i.cx, ptr %i.cz, align 1
  %i.da = getelementptr i8, ptr %0, i64 14
  store i8 12, ptr %i.da, align 2
  %i.db = getelementptr i8, ptr %0, i64 2
  store i8 %i.cx, ptr %i.db, align 2
  %i.dc = getelementptr i8, ptr %0, i64 15
  store i8 20, ptr %i.dc, align 1
  %i.dd = getelementptr i8, ptr %0, i64 3
  store i8 %i.cx, ptr %i.dd, align 1
  %i.de = getelementptr i8, ptr %0, i64 16
  store i8 -28, ptr %i.de, align 4
  %i.df = select i1 %narrow.not, i8 -122, i8 -120 ; 9 uses
  %i.dg = getelementptr i8, ptr %0, i64 4
  store i8 %i.df, ptr %i.dg, align 4
  %i.dh = getelementptr i8, ptr %0, i64 17
  store i8 12, ptr %i.dh, align 1
  %i.di = getelementptr i8, ptr %0, i64 5
  store i8 %i.df, ptr %i.di, align 1
  %i.dj = getelementptr i8, ptr %0, i64 18
  store i8 16, ptr %i.dj, align 2
  %i.dk = getelementptr i8, ptr %0, i64 6
  store i8 %i.df, ptr %i.dk, align 2
  %i.dl = getelementptr i8, ptr %0, i64 19
  store i8 20, ptr %i.dl, align 1
  %i.dm = getelementptr i8, ptr %0, i64 7
  store i8 %i.df, ptr %i.dm, align 1
  %i.dn = getelementptr i8, ptr %0, i64 20
  store i8 24, ptr %i.dn, align 4
  %i.do = getelementptr i8, ptr %0, i64 8
  store i8 %i.df, ptr %i.do, align 4
  %i.dp = getelementptr i8, ptr %0, i64 21
  store i8 72, ptr %i.dp, align 1
  %i.dq = getelementptr i8, ptr %0, i64 9
  store i8 %i.df, ptr %i.dq, align 1
  %i.dr = getelementptr i8, ptr %0, i64 22
  store i8 64, ptr %i.dr, align 2
  %i.ds = getelementptr i8, ptr %0, i64 10
  store i8 %i.df, ptr %i.ds, align 2
  %i.dt = getelementptr i8, ptr %0, i64 23
  store i8 76, ptr %i.dt, align 1
  %i.du = getelementptr i8, ptr %0, i64 11
  store i8 %i.df, ptr %i.du, align 1
  %i.dv = getelementptr i8, ptr %0, i64 24
  store i8 36, ptr %i.dv, align 4
  %i.dw = getelementptr i8, ptr %0, i64 12
  store i8 %i.df, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %0, i64 25
  store i8 68, ptr %i.dx, align 1
  %i.dy = getelementptr i8, ptr %0, i64 26
  store i8 0, ptr %i.dy, align 2
  %i.dz = getelementptr i8, ptr %0, i64 27
  store i8 76, ptr %i.dz, align 1
  %i.ea = getelementptr i8, ptr %0, i64 28
  store i8 2, ptr %i.ea, align 4
  %i.eb = getelementptr i8, ptr %0, i64 29
  store i8 16, ptr %i.eb, align 1
  %i.ec = lshr i64 %.05270.lcssa.wide.i, 3
  %i.ed = trunc nuw nsw i64 %i.ec to i8
  %i.ee = getelementptr i8, ptr %0, i64 30
  store i8 %i.ed, ptr %i.ee, align 2
  %.tr = trunc nuw i64 %.05270.lcssa.wide.i to i8
  %i.ef = shl i8 %.tr, 5
  %i.eg = or disjoint i8 %i.ef, 21
  %i.eh = getelementptr i8, ptr %0, i64 31
  store i8 %i.eg, ptr %i.eh, align 1
  %i.ei = lshr i64 %i.bp, 35
  %i.ej = trunc nuw nsw i64 %i.ei to i8
  %i.ek = getelementptr i8, ptr %0, i64 32
  store i8 %i.ej, ptr %i.ek, align 4
  %i.el = trunc i64 %sh.diff to i8
  %i.em = getelementptr i8, ptr %0, i64 33
  store i8 %i.el, ptr %i.em, align 1
  %i.en = lshr i64 %i.bm, 24
  %i.eo = trunc i64 %i.en to i8
  %i.ep = getelementptr i8, ptr %0, i64 34
  store i8 %i.eo, ptr %i.ep, align 2
  %i.eq = lshr i64 %i.bm, 16
  %i.er = trunc i64 %i.eq to i8
  %i.es = getelementptr i8, ptr %0, i64 35
  store i8 %i.er, ptr %i.es, align 1
  %i.et = lshr i64 %i.bm, 8
  %i.eu = trunc i64 %i.et to i8
  %i.ev = getelementptr i8, ptr %0, i64 36
  store i8 %i.eu, ptr %i.ev, align 4
  %i.ew = trunc i64 %i.bm to i8
  %i.ex = getelementptr i8, ptr %0, i64 37
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = lshr i32 %i.cj, 24
  %i.ez = trunc nuw nsw i32 %i.ey to i8
  %i.fa = getelementptr i8, ptr %0, i64 38
  store i8 %i.ez, ptr %i.fa, align 2
  %i.fb = lshr i32 %i.cj, 16
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = getelementptr i8, ptr %0, i64 39
  store i8 %i.fc, ptr %i.fd, align 1
  %i.fe = lshr i32 %i.cj, 8
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = getelementptr i8, ptr %0, i64 40
  store i8 %i.ff, ptr %i.fg, align 4
  %i.fh = trunc i32 %i.ci to i8
  %i.fi = or disjoint i8 %i.fh, 40
  %i.fj = getelementptr i8, ptr %0, i64 41
  store i8 %i.fi, ptr %i.fj, align 1
  %i.fk = lshr i64 %i.cn, 24
  %i.fl = trunc i64 %i.fk to i8
  %i.fm = getelementptr i8, ptr %0, i64 42
  store i8 %i.fl, ptr %i.fm, align 2
  %i.fn = lshr i64 %i.cn, 16
  %i.fo = trunc i64 %i.fn to i8
  %i.fp = getelementptr i8, ptr %0, i64 43
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = lshr i64 %i.cl, 8
  %i.fr = trunc nuw i64 %i.fq to i8
  %i.fs = getelementptr i8, ptr %0, i64 44
  store i8 %i.fr, ptr %i.fs, align 4
  %i.ft = trunc nuw nsw i64 %i.by to i8
  %i.fu = getelementptr i8, ptr %0, i64 45
  store i8 %i.ft, ptr %i.fu, align 1
  %i.fv = getelementptr i8, ptr %0, i64 46
  store i8 -128, ptr %i.fv, align 2
  %i.fw = getelementptr i8, ptr %0, i64 47
  store i8 15, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %0, i64 48
  store i8 -39, ptr %i.fx, align 4
  %i.fy = getelementptr i8, ptr %0, i64 49
  store i8 %i.cd, ptr %i.fy, align 1
  %i.fz = select i1 %i.cg, i8 -122, i8 -120
  %i.ga = getelementptr i8, ptr %0, i64 50
  store i8 %i.fz, ptr %i.ga, align 2
  %i.gb = getelementptr i8, ptr %0, i64 51
  store i8 0, ptr %i.gb, align 1
  %i.gc = getelementptr i8, ptr %0, i64 52
  store i8 0, ptr %i.gc, align 4
  %i.gd = getelementptr i8, ptr %0, i64 53
  store i8 0, ptr %i.gd, align 1
  %i.ge = getelementptr i8, ptr %0, i64 54
  store i8 1, ptr %i.ge, align 2
  %i.gf = getelementptr i8, ptr %0, i64 55
  store i8 -96, ptr %i.gf, align 1
  %i.gg = getelementptr i8, ptr %0, i64 56
  store i8 1, ptr %i.gg, align 4
  %i.gh = getelementptr i8, ptr %0, i64 57
  store i8 0, ptr %i.gh, align 1
  %i.gi = getelementptr i8, ptr %0, i64 58
  store i8 75, ptr %i.gi, align 2
  %i.gj = getelementptr i8, ptr %0, i64 59
  store i8 0, ptr %i.gj, align 1
  %i.gk = getelementptr i8, ptr %0, i64 60
  store i8 0, ptr %i.gk, align 4
  %i.gl = getelementptr i8, ptr %0, i64 61
  store i8 0, ptr %i.gl, align 1
  %i.gm = getelementptr i8, ptr %0, i64 62
  store i8 40, ptr %i.gm, align 2
  %i.gn = getelementptr i8, ptr %0, i64 63
  %i.go = lshr i32 %i.cr, 16
  %i.gp = trunc nuw nsw i32 %i.go to i8
  %i.gq = getelementptr i8, ptr %0, i64 67
  store i32 0, ptr %i.gn, align 1
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = lshr i32 %i.cr, 8
  %i.gs = trunc i32 %i.gr to i8
  %i.gt = getelementptr i8, ptr %0, i64 68
  store i8 %i.gs, ptr %i.gt, align 4
  %i.gu = trunc i32 %i.cr to i8
  %i.gv = getelementptr i8, ptr %0, i64 69
  store i8 %i.gu, ptr %i.gv, align 1
  %i.gw = getelementptr i8, ptr %0, i64 70
  store i64 0, ptr %i.gw, align 2
  br label %calculate_target_dco_and_loop_cnt.exit

calculate_target_dco_and_loop_cnt.exit:           ; preds = %bb.f, %.loopexit, %bb.i
  %.0159 = phi i32 [ -22, %.loopexit ], [ 0, %bb.i ], [ -22, %bb.f ]
  ret i32 %.0159
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1
end_hunk_0
