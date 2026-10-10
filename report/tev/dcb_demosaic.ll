Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dcb_demosaic?download=true
inline.NumInlined: 49
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw14dcb_refinementEv:bb.a

bb.au:                                            ; preds = %bb.at
  br i1 %i.ia, label %bb.av, label %.thread1697

bb.av:                                            ; preds = %bb.au
  %spec.select1758 = tail call i16 @llvm.umin.i16(i16 %i.hh, i16 %i.hg)
  br label %bb.aw

.thread1697:                                      ; preds = %bb.au
  %spec.select1759 = tail call i16 @llvm.umin.i16(i16 %i.hh, i16 %.)
  br label %bb.aw

bb.aw:                                            ; preds = %.thread1697, %bb.av, %bb.at, %bb.as, %bb.ak, %.thread1874
  %i.on = phi i16 [ %spec.select1758, %bb.av ], [ %i.hj, %.thread1874 ], [ %i.hn, %bb.ak ], [ %i.hr, %bb.as ], [ %i.hv, %bb.at ], [ %spec.select1759, %.thread1697 ]
  %i.oo = uitofp i16 %i.on to float               ; 5 uses
  %.1594 = tail call i16 @llvm.umax.i16(i16 %i.hx, i16 %i.hz) ; 10 uses
  %i.op = icmp ugt i16 %i.hg, %.1594              ; 4 uses
  %minmaxop1797 = tail call i16 @llvm.umax.i16(i16 %i.hg, i16 %.1594)
  %i.oq = tail call i16 @llvm.umax.i16(i16 %minmaxop1797, i16 %i.hh)
  %i.or = icmp ugt i16 %i.hv, %i.oq               ; 4 uses
  br i1 %i.or, label %.thread1875, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %..1594 = tail call i16 @llvm.umax.i16(i16 %i.hg, i16 %.1594)
  %spec.select1763 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %..1594)
  %i.os = icmp ugt i16 %i.hr, %spec.select1763    ; 2 uses
  %.mux1889 = select i1 %i.os, i16 %i.hr, i16 %i.hv
  br i1 %i.os, label %.thread1876, label %bb.ay

.thread1875:                                      ; preds = %bb.aw
  %spec.select1887 = tail call i16 @llvm.umax.i16(i16 %i.hr, i16 %i.hv)
  br label %.thread1876

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.op, label %bb.az, label %.thread1705

bb.az:                                            ; preds = %bb.ay
  %spec.select1766 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %i.hg)
  br label %.thread1876

.thread1705:                                      ; preds = %bb.ay
  %spec.select1767 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %.1594)
  br label %.thread1876

.thread1876:                                      ; preds = %.thread1875, %bb.ax, %.thread1705, %bb.az
  %i.ot = phi i16 [ %spec.select1766, %bb.az ], [ %.mux1889, %bb.ax ], [ %spec.select1887, %.thread1875 ], [ %spec.select1767, %.thread1705 ]
  %i.ou = icmp ugt i16 %i.hn, %i.ot
  br i1 %i.ou, label %.thread1878, label %bb.ba

bb.ba:                                            ; preds = %.thread1876
  br i1 %i.or, label %.thread1877, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %..15941902 = tail call i16 @llvm.umax.i16(i16 %i.hg, i16 %.1594)
  %spec.select1771 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %..15941902)
  %i.ov = icmp ugt i16 %i.hr, %spec.select1771    ; 2 uses
  %.mux1893 = select i1 %i.ov, i16 %i.hr, i16 %i.hv
  br i1 %i.ov, label %.thread1878, label %bb.bc

.thread1877:                                      ; preds = %bb.ba
  %spec.select1891 = tail call i16 @llvm.umax.i16(i16 %i.hr, i16 %i.hv)
  br label %.thread1878

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.op, label %bb.bd, label %.thread1713

bb.bd:                                            ; preds = %bb.bc
  %spec.select1774 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %i.hg)
  br label %.thread1878

.thread1713:                                      ; preds = %bb.bc
  %spec.select1775 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %.1594)
  br label %.thread1878

.thread1878:                                      ; preds = %.thread1877, %bb.bb, %.thread1713, %bb.bd, %.thread1876
  %i.ow = phi i16 [ %spec.select1774, %bb.bd ], [ %i.hn, %.thread1876 ], [ %.mux1893, %bb.bb ], [ %spec.select1891, %.thread1877 ], [ %spec.select1775, %.thread1713 ]
  %i.ox = icmp ugt i16 %i.hj, %i.ow
  br i1 %i.ox, label %.thread1882, label %bb.be

