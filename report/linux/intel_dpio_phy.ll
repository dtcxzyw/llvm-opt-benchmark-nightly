Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpio_phy?download=true
inline.NumInlined: 104
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.48 }
%union.anon.48 = type { i64 }
%struct.anon = type { i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@__UNIQUE_ID_modinfo_556 = internal constant [19 x i8] c"i915.import_ns=PWM\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [39 x i8] c"%s %s: [drm] PHY not found for PORT %c\00", align 1
@bxt_port_to_phy_channel.__UNIQUE_ID_addressable___SCK__WARN_trap_680 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/i915/display/intel_dpio_phy.c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s %s: [drm] %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"drm_WARN_ON_ONCE(!trans)\00", align 1
@bxt_dpio_phy_set_signal_levels.__UNIQUE_ID_addressable___SCK__WARN_trap_681 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [65 x i8] c"[drm] *ERROR* Disabled scaling while ouniqetrangenmethod was set\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"DDI PHY %d powered, but power hasn't settled\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"DDI PHY %d powered, but still in reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"BXT_PORT_CL1CM_DW9(%d)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"BXT_PORT_CL1CM_DW10(%d)\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"BXT_PORT_CL1CM_DW28(%d)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"BXT_PORT_CL2CM_DW6(%d)\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"BXT_PORT_REF_DW6(%d)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"BXT_PORT_REF_DW8(%d)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Missing case (%s == %ld)\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"lane_count\00", align 1
@bxt_dpio_phy_calc_lane_lat_optim_mask.__UNIQUE_ID_addressable___SCK__WARN_trap_687 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"dig_port->base.port\00", align 1
@vlv_dig_port_to_channel.__UNIQUE_ID_addressable___SCK__WARN_trap_688 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@vlv_dig_port_to_phy.__UNIQUE_ID_addressable___SCK__WARN_trap_689 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@vlv_pipe_to_phy.__UNIQUE_ID_addressable___SCK__WARN_trap_690 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@vlv_pipe_to_channel.__UNIQUE_ID_addressable___SCK__WARN_trap_691 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"encoder->port\00", align 1
@vlv_wait_port_ready.__UNIQUE_ID_addressable___SCK__WARN_trap_692 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.18 = private unnamed_addr constant [88 x i8] c"%s %s: [drm] timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\0A\00", align 1
@vlv_wait_port_ready.__UNIQUE_ID_addressable___SCK__WARN_trap_693 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@glk_dpio_phy_info = internal unnamed_addr constant [3 x { i8, [3 x i8], i32, i32, i32, [2 x %struct.anon] }] [{ i8, [3 x i8], i32, i32, i32, [2 x %struct.anon] } { i8 0, [3 x i8] zeroinitializer, i32 1, i32 20, i32 1, [2 x %struct.anon] [%struct.anon { i32 1 }, %struct.anon zeroinitializer] }, { i8, [3 x i8], i32, i32, i32, [2 x %struct.anon] } { i8 0, [3 x i8] zeroinitializer, i32 -1, i32 20, i32 8, [2 x %struct.anon] zeroinitializer }, { i8, [3 x i8], i32, i32, i32, [2 x %struct.anon] } { i8 0, [3 x i8] zeroinitializer, i32 1, i32 20, i32 2, [2 x %struct.anon] [%struct.anon { i32 2 }, %struct.anon zeroinitializer] }], align 16
@bxt_dpio_phy_info = internal unnamed_addr constant [2 x { i8, [3 x i8], i32, i32, i32, [2 x %struct.anon] }] [{ i8, [3 x i8], i32, i32, i32, [2 x %struct.anon] } { i8 1, [3 x i8] zeroinitializer, i32 1, i32 0, i32 1, [2 x %struct.anon] [%struct.anon { i32 1 }, %struct.anon { i32 2 }] }, { i8, [3 x i8], i32, i32, i32, [2 x %struct.anon] } { i8 0, [3 x i8] zeroinitializer, i32 -1, i32 0, i32 2, [2 x %struct.anon] zeroinitializer }], align 16
@.str.21 = private unnamed_addr constant [48 x i8] c"DDI PHY %d already enabled, won't reprogram it\0A\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"DDI PHY %d enabled with invalid state, force reprogramming it\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"[drm] *ERROR* timeout during PHY%d power on\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"[drm] *ERROR* timeout waiting for PHY%d GRC\0A\00", align 1
@.str.25 = private unnamed_addr constant [83 x i8] c"DDI PHY %d reg %pV [%08x] state mismatch: current %08x, expected %08x (mask %08x)\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_modinfo_556, ptr @bxt_dpio_phy_calc_lane_lat_optim_mask.__UNIQUE_ID_addressable___SCK__WARN_trap_687, ptr @bxt_dpio_phy_set_signal_levels.__UNIQUE_ID_addressable___SCK__WARN_trap_681, ptr @bxt_port_to_phy_channel.__UNIQUE_ID_addressable___SCK__WARN_trap_680, ptr @vlv_dig_port_to_channel.__UNIQUE_ID_addressable___SCK__WARN_trap_688, ptr @vlv_dig_port_to_phy.__UNIQUE_ID_addressable___SCK__WARN_trap_689, ptr @vlv_pipe_to_channel.__UNIQUE_ID_addressable___SCK__WARN_trap_691, ptr @vlv_pipe_to_phy.__UNIQUE_ID_addressable___SCK__WARN_trap_690, ptr @vlv_wait_port_ready.__UNIQUE_ID_addressable___SCK__WARN_trap_692, ptr @vlv_wait_port_ready.__UNIQUE_ID_addressable___SCK__WARN_trap_693], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @bxt_port_to_phy_channel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 34359738368
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %bxt_dpio_phy_info.glk_dpio_phy_info.i = select i1 %.not.i, ptr @bxt_dpio_phy_info, ptr @glk_dpio_phy_info ; 9 uses
  %4 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 16
  %5 = load i32, ptr %4, align 16
  %i.c = icmp eq i32 %1, %5
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = load i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, align 16, !range !13, !noundef !14
  %7 = trunc nuw i8 %6 to i1
  %8 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 20
  %9 = load i32, ptr %8, align 4
  %i.d = icmp eq i32 %1, %9
  %or.cond = select i1 %7, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %10 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 40
  %11 = load i32, ptr %10, align 8
  %i.e = icmp eq i32 %1, %11
  br i1 %i.e, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %12 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 24
  %13 = load i8, ptr %12, align 8, !range !13, !noundef !14
  %14 = trunc nuw i8 %13 to i1
  %15 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 44
  %16 = load i32, ptr %15, align 4
  %i.f = icmp eq i32 %1, %16
  %or.cond63 = select i1 %14, i1 %i.f, i1 false
  br i1 %or.cond63, label %bb.j, label %17

17:                                               ; preds = %bb.d
  br i1 %.not.i, label %bb.e, label %18

18:                                               ; preds = %17
  %19 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 64
  %20 = load i32, ptr %19, align 16
  %21 = icmp eq i32 %1, %20
  br i1 %21, label %bb.j, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 48
  %24 = load i8, ptr %23, align 16, !range !13, !noundef !14
  %25 = trunc nuw i8 %24 to i1
  br i1 %25, label %26, label %bb.e

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i, i64 68
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %1, %28
  br i1 %29, label %bb.j, label %bb.e

bb.e:                                             ; preds = %22, %26, %17
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i30 = icmp eq ptr %i.g, null
  br i1 %.not.i30, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.j = phi ptr [ %i.i, %bb.f ], [ null, %bb.e ]
  %i.k = tail call ptr @dev_driver_string(ptr noundef %i.j) #6 ; 0 uses
  %i.l = add i32 %1, 65
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 272, i32 2321, i64 16) #7, !srcloc !21
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i34 = icmp eq ptr %i.n, null
  br i1 %.not.i34, label %__drm_to_dev.exit35, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit35

__drm_to_dev.exit35:                              ; preds = %__drm_to_dev.exit, %bb.g
  %i.q = phi ptr [ %i.p, %bb.g ], [ null, %__drm_to_dev.exit ]
  %i.r = tail call ptr @dev_driver_string(ptr noundef %i.q) #6
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i36 = icmp eq ptr %i.s, null
  br i1 %.not.i36, label %__drm_to_dev.exit37, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit35
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit37

