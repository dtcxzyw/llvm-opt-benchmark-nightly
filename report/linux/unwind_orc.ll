Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/unwind_orc?download=true
inline.NumInlined: 43
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unwind_get_return_address: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad unwind_get_return_address ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unwind_next_frame: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad unwind_next_frame ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___unwind_start: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __unwind_start ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.orc_entry = type { i16, i16, i16 }
%struct.stack_info = type { i32, ptr, ptr, ptr }

@orc_header = internal constant [20 x i8] c"\13|6\ADv'\C4\DDU\93!v\BB\0E\CD\BDPA\FC\82", section ".orc_header", align 4
@__setup_str_unwind_debug_cmdline = internal constant [13 x i8] c"unwind_debug\00", section ".init.rodata", align 1
@__setup_unwind_debug_cmdline = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_unwind_debug_cmdline, ptr @unwind_debug_cmdline, i32 1, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"arch/x86/kernel/unwind_orc.c\00", align 1
@sort_mutex = internal global %struct.mutex zeroinitializer, align 8
@cur_orc_ip_table = internal unnamed_addr global ptr @__start_orc_unwind_ip, align 8
@cur_orc_table = internal unnamed_addr global ptr @__start_orc_unwind, align 8
@__stop_orc_unwind_ip = external dso_local global [0 x i32], align 4
@__start_orc_unwind_ip = external dso_local global [0 x i32], align 4
@__stop_orc_unwind = external dso_local global [0 x %struct.orc_entry], align 1
@__start_orc_unwind = external dso_local global [0 x %struct.orc_entry], align 1
@unwind_init.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"\014WARNING: WARNING: Bad or missing .orc_unwind table.  Disabling unwinder.\0A\00", align 1
@orc_lookup_end = external dso_local global [0 x i32], align 4
@orc_lookup = external dso_local global [0 x i32], align 4
@lookup_num_blocks = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@_stext = external dso_local global [0 x i8], align 1
@unwind_init.__already_done.3 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"\014WARNING: WARNING: Corrupt .orc_unwind table.  Disabling unwinder.\0A\00", align 1
@_etext = external dso_local global [0 x i8], align 1
@unwind_init.__already_done.5 = internal unnamed_addr global i1 false, section ".data..once", align 1
@orc_init = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@__UNIQUE_ID_addressable_unwind_get_return_address_627 = internal global ptr @unwind_get_return_address, section ".discard.addressable", align 8
@unwind_next_frame.dumped_before = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\014WARNING: missing AX value at %pB\0A\00", align 1
@unwind_debug = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@unwind_next_frame.dumped_before.7 = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done.8 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\014WARNING: missing DX value at %pB\0A\00", align 1
@unwind_next_frame.dumped_before.10 = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done.11 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\014WARNING: missing RDI value at %pB\0A\00", align 1
@unwind_next_frame.dumped_before.13 = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done.14 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"\014WARNING: missing R10 value at %pB\0A\00", align 1
@unwind_next_frame.dumped_before.16 = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done.17 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\014WARNING: missing R13 value at %pB\0A\00", align 1
@unwind_next_frame.__already_done.19 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\014WARNING: unknown SP base reg %d at %pB\0A\00", align 1
@unwind_next_frame.dumped_before.21 = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done.22 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"\014WARNING: can't access registers at %pB\0A\00", align 1
@unwind_next_frame.dumped_before.24 = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done.25 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"\014WARNING: can't access iret registers at %pB\0A\00", align 1
@unwind_next_frame.__already_done.27 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"\014WARNING: unknown .orc_unwind entry type %d at %pB\0A\00", align 1
@unwind_next_frame.__already_done.29 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"\014WARNING: unknown BP base reg %d for ip %pB\0A\00", align 1
@unwind_next_frame.dumped_before.31 = internal unnamed_addr global i1 false, align 1
@unwind_next_frame.__already_done.32 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"\014WARNING: stack going in the wrong direction? at %pB\0A\00", align 1
@__UNIQUE_ID_addressable_unwind_next_frame_637 = internal global ptr @unwind_next_frame, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable___unwind_start_640 = internal global ptr @__unwind_start, section ".discard.addressable", align 8
@orc_find.orc = internal unnamed_addr global ptr null, align 8
@orc_find.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.34 = private unnamed_addr constant [58 x i8] c"\014WARNING: WARNING: bad lookup idx: idx=%u num=%u ip=%pB\0A\00", align 1
@orc_find.__already_done.35 = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.36 = private unnamed_addr constant [77 x i8] c"\014WARNING: WARNING: bad lookup value: idx=%u num=%u start=%u stop=%u ip=%pB\0A\00", align 1
@null_orc_entry = internal unnamed_addr constant { i16, i16, i8, i8 } { i16 8, i16 0, i8 3, i8 2 }, align 1
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@orc_fp_entry = internal unnamed_addr constant { i16, i16, i8, i8 } { i16 16, i16 -16, i8 -124, i8 2 }, align 1
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@unwind_dump.dumped_before = internal unnamed_addr global i1 false, align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"unwind stack type:%d next_sp:%p mask:0x%lx graph_idx:%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"%0*lx: %0*lx (%pB)\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_addressable___unwind_start_640, ptr @__UNIQUE_ID_addressable_unwind_get_return_address_627, ptr @__UNIQUE_ID_addressable_unwind_next_frame_637, ptr @__setup_unwind_debug_cmdline, ptr @orc_header], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @unwind_debug_cmdline(ptr nofree readnone captures(none) %0) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i1 true, ptr @unwind_debug, align 1
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @unwind_module_init(ptr nofree noundef writeonly captures(none) initializes((824, 828), (832, 848)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 2 uses
  %i.b = and i64 %2, 3
  %i.c = urem i64 %4, 6
  %i.d = or i64 %i.c, %i.b
  %or.cond = icmp eq i64 %i.d, 0
  %i.e = and i64 %i.a, 4294967295                 ; 2 uses
  %i.f = udiv i64 %4, 6
  %.not = icmp eq i64 %i.e, %i.f
  %or.cond21 = and i1 %or.cond, %.not
  br i1 %or.cond21, label %bb.b, label %.critedge, !prof !14

.critedge:                                        ; preds = %bb.a
  tail call void asm sideeffect "625: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 625b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 625) #11, !srcloc !15
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 314, i32 2307, i64 16) #11, !srcloc !16
  tail call void asm sideeffect "626: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 626b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 626) #11, !srcloc !17
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %i.g = trunc i64 %i.a to i32
  tail call void @mutex_lock(ptr noundef nonnull @sort_mutex) #12
  store ptr %1, ptr @cur_orc_ip_table, align 8
  store ptr %3, ptr @cur_orc_table, align 8
  tail call void @sort(ptr noundef %1, i64 noundef %i.e, i64 noundef 4, ptr noundef nonnull @orc_sort_cmp, ptr noundef nonnull @orc_sort_swap) #12
  tail call void @mutex_unlock(ptr noundef nonnull @sort_mutex) #12
  %i.h = getelementptr i8, ptr %0, i64 824
  %i.i = getelementptr i8, ptr %0, i64 832
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 840
  store ptr %3, ptr %i.j, align 8
  store i32 %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal range(i32 -1, 2) i32 @orc_sort_cmp(ptr noundef %0, ptr noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = load i32, ptr %0, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = add i64 %i.c, %i.a                       ; 2 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = load i32, ptr %1, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.d, %i.h
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @cur_orc_table, align 8
  %i.l = load ptr, ptr @cur_orc_ip_table, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.a, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = getelementptr [6 x i8], ptr %i.k, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = and i16 %i.r, 1792
  %i.t = icmp eq i16 %i.s, 0
  %i.u = select i1 %i.t, i32 -1, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.u, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal void @orc_sort_swap(ptr noundef %0, ptr noundef %1, i32 %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = load i32, ptr %0, align 4
  %i.f = load i32, ptr %1, align 4
  %i.g = add i32 %i.f, %i.d
  store i32 %i.g, ptr %0, align 4
  %i.h = sub i32 %i.e, %i.d
  store i32 %i.h, ptr %1, align 4
  %i.i = load ptr, ptr @cur_orc_table, align 8    ; 2 uses
  %i.j = load ptr, ptr @cur_orc_ip_table, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.b, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = getelementptr [6 x i8], ptr %i.i, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.a, %i.k
  %i.p = ashr exact i64 %i.o, 2
  %i.q = getelementptr [6 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload = load <3 x i16>, ptr %i.n, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.n, ptr noundef align 1 dereferenceable(6) %i.q, i64 6, i1 false)
  store <3 x i16> %.sroa.0.0.copyload, ptr %i.q, align 1
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @unwind_init() local_unnamed_addr #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = lshr exact i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind_ip to i64), i64 ptrtoint (ptr @__start_orc_unwind_ip to i64)), 2 ; 3 uses
  %.not = icmp ne i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind_ip to i64), i64 ptrtoint (ptr @__start_orc_unwind_ip to i64)), 0
  %i.b = urem i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind to i64), i64 ptrtoint (ptr @__start_orc_unwind to i64)), 6
  %.not38 = icmp eq i64 %i.b, 0
  %or.cond = and i1 %.not, %.not38
  %i.c = udiv i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind to i64), i64 ptrtoint (ptr @__start_orc_unwind to i64)), 6
  %.not39 = icmp eq i64 %i.a, %i.c
  %or.cond42 = select i1 %or.cond, i1 %.not39, i1 false
  br i1 %or.cond42, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @unwind_init.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @unwind_init.__already_done, align 1
  %i.d = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.2) #13 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 sub (i64 ptrtoint (ptr @orc_lookup_end to i64), i64 ptrtoint (ptr @orc_lookup to i64)), 2
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  store i32 %i.f, ptr @lookup_num_blocks, align 4
  %i.g = add i32 %i.f, -1                         ; 3 uses
  %.not70 = icmp eq i32 %i.g, 0
  %.pre = and i64 sub (i64 ptrtoint (ptr @__stop_orc_unwind_ip to i64), i64 ptrtoint (ptr @__start_orc_unwind_ip to i64)), 17179869180
  %i.h = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.i = and i64 %i.a, 4294967295
  %i.j = getelementptr [4 x i8], ptr @__start_orc_unwind_ip, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4       ; 2 uses
  %.not2325.i = icmp ult ptr %i.k, @__start_orc_unwind_ip
  br i1 %i.h, label %__orc_find.exit.thread.split, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.f
  %.03069 = phi i32 [ %i.aj, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %i.l = shl i32 %.03069, 8
  %i.m = sext i32 %i.l to i64
  %i.n = add i64 %i.m, ptrtoint (ptr @_stext to i64)
  br i1 %.not2325.i, label %__orc_find.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.028.i = phi ptr [ %.1.i, %.lr.ph.i ], [ @__start_orc_unwind_ip, %.preheader.i ]
  %.01827.i = phi ptr [ %.119.i, %.lr.ph.i ], [ %i.k, %.preheader.i ] ; 2 uses
  %.02026.i = phi ptr [ %.121.i, %.lr.ph.i ], [ @__start_orc_unwind_ip, %.preheader.i ] ; 3 uses
  %i.o = ptrtoint ptr %.01827.i to i64
  %i.p = ptrtoint ptr %.02026.i to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = sdiv i64 %i.r, 2
  %i.t = getelementptr [4 x i8], ptr %.02026.i, i64 %i.s ; 5 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = load i32, ptr %i.t, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = add i64 %i.u, %i.w
  %.not24.i = icmp ugt i64 %i.x, %i.n             ; 3 uses
  %i.y = getelementptr i8, ptr %i.t, i64 4
  %i.z = getelementptr i8, ptr %i.t, i64 -4
  %.121.i = select i1 %.not24.i, ptr %.02026.i, ptr %i.y ; 2 uses
  %.119.i = select i1 %.not24.i, ptr %i.z, ptr %.01827.i ; 2 uses
  %.1.i = select i1 %.not24.i, ptr %.028.i, ptr %i.t ; 2 uses
  %.not23.i = icmp ugt ptr %.121.i, %.119.i
  br i1 %.not23.i, label %__orc_find.exit, label %.lr.ph.i, !llvm.loop !0

__orc_find.exit:                                  ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi ptr [ @__start_orc_unwind_ip, %.preheader.i ], [ %.1.i, %.lr.ph.i ]
  %i.aa = ptrtoint ptr %.0.lcssa.i to i64
  %i.ab = sub i64 %i.aa, ptrtoint (ptr @__start_orc_unwind_ip to i64)
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = getelementptr [6 x i8], ptr @__start_orc_unwind, i64 %i.ac
  %.not41 = icmp eq ptr %i.ad, null
  br i1 %.not41, label %__orc_find.exit.thread.split, label %bb.f

__orc_find.exit.thread.split:                     ; preds = %__orc_find.exit, %.lr.ph
  %.b36 = load i1, ptr @unwind_init.__already_done.3, align 1
  br i1 %.b36, label %.critedge, label %bb.e, !prof !11

bb.e:                                             ; preds = %__orc_find.exit.thread.split
  store i1 true, ptr @unwind_init.__already_done.3, align 1
  %i.ae = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.4) #13 ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %__orc_find.exit
  %.idx67 = mul i64 %i.ac, 6
  %i.af = sdiv exact i64 %.idx67, 6
  %i.ag = trunc i64 %i.af to i32
  %i.ah = sext i32 %.03069 to i64
  %i.ai = getelementptr [4 x i8], ptr @orc_lookup, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = add nuw i32 %.03069, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, %i.g
end_hunk_0
