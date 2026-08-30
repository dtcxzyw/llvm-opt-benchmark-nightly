Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/utf8_util?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @BrotliIsMostlyUTF8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %BrotliParseAsUTF8.exit
  %.021 = phi i64 [ %spec.select, %BrotliParseAsUTF8.exit ], [ 0, %bb.a ]
  %.01420 = phi i64 [ %i.br, %BrotliParseAsUTF8.exit ], [ 0, %bb.a ] ; 3 uses
  %i.a = add i64 %.01420, %1
  %i.b = and i64 %i.a, %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 7 uses
  %i.d = sub nuw i64 %3, %.01420                  ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !8     ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 8 uses
  %or.cond = icmp slt i8 %i.e, 1
  br i1 %or.cond, label %._crit_edge.i, label %BrotliParseAsUTF8.exit

._crit_edge.i:                                    ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.d, 1
  br i1 %i.g, label %bb.b, label %.thread35.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.h = and i32 %i.f, 224
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %bb.c, label %._crit_edge41.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 192
  %i.n = icmp eq i32 %i.m, 128
  br i1 %i.n, label %bb.d, label %._crit_edge41.i

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw nsw i32 %i.f, 6
  %i.p = and i32 %i.o, 1984                       ; 2 uses
  %i.q = and i32 %i.l, 63
  %i.r = or disjoint i32 %i.q, %i.p
  %i.s = icmp samesign ugt i32 %i.p, 127
  br i1 %i.s, label %BrotliParseAsUTF8.exit, label %._crit_edge41.i

._crit_edge41.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %.not36.i = icmp eq i64 %i.d, 2
  br i1 %.not36.i, label %.thread35.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge41.i
  %i.t = and i32 %i.f, 240
  %i.u = icmp eq i32 %i.t, 224
  br i1 %i.u, label %bb.f, label %._crit_edge43.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 192
  %i.z = icmp eq i32 %i.y, 128
  br i1 %i.z, label %bb.g, label %._crit_edge43.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 192
  %i.ae = icmp eq i32 %i.ad, 128
  br i1 %i.ae, label %bb.h, label %._crit_edge43.i

bb.h:                                             ; preds = %bb.g
  %i.af = shl nuw nsw i32 %i.f, 12
  %i.ag = and i32 %i.af, 61440
  %i.ah = shl nuw nsw i32 %i.x, 6
  %i.ai = and i32 %i.ah, 4032
  %i.aj = or disjoint i32 %i.ai, %i.ag            ; 2 uses
  %i.ak = and i32 %i.ac, 63
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = icmp samesign ugt i32 %i.aj, 2047
  br i1 %i.am, label %BrotliParseAsUTF8.exit, label %._crit_edge43.i

._crit_edge43.i:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.an = icmp ugt i64 %i.d, 3
  %i.ao = and i32 %i.f, 248
  %i.ap = icmp eq i32 %i.ao, 240
  %or.cond19 = and i1 %i.an, %i.ap
  br i1 %or.cond19, label %bb.i, label %.thread35.i

bb.i:                                             ; preds = %._crit_edge43.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = and i32 %i.as, 192
  %i.au = icmp eq i32 %i.at, 128
  br i1 %i.au, label %bb.j, label %.thread35.i

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 192
  %i.az = icmp eq i32 %i.ay, 128
  br i1 %i.az, label %bb.k, label %.thread35.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.l, label %.thread35.i

bb.l:                                             ; preds = %bb.k
  %i.bf = shl nuw nsw i32 %i.f, 18
  %i.bg = and i32 %i.bf, 1835008
  %i.bh = shl nuw nsw i32 %i.as, 12
  %i.bi = and i32 %i.bh, 258048
  %i.bj = or disjoint i32 %i.bi, %i.bg            ; 2 uses
  %i.bk = shl nuw nsw i32 %i.ax, 6
  %i.bl = and i32 %i.bk, 4032
  %i.bm = and i32 %i.bc, 63
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %i.bo = or disjoint i32 %i.bn, %i.bj
  %i.bp = add nsw i32 %i.bj, -65536
  %or.cond.i = icmp ult i32 %i.bp, 1048576
  br i1 %or.cond.i, label %BrotliParseAsUTF8.exit, label %.thread35.i

.thread35.i:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %._crit_edge43.i, %._crit_edge41.i, %._crit_edge.i
  %i.bq = or disjoint i32 %i.f, 1114112
  br label %BrotliParseAsUTF8.exit

BrotliParseAsUTF8.exit:                           ; preds = %.lr.ph, %bb.d, %bb.h, %bb.l, %.thread35.i
  %.017 = phi i32 [ %i.r, %bb.d ], [ %i.bq, %.thread35.i ], [ %i.al, %bb.h ], [ %i.bo, %bb.l ], [ %i.f, %.lr.ph ]
  %.0.i = phi i64 [ 2, %bb.d ], [ 1, %.thread35.i ], [ 3, %bb.h ], [ 4, %bb.l ], [ 1, %.lr.ph ] ; 2 uses
  %i.br = add i64 %.0.i, %.01420                  ; 2 uses
  %i.bs = icmp samesign ult i32 %.017, 1114112
  %i.bt = select i1 %i.bs, i64 %.0.i, i64 0
  %spec.select = add i64 %i.bt, %.021             ; 2 uses
  %i.bu = icmp ult i64 %i.br, %3
  br i1 %i.bu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %BrotliParseAsUTF8.exit
  %i.bv = uitofp i64 %spec.select to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bv, %._crit_edge.loopexit ]
  %i.bw = uitofp i64 %3 to double
  %i.bx = fmul double %4, %i.bw
  %i.by = fcmp olt double %i.bx, %.0.lcssa
  %i.bz = zext i1 %i.by to i32
  ret i32 %i.bz
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