bb.be:                                            ; preds = %.thread1878
  br i1 %i.or, label %.thread1879, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %..15941903 = tail call i16 @llvm.umax.i16(i16 %i.hg, i16 %.1594)
  %spec.select1779 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %..15941903)
  %i.oy = icmp ugt i16 %i.hr, %spec.select1779    ; 2 uses
  %.mux1897 = select i1 %i.oy, i16 %i.hr, i16 %i.hv
  br i1 %i.oy, label %.thread1880, label %bb.bg

.thread1879:                                      ; preds = %bb.be
  %spec.select1895 = tail call i16 @llvm.umax.i16(i16 %i.hr, i16 %i.hv)
  br label %.thread1880

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.op, label %bb.bh, label %.thread1721

bb.bh:                                            ; preds = %bb.bg
  %spec.select1782 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %i.hg)
  br label %.thread1880

.thread1721:                                      ; preds = %bb.bg
  %spec.select1783 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %.1594)
  br label %.thread1880

.thread1880:                                      ; preds = %.thread1879, %bb.bf, %.thread1721, %bb.bh
  %i.oz = phi i16 [ %spec.select1782, %bb.bh ], [ %.mux1897, %bb.bf ], [ %spec.select1895, %.thread1879 ], [ %spec.select1783, %.thread1721 ]
  %i.pa = icmp ugt i16 %i.hn, %i.oz
  br i1 %i.pa, label %.thread1882, label %bb.bi

bb.bi:                                            ; preds = %.thread1880
  br i1 %i.or, label %.thread1881, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %..15941904 = tail call i16 @llvm.umax.i16(i16 %i.hg, i16 %.1594)
  %spec.select1787 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %..15941904)
  %i.pb = icmp ugt i16 %i.hr, %spec.select1787    ; 2 uses
  %.mux1901 = select i1 %i.pb, i16 %i.hr, i16 %i.hv
  br i1 %i.pb, label %.thread1882, label %bb.bk

.thread1881:                                      ; preds = %bb.bi
  %spec.select1899 = tail call i16 @llvm.umax.i16(i16 %i.hr, i16 %i.hv)
  br label %.thread1882

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.op, label %bb.bl, label %.thread1729

bb.bl:                                            ; preds = %bb.bk
  %spec.select1790 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %i.hg)
  br label %.thread1882

.thread1729:                                      ; preds = %bb.bk
  %spec.select1791 = tail call i16 @llvm.umax.i16(i16 %i.hh, i16 %.1594)
  br label %.thread1882

.thread1882:                                      ; preds = %.thread1881, %bb.bj, %.thread1729, %bb.bl, %.thread1880, %.thread1878
  %i.pc = phi i16 [ %spec.select1790, %bb.bl ], [ %i.hj, %.thread1878 ], [ %i.hn, %.thread1880 ], [ %.mux1901, %bb.bj ], [ %spec.select1899, %.thread1881 ], [ %spec.select1791, %.thread1729 ]
  %i.pd = uitofp i16 %i.pc to float               ; 5 uses
  %i.pe = fcmp olt float %i.pd, %i.oo
  %i.pf = uitofp i16 %i.hf to float               ; 4 uses
  br i1 %i.pe, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.thread1882
  %i.pg = fcmp olt float %i.pf, %i.oo
  %.1658 = select i1 %i.pg, float %i.pf, float %i.oo ; 2 uses
  %i.ph = fcmp olt float %.1658, %i.pd
  br i1 %i.ph, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br label %bb.bq

bb.bo:                                            ; preds = %.thread1882
  %i.pi = fcmp olt float %i.pf, %i.pd
  %.1660 = select i1 %i.pi, float %i.pf, float %i.pd ; 2 uses
  %i.pj = fcmp olt float %.1660, %i.oo
  br i1 %i.pj, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.pk = phi float [ %i.pd, %bb.bm ], [ %i.oo, %bb.bo ], [ %.1658, %bb.bn ], [ %.1660, %bb.bp ]
  %i.pl = fptoui float %i.pk to i16
  %i.pm = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %i.pl, ptr %i.pm, align 2, !tbaa !80
  %i.pn = add nuw nsw i32 %.015041805, 2          ; 2 uses
  %i.po = icmp slt i32 %i.pn, %i.l
  br i1 %i.po, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !293

