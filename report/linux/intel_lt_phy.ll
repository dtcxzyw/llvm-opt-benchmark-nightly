Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_lt_phy?download=true
inline.NumInlined: 179
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.47 }
%union.anon.47 = type { i64 }
%struct.intel_lt_phy_pll_state = type { [13 x i8], [13 x i8], [13 x [4 x i8]], [3 x i8], i8, i8, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.79, i32 }
%struct.anon.79 = type { i32, i32 }

@__UNIQUE_ID_modinfo_556 = internal constant [19 x i8] c"i915.import_ns=PWM\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: [drm] %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"drm_WARN_ON(\22Unsupported LT PHY Mode!\\n\22)\00", align 1
@intel_lt_phy_calc_port_clock.__UNIQUE_ID_addressable___SCK__WARN_trap_709 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/i915/display/intel_lt_phy.c\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"drm_WARN_ON(!intel_dpll_clock_matches(clock, tables[i].clock_rate))\00", align 1
@intel_lt_phy_pll_calc_state.__UNIQUE_ID_addressable___SCK__WARN_trap_710 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"[drm] PHY %c PLL MacCLK ack deassertion timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"[drm] PHY %c PLL MacCLK ack assertion timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"[drm] PHY %c PLL rate not changed\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"[drm] PHY %c failed to reset lane\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"drm_WARN_ON_ONCE(!trans)\00", align 1
@intel_lt_phy_set_signal_levels.__UNIQUE_ID_addressable___SCK__WARN_trap_712 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.10 = private unnamed_addr constant [68 x i8] c"lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d, tbt mode: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"config[%d] = 0x%.4x,\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"vdr_data[%d][%d] = 0x%.4x,\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Missing case (%s == %ld)\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@intel_lt_phy_get_dp_clock.__UNIQUE_ID_addressable___SCK__WARN_trap_691 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.16 = private unnamed_addr constant [64 x i8] c"drm_WARN_ON(\22Invalid port clock using lowest HDMI portclock\\n\22)\00", align 1
@intel_lt_phy_calc_hdmi_port_clock.__UNIQUE_ID_addressable___SCK__WARN_trap_698 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"encoder->type\00", align 1
@intel_lt_phy_pll_tables_get.__UNIQUE_ID_addressable___SCK__WARN_trap_697 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.18 = private unnamed_addr constant [48 x i8] c"[drm] PHY %c PLL MacCLK assertion ack not done\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"[drm] PHY %c failed to bring out of lane reset\0A\00", align 1
@__intel_lt_phy_p2p_write.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"[drm] *ERROR* PHY %c P2P Write %04x failed after %d retries.\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"drm_WARN_ON(!enabled)\00", align 1
@assert_dc_off.__UNIQUE_ID_addressable___SCK__WARN_trap_680 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
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
define dso_local range(i32 -22, 1) i32 @intel_lt_phy_calculate_hdmi_state(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
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
  %i.u = udiv i64 %i.t, 500                       ; 2 uses
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
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ao, 4294965248
  %i.at = or disjoint i64 %i.ar, %i.as
  %i.au = udiv i64 %i.at, 500                     ; 2 uses
  %i.av = lshr i64 %i.au, 32                      ; 3 uses
  %i.aw = icmp samesign ugt i64 %i.av, %i.ae
  %i.ax = sub nuw nsw i64 %i.av, %i.ae
  %i.ay = sub nuw nsw i64 %i.ae, %i.av
  %i.az = select i1 %i.aw, i64 %i.ax, i64 %i.ay
  %i.ba = udiv i64 %i.az, %i.ae
  %i.bb = add i64 %i.ar, -21474836480000000
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
  %.lhs.trunc200 = add nuw nsw i32 %i.bw, 80000000
  %i.bx = udiv i32 %.lhs.trunc200, %i.bw
  %.zext201 = zext nneg i32 %i.bx to i64
  %.v = select i1 %.not.not, i64 %i.bv, i64 %.zext201
  %i.by = lshr i64 %.v, 1                         ; 2 uses
  br i1 %.not.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = mul nuw nsw i64 %i.bi, 70
  %i.ca = lshr i64 %i.bz, 32
  %.rhs.trunc202 = trunc nuw nsw i64 %i.ca to i32
  %i.cb = udiv i32 10000000, %.rhs.trunc202
  %.zext203 = zext nneg i32 %i.cb to i64
  %i.cc = shl nuw nsw i64 %.zext203, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cd = phi i8 [ 83, %bb.h ], [ -75, %bb.g ]
  %i.ce = phi i64 [ 4194304000, %bb.h ], [ 1107296256, %bb.g ]
  %i.cf = phi i64 [ %i.cc, %bb.h ], [ 0, %bb.g ]
  %i.cg = icmp samesign ult i64 %i.bi, 50895362457600 ; 5 uses
  %i.ch = icmp samesign ugt i64 %i.bi, 55667071123455
  %.161 = select i1 %i.ch, i32 168067072, i32 134512640
  %sh.diff = lshr exact i64 %i.bn, 27
  %i.ci = shl nuw nsw i32 %i.bf, 6                ; 2 uses
  %i.cj = add nuw nsw i32 %.161, %i.ci            ; 3 uses
  %i.ck = select i1 %i.cg, i64 33792, i64 29440
  %i.cl = add nuw nsw i64 %i.ck, %i.by            ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, %i.ce
  %i.cn = add nuw nsw i64 %i.cm, %i.cf            ; 2 uses
  %i.co = select i1 %i.cg, i32 4, i32 3           ; 2 uses
  %i.cp = select i1 %i.cg, i32 512, i32 256
  %i.cq = shl nuw nsw i32 %i.co, 16
  %i.cr = or disjoint i32 %i.cq, %i.cp
  %i.cs = or disjoint i32 %i.cr, %i.co
  %i.ct = or disjoint i32 %i.cs, 1058832          ; 3 uses
  %i.cu = icmp eq i32 %1, 10000
  %i.cv = icmp eq i32 %1, 20000
  %or.cond.not206.not211 = or i1 %i.cu, %i.cv
  %i.cw = icmp eq i32 %1, 2500
  %or.cond3.not.not208 = or i1 %i.cw, %or.cond.not206.not211
  %narrow.not = select i1 %or.cond3.not.not208, i1 true, i1 %i.cg ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 78
  store i8 -124, ptr %i.cx, align 2
  %i.cy = getelementptr i8, ptr %0, i64 79
  store i8 45, ptr %i.cy, align 1
  %i.cz = select i1 %narrow.not, i8 -123, i8 -121 ; 4 uses
  store i8 %i.cz, ptr %0, align 4
  %i.da = getelementptr i8, ptr %0, i64 13
  store i8 16, ptr %i.da, align 1
  %i.db = getelementptr i8, ptr %0, i64 1
  store i8 %i.cz, ptr %i.db, align 1
  %i.dc = getelementptr i8, ptr %0, i64 14
  store i8 12, ptr %i.dc, align 2
  %i.dd = getelementptr i8, ptr %0, i64 2
  store i8 %i.cz, ptr %i.dd, align 2
  %i.de = getelementptr i8, ptr %0, i64 15
  store i8 20, ptr %i.de, align 1
  %i.df = getelementptr i8, ptr %0, i64 3
  store i8 %i.cz, ptr %i.df, align 1
  %i.dg = getelementptr i8, ptr %0, i64 16
  store i8 -28, ptr %i.dg, align 4
  %i.dh = select i1 %narrow.not, i8 -122, i8 -120 ; 9 uses
  %i.di = getelementptr i8, ptr %0, i64 4
  store i8 %i.dh, ptr %i.di, align 4
  %i.dj = getelementptr i8, ptr %0, i64 17
  store i8 12, ptr %i.dj, align 1
  %i.dk = getelementptr i8, ptr %0, i64 5
  store i8 %i.dh, ptr %i.dk, align 1
  %i.dl = getelementptr i8, ptr %0, i64 18
  store i8 16, ptr %i.dl, align 2
  %i.dm = getelementptr i8, ptr %0, i64 6
  store i8 %i.dh, ptr %i.dm, align 2
  %i.dn = getelementptr i8, ptr %0, i64 19
  store i8 20, ptr %i.dn, align 1
  %i.do = getelementptr i8, ptr %0, i64 7
  store i8 %i.dh, ptr %i.do, align 1
  %i.dp = getelementptr i8, ptr %0, i64 20
  store i8 24, ptr %i.dp, align 4
  %i.dq = getelementptr i8, ptr %0, i64 8
  store i8 %i.dh, ptr %i.dq, align 4
  %i.dr = getelementptr i8, ptr %0, i64 21
  store i8 72, ptr %i.dr, align 1
  %i.ds = getelementptr i8, ptr %0, i64 9
  store i8 %i.dh, ptr %i.ds, align 1
  %i.dt = getelementptr i8, ptr %0, i64 22
  store i8 64, ptr %i.dt, align 2
  %i.du = getelementptr i8, ptr %0, i64 10
  store i8 %i.dh, ptr %i.du, align 2
  %i.dv = getelementptr i8, ptr %0, i64 23
  store i8 76, ptr %i.dv, align 1
  %i.dw = getelementptr i8, ptr %0, i64 11
  store i8 %i.dh, ptr %i.dw, align 1
  %i.dx = getelementptr i8, ptr %0, i64 24
  store i8 36, ptr %i.dx, align 4
  %i.dy = getelementptr i8, ptr %0, i64 12
  store i8 %i.dh, ptr %i.dy, align 4
  %i.dz = getelementptr i8, ptr %0, i64 25
  store i8 68, ptr %i.dz, align 1
  %i.ea = getelementptr i8, ptr %0, i64 26
  store i8 0, ptr %i.ea, align 2
  %i.eb = getelementptr i8, ptr %0, i64 27
  store i8 76, ptr %i.eb, align 1
  %i.ec = getelementptr i8, ptr %0, i64 28
  store i8 2, ptr %i.ec, align 4
  %i.ed = getelementptr i8, ptr %0, i64 29
  store i8 16, ptr %i.ed, align 1
  %i.ee = lshr i64 %.05270.lcssa.wide.i, 3
  %i.ef = trunc nuw nsw i64 %i.ee to i8
  %i.eg = getelementptr i8, ptr %0, i64 30
  store i8 %i.ef, ptr %i.eg, align 2
  %.tr = trunc nuw i64 %.05270.lcssa.wide.i to i8
  %i.eh = shl i8 %.tr, 5
  %i.ei = or disjoint i8 %i.eh, 21
  %i.ej = getelementptr i8, ptr %0, i64 31
  store i8 %i.ei, ptr %i.ej, align 1
  %i.ek = lshr i64 %i.bp, 35
  %i.el = trunc nuw nsw i64 %i.ek to i8
  %i.em = getelementptr i8, ptr %0, i64 32
  store i8 %i.el, ptr %i.em, align 4
  %i.en = trunc i64 %sh.diff to i8
  %i.eo = getelementptr i8, ptr %0, i64 33
  store i8 %i.en, ptr %i.eo, align 1
  %i.ep = lshr i64 %i.bm, 24
  %i.eq = trunc i64 %i.ep to i8
  %i.er = getelementptr i8, ptr %0, i64 34
  store i8 %i.eq, ptr %i.er, align 2
  %i.es = lshr i64 %i.bm, 16
  %i.et = trunc i64 %i.es to i8
  %i.eu = getelementptr i8, ptr %0, i64 35
  store i8 %i.et, ptr %i.eu, align 1
  %i.ev = lshr i64 %i.bm, 8
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = getelementptr i8, ptr %0, i64 36
  store i8 %i.ew, ptr %i.ex, align 4
  %i.ey = trunc i64 %i.bm to i8
  %i.ez = getelementptr i8, ptr %0, i64 37
  store i8 %i.ey, ptr %i.ez, align 1
  %i.fa = lshr i32 %i.cj, 24
  %i.fb = trunc nuw nsw i32 %i.fa to i8
  %i.fc = getelementptr i8, ptr %0, i64 38
  store i8 %i.fb, ptr %i.fc, align 2
  %i.fd = lshr i32 %i.cj, 16
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr i8, ptr %0, i64 39
  store i8 %i.fe, ptr %i.ff, align 1
  %i.fg = lshr i32 %i.cj, 8
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = getelementptr i8, ptr %0, i64 40
  store i8 %i.fh, ptr %i.fi, align 4
  %i.fj = trunc i32 %i.ci to i8
  %i.fk = or disjoint i8 %i.fj, 40
  %i.fl = getelementptr i8, ptr %0, i64 41
  store i8 %i.fk, ptr %i.fl, align 1
  %i.fm = lshr i64 %i.cn, 24
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = getelementptr i8, ptr %0, i64 42
  store i8 %i.fn, ptr %i.fo, align 2
end_hunk_0
begin_hunk_1_@intel_lt_phy_dump_hw_state:.preheader20
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local noundef zeroext i1 @intel_lt_phy_pll_compare_hw_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 82
  %i.b = load i8, ptr %i.a, align 2, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 82
  %i.e = load i8, ptr %i.d, align 2, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 78
  %i.h = load i8, ptr %i.g, align 2
  %i.i = getelementptr i8, ptr %1, i64 78
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 80
  %i.m = load i8, ptr %i.l, align 2
  %i.n = getelementptr i8, ptr %1, i64 80
  %i.o = load i8, ptr %i.n, align 2
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local noundef zeroext i1 @intel_lt_phy_tbt_pll_readout_hw_state(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 88)) %2) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(88) %2, i8 0, i64 88, i1 false)
  %i.a = getelementptr i8, ptr %2, i64 82
  store i8 1, ptr %i.a, align 2
  ret i1 true
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @intel_lt_phy_pll_readout_hw_state(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1168
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp ugt i16 %i.e, 19
  %i.g = getelementptr i8, ptr %0, i64 156
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %i.h, -4
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %i.h, 8
  %i.k = add i32 %i.j, 411616
  br label %intel_lt_phy_pll_is_enabled.exit

bb.f:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.h, 3
  %i.m = shl i32 %i.h, 9
  %i.n = select i1 %i.l, i32 1505888, i32 1502304
  %i.o = add i32 %i.n, %i.m
  br label %intel_lt_phy_pll_is_enabled.exit

bb.g:                                             ; preds = %bb.c
  %i.p = icmp slt i32 %i.h, 3
  %i.q = shl i32 %i.h, 8
  %i.r = add i32 %i.q, 409824
  %i.s = shl i32 %i.h, 9
  %i.t = add i32 %i.s, 1502304
  %i.u = select i1 %i.p, i32 %i.r, i32 %i.t
  br label %intel_lt_phy_pll_is_enabled.exit

intel_lt_phy_pll_is_enabled.exit:                 ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i = phi i32 [ %i.u, %bb.g ], [ %i.k, %bb.e ], [ %i.o, %bb.f ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %.sroa.0.0.i) #9
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.v = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #9 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 144
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 %i.x(ptr noundef %i.v, i32 %.sroa.0.0.i, i1 noundef zeroext true) #9, !inline_history !53
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %.sroa.0.0.i) #9
  %i.z = and i32 %i.y, 1073741824
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.t, label %bb.h