__drm_to_dev.exit37:                              ; preds = %__drm_to_dev.exit35, %bb.h
  %i.v = phi ptr [ %i.u, %bb.h ], [ null, %__drm_to_dev.exit35 ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i38 = icmp eq ptr %i.x, null
  br i1 %.not.i38, label %bb.i, label %dev_name.exit41

bb.i:                                             ; preds = %__drm_to_dev.exit37
  %.val.i40 = load ptr, ptr %i.v, align 8
  br label %dev_name.exit41

dev_name.exit41:                                  ; preds = %__drm_to_dev.exit37, %bb.i
  %.0.i39 = phi ptr [ %.val.i40, %bb.i ], [ %i.x, %__drm_to_dev.exit37 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef %i.r, ptr noundef %.0.i39, i32 noundef %i.l) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !22
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %26, %bb.b, %bb.a, %bb.c, %18, %dev_name.exit41
  %.sink54 = phi i32 [ 0, %dev_name.exit41 ], [ 2, %18 ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ], [ 1, %bb.d ], [ 2, %26 ]
  %.sink = phi i32 [ 0, %dev_name.exit41 ], [ 0, %bb.a ], [ 0, %18 ], [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %26 ], [ 1, %bb.d ]
  store i32 %.sink54, ptr %2, align 4
  store i32 %.sink, ptr %3, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @bxt_dpio_phy_set_signal_levels(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__drm_to_display(ptr noundef nonnull %i.d) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !annotation !15
  %i.g = call ptr @intel_ddi_buf_trans_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c) #6 ; 4 uses
  %.not76 = icmp eq ptr %i.g, null
  br i1 %.not76, label %bb.d, label %.critedge, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  %i.l = call ptr @dev_driver_string(ptr noundef %i.k) #6 ; 0 uses
  %i.m = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 305, i32 2323, i64 16) #7, !srcloc !29
  %i.n = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i83 = icmp eq ptr %i.n, null
  br i1 %.not.i83, label %__drm_to_dev.exit84, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit84

__drm_to_dev.exit84:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.r = call ptr @dev_driver_string(ptr noundef %i.q) #6
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i85 = icmp eq ptr %i.s, null
  br i1 %.not.i85, label %__drm_to_dev.exit86, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit84
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit86

__drm_to_dev.exit86:                              ; preds = %__drm_to_dev.exit84, %bb.g
  %i.v = phi ptr [ %i.u, %bb.g ], [ null, %__drm_to_dev.exit84 ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i87 = icmp eq ptr %i.x, null
  br i1 %.not.i87, label %bb.h, label %dev_name.exit90

bb.h:                                             ; preds = %__drm_to_dev.exit86
  %.val.i89 = load ptr, ptr %i.v, align 8
  br label %dev_name.exit90

dev_name.exit90:                                  ; preds = %__drm_to_dev.exit86, %bb.h
  %.0.i88 = phi ptr [ %.val.i89, %bb.h ], [ %i.x, %__drm_to_dev.exit86 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef %i.r, ptr noundef %.0.i88, ptr noundef nonnull @.str.3) #6
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !30
  br label %bb.l

.critedge:                                        ; preds = %bb.c
  %i.y = getelementptr i8, ptr %0, i64 156
  %i.z = load i32, ptr %i.y, align 4
  call void @bxt_port_to_phy_channel(ptr noundef %i.f, i32 noundef %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %i.aa = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = shl i32 %i.aa, 12
  %i.ad = add i32 %i.ac, 1445888
  %i.ae = select i1 %i.ab, i32 442368, i32 %i.ad  ; 2 uses
  %i.af = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ag = shl i32 %i.af, 10
  %i.ah = add i32 %i.ag, 1064
  %i.ai = add i32 %i.ah, %i.ae                    ; 3 uses
  %i.aj = shl i32 %i.af, 9
  %i.ak = add i32 %i.aj, 3112
  %i.al = add i32 %i.ak, %i.ae                    ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.f, i32 %i.ai) #6
  %.val.i.i = load ptr, ptr %i.f, align 8
  %i.am = call ptr @to_intel_uncore(ptr noundef %.val.i.i) #6 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 144
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i32 %i.ao(ptr noundef %i.am, i32 %i.ai, i1 noundef zeroext true) #6, !inline_history !23
  call void @intel_dmc_wl_put(ptr noundef %i.f, i32 %i.ai) #6
  %i.aq = and i32 %i.ap, 1073741823
  call void @intel_dmc_wl_get(ptr noundef %i.f, i32 %i.al) #6
  %.val.i7.i = load ptr, ptr %i.f, align 8
  %i.ar = call ptr @to_intel_uncore(ptr noundef %.val.i7.i) #6 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 176
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef %i.ar, i32 %i.al, i32 noundef %i.aq, i1 noundef zeroext true) #6, !inline_history !24
  call void @intel_dmc_wl_put(ptr noundef %i.f, i32 %i.al) #6
  %i.au = getelementptr i8, ptr %1, i64 1329      ; 4 uses
  %i.av = load i8, ptr %i.au, align 1
  %.not105 = icmp eq i8 %i.av, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.preheader99:                                     ; preds = %.lr.ph
  %i.aw = icmp eq i8 %i.ch, 0
  br i1 %i.aw, label %._crit_edge, label %.lr.ph102

.lr.ph:                                           ; preds = %.critedge, %.lr.ph
  %.0100 = phi i32 [ %i.cg, %.lr.ph ], [ 0, %.critedge ] ; 4 uses
  %i.ax = call i32 @intel_ddi_level(ptr noundef %0, ptr noundef %1, i32 noundef %.0100) #6
  %i.ay = load i32, ptr %i.b, align 4             ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = shl i32 %i.ay, 12
  %i.bb = add i32 %i.ba, 1445888
  %i.bc = select i1 %i.az, i32 442368, i32 %i.bb
  %i.bd = load i32, ptr %i.a, align 4
  %i.be = shl i32 %i.bd, 10
  %i.bf = shl nuw nsw i32 %.0100, 8
  %i.bg = and i32 %i.bf, 2147483136
  %i.bh = shl nuw nsw i32 %.0100, 7
  %i.bi = and i32 %i.bh, 128
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = add nuw nsw i32 %i.bj, 1288
  %i.bl = add i32 %i.bk, %i.be
  %i.bm = add i32 %i.bl, %i.bc                    ; 4 uses
  %i.bn = load ptr, ptr %i.g, align 8
  %i.bo = sext i32 %i.ax to i64
  %i.bp = getelementptr [12 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 16
  %i.bt = getelementptr i8, ptr %i.bp, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = or disjoint i32 %i.bw, %i.bs
  call void @intel_dmc_wl_get(ptr noundef %i.f, i32 %i.bm) #6
  %.val.i91 = load ptr, ptr %i.f, align 8
  %i.by = call ptr @to_intel_uncore(ptr noundef %.val.i91) #6 ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call i32 %i.ca(ptr noundef %i.by, i32 %i.bm, i1 noundef zeroext true) #6, !inline_history !0
  %i.cc = and i32 %i.cb, -16776961
  %i.cd = or disjoint i32 %i.bx, %i.cc
  %i.ce = getelementptr i8, ptr %i.by, i64 176
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef %i.by, i32 %i.bm, i32 noundef %i.cd, i1 noundef zeroext true) #6, !inline_history !1
  call void @intel_dmc_wl_put(ptr noundef %i.f, i32 %i.bm) #6
  %i.cg = add nuw nsw i32 %.0100, 1               ; 2 uses
  %i.ch = load i8, ptr %i.au, align 1             ; 2 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = icmp samesign ult i32 %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.preheader99, !llvm.loop !25

.preheader:                                       ; preds = %bb.k
  %i.ck = icmp eq i8 %i.ei, 0
  br i1 %i.ck, label %._crit_edge, label %.lr.ph104

.lr.ph102:                                        ; preds = %.preheader99, %bb.k
  %.1101 = phi i32 [ %i.eh, %bb.k ], [ 0, %.preheader99 ] ; 4 uses
  %i.cl = call i32 @intel_ddi_level(ptr noundef %0, ptr noundef %1, i32 noundef %.1101) #6
  %i.cm = load i32, ptr %i.b, align 4             ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = shl i32 %i.cm, 12
  %i.cp = add i32 %i.co, 1445888
  %i.cq = select i1 %i.cn, i32 442368, i32 %i.cp
  %i.cr = load i32, ptr %i.a, align 4
  %i.cs = shl i32 %i.cr, 10
  %i.ct = shl nuw nsw i32 %.1101, 8
  %i.cu = and i32 %i.ct, 2147483136
  %i.cv = shl nuw nsw i32 %.1101, 7
  %i.cw = and i32 %i.cv, 128
  %i.cx = or disjoint i32 %i.cu, %i.cw
  %i.cy = add nuw nsw i32 %i.cx, 1292             ; 2 uses
  %i.cz = add i32 %i.cy, %i.cs
  %i.da = add i32 %i.cz, %i.cq                    ; 4 uses
  %i.db = load ptr, ptr %i.g, align 8
  %i.dc = sext i32 %i.cl to i64
  %i.dd = getelementptr [12 x i8], ptr %i.db, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 2
  %i.df = load i8, ptr %i.de, align 2
  %.not77 = icmp eq i8 %i.df, 0
  %i.dg = select i1 %.not77, i32 0, i32 67108864
  call void @intel_dmc_wl_get(ptr noundef %i.f, i32 %i.da) #6
  %.val.i92 = load ptr, ptr %i.f, align 8
  %i.dh = call ptr @to_intel_uncore(ptr noundef %.val.i92) #6 ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 144
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call i32 %i.dj(ptr noundef %i.dh, i32 %i.da, i1 noundef zeroext true) #6, !inline_history !0
  %i.dl = and i32 %i.dk, -67108865
  %i.dm = or disjoint i32 %i.dl, %i.dg
  %i.dn = getelementptr i8, ptr %i.dh, i64 176
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef %i.dh, i32 %i.da, i32 noundef %i.dm, i1 noundef zeroext true) #6, !inline_history !1
  call void @intel_dmc_wl_put(ptr noundef %i.f, i32 %i.da) #6
  %i.dp = load i32, ptr %i.b, align 4             ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = shl i32 %i.dp, 12
  %i.ds = add i32 %i.dr, 1445888
  %i.dt = select i1 %i.dq, i32 442368, i32 %i.ds
  %i.du = load i32, ptr %i.a, align 4
  %i.dv = shl i32 %i.du, 10
  %i.dw = add i32 %i.cy, %i.dv
  %i.dx = add i32 %i.dw, %i.dt                    ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.f, i32 %i.dx) #6
  %.val.i93 = load ptr, ptr %i.f, align 8
  %i.dy = call ptr @to_intel_uncore(ptr noundef %.val.i93) #6 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 144
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call i32 %i.ea(ptr noundef %i.dy, i32 %i.dx, i1 noundef zeroext true) #6, !inline_history !2
  call void @intel_dmc_wl_put(ptr noundef %i.f, i32 %i.dx) #6