._crit_edge.loopexit:                             ; preds = %bb.bq
  %.pre1817 = load i16, ptr %i.c, align 4, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.pp = phi i16 [ %.pre1817, %._crit_edge.loopexit ], [ %i.q, %bb.b ] ; 2 uses
  %i.pq = add nuw nsw i32 %.015051807, 1          ; 2 uses
  %i.pr = zext i16 %i.pp to i32
  %i.ps = add nsw i32 %i.pr, -4
  %i.pt = icmp slt i32 %i.pq, %i.ps
  br i1 %i.pt, label %bb.b, label %._crit_edge1810, !llvm.loop !294

._crit_edge1810:                                  ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10rgb_to_lchEPA3_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !78
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i16, ptr %i.d, align 2, !tbaa !77
  %i.f = zext i16 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, %i.c               ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.g, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i16, ptr %i.j, align 2, !tbaa !80
  %i.n = load i16, ptr %i.l, align 2, !tbaa !80
  %i.o = insertelement <2 x i16> poison, i16 %i.m, i64 0
  %i.p = insertelement <2 x i16> %i.o, i16 %i.n, i64 1 ; 2 uses
  %i.q = zext <2 x i16> %i.p to <2 x i32>         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.t = load i16, ptr %i.r, align 2, !tbaa !80
  %i.u = load i16, ptr %i.s, align 2, !tbaa !80
  %i.v = insertelement <2 x i16> poison, i16 %i.t, i64 0
  %i.w = insertelement <2 x i16> %i.v, i16 %i.u, i64 1 ; 2 uses
  %i.x = zext <2 x i16> %i.w to <2 x i32>         ; 2 uses
  %i.y = add nuw nsw <2 x i32> %i.x, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ab = load i16, ptr %i.z, align 2, !tbaa !80
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !80
  %i.ad = insertelement <2 x i16> poison, i16 %i.ab, i64 0
  %i.ae = insertelement <2 x i16> %i.ad, i16 %i.ac, i64 1 ; 2 uses
  %i.af = zext <2 x i16> %i.ae to <2 x i32>
  %i.ag = add nuw nsw <2 x i32> %i.y, %i.af
  %i.ah = uitofp nneg <2 x i32> %i.ag to <2 x double>
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %index
  %i.aj = sub nsw <2 x i32> %i.q, %i.x
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = fmul nnan <2 x double> %i.ak, splat (double f0x3FFBB67AE875ED0F)
  %i.am = uitofp <2 x i16> %i.ae to <2 x double>
  %i.an = uitofp <2 x i16> %i.p to <2 x double>
  %i.ao = fneg <2 x double> %i.an
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ao)
  %i.aq = uitofp <2 x i16> %i.w to <2 x double>
  %i.ar = fsub <2 x double> %i.ap, %i.aq
  %i.as = shufflevector <2 x double> %i.ah, <2 x double> %i.al, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.at = shufflevector <2 x double> %i.ar, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.as, <4 x double> %i.at, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.ai, align 8, !tbaa !86
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %scalar.ph.preheader, label %vector.body, !llvm.loop !295

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !80 ; 2 uses
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !80 ; 2 uses
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = add nuw nsw i32 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !80 ; 2 uses
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.bb, %i.be
  %i.bg = uitofp nneg i32 %i.bf to double
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store double %i.bg, ptr %i.bh, align 8, !tbaa !86
  %i.bi = sub nsw i32 %i.ax, %i.ba
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = fmul nnan double %i.bj, f0x3FFBB67AE875ED0F
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store double %i.bk, ptr %i.bl, align 8, !tbaa !86
  %i.bm = uitofp i16 %i.bd to double
  %i.bn = uitofp i16 %i.aw to double
  %i.bo = fneg double %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double 2.000000e+00, double %i.bo)
  %i.bq = uitofp i16 %i.az to double
  %i.br = fsub double %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store double %i.br, ptr %i.bs, align 8, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !296

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10lch_to_rgbEPA3_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.c = load i16, ptr %i.a, align 4, !tbaa !78
  %i.d = zext i16 %i.c to i32
  %i.e = load i16, ptr %i.b, align 2, !tbaa !77
  %i.f = zext i16 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, %i.d
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.n = load <2 x double>, ptr %i.l, align 8, !tbaa !86 ; 2 uses
  %i.o = insertelement <2 x double> %i.n, double %i.k, i64 0
  %i.p = fdiv <2 x double> %i.o, <double 3.000000e+00, double 6.000000e+00> ; 3 uses
  %shift = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.p, %shift ; 2 uses
  %i.q = fdiv <2 x double> %i.n, <double f0x400BB67AE85390F7, double 3.000000e+00> ; 3 uses
  %foldExtExtBinop86 = fadd <2 x double> %foldExtExtBinop, %i.q
  %foldExtExtBinop88 = fsub <2 x double> %foldExtExtBinop, %i.q
  %i.r = shufflevector <2 x double> %foldExtExtBinop86, <2 x double> %foldExtExtBinop88, <2 x i32> <i32 0, i32 2>
  %i.s = fptosi <2 x double> %i.r to <2 x i32>
  %i.t = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.s, <2 x i32> zeroinitializer)
  %i.u = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.t, <2 x i32> splat (i32 65535))
  %i.v = trunc nuw <2 x i32> %i.u to <2 x i16>
  store <2 x i16> %i.v, ptr %i.m, align 2, !tbaa !80
  %shift90 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop91 = fadd <2 x double> %i.p, %shift90
  %i.w = extractelement <2 x double> %foldExtExtBinop91, i64 0
  %i.x = fptosi double %i.w to i32
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 65535)
  %i.aa = trunc nuw i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i16, ptr %i.a, align 4, !tbaa !78
  %i.ad = zext i16 %i.ac to i64
  %i.ae = load i16, ptr %i.b, align 2, !tbaa !77
  %i.af = zext i16 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, %i.ad
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15fbdd_correctionEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !78   ; 2 uses
  %i.e = icmp ugt i16 %i.d, 4
  br i1 %i.e, label %.lr.ph985.preheader, label %._crit_edge986