bb.h:                                             ; preds = %intel_lt_phy_pll_is_enabled.exit
  %i.aa = getelementptr i8, ptr %0, i64 152       ; 4 uses
  %.val.i = load i32, ptr %i.aa, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
    i32 8, label %enc_to_dig_port.exit
    i32 6, label %enc_to_dig_port.exit
    i32 11, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %0, i64 512
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %enc_to_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i: ; preds = %bb.h
  br label %enc_to_dig_port.exit

enc_to_dig_port.exit:                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.i, %intel_encoder_is_dig_port.exit.thread.fold.split.i
  %.0.i = phi ptr [ %0, %bb.h ], [ %i.ac, %bb.i ], [ %0, %bb.h ], [ %0, %bb.h ], [ %0, %bb.h ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i ]
  %i.ad = tail call zeroext i1 @intel_tc_port_in_tbt_alt_mode(ptr noundef %.0.i) #9 ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 82
  %i.af = zext i1 %i.ad to i8
  store i8 %i.af, ptr %i.ae, align 2
  br i1 %i.ad, label %bb.t, label %bb.j

bb.j:                                             ; preds = %enc_to_dig_port.exit
  %.val.i.i33 = load i32, ptr %i.aa, align 8
  switch i32 %.val.i.i33, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_dig_port.exit.i
    i32 7, label %enc_to_dig_port.exit.i
    i32 8, label %enc_to_dig_port.exit.i
    i32 6, label %enc_to_dig_port.exit.i
    i32 11, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %0, i64 512
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %enc_to_dig_port.exit.i

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.j
  br label %enc_to_dig_port.exit.i

