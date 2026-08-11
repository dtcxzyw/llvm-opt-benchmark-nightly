inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN15pme_spline_workC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN15pme_spline_workC2Ei

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN15pme_spline_workC2Ei(ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 align 2 {
.preheader34.preheader:
  %.ptr28 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.a = icmp slt i32 %1, 9
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader34.preheader
  %i.b = sub i32 9, %1                            ; 3 uses
  %i.c = freeze <8 x float> poison                ; 13 uses
  %i.d = freeze <4 x float> poison                ; 13 uses
  %i.e = shufflevector <4 x float> zeroinitializer, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.f = shufflevector <8 x float> %i.e, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 12 uses
  %i.g = sext i32 %1 to i64                       ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %i.h = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.j = icmp slt <4 x i32> %i.i, <i32 1, i32 2, i32 3, i32 4>
  %i.k = select <4 x i1> %i.j, <4 x float> splat (float 1.000000e+00), <4 x float> splat (float -1.000000e+00)
  %i.l = insertelement <4 x i32> <i32 poison, i32 8, i32 poison, i32 poison>, i32 %1, i64 0
  %i.m = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.n = insertelement <4 x i32> <i32 5, i32 6, i32 7, i32 poison>, i32 %1, i64 3 ; 2 uses
  %i.o = icmp slt <4 x i32> %i.m, %i.n
  %i.p = icmp eq <4 x i32> %i.m, %i.n
  %i.q = shufflevector <4 x i1> %i.o, <4 x i1> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.r = select <4 x i1> %i.q, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00>, <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00>
  %i.s = shufflevector <4 x float> %i.k, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = shufflevector <8 x float> %i.s, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = fcmp olt <16 x float> %i.t, %i.f
  %i.v = and <16 x i1> %i.u, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  store <16 x i1> %i.v, ptr %0, align 2, !tbaa !9
  %i.w = shufflevector <4 x float> %i.r, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.x = shufflevector <8 x float> %i.w, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.y = fcmp olt <16 x float> %i.x, %i.f
  %i.z = and <16 x i1> %i.y, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  store <16 x i1> %i.z, ptr %.ptr28, align 2, !tbaa !9
  %exitcond.peel.not = icmp slt i32 %i.b, 2
  br i1 %exitcond.peel.not, label %._crit_edge, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %.preheader.lr.ph
  %i.aa = icmp slt i32 %1, 1
  %i.ab = select i1 %i.aa, float 1.000000e+00, float -1.000000e+00
  %.sroa.0.4.vec.insert98 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ab, i64 1
  %i.ac = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ad = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = icmp slt <2 x i32> %i.ad, <i32 2, i32 3>
  %i.af = select <2 x i1> %i.ae, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00)
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.12.vec.insert114157 = shufflevector <4 x float> %.sroa.0.4.vec.insert98, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ah = icmp slt <4 x i32> %i.i, <i32 4, i32 5, i32 6, i32 7>
  %i.ai = select <4 x i1> %i.ah, <4 x float> splat (float 1.000000e+00), <4 x float> splat (float -1.000000e+00)
  %i.aj = shufflevector <4 x float> %.sroa.0.12.vec.insert114157, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = fcmp olt <16 x float> %i.ak, %i.f
  %i.am = and <16 x i1> %i.al, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  store <16 x i1> %i.am, ptr %i.an, align 2, !tbaa !9
  %i.ao = shufflevector <4 x float> %i.ai, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aq = fcmp olt <16 x float> %i.ap, %i.f
  %i.ar = and <16 x i1> %i.aq, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 14
  store <16 x i1> %i.ar, ptr %i.as, align 2, !tbaa !9
  %exitcond.peel52.not = icmp eq i32 %1, 7
  br i1 %exitcond.peel52.not, label %._crit_edge, label %.preheader.peel.next39

.preheader.peel.next39:                           ; preds = %.preheader.peel.next
  %i.at = icmp slt <2 x i32> %i.ad, <i32 1, i32 2>
  %i.au = select <2 x i1> %i.at, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00)
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.12.vec.insert116156 = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aw = icmp slt <4 x i32> %i.i, <i32 3, i32 4, i32 5, i32 6>
  %i.ax = select <4 x i1> %i.aw, <4 x float> splat (float 1.000000e+00), <4 x float> splat (float -1.000000e+00)
  %i.ay = shufflevector <4 x float> %.sroa.0.12.vec.insert116156, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = fcmp olt <16 x float> %i.az, %i.f
  %i.bb = and <16 x i1> %i.ba, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <16 x i1> %i.bb, ptr %i.bc, align 2, !tbaa !9
  %i.bd = shufflevector <4 x float> %i.ax, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = shufflevector <8 x float> %i.bd, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = fcmp olt <16 x float> %i.be, %i.f
  %i.bg = and <16 x i1> %i.bf, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i1> %i.bg, ptr %i.bh, align 2, !tbaa !9
  %exitcond.peel66.not = icmp eq i32 %1, 6
  br i1 %exitcond.peel66.not, label %._crit_edge, label %.preheader.peel.next53

.preheader.peel.next53:                           ; preds = %.preheader.peel.next39
  %i.bi = icmp slt i32 %1, 1
  %i.bj = select i1 %i.bi, float 1.000000e+00, float -1.000000e+00
  %.sroa.0.12.vec.insert118 = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bj, i64 3
  %i.bk = icmp slt <4 x i32> %i.i, <i32 2, i32 3, i32 4, i32 5>
  %i.bl = select <4 x i1> %i.bk, <4 x float> splat (float 1.000000e+00), <4 x float> splat (float -1.000000e+00)
  %i.bm = shufflevector <4 x float> %.sroa.0.12.vec.insert118, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = shufflevector <8 x float> %i.bm, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = fcmp olt <16 x float> %i.bn, %i.f
  %i.bp = and <16 x i1> %i.bo, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 6
  store <16 x i1> %i.bp, ptr %i.bq, align 2, !tbaa !9
  %i.br = shufflevector <4 x float> %i.bl, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bt = fcmp olt <16 x float> %i.bs, %i.f
  %i.bu = and <16 x i1> %i.bt, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18
  store <16 x i1> %i.bu, ptr %i.bv, align 2, !tbaa !9
  %exitcond.peel80.not = icmp eq i32 %1, 5
  br i1 %exitcond.peel80.not, label %._crit_edge, label %.preheader.peel.next67

