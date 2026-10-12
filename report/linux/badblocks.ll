Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/badblocks?download=true
inline.NumInlined: 69
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_check: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad badblocks_check ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_set: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad badblocks_set ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_clear: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad badblocks_clear ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ack_all_badblocks: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ack_all_badblocks ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_show: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad badblocks_show ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_store: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad badblocks_store ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_init: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad badblocks_init ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_init_badblocks: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad devm_init_badblocks ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_exit: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad badblocks_exit ; .previous"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"block/badblocks.c\00", align 1
@__UNIQUE_ID_addressable_badblocks_check_468 = internal global ptr @badblocks_check, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_badblocks_set_469 = internal global ptr @badblocks_set, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_badblocks_clear_470 = internal global ptr @badblocks_clear, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ack_all_badblocks_471 = internal global ptr @ack_all_badblocks, section ".discard.addressable", align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%llu %u\0A\00", align 1
@__UNIQUE_ID_addressable_badblocks_show_472 = internal global ptr @badblocks_show, section ".discard.addressable", align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%llu %d%c\00", align 1
@__UNIQUE_ID_addressable_badblocks_store_473 = internal global ptr @badblocks_store, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_badblocks_init_474 = internal global ptr @badblocks_init, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_devm_init_badblocks_475 = internal global ptr @devm_init_badblocks, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_badblocks_exit_476 = internal global ptr @badblocks_exit, section ".discard.addressable", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_addressable_ack_all_badblocks_471, ptr @__UNIQUE_ID_addressable_badblocks_check_468, ptr @__UNIQUE_ID_addressable_badblocks_clear_470, ptr @__UNIQUE_ID_addressable_badblocks_exit_476, ptr @__UNIQUE_ID_addressable_badblocks_init_474, ptr @__UNIQUE_ID_addressable_badblocks_set_469, ptr @__UNIQUE_ID_addressable_badblocks_show_472, ptr @__UNIQUE_ID_addressable_badblocks_store_473, ptr @__UNIQUE_ID_addressable_devm_init_badblocks_475], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @badblocks_check(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 0
  %i.d = icmp eq i64 %2, 0
  %i.e = or i1 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "466: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 466b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 466) #8, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1304, i32 2305, i64 16) #8, !srcloc !23
  tail call void asm sideeffect "467: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 467b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 467) #8, !srcloc !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_badblocks_check.exit, %bb.c
  %i.i = load volatile i32, ptr %i.f, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  %i.j = and i32 %i.i, 1
  %.not3.i = icmp eq i32 %i.j, 0
  br i1 %.not3.i, label %read_seqbegin.exit, label %.lr.ph.i, !prof !15

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !16
  %i.k = load volatile i32, ptr %i.f, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  %i.l = and i32 %i.k, 1
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %read_seqbegin.exit, label %.lr.ph.i, !prof !17, !llvm.loop !0

read_seqbegin.exit:                               ; preds = %.lr.ph.i, %bb.d
  %.lcssa.i = phi i32 [ %i.i, %bb.d ], [ %i.k, %.lr.ph.i ]
  %i.m = load ptr, ptr %i.g, align 8              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %read_seqbegin.exit
  %.069.i = phi i32 [ -1, %read_seqbegin.exit ], [ %.170.i, %bb.z ] ; 13 uses
  %.067.i = phi i32 [ 0, %read_seqbegin.exit ], [ %.168.i, %bb.z ] ; 7 uses
  %.064.i = phi i32 [ 0, %read_seqbegin.exit ], [ %.266.i, %bb.z ] ; 7 uses
  %.062.i = phi i32 [ 0, %read_seqbegin.exit ], [ %.2.i, %bb.z ] ; 7 uses
  %.059.i = phi i64 [ %2, %read_seqbegin.exit ], [ %i.dd, %bb.z ] ; 10 uses
  %.0.i = phi i64 [ %1, %read_seqbegin.exit ], [ %i.dc, %bb.z ] ; 19 uses
  %.val.i = load i32, ptr %i.h, align 8           ; 10 uses
  %.not.i27 = icmp eq i32 %.val.i, 0
  br i1 %.not.i27, label %overlap_front.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i32 %.069.i, -1
  br i1 %i.n, label %bb.g, label %.prev_by_hint.exit.thread_crit_edge.i

.prev_by_hint.exit.thread_crit_edge.i:            ; preds = %bb.f
  %.pre.i30 = load ptr, ptr %i.g, align 8
  br label %prev_by_hint.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.069.i, 2
  %i.p = load ptr, ptr %i.g, align 8              ; 14 uses
  %i.q = zext nneg i32 %.069.i to i64             ; 4 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 range(i32 0, -2147483648) %.069.i, i32 %i.o)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %i.r = sext i32 %.val.i to i64
  %i.s = zext i32 %.val.i to i64                  ; 2 uses
  %i.t = add i32 %.val.i, -1                      ; 2 uses
  %exitcond.not.i.i60.not = icmp slt i32 %.069.i, 2147483646
  br i1 %exitcond.not.i.i60.not, label %.lr.ph, label %prev_by_hint.exit.thread.i

