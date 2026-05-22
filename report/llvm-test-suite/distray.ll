inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@TraceLine:bb.a
  %i.gl = fmul double %i.gi, 0.000000e+00
  %i.gm = fmul double %i.fz, %i.fw
  %i.gn = mul i64 %i.gd, 1103515245
  %i.go = add i64 %i.gn, 12345
  %i.gp = and i64 %i.go, 2147483647               ; 2 uses
  store i64 %i.gp, ptr @rnd, align 8, !tbaa !19
  %i.gq = uitofp nneg i64 %i.gp to double
  %i.gr = fdiv nnan double %i.gq, f0x41CFFFFFFF800000
  %i.gs = fsub nnan double 1.000000e+00, %i.gr
  %i.gt = fmul double %i.gm, %i.gs                ; 3 uses
  %i.gu = fmul double %.106, %i.gt
  %i.gv = fmul double %.105, %i.gt
  %i.gw = fmul double %.104, %i.gt
  %i.gx = fadd double %i.gj, %i.gu
  %i.gy = fadd double %i.gk, %i.gv
  %i.gz = fadd double %i.gl, %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !28
  %i.ha = load double, ptr %8, align 8, !tbaa !14
  %i.hb = fadd double %i.ha, %i.gx
  store double %i.hb, ptr %8, align 8, !tbaa !14
  %i.hc = load double, ptr %i.fl, align 8, !tbaa !17
  %i.hd = fadd double %i.hc, %i.gy
  store double %i.hd, ptr %i.fl, align 8, !tbaa !17
  %i.he = load double, ptr %i.fm, align 8, !tbaa !18
  %i.hf = fadd double %i.he, %i.gz
  store double %i.hf, ptr %i.fm, align 8, !tbaa !18
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %10, i32 noundef %i.fn)
  %i.hg = load double, ptr %10, align 8, !tbaa !14
  %i.hh = fadd double %i.hg, %i.fx                ; 2 uses
  %i.hi = load <2 x double>, ptr %i.fo, align 8, !tbaa !21
  %i.hj = fadd <2 x double> %i.hi, %i.fy          ; 2 uses
  %i.hk = add nuw nsw i32 %.16492, 1              ; 2 uses
  %i.hl = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.hm = icmp slt i32 %i.hk, %i.hl
  br i1 %i.hm, label %DistribVector.exit80, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %DistribVector.exit80, %.preheader
  %.lcssa87 = phi double [ 0.000000e+00, %.preheader ], [ %i.hh, %DistribVector.exit80 ]
  %.lcssa = phi i32 [ %i.ew, %.preheader ], [ %i.hl, %DistribVector.exit80 ]
  %i.hn = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.hj, %DistribVector.exit80 ]
  %i.ho = sitofp i32 %.lcssa to double
  %i.hp = fdiv double 1.000000e+00, %i.ho         ; 2 uses
  %i.hq = fmul double %i.hp, %.lcssa87
  %i.hr = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x double> %i.hs, %i.hn
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.hu = add nsw i32 %3, -1
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %9, i32 noundef %i.hu)
  %.pre = load double, ptr %9, align 8, !tbaa !14
  %i.hv = load <2 x double>, ptr %i.es, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.hw = phi double [ %.pre, %bb.j ], [ %i.hq, %._crit_edge ]
  %i.hx = phi <2 x double> [ %i.hv, %bb.j ], [ %i.ht, %._crit_edge ]
  %i.hy = load double, ptr %i.dx, align 8, !tbaa !34 ; 2 uses
  %i.hz = load double, ptr %2, align 8, !tbaa !14
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hy, double %i.hz) ; 2 uses
  store double %i.ia, ptr %2, align 8, !tbaa !14
  %i.ib = load <2 x double>, ptr %i.d, align 8, !tbaa !21
  %i.ic = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.id, <2 x double> %i.ib) ; 2 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.ig = load double, ptr %1, align 8, !tbaa !14 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !17 ; 2 uses
  %i.ij = fmul double %i.ii, %i.ii
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.ig, double %i.ij) ; 2 uses
  %i.il = fcmp ogt double %i.ik, 0.000000e+00
  br i1 %i.il, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ik)
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.in = load double, ptr %i.im, align 8, !tbaa !18
  %i.io = tail call double @llvm.fabs.f64(double %i.in)
  %i.ip = fdiv double %i.io, %sqrt
  %i.iq = tail call double @atan(double noundef %i.ip) #13, !tbaa !4
  %i.ir = fmul double %i.iq, f0x3FE45F306C8462A6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.066 = phi double [ %i.ir, %bb.m ], [ 1.000000e+00, %bb.l ] ; 3 uses
  %i.is = load double, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 24), align 8, !tbaa !14
  %i.it = load double, ptr @Skycolor, align 16, !tbaa !14
  %i.iu = fsub double 1.000000e+00, %.066         ; 2 uses
  %i.iv = fmul double %i.iu, %i.it
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.is, double %.066, double %i.iv) ; 2 uses
  store double %i.iw, ptr %2, align 8, !tbaa !14
  %i.ix = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 32), align 16, !tbaa !21
  %i.iy = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 8), align 8, !tbaa !21
  %i.iz = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x double> %i.ja, %i.iy
  %i.jc = insertelement <2 x double> poison, double %.066, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.jd, <2 x double> %i.jb) ; 2 uses
  %i.jf = extractelement <2 x double> %i.je, i64 0
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.k
  %storemerge = phi double [ %i.jf, %bb.n ], [ %i.if, %bb.k ]
  %.ph123 = phi double [ %i.iw, %bb.n ], [ %i.ia, %bb.k ]
  %i.jg = phi <2 x double> [ %i.je, %bb.n ], [ %i.ie, %bb.k ] ; 2 uses
  store double %storemerge, ptr %i.d, align 8, !tbaa !17
  %i.jh = extractelement <2 x double> %i.jg, i64 1
  store double %i.jh, ptr %i.c, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.thread
  %i.ji = phi double [ %i.dp, %.thread ], [ %.ph123, %.sink.split ]
  %i.jj = phi <2 x double> [ %i.dw, %.thread ], [ %i.jg, %.sink.split ] ; 2 uses
  %i.jk = fcmp ogt double %i.ji, 1.000000e+00
  br i1 %i.jk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %2, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jl = extractelement <2 x double> %i.jj, i64 0
  %i.jm = fcmp ogt double %i.jl, 1.000000e+00
  br i1 %i.jm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jn = extractelement <2 x double> %i.jj, i64 1
  %i.jo = fcmp ogt double %i.jn, 1.000000e+00
  br i1 %i.jo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc double @IntersectObjs(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !18 ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, 1.000000e-05
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr @Groundpos, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.h = fsub double %i.e, %i.g
  %i.i = fdiv double %i.h, %i.b                   ; 5 uses
  %i.j = fcmp ogt double %i.i, 1.000000e-05
  %i.k = fcmp olt double %i.i, 1.000000e+05
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load <2 x double>, ptr %0, align 8, !tbaa !21
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.n = insertelement <2 x double> poison, double %i.i, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.o, <2 x double> %i.l)
  store <2 x double> %i.p, ptr %2, align 8, !tbaa !21
  %i.q = tail call double @llvm.fmuladd.f64(double %i.b, double %i.i, double %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.q, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !18
  %i.t = load <2 x double>, ptr %2, align 8, !tbaa !21
  %i.u = fadd <2 x double> %i.t, splat (double 5.000000e+04)
  %i.v = fptosi <2 x double> %i.u to <2 x i32>    ; 2 uses
  %shift = shufflevector <2 x i32> %i.v, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = add nsw <2 x i32> %shift, %i.v
  %5 = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.w = and i32 %5, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [48 x i8], ptr @Groundtxt, i64 %i.x
  store ptr %i.y, ptr %4, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.095 = phi double [ %i.i, %bb.c ], [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.a ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.0.0.copyload = load double, ptr @objs, align 16, !tbaa !21
  %.sroa.9.0.copyload = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 8), align 8, !tbaa !21
  %.sroa.15.0.copyload = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 16), align 16, !tbaa !21
  %i.ag = load double, ptr %0, align 8, !tbaa !14
  %i.ah = fsub double %.sroa.0.0.copyload, %i.ag  ; 4 uses
  %i.ai = load double, ptr %i.z, align 8, !tbaa !17
  %i.aj = fsub double %.sroa.9.0.copyload, %i.ai  ; 4 uses
  %i.ak = load double, ptr %i.aa, align 8, !tbaa !18
  %i.al = fsub double %.sroa.15.0.copyload, %i.ak ; 4 uses
  %i.am = load double, ptr %1, align 8, !tbaa !14 ; 4 uses
  %i.an = load double, ptr %i.ab, align 8, !tbaa !17 ; 4 uses
  %i.ao = fmul double %i.an, %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.ao)
  %i.aq = load double, ptr %i.a, align 8, !tbaa !18 ; 4 uses
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.ap)
  %i.as = fdiv double 1.000000e+00, %i.ar         ; 2 uses
  %i.at = fmul double %i.aj, %i.an
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.am, double %i.at)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.al, double %i.aq, double %i.au)
  %i.aw = fmul double %i.av, %i.as                ; 4 uses
  %i.ax = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 24), align 8, !tbaa !37 ; 2 uses
  %i.ay = fneg double %i.ah
  %i.az = fmul double %i.ah, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.az)
  %i.bb = fneg double %i.aj
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.aj, double %i.ba)
  %i.bd = fneg double %i.al
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.al, double %i.bc)
  %i.bf = fmul double %i.as, %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.bf) ; 2 uses
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bi = tail call double @sqrt(double noundef %i.bg) #13, !tbaa !4 ; 2 uses
  %i.bj = fsub double %i.aw, %i.bi                ; 2 uses
  %i.bk = fcmp olt double %i.bj, 1.000000e-05
  %i.bl = fadd double %i.aw, %i.bi
  %.096 = select i1 %i.bk, double %i.bl, double %i.bj ; 6 uses
  %i.bm = fcmp ogt double %.096, 1.000000e-05
  br i1 %i.bm, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bn = fcmp olt double %.096, %.095
  %i.bo = fcmp olt double %.095, 0.000000e+00
  %or.cond3 = or i1 %i.bo, %i.bn
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = fmul double %i.am, %.096                ; 2 uses
  store double %i.bp, ptr %2, align 8, !tbaa !14
  %i.bq = fmul double %i.an, %.096                ; 2 uses
  store double %i.bq, ptr %i.ac, align 8, !tbaa !17
  %i.br = fmul double %i.aq, %.096                ; 2 uses
  store double %i.br, ptr %i.ad, align 8, !tbaa !18
  %i.bs = fsub double %i.bp, %i.ah
  store double %i.bs, ptr %3, align 8, !tbaa !14
  %i.bt = fsub double %i.bq, %i.aj
  store double %i.bt, ptr %i.ae, align 8, !tbaa !17
  %i.bu = fsub double %i.br, %i.al
  store double %i.bu, ptr %i.af, align 8, !tbaa !18
  %i.bv = load <2 x double>, ptr %0, align 8, !tbaa !21
  %i.bw = load <2 x double>, ptr %2, align 8, !tbaa !21
  %i.bx = fadd <2 x double> %i.bv, %i.bw
  store <2 x double> %i.bx, ptr %2, align 8, !tbaa !21
  %i.by = load double, ptr %i.aa, align 8, !tbaa !18
  %i.bz = load double, ptr %i.ad, align 8, !tbaa !18
  %i.ca = fadd double %i.by, %i.bz
  store double %i.ca, ptr %i.ad, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @objs, i64 32), ptr %4, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.e
  %.2 = phi double [ %.096, %bb.g ], [ %.095, %bb.f ], [ %.095, %bb.e ], [ %.095, %bb.d ] ; 5 uses
  %.sroa.0.0.copyload.1 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 80), align 16, !tbaa !21
  %.sroa.9.0.copyload.1 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 88), align 8, !tbaa !21
  %.sroa.15.0.copyload.1 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 96), align 16, !tbaa !21
  %i.cb = load double, ptr %0, align 8, !tbaa !14
  %i.cc = fsub double %.sroa.0.0.copyload.1, %i.cb ; 4 uses
  %i.cd = load double, ptr %i.z, align 8, !tbaa !17
  %i.ce = fsub double %.sroa.9.0.copyload.1, %i.cd ; 4 uses
  %i.cf = load double, ptr %i.aa, align 8, !tbaa !18
  %i.cg = fsub double %.sroa.15.0.copyload.1, %i.cf ; 4 uses
  %i.ch = load double, ptr %1, align 8, !tbaa !14 ; 4 uses
  %i.ci = load double, ptr %i.ab, align 8, !tbaa !17 ; 4 uses
  %i.cj = fmul double %i.ci, %i.ci
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.cj)
  %i.cl = load double, ptr %i.a, align 8, !tbaa !18 ; 4 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %i.ck)
  %i.cn = fdiv double 1.000000e+00, %i.cm         ; 2 uses
  %i.co = fmul double %i.ce, %i.ci
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ch, double %i.co)
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cl, double %i.cp)
  %i.cr = fmul double %i.cq, %i.cn                ; 4 uses
  %i.cs = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 104), align 8, !tbaa !37 ; 2 uses
  %i.ct = fneg double %i.cc
  %i.cu = fmul double %i.cc, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.cu)
  %i.cw = fneg double %i.ce
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ce, double %i.cv)
  %i.cy = fneg double %i.cg
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cg, double %i.cx)
  %i.da = fmul double %i.cn, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.da) ; 2 uses
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.dd = tail call double @sqrt(double noundef %i.db) #13, !tbaa !4 ; 2 uses
  %i.de = fsub double %i.cr, %i.dd                ; 2 uses
  %i.df = fcmp olt double %i.de, 1.000000e-05
  %i.dg = fadd double %i.cr, %i.dd
  %.096.1 = select i1 %i.df, double %i.dg, double %i.de ; 6 uses
  %i.dh = fcmp ogt double %.096.1, 1.000000e-05
  br i1 %i.dh, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.di = fcmp olt double %.096.1, %.2
  %i.dj = fcmp olt double %.2, 0.000000e+00
  %or.cond3.1 = or i1 %i.dj, %i.di
  br i1 %or.cond3.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dk = fmul double %i.ch, %.096.1              ; 2 uses
  store double %i.dk, ptr %2, align 8, !tbaa !14
  %i.dl = fmul double %i.ci, %.096.1              ; 2 uses
  store double %i.dl, ptr %i.ac, align 8, !tbaa !17
  %i.dm = fmul double %i.cl, %.096.1              ; 2 uses
  store double %i.dm, ptr %i.ad, align 8, !tbaa !18
  %i.dn = fsub double %i.dk, %i.cc
  store double %i.dn, ptr %3, align 8, !tbaa !14
  %i.do = fsub double %i.dl, %i.ce
  store double %i.do, ptr %i.ae, align 8, !tbaa !17
  %i.dp = fsub double %i.dm, %i.cg
  store double %i.dp, ptr %i.af, align 8, !tbaa !18
  %i.dq = load <2 x double>, ptr %0, align 8, !tbaa !21
  %i.dr = load <2 x double>, ptr %2, align 8, !tbaa !21
  %i.ds = fadd <2 x double> %i.dq, %i.dr
  store <2 x double> %i.ds, ptr %2, align 8, !tbaa !21
  %i.dt = load double, ptr %i.aa, align 8, !tbaa !18
  %i.du = load double, ptr %i.ad, align 8, !tbaa !18
  %i.dv = fadd double %i.dt, %i.du
  store double %i.dv, ptr %i.ad, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @objs, i64 112), ptr %4, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.2.1 = phi double [ %.096.1, %bb.k ], [ %.2, %bb.j ], [ %.2, %bb.i ], [ %.2, %bb.h ] ; 5 uses
  %.sroa.0.0.copyload.2 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 160), align 16, !tbaa !21
  %.sroa.9.0.copyload.2 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 168), align 8, !tbaa !21
  %.sroa.15.0.copyload.2 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 176), align 16, !tbaa !21
  %i.dw = load double, ptr %0, align 8, !tbaa !14
  %i.dx = fsub double %.sroa.0.0.copyload.2, %i.dw ; 4 uses
  %i.dy = load double, ptr %i.z, align 8, !tbaa !17
  %i.dz = fsub double %.sroa.9.0.copyload.2, %i.dy ; 4 uses
  %i.ea = load double, ptr %i.aa, align 8, !tbaa !18
  %i.eb = fsub double %.sroa.15.0.copyload.2, %i.ea ; 4 uses
  %i.ec = load double, ptr %1, align 8, !tbaa !14 ; 4 uses
  %i.ed = load double, ptr %i.ab, align 8, !tbaa !17 ; 4 uses
  %i.ee = fmul double %i.ed, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double %i.ee)
  %i.eg = load double, ptr %i.a, align 8, !tbaa !18 ; 4 uses
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %i.ef)
  %i.ei = fdiv double 1.000000e+00, %i.eh         ; 2 uses
  %i.ej = fmul double %i.dz, %i.ed
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.ec, double %i.ej)
  %i.el = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.eg, double %i.ek)
  %i.em = fmul double %i.el, %i.ei                ; 4 uses
  %i.en = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 184), align 8, !tbaa !37 ; 2 uses
  %i.eo = fneg double %i.dx
  %i.ep = fmul double %i.dx, %i.eo
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %i.ep)
  %i.er = fneg double %i.dz
  %i.es = tail call double @llvm.fmuladd.f64(double %i.er, double %i.dz, double %i.eq)
  %i.et = fneg double %i.eb
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double %i.eb, double %i.es)
  %i.ev = fmul double %i.ei, %i.eu
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.em, double %i.em, double %i.ev) ; 2 uses
  %i.ex = fcmp ogt double %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ey = tail call double @sqrt(double noundef %i.ew) #13, !tbaa !4 ; 2 uses
  %i.ez = fsub double %i.em, %i.ey                ; 2 uses
  %i.fa = fcmp olt double %i.ez, 1.000000e-05
  %i.fb = fadd double %i.em, %i.ey
  %.096.2 = select i1 %i.fa, double %i.fb, double %i.ez ; 6 uses
  %i.fc = fcmp ogt double %.096.2, 1.000000e-05
  br i1 %i.fc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fd = fcmp olt double %.096.2, %.2.1
  %i.fe = fcmp olt double %.2.1, 0.000000e+00
  %or.cond3.2 = or i1 %i.fe, %i.fd
  br i1 %or.cond3.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ff = fmul double %i.ec, %.096.2              ; 2 uses
  store double %i.ff, ptr %2, align 8, !tbaa !14
  %i.fg = fmul double %i.ed, %.096.2              ; 2 uses
  store double %i.fg, ptr %i.ac, align 8, !tbaa !17
  %i.fh = fmul double %i.eg, %.096.2              ; 2 uses
  store double %i.fh, ptr %i.ad, align 8, !tbaa !18
  %i.fi = fsub double %i.ff, %i.dx
  store double %i.fi, ptr %3, align 8, !tbaa !14
  %i.fj = fsub double %i.fg, %i.dz
  store double %i.fj, ptr %i.ae, align 8, !tbaa !17
  %i.fk = fsub double %i.fh, %i.eb
  store double %i.fk, ptr %i.af, align 8, !tbaa !18
  %i.fl = load <2 x double>, ptr %0, align 8, !tbaa !21
  %i.fm = load <2 x double>, ptr %2, align 8, !tbaa !21
  %i.fn = fadd <2 x double> %i.fl, %i.fm
  store <2 x double> %i.fn, ptr %2, align 8, !tbaa !21
  %i.fo = load double, ptr %i.aa, align 8, !tbaa !18
  %i.fp = load double, ptr %i.ad, align 8, !tbaa !18
  %i.fq = fadd double %i.fo, %i.fp
  store double %i.fq, ptr %i.ad, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @objs, i64 192), ptr %4, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.2.2 = phi double [ %.096.2, %bb.o ], [ %.2.1, %bb.n ], [ %.2.1, %bb.m ], [ %.2.1, %bb.l ] ; 5 uses
  %.sroa.0.0.copyload.3 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 240), align 16, !tbaa !21
  %.sroa.9.0.copyload.3 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 248), align 8, !tbaa !21
  %.sroa.15.0.copyload.3 = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 256), align 16, !tbaa !21
  %i.fr = load double, ptr %0, align 8, !tbaa !14
  %i.fs = fsub double %.sroa.0.0.copyload.3, %i.fr ; 4 uses
  %i.ft = load double, ptr %i.z, align 8, !tbaa !17
  %i.fu = fsub double %.sroa.9.0.copyload.3, %i.ft ; 4 uses
  %i.fv = load double, ptr %i.aa, align 8, !tbaa !18
  %i.fw = fsub double %.sroa.15.0.copyload.3, %i.fv ; 4 uses
  %i.fx = load double, ptr %1, align 8, !tbaa !14 ; 4 uses
  %i.fy = load double, ptr %i.ab, align 8, !tbaa !17 ; 4 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.fx, double %i.fz)
  %i.gb = load double, ptr %i.a, align 8, !tbaa !18 ; 4 uses
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gb, double %i.ga)
  %i.gd = fdiv double 1.000000e+00, %i.gc         ; 2 uses
  %i.ge = fmul double %i.fu, %i.fy
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fx, double %i.ge)
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.gb, double %i.gf)
  %i.gh = fmul double %i.gg, %i.gd                ; 4 uses
  %i.gi = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 264), align 8, !tbaa !37 ; 2 uses
  %i.gj = fneg double %i.fs
  %i.gk = fmul double %i.fs, %i.gj
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gi, double %i.gi, double %i.gk)
  %i.gm = fneg double %i.fu
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.fu, double %i.gl)
  %i.go = fneg double %i.fw
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.go, double %i.fw, double %i.gn)
  %i.gq = fmul double %i.gd, %i.gp
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gh, double %i.gq) ; 2 uses
  %i.gs = fcmp ogt double %i.gr, 0.000000e+00
  br i1 %i.gs, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.gt = tail call double @sqrt(double noundef %i.gr) #13, !tbaa !4 ; 2 uses
  %i.gu = fsub double %i.gh, %i.gt                ; 2 uses
  %i.gv = fcmp olt double %i.gu, 1.000000e-05
  %i.gw = fadd double %i.gh, %i.gt
  %.096.3 = select i1 %i.gv, double %i.gw, double %i.gu ; 6 uses
  %i.gx = fcmp ogt double %.096.3, 1.000000e-05
  br i1 %i.gx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gy = fcmp olt double %.096.3, %.2.2
  %i.gz = fcmp olt double %.2.2, 0.000000e+00
  %or.cond3.3 = or i1 %i.gz, %i.gy
  br i1 %or.cond3.3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ha = fmul double %i.fx, %.096.3              ; 2 uses
  store double %i.ha, ptr %2, align 8, !tbaa !14
  %i.hb = fmul double %i.fy, %.096.3              ; 2 uses
  store double %i.hb, ptr %i.ac, align 8, !tbaa !17
  %i.hc = fmul double %i.gb, %.096.3              ; 2 uses
  store double %i.hc, ptr %i.ad, align 8, !tbaa !18
  %i.hd = fsub double %i.ha, %i.fs
  store double %i.hd, ptr %3, align 8, !tbaa !14
  %i.he = fsub double %i.hb, %i.fu
  store double %i.he, ptr %i.ae, align 8, !tbaa !17
  %i.hf = fsub double %i.hc, %i.fw
  store double %i.hf, ptr %i.af, align 8, !tbaa !18
  %i.hg = load <2 x double>, ptr %0, align 8, !tbaa !21
  %i.hh = load <2 x double>, ptr %2, align 8, !tbaa !21
  %i.hi = fadd <2 x double> %i.hg, %i.hh
  store <2 x double> %i.hi, ptr %2, align 8, !tbaa !21
  %i.hj = load double, ptr %i.aa, align 8, !tbaa !18
  %i.hk = load double, ptr %i.ad, align 8, !tbaa !18
  %i.hl = fadd double %i.hj, %i.hk
  store double %i.hl, ptr %i.ad, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @objs, i64 272), ptr %4, align 8, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.2.3 = phi double [ %.096.3, %bb.s ], [ %.2.2, %bb.r ], [ %.2.2, %bb.q ], [ %.2.2, %bb.p ]
  ret double %.2.3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"double", !6, i64 0}
!17 = !{!15, !16, i64 8}
!18 = !{!15, !16, i64 16}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!16, !16, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23, !25}
!25 = !{!"llvm.loop.unswitch.partial.disable"}
!26 = distinct !{!26, !23, !25}
!27 = distinct !{!27, !23}
!28 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21}
!29 = distinct !{!29, !23}
!30 = !{!10, !10, i64 0}
!31 = !{!32, !16, i64 24}
!32 = !{!"", !15, i64 0, !16, i64 24, !16, i64 32, !16, i64 40}
!33 = !{!32, !16, i64 0}
!34 = !{!32, !16, i64 32}
!35 = !{!32, !16, i64 40}
!36 = distinct !{!36, !23}
!37 = !{!38, !16, i64 24}
!38 = !{!"", !15, i64 0, !16, i64 24, !32, i64 32}
end_hunk_0