end_hunk_0
begin_hunk_1_@bxt_dpio_phy_uninit:bb.a
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef %i.i, i32 %i.h, i32 noundef %i.m, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.h) #6
  %i.p = getelementptr i8, ptr %i.d, i64 12
  %i.q = load i32, ptr %i.p, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 1278096) #6
  %.val.i8 = load ptr, ptr %0, align 8
  %i.r = tail call ptr @to_intel_uncore(ptr noundef %.val.i8) #6 ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 %i.t(ptr noundef %i.r, i32 1278096, i1 noundef zeroext true) #6, !inline_history !0
  %i.v = xor i32 %i.q, -1
  %i.w = and i32 %i.u, %i.v
  %i.x = getelementptr i8, ptr %i.r, i64 176
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef %i.r, i32 1278096, i32 noundef %i.w, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 1278096) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @bxt_dpio_phy_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 34359738368
  %.not.i.i = icmp eq i64 %i.b, 0
  %bxt_dpio_phy_info.glk_dpio_phy_info.i.i = select i1 %.not.i.i, ptr @bxt_dpio_phy_info, ptr @glk_dpio_phy_info
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr [24 x i8], ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i.i, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @bxt_dpio_phy_is_enabled(ptr noundef %0, i32 noundef %i.f) #8
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_bxt_dpio_phy_init(ptr noundef %0, i32 noundef %i.f) #8, !srcloc !31
  tail call fastcc void @_bxt_dpio_phy_init(ptr noundef %0, i32 noundef %1) #8, !srcloc !32
  tail call void @bxt_dpio_phy_uninit(ptr noundef %0, i32 noundef %i.f) #8
  br label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call fastcc void @_bxt_dpio_phy_init(ptr noundef %0, i32 noundef %1) #8, !srcloc !32
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @_bxt_dpio_phy_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 34359738368
  %.not.i.i = icmp eq i64 %i.b, 0
  %bxt_dpio_phy_info.glk_dpio_phy_info.i.i = select i1 %.not.i.i, ptr @bxt_dpio_phy_info, ptr @glk_dpio_phy_info
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr [24 x i8], ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i.i, i64 %i.c ; 5 uses
  %i.e = tail call zeroext i1 @bxt_dpio_phy_is_enabled(ptr noundef %0, i32 noundef %1) #8
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %1, 0
  %i.i = shl i32 %1, 12
  %i.j = add i32 %i.i, 1446296
  %i.k = select i1 %i.h, i32 442776, i32 %i.j     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.k) #6
  %.val.i.i = load ptr, ptr %0, align 8
  %i.l = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #6 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 144
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 %i.n(ptr noundef %i.l, i32 %i.k, i1 noundef zeroext true) #6, !inline_history !33
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.k) #6
  %i.p = lshr i32 %i.o, 24
  %i.q = getelementptr i8, ptr %0, i64 2276
  store i32 %i.p, ptr %i.q, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = tail call zeroext i1 @bxt_dpio_phy_verify_state(ptr noundef %0, i32 noundef %1) #8
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.s, null                ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.v, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %1) #6
  br label %bb.t

bb.g:                                             ; preds = %bb.d
  br i1 %.not.i, label %__drm_to_dev.exit77, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit77

__drm_to_dev.exit77:                              ; preds = %bb.g, %bb.h
  %i.y = phi ptr [ %i.x, %bb.h ], [ null, %bb.g ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.y, i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %1) #6
  br label %bb.i

bb.i:                                             ; preds = %__drm_to_dev.exit77, %bb.a
  %i.z = getelementptr i8, ptr %i.d, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 1278096) #6
  %.val.i = load ptr, ptr %0, align 8
  %i.ab = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #6 ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 %i.ad(ptr noundef %i.ab, i32 1278096, i1 noundef zeroext true) #6, !inline_history !0
  %i.af = or i32 %i.ae, %i.aa
  %i.ag = getelementptr i8, ptr %i.ab, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef %i.ab, i32 1278096, i32 noundef %i.af, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 1278096) #6
  %i.ai = icmp eq i32 %1, 0                       ; 8 uses
  %i.aj = shl i32 %1, 12                          ; 7 uses
  %i.ak = add i32 %i.aj, 1445888
  %i.al = select i1 %i.ai, i32 442368, i32 %i.ak
  %i.am = tail call i32 @intel_de_wait_ms(ptr noundef %0, i32 %i.al, i32 noundef 65664, i32 noundef 65536, i32 noundef 1, ptr noundef null) #6
  %.not73 = icmp eq i32 %i.am, 0
  br i1 %.not73, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i78 = icmp eq ptr %i.an, null
  br i1 %.not.i78, label %__drm_to_dev.exit79, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit79

__drm_to_dev.exit79:                              ; preds = %bb.j, %bb.k
  %i.aq = phi ptr [ %i.ap, %bb.k ], [ null, %bb.j ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aq, ptr noundef nonnull @.str.23, i32 noundef %1) #9
  br label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit79, %bb.i
  %i.ar = add i32 %i.aj, 1445924
  %i.as = select i1 %i.ai, i32 442404, i32 %i.ar  ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.as) #6
  %.val.i80 = load ptr, ptr %0, align 8
  %i.at = tail call ptr @to_intel_uncore(ptr noundef %.val.i80) #6 ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 144
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i32 %i.av(ptr noundef %i.at, i32 %i.as, i1 noundef zeroext true) #6, !inline_history !0
  %i.ax = and i32 %i.aw, -65281
  %i.ay = or disjoint i32 %i.ax, 58368
  %i.az = getelementptr i8, ptr %i.at, i64 176
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef %i.at, i32 %i.as, i32 noundef %i.ay, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.as) #6
  %i.bb = add i32 %i.aj, 1445928
  %i.bc = select i1 %i.ai, i32 442408, i32 %i.bb  ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bc) #6
  %.val.i81 = load ptr, ptr %0, align 8
  %i.bd = tail call ptr @to_intel_uncore(ptr noundef %.val.i81) #6 ; 4 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call i32 %i.bf(ptr noundef %i.bd, i32 %i.bc, i1 noundef zeroext true) #6, !inline_history !0
  %i.bh = and i32 %i.bg, -65281
  %i.bi = or disjoint i32 %i.bh, 58368
  %i.bj = getelementptr i8, ptr %i.bd, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef %i.bd, i32 %i.bc, i32 noundef %i.bi, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bc) #6
  %i.bl = add i32 %i.aj, 1446000
  %i.bm = select i1 %i.ai, i32 442480, i32 %i.bl  ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bm) #6
  %.val.i82 = load ptr, ptr %0, align 8
  %i.bn = tail call ptr @to_intel_uncore(ptr noundef %.val.i82) #6 ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call i32 %i.bp(ptr noundef %i.bn, i32 %i.bm, i1 noundef zeroext true) #6, !inline_history !0
  %i.br = or i32 %i.bq, 12582915
  %i.bs = getelementptr i8, ptr %i.bn, i64 176
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef %i.bn, i32 %i.bm, i32 noundef %i.br, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bm) #6
  %i.bu = load i8, ptr %i.d, align 8, !range !13, !noundef !14
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = add i32 %i.aj, 1446744
  %i.bx = select i1 %i.ai, i32 443224, i32 %i.bw  ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bx) #6
  %.val.i83 = load ptr, ptr %0, align 8
  %i.by = tail call ptr @to_intel_uncore(ptr noundef %.val.i83) #6 ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call i32 %i.ca(ptr noundef %i.by, i32 %i.bx, i1 noundef zeroext true) #6, !inline_history !0
  %i.cc = or i32 %i.cb, 268435456
  %i.cd = getelementptr i8, ptr %i.by, i64 176
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef %i.by, i32 %i.bx, i32 noundef %i.cc, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bx) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cf = getelementptr i8, ptr %i.d, i64 4
  %i.cg = load i32, ptr %i.cf, align 4            ; 4 uses
  %.not74 = icmp eq i32 %i.cg, -1
  br i1 %.not74, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp eq i32 %i.cg, 0                    ; 2 uses
  %i.ci = shl i32 %i.cg, 12                       ; 2 uses
  %i.cj = add i32 %i.ci, 1446284
  %i.ck = select i1 %i.ch, i32 442764, i32 %i.cj
  %i.cl = tail call i32 @intel_de_wait_for_set_ms(ptr noundef %0, i32 %i.ck, i32 noundef 4194304, i32 noundef 10) #6
  %.not.i84 = icmp eq i32 %i.cl, 0
  br i1 %.not.i84, label %bxt_phy_wait_grc_done.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i85, label %__drm_to_dev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.q, %bb.p
  %i.cp = phi ptr [ %i.co, %bb.q ], [ null, %bb.p ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cp, ptr noundef nonnull @.str.24, i32 noundef range(i32 0, -1) %i.cg) #9
  br label %bxt_phy_wait_grc_done.exit