.lr.ph985.preheader:                              ; preds = %bb.a
  %i.f = load i16, ptr %i.b, align 2, !tbaa !77   ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  br label %.lr.ph985

.lr.ph985:                                        ; preds = %.lr.ph985.preheader, %._crit_edge
  %i.h = phi i16 [ %i.au, %._crit_edge ], [ %i.d, %.lr.ph985.preheader ]
  %i.i = phi i16 [ %i.av, %._crit_edge ], [ %i.f, %.lr.ph985.preheader ] ; 3 uses
  %.0868983 = phi i32 [ %i.aw, %._crit_edge ], [ 2, %.lr.ph985.preheader ] ; 3 uses
  %i.j = icmp ugt i16 %i.i, 4
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph985
  %i.k = zext i16 %i.i to i32
  %i.l = mul i32 %.0868983, %i.k
  %i.m = add nuw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread994
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread994 ] ; 4 uses
  %.0867981 = phi i32 [ 2, %.lr.ph.preheader ], [ %i.ap, %.thread994 ] ; 2 uses
  %i.o = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.0868983, i32 noundef %.0867981)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !85   ; 4 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = sext i32 %i.o to i64                     ; 5 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !80   ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.w = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.s
  %i.x = load i16, ptr %i.w, align 2, !tbaa !80   ; 6 uses
  %i.y = sub nsw i64 %indvars.iv, %i.g
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.y
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.s
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !80 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.g
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.s
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !80 ; 2 uses
  %. = tail call i16 @llvm.umax.i16(i16 %i.ab, i16 %i.af) ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw10fbdd_greenEv:bb.a
  %spec.select1909 = tail call i16 @llvm.umin.i16(i16 %i.bx, i16 %.)
  br label %bb.ap

bb.ap:                                            ; preds = %.thread1838, %bb.ao, %bb.am, %bb.al, %bb.ad, %.thread2022
  %i.ox = phi i16 [ %spec.select1908, %bb.ao ], [ %i.hv, %.thread2022 ], [ %i.hz, %bb.ad ], [ %i.id, %bb.al ], [ %i.ih, %bb.am ], [ %spec.select1909, %.thread1838 ] ; 3 uses
  %.1749 = tail call i16 @llvm.umax.i16(i16 %i.ii, i16 %i.ij) ; 10 uses
  %i.oy = icmp ugt i16 %i.bo, %.1749              ; 4 uses
  %minmaxop1949 = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 %.1749)
  %i.oz = tail call i16 @llvm.umax.i16(i16 %minmaxop1949, i16 %i.bx)
  %i.pa = icmp ugt i16 %i.ih, %i.oz               ; 4 uses
  br i1 %i.pa, label %.thread2023, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %..1749 = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 %.1749)
  %spec.select1913 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %..1749)
  %i.pb = icmp ugt i16 %i.id, %spec.select1913    ; 2 uses
  %.mux2045 = select i1 %i.pb, i16 %i.id, i16 %i.ih
  br i1 %i.pb, label %.thread2024, label %bb.ar

