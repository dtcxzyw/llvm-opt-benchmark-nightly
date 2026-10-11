Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/ia64?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext true) #3
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext false) #3
  ret i32 %i.a
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i64 -15, -16) i64 @ia64_code(ptr nofree readnone captures(none) %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef captures(none) %3, i64 noundef %4) #2 {
bb.a:
  %.not71 = icmp ult i64 %4, 16
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit.2
  %i.a = phi i64 [ %i.fb, %.loopexit.2 ], [ 16, %bb.a ] ; 3 uses
  %.06072 = phi i64 [ %i.a, %.loopexit.2 ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %.06072 ; 19 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %i.d = and i8 %i.c, 31                          ; 2 uses
  %i.e = zext nneg i8 %i.d to i64                 ; 2 uses
  %i.f = trunc i64 %.06072 to i32
  %i.g = add i32 %1, %i.f                         ; 2 uses
  %i.h = sub i32 0, %i.g
  %.055.p = select i1 %2, i32 %i.g, i32 %i.h
  %i.i = lshr i32 %.055.p, 4                      ; 3 uses
  %5 = add nsw i8 %i.d, -24
  %6 = icmp ult i8 %5, -2
  br i1 %6, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = zext i8 %i.c to i64                      ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.b, i64 1      ; 2 uses
  %i.k = load i8, ptr %gep.1, align 1, !tbaa !10  ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %gep.2 = getelementptr i8, ptr %i.b, i64 2      ; 2 uses
  %i.n = load i8, ptr %gep.2, align 1, !tbaa !10
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 16
  %i.q = or disjoint i64 %i.m, %i.p
  %i.r = or disjoint i64 %i.q, %i.j
  %gep.3 = getelementptr i8, ptr %i.b, i64 3      ; 2 uses
  %i.s = load i8, ptr %gep.3, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 24
  %gep.4 = getelementptr i8, ptr %i.b, i64 4      ; 2 uses
  %i.v = load i8, ptr %gep.4, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = or disjoint i64 %i.y, %i.r               ; 2 uses
  %gep.5 = getelementptr i8, ptr %i.b, i64 5      ; 2 uses
  %i.aa = load i8, ptr %gep.5, align 1, !tbaa !10
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = or disjoint i64 %i.ac, %i.z             ; 3 uses
  %i.ae = and i64 %i.ad, 65970697781248
  %or.cond = icmp eq i64 %i.ae, 21990232555520
  br i1 %or.cond, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.af = lshr i64 %i.z, 18
  %i.ag = and i64 %i.af, 1048575
  %i.ah = lshr i64 %i.ad, 21
  %i.ai = and i64 %i.ah, 1048576
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = add nuw nsw i32 %i.i, %i.ak             ; 2 uses
  %i.am = and i64 %i.ad, 9223325582488649696
  %i.an = and i32 %i.al, 1048575
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 18
  %i.aq = or disjoint i64 %i.ap, %i.am
  %i.ar = and i32 %i.al, 1048576
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 21
  %i.au = and i64 %i.j, 31
  %i.av = or disjoint i64 %i.at, %i.au
  %i.aw = or disjoint i64 %i.av, %i.aq            ; 5 uses
  %i.ax = trunc i64 %i.aw to i8
  store i8 %i.ax, ptr %i.b, align 1, !tbaa !10
  store i8 %i.k, ptr %gep.1, align 1, !tbaa !10
  %i.ay = lshr i64 %i.aw, 16
  %i.az = trunc i64 %i.ay to i8
  store i8 %i.az, ptr %gep.2, align 1, !tbaa !10
  %i.ba = lshr i64 %i.aw, 24
  %i.bb = trunc i64 %i.ba to i8
  store i8 %i.bb, ptr %gep.3, align 1, !tbaa !10
  %i.bc = lshr i64 %i.aw, 32
  %i.bd = trunc i64 %i.bc to i8
  store i8 %i.bd, ptr %gep.4, align 1, !tbaa !10
  %i.be = lshr i64 %i.aw, 40
  %i.bf = trunc nuw i64 %i.be to i8
  store i8 %i.bf, ptr %gep.5, align 1, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %.lr.ph
  %7 = shl nuw nsw i64 1, %i.e
  %8 = and i64 %7, 4281597951
  %.not76 = icmp eq i64 %8, 0
  br i1 %.not76, label %bb.c, label %.loopexit.1

bb.c:                                             ; preds = %.loopexit
  %invariant.gep.1 = getelementptr i8, ptr %i.b, i64 5 ; 2 uses
  %i.bg = load i8, ptr %invariant.gep.1, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %gep.1.1 = getelementptr i8, ptr %i.b, i64 6    ; 2 uses
  %i.bi = load i8, ptr %gep.1.1, align 1, !tbaa !10 ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %gep.2.1 = getelementptr i8, ptr %i.b, i64 7    ; 2 uses
  %i.bl = load i8, ptr %gep.2.1, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 16
  %i.bo = or disjoint i64 %i.bk, %i.bn
  %i.bp = or disjoint i64 %i.bo, %i.bh
  %gep.3.1 = getelementptr i8, ptr %i.b, i64 8    ; 2 uses
  %i.bq = load i8, ptr %gep.3.1, align 1, !tbaa !10
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 24
  %gep.4.1 = getelementptr i8, ptr %i.b, i64 9    ; 2 uses
  %i.bt = load i8, ptr %gep.4.1, align 1, !tbaa !10
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 32
  %i.bw = or disjoint i64 %i.bs, %i.bv
  %i.bx = or disjoint i64 %i.bw, %i.bp            ; 2 uses
  %gep.5.1 = getelementptr i8, ptr %i.b, i64 10   ; 2 uses
  %i.by = load i8, ptr %gep.5.1, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 40
  %i.cb = or disjoint i64 %i.ca, %i.bx            ; 3 uses
  %i.cc = and i64 %i.cb, 131941395562496
  %or.cond.1 = icmp eq i64 %i.cc, 43980465111040
  br i1 %or.cond.1, label %.loopexit.loopexit.1, label %.loopexit.1

.loopexit.loopexit.1:                             ; preds = %bb.c
  %i.cd = lshr i64 %i.bx, 19
  %i.ce = and i64 %i.cd, 1048575
  %i.cf = lshr i64 %i.cb, 22
  %i.cg = and i64 %i.cf, 1048576
  %i.ch = or disjoint i64 %i.ce, %i.cg
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.i, %i.ci             ; 2 uses
  %i.ck = and i64 %i.cb, 9223279128122523584
  %i.cl = and i32 %i.cj, 1048575
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 19
  %i.co = or disjoint i64 %i.cn, %i.ck
  %i.cp = and i32 %i.cj, 1048576
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 22
  %i.cs = and i64 %i.bh, 63
  %i.ct = or disjoint i64 %i.cr, %i.cs
  %i.cu = or disjoint i64 %i.ct, %i.co            ; 5 uses
  %i.cv = trunc i64 %i.cu to i8
  store i8 %i.cv, ptr %invariant.gep.1, align 1, !tbaa !10
  store i8 %i.bi, ptr %gep.1.1, align 1, !tbaa !10
  %i.cw = lshr i64 %i.cu, 16
  %i.cx = trunc i64 %i.cw to i8
  store i8 %i.cx, ptr %gep.2.1, align 1, !tbaa !10
  %i.cy = lshr i64 %i.cu, 24
  %i.cz = trunc i64 %i.cy to i8
  store i8 %i.cz, ptr %gep.3.1, align 1, !tbaa !10
  %i.da = lshr i64 %i.cu, 32
  %i.db = trunc i64 %i.da to i8
  store i8 %i.db, ptr %gep.4.1, align 1, !tbaa !10
  %i.dc = lshr i64 %i.cu, 40
  %i.dd = trunc nuw i64 %i.dc to i8
  store i8 %i.dd, ptr %gep.5.1, align 1, !tbaa !10
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.loopexit.1, %bb.c, %.loopexit
  %9 = shl nuw nsw i64 1, %i.e
  %10 = and i64 %9, 3425763327
  %.not77 = icmp eq i64 %10, 0
  br i1 %.not77, label %bb.d, label %.loopexit.2

bb.d:                                             ; preds = %.loopexit.1
  %invariant.gep.2 = getelementptr i8, ptr %i.b, i64 10 ; 2 uses
  %i.de = load i8, ptr %invariant.gep.2, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i64                    ; 2 uses
  %gep.1.2 = getelementptr i8, ptr %i.b, i64 11   ; 2 uses
  %i.dg = load i8, ptr %gep.1.2, align 1, !tbaa !10 ; 2 uses
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 8
  %gep.2.2 = getelementptr i8, ptr %i.b, i64 12   ; 2 uses
  %i.dj = load i8, ptr %gep.2.2, align 1, !tbaa !10
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 16
  %i.dm = or disjoint i64 %i.di, %i.dl
  %i.dn = or disjoint i64 %i.dm, %i.df
  %gep.3.2 = getelementptr i8, ptr %i.b, i64 13   ; 2 uses
  %i.do = load i8, ptr %gep.3.2, align 1, !tbaa !10
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 24
  %gep.4.2 = getelementptr i8, ptr %i.b, i64 14   ; 2 uses
  %i.dr = load i8, ptr %gep.4.2, align 1, !tbaa !10
  %i.ds = zext i8 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 32
  %i.du = or disjoint i64 %i.dq, %i.dt
  %i.dv = or disjoint i64 %i.du, %i.dn            ; 2 uses
  %gep.5.2 = getelementptr i8, ptr %i.b, i64 15   ; 2 uses
  %i.dw = load i8, ptr %gep.5.2, align 1, !tbaa !10
  %i.dx = zext i8 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 40
  %i.dz = or disjoint i64 %i.dy, %i.dv            ; 3 uses
  %i.ea = and i64 %i.dz, 263882791124992
  %or.cond.2 = icmp eq i64 %i.ea, 87960930222080
  br i1 %or.cond.2, label %.loopexit.loopexit.2, label %.loopexit.2

.loopexit.loopexit.2:                             ; preds = %bb.d
  %i.eb = lshr i64 %i.dv, 20
  %i.ec = lshr i64 %i.dz, 23
  %i.ed = and i64 %i.ec, 1048576
  %i.ee = or disjoint i64 %i.eb, %i.ed
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = add nuw nsw i32 %i.i, %i.ef             ; 2 uses
  %i.eh = and i64 %i.dz, 9223186219390271360
  %i.ei = and i32 %i.eg, 1048575
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 20
  %i.el = or disjoint i64 %i.ek, %i.eh
  %i.em = and i32 %i.eg, 1048576
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl nuw nsw i64 %i.en, 23
  %i.ep = and i64 %i.df, 127
  %i.eq = or disjoint i64 %i.eo, %i.ep
  %i.er = or disjoint i64 %i.eq, %i.el            ; 5 uses
  %i.es = trunc i64 %i.er to i8
  store i8 %i.es, ptr %invariant.gep.2, align 1, !tbaa !10
  store i8 %i.dg, ptr %gep.1.2, align 1, !tbaa !10
  %i.et = lshr i64 %i.er, 16
  %i.eu = trunc i64 %i.et to i8
  store i8 %i.eu, ptr %gep.2.2, align 1, !tbaa !10
  %i.ev = lshr i64 %i.er, 24
  %i.ew = trunc i64 %i.ev to i8
  store i8 %i.ew, ptr %gep.3.2, align 1, !tbaa !10
  %i.ex = lshr i64 %i.er, 32
  %i.ey = trunc i64 %i.ex to i8
  store i8 %i.ey, ptr %gep.4.2, align 1, !tbaa !10
  %i.ez = lshr i64 %i.er, 40
  %i.fa = trunc nuw nsw i64 %i.ez to i8
  store i8 %i.fa, ptr %gep.5.2, align 1, !tbaa !10
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.loopexit.loopexit.2, %bb.d, %.loopexit.1
  %i.fb = add i64 %i.a, 16                        ; 2 uses
  %.not = icmp ugt i64 %i.fb, %4
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.loopexit.2, %bb.a
  %.060.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %.loopexit.2 ]
  ret i64 %.060.lcssa
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !11}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