bxt_phy_wait_grc_done.exit:                       ; preds = %bb.o, %__drm_to_dev.exit.i
  %i.cq = add i32 %i.ci, 1446296
  %i.cr = select i1 %i.ch, i32 442776, i32 %i.cq  ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.cr) #6
  %.val.i.i86 = load ptr, ptr %0, align 8
  %i.cs = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i86) #6 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call i32 %i.cu(ptr noundef %i.cs, i32 %i.cr, i1 noundef zeroext true) #6, !inline_history !33
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.cr) #6
  %i.cw = lshr i32 %i.cv, 24                      ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 2276
  store i32 %i.cw, ptr %i.cx, align 4
  %i.cy = mul nuw nsw i32 %i.cw, 65793
  %i.cz = add i32 %i.aj, 1446296
  %i.da = select i1 %i.ai, i32 442776, i32 %i.cz  ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.da) #6
  %.val.i87 = load ptr, ptr %0, align 8
  %i.db = tail call ptr @to_intel_uncore(ptr noundef %.val.i87) #6 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 176
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef %i.db, i32 %i.da, i32 noundef %i.cy, i1 noundef zeroext true) #6, !inline_history !34
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.da) #6
  %i.de = add i32 %i.aj, 1446304
  %i.df = select i1 %i.ai, i32 442784, i32 %i.de  ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.df) #6
  %.val.i88 = load ptr, ptr %0, align 8
  %i.dg = tail call ptr @to_intel_uncore(ptr noundef %.val.i88) #6 ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 144
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call i32 %i.di(ptr noundef %i.dg, i32 %i.df, i1 noundef zeroext true) #6, !inline_history !0
  %i.dk = or i32 %i.dj, 32770
  %i.dl = getelementptr i8, ptr %i.dg, i64 176
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef %i.dg, i32 %i.df, i32 noundef %i.dk, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.df) #6
  br label %bb.r

bb.r:                                             ; preds = %bxt_phy_wait_grc_done.exit, %bb.n
  %i.dn = getelementptr i8, ptr %i.d, i64 8
  %i.do = load i32, ptr %i.dn, align 8            ; 2 uses
  %.not75 = icmp eq i32 %i.do, 0
  br i1 %.not75, label %udelay.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = sext i32 %i.do to i64
  tail call void @__udelay(i64 noundef range(i64 -2147483648, 2147483648) %i.dp) #6
  br label %udelay.exit

udelay.exit:                                      ; preds = %bb.s, %bb.r
  %i.dq = shl i32 %1, 5
  %i.dr = add i32 %i.dq, 412768
  %i.ds = select i1 %i.ai, i32 412816, i32 %i.dr  ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ds) #6
  %.val.i89 = load ptr, ptr %0, align 8
  %i.dt = tail call ptr @to_intel_uncore(ptr noundef %.val.i89) #6 ; 4 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 144
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = tail call i32 %i.dv(ptr noundef %i.dt, i32 %i.ds, i1 noundef zeroext true) #6, !inline_history !0
  %i.dx = or i32 %i.dw, -2147483648
  %i.dy = getelementptr i8, ptr %i.dt, i64 176
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef %i.dt, i32 %i.ds, i32 noundef %i.dx, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ds) #6
  br label %bb.t

