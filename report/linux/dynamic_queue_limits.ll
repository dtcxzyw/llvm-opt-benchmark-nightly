Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dynamic_queue_limits?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dql_completed: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dql_completed ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dql_reset: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dql_reset ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dql_init: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dql_init ; .previous"

%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.static_call_key = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.cpumask = type { [1 x i64] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"lib/dynamic_queue_limits.c\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__UNIQUE_ID_addressable_dql_completed_763 = internal global ptr @dql_completed, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dql_reset_764 = internal global ptr @dql_reset, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dql_init_765 = internal global ptr @dql_init, section ".discard.addressable", align 8
@__tracepoint_dql_stall_detected = external dso_local global %struct.tracepoint, align 8
@__do_trace_dql_stall_detected.__trace_check_dql_stall_detected = internal constant [19 x i8] c"dql_stall_detected\00", section "__tracepoint_check", align 16
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_dql_stall_detected.__UNIQUE_ID_addressable___SCK__tp_func_dql_stall_detected_745 = internal global ptr @__SCK__tp_func_dql_stall_detected, section ".discard.addressable", align 8
@__SCK__tp_func_dql_stall_detected = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_addressable_dql_completed_763, ptr @__UNIQUE_ID_addressable_dql_init_765, ptr @__UNIQUE_ID_addressable_dql_reset_764, ptr @__do_trace_dql_stall_detected.__UNIQUE_ID_addressable___SCK__tp_func_dql_stall_detected_745, ptr @__do_trace_dql_stall_detected.__trace_check_dql_stall_detected], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dql_completed(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i32, ptr %0, align 64      ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.c = load volatile i16, ptr %i.b, align 4     ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = sub i32 %i.a, %i.e                       ; 2 uses
  %i.g = icmp ugt i32 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "753: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 753b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 753) #8, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 99, i32 0, i64 16) #8, !srcloc !14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = add i32 %i.e, %1                         ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.j = load i32, ptr %i.i, align 64             ; 7 uses
  %i.k = sub i32 %i.f, %i.j                       ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %i.l = getelementptr i8, ptr %0, i64 76         ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = sub i32 %i.h, %i.m                       ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1                    ; 2 uses
  %i.p = icmp slt i32 %i.k, 1
  %i.q = icmp ne i32 %i.a, %i.h                   ; 2 uses
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  %i.r = getelementptr i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8              ; 4 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ne i32 %i.s, 0                      ; 2 uses
  %or.cond3 = select i1 %i.t, i1 %i.o, i1 false
  br i1 %or.cond3, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %spec.select124 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.u = add i32 %spec.select124, %i.j
  %i.v = add i32 %i.u, %i.s
  %i.w = load volatile i64, ptr @jiffies, align 64
  %i.x = getelementptr i8, ptr %0, i64 88
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 84
  store i32 -1, ptr %i.y, align 4
  br label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %i.m, %i.e
  %not. = xor i1 %i.q, true
  %i.aa = or i1 %i.z, %i.o
  %or.cond7 = select i1 %not., i1 true, i1 %i.aa
  br i1 %or.cond7, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = shl i32 %1, 1
  %i.ac = sub i32 %i.j, %i.ab
  %i.ad = add i32 %i.ac, %i.s
  %spec.select125 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0) ; 3 uses
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 80
  %i.af = load i32, ptr %i.ae, align 16
  %i.ag = sub i32 %i.af, %i.s                     ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i32 @llvm.umax.i32(i32 %spec.select125, i32 %i.ag)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %i.aj = phi i32 [ %spec.select125, %bb.g ], [ %i.ai, %bb.h ], [ %spec.select125, %bb.f ] ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 84        ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp ult i32 %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aj, ptr %i.ak, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi i32 [ %i.aj, %bb.j ], [ %i.al, %bb.i ]
  %i.ao = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %0, i64 104
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = zext i32 %i.ar to i64
  %i.at = add i64 %i.ap, %i.as
  %i.au = load volatile i64, ptr @jiffies, align 64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = sub i32 %i.j, %i.an
  %spec.select126 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  %i.ay = load volatile i64, ptr @jiffies, align 64
  store i64 %i.ay, ptr %i.ao, align 8
  store i32 -1, ptr %i.ak, align 4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.e, %bb.l, %bb.k
  %.1 = phi i32 [ %i.v, %._crit_edge ], [ %i.j, %bb.e ], [ %spec.select126, %bb.l ], [ %i.j, %bb.k ] ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 96
  %i.ba = load i32, ptr %i.az, align 32           ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 100
  %i.bc = load i32, ptr %i.bb, align 4
  %.not121 = icmp ult i32 %.1, %i.ba
  %i.bd = tail call i32 @llvm.umax.i32(i32 %.1, i32 %i.bc)
  %i.be = select i1 %.not121, i32 %i.bd, i32 %i.ba ; 3 uses
  %.not123 = icmp eq i32 %i.be, %i.j
  br i1 %.not123, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.be, ptr %i.i, align 64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0108 = phi i32 [ 0, %bb.n ], [ %spec.select, %bb.m ]
  %i.bf = add i32 %i.be, %i.h
  %i.bg = getelementptr i8, ptr %0, i64 4
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %0, i64 72
  store i32 %.0108, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %0, i64 8
  %i.bj = load volatile i32, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %0, i64 80
  store i32 %i.bj, ptr %i.bk, align 16
  store i32 %i.h, ptr %i.d, align 4
  store i32 %i.a, ptr %i.l, align 4
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %dql_check_stall.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load volatile i64, ptr @jiffies, align 64 ; 5 uses
  %i.bm = getelementptr i8, ptr %0, i64 112       ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 16
  %i.bo = zext i16 %i.c to i64
  %i.bp = add i64 %i.bn, %i.bo
  %i.bq = sub i64 %i.bl, %i.bp
  %i.br = icmp sgt i64 %i.bq, -1
  br i1 %i.br, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.p
  %i.bs = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bt = lshr i16 %i.c, 1
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = sub i64 %i.bl, %i.bu                    ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 24        ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.preheader.i
  %i.bx = load volatile i64, ptr %i.bs, align 16  ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !15
  %i.by = shl i64 %i.bx, 6                        ; 2 uses
  %i.bz = add i64 %i.by, -192                     ; 2 uses
  %i.ca = load i64, ptr %i.bm, align 16
  %i.cb = add i64 %i.ca, 1                        ; 2 uses
  %i.cc = sub i64 %i.bz, %i.cb
  %i.cd = icmp slt i64 %i.cc, 0
  %spec.select.i = select i1 %i.cd, i64 %i.cb, i64 %i.bz ; 2 uses
  %i.ce = or disjoint i64 %i.by, 63               ; 2 uses
  %i.cf = sub i64 %i.bv, %i.ce
  %i.cg = icmp slt i64 %i.cf, 0
  %.058.i = select i1 %i.cg, i64 %i.bv, i64 %i.ce ; 2 uses
  %i.ch = sub i64 %.058.i, %spec.select.i
  %i.ci = icmp sgt i64 %i.ch, -1
  br i1 %i.ci, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.05669.i = phi i64 [ %i.cn, %bb.r ], [ %spec.select.i, %bb.q ] ; 3 uses
  %i.cj = and i64 %.05669.i, 255
  %i.ck = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bw, i64 range(i64 0, 4294967296) %i.cj) #8, !srcloc !10 ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 2
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = trunc nuw i8 %i.ck to i1
  br i1 %i.cm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.cn = add i64 %.05669.i, 1                    ; 2 uses
  %i.co = sub i64 %.058.i, %i.cn
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %.lr.ph.i, label %.critedge.i, !llvm.loop !11

