Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/direct_write?download=true
inline.NumInlined: 133
inline.NumDeleted: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_netfs_unbuffered_write_iter_locked: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad netfs_unbuffered_write_iter_locked ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_netfs_unbuffered_write_iter: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad netfs_unbuffered_write_iter ; .previous"

%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.15 }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { i64 }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.static_call_key = type { ptr, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.cpumask = type { [1 x i64] }

@system_dfl_wq = external dso_local local_unnamed_addr global ptr, align 8
@__UNIQUE_ID_addressable_netfs_unbuffered_write_iter_locked_791 = internal global ptr @netfs_unbuffered_write_iter_locked, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_netfs_unbuffered_write_iter_792 = internal global ptr @netfs_unbuffered_write_iter, section ".discard.addressable", align 8
@__tracepoint_netfs_write = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_write.__trace_check_netfs_write = internal constant [12 x i8] c"netfs_write\00", section "__tracepoint_check", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_netfs_write.__UNIQUE_ID_addressable___SCK__tp_func_netfs_write_649 = internal global ptr @__SCK__tp_func_netfs_write, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_write = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_netfs_sreq = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_sreq.__trace_check_netfs_sreq = internal constant [11 x i8] c"netfs_sreq\00", section "__tracepoint_check", align 1
@__do_trace_netfs_sreq.__UNIQUE_ID_addressable___SCK__tp_func_netfs_sreq_607 = internal global ptr @__SCK__tp_func_netfs_sreq, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_sreq = external dso_local global %struct.static_call_key, align 8
@__tracepoint_netfs_sreq_ref = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_sreq_ref.__trace_check_netfs_sreq_ref = internal constant [15 x i8] c"netfs_sreq_ref\00", section "__tracepoint_check", align 1
@__do_trace_netfs_sreq_ref.__UNIQUE_ID_addressable___SCK__tp_func_netfs_sreq_ref_628 = internal global ptr @__SCK__tp_func_netfs_sreq_ref, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_sreq_ref = external dso_local global %struct.static_call_key, align 8
@__tracepoint_netfs_collect_sreq = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_collect_sreq.__trace_check_netfs_collect_sreq = internal constant [19 x i8] c"netfs_collect_sreq\00", section "__tracepoint_check", align 16
@__do_trace_netfs_collect_sreq.__UNIQUE_ID_addressable___SCK__tp_func_netfs_collect_sreq_670 = internal global ptr @__SCK__tp_func_netfs_collect_sreq, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_collect_sreq = external dso_local global %struct.static_call_key, align 8
@__tracepoint_netfs_collect_stream = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_collect_stream.__trace_check_netfs_collect_stream = internal constant [21 x i8] c"netfs_collect_stream\00", section "__tracepoint_check", align 16
@__do_trace_netfs_collect_stream.__UNIQUE_ID_addressable___SCK__tp_func_netfs_collect_stream_698 = internal global ptr @__SCK__tp_func_netfs_collect_stream, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_collect_stream = external dso_local global %struct.static_call_key, align 8
@__tracepoint_netfs_collect_state = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_collect_state.__trace_check_netfs_collect_state = internal constant [20 x i8] c"netfs_collect_state\00", section "__tracepoint_check", align 16
@__do_trace_netfs_collect_state.__UNIQUE_ID_addressable___SCK__tp_func_netfs_collect_state_684 = internal global ptr @__SCK__tp_func_netfs_collect_state, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_collect_state = external dso_local global %struct.static_call_key, align 8
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@__tracepoint_netfs_rreq = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_rreq.__trace_check_netfs_rreq = internal constant [11 x i8] c"netfs_rreq\00", section "__tracepoint_check", align 1
@__do_trace_netfs_rreq.__UNIQUE_ID_addressable___SCK__tp_func_netfs_rreq_600 = internal global ptr @__SCK__tp_func_netfs_rreq, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_rreq = external dso_local global %struct.static_call_key, align 8
@__tracepoint_netfs_write_iter = external dso_local global %struct.tracepoint, align 8
@__do_trace_netfs_write_iter.__trace_check_netfs_write_iter = internal constant [17 x i8] c"netfs_write_iter\00", section "__tracepoint_check", align 16
@__do_trace_netfs_write_iter.__UNIQUE_ID_addressable___SCK__tp_func_netfs_write_iter_642 = internal global ptr @__SCK__tp_func_netfs_write_iter, section ".discard.addressable", align 8
@__SCK__tp_func_netfs_write_iter = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_addressable_netfs_unbuffered_write_iter_792, ptr @__UNIQUE_ID_addressable_netfs_unbuffered_write_iter_locked_791, ptr @__do_trace_netfs_collect_sreq.__UNIQUE_ID_addressable___SCK__tp_func_netfs_collect_sreq_670, ptr @__do_trace_netfs_collect_sreq.__trace_check_netfs_collect_sreq, ptr @__do_trace_netfs_collect_state.__UNIQUE_ID_addressable___SCK__tp_func_netfs_collect_state_684, ptr @__do_trace_netfs_collect_state.__trace_check_netfs_collect_state, ptr @__do_trace_netfs_collect_stream.__UNIQUE_ID_addressable___SCK__tp_func_netfs_collect_stream_698, ptr @__do_trace_netfs_collect_stream.__trace_check_netfs_collect_stream, ptr @__do_trace_netfs_rreq.__UNIQUE_ID_addressable___SCK__tp_func_netfs_rreq_600, ptr @__do_trace_netfs_rreq.__trace_check_netfs_rreq, ptr @__do_trace_netfs_sreq.__UNIQUE_ID_addressable___SCK__tp_func_netfs_sreq_607, ptr @__do_trace_netfs_sreq.__trace_check_netfs_sreq, ptr @__do_trace_netfs_sreq_ref.__UNIQUE_ID_addressable___SCK__tp_func_netfs_sreq_ref_628, ptr @__do_trace_netfs_sreq_ref.__trace_check_netfs_sreq_ref, ptr @__do_trace_netfs_write.__UNIQUE_ID_addressable___SCK__tp_func_netfs_write_649, ptr @__do_trace_netfs_write.__trace_check_netfs_write, ptr @__do_trace_netfs_write_iter.__UNIQUE_ID_addressable___SCK__tp_func_netfs_write_iter_642, ptr @__do_trace_netfs_write_iter.__trace_check_netfs_write_iter], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @netfs_unbuffered_write_iter_locked(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 24
  %.val73 = load i64, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val75.a = load ptr, ptr %i.d, align 8
  %i.e = icmp eq ptr %.val75.a, null
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %3 = and i32 %i.j, 131072
  %.not = icmp eq i32 %3, 0
  %4 = select i1 %.not, i8 10, i8 11
  %i.k = tail call ptr @netfs_create_write_req(ptr noundef %i.h, ptr noundef %i.f, i64 noundef %i.b, i8 noundef signext %4) #5 ; 23 uses
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.k to i64
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.k, i64 228
  store i8 1, ptr %i.n, align 4
  %i.o = load i32, ptr %i.i, align 8
  %i.p = and i32 %i.o, 131072
  %.not71.a = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not71.a, i8 2, i8 1
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_netfs_write, i64 8), i1 false) #6
          to label %trace_netfs_write.exit [label %arch_test_bit.exit.i.i], !srcloc !10