bb.t:                                             ; preds = %udelay.exit, %__drm_to_dev.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @bxt_dpio_phy_verify_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 34359738368
  %.not.i.i = icmp eq i64 %i.b, 0
  %bxt_dpio_phy_info.glk_dpio_phy_info.i.i = select i1 %.not.i.i, ptr @bxt_dpio_phy_info, ptr @glk_dpio_phy_info
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr [24 x i8], ptr %bxt_dpio_phy_info.glk_dpio_phy_info.i.i, i64 %i.c ; 2 uses
  %i.e = tail call zeroext i1 @bxt_dpio_phy_is_enabled(ptr noundef %0, i32 noundef %1) #8
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 0                        ; 6 uses
  %i.g = shl i32 %1, 12                           ; 6 uses
  %i.h = add i32 %i.g, 1445924
  %i.i = select i1 %i.f, i32 442404, i32 %i.h
  %i.j = tail call zeroext i1 (ptr, i32, i32, i32, i32, ptr, ...) @__phy_reg_verify_state(ptr noundef %0, i32 noundef %1, i32 %i.i, i32 noundef 65280, i32 noundef 58368, ptr noundef nonnull @.str.7, i32 noundef %1) #8, !srcloc !35
  %i.k = add i32 %i.g, 1445928
  %i.l = select i1 %i.f, i32 442408, i32 %i.k
  %i.m = tail call zeroext i1 (ptr, i32, i32, i32, i32, ptr, ...) @__phy_reg_verify_state(ptr noundef %0, i32 noundef %1, i32 %i.l, i32 noundef 65280, i32 noundef 58368, ptr noundef nonnull @.str.8, i32 noundef %1) #8, !srcloc !36
  %i.n = and i1 %i.j, %i.m
  %i.o = add i32 %i.g, 1446000
  %i.p = select i1 %i.f, i32 442480, i32 %i.o
  %i.q = tail call zeroext i1 (ptr, i32, i32, i32, i32, ptr, ...) @__phy_reg_verify_state(ptr noundef %0, i32 noundef %1, i32 %i.p, i32 noundef 12582915, i32 noundef 12582915, ptr noundef nonnull @.str.9, i32 noundef %1) #8, !srcloc !37
  %i.r = and i1 %i.n, %i.q                        ; 2 uses
  %i.s = load i8, ptr %i.d, align 8, !range !13, !noundef !14
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = add i32 %i.g, 1446744
  %i.v = select i1 %i.f, i32 443224, i32 %i.u
  %i.w = tail call zeroext i1 (ptr, i32, i32, i32, i32, ptr, ...) @__phy_reg_verify_state(ptr noundef %0, i32 noundef %1, i32 %i.v, i32 noundef 268435456, i32 noundef 268435456, ptr noundef nonnull @.str.10, i32 noundef %1) #8, !srcloc !38
  %i.x = and i1 %i.r, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.064.in = phi i1 [ %i.x, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.d, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %.not = icmp eq i32 %i.z, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %0, i64 2276
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.ac = shl i32 %i.ab, 16
  %i.ad = and i32 %i.ac, 16711680
  %i.ae = shl i32 %i.ab, 8
  %i.af = and i32 %i.ae, 65280
  %i.ag = and i32 %i.ab, 255
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = add i32 %i.g, 1446296
  %i.ak = select i1 %i.f, i32 442776, i32 %i.aj
  %i.al = tail call zeroext i1 (ptr, i32, i32, i32, i32, ptr, ...) @__phy_reg_verify_state(ptr noundef %0, i32 noundef %1, i32 %i.ak, i32 noundef 16777215, i32 noundef %i.ai, ptr noundef nonnull @.str.11, i32 noundef %1) #8, !srcloc !39
  %i.am = add i32 %i.g, 1446304
  %i.an = select i1 %i.f, i32 442784, i32 %i.am
  %i.ao = tail call zeroext i1 (ptr, i32, i32, i32, i32, ptr, ...) @__phy_reg_verify_state(ptr noundef %0, i32 noundef %1, i32 %i.an, i32 noundef 32770, i32 noundef 32770, ptr noundef nonnull @.str.12, i32 noundef %1) #8, !srcloc !40
  %i.ap = and i1 %i.al, %i.ao
  %i.aq = and i1 %.064.in, %i.ap
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.aq, %bb.e ], [ %.064.in, %bb.d ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @__phy_reg_verify_state(ptr noundef %0, i32 noundef %1, i32 %2, i32 noundef range(i32 32770, 268435457) %3, i32 noundef range(i32 0, 268435457) %4, ptr noundef %5, ...) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.va_format, align 8          ; 5 uses
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !annotation !15
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %2) #6
  %.val.i = load ptr, ptr %0, align 8
  %i.a = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %i.a, i32 %2, i1 noundef zeroext true) #6, !inline_history !2 ; 3 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %2) #6
  %i.e = and i32 %i.d, %3
  %i.f = icmp eq i32 %i.e, %4                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %7)
  store ptr %5, ptr %6, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.g, align 8
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ]
  %i.l = xor i32 %3, -1
  %i.m = and i32 %i.d, %i.l
  %i.n = or i32 %i.m, %4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %1, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.n, i32 noundef %3) #6
  call void @llvm.va_end.p0(ptr nonnull %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %__drm_to_dev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i1 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext range(i8 0, 14) i8 @bxt_dpio_phy_calc_lane_lat_optim_mask(i8 noundef zeroext %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i8 %0, label %bb.d [
    i8 1, label %bb.e
    i8 2, label %bb.b
    i8 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.a = zext i8 %0 to i64
  %i.b = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 607, i32 2321, i64 16) #7, !srcloc !41
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.b, ptr noundef nonnull @.str.14, i64 noundef %i.a) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !42
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i8 [ 0, %bb.d ], [ 13, %bb.c ], [ 5, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @bxt_dpio_phy_set_lane_optim_mask(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 13 uses
  %i.f = getelementptr i8, ptr %0, i64 156
  %i.g = load i32, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !annotation !15
  call void @bxt_port_to_phy_channel(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.h = load i32, ptr %i.a, align 4              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = shl i32 %i.h, 12
  %i.k = add i32 %i.j, 1445888
  %i.l = select i1 %i.i, i32 442368, i32 %i.k
  %i.m = load i32, ptr %i.b, align 4
  %i.n = shl i32 %i.m, 10
  %invariant.op = add i32 %i.n, 1336
  %invariant.op14 = add i32 %invariant.op, %i.l   ; 7 uses
  %i.o = and i8 %1, 1
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 30
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %invariant.op14) #6
  %.val.i = load ptr, ptr %i.e, align 8
  %i.r = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #6 ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 %i.t(ptr noundef %i.r, i32 %invariant.op14, i1 noundef zeroext true) #6, !inline_history !0
  %i.v = and i32 %i.u, -1073741825
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr i8, ptr %i.r, i64 176
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef %i.r, i32 %invariant.op14, i32 noundef %i.w, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %invariant.op14) #6
  %.reass15.1 = or disjoint i32 %invariant.op14, 128 ; 4 uses
  %i.z = and i8 %1, 2
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 29
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %.reass15.1) #6
  %.val.i.1 = load ptr, ptr %i.e, align 8
  %i.ac = tail call ptr @to_intel_uncore(ptr noundef %.val.i.1) #6 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i32 %i.ae(ptr noundef %i.ac, i32 %.reass15.1, i1 noundef zeroext true) #6, !inline_history !0
  %i.ag = and i32 %i.af, -1073741825
  %i.ah = or disjoint i32 %i.ag, %i.ab
  %i.ai = getelementptr i8, ptr %i.ac, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef %i.ac, i32 %.reass15.1, i32 noundef %i.ah, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %.reass15.1) #6
  %.reass15.2 = or disjoint i32 %invariant.op14, 512 ; 4 uses
  %i.ak = and i8 %1, 4
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 28
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %.reass15.2) #6
  %.val.i.2 = load ptr, ptr %i.e, align 8
  %i.an = tail call ptr @to_intel_uncore(ptr noundef %.val.i.2) #6 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 %i.ap(ptr noundef %i.an, i32 %.reass15.2, i1 noundef zeroext true) #6, !inline_history !0
  %i.ar = and i32 %i.aq, -1073741825
  %i.as = or disjoint i32 %i.ar, %i.am
  %i.at = getelementptr i8, ptr %i.an, i64 176
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef %i.an, i32 %.reass15.2, i32 noundef %i.as, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %.reass15.2) #6
  %.reass15.3 = or disjoint i32 %invariant.op14, 640 ; 4 uses
  %i.av = and i8 %1, 8
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 27
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %.reass15.3) #6
  %.val.i.3 = load ptr, ptr %i.e, align 8
  %i.ay = tail call ptr @to_intel_uncore(ptr noundef %.val.i.3) #6 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 144
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 %i.ba(ptr noundef %i.ay, i32 %.reass15.3, i1 noundef zeroext true) #6, !inline_history !0
  %i.bc = and i32 %i.bb, -1073741825
  %i.bd = or disjoint i32 %i.bc, %i.ax
  %i.be = getelementptr i8, ptr %i.ay, i64 176
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef %i.ay, i32 %.reass15.3, i32 noundef %i.bd, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %.reass15.3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext range(i8 0, 16) i8 @bxt_dpio_phy_get_lane_lat_optim_mask(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 13 uses
  %i.f = getelementptr i8, ptr %0, i64 156
  %i.g = load i32, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !annotation !15
  call void @bxt_port_to_phy_channel(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.h = load i32, ptr %i.a, align 4              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = shl i32 %i.h, 12
  %i.k = add i32 %i.j, 1445888
  %i.l = select i1 %i.i, i32 442368, i32 %i.k
  %i.m = load i32, ptr %i.b, align 4
  %i.n = shl i32 %i.m, 10
  %invariant.op = add i32 %i.n, 1336
  %invariant.op17 = add i32 %invariant.op, %i.l   ; 6 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %invariant.op17) #6
  %.val.i = load ptr, ptr %i.e, align 8
  %i.o = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #6 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %i.o, i32 %invariant.op17, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %invariant.op17) #6
  %i.s = lshr i32 %i.r, 30
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = and i8 %i.t, 1
  %.reass18.1 = or disjoint i32 %invariant.op17, 128 ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %.reass18.1) #6
  %.val.i.1 = load ptr, ptr %i.e, align 8
  %i.v = tail call ptr @to_intel_uncore(ptr noundef %.val.i.1) #6 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 144
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 %i.x(ptr noundef %i.v, i32 %.reass18.1, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %.reass18.1) #6
  %i.z = lshr i32 %i.y, 29
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = and i8 %i.aa, 2
  %.1.1 = or disjoint i8 %i.ab, %i.u
  %.reass18.2 = or disjoint i32 %invariant.op17, 512 ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %.reass18.2) #6
  %.val.i.2 = load ptr, ptr %i.e, align 8
  %i.ac = tail call ptr @to_intel_uncore(ptr noundef %.val.i.2) #6 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i32 %i.ae(ptr noundef %i.ac, i32 %.reass18.2, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %.reass18.2) #6
  %i.ag = lshr i32 %i.af, 28
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = and i8 %i.ah, 4
  %.1.2 = or disjoint i8 %i.ai, %.1.1
  %.reass18.3 = or disjoint i32 %invariant.op17, 640 ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %.reass18.3) #6
  %.val.i.3 = load ptr, ptr %i.e, align 8
  %i.aj = tail call ptr @to_intel_uncore(ptr noundef %.val.i.3) #6 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 %i.al(ptr noundef %i.aj, i32 %.reass18.3, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %.reass18.3) #6
  %i.an = lshr i32 %i.am, 27
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = and i8 %i.ao, 8
  %.1.3 = or disjoint i8 %i.ap, %.1.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i8 %.1.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @vlv_dig_port_to_channel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 3, label %bb.d
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 663, i32 2321, i64 16) #7, !srcloc !17
  %i.d = load i32, ptr %i.a, align 4
  %i.e = sext i32 %i.d to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef nonnull @.str.15, i64 noundef %i.e) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @vlv_dig_port_to_phy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 677, i32 2321, i64 16) #7, !srcloc !19
  %i.d = load i32, ptr %i.a, align 4
  %i.e = sext i32 %i.d to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef nonnull @.str.15, i64 noundef %i.e) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @vlv_pipe_to_phy(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i32 %0, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %0 to i64
  %i.b = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 691, i32 2321, i64 16) #7, !srcloc !43
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.b, ptr noundef nonnull @.str.16, i64 noundef %i.a) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !44
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @vlv_pipe_to_channel(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i32 %0, label %bb.b [
    i32 0, label %bb.d
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %0 to i64
  %i.b = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 705, i32 2321, i64 16) #7, !srcloc !45
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.b, ptr noundef nonnull @.str.16, i64 noundef %i.a) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !46
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @chv_set_phy_signal_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 20 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
    i32 8, label %enc_to_dig_port.exit
    i32 6, label %enc_to_dig_port.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i: ; preds = %bb.c
  br label %enc_to_dig_port.exit

