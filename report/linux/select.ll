Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/select?download=true
inline.NumInlined: 155
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_poll_initwait: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad poll_initwait ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_poll_freewait: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad poll_freewait ; .previous"

%struct.static_call_key = type { ptr, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.24 }
%struct.atomic_t = type { i32 }
%union.anon.24 = type { i64 }
%struct.timespec64 = type { i64, i64 }
%struct.fd_set_bits = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.poll_wqueues = type { %struct.poll_table_struct, ptr, ptr, i32, i32, i32, [9 x %struct.poll_table_entry] }
%struct.poll_table_struct = type { ptr, i32 }
%struct.poll_table_entry = type { ptr, i32, %struct.wait_queue_entry, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.__large_struct = type { [100 x i64] }
%struct.compat_sel_arg_struct = type { i32, i32, i32, i32, i32 }
%struct.old_timeval32 = type { i32, i32 }

@__UNIQUE_ID_addressable_poll_initwait_1110 = internal global ptr @poll_initwait, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_poll_freewait_1111 = internal global ptr @poll_freewait, section ".discard.addressable", align 8
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"file_ref_inc() on a released file reference\00", align 1
@file_ref_inc.__UNIQUE_ID_addressable___SCK__WARN_trap_391 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"include/linux/file_ref.h\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"include/linux/ucopysize.h\00", align 1
@sysctl_net_busy_poll = external dso_local global i32, section ".data..read_mostly", align 4
@_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_85 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@__tracepoint_sched_set_state_tp = external dso_local global %struct.tracepoint, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"include/linux/sched/signal.h\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable_poll_freewait_1111, ptr @__UNIQUE_ID_addressable_poll_initwait_1110, ptr @_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_85, ptr @file_ref_inc.__UNIQUE_ID_addressable___SCK__WARN_trap_391], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @select_estimate_accuracy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.timespec64, align 8         ; 6 uses
  %2 = alloca %struct.timespec64, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !11
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !12
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 2840
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ktime_get_ts64(ptr noundef nonnull %2) #13
  %i.f = load i64, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !11
  %i.l = sub i64 %i.f, %i.i
  %i.m = sub i64 %i.h, %i.k
  call void @set_normalized_timespec64(ptr noundef nonnull %1, i64 noundef %i.l, i64 noundef %i.m) #13
  %.fca.0.load.i = load i64, ptr %1, align 8      ; 3 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.n = icmp slt i64 %.fca.0.load.i, 0
  br i1 %i.n, label %__estimate_accuracy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.b, i64 108
  %.val.i = load i32, ptr %i.o, align 4
  %i.p = add i32 %.val.i, -120
  %i.q = icmp sgt i32 %i.p, 0                     ; 3 uses
  %spec.select.i = select i1 %i.q, i64 20, i64 100
  %i.r = icmp samesign ugt i64 %.fca.0.load.i, %spec.select.i
  br i1 %i.r, label %__estimate_accuracy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.zext.i = select i1 %i.q, i64 5000000, i64 1000000
  %3 = sdiv i64 %.fca.1.load.i, 200
  %i.s = sdiv i64 %.fca.1.load.i, 1000
  %4 = select i1 %i.q, i64 %3, i64 %i.s
  %i.t = mul nuw nsw i64 %.zext.i, %.fca.0.load.i
  %i.u = add nsw i64 %i.t, %4
  %..i = call i64 @llvm.smin.i64(i64 %i.u, i64 100000000)
  br label %__estimate_accuracy.exit

__estimate_accuracy.exit:                         ; preds = %bb.b, %bb.c, %bb.d
  %.011.i = phi i64 [ 100000000, %bb.c ], [ 0, %bb.b ], [ %..i, %bb.d ]
  %. = call i64 @llvm.umax.i64(i64 %.011.i, i64 %i.d)
  br label %bb.e

bb.e:                                             ; preds = %__estimate_accuracy.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %., %__estimate_accuracy.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: write)
define dso_local void @poll_initwait(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 44)) %0) #4 align 16 prefalign(16) {
bb.a:
  store ptr @__pollwait, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 -1, ptr %i.a, align 8
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !12
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 36
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 40
  store i32 0, ptr %i.h, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__pollwait(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %2, i64 40         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ult i32 %i.d, 9
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr i8, ptr %2, i64 48
  %i.h = add nuw nsw i32 %i.d, 1
  store i32 %i.h, ptr %i.c, align 8
  %i.i = getelementptr [64 x i8], ptr %i.g, i64 %i.f
  br label %poll_get_entry.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 64
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = add i64 %i.n, 4096
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.r = tail call noalias align 8 dereferenceable_or_null(4096) ptr @__kmalloc_cache_noprof(ptr noundef %i.q, i32 noundef 3264, i64 noundef 4096) #14 ; 6 uses
  %.not26.not.i = icmp eq ptr %i.r, null
  br i1 %.not26.not.i, label %poll_get_entry.exit.thread, label %bb.f

poll_get_entry.exit.thread:                       ; preds = %bb.e
  %i.s = getelementptr i8, ptr %2, i64 36
  store i32 -12, ptr %i.s, align 4
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store ptr %i.b, ptr %i.r, align 8
  store ptr %i.r, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.v = phi ptr [ %i.t, %bb.f ], [ %i.k, %bb.d ] ; 2 uses
  %.122.i = phi ptr [ %i.r, %bb.f ], [ %i.b, %bb.d ]
  %i.w = getelementptr i8, ptr %.122.i, i64 8
  %i.x = getelementptr i8, ptr %i.v, i64 64
  store ptr %i.x, ptr %i.w, align 8
  br label %poll_get_entry.exit

poll_get_entry.exit:                              ; preds = %bb.b, %bb.g
  %.1.i = phi ptr [ %i.i, %bb.b ], [ %i.v, %bb.g ] ; 7 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %poll_get_entry.exit
  %i.y = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.z = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, i64 1, ptr elementtype(i64) %i.y) #11, !srcloc !13
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %get_file.exit, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 121, i32 2323, i64 16) #11, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ab) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !16
  br label %get_file.exit