enc_to_dig_port.exit.i:                           ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i, %bb.k, %bb.j, %bb.j, %bb.j, %bb.j
  %.0.i.i = phi ptr [ %0, %bb.j ], [ %i.ah, %bb.k ], [ %0, %bb.j ], [ %0, %bb.j ], [ %0, %bb.j ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ] ; 2 uses
  %i.ai = tail call zeroext i1 @intel_tc_port_in_dp_alt_mode(ptr noundef %.0.i.i) #9
  br i1 %i.ai, label %bb.l, label %intel_lt_phy_get_owned_lane_mask.exit

bb.l:                                             ; preds = %enc_to_dig_port.exit.i
  %i.aj = tail call i32 @intel_tc_port_max_lane_count(ptr noundef %.0.i.i) #9 ; 0 uses
  br label %intel_lt_phy_get_owned_lane_mask.exit

intel_lt_phy_get_owned_lane_mask.exit:            ; preds = %enc_to_dig_port.exit.i, %bb.l
  %i.ak = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i35 = icmp eq ptr %i.ak, null
  br i1 %.not.i35, label %bb.n, label %bb.m

bb.m:                                             ; preds = %intel_lt_phy_get_owned_lane_mask.exit
  %i.al = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ak) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %intel_lt_phy_get_owned_lane_mask.exit
  %i.am = phi ptr [ %i.al, %bb.m ], [ null, %intel_lt_phy_get_owned_lane_mask.exit ]
  %.val.i.i.i = load i32, ptr %i.aa, align 8
  switch i32 %.val.i.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i [
    i32 10, label %intel_lt_phy_transaction_begin.exit
    i32 7, label %intel_lt_phy_transaction_begin.exit
    i32 8, label %intel_lt_phy_transaction_begin.exit
    i32 6, label %intel_lt_phy_transaction_begin.exit
    i32 11, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %0, i64 512
  %i.ao = load ptr, ptr %i.an, align 8
  br label %intel_lt_phy_transaction_begin.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i: ; preds = %bb.n
  br label %intel_lt_phy_transaction_begin.exit

intel_lt_phy_transaction_begin.exit:              ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.o, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i
  %.0.i.i.i = phi ptr [ %0, %bb.n ], [ %i.ao, %bb.o ], [ %0, %bb.n ], [ %0, %bb.n ], [ %0, %bb.n ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i ]
  %i.ap = getelementptr i8, ptr %.0.i.i.i, i64 504
  tail call void @intel_psr_pause(ptr noundef %i.ap) #9
  %i.aq = tail call ptr @intel_display_power_get(ptr noundef %i.am, i32 noundef 73) #9 ; 0 uses
  %i.ar = tail call i32 @intel_readout_lane_count(ptr noundef %0, i32 noundef 1, i32 noundef 2) #9
  %i.as = getelementptr i8, ptr %1, i64 84
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = tail call zeroext i8 @intel_cx0_read(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext 3074) #9
  %i.au = getelementptr i8, ptr %1, i64 78
  store i8 %i.at, ptr %i.au, align 2
  %i.av = tail call zeroext i8 @intel_cx0_read(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext 3075) #9
  %i.aw = getelementptr i8, ptr %1, i64 79
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = tail call zeroext i8 @intel_cx0_read(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext 3267) #9
  %i.ay = getelementptr i8, ptr %1, i64 80
  store i8 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %1, i64 26
  br label %.preheader

.preheader:                                       ; preds = %intel_lt_phy_transaction_begin.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %intel_lt_phy_transaction_begin.exit ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.ba = mul nuw nsw i64 %indvars.iv, 6          ; 4 uses
  %i.bb = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv ; 4 uses
  %i.bc = trunc i64 %i.ba to i16
  %i.bd = add i16 %i.bc, 3078
  %i.be = tail call zeroext i8 @intel_cx0_read(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext %i.bd) #9
  store i8 %i.be, ptr %i.bb, align 1
  %i.bf = trunc i64 %i.ba to i16
  %i.bg = add i16 %i.bf, 3079
  %i.bh = tail call zeroext i8 @intel_cx0_read(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext %i.bg) #9
  %i.bi = getelementptr i8, ptr %i.bb, i64 1
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = trunc i64 %i.ba to i16
  %i.bk = add i16 %i.bj, 3080
  %i.bl = tail call zeroext i8 @intel_cx0_read(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext %i.bk) #9
  %i.bm = getelementptr i8, ptr %i.bb, i64 2
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = trunc i64 %i.ba to i16
  %i.bo = add i16 %i.bn, 3081
  %i.bp = tail call zeroext i8 @intel_cx0_read(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext %i.bo) #9
  %i.bq = getelementptr i8, ptr %i.bb, i64 3
  store i8 %i.bp, ptr %i.bq, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %bb.p, label %.preheader, !llvm.loop !54

bb.p:                                             ; preds = %.preheader
  %i.br = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i36 = icmp eq ptr %i.br, null
  br i1 %.not.i36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = tail call ptr @__drm_to_display(ptr noundef nonnull %i.br) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = phi ptr [ %i.bs, %bb.q ], [ null, %bb.p ]
  %.val.i.i.i37 = load i32, ptr %i.aa, align 8
  switch i32 %.val.i.i.i37, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i39 [
    i32 10, label %intel_lt_phy_transaction_end.exit
    i32 7, label %intel_lt_phy_transaction_end.exit
    i32 8, label %intel_lt_phy_transaction_end.exit
    i32 6, label %intel_lt_phy_transaction_end.exit
    i32 11, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr i8, ptr %0, i64 512
  %i.bv = load ptr, ptr %i.bu, align 8
  br label %intel_lt_phy_transaction_end.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i39: ; preds = %bb.r
  br label %intel_lt_phy_transaction_end.exit

intel_lt_phy_transaction_end.exit:                ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.s, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i39
  %.0.i.i.i38 = phi ptr [ %0, %bb.r ], [ %i.bv, %bb.s ], [ %0, %bb.r ], [ %0, %bb.r ], [ %0, %bb.r ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i39 ]
  %i.bw = getelementptr i8, ptr %.0.i.i.i38, i64 504
  tail call void @intel_psr_resume(ptr noundef %i.bw) #9
  tail call void @intel_display_power_put_unchecked(ptr noundef %i.bt, i32 noundef 73) #9
  br label %bb.t

bb.t:                                             ; preds = %enc_to_dig_port.exit, %intel_lt_phy_pll_is_enabled.exit, %intel_lt_phy_transaction_end.exit
  %.032 = phi i1 [ false, %intel_lt_phy_pll_is_enabled.exit ], [ true, %intel_lt_phy_transaction_end.exit ], [ false, %enc_to_dig_port.exit ]
  ret i1 %.032
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_readout_lane_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_xe3plpd_pll_enable(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  tail call void @intel_lt_phy_pll_enable(ptr noundef %0, ptr poison, ptr noundef %2) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_xe3plpd_pll_disable(ptr noundef %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.a, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
    i32 8, label %enc_to_dig_port.exit
    i32 6, label %enc_to_dig_port.exit
    i32 11, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 512
  %i.c = load ptr, ptr %i.b, align 8
  br label %enc_to_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i: ; preds = %bb.a
  br label %enc_to_dig_port.exit

enc_to_dig_port.exit:                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %intel_encoder_is_dig_port.exit.thread.fold.split.i
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i ]
  %i.d = tail call zeroext i1 @intel_tc_port_in_tbt_alt_mode(ptr noundef %.0.i) #9
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %enc_to_dig_port.exit
  tail call void @intel_mtl_tbt_pll_disable_clock(ptr noundef %0) #9
  br label %bb.e

bb.d:                                             ; preds = %enc_to_dig_port.exit
  tail call void @intel_lt_phy_pll_disable(ptr noundef %0) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_mtl_tbt_pll_disable_clock(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_lt_phy_verify_plls(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.intel_lt_phy_pll_state, align 4 ; 20 uses
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 162000, ptr noundef nonnull @.str.29, ptr noundef @xe3plpd_lt_dp_rbr, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 270000, ptr noundef nonnull @.str.30, ptr noundef @xe3plpd_lt_dp_hbr1, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 540000, ptr noundef nonnull @.str.31, ptr noundef @xe3plpd_lt_dp_hbr2, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 810000, ptr noundef nonnull @.str.32, ptr noundef @xe3plpd_lt_dp_hbr3, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 1000000, ptr noundef nonnull @.str.33, ptr noundef @xe3plpd_lt_dp_uhbr10, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 1350000, ptr noundef nonnull @.str.34, ptr noundef @xe3plpd_lt_dp_uhbr13_5, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 2000000, ptr noundef nonnull @.str.35, ptr noundef @xe3plpd_lt_dp_uhbr20, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 162000, ptr noundef nonnull @.str.29, ptr noundef @xe3plpd_lt_dp_rbr, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 216000, ptr noundef nonnull @.str.44, ptr noundef @xe3plpd_lt_edp_2_16, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 243000, ptr noundef nonnull @.str.45, ptr noundef @xe3plpd_lt_edp_2_43, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 270000, ptr noundef nonnull @.str.30, ptr noundef @xe3plpd_lt_dp_hbr1, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 324000, ptr noundef nonnull @.str.46, ptr noundef @xe3plpd_lt_edp_3_24, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 432000, ptr noundef nonnull @.str.47, ptr noundef @xe3plpd_lt_edp_4_32, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 540000, ptr noundef nonnull @.str.31, ptr noundef @xe3plpd_lt_dp_hbr2, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 675000, ptr noundef nonnull @.str.48, ptr noundef @xe3plpd_lt_edp_6_75, i1 noundef zeroext true) #10, !srcloc !55
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 810000, ptr noundef nonnull @.str.32, ptr noundef @xe3plpd_lt_dp_hbr3, i1 noundef zeroext true) #10, !srcloc !55
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 25200, ptr noundef nonnull @.str.55, ptr noundef @xe3plpd_lt_hdmi_252, i1 noundef zeroext true) #10, !srcloc !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %1, i8 0, i64 88, i1 false), !annotation !19
  %i.a = call i32 @intel_lt_phy_calculate_hdmi_state(ptr noundef nonnull %1, i32 noundef 25200) #10
  %.not.i.i13 = icmp eq i32 %i.a, 0
  br i1 %.not.i.i13, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 25200, ptr noundef @.str.55, ptr noundef nonnull %1, i1 noundef zeroext false) #10, !srcloc !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 74250, ptr noundef nonnull @.str.56, ptr noundef @xe3plpd_lt_hdmi_742p5, i1 noundef zeroext true) #10, !srcloc !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %1, i8 0, i64 88, i1 false), !annotation !19
  %i.b = call i32 @intel_lt_phy_calculate_hdmi_state(ptr noundef nonnull %1, i32 noundef 74250) #10
  %.not.i.i13.1 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i13.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 74250, ptr noundef @.str.56, ptr noundef nonnull %1, i1 noundef zeroext false) #10, !srcloc !56
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 148500, ptr noundef nonnull @.str.57, ptr noundef @xe3plpd_lt_hdmi_1p485, i1 noundef zeroext true) #10, !srcloc !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %1, i8 0, i64 88, i1 false), !annotation !19
  %i.c = call i32 @intel_lt_phy_calculate_hdmi_state(ptr noundef nonnull %1, i32 noundef 148500) #10
  %.not.i.i13.2 = icmp eq i32 %i.c, 0
  br i1 %.not.i.i13.2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 148500, ptr noundef @.str.57, ptr noundef nonnull %1, i1 noundef zeroext false) #10, !srcloc !56
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  tail call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 594000, ptr noundef nonnull @.str.58, ptr noundef @xe3plpd_lt_hdmi_5p94, i1 noundef zeroext true) #10, !srcloc !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %1, i8 0, i64 88, i1 false), !annotation !19
  %i.d = call i32 @intel_lt_phy_calculate_hdmi_state(ptr noundef nonnull %1, i32 noundef 594000) #10
  %.not.i.i13.3 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i13.3, label %bb.h, label %intel_lt_phy_pll_verify_params.exit.i11.3

bb.h:                                             ; preds = %bb.g
  call fastcc void @intel_lt_phy_pll_verify_clock(ptr noundef readonly %0, i32 noundef 594000, ptr noundef @.str.58, ptr noundef nonnull %1, i1 noundef zeroext false) #10, !srcloc !56
  br label %intel_lt_phy_pll_verify_params.exit.i11.3

intel_lt_phy_pll_verify_params.exit.i11.3:        ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_panel_use_ssc(ptr noundef) local_unnamed_addr #4
end_hunk_1