.preheader.peel.next67:                           ; preds = %.preheader.peel.next53
  %i.bw = shufflevector <4 x float> splat (float 1.000000e+00), <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = shufflevector <8 x float> %i.bw, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.by = fcmp olt <16 x float> %i.bx, %i.f
  %i.bz = and <16 x i1> %i.by, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false> ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ca = icmp eq i32 %1, 4
  br i1 %i.ca, label %.preheader.epil.preheader, label %.preheader.peel.next67.new

.preheader.peel.next67.new:                       ; preds = %.preheader.peel.next67
  %i.cb = and i64 %wide.trip.count, 2147483646
  %i.cc = add nsw i64 %i.cb, -6
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.peel.next67.new
  %indvars.iv = phi i64 [ 4, %.preheader.peel.next67.new ], [ %indvars.iv.next.1, %.preheader ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.peel.next67.new ], [ %niter.next.1, %.preheader ] ; 2 uses
  %i.cd = add nsw i64 %indvars.iv, %i.g
  %i.ce = insertelement <4 x i64> poison, i64 %indvars.iv, i64 0
  %i.cf = shufflevector <4 x i64> %i.ce, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cg = icmp samesign ugt <4 x i64> %i.cf, <i64 4, i64 5, i64 6, i64 7>
  %i.ch = insertelement <4 x i64> poison, i64 %i.cd, i64 0
  %i.ci = shufflevector <4 x i64> %i.ch, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cj = icmp slt <4 x i64> %i.ci, <i64 5, i64 6, i64 7, i64 8>
  %i.ck = select <4 x i1> %i.cg, <4 x i1> splat (i1 true), <4 x i1> %i.cj
  %i.cl = select <4 x i1> %i.ck, <4 x float> splat (float 1.000000e+00), <4 x float> splat (float -1.000000e+00)
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store <16 x i1> %i.bz, ptr %i.cm, align 2, !tbaa !9
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.co = shufflevector <8 x float> %i.cn, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cp = fcmp olt <16 x float> %i.co, %i.f
  %i.cq = and <16 x i1> %i.cp, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.ptr28, i64 %indvars.iv
  store <16 x i1> %i.cq, ptr %i.cr, align 2, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.cs = add nsw i64 %indvars.iv.next, %i.g
  %i.ct = insertelement <4 x i64> poison, i64 %indvars.iv.next, i64 0
  %i.cu = shufflevector <4 x i64> %i.ct, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cv = icmp samesign ugt <4 x i64> %i.cu, <i64 4, i64 5, i64 6, i64 7>
  %i.cw = insertelement <4 x i64> poison, i64 %i.cs, i64 0
  %i.cx = shufflevector <4 x i64> %i.cw, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cy = icmp slt <4 x i64> %i.cx, <i64 5, i64 6, i64 7, i64 8>
  %i.cz = select <4 x i1> %i.cv, <4 x i1> splat (i1 true), <4 x i1> %i.cy
  %i.da = select <4 x i1> %i.cz, <4 x float> splat (float 1.000000e+00), <4 x float> splat (float -1.000000e+00)
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store <16 x i1> %i.bz, ptr %i.db, align 2, !tbaa !9
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dd = shufflevector <8 x float> %i.dc, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.de = fcmp olt <16 x float> %i.dd, %i.f
  %i.df = and <16 x i1> %i.de, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.ptr28, i64 %indvars.iv.next
  store <16 x i1> %i.df, ptr %i.dg, align 2, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.cc
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !11

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.peel.next67
  %indvars.iv.epil.init = phi i64 [ 4, %.preheader.peel.next67 ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod158 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.dh = add nsw i64 %indvars.iv.epil.init, %i.g
  %i.di = insertelement <4 x i64> poison, i64 %indvars.iv.epil.init, i64 0
  %i.dj = shufflevector <4 x i64> %i.di, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dk = icmp samesign ugt <4 x i64> %i.dj, <i64 4, i64 5, i64 6, i64 7>
  %i.dl = insertelement <4 x i64> poison, i64 %i.dh, i64 0
  %i.dm = shufflevector <4 x i64> %i.dl, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dn = icmp slt <4 x i64> %i.dm, <i64 5, i64 6, i64 7, i64 8>
  %i.do = select <4 x i1> %i.dk, <4 x i1> splat (i1 true), <4 x i1> %i.dn
  %i.dp = select <4 x i1> %i.do, <4 x float> splat (float 1.000000e+00), <4 x float> splat (float -1.000000e+00)
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init
  store <16 x i1> %i.bz, ptr %i.dq, align 2, !tbaa !9
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.d, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ds = shufflevector <8 x float> %i.dr, <8 x float> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dt = fcmp olt <16 x float> %i.ds, %i.f
  %i.du = and <16 x i1> %i.dt, <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.ptr28, i64 %indvars.iv.epil.init
  store <16 x i1> %i.du, ptr %i.dv, align 2, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader.lr.ph, %.preheader.peel.next, %.preheader.peel.next39, %.preheader.peel.next53, %.preheader34.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.peeled.count", i32 4}
end_hunk_0