enc_to_dig_port.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i
  %.0.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i ]
  %i.g = getelementptr i8, ptr %.0.i, i64 156     ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  switch i32 %i.h, label %bb.e [
    i32 1, label %vlv_dig_port_to_channel.exit
end_hunk_1
begin_hunk_2_@chv_phy_pre_encoder_enable:bb.a
  %.val.i.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_intel_dp.exit
    i32 7, label %enc_to_intel_dp.exit
    i32 8, label %enc_to_intel_dp.exit
    i32 6, label %enc_to_intel_dp.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_intel_dp.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.c
  br label %enc_to_intel_dp.exit

enc_to_intel_dp.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  %i.g = getelementptr i8, ptr %.0.i.i, i64 156   ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  switch i32 %i.h, label %bb.e [
    i32 1, label %vlv_dig_port_to_channel.exit
    i32 3, label %vlv_dig_port_to_channel.exit
    i32 2, label %vlv_dig_port_to_phy.exit
  ]

bb.e:                                             ; preds = %enc_to_intel_dp.exit
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 663, i32 2321, i64 16) #7, !srcloc !17
  %i.j = load i32, ptr %i.g, align 4
  %i.k = sext i32 %i.j to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.i, ptr noundef nonnull @.str.15, i64 noundef %i.k) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18
  %.pr = load i32, ptr %i.g, align 4
  br label %vlv_dig_port_to_channel.exit

vlv_dig_port_to_channel.exit:                     ; preds = %enc_to_intel_dp.exit, %enc_to_intel_dp.exit, %bb.e
  %i.l = phi i32 [ %i.h, %enc_to_intel_dp.exit ], [ %i.h, %enc_to_intel_dp.exit ], [ %.pr, %bb.e ]
  switch i32 %i.l, label %bb.f [
    i32 1, label %vlv_dig_port_to_phy.exit
    i32 2, label %vlv_dig_port_to_phy.exit
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %vlv_dig_port_to_channel.exit
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 677, i32 2321, i64 16) #7, !srcloc !19
  %i.n = load i32, ptr %i.g, align 4
  %i.o = sext i32 %i.n to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef nonnull @.str.15, i64 noundef %i.o) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  br label %vlv_dig_port_to_phy.exit

bb.g:                                             ; preds = %vlv_dig_port_to_channel.exit
  br label %vlv_dig_port_to_phy.exit

vlv_dig_port_to_phy.exit:                         ; preds = %enc_to_intel_dp.exit, %vlv_dig_port_to_channel.exit, %vlv_dig_port_to_channel.exit, %bb.f, %bb.g
  %.0.i73 = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 9216, %enc_to_intel_dp.exit ] ; 7 uses
  %.0.i71 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %enc_to_intel_dp.exit ] ; 13 uses
  tail call void @vlv_dpio_get(ptr noundef %i.c) #6
  %i.p = or disjoint i32 %.0.i73, 556             ; 4 uses
  %i.q = tail call i32 @vlv_dpio_read(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.p) #6
  %i.r = and i32 %i.q, -9
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.p, i32 noundef %i.r) #6
  %i.s = getelementptr i8, ptr %1, i64 1329       ; 7 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = icmp ugt i8 %i.t, 2
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %vlv_dig_port_to_phy.exit
  %i.v = add nuw nsw i32 %.0.i73, 1068            ; 2 uses
  %i.w = tail call i32 @vlv_dpio_read(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.v) #6
  %i.x = and i32 %i.w, -9
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.v, i32 noundef %i.x) #6
  %.pre = load i8, ptr %i.s, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %vlv_dig_port_to_phy.exit
  %i.y = phi i8 [ %.pre, %bb.h ], [ %i.t, %vlv_dig_port_to_phy.exit ] ; 2 uses
  %.not75 = icmp eq i8 %i.y, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.z = or disjoint i32 %.0.i73, 184             ; 2 uses
  %i.aa = icmp eq i8 %i.y, 1
  %.067.peel = select i1 %i.aa, i32 0, i32 1073741824
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.z, i32 noundef %.067.peel) #6
  %i.ab = load i8, ptr %i.s, align 1
  %i.ac = icmp ugt i8 %i.ab, 1
  br i1 %i.ac, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %.lr.ph
  %i.ad = or disjoint i32 %.0.i73, 696
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.ad, i32 noundef 0) #6
  %i.ae = load i8, ptr %i.s, align 1              ; 2 uses
  %i.af = icmp ugt i8 %i.ae, 2
  br i1 %i.af, label %.peel.next76, label %._crit_edge

.peel.next76:                                     ; preds = %.peel.next, %.peel.next76
  %i.ag = phi i8 [ %i.al, %.peel.next76 ], [ %i.ae, %.peel.next ]
  %.06674 = phi i32 [ %i.ak, %.peel.next76 ], [ 2, %.peel.next ] ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 1
  %.067 = select i1 %i.ah, i32 0, i32 1073741824
  %i.ai = shl nuw nsw i32 %.06674, 9
  %i.aj = add nuw nsw i32 %i.z, %i.ai
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.aj, i32 noundef %.067) #6
  %i.ak = add nuw nsw i32 %.06674, 1              ; 2 uses
  %i.al = load i8, ptr %i.s, align 1              ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = icmp samesign ult i32 %i.ak, %i.am
  br i1 %i.an, label %.peel.next76, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.peel.next76, %.lr.ph, %.peel.next, %bb.i
  %i.ao = getelementptr i8, ptr %1, i64 1320
  %i.ap = load i32, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 270000
  br i1 %i.aq, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ar = icmp sgt i32 %i.ap, 135000
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = icmp sgt i32 %i.ap, 67500
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp sgt i32 %i.ap, 33750
  %. = select i1 %i.at, i32 8004, i32 8002
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %._crit_edge
  %.0 = phi i32 [ 8007, %bb.k ], [ 8024, %._crit_edge ], [ 8013, %bb.j ], [ %., %bb.l ] ; 2 uses
  %i.au = tail call i32 @vlv_dpio_read(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.p) #6
  %i.av = or i32 %i.au, 520093696
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.p, i32 noundef %i.av) #6
  %i.aw = load i8, ptr %i.s, align 1
  %i.ax = icmp ugt i8 %i.aw, 2
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = add nuw nsw i32 %.0.i73, 1068           ; 2 uses
  %i.az = tail call i32 @vlv_dpio_read(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.ay) #6
  %i.ba = or i32 %i.az, 520093696
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.ay, i32 noundef %i.ba) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = or disjoint i32 %.0.i73, 560
  %i.bc = or disjoint i32 %.0, 393216
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.bb, i32 noundef %i.bc) #6
  %i.bd = load i8, ptr %i.s, align 1
  %i.be = icmp ugt i8 %i.bd, 2
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = add nuw nsw i32 %.0.i73, 1072
  %i.bg = or disjoint i32 %.0, 5701632
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i71, i32 noundef %i.bf, i32 noundef %i.bg) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call fastcc void @__chv_data_lane_soft_reset(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #8, !srcloc !54
  tail call void @vlv_dpio_put(ptr noundef %i.c) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @chv_phy_release_cl2_override(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
    i32 8, label %enc_to_dig_port.exit
    i32 6, label %enc_to_dig_port.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i: ; preds = %bb.c
  br label %enc_to_dig_port.exit

enc_to_dig_port.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i
  %.0.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i ]
  %i.g = getelementptr i8, ptr %.0.i, i64 4178    ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !range !13, !noundef !14
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %enc_to_dig_port.exit
  %i.j = tail call zeroext i1 @chv_phy_powergate_ch(ptr noundef %i.c, i32 noundef 0, i32 noundef 1, i1 noundef zeroext false) #6 ; 0 uses
  store i8 0, ptr %i.g, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %enc_to_dig_port.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @chv_phy_post_pll_disable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
    i32 8, label %enc_to_dig_port.exit
    i32 6, label %enc_to_dig_port.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i: ; preds = %bb.c
  br label %enc_to_dig_port.exit

enc_to_dig_port.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i
  %.0.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i ]
  %i.g = getelementptr i8, ptr %.0.i, i64 156     ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  switch i32 %i.h, label %bb.e [
    i32 1, label %vlv_dig_port_to_phy.exit
    i32 2, label %vlv_dig_port_to_phy.exit
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %enc_to_dig_port.exit
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 677, i32 2321, i64 16) #7, !srcloc !19
  %i.j = load i32, ptr %i.g, align 4
  %i.k = sext i32 %i.j to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.i, ptr noundef nonnull @.str.15, i64 noundef %i.k) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  br label %vlv_dig_port_to_phy.exit

bb.f:                                             ; preds = %enc_to_dig_port.exit
  br label %vlv_dig_port_to_phy.exit

vlv_dig_port_to_phy.exit:                         ; preds = %enc_to_dig_port.exit, %enc_to_dig_port.exit, %bb.e, %bb.f
  %.0.i22 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %enc_to_dig_port.exit ], [ 0, %enc_to_dig_port.exit ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 1664
  %i.n = load i32, ptr %i.m, align 8
  tail call void @vlv_dpio_get(ptr noundef %i.c) #6
  %.not21 = icmp eq i32 %i.n, 1                   ; 2 uses
  %. = select i1 %.not21, i32 32900, i32 33044    ; 2 uses
  %.27 = select i1 %.not21, i32 -1966081, i32 -15728641
  %i.o = tail call i32 @vlv_dpio_read(ptr noundef %i.c, i32 noundef %.0.i22, i32 noundef %.) #6
  %i.p = and i32 %i.o, %.27
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i22, i32 noundef %., i32 noundef %i.p) #6
  tail call void @vlv_dpio_put(ptr noundef %i.c) #6
  tail call void @chv_phy_powergate_lanes(ptr noundef %0, i1 noundef zeroext false, i32 noundef 0) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vlv_set_phy_signal_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 10 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
    i32 8, label %enc_to_dig_port.exit
    i32 6, label %enc_to_dig_port.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i: ; preds = %bb.c
  br label %enc_to_dig_port.exit