.thread2023:                                      ; preds = %bb.ap
  %spec.select2043 = tail call i16 @llvm.umax.i16(i16 %i.id, i16 %i.ih)
  br label %.thread2024

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.oy, label %bb.as, label %.thread1846

bb.as:                                            ; preds = %bb.ar
  %spec.select1916 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %i.bo)
  br label %.thread2024

.thread1846:                                      ; preds = %bb.ar
  %spec.select1917 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %.1749)
  br label %.thread2024

.thread2024:                                      ; preds = %.thread2023, %bb.aq, %.thread1846, %bb.as
  %i.pc = phi i16 [ %spec.select1916, %bb.as ], [ %.mux2045, %bb.aq ], [ %spec.select2043, %.thread2023 ], [ %spec.select1917, %.thread1846 ]
  %i.pd = icmp ugt i16 %i.hz, %i.pc
  br i1 %i.pd, label %.thread2026, label %bb.at

bb.at:                                            ; preds = %.thread2024
  br i1 %i.pa, label %.thread2025, label %bb.au

bb.au:                                            ; preds = %bb.at
  %..17492064 = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 %.1749)
  %spec.select1921 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %..17492064)
  %i.pe = icmp ugt i16 %i.id, %spec.select1921    ; 2 uses
  %.mux2049 = select i1 %i.pe, i16 %i.id, i16 %i.ih
  br i1 %i.pe, label %.thread2026, label %bb.av

.thread2025:                                      ; preds = %bb.at
  %spec.select2047 = tail call i16 @llvm.umax.i16(i16 %i.id, i16 %i.ih)
  br label %.thread2026

bb.av:                                            ; preds = %bb.au
  br i1 %i.oy, label %bb.aw, label %.thread1854

bb.aw:                                            ; preds = %bb.av
  %spec.select1924 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %i.bo)
  br label %.thread2026

.thread1854:                                      ; preds = %bb.av
  %spec.select1925 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %.1749)
  br label %.thread2026

.thread2026:                                      ; preds = %.thread2025, %bb.au, %.thread1854, %bb.aw, %.thread2024
  %i.pf = phi i16 [ %spec.select1924, %bb.aw ], [ %i.hz, %.thread2024 ], [ %.mux2049, %bb.au ], [ %spec.select2047, %.thread2025 ], [ %spec.select1925, %.thread1854 ]
  %i.pg = icmp ugt i16 %i.hv, %i.pf
  br i1 %i.pg, label %.thread2030, label %bb.ax

bb.ax:                                            ; preds = %.thread2026
  br i1 %i.pa, label %.thread2027, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %..17492065 = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 %.1749)
  %spec.select1929 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %..17492065)
  %i.ph = icmp ugt i16 %i.id, %spec.select1929    ; 2 uses
  %.mux2053 = select i1 %i.ph, i16 %i.id, i16 %i.ih
  br i1 %i.ph, label %.thread2028, label %bb.az

.thread2027:                                      ; preds = %bb.ax
  %spec.select2051 = tail call i16 @llvm.umax.i16(i16 %i.id, i16 %i.ih)
  br label %.thread2028

bb.az:                                            ; preds = %bb.ay
  br i1 %i.oy, label %bb.ba, label %.thread1862

bb.ba:                                            ; preds = %bb.az
  %spec.select1932 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %i.bo)
  br label %.thread2028

.thread1862:                                      ; preds = %bb.az
  %spec.select1933 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %.1749)
  br label %.thread2028

.thread2028:                                      ; preds = %.thread2027, %bb.ay, %.thread1862, %bb.ba
  %i.pi = phi i16 [ %spec.select1932, %bb.ba ], [ %.mux2053, %bb.ay ], [ %spec.select2051, %.thread2027 ], [ %spec.select1933, %.thread1862 ]
  %i.pj = icmp ugt i16 %i.hz, %i.pi
  br i1 %i.pj, label %.thread2030, label %bb.bb