bb.s:                                             ; preds = %.lr.ph.i
  %i.cq = load volatile i64, ptr %i.bs, align 16
  %.not60.i = icmp eq i64 %i.bx, %i.cq
  br i1 %.not60.i, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cr, align 8
  %i.cu = getelementptr i8, ptr %0, i64 108       ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 4
  %i.cw = sub i64 %i.bl, %.05669.i                ; 2 uses
  %i.cx = trunc i64 %i.cw to i16
  %i.cy = tail call i16 @llvm.umax.i16(i16 %i.cx, i16 %i.cv)
  store i16 %i.cy, ptr %i.cu, align 4
  %i.cz = load i16, ptr %i.b, align 4
  %i.da = trunc i64 %i.cw to i32
  %i.db = load i64, ptr %i.bm, align 16
  tail call fastcc void @trace_dql_stall_detected(i16 noundef zeroext %i.cz, i32 noundef %i.da, i64 noundef %i.db, i64 noundef %i.bx, i64 noundef %i.bl, ptr noundef %i.bw) #9, !srcloc !17
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.q, %bb.r, %bb.t, %bb.p
  store i64 %i.bl, ptr %i.bm, align 16
  br label %dql_check_stall.exit

dql_check_stall.exit:                             ; preds = %bb.o, %.critedge.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local void @dql_reset(ptr nofree noundef captures(none) initializes((0, 4), (8, 12), (16, 56), (64, 96), (112, 120)) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 64
  store i32 0, ptr %0, align 64
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.f, align 4
  %i.g = load volatile i64, ptr @jiffies, align 64
  %i.h = getelementptr i8, ptr %0, i64 88
  store i64 %i.g, ptr %i.h, align 8
  %i.i = load volatile i64, ptr @jiffies, align 64
  %i.j = getelementptr i8, ptr %0, i64 112
  store i64 %i.i, ptr %i.j, align 16
  %i.k = load volatile i64, ptr @jiffies, align 64
  %i.l = lshr i64 %i.k, 6
  %i.m = getelementptr i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 16
  %i.n = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: write, target_mem: none)