enc_to_dig_port.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i
  %.0.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i ]
  %i.g = getelementptr i8, ptr %.0.i, i64 156     ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  switch i32 %i.h, label %bb.e [
    i32 1, label %vlv_dig_port_to_channel.exit
    i32 3, label %vlv_dig_port_to_channel.exit
    i32 2, label %vlv_dig_port_to_phy.exit
  ]

bb.e:                                             ; preds = %enc_to_dig_port.exit
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 663, i32 2321, i64 16) #7, !srcloc !17
  %i.j = load i32, ptr %i.g, align 4
  %i.k = sext i32 %i.j to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.i, ptr noundef nonnull @.str.15, i64 noundef %i.k) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18
  %.pr = load i32, ptr %i.g, align 4
  br label %vlv_dig_port_to_channel.exit

vlv_dig_port_to_channel.exit:                     ; preds = %enc_to_dig_port.exit, %enc_to_dig_port.exit, %bb.e
  %i.l = phi i32 [ %i.h, %enc_to_dig_port.exit ], [ %i.h, %enc_to_dig_port.exit ], [ %.pr, %bb.e ]
  switch i32 %i.l, label %bb.f [
    i32 1, label %vlv_dig_port_to_phy.exit
    i32 2, label %vlv_dig_port_to_phy.exit
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %vlv_dig_port_to_channel.exit
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 677, i32 2321, i64 16) #7, !srcloc !19
  %i.n = load i32, ptr %i.g, align 4
  %i.o = sext i32 %i.n to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef nonnull @.str.15, i64 noundef %i.o) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  br label %vlv_dig_port_to_phy.exit

bb.g:                                             ; preds = %vlv_dig_port_to_channel.exit
  br label %vlv_dig_port_to_phy.exit

vlv_dig_port_to_phy.exit:                         ; preds = %enc_to_dig_port.exit, %vlv_dig_port_to_channel.exit, %vlv_dig_port_to_channel.exit, %bb.f, %bb.g
  %.0.i3740 = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 1, %enc_to_dig_port.exit ] ; 2 uses
  %.0.i38 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %enc_to_dig_port.exit ] ; 8 uses
  tail call void @vlv_dpio_get(ptr noundef %i.c) #6
  %i.p = shl nuw nsw i32 %.0.i3740, 9             ; 6 uses
  %i.q = add nuw nsw i32 %i.p, 33428              ; 2 uses
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.q, i32 noundef 0) #6
  %i.r = add nuw nsw i32 %i.p, 33424
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.r, i32 noundef %2) #6
  %i.s = add nuw nsw i32 %i.p, 33416
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.s, i32 noundef %4) #6
  %i.t = add nuw nsw i32 %i.p, 33420
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.t, i32 noundef 209199168) #6
  %.not36 = icmp eq i32 %5, 0
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vlv_dig_port_to_phy.exit
  %i.u = mul nuw nsw i32 %.0.i3740, 9216
  %i.v = add nuw nsw i32 %i.u, 1680
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.v, i32 noundef %5) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %vlv_dig_port_to_phy.exit
  %i.w = add nuw nsw i32 %i.p, 33324
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.w, i32 noundef 196608) #6
  %i.x = add nuw nsw i32 %i.p, 33316
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.x, i32 noundef %3) #6
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i38, i32 noundef %i.q, i32 noundef -2147483648) #6
  tail call void @vlv_dpio_put(ptr noundef %i.c) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vlv_phy_pre_pll_enable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
end_hunk_2
begin_hunk_3_@vlv_phy_pre_pll_enable:bb.a
  %.0.i22 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %enc_to_dig_port.exit ] ; 5 uses
  tail call void @vlv_dpio_get(ptr noundef %i.c) #6
  %i.p = add nuw nsw i32 %.0.i2124, 33280
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i22, i32 noundef %i.p, i32 noundef 65664) #6
  %i.q = add nuw nsw i32 %.0.i2124, 33284
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i22, i32 noundef %i.q, i32 noundef 6291552) #6
  %i.r = add nuw nsw i32 %.0.i2124, 33328
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i22, i32 noundef %i.r, i32 noundef 7671552) #6
  %i.s = add nuw nsw i32 %.0.i2124, 33452
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i22, i32 noundef %i.s, i32 noundef 5376) #6
  %i.t = add nuw nsw i32 %.0.i2124, 33464
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i22, i32 noundef %i.t, i32 noundef 1077936128) #6
  tail call void @vlv_dpio_put(ptr noundef %i.c) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vlv_phy_pre_encoder_enable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_intel_dp.exit
    i32 7, label %enc_to_intel_dp.exit
    i32 8, label %enc_to_intel_dp.exit
    i32 6, label %enc_to_intel_dp.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_intel_dp.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.c
  br label %enc_to_intel_dp.exit

enc_to_intel_dp.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr i8, ptr %.0.i.i, i64 156   ; 4 uses
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  switch i32 %i.i, label %bb.e [
    i32 1, label %vlv_dig_port_to_channel.exit
    i32 3, label %vlv_dig_port_to_channel.exit
    i32 2, label %vlv_dig_port_to_phy.exit
  ]

bb.e:                                             ; preds = %enc_to_intel_dp.exit
  %i.j = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 663, i32 2321, i64 16) #7, !srcloc !17
  %i.k = load i32, ptr %i.h, align 4
  %i.l = sext i32 %i.k to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef %i.l) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18
  %.pr = load i32, ptr %i.h, align 4
  br label %vlv_dig_port_to_channel.exit

vlv_dig_port_to_channel.exit:                     ; preds = %enc_to_intel_dp.exit, %enc_to_intel_dp.exit, %bb.e
  %i.m = phi i32 [ %i.i, %enc_to_intel_dp.exit ], [ %i.i, %enc_to_intel_dp.exit ], [ %.pr, %bb.e ]
  switch i32 %i.m, label %bb.f [
    i32 1, label %vlv_dig_port_to_phy.exit
    i32 2, label %vlv_dig_port_to_phy.exit
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %vlv_dig_port_to_channel.exit
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 677, i32 2321, i64 16) #7, !srcloc !19
  %i.o = load i32, ptr %i.h, align 4
  %i.p = sext i32 %i.o to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef nonnull @.str.15, i64 noundef %i.p) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  br label %vlv_dig_port_to_phy.exit

bb.g:                                             ; preds = %vlv_dig_port_to_channel.exit
  br label %vlv_dig_port_to_phy.exit

vlv_dig_port_to_phy.exit:                         ; preds = %enc_to_intel_dp.exit, %vlv_dig_port_to_channel.exit, %vlv_dig_port_to_channel.exit, %bb.f, %bb.g
  %.0.i27 = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 512, %enc_to_intel_dp.exit ] ; 3 uses
  %.0.i25 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %enc_to_intel_dp.exit ] ; 3 uses
  %i.q = getelementptr i8, ptr %i.g, i64 1664
  %i.r = load i32, ptr %i.q, align 8
  tail call void @vlv_dpio_get(ptr noundef %i.c) #6
  %i.s = icmp eq i32 %i.r, 1
  %spec.select = select i1 %i.s, i32 3145924, i32 1048772
  %i.t = add nuw nsw i32 %.0.i27, 33312
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i25, i32 noundef %i.t, i32 noundef %spec.select) #6
  %i.u = add nuw nsw i32 %.0.i27, 33336
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i25, i32 noundef %i.u, i32 noundef 7733272) #6
  %i.v = add nuw nsw i32 %.0.i27, 33372
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i25, i32 noundef %i.v, i32 noundef 4196488) #6
  tail call void @vlv_dpio_put(ptr noundef %i.c) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vlv_phy_reset_lanes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i [
    i32 10, label %enc_to_dig_port.exit
    i32 7, label %enc_to_dig_port.exit
    i32 8, label %enc_to_dig_port.exit
    i32 6, label %enc_to_dig_port.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i: ; preds = %bb.c
  br label %enc_to_dig_port.exit

enc_to_dig_port.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i
  %.0.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i ]
  %i.g = getelementptr i8, ptr %.0.i, i64 156     ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  switch i32 %i.h, label %bb.e [
    i32 1, label %vlv_dig_port_to_channel.exit
    i32 3, label %vlv_dig_port_to_channel.exit
    i32 2, label %vlv_dig_port_to_phy.exit
  ]

bb.e:                                             ; preds = %enc_to_dig_port.exit
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 663, i32 2321, i64 16) #7, !srcloc !17
  %i.j = load i32, ptr %i.g, align 4
  %i.k = sext i32 %i.j to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.i, ptr noundef nonnull @.str.15, i64 noundef %i.k) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18
  %.pr = load i32, ptr %i.g, align 4
  br label %vlv_dig_port_to_channel.exit