bb.bb:                                            ; preds = %.thread2028
  br i1 %i.pa, label %.thread2029, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %..17492066 = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 %.1749)
  %spec.select1937 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %..17492066)
  %i.pk = icmp ugt i16 %i.id, %spec.select1937    ; 2 uses
  %.mux2057 = select i1 %i.pk, i16 %i.id, i16 %i.ih
  br i1 %i.pk, label %.thread2030, label %bb.bd

.thread2029:                                      ; preds = %bb.bb
  %spec.select2055 = tail call i16 @llvm.umax.i16(i16 %i.id, i16 %i.ih)
  br label %.thread2030

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.oy, label %bb.be, label %.thread1870

bb.be:                                            ; preds = %bb.bd
  %spec.select1940 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %i.bo)
  br label %.thread2030

.thread1870:                                      ; preds = %bb.bd
  %spec.select1941 = tail call i16 @llvm.umax.i16(i16 %i.bx, i16 %.1749)
  br label %.thread2030

.thread2030:                                      ; preds = %.thread2029, %bb.bc, %.thread1870, %bb.be, %.thread2028, %.thread2026
  %i.pl = phi i16 [ %spec.select1940, %bb.be ], [ %i.hv, %.thread2026 ], [ %i.hz, %.thread2028 ], [ %.mux2057, %bb.bc ], [ %spec.select2055, %.thread2029 ], [ %spec.select1941, %.thread1870 ] ; 3 uses
  %.2067 = tail call i16 @llvm.umax.i16(i16 %i.pl, i16 %i.ox) ; 2 uses
  %.2069.v = tail call i16 @llvm.umin.i16(i16 %i.pl, i16 %i.ox)
  %.2069 = zext i16 %.2069.v to i32
  %.2070 = tail call i16 @llvm.umin.i16(i16 %i.pl, i16 %i.ox)
  %i.pm = icmp ugt i16 %.2067, %i.hs
  %i.pn = icmp samesign ult i32 %i.hq, %.2069
  %i.po = select i1 %i.pm, i1 %i.pn, i1 false
  %.1814 = tail call i16 @llvm.umin.i16(i16 %.2067, i16 %i.hs)
  %spec.select1943 = select i1 %i.po, i16 %.2070, i16 %.1814
  store i16 %spec.select1943, ptr %i.ht, align 2, !tbaa !80
  %i.pp = add nuw nsw i32 %.016641957, 2          ; 2 uses
  %i.pq = icmp slt i32 %i.pp, %i.n
  br i1 %i.pq, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !301

._crit_edge.loopexit:                             ; preds = %.thread2030
  %.pre = load i16, ptr %i.c, align 4, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.pr = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %bb.b ] ; 2 uses
  %i.ps = add nuw nsw i32 %.016651967, 1          ; 2 uses
  %i.pt = zext i16 %i.pr to i32
  %i.pu = add nsw i32 %i.pt, -5
  %i.pv = icmp slt i32 %i.ps, %i.pu
  br i1 %i.pv, label %bb.b, label %._crit_edge1970, !llvm.loop !302