arch_test_bit.exit.i.i:                           ; preds = %bb.c
  %i.r = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #6, !srcloc !17
  %i.s = zext i32 %i.r to i64
  %i.t = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.s) #6, !srcloc !11 ; 2 uses
  %i.u = icmp ult i8 %i.t, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = trunc nuw i8 %i.t to i1
  br i1 %i.v, label %bb.d, label %trace_netfs_write.exit

bb.d:                                             ; preds = %arch_test_bit.exit.i.i
  %i.w = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.w, ptr elementtype(i64) %i.w) #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !13
  %i.x = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_netfs_write, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 @__SCT__tp_func_netfs_write(ptr noundef %i.z, ptr noundef %i.k, i8 noundef signext range(i8 1, 3) %i.q) #5 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !14
  %i.ab = getelementptr i8, ptr %i.w, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ab, ptr elementtype(i64) %i.ab) #6, !srcloc !15
  br label %trace_netfs_write.exit

trace_netfs_write.exit:                           ; preds = %bb.c, %arch_test_bit.exit.i.i, %bb.f
  %.val76.a = load i8, ptr %1, align 8
  %spec.select.i = icmp ult i8 %.val76.a, 2
  %i.ac = getelementptr i8, ptr %i.k, i64 360     ; 2 uses
  br i1 %spec.select.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %trace_netfs_write.exit
  %i.ad = tail call i64 @netfs_extract_user_iter(ptr noundef %1, i64 noundef %.val73, ptr noundef %i.ac, i32 noundef 0) #5 ; 3 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @netfs_put_failed_request(ptr noundef %i.k) #5
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.k, i64 376
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.k, i64 448
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = trunc i64 %i.ad to i32
  %i.aj = getelementptr i8, ptr %i.k, i64 548
  store i32 %i.ai, ptr %i.aj, align 4
  %.val77 = load i8, ptr %1, align 8
  %spec.select.i.i = icmp ult i8 %.val77, 2
  %i.ak = getelementptr i8, ptr %i.k, i64 578
  %i.al = zext i1 %spec.select.i.i to i8
  store i8 %i.al, ptr %i.ak, align 2
  br label %bb.k