get_file.exit:                                    ; preds = %bb.h, %bb.i
  store ptr %0, ptr %.1.i, align 8
  %i.ac = getelementptr i8, ptr %.1.i, i64 56
  store ptr %1, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %.1.i, i64 8
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %.1.i, i64 16     ; 2 uses
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %.1.i, i64 24
  %i.ai = getelementptr i8, ptr %.1.i, i64 32
  store ptr @pollwake, ptr %i.ai, align 8
  store ptr %2, ptr %i.ah, align 8
  tail call void @add_wait_queue(ptr noundef %1, ptr noundef %i.ag) #13
  br label %bb.j

bb.j:                                             ; preds = %poll_get_entry.exit.thread, %poll_get_entry.exit, %get_file.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @poll_freewait(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 48
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr [64 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.g, i64 16
  tail call void @remove_wait_queue(ptr noundef %i.i, ptr noundef %i.j) #13
  %i.k = load ptr, ptr %i.g, align 8
  tail call void @fput(ptr noundef %i.k) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.c, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %.preheader, !llvm.loop !17

.lr.ph19:                                         ; preds = %.preheader, %bb.d
  %.01518 = phi ptr [ %i.x, %bb.d ], [ %i.b, %.preheader ] ; 4 uses
  %i.o = getelementptr i8, ptr %.01518, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %.01518, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph19
  %.0 = phi ptr [ %i.p, %.lr.ph19 ], [ %i.r, %bb.c ] ; 3 uses
  %i.r = getelementptr i8, ptr %.0, i64 -64       ; 3 uses
  %i.s = getelementptr i8, ptr %.0, i64 -8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %.0, i64 -48
  tail call void @remove_wait_queue(ptr noundef %i.t, ptr noundef %i.u) #13
  %i.v = load ptr, ptr %i.r, align 8
  tail call void @fput(ptr noundef %i.v) #13
  %i.w = icmp ugt ptr %i.r, %i.q
  br i1 %i.w, label %bb.c, label %bb.d, !llvm.loop !19

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@do_select:bb.a
  %i.g = inttoptr i64 %i.f to ptr                 ; 8 uses
  %i.h = getelementptr i8, ptr %i.g, i64 2064
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %i.k = load volatile ptr, ptr %i.j, align 32
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.e ; 4 uses
  %i.o = and i32 %0, 63
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i64 %i.d, 63
  %i.q = shl nsw i64 -1, %i.p
  %i.r = xor i64 %i.q, -1
  %i.s = load ptr, ptr %1, align 8
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.e
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %i.e
  %i.y = load i64, ptr %i.x, align 8
  %i.z = or i64 %i.y, %i.u
  %i.aa = getelementptr i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.e
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = or i64 %i.z, %i.ad
  %i.af = and i64 %i.ae, %i.r                     ; 3 uses
  %.not47.i = icmp eq i64 %i.af, 0
  br i1 %.not47.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load i64, ptr %i.n, align 8
  %i.ah = xor i64 %i.ag, -1
  %i.ai = and i64 %i.af, %i.ah
  %.not48.i = icmp eq i64 %i.ai, 0
  br i1 %.not48.i, label %.loopexit54.i, label %max_select_fd.exit.thread

.preheader.i:                                     ; preds = %bb.a, %bb.b, %bb.g
  %.042.ph.i = phi i32 [ %i.br, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.038.ph.i = phi ptr [ %.139.i, %bb.g ], [ %i.n, %bb.b ], [ %i.n, %bb.a ] ; 2 uses
  %.037.ph.i = phi i64 [ %.1.i, %bb.g ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %.042.ph.fr.i = freeze i32 %.042.ph.i           ; 4 uses
  %.not5058.i = icmp eq i64 %.037.ph.i, 0
  br i1 %.not5058.i, label %max_select_fd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aj = load ptr, ptr %1, align 8               ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not53.i = icmp eq i32 %.042.ph.fr.i, 0
  br i1 %.not53.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.backedge.us.i
  %.03760.us.i = phi i64 [ %i.ap, %.backedge.us.i ], [ %.037.ph.i, %.lr.ph.i ]
  %.03859.us.i = phi ptr [ %i.ao, %.backedge.us.i ], [ %.038.ph.i, %.lr.ph.i ]
  %i.ao = getelementptr i8, ptr %.03859.us.i, i64 -8 ; 3 uses
  %i.ap = add nsw i64 %.03760.us.i, -1            ; 6 uses
  %i.aq = getelementptr [8 x i8], ptr %i.aj, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr [8 x i8], ptr %i.al, i64 %i.ap
  %i.at = load i64, ptr %i.as, align 8
  %i.au = or i64 %i.at, %i.ar
  %i.av = getelementptr [8 x i8], ptr %i.an, i64 %i.ap
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = or i64 %i.au, %i.aw                     ; 3 uses
  %.not51.us.i = icmp eq i64 %i.ax, 0
  br i1 %.not51.us.i, label %.backedge.us.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.ay = load i64, ptr %i.ao, align 8
  %i.az = xor i64 %i.ay, -1
  %i.ba = and i64 %i.ax, %i.az
  %.not52.us.i = icmp eq i64 %i.ba, 0
  br i1 %.not52.us.i, label %.loopexit54.i, label %max_select_fd.exit.thread

.backedge.us.i:                                   ; preds = %.lr.ph.split.us.i
  %.not50.us.i = icmp eq i64 %i.ap, 0
  br i1 %.not50.us.i, label %max_select_fd.exit.thread179, label %.lr.ph.split.us.i, !llvm.loop !29

max_select_fd.exit.thread179:                     ; preds = %.backedge.us.i
  tail call void @__rcu_read_unlock() #13
  br label %bb.h

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %.03760.i = phi i64 [ %i.bc, %.backedge.i ], [ %.037.ph.i, %.lr.ph.i ]
  %.03859.i = phi ptr [ %i.bb, %.backedge.i ], [ %.038.ph.i, %.lr.ph.i ]
  %i.bb = getelementptr i8, ptr %.03859.i, i64 -8 ; 2 uses
  %i.bc = add nsw i64 %.03760.i, -1               ; 5 uses
  %i.bd = getelementptr [8 x i8], ptr %i.aj, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr [8 x i8], ptr %i.al, i64 %i.bc
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = getelementptr [8 x i8], ptr %i.an, i64 %i.bc
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = or i64 %i.bh, %i.bj                     ; 2 uses
  %.not51.i = icmp eq i64 %i.bk, 0
  br i1 %.not51.i, label %.backedge.i, label %bb.e

.backedge.i:                                      ; preds = %bb.e, %.lr.ph.split.i
  %.not50.i = icmp eq i64 %i.bc, 0
  br i1 %.not50.i, label %max_select_fd.exit, label %.lr.ph.split.i, !llvm.loop !29

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.bl = load i64, ptr %i.bb, align 8
  %i.bm = xor i64 %i.bl, -1
  %i.bn = and i64 %i.bk, %i.bm
  %.not52.i = icmp eq i64 %i.bn, 0
  br i1 %.not52.i, label %.backedge.i, label %max_select_fd.exit.thread

.loopexit54.i:                                    ; preds = %bb.d, %bb.c
  %.040.i = phi i64 [ %i.af, %bb.c ], [ %i.ax, %bb.d ]
  %.139.i = phi ptr [ %i.n, %bb.c ], [ %i.ao, %bb.d ]
  %.1.i = phi i64 [ %i.e, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.loopexit54.i
  %.2.i = phi i32 [ 0, %.loopexit54.i ], [ %i.bo, %bb.f ]
  %.141.i = phi i64 [ %.040.i, %.loopexit54.i ], [ %i.bp, %bb.f ]
  %i.bo = add nuw nsw i32 %.2.i, 1                ; 2 uses
  %i.bp = lshr i64 %.141.i, 1                     ; 2 uses
  %.not49.i = icmp eq i64 %i.bp, 0
  br i1 %.not49.i, label %bb.g, label %bb.f, !llvm.loop !30

bb.g:                                             ; preds = %bb.f
  %.1.tr.i = trunc i64 %.1.i to i32
  %i.bq = shl i32 %.1.tr.i, 6
  %i.br = add i32 %i.bo, %i.bq
  br label %.preheader.i, !llvm.loop !29

max_select_fd.exit.thread:                        ; preds = %bb.e, %bb.c, %bb.d
  tail call void @__rcu_read_unlock() #13
  br label %bb.ar

max_select_fd.exit:                               ; preds = %.backedge.i, %.preheader.i
  tail call void @__rcu_read_unlock() #13
  %i.bs = icmp slt i32 %.042.ph.fr.i, 0
  br i1 %i.bs, label %bb.ar, label %bb.h

bb.h:                                             ; preds = %max_select_fd.exit.thread179, %max_select_fd.exit
  %.0.i181 = phi i32 [ 0, %max_select_fd.exit.thread179 ], [ %.042.ph.fr.i, %max_select_fd.exit ] ; 4 uses
  store ptr @__pollwait, ptr %5, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 -1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.g, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store i32 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.by, align 8
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i64, ptr %2, align 8
  %.not145 = icmp eq i64 %i.bz, 0
  br i1 %.not145, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr i8, ptr %2, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  %.not146 = icmp eq i64 %i.cb, 0
  br i1 %.not146, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %5, align 8
  br label %.thread

bb.l:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !11
  %i.cc = getelementptr i8, ptr %i.g, i64 2840
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %select_estimate_accuracy.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ktime_get_ts64(ptr noundef nonnull %4) #13
  %i.cf = load i64, ptr %2, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load i64, ptr %4, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !11
  %i.cl = sub i64 %i.cf, %i.ci
  %i.cm = sub i64 %i.ch, %i.ck
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %i.cl, i64 noundef %i.cm) #13
  %.fca.0.load.i.i = load i64, ptr %3, align 8    ; 3 uses
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cn = icmp slt i64 %.fca.0.load.i.i, 0
  br i1 %i.cn, label %__estimate_accuracy.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = getelementptr i8, ptr %i.g, i64 108
  %.val.i.i = load i32, ptr %i.co, align 4
  %i.cp = add i32 %.val.i.i, -120
  %i.cq = icmp sgt i32 %i.cp, 0                   ; 3 uses
  %spec.select.i.i = select i1 %i.cq, i64 20, i64 100
  %i.cr = icmp samesign ugt i64 %.fca.0.load.i.i, %spec.select.i.i
  br i1 %i.cr, label %__estimate_accuracy.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.zext.i.i = select i1 %i.cq, i64 5000000, i64 1000000
  %6 = sdiv i64 %.fca.1.load.i.i, 200
  %i.cs = sdiv i64 %.fca.1.load.i.i, 1000
  %7 = select i1 %i.cq, i64 %6, i64 %i.cs
  %i.ct = mul nuw nsw i64 %.zext.i.i, %.fca.0.load.i.i
  %i.cu = add nsw i64 %i.ct, %7
  %..i.i = call i64 @llvm.smin.i64(i64 %i.cu, i64 100000000)
  br label %__estimate_accuracy.exit.i

__estimate_accuracy.exit.i:                       ; preds = %bb.o, %bb.n, %bb.m
  %.011.i.i = phi i64 [ 100000000, %bb.n ], [ 0, %bb.m ], [ %..i.i, %bb.o ]
  %..i = call i64 @llvm.umax.i64(i64 %.011.i.i, i64 %i.cd)
  br label %select_estimate_accuracy.exit

select_estimate_accuracy.exit:                    ; preds = %bb.l, %__estimate_accuracy.exit.i
  %.0.i169 = phi i64 [ 0, %bb.l ], [ %..i, %__estimate_accuracy.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.h, %select_estimate_accuracy.exit
  %.0122184 = phi i32 [ 1, %bb.k ], [ 0, %select_estimate_accuracy.exit ], [ 0, %bb.h ]
  %.0121 = phi i64 [ 0, %bb.k ], [ %.0.i169, %select_estimate_accuracy.exit ], [ 0, %bb.h ]
  %i.cv = getelementptr i8, ptr %1, i64 8
  %i.cw = getelementptr i8, ptr %1, i64 16
  %i.cx = getelementptr i8, ptr %1, i64 24
  %i.cy = getelementptr i8, ptr %1, i64 32
  %i.cz = getelementptr i8, ptr %1, i64 40
  %.not237 = icmp eq i32 %.0.i181, 0
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = getelementptr i8, ptr %i.g, i64 24      ; 3 uses
  br label %.outer

.outer:                                           ; preds = %poll_schedule_timeout.exit, %.thread
  %.0135.ph = phi ptr [ %.1136, %poll_schedule_timeout.exit ], [ null, %.thread ] ; 2 uses
  %.1123.ph = phi i32 [ %.0.i177, %poll_schedule_timeout.exit ], [ %.0122184, %.thread ]
  %.0117.ph = phi i32 [ 0, %poll_schedule_timeout.exit ], [ %i.c, %.thread ]
  %.0115.ph = phi i64 [ %.0115.ph316, %poll_schedule_timeout.exit ], [ 0, %.thread ]
  %i.dc = icmp ne i32 %.1123.ph, 0
  br label %.outer313

.outer313:                                        ; preds = %.outer, %bb.aj
  %.1123.ph314 = phi i1 [ %i.dc, %.outer ], [ false, %bb.aj ]
  %.0117.ph315 = phi i32 [ %.0117.ph, %.outer ], [ %.1118.lcssa, %bb.aj ]
  %.0115.ph316 = phi i64 [ %.0115.ph, %.outer ], [ %i.fk, %bb.aj ] ; 3 uses
  %.not149 = icmp eq i64 %.0115.ph316, 0
  br label %bb.p

bb.p:                                             ; preds = %.outer313, %busy_loop_timeout.exit
  %.1123 = phi i1 [ false, %busy_loop_timeout.exit ], [ %.1123.ph314, %.outer313 ]
  %.0117 = phi i32 [ %.1118.lcssa, %busy_loop_timeout.exit ], [ %.0117.ph315, %.outer313 ] ; 2 uses
  br i1 %.not237, label %._crit_edge233, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %bb.p
  %i.dd = load ptr, ptr %i.cz, align 8
  %i.de = load ptr, ptr %i.cy, align 8
  %i.df = load ptr, ptr %i.cx, align 8
  %i.dg = load ptr, ptr %i.cw, align 8
  %i.dh = load ptr, ptr %i.cv, align 8
  %i.di = load ptr, ptr %1, align 8
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %bb.ae
  %.0105230 = phi i1 [ %.3, %bb.ae ], [ false, %.lr.ph232.preheader ] ; 3 uses
  %.0108229 = phi ptr [ %i.dn, %bb.ae ], [ %i.dg, %.lr.ph232.preheader ] ; 2 uses
  %.0109228 = phi ptr [ %i.dl, %bb.ae ], [ %i.dh, %.lr.ph232.preheader ] ; 2 uses
  %.0110227 = phi ptr [ %i.dj, %bb.ae ], [ %i.di, %.lr.ph232.preheader ] ; 2 uses
  %.0111226 = phi ptr [ %i.ez, %bb.ae ], [ %i.dd, %.lr.ph232.preheader ] ; 2 uses
  %.0112225 = phi ptr [ %i.ey, %bb.ae ], [ %i.de, %.lr.ph232.preheader ] ; 2 uses
  %.0113224 = phi ptr [ %i.ex, %bb.ae ], [ %i.df, %.lr.ph232.preheader ] ; 2 uses
  %.1118223 = phi i32 [ %.4, %bb.ae ], [ %.0117, %.lr.ph232.preheader ] ; 3 uses
  %.0126222 = phi i32 [ %.2128, %bb.ae ], [ 0, %.lr.ph232.preheader ] ; 4 uses
  %.1130221 = phi i32 [ %.7, %bb.ae ], [ 0, %.lr.ph232.preheader ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.0110227, i64 8
  %i.dk = load i64, ptr %.0110227, align 8        ; 2 uses
  %i.dl = getelementptr i8, ptr %.0109228, i64 8
  %i.dm = load i64, ptr %.0109228, align 8        ; 3 uses
  %i.dn = getelementptr i8, ptr %.0108229, i64 8
  %i.do = load i64, ptr %.0108229, align 8        ; 2 uses
  %i.dp = or i64 %i.dm, %i.dk
  %i.dq = or i64 %i.dp, %i.do                     ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.q, label %.preheader

.preheader:                                       ; preds = %.lr.ph232
  %.not151205 = icmp slt i32 %.0126222, %.0.i181
  br i1 %.not151205, label %.lr.ph, label %.thread288

bb.q:                                             ; preds = %.lr.ph232
  %i.ds = add i32 %.0126222, 64
  br label %bb.ae

.lr.ph:                                           ; preds = %.preheader, %bb.y
  %.096214 = phi i64 [ %.2, %bb.y ], [ 0, %.preheader ] ; 2 uses
  %.097213 = phi i64 [ %.299, %bb.y ], [ 0, %.preheader ] ; 2 uses
  %.0100212 = phi i64 [ %.2102, %bb.y ], [ 0, %.preheader ] ; 2 uses
  %.0103211 = phi i64 [ %i.es, %bb.y ], [ 0, %.preheader ] ; 2 uses
  %.0104210 = phi i64 [ %i.eu, %bb.y ], [ 1, %.preheader ] ; 9 uses
  %.1106209 = phi i1 [ %.2107, %bb.y ], [ %.0105230, %.preheader ] ; 2 uses
  %.2119208 = phi i32 [ %.3120, %bb.y ], [ %.1118223, %.preheader ] ; 4 uses
  %.1127207 = phi i32 [ %i.et, %bb.y ], [ %.0126222, %.preheader ] ; 2 uses
  %.2131206 = phi i32 [ %.6, %bb.y ], [ %.1130221, %.preheader ] ; 2 uses
  %i.dt = and i64 %.0104210, %i.dq
  %.not152 = icmp eq i64 %i.dt, 0
  br i1 %.not152, label %bb.y, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.du = call i64 @fdget(i32 noundef range(i32 -2147483648, 2147483647) %.1127207) #13 ; 3 uses
  %.not.i.i = icmp eq i64 %i.du, 0
  %.pre = and i64 %.0104210, %i.dk                ; 2 uses
  br i1 %.not.i.i, label %.select_poll_one.exit_crit_edge, label %bb.s

.select_poll_one.exit_crit_edge:                  ; preds = %bb.r
  %.pre245 = and i64 %.0104210, %i.dm
  br label %select_poll_one.exit

bb.s:                                             ; preds = %bb.r
  %.not.i170 = icmp eq i64 %.pre, 0
  %spec.select.v.i = select i1 %.not.i170, i32 34, i32 251
  %spec.select.i = or i32 %spec.select.v.i, %.2119208 ; 2 uses
  %i.dv = and i64 %.0104210, %i.dm                ; 3 uses
  %.not10.i = icmp eq i64 %i.dv, 0
  %i.dw = or i32 %spec.select.i, 812
  %spec.select17.i = select i1 %.not10.i, i32 %spec.select.i, i32 %i.dw
  store i32 %spec.select17.i, ptr %i.bt, align 8
  %i.dx = and i64 %i.du, -4
  %i.dy = inttoptr i64 %i.dx to ptr               ; 3 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not.i11.i = icmp eq ptr %i.ec, null
  br i1 %.not.i11.i, label %vfs_poll.exit.i, label %bb.t, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.ed = call i32 %i.ec(ptr noundef %i.dy, ptr noundef nonnull %5) #13, !inline_history !31
  br label %vfs_poll.exit.i

vfs_poll.exit.i:                                  ; preds = %bb.t, %bb.s
  %.0.i171 = phi i32 [ 325, %bb.s ], [ %i.ed, %bb.t ] ; 2 uses
  %i.ee = and i64 %i.du, 1
  %.not.i12.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i12.i, label %select_poll_one.exit, label %bb.u, !prof !32

bb.u:                                             ; preds = %vfs_poll.exit.i
  call void @fput(ptr noundef %i.dy) #13
  br label %select_poll_one.exit

select_poll_one.exit:                             ; preds = %.select_poll_one.exit_crit_edge, %vfs_poll.exit.i, %bb.u
  %.pre-phi246 = phi i64 [ %.pre245, %.select_poll_one.exit_crit_edge ], [ %i.dv, %vfs_poll.exit.i ], [ %i.dv, %bb.u ]
  %.016.i = phi i32 [ 32, %.select_poll_one.exit_crit_edge ], [ %.0.i171, %vfs_poll.exit.i ], [ %.0.i171, %bb.u ] ; 4 uses
  %i.ef = and i32 %.016.i, 249
  %.not153 = icmp ne i32 %i.ef, 0
  %.not154 = icmp ne i64 %.pre, 0
  %or.cond165.not = and i1 %.not153, %.not154     ; 3 uses
  %i.eg = zext i1 %or.cond165.not to i32
  %.3132 = add i32 %.2131206, %i.eg
  %i.eh = select i1 %or.cond165.not, i64 %.0104210, i64 0
  %.1101 = or i64 %i.eh, %.0100212                ; 2 uses
  %i.ei = and i32 %.016.i, 812
  %.not155 = icmp ne i32 %i.ei, 0
  %.not156 = icmp ne i64 %.pre-phi246, 0
  %or.cond166.not = and i1 %.not155, %.not156     ; 3 uses
  %i.ej = zext i1 %or.cond166.not to i32
  %.4133 = add i32 %.3132, %i.ej
  %i.ek = select i1 %or.cond166.not, i64 %.0104210, i64 0
  %.198 = or i64 %i.ek, %.097213                  ; 2 uses
  %i.el = or i1 %or.cond165.not, %or.cond166.not
  %i.em = and i32 %.016.i, 34
  %.not157 = icmp ne i32 %i.em, 0
  %i.en = and i64 %.0104210, %i.do
  %.not158 = icmp ne i64 %i.en, 0
  %or.cond167.not = and i1 %.not157, %.not158     ; 3 uses
  %i.eo = zext i1 %or.cond167.not to i32
  %.5134 = add i32 %.4133, %i.eo                  ; 2 uses
  %i.ep = select i1 %or.cond167.not, i64 %.0104210, i64 0
  %.1 = or i64 %i.ep, %.096214                    ; 2 uses
  %i.eq = or i1 %or.cond167.not, %i.el
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %select_poll_one.exit
  store ptr null, ptr %5, align 8
  br label %bb.w

bb.w:                                             ; preds = %select_poll_one.exit, %bb.v
  %.not159 = icmp eq i32 %.5134, 0
  br i1 %.not159, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.er = and i32 %.016.i, %.2119208
  %.not160 = icmp ne i32 %i.er, 0
  %spec.select = select i1 %.not160, i1 true, i1 %.1106209
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph
  %.6 = phi i32 [ %.2131206, %.lr.ph ], [ %.5134, %bb.w ], [ 0, %bb.x ] ; 3 uses
  %.3120 = phi i32 [ %.2119208, %.lr.ph ], [ 0, %bb.w ], [ %.2119208, %bb.x ] ; 3 uses
  %.2107 = phi i1 [ %.1106209, %.lr.ph ], [ false, %bb.w ], [ %spec.select, %bb.x ] ; 3 uses
  %.2102 = phi i64 [ %.0100212, %.lr.ph ], [ %.1101, %bb.w ], [ %.1101, %bb.x ] ; 3 uses
  %.299 = phi i64 [ %.097213, %.lr.ph ], [ %.198, %bb.w ], [ %.198, %bb.x ] ; 3 uses
  %.2 = phi i64 [ %.096214, %.lr.ph ], [ %.1, %bb.w ], [ %.1, %bb.x ] ; 3 uses
  %i.es = add nuw nsw i64 %.0103211, 1
  %i.et = add nsw i32 %.1127207, 1                ; 4 uses
  %i.eu = shl i64 %.0104210, 1
  %i.ev = icmp samesign ult i64 %.0103211, 63
  %.not151 = icmp slt i32 %i.et, %.0.i181
  %or.cond164 = select i1 %i.ev, i1 %.not151, i1 false
end_hunk_1
begin_hunk_2_@poll_select_finish:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = call i64 @_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %6, i64 noundef 16) #13
  %.not29.not = icmp eq i64 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.not29.not, label %bb.n, label %bb.m

copy_to_user.exit:                                ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ag = trunc i64 %i.ac to i32
  store i32 %i.ag, ptr %7, align 4
  %i.ah = sdiv i64 %i.ab, 1000
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = call i64 @_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %7, i64 noundef 8) #13
  %.not28.not = icmp eq i64 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br i1 %.not28.not, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.al = call i32 @put_timespec64(ptr noundef nonnull %5, ptr noundef nonnull %1) #13
  %.not27 = icmp eq i32 %i.al, 0
  br i1 %.not27, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = call i32 @put_old_timespec32(ptr noundef nonnull %5, ptr noundef nonnull %1) #13
  %.not26 = icmp eq i32 %i.am, 0
  br i1 %.not26, label %bb.n, label %bb.m

default.unreachable41:                            ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %copy_to_user.exit34, %copy_to_user.exit, %bb.k, %bb.l, %bb.e
  %spec.store.select = select i1 %i.a, i32 -4, i32 %3
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.g, %restore_saved_sigmask_unless.exit, %copy_to_user.exit34, %copy_to_user.exit, %bb.m
  %.2 = phi i32 [ %spec.store.select, %bb.m ], [ %3, %copy_to_user.exit34 ], [ %3, %copy_to_user.exit ], [ %3, %bb.g ], [ %3, %bb.k ], [ %3, %restore_saved_sigmask_unless.exit ], [ %3, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @do_sys_poll(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.timespec64, align 8         ; 6 uses
  %4 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.poll_wqueues, align 8       ; 15 uses
  %i.b = alloca [32 x i64], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(624) %5, i8 0, i64 624, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !annotation !11
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !12
  %i.e = inttoptr i64 %i.d to ptr                 ; 8 uses
  %i.f = getelementptr i8, ptr %i.e, i64 2096
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = getelementptr i8, ptr %i.g, i64 800
  %i.i = load volatile i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @llvm.umin.i32(i32 %1, i32 30) ; 2 uses
  store ptr null, ptr %i.b, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.k, ptr %i.l, align 8
  %.not142 = icmp eq i32 %1, 0
  br i1 %.not142, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr [8 x i8], ptr %0, i64 %i.c
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %bb.d, %.lr.ph
  %i.n = phi ptr [ %i.l, %.lr.ph ], [ %i.ab, %bb.d ]
  %.086145 = phi ptr [ %i.b, %.lr.ph ], [ %i.aa, %bb.d ] ; 3 uses
  %.088144 = phi i32 [ %1, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %.089143 = phi i32 [ %i.k, %.lr.ph ], [ %i.x, %bb.d ]
  %i.o = shl nuw nsw i32 %.089143, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr i8, ptr %.086145, i64 12
  %i.r = zext i32 %.088144 to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr [8 x i8], ptr %i.m, i64 %i.s
  %i.u = call i64 @_copy_from_user(ptr noundef %i.q, ptr noundef %i.t, i64 noundef range(i64 0, 2305843009213693945) %i.p) #13
  %.not99 = icmp eq i64 %i.u, 0
  br i1 %.not99, label %bb.c, label %copy_from_user.exit.thread

bb.c:                                             ; preds = %copy_from_user.exit
  %i.v = load i32, ptr %i.n, align 8              ; 2 uses
  %.not100 = icmp ult i32 %i.v, %.088144
  br i1 %.not100, label %_kmalloc_noprof.exit, label %._crit_edge

_kmalloc_noprof.exit:                             ; preds = %bb.c
  %i.w = sub nuw i32 %.088144, %i.v               ; 3 uses
  %i.x = call i32 @llvm.umin.i32(i32 %i.w, i32 510) ; 3 uses
  %i.y = shl nuw nsw i32 %i.x, 3
  %narrow = add nuw nsw i32 %i.y, 16
  %i.z = zext nneg i32 %narrow to i64
  %i.aa = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -12884901888, 34359738377) %i.z, i32 noundef 3264) #15 ; 5 uses
  %.not101 = icmp eq ptr %i.aa, null
  br i1 %.not101, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_kmalloc_noprof.exit
  %i.ab = getelementptr i8, ptr %i.aa, i64 8      ; 2 uses
  store ptr %i.aa, ptr %.086145, align 8
  store ptr null, ptr %i.aa, align 8
  store i32 %i.x, ptr %i.ab, align 8
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge, label %copy_from_user.exit

.critedge:                                        ; preds = %_kmalloc_noprof.exit
  store ptr null, ptr %.086145, align 8
  br label %copy_from_user.exit.thread

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  store ptr @__pollwait, ptr %5, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.e, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i32 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.ai = load volatile i32, ptr @sysctl_net_busy_poll, align 4
  %.not115.i = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not115.i, i32 0, i32 32768
  %.not.i110 = icmp eq ptr %2, null               ; 2 uses
  br i1 %.not.i110, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ak = load i64, ptr %2, align 8
  %.not65.i = icmp eq i64 %i.ak, 0
  br i1 %.not65.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr i8, ptr %2, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %.not66.i = icmp eq i64 %i.am, 0
  br i1 %.not66.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %5, align 8
  br label %.thread.i

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !11
  %i.an = getelementptr i8, ptr %i.e, i64 2840
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %select_estimate_accuracy.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @ktime_get_ts64(ptr noundef nonnull %4) #13
  %i.aq = load i64, ptr %2, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !11
  %i.aw = sub i64 %i.aq, %i.at
  %i.ax = sub i64 %i.as, %i.av
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %i.aw, i64 noundef %i.ax) #13
  %.fca.0.load.i.i.i = load i64, ptr %3, align 8  ; 3 uses
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = icmp slt i64 %.fca.0.load.i.i.i, 0
  br i1 %i.ay, label %__estimate_accuracy.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %i.e, i64 108
  %.val.i.i.i = load i32, ptr %i.az, align 4
  %i.ba = add i32 %.val.i.i.i, -120
  %i.bb = icmp sgt i32 %i.ba, 0                   ; 3 uses
  %spec.select.i.i.i = select i1 %i.bb, i64 20, i64 100
  %i.bc = icmp samesign ugt i64 %.fca.0.load.i.i.i, %spec.select.i.i.i
  br i1 %i.bc, label %__estimate_accuracy.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.zext.i.i.i = select i1 %i.bb, i64 5000000, i64 1000000
  %6 = sdiv i64 %.fca.1.load.i.i.i, 200
  %i.bd = sdiv i64 %.fca.1.load.i.i.i, 1000
  %7 = select i1 %i.bb, i64 %6, i64 %i.bd
  %i.be = mul nuw nsw i64 %.zext.i.i.i, %.fca.0.load.i.i.i
  %i.bf = add nsw i64 %i.be, %7
  %..i.i.i = call i64 @llvm.smin.i64(i64 %i.bf, i64 100000000)
  br label %__estimate_accuracy.exit.i.i

__estimate_accuracy.exit.i.i:                     ; preds = %bb.k, %bb.j, %bb.i
  %.011.i.i.i = phi i64 [ 100000000, %bb.j ], [ 0, %bb.i ], [ %..i.i.i, %bb.k ]
  %..i.i = call i64 @llvm.umax.i64(i64 %.011.i.i.i, i64 %i.ao)
  br label %select_estimate_accuracy.exit.i

select_estimate_accuracy.exit.i:                  ; preds = %__estimate_accuracy.exit.i.i, %bb.h
  %.0.i.i = phi i64 [ 0, %bb.h ], [ %..i.i, %__estimate_accuracy.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread.i

.thread.i:                                        ; preds = %select_estimate_accuracy.exit.i, %bb.g, %._crit_edge
  %.05889.i = phi i32 [ 1, %bb.g ], [ 0, %select_estimate_accuracy.exit.i ], [ 0, %._crit_edge ]
  %.052.i = phi i64 [ 0, %bb.g ], [ %.0.i.i, %select_estimate_accuracy.exit.i ], [ 0, %._crit_edge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr i8, ptr %i.e, i64 24      ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.w, %.thread.i
  %.159.i.ph = phi i32 [ 0, %bb.w ], [ %.05889.i, %.thread.i ]
  %.049.i.ph = phi i32 [ %.251.lcssa.i, %bb.w ], [ %i.aj, %.thread.i ]
  %.047.i.ph = phi i64 [ %i.cx, %bb.w ], [ 0, %.thread.i ] ; 2 uses
  %.044.i.ph = phi ptr [ %.044.i.ph204, %bb.w ], [ null, %.thread.i ]
  %.not70.i = icmp eq i64 %.047.i.ph, 0
  br label %.outer201

.outer201:                                        ; preds = %.outer, %poll_schedule_timeout.exit.i
  %.159.i.ph202 = phi i32 [ %.159.i.ph, %.outer ], [ %.0.i81.i, %poll_schedule_timeout.exit.i ]
  %.049.i.ph203 = phi i32 [ %.049.i.ph, %.outer ], [ 0, %poll_schedule_timeout.exit.i ]
  %.044.i.ph204 = phi ptr [ %.044.i.ph, %.outer ], [ %.1.i113, %poll_schedule_timeout.exit.i ] ; 3 uses
  %i.bi = icmp ne i32 %.159.i.ph202, 0
  br label %bb.l

bb.l:                                             ; preds = %.outer201, %busy_loop_timeout.exit.i
  %.159.i = phi i1 [ false, %busy_loop_timeout.exit.i ], [ %i.bi, %.outer201 ]
  %.049.i = phi i32 [ %.251.lcssa.i, %busy_loop_timeout.exit.i ], [ %.049.i.ph203, %.outer201 ]
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.l, %._crit_edge.i
  %.046129.i = phi ptr [ %i.cn, %._crit_edge.i ], [ %i.b, %bb.l ] ; 3 uses
  %.150128.i = phi i32 [ %.251.lcssa.i, %._crit_edge.i ], [ %.049.i, %bb.l ] ; 2 uses
  %.154127.i = phi i32 [ %.255.lcssa.i, %._crit_edge.i ], [ 0, %bb.l ] ; 2 uses
  %.082126.i = phi i1 [ %.183.lcssa.i, %._crit_edge.i ], [ false, %bb.l ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.046129.i, i64 12 ; 2 uses
  %i.bk = getelementptr i8, ptr %.046129.i, i64 8
  %i.bl = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx.i = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr i8, ptr %i.bj, i64 %.idx.i
  %.not72117.i = icmp eq i32 %i.bl, 0
  br i1 %.not72117.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph131.i, %bb.r
  %.045121.i = phi ptr [ %i.cm, %bb.r ], [ %i.bj, %.lr.ph131.i ] ; 6 uses
  %.251120.i = phi i32 [ %.3.i, %bb.r ], [ %.150128.i, %.lr.ph131.i ] ; 4 uses
  %.255119.i = phi i32 [ %.356.i, %bb.r ], [ %.154127.i, %.lr.ph131.i ] ; 3 uses
  %.183118.i = phi i1 [ %.284.i, %bb.r ], [ %.082126.i, %.lr.ph131.i ] ; 2 uses
  %i.bo = load i32, ptr %.045121.i, align 4       ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %do_pollfd.exit.thread.i, label %bb.m, !prof !14

do_pollfd.exit.thread.i:                          ; preds = %.lr.ph.i
  %i.bq = getelementptr i8, ptr %.045121.i, i64 6
  store i16 0, ptr %i.bq, align 2
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i
  %i.br = call i64 @fdget(i32 noundef %i.bo) #13  ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i, label %do_pollfd.exit.thread93.i, label %bb.n

do_pollfd.exit.thread93.i:                        ; preds = %bb.m
  %i.bs = getelementptr i8, ptr %.045121.i, i64 6
  store i16 32, ptr %i.bs, align 2
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr i8, ptr %.045121.i, i64 4
  %i.bu = load i16, ptr %i.bt, align 4
  %i.bv = and i16 %i.bu, 10215
  %i.bw = or disjoint i16 %i.bv, 24
  %i.bx = zext nneg i16 %i.bw to i32              ; 2 uses
  %i.by = or i32 %.251120.i, %i.bx
  store i32 %i.by, ptr %i.ac, align 8
  %i.bz = and i64 %i.br, -4
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i14.i.i, label %vfs_poll.exit.i.i, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.cf = call i32 %i.ce(ptr noundef %i.ca, ptr noundef nonnull %5) #13, !inline_history !68
  br label %vfs_poll.exit.i.i

vfs_poll.exit.i.i:                                ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi i32 [ %i.cf, %bb.o ], [ 325, %bb.n ] ; 2 uses
  %i.cg = and i32 %.0.i.i.i, %.251120.i
  %.not.i.i = icmp ne i32 %i.cg, 0
  %spec.select.i111 = select i1 %.not.i.i, i1 true, i1 %.183118.i
  %i.ch = and i32 %.0.i.i.i, %i.bx                ; 2 uses
  %i.ci = and i64 %i.br, 1
  %.not.i15.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i15.i.i, label %do_pollfd.exit.i, label %bb.p, !prof !32

bb.p:                                             ; preds = %vfs_poll.exit.i.i
  call void @fput(ptr noundef %i.ca) #13
  br label %do_pollfd.exit.i

do_pollfd.exit.i:                                 ; preds = %bb.p, %vfs_poll.exit.i.i
  %i.cj = trunc nuw nsw i32 %i.ch to i16
  %i.ck = getelementptr i8, ptr %.045121.i, i64 6
  store i16 %i.cj, ptr %i.ck, align 2
  %.not73.i = icmp eq i32 %i.ch, 0
  br i1 %.not73.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %do_pollfd.exit.i, %do_pollfd.exit.thread93.i
  %i.cl = add i32 %.255119.i, 1
  store ptr null, ptr %5, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %do_pollfd.exit.i, %do_pollfd.exit.thread.i
  %.284.i = phi i1 [ %spec.select.i111, %do_pollfd.exit.i ], [ false, %bb.q ], [ %.183118.i, %do_pollfd.exit.thread.i ] ; 2 uses
  %.356.i = phi i32 [ %.255119.i, %do_pollfd.exit.i ], [ %i.cl, %bb.q ], [ %.255119.i, %do_pollfd.exit.thread.i ] ; 2 uses
  %.3.i = phi i32 [ %.251120.i, %do_pollfd.exit.i ], [ 0, %bb.q ], [ %.251120.i, %do_pollfd.exit.thread.i ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.045121.i, i64 8 ; 2 uses
  %.not72.i = icmp eq ptr %i.cm, %i.bn
  br i1 %.not72.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !69

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph131.i
  %.183.lcssa.i = phi i1 [ %.082126.i, %.lr.ph131.i ], [ %.284.i, %bb.r ] ; 2 uses
  %.255.lcssa.i = phi i32 [ %.154127.i, %.lr.ph131.i ], [ %.356.i, %bb.r ] ; 3 uses
  %.251.lcssa.i = phi i32 [ %.150128.i, %.lr.ph131.i ], [ %.3.i, %bb.r ] ; 3 uses
  %i.cn = load ptr, ptr %.046129.i, align 8       ; 2 uses
  %.not67.i = icmp eq ptr %i.cn, null
  br i1 %.not67.i, label %._crit_edge132.i, label %.lr.ph131.i, !llvm.loop !70

._crit_edge132.i:                                 ; preds = %._crit_edge.i
  store ptr null, ptr %5, align 8
  %.not68.i = icmp eq i32 %.255.lcssa.i, 0
  br i1 %.not68.i, label %test_tsk_thread_flag.exit.i.i, label %do_poll.exit

test_tsk_thread_flag.exit.i.i:                    ; preds = %._crit_edge132.i
  %i.co = load i32, ptr %i.af, align 4            ; 2 uses
  %i.cp = load volatile i64, ptr %i.e, align 16
  %i.cq = and i64 %i.cp, 4
  %.not.i75.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i75.i, label %signal_pending.exit.i, label %do_poll.exit, !prof !25

signal_pending.exit.i:                            ; preds = %test_tsk_thread_flag.exit.i.i
  %i.cr = load volatile i64, ptr %i.e, align 16
  %.in.i.i.in.in.i.i.fr.i = freeze i64 %i.cr
  %i.cs = and i64 %.in.i.i.in.in.i.i.fr.i, 2
  %.not69.i = icmp eq i64 %i.cs, 0
  br i1 %.not69.i, label %bb.s, label %do_poll.exit

bb.s:                                             ; preds = %signal_pending.exit.i
  %i.ct = icmp ne i32 %i.co, 0
  %or.cond3.i112 = select i1 %i.ct, i1 true, i1 %.159.i
  br i1 %or.cond3.i112, label %do_poll.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.183.lcssa.i, label %bb.u, label %busy_loop_timeout.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.cu = load volatile i64, ptr %i.e, align 16
  %i.cv = and i64 %i.cu, 16
  %.not116.i = icmp eq i64 %i.cv, 0
  br i1 %.not116.i, label %bb.v, label %busy_loop_timeout.exit.thread.i

bb.v:                                             ; preds = %bb.u
  br i1 %.not70.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cw = call i64 @ktime_get() #13
  %i.cx = lshr i64 %i.cw, 10
  br label %.outer

bb.x:                                             ; preds = %bb.v
  %i.cy = load volatile i32, ptr @sysctl_net_busy_poll, align 4 ; 2 uses
  %.not.i77.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i77.i, label %busy_loop_timeout.exit.thread.i, label %busy_loop_timeout.exit.i

busy_loop_timeout.exit.i:                         ; preds = %bb.x
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %.047.i.ph, %i.cz
  %i.db = call i64 @ktime_get() #13
  %i.dc = lshr i64 %i.db, 10
  %i.dd = icmp samesign ult i64 %i.da, %i.dc
  br i1 %i.dd, label %busy_loop_timeout.exit.thread.i, label %bb.l

busy_loop_timeout.exit.thread.i:                  ; preds = %busy_loop_timeout.exit.i, %bb.x, %bb.u, %bb.t
  %i.de = icmp ne ptr %.044.i.ph204, null
  %or.cond5.i = select i1 %.not.i110, i1 true, i1 %i.de
  br i1 %or.cond5.i, label %bb.z, label %bb.y

end_hunk_2