vlv_dig_port_to_channel.exit:                     ; preds = %enc_to_dig_port.exit, %enc_to_dig_port.exit, %bb.e
  %i.l = phi i32 [ %i.h, %enc_to_dig_port.exit ], [ %i.h, %enc_to_dig_port.exit ], [ %.pr, %bb.e ]
  switch i32 %i.l, label %bb.f [
    i32 1, label %vlv_dig_port_to_phy.exit
    i32 2, label %vlv_dig_port_to_phy.exit
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %vlv_dig_port_to_channel.exit
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 677, i32 2321, i64 16) #7, !srcloc !19
  %i.n = load i32, ptr %i.g, align 4
  %i.o = sext i32 %i.n to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef nonnull @.str.15, i64 noundef %i.o) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  br label %vlv_dig_port_to_phy.exit

bb.g:                                             ; preds = %vlv_dig_port_to_channel.exit
  br label %vlv_dig_port_to_phy.exit

vlv_dig_port_to_phy.exit:                         ; preds = %enc_to_dig_port.exit, %vlv_dig_port_to_channel.exit, %vlv_dig_port_to_channel.exit, %bb.f, %bb.g
  %.0.i1215 = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 512, %enc_to_dig_port.exit ] ; 2 uses
  %.0.i13 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %vlv_dig_port_to_channel.exit ], [ 0, %enc_to_dig_port.exit ] ; 2 uses
  tail call void @vlv_dpio_get(ptr noundef %i.c) #6
  %i.p = add nuw nsw i32 %.0.i1215, 33280
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i13, i32 noundef %i.p, i32 noundef 0) #6
  %i.q = add nuw nsw i32 %.0.i1215, 33284
  tail call void @vlv_dpio_write(ptr noundef %i.c, i32 noundef %.0.i13, i32 noundef %i.q, i32 noundef 14680160) #6
  tail call void @vlv_dpio_put(ptr noundef %i.c) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vlv_wait_port_ready(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !annotation !15
  %i.e = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %bb.d [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.1, i32 1180, i32 2321, i64 16) #7, !srcloc !55
  %i.h = load i32, ptr %i.e, align 4
  %i.i = sext i32 %i.h to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.g, ptr noundef nonnull @.str.17, i64 noundef %i.i) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 1160
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 48
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, 24596
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.d, i64 1160
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, 24596
  %i.t = shl i32 %1, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.013.0 = phi i32 [ %i.n, %bb.e ], [ %i.s, %bb.f ], [ 1598016, %bb.c ]
  %.037 = phi i32 [ 15, %bb.e ], [ 240, %bb.f ], [ 15, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.e ], [ %i.t, %bb.f ], [ %1, %bb.c ] ; 2 uses
  %i.u = call i32 @intel_de_wait_ms(ptr noundef %i.d, i32 %.sroa.013.0, i32 noundef %.037, i32 noundef %.0, i32 noundef 1000, ptr noundef nonnull %i.a) #6
  %.not39 = icmp eq i32 %i.u, 0
  br i1 %.not39, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.x, %bb.i ], [ null, %bb.h ]
  %i.z = call ptr @dev_driver_string(ptr noundef %i.y) #6 ; 0 uses
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = getelementptr i8, ptr %0, i64 56
  %i.ac = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.18, ptr nonnull @.str.1, i32 1201, i32 2321, i64 16) #7, !srcloc !57
  %i.ad = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i43 = icmp eq ptr %i.ad, null
  br i1 %.not.i43, label %__drm_to_dev.exit44, label %bb.j

bb.j:                                             ; preds = %__drm_to_dev.exit
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  br label %__drm_to_dev.exit44

__drm_to_dev.exit44:                              ; preds = %__drm_to_dev.exit, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.j ], [ null, %__drm_to_dev.exit ]
  %i.ah = call ptr @dev_driver_string(ptr noundef %i.ag) #6
  %i.ai = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i45 = icmp eq ptr %i.ai, null
  br i1 %.not.i45, label %__drm_to_dev.exit46, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit44
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %__drm_to_dev.exit46

__drm_to_dev.exit46:                              ; preds = %__drm_to_dev.exit44, %bb.k
  %i.al = phi ptr [ %i.ak, %bb.k ], [ null, %__drm_to_dev.exit44 ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 80
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i47 = icmp eq ptr %i.an, null
  br i1 %.not.i47, label %bb.l, label %dev_name.exit50

bb.l:                                             ; preds = %__drm_to_dev.exit46
  %.val.i49 = load ptr, ptr %i.al, align 8
  br label %dev_name.exit50

dev_name.exit50:                                  ; preds = %__drm_to_dev.exit46, %bb.l
  %.0.i48 = phi ptr [ %.val.i49, %bb.l ], [ %i.an, %__drm_to_dev.exit46 ]
  %i.ao = load i32, ptr %i.aa, align 8
  %i.ap = load ptr, ptr %i.ab, align 8
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = and i32 %i.aq, %.037
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %.0.i48, i32 noundef %i.ao, ptr noundef %i.ap, i32 noundef %i.ar, i32 noundef %.0) #6
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !58
  br label %bb.m

bb.m:                                             ; preds = %dev_name.exit50, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_ms(ptr noundef, i32, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_set_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__udelay(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { noredzone nounwind "no-builtin-wcslen" }
attributes #7 = { nounwind }
attributes #8 = { noredzone "no-builtin-wcslen" }
attributes #9 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{null, null}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7 = !{i32 1, !"Code Model", i32 2}
!8 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!9 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{i32 4, !"SkipRaxSetup", i32 1}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"auto-init"}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 2161746602, i64 2161746629, i64 2161747018, i64 2161747051, i64 2161747086, i64 2161747102, i64 2161747943, i64 2161748001, i64 2161748050, i64 2161747860, i64 2161747161, i64 2161747193}
!18 = !{i64 2161744901}
!19 = !{i64 2161750750, i64 2161750777, i64 2161751166, i64 2161751199, i64 2161751234, i64 2161751250, i64 2161752091, i64 2161752149, i64 2161752198, i64 2161752008, i64 2161751309, i64 2161751341}
!20 = !{i64 2161749049}
!21 = !{i64 2160827435, i64 2160827462, i64 2160827866, i64 2160827899, i64 2160827934, i64 2160827950, i64 2160828791, i64 2160828849, i64 2160828898, i64 2160828708, i64 2160828009, i64 2160828041}
!22 = !{i64 2160825588}
!23 = distinct !{null, null, null}
!24 = distinct !{null, null, null}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{i64 2160837375, i64 2160837402, i64 2160837783, i64 2160837816, i64 2160837851, i64 2160837867, i64 2160838708, i64 2160838766, i64 2160838815, i64 2160838625, i64 2160837926, i64 2160837958}
!30 = !{i64 2160835442}
!31 = !{i64 14943}
!32 = !{i64 14985}
!33 = distinct !{null, null, null}
!34 = distinct !{null, null}
!35 = !{i64 2161404379}
!36 = !{i64 2161473613}
!37 = !{i64 2161550775}
!38 = !{i64 2161552711}
!39 = !{i64 2161711547}
!40 = !{i64 2161715551}
!41 = !{i64 2161720257, i64 2161720284, i64 2161720673, i64 2161720706, i64 2161720741, i64 2161720757, i64 2161721598, i64 2161721656, i64 2161721705, i64 2161721515, i64 2161720816, i64 2161720848}
!42 = !{i64 2161718592}
!43 = !{i64 2161754718, i64 2161754745, i64 2161755134, i64 2161755167, i64 2161755202, i64 2161755218, i64 2161756059, i64 2161756117, i64 2161756166, i64 2161755976, i64 2161755277, i64 2161755309}
!44 = !{i64 2161753077}
!45 = !{i64 2161758686, i64 2161758713, i64 2161759102, i64 2161759135, i64 2161759170, i64 2161759186, i64 2161760027, i64 2161760085, i64 2161760134, i64 2161759944, i64 2161759245, i64 2161759277}
!46 = !{i64 2161757045}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = !{i64 24519}
!51 = !{i64 25482}
!52 = distinct !{!52, !16, !53}
!53 = !{!"llvm.loop.peeled.count", i32 2}
!54 = !{i64 29437}
!55 = !{i64 2163236481, i64 2163236508, i64 2163236897, i64 2163236930, i64 2163236965, i64 2163236981, i64 2163237822, i64 2163237880, i64 2163237929, i64 2163237739, i64 2163237040, i64 2163237072}
!56 = !{i64 2163234804}
!57 = !{i64 2163244657, i64 2163244684, i64 2163245138, i64 2163245171, i64 2163245206, i64 2163245222, i64 2163246063, i64 2163246121, i64 2163246170, i64 2163245980, i64 2163245281, i64 2163245313}
!58 = !{i64 2163242588}
end_hunk_3