bb.j:                                             ; preds = %trace_netfs_write.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.ac, ptr noundef align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr i8, ptr %i.k, i64 384
  %.val = load i64, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.k, i64 464
  store i64 %.val, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.k, i64 584     ; 2 uses
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ao, i64 12) #6, !srcloc !16
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ao, i64 11) #6, !srcloc !16
  br i1 %i.e, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %i.k, i64 32      ; 2 uses
  store i64 4503599625273344, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.k, i64 40      ; 3 uses
  store volatile ptr %i.aq, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.k, i64 48
  store volatile ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.k, i64 56
  store ptr @netfs_unbuffered_write_async, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.k, i64 80
  store ptr %0, ptr %i.at, align 8
  %i.au = load ptr, ptr @system_dfl_wq, align 8
  %i.av = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.au, ptr noundef %i.ap) #5 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aw = tail call fastcc i32 @netfs_unbuffered_write(ptr noundef %i.k) #7, !srcloc !18 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = sext i32 %i.aw to i64
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %i.k, i64 472     ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.a, align 8
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.a, align 8
  %i.bd = load i64, ptr %i.az, align 8            ; 2 uses
  %.not72 = icmp eq i64 %i.bd, 0
  br i1 %.not72, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr i8, ptr %i.k, i64 480
  %i.bf = load i64, ptr %i.be, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.066 = phi i64 [ %i.ay, %bb.n ], [ %i.bf, %bb.p ], [ %i.bd, %bb.o ]
  tail call void @netfs_put_request(ptr noundef %i.k, i8 noundef signext 2) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.1 = phi i64 [ -529, %bb.l ], [ %.066, %bb.q ]
  tail call void @netfs_put_request(ptr noundef %i.k, i8 noundef signext 6) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.r, %bb.b
  %.0 = phi i64 [ %i.m, %bb.b ], [ %i.ad, %bb.h ], [ %.1, %bb.r ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @netfs_create_write_req(ptr noundef, ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @netfs_extract_user_iter(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @netfs_unbuffered_write_async(ptr noundef initializes((176, 184)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -32        ; 2 uses
  %i.b = tail call fastcc i32 @netfs_unbuffered_write(ptr noundef %i.a) #7, !srcloc !19 ; 0 uses
  tail call void @netfs_put_request(ptr noundef %i.a, i8 noundef signext 2) #5
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -32768, 32768) i32 @netfs_unbuffered_write(ptr noundef initializes((208, 216)) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 577        ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 11
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 316      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, ptr elementtype(i32) %i.g) #6, !srcloc !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 496        ; 5 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 208        ; 2 uses
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 472        ; 12 uses
  %i.l = getelementptr i8, ptr %0, i64 464        ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 172
  %i.p = getelementptr i8, ptr %0, i64 184
  %i.q = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 226
  %i.s = getelementptr i8, ptr %0, i64 592
  %i.t = getelementptr i8, ptr %0, i64 176
  %i.u = getelementptr i8, ptr %0, i64 572        ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 512        ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 80         ; 5 uses
  br label %netfs_see_subrequest.exit

netfs_see_subrequest.exit:                        ; preds = %netfs_see_subrequest.exit.backedge, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %.0.be, %netfs_see_subrequest.exit.backedge ] ; 2 uses
end_hunk_0
