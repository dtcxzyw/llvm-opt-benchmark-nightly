inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_check__483_186_start_periodic_check_for_corruption6:\09\09\09"
    ".long\09start_periodic_check_for_corruption - .\09"
    ".previous\09\09\09\09\09"

%struct.memblock = type { i8, i64, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i64, i64, i64, ptr, ptr }
%struct.scan_area = type { i64, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }

@__setup_str_set_corruption_check = internal constant [24 x i8] c"memory_corruption_check\00", section ".init.rodata", align 1
@__setup_set_corruption_check = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_set_corruption_check, ptr @set_corruption_check, i32 1, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@__setup_str_set_corruption_check_period = internal constant [31 x i8] c"memory_corruption_check_period\00", section ".init.rodata", align 1
@__setup_set_corruption_check_period = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_set_corruption_check_period, ptr @set_corruption_check_period, i32 1, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@__setup_str_set_corruption_check_size = internal constant [29 x i8] c"memory_corruption_check_size\00", section ".init.rodata", align 1
@__setup_set_corruption_check_size = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_set_corruption_check_size, ptr @set_corruption_check_size, i32 1, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@memory_corruption_check = internal unnamed_addr global i32 -1, section ".data..read_mostly", align 4
@corruption_check_size = internal unnamed_addr global i32 65536, section ".data..read_mostly", align 4
@memblock = external dso_local global %struct.memblock, align 8
@scan_areas = internal unnamed_addr global [8 x %struct.scan_area] zeroinitializer, align 16
@num_scan_areas = internal unnamed_addr global i32 0, align 4
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [54 x i8] c"\016check: Scanning %d areas for low memory corruption\0A\00", align 1
@__UNIQUE_ID_addressable_start_periodic_check_for_corruption_484 = internal global ptr @start_periodic_check_for_corruption, section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"\013check: memory_corruption_check config string not provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"\013check: memory_corruption_check_period config string not provided\0A\00", align 1
@corruption_check_period = internal unnamed_addr global i32 60, section ".data..read_mostly", align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"\013check: memory_corruption_check_size config string not provided\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\016check: Scanning for low memory corruption every %d seconds\0A\00", align 1
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@bios_check_work = internal global { %struct.work_struct, { %struct.hlist_node, i64, ptr, i32, [4 x i8] }, ptr, i32, [4 x i8] } { %struct.work_struct { %struct.atomic64_t { i64 4503599625273344 }, %struct.list_head { ptr getelementptr (i8, ptr @bios_check_work, i64 8), ptr getelementptr (i8, ptr @bios_check_work, i64 8) }, ptr @check_corruption }, { %struct.hlist_node, i64, ptr, i32, [4 x i8] } { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152, [4 x i8] zeroinitializer }, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"\013check: Corrupted low memory at %p (%lx phys) = %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\013Memory corruption detected in low memory\0A\00", align 1
@check_for_bios_corruption.__UNIQUE_ID_addressable___SCK__WARN_trap_482 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"arch/x86/kernel/check.c\00", align 1
@phys_base = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_addressable_start_periodic_check_for_corruption_484, ptr @__setup_set_corruption_check, ptr @__setup_set_corruption_check_period, ptr @__setup_set_corruption_check_size, ptr @check_for_bios_corruption.__UNIQUE_ID_addressable___SCK__WARN_trap_482], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_corruption_check(ptr noundef %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.c = call i32 @kstrtoull(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %i.a, align 8
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr @memory_corruption_check, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.d ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_corruption_check_period(ptr noundef %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.c = call i32 @kstrtoull(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %i.a, align 8
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr @corruption_check_period, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.d ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -22, 1) i32 @set_corruption_check_size(ptr noundef %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !10
  %i.c = call i64 @memparse(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #9
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr @corruption_check_size, align 4
  %i.h = icmp eq i32 %.pre, %i.d
  %i.i = select i1 %i.h, i32 0, i32 -22
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr @corruption_check_size, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ %i.i, %._crit_edge ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @setup_bios_corruption_check() local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = load i32, ptr @memory_corruption_check, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.thread51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @corruption_check_size, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.c

.thread51:                                        ; preds = %bb.a
  store i32 1, ptr @memory_corruption_check, align 4
  %i.h = load i32, ptr @corruption_check_size, align 4 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread, label %.thread54

.thread:                                          ; preds = %.thread51, %bb.b
  store i32 0, ptr @memory_corruption_check, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %.thread54

.thread54:                                        ; preds = %.thread51, %bb.c
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.h, %.thread51 ]
  store i64 0, ptr %i.a, align 8, !annotation !10
  store i64 0, ptr %i.b, align 8, !annotation !10
  %i.k = add i32 %i.j, 4095
  %0 = and i32 %i.k, -4096
  store i32 %0, ptr @corruption_check_size, align 4
  store i64 0, ptr %i.c, align 8
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef -1, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #9
  %i.l = load i64, ptr %i.c, align 8
  %.not3045 = icmp eq i64 %i.l, -1
  br i1 %.not3045, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread54, %bb.e
  %i.m = load i32, ptr @corruption_check_size, align 4
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = load i64, ptr %i.a, align 8
  %i.p = add i64 %i.o, 4095
  %1 = and i64 %i.p, -4096                        ; 2 uses
  %i.q = icmp ult i64 %1, %i.n
  %2 = call i64 @llvm.umax.i64(i64 %1, i64 4096)
  %i.r = select i1 %i.q, i64 %2, i64 %i.n         ; 4 uses
  store i64 %i.r, ptr %i.a, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = and i64 %i.s, -4096                      ; 2 uses
  %.not32 = icmp ult i64 %i.t, %i.n
  %i.u = call i64 @llvm.umax.i64(i64 %i.t, i64 4096)
  %i.v = select i1 %.not32, i64 %i.u, i64 %i.n    ; 3 uses
  store i64 %i.v, ptr %i.b, align 8
  %.not33 = icmp ult i64 %i.r, %i.v
  br i1 %.not33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.w = sub nuw nsw i64 %i.v, %i.r
  %i.x = call i32 @__memblock_reserve(i64 noundef range(i64 0, 4294967295) %i.r, i64 noundef range(i64 -4294967294, 4294967296) %i.w, i32 noundef -1, i32 noundef 0) #9 ; 0 uses
  %i.y = load i64, ptr %i.a, align 8              ; 3 uses
  %i.z = load i32, ptr @num_scan_areas, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [16 x i8], ptr @scan_areas, i64 %i.aa ; 2 uses
  store i64 %i.y, ptr %i.ab, align 16
  %i.ac = load i64, ptr %i.b, align 8
  %i.ad = sub i64 %i.ac, %i.y                     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = load i64, ptr @page_offset_base, align 8
  %i.ag = add i64 %i.af, %i.y
  %i.ah = inttoptr i64 %i.ag to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 0, i64 %i.ad, i1 false)
  %i.ai = load i32, ptr @num_scan_areas, align 4
  %i.aj = add i32 %i.ai, 1                        ; 3 uses
  store i32 %i.aj, ptr @num_scan_areas, align 4
  %i.ak = icmp sgt i32 %i.aj, 7
  br i1 %i.ak, label %.thread43, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  call void @__next_mem_range(ptr noundef nonnull %i.c, i32 noundef -1, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #9
  %i.al = load i64, ptr %i.c, align 8
  %.not30 = icmp eq i64 %i.al, -1
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.e, %.thread54
  %.pr42 = load i32, ptr @num_scan_areas, align 4 ; 2 uses
  %.not34 = icmp eq i32 %.pr42, 0
  br i1 %.not34, label %bb.f, label %.thread43

.thread43:                                        ; preds = %bb.d, %._crit_edge
  %i.am = phi i32 [ %.pr42, %._crit_edge ], [ %i.aj, %bb.d ]
  %i.an = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %i.am) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread, %._crit_edge, %.thread43, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @start_periodic_check_for_corruption() #5 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @num_scan_areas, align 4
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i32, ptr @memory_corruption_check, align 4
  %i.d = icmp eq i32 %i.c, 0
  %or.cond.not5 = select i1 %i.b, i1 true, i1 %i.d
  %i.e = load i32, ptr @corruption_check_period, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond3 = select i1 %or.cond.not5, i1 true, i1 %i.f
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.e) #8 ; 0 uses
  %i.h = load ptr, ptr @system_percpu_wq, align 8
  %i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.h, ptr noundef nonnull @bios_check_work, i64 noundef 0) #9, !inline_history !13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__memblock_reserve(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_corruption(ptr nofree readnone captures(none) %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @memory_corruption_check, align 4
  %.not.i = icmp ne i32 %i.a, 0
  %i.b = load i32, ptr @num_scan_areas, align 4   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %or.cond.i = select i1 %.not.i, i1 %i.c, i1 false
  br i1 %or.cond.i, label %.lr.ph30.i, label %check_for_bios_corruption.exit

.lr.ph30.i:                                       ; preds = %bb.a, %._crit_edge.i
  %i.d = phi i32 [ %i.x, %._crit_edge.i ], [ %i.b, %bb.a ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.01828.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr [16 x i8], ptr @scan_areas, i64 %indvars.iv.i ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not2224.i = icmp eq i64 %i.g, 0
  br i1 %.not2224.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph30.i
  %i.h = load i64, ptr @page_offset_base, align 8
  %i.i = load i64, ptr %i.e, align 16
  %i.j = add i64 %i.i, %i.h
  %i.k = inttoptr i64 %i.j to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.127.i = phi i32 [ %.2.i, %bb.c ], [ %.01828.i, %.lr.ph.preheader.i ]
  %.01926.i = phi ptr [ %i.v, %bb.c ], [ %i.k, %.lr.ph.preheader.i ] ; 6 uses
  %.02025.i = phi i64 [ %i.w, %bb.c ], [ %i.g, %.lr.ph.preheader.i ]
  %i.l = load i64, ptr %.01926.i, align 8         ; 2 uses
  %.not23.i = icmp eq i64 %i.l, 0
  br i1 %.not23.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = ptrtoint ptr %.01926.i to i64
  %i.n = add i64 %i.m, 2147483648
  %i.o = icmp ugt ptr %.01926.i, inttoptr (i64 -2147483649 to ptr)
  %i.p = load i64, ptr @phys_base, align 8
  %i.q = load i64, ptr @page_offset_base, align 8
  %i.r = sub i64 -2147483648, %i.q
  %i.s = select i1 %i.o, i64 %i.p, i64 %i.r
  %i.t = add i64 %i.n, %i.s
  %i.u = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %.01926.i, i64 noundef %i.t, i64 noundef %i.l) #8 ; 0 uses
  store i64 0, ptr %.01926.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.2.i = phi i32 [ 1, %bb.b ], [ %.127.i, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr i8, ptr %.01926.i, i64 8
  %i.w = add i64 %.02025.i, -8                    ; 2 uses
  %.not22.i = icmp eq i64 %i.w, 0
  br i1 %.not22.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load i32, ptr @num_scan_areas, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph30.i
  %i.x = phi i32 [ %i.d, %.lr.ph30.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.01828.i, %.lr.ph30.i ], [ %.2.i, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %.lr.ph30.i, label %._crit_edge31.i, !llvm.loop !15

._crit_edge31.i:                                  ; preds = %._crit_edge.i
  %i.aa = icmp eq i32 %.1.lcssa.i, 0
  br i1 %i.aa, label %check_for_bios_corruption.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %._crit_edge31.i
  %i.ab = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 161, i32 2323, i64 16) #7, !srcloc !17
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ab) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18
  br label %check_for_bios_corruption.exit

check_for_bios_corruption.exit:                   ; preds = %bb.a, %._crit_edge31.i, %bb.d
  %i.ac = load i32, ptr @corruption_check_period, align 4
  %i.ad = mul i32 %i.ac, 1000
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call i64 @round_jiffies_relative(i64 noundef %i.ae) #9
  %i.ag = load ptr, ptr @system_percpu_wq, align 8
  %i.ah = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.ag, ptr noundef nonnull @bios_check_work, i64 noundef %i.af) #9, !inline_history !13 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @round_jiffies_relative(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2
end_hunk_0