._crit_edge1970:                                  ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw4fbddEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !305
  %.not = icmp ne i32 %i.b, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i32, ptr %i.c, align 8
  %.not6 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not6
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !77
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !78
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, %i.g
  %i.l = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.k, i64 noundef 24) ; 6 uses
  tail call void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4)
  %i.m = icmp sgt i32 %1, 1
  tail call void @_ZN6LibRaw10fbdd_greenEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw14dcb_color_fullEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw15fbdd_correctionEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br i1 %i.m, label %bb.c, label %_ZN6LibRaw10lch_to_rgbEPA3_d.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6LibRaw9dcb_colorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = load i16, ptr %i.h, align 4, !tbaa !78
  %i.o = zext i16 %i.n to i32
  %i.p = load i16, ptr %i.e, align 2, !tbaa !77
  %i.q = zext i16 %i.p to i32
  %i.r = mul nuw nsw i32 %i.q, %i.o               ; 3 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN6LibRaw10rgb_to_lchEPA3_d.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.r to i64  ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.r, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %.neg = or i64 %wide.trip.count.i, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count.i  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i16, ptr %i.u, align 2, !tbaa !80
  %i.y = load i16, ptr %i.w, align 2, !tbaa !80
  %i.z = insertelement <2 x i16> poison, i16 %i.x, i64 0
  %i.aa = insertelement <2 x i16> %i.z, i16 %i.y, i64 1 ; 2 uses
  %i.ab = zext <2 x i16> %i.aa to <2 x i32>       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.ae = load i16, ptr %i.ac, align 2, !tbaa !80
  %i.af = load i16, ptr %i.ad, align 2, !tbaa !80
  %i.ag = insertelement <2 x i16> poison, i16 %i.ae, i64 0
  %i.ah = insertelement <2 x i16> %i.ag, i16 %i.af, i64 1 ; 2 uses
  %i.ai = zext <2 x i16> %i.ah to <2 x i32>       ; 2 uses
  %i.aj = add nuw nsw <2 x i32> %i.ai, %i.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.am = load i16, ptr %i.ak, align 2, !tbaa !80
  %i.an = load i16, ptr %i.al, align 2, !tbaa !80
  %i.ao = insertelement <2 x i16> poison, i16 %i.am, i64 0
  %i.ap = insertelement <2 x i16> %i.ao, i16 %i.an, i64 1 ; 2 uses
  %i.aq = zext <2 x i16> %i.ap to <2 x i32>
  %i.ar = add nuw nsw <2 x i32> %i.aj, %i.aq
  %i.as = uitofp nneg <2 x i32> %i.ar to <2 x double>
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index
  %i.au = sub nsw <2 x i32> %i.ab, %i.ai
  %i.av = sitofp <2 x i32> %i.au to <2 x double>
  %i.aw = fmul nnan <2 x double> %i.av, splat (double f0x3FFBB67AE875ED0F)
  %i.ax = uitofp <2 x i16> %i.ap to <2 x double>
  %i.ay = uitofp <2 x i16> %i.aa to <2 x double>
  %i.az = fneg <2 x double> %i.ay
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double 2.000000e+00), <2 x double> %i.az)
  %i.bb = uitofp <2 x i16> %i.ah to <2 x double>
  %i.bc = fsub <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %i.as, <2 x double> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bd, <4 x double> %i.be, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.at, align 8, !tbaa !86
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %scalar.ph.preheader, label %vector.body, !llvm.loop !303

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !80 ; 2 uses
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !80 ; 2 uses
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = add nuw nsw i32 %i.bl, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !80 ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bm, %i.bp
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.i ; 3 uses
  store double %i.br, ptr %i.bs, align 8, !tbaa !86
  %i.bt = sub nsw i32 %i.bi, %i.bl
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = fmul nnan double %i.bu, f0x3FFBB67AE875ED0F
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !86
  %i.bx = uitofp i16 %i.bo to double
  %i.by = uitofp i16 %i.bh to double
  %i.bz = fneg double %i.by
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bx, double 2.000000e+00, double %i.bz)
  %i.cb = uitofp i16 %i.bk to double
  %i.cc = fsub double %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store double %i.cc, ptr %i.cd, align 8, !tbaa !86
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6LibRaw10rgb_to_lchEPA3_d.exit, label %scalar.ph, !llvm.loop !304