bb.h:                                             ; preds = %bb.n
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %prev_by_hint.exit.thread.i, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %i.q, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.i, %i.r
  br i1 %exitcond.not.i.1, label %prev_by_hint.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.1
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.i
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 9
  %i.x = and i64 %i.w, 18014398509481983
  %.not.i.i32.1 = icmp ugt i64 %i.x, %.0.i
  br i1 %.not.i.i32.1, label %prev_by_hint.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp eq i64 %indvars.iv.next.i.i.1, %i.s
  br i1 %i.y, label %prev_badblocks.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.1
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = lshr i64 %i.aa, 9
  %i.ac = and i64 %i.ab, 18014398509481983
  %i.ad = icmp ugt i64 %i.ac, %.0.i
  br i1 %i.ad, label %.critedge.split.loop.exit22.i.i, label %prev_by_hint.exit.thread.i, !llvm.loop !1

.lr.ph:                                           ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %i.q, 1  ; 6 uses
  %exitcond.not.i.not = icmp slt i32 %.069.i, %.val.i
  br i1 %exitcond.not.i.not, label %bb.l, label %prev_by_hint.exit.thread.i

bb.l:                                             ; preds = %.lr.ph
  %i.ae = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i64 %i.af, 9
  %i.ah = and i64 %i.ag, 18014398509481983
  %.not.i.i32 = icmp ugt i64 %i.ah, %.0.i
  br i1 %.not.i.i32, label %prev_by_hint.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %i.ai, label %prev_badblocks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.i
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = lshr i64 %i.ak, 9
  %i.am = and i64 %i.al, 18014398509481983
  %i.an = icmp ugt i64 %i.am, %.0.i
  br i1 %i.an, label %.critedge.split.loop.exit22.i.i, label %bb.h, !llvm.loop !1

.critedge.split.loop.exit22.i.i:                  ; preds = %bb.k, %bb.n
  %indvars.iv.i.i61.lcssa66 = phi i64 [ %i.q, %bb.n ], [ %indvars.iv.next.i.i, %bb.k ]
  %i.ao = trunc nuw nsw i64 %indvars.iv.i.i61.lcssa66 to i32
  br label %prev_badblocks.exit

prev_by_hint.exit.thread.i:                       ; preds = %bb.h, %.lr.ph, %bb.l, %.lr.ph.1, %bb.i, %bb.k, %bb.g, %.prev_by_hint.exit.thread_crit_edge.i
  %i.ap = phi ptr [ %.pre.i30, %.prev_by_hint.exit.thread_crit_edge.i ], [ %i.p, %bb.g ], [ %i.p, %bb.k ], [ %i.p, %bb.i ], [ %i.p, %.lr.ph.1 ], [ %i.p, %bb.l ], [ %i.p, %.lr.ph ], [ %i.p, %bb.h ] ; 9 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = lshr i64 %i.aq, 9
  %i.as = and i64 %i.ar, 18014398509481983        ; 2 uses
  %i.at = icmp ugt i64 %i.as, %.0.i
  br i1 %i.at, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %prev_by_hint.exit.thread.i
  %i.au = add i32 %.val.i, -1                     ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [8 x i8], ptr %i.ap, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 9
  %i.az = and i64 %i.ay, 18014398509481983
  %.not48.i = icmp ugt i64 %i.az, %.0.i
  br i1 %.not48.i, label %.preheader.i, label %prev_badblocks.exit