define dso_local void @dql_init(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 14), (16, 56), (64, 108), (112, 120)) %0, i32 noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  store i32 1879048192, ptr %i.a, align 32
  %i.b = getelementptr i8, ptr %0, i64 100
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %0, i64 104
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 12
  store i16 0, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 64
  store i32 0, ptr %0, align 64
  %i.f = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef align 64 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.g, align 4
  %i.h = load volatile i64, ptr @jiffies, align 64
  %i.i = getelementptr i8, ptr %0, i64 88
  store i64 %i.h, ptr %i.i, align 8
  %i.j = load volatile i64, ptr @jiffies, align 64
  %i.k = getelementptr i8, ptr %0, i64 112
  store i64 %i.j, ptr %i.k, align 16
  %i.l = load volatile i64, ptr @jiffies, align 64
  %i.m = lshr i64 %i.l, 6
  %i.n = getelementptr i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 16
  %i.o = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_dql_stall_detected(i16 noundef zeroext %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_dql_stall_detected, i64 8), i1 false) #8
          to label %arch_static_branch.exit [label %cpumask_test_cpu.exit.i], !srcloc !18

cpumask_test_cpu.exit.i:                          ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !19
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #8, !srcloc !10 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #8, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_dql_stall_detected, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_dql_stall_detected(ptr noundef %i.i, i16 noundef zeroext %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #8, !srcloc !23
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %cpumask_test_cpu.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_dql_stall_detected(ptr noundef, i16 noundef zeroext, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: write, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 2147992292}
!11 = distinct !{!11, !16}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 2159661730, i64 2159661605}
!14 = !{i64 2159662253, i64 2159662729, i64 2159662762, i64 2159662797, i64 2159662813, i64 2159663654, i64 2159663712, i64 2159663761, i64 2159663571, i64 2159662872, i64 2159662904}
end_hunk_0