_ZN6LibRaw10rgb_to_lchEPA3_d.exit:                ; preds = %scalar.ph, %bb.c
  tail call void @_ZN6LibRaw16fbdd_correction2EPA3_d(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  tail call void @_ZN6LibRaw16fbdd_correction2EPA3_d(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  %i.ce = load i16, ptr %i.h, align 4, !tbaa !78
  %i.cf = zext i16 %i.ce to i32
  %i.cg = load i16, ptr %i.e, align 2, !tbaa !77
  %i.ch = zext i16 %i.cg to i32
  %i.ci = mul nuw nsw i32 %i.ch, %i.cf
  %.not.i8 = icmp eq i32 %i.ci, 0
  br i1 %.not.i8, label %_ZN6LibRaw10lch_to_rgbEPA3_d.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN6LibRaw10rgb_to_lchEPA3_d.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph.i9 ], [ %indvars.iv.next.i11, %bb.d ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.i10 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !86
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i10 ; 2 uses
  %i.cp = load <2 x double>, ptr %i.cn, align 8, !tbaa !86 ; 2 uses
  %i.cq = insertelement <2 x double> %i.cp, double %i.cm, i64 0
  %i.cr = fdiv <2 x double> %i.cq, <double 3.000000e+00, double 6.000000e+00> ; 3 uses
  %shift = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.cr, %shift ; 2 uses
  %i.cs = fdiv <2 x double> %i.cp, <double f0x400BB67AE85390F7, double 3.000000e+00> ; 3 uses
  %foldExtExtBinop13 = fadd <2 x double> %foldExtExtBinop, %i.cs
  %foldExtExtBinop15 = fsub <2 x double> %foldExtExtBinop, %i.cs
  %i.ct = shufflevector <2 x double> %foldExtExtBinop13, <2 x double> %foldExtExtBinop15, <2 x i32> <i32 0, i32 2>
  %i.cu = fptosi <2 x double> %i.ct to <2 x i32>
  %i.cv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cu, <2 x i32> zeroinitializer)
  %i.cw = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.cv, <2 x i32> splat (i32 65535))
  %i.cx = trunc nuw <2 x i32> %i.cw to <2 x i16>
  store <2 x i16> %i.cx, ptr %i.co, align 2, !tbaa !80
  %shift17 = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop18 = fadd <2 x double> %i.cr, %shift17
  %i.cy = extractelement <2 x double> %foldExtExtBinop18, i64 0
  %i.cz = fptosi double %i.cy to i32
  %i.da = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 0)
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.da, i32 65535)
  %i.dc = trunc nuw i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !80
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1 ; 2 uses
  %i.de = load i16, ptr %i.h, align 4, !tbaa !78
  %i.df = zext i16 %i.de to i64
  %i.dg = load i16, ptr %i.e, align 2, !tbaa !77
  %i.dh = zext i16 %i.dg to i64
  %i.di = mul nuw nsw i64 %i.dh, %i.df
  %i.dj = icmp samesign ult i64 %indvars.iv.next.i11, %i.di
  br i1 %i.dj, label %bb.d, label %_ZN6LibRaw10lch_to_rgbEPA3_d.exit, !llvm.loop !6

_ZN6LibRaw10lch_to_rgbEPA3_d.exit:                ; preds = %bb.d, %bb.b, %_ZN6LibRaw10rgb_to_lchEPA3_d.exit
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6LibRaw10lch_to_rgbEPA3_d.exit
  ret void
}

declare void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw3dcbEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 18 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !77
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 18 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !78
  %i.f = zext i16 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, %i.c
  %i.h = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.g, i64 noundef 12) ; 12 uses
  %i.i = load i16, ptr %i.a, align 2, !tbaa !77
  %i.j = zext i16 %i.i to i64
  %i.k = load i16, ptr %i.d, align 4, !tbaa !78
  %i.l = zext i16 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, %i.j
  %i.n = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.m, i64 noundef 12) ; 8 uses
  tail call void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 6)
  %i.o = load i16, ptr %i.a, align 2, !tbaa !77
  %i.p = zext i16 %i.o to i32                     ; 4 uses
  %i.q = load i16, ptr %i.d, align 4, !tbaa !78   ; 2 uses
  %i.r = icmp ugt i16 %i.q, 4
  br i1 %i.r, label %.lr.ph27.i, label %_ZN6LibRaw7dcb_horEPA3_f.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.s = zext i16 %i.q to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load i32, ptr %i.u, align 8, !tbaa !79
  %i.w = add nsw i32 %i.p, -2                     ; 2 uses
  %i.x = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.y = shl nuw nsw i32 %i.p, 1
  %i.z = add nuw nsw i32 %i.y, 2
  %i.aa = add nsw i32 %i.s, -3
  %i.ab = add nsw i32 %i.p, -5
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %indvars.iv.i = phi i32 [ %i.z, %.lr.ph27.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.02025.i = phi i32 [ 2, %.lr.ph27.i ], [ %i.do, %._crit_edge.i ] ; 3 uses
  %i.ac = shl nuw nsw i32 %.02025.i, 2
  %i.ad = and i32 %i.ac, 28
  %i.ae = lshr i32 %i.v, %i.ad
  %i.af = and i32 %i.ae, 1                        ; 3 uses
  %i.ag = or disjoint i32 %i.af, 2                ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.w
  br i1 %i.ah, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.ai = add i32 %i.af, %indvars.iv.i
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %i.ak = sub nsw i32 %i.ab, %i.af                ; 2 uses
end_hunk_1