.preheader.i:                                     ; preds = %bb.o
  %i.ba = icmp sgt i32 %.val.i, 1
  br i1 %i.ba, label %.lr.ph.i31, label %._crit_edge.i

.lr.ph.i31:                                       ; preds = %.preheader.i, %bb.p
  %.03510.i = phi i32 [ %.035..i, %bb.p ], [ %.val.i, %.preheader.i ] ; 2 uses
  %.0369.i = phi i32 [ %..036.i, %bb.p ], [ 0, %.preheader.i ] ; 2 uses
  %i.bb = add i32 %.0369.i, %.03510.i
  %i.bc = sdiv i32 %i.bb, 2                       ; 4 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr %i.ap, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = lshr i64 %i.bf, 9
  %i.bh = and i64 %i.bg, 18014398509481983        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %.0.i
  br i1 %i.bi, label %prev_badblocks.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i31
  %i.bj = icmp ult i64 %i.bh, %.0.i               ; 2 uses
  %..036.i = select i1 %i.bj, i32 %i.bc, i32 %.0369.i ; 4 uses
  %.035..i = select i1 %i.bj, i32 %.03510.i, i32 %i.bc ; 2 uses
  %i.bk = sub i32 %.035..i, %..036.i
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %.lr.ph.i31, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %.phi.trans.insert14.i = sext i32 %..036.i to i64
  %.phi.trans.insert15.i = getelementptr [8 x i8], ptr %i.ap, i64 %.phi.trans.insert14.i
  %.pre16.i = load i64, ptr %.phi.trans.insert15.i, align 8
  %.pre17.i = lshr i64 %.pre16.i, 9
  %.pre18.i = and i64 %.pre17.i, 18014398509481983
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.pre-phi19.i = phi i64 [ %.pre18.i, %._crit_edge.loopexit.i ], [ %i.as, %.preheader.i ]
  %.036.lcssa.i = phi i32 [ %..036.i, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %.not49.i = icmp ugt i64 %.pre-phi19.i, %.0.i
  br i1 %.not49.i, label %.critedge.i, label %prev_badblocks.exit

prev_badblocks.exit:                              ; preds = %bb.m, %bb.j, %.lr.ph.i31, %._crit_edge.i, %.critedge.split.loop.exit22.i.i, %bb.o
  %.val81.pre.i = phi ptr [ %i.p, %.critedge.split.loop.exit22.i.i ], [ %i.ap, %bb.o ], [ %i.ap, %._crit_edge.i ], [ %i.ap, %.lr.ph.i31 ], [ %i.p, %bb.j ], [ %i.p, %bb.m ] ; 4 uses
  %.042.i = phi i32 [ %i.ao, %.critedge.split.loop.exit22.i.i ], [ %i.au, %bb.o ], [ %.036.lcssa.i, %._crit_edge.i ], [ %i.bc, %.lr.ph.i31 ], [ %i.t, %bb.j ], [ %i.t, %bb.m ] ; 3 uses
  %i.bm = icmp sgt i32 %.042.i, -1
  %i.bn = add i32 %.042.i, 1                      ; 4 uses
  br i1 %i.bm, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %prev_badblocks.exit
  %.not76.i = icmp slt i32 %i.bn, %.val.i
  %.phi.trans.insert.i = zext nneg i32 %.042.i to i64 ; 2 uses
  %.phi.trans.insert97.i = getelementptr [8 x i8], ptr %.val81.pre.i, i64 %.phi.trans.insert.i
  %.pre.i.a = load i64, ptr %.phi.trans.insert97.i, align 8 ; 3 uses
  %.pre98.i = lshr i64 %.pre.i.a, 9
  %.pre100.i = and i64 %.pre98.i, 18014398509481983 ; 4 uses
  br i1 %.not76.i, label %overlap_front.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp ult i64 %.0.i, %.pre100.i
  br i1 %.not.i.i, label %overlap_front.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = and i64 %.pre.i.a, 511
  %i.bp = add nuw nsw i64 %i.bo, 1
  %i.bq = add nuw nsw i64 %i.bp, %.pre100.i
  %i.br = icmp ult i64 %.0.i, %i.bq
  br i1 %i.br, label %overlap_front.exit.thread.i, label %overlap_front.exit.i

overlap_front.exit.thread.i:                      ; preds = %bb.s, %bb.q
  %.not.i88.i = icmp ult i64 %.0.i, %.pre100.i
  br i1 %.not.i88.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %overlap_front.exit.thread.i
  %i.bs = and i64 %.pre.i.a, 511
  %i.bt = add nuw nsw i64 %i.bs, 1
  %i.bu = add nuw nsw i64 %i.bt, %.pre100.i
  %i.bv = icmp ult i64 %.0.i, %i.bu
  br i1 %i.bv, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr [8 x i8], ptr %i.m, i64 %.phi.trans.insert.i ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %.not77.i = icmp sgt i64 %i.bx, -1              ; 2 uses
  %i.by = zext i1 %.not77.i to i32
  %.165.i = add i32 %.064.i, %i.by                ; 2 uses
  %not..not77.i = xor i1 %.not77.i, true
  %i.bz = zext i1 %not..not77.i to i32
  %.163.i = add i32 %.062.i, %i.bz                ; 2 uses
  %i.ca = lshr i64 %i.bx, 9
  %i.cb = and i64 %i.ca, 18014398509481983        ; 2 uses
  %i.cc = and i64 %i.bx, 511
  %i.cd = add nuw nsw i64 %i.cc, 1
  %i.ce = add nuw nsw i64 %i.cd, %i.cb            ; 2 uses
  %i.cf = add i64 %.0.i, %.059.i
  %.not78.i = icmp ult i64 %i.ce, %i.cf
  %i.cg = sub nsw i64 %i.ce, %.0.i
  %.061.in.i = select i1 %.not78.i, i64 %i.cg, i64 %.059.i ; 2 uses
  %i.ch = icmp eq i32 %.067.i, 0
  br i1 %i.ch, label %bb.v, label %overlap_front.exit.i

bb.v:                                             ; preds = %bb.u
  store i64 %i.cb, ptr %3, align 8
  %i.ci = load i64, ptr %i.bw, align 8
  %i.cj = and i64 %i.ci, 511
  %i.ck = add nuw nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %4, align 8
  br label %overlap_front.exit.i

.critedge.i:                                      ; preds = %._crit_edge.i, %prev_by_hint.exit.thread.i, %bb.t, %overlap_front.exit.thread.i, %prev_badblocks.exit
  %.val85.i = phi ptr [ %.val81.pre.i, %prev_badblocks.exit ], [ %.val81.pre.i, %bb.t ], [ %.val81.pre.i, %overlap_front.exit.thread.i ], [ %i.ap, %prev_by_hint.exit.thread.i ], [ %i.ap, %._crit_edge.i ]
  %i.cl = phi i32 [ %i.bn, %prev_badblocks.exit ], [ %i.bn, %bb.t ], [ %i.bn, %overlap_front.exit.thread.i ], [ 0, %prev_by_hint.exit.thread.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.cm = icmp slt i32 %i.cl, %.val.i
  br i1 %i.cm, label %bb.w, label %overlap_front.exit.i

bb.w:                                             ; preds = %.critedge.i
  %i.cn = sext i32 %i.cl to i64                   ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %.val85.i, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = lshr i64 %i.cp, 9
  %i.cr = and i64 %i.cq, 18014398509481983        ; 2 uses
  %i.cs = icmp ult i64 %.0.i, %i.cr
  %i.ct = add i64 %.0.i, %.059.i
  %i.cu = icmp ugt i64 %i.ct, %i.cr
  %or.cond.i.i = and i1 %i.cs, %i.cu
  br i1 %or.cond.i.i, label %bb.x, label %overlap_front.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr [8 x i8], ptr %i.m, i64 %i.cn
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = lshr i64 %i.cw, 9
  %i.cy = sub nsw i64 %i.cx, %.0.i
  br label %overlap_front.exit.i

overlap_front.exit.i:                             ; preds = %bb.x, %bb.w, %.critedge.i, %bb.v, %bb.u, %bb.s, %bb.r, %bb.e
  %.170.i = phi i32 [ %.069.i, %bb.e ], [ %.069.i, %bb.v ], [ %.069.i, %bb.u ], [ %i.cl, %bb.x ], [ %.069.i, %.critedge.i ], [ %.069.i, %bb.w ], [ %.069.i, %bb.r ], [ %.069.i, %bb.s ]
  %.168.i = phi i32 [ %.067.i, %bb.e ], [ 1, %bb.v ], [ 1, %bb.u ], [ %.067.i, %bb.x ], [ %.067.i, %.critedge.i ], [ %.067.i, %bb.w ], [ %.067.i, %bb.r ], [ %.067.i, %bb.s ]
  %.266.i = phi i32 [ %.064.i, %bb.e ], [ %.165.i, %bb.v ], [ %.165.i, %bb.u ], [ %.064.i, %bb.x ], [ %.064.i, %.critedge.i ], [ %.064.i, %bb.w ], [ %.064.i, %bb.r ], [ %.064.i, %bb.s ] ; 2 uses
  %.2.i = phi i32 [ %.062.i, %bb.e ], [ %.163.i, %bb.v ], [ %.163.i, %bb.u ], [ %.062.i, %bb.x ], [ %.062.i, %.critedge.i ], [ %.062.i, %bb.w ], [ %.062.i, %bb.r ], [ %.062.i, %bb.s ] ; 2 uses
  %.1.in.i = phi i64 [ %.059.i, %bb.e ], [ %.061.in.i, %bb.v ], [ %.061.in.i, %bb.u ], [ %i.cy, %bb.x ], [ %.059.i, %.critedge.i ], [ %.059.i, %bb.w ], [ %.059.i, %bb.r ], [ %.059.i, %bb.s ]
  %i.cz = shl i64 %.1.in.i, 32
  %i.da = ashr exact i64 %i.cz, 32                ; 3 uses
  %i.db = icmp ult i64 %.059.i, %i.da
  br i1 %i.db, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %overlap_front.exit.i
  tail call void asm sideeffect "464: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 464b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 464) #8, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1246, i32 2305, i64 16) #8, !srcloc !26
  tail call void asm sideeffect "465: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 465b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 465) #8, !srcloc !27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %overlap_front.exit.i
  %i.dc = add i64 %i.da, %.0.i
  %i.dd = sub i64 %.059.i, %i.da                  ; 2 uses
  %.not79.i = icmp eq i64 %i.dd, 0
  br i1 %.not79.i, label %_badblocks_check.exit, label %bb.e

_badblocks_check.exit:                            ; preds = %bb.z
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !19
  %i.de = load volatile i32, ptr %i.f, align 4
  %.not34 = icmp eq i32 %i.de, %.lcssa.i
  br i1 %.not34, label %bb.aa, label %bb.d

bb.aa:                                            ; preds = %_badblocks_check.exit
  %i.df = icmp sgt i32 %.266.i, 0
  %i.dg = icmp sgt i32 %.2.i, 0
  %..i = zext i1 %i.dg to i32
  %.060.i = select i1 %i.df, i32 -1, i32 %..i
  ret i32 %.060.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @badblocks_set(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 0
  %i.d = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %_badblocks_set.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 36         ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.g = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.f) #9
  %i.h = load i32, ptr %i.e, align 4
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.e, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !20
  %i.j = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 8          ; 24 uses
  %.not25.i174.i = icmp eq i32 %3, 0              ; 2 uses
  %i.m = select i1 %.not25.i174.i, i64 0, i64 -9223372036854775808 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %can_combine_front.exit168.thread265.i, %bb.b
  %.0115.i = phi i32 [ -1, %bb.b ], [ %.2117.i, %can_combine_front.exit168.thread265.i ] ; 2 uses
  %.0113.i = phi i32 [ -1, %bb.b ], [ %.1114.i, %can_combine_front.exit168.thread265.i ]
  %.0110.i = phi i32 [ 0, %bb.b ], [ %.2112.i, %can_combine_front.exit168.thread265.i ] ; 9 uses
  %.1.i = phi i64 [ %2, %bb.b ], [ %i.jh, %can_combine_front.exit168.thread265.i ] ; 12 uses
  %.0106.i = phi i64 [ %1, %bb.b ], [ %i.jg, %can_combine_front.exit168.thread265.i ] ; 31 uses
  %.val138.i = load i32, ptr %i.l, align 8        ; 6 uses
  %i.n = icmp ult i32 %.val138.i, 512
  br i1 %i.n, label %bb.d, label %can_combine_front.exit168.i

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %.val138.i, 0
  br i1 %.not.i, label %insert_at.exit.i, label %bb.e

insert_at.exit.i:                                 ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = tail call i64 @llvm.umin.i64(i64 %.1.i, i64 512) ; 2 uses
  %i.q = shl i64 %.0106.i, 9
  %i.r = add nsw i64 %i.p, -1
  %i.s = or i64 %i.q, %i.r
  %i.t = or i64 %i.s, %i.m
  store i64 %i.t, ptr %i.o, align 8
  %i.u = load i32, ptr %i.l, align 8
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.l, align 8
  %i.w = add i32 %.0110.i, 1
  br label %can_combine_front.exit168.thread265.i

bb.e:                                             ; preds = %bb.d
  %i.x = tail call fastcc i32 @prev_badblocks(ptr noundef %0, i64 %.0106.i, i32 noundef %.0115.i) #10 ; 31 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %insert_at.exit149.i, label %bb.f

insert_at.exit149.i:                              ; preds = %bb.e
  %i.z = load i64, ptr %i.k, align 8
  %i.aa = lshr i64 %i.z, 9
  %i.ab = and i64 %i.aa, 18014398509481983
  %i.ac = sub i64 %i.ab, %.0106.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.1.i, i64 %i.ac)
  %i.ad = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = shl nuw nsw i32 %.val138.i, 3
  %i.ag = zext nneg i32 %i.af to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ad, i64 %i.ag, i1 false)
  %i.ah = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 512) ; 2 uses
  %i.ai = shl i64 %.0106.i, 9
  %i.aj = add nsw i64 %i.ah, -1
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = or i64 %i.ak, %i.m
  store i64 %i.al, ptr %i.ad, align 8
  %i.am = load i32, ptr %i.l, align 8
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.l, align 8
  %i.ao = add i32 %.0110.i, 1
  %i.ap = add nsw i32 %i.x, 1                     ; 2 uses
  br label %can_combine_front.exit168.thread265.i

bb.f:                                             ; preds = %bb.e
  %.val141.i = load ptr, ptr %i.j, align 8        ; 10 uses
  %.not.i.i = icmp eq i32 %i.x, 0                 ; 2 uses
  br i1 %.not.i.i, label %.can_combine_front.exit_crit_edge.i, label %bb.g

.can_combine_front.exit_crit_edge.i:              ; preds = %bb.f
  %.pre284.i = load i64, ptr %.val141.i, align 8  ; 2 uses
  %.pre = lshr i64 %.pre284.i, 9
  %.pre9 = and i64 %.pre, 18014398509481983
  br label %can_combine_front.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = zext nneg i32 %i.x to i64               ; 4 uses
  %i.ar = getelementptr [8 x i8], ptr %.val141.i, i64 %i.aq ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 7 uses
  %i.at = lshr i64 %i.as, 9
  %i.au = and i64 %i.at, 18014398509481983        ; 4 uses
  %i.av = icmp eq i64 %i.au, %.0106.i
  br i1 %i.av, label %bb.h, label %can_combine_front.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr i8, ptr %i.ar, i64 -8     ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 4 uses
  %i.ay = lshr i64 %i.ax, 9
  %i.az = and i64 %i.ay, 18014398509481983
  %i.ba = and i64 %i.ax, 511
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 3 uses
  %i.bc = add nuw nsw i64 %i.az, %i.bb
  %i.bd = icmp eq i64 %i.bc, %.0106.i
  br i1 %i.bd, label %bb.i, label %can_combine_front.exit.i

bb.i:                                             ; preds = %bb.h
  %i.be = and i64 %i.as, 511                      ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1
  %i.bg = add nuw nsw i64 %i.bf, %i.bb
  %i.bh = icmp samesign ult i64 %i.bg, 513
  %.unshifted.i.i = xor i64 %i.ax, %i.as
  %i.bi = icmp sgt i64 %.unshifted.i.i, -1
  %or.cond.i.i = and i1 %i.bi, %i.bh
  br i1 %or.cond.i.i, label %bb.j, label %can_combine_front.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bj = and i64 %i.ax, 9223372036854775296
  %i.bk = add nuw nsw i64 %i.bb, %i.be
  %.lobit.i.i = and i64 %i.as, -9223372036854775808
  %i.bl = or disjoint i64 %i.bj, %.lobit.i.i
  %i.bm = or i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.aw, align 8
  %i.bn = add nuw i32 %i.x, 1
  %i.bo = load i32, ptr %i.l, align 8             ; 3 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.k, label %front_combine.exit.i

end_hunk_0
