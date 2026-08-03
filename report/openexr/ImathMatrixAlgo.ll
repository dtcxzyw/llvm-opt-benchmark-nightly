inline.NumInlined: 1133
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader227, !llvm.loop !12

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.081237 = phi double [ %i.bh, %.preheader228 ], [ 0.000000e+00, %bb.c ]
  %.085236 = phi i64 [ %i.ca, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
  %i.bc = phi <2 x double> [ %i.by, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bd = phi <2 x double> [ %i.bp, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.be = phi <2 x double> [ %i.bz, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.085236
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !8 ; 2 uses
  %i.bh = fadd double %.081237, %i.bg             ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  %i.bl = load <2 x double>, ptr %i.bi, align 8, !tbaa !8
  %i.bm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bo = fmul <2 x double> %i.bn, %i.bl
  %i.bp = fadd <2 x double> %i.bd, %i.bo          ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10
  %i.bt = load <2 x double>, ptr %i.bq, align 8, !tbaa !8
  %i.bu = fmul <2 x double> %i.bn, %i.bt
  %i.bv = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bk, i64 1
  %i.bx = fmul <2 x double> %i.bn, %i.bw
  %i.by = fadd <2 x double> %i.bc, %i.bu          ; 2 uses
  %i.bz = fadd <2 x double> %i.be, %i.bx          ; 2 uses
  %i.ca = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !14

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.w, %bb.d ], [ %i.bh, %.preheader228 ] ; 2 uses
  %i.cb = phi <2 x double> [ %.lcssa433, %bb.d ], [ %i.by, %.preheader228 ]
  %i.cc = phi <2 x double> [ %.lcssa434, %bb.d ], [ %i.bp, %.preheader228 ]
  %i.cd = phi <2 x double> [ %.lcssa432, %bb.d ], [ %i.bz, %.preheader228 ]
  %i.ce = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ci, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ck, align 8, !tbaa !8
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.cl = insertelement <2 x double> poison, double %.1, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cn = fdiv <2 x double> %i.cc, %i.cm          ; 8 uses
  %i.co = fdiv <2 x double> %i.cb, %i.cm          ; 3 uses
  %i.cp = fdiv <2 x double> %i.cd, %i.cm          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.cv = extractelement <2 x double> %i.cp, i64 0
  %i.cw = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.ee, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cx = phi double [ %i.ed, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cy = phi <2 x double> [ %i.dz, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cz = phi <2 x double> [ %i.ea, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.da = phi <2 x double> [ %i.eb, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.db = phi <2 x double> [ %i.ec, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load double, ptr %i.dd, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !10
  %i.di = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = fsub <2 x double> %i.dj, %i.cp          ; 5 uses
  %i.dl = load <2 x double>, ptr %i.df, align 8, !tbaa !8
  %i.dm = fsub <2 x double> %i.dl, %i.cn          ; 4 uses
  %i.dn = load <2 x double>, ptr %i.dc, align 8, !tbaa !8
  %i.do = fsub <2 x double> %i.dn, %i.co          ; 3 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.dm
  %i.dr = shufflevector <2 x double> %i.dk, <2 x double> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.ds = fmul <2 x double> %i.do, %i.dr
  %i.dt = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = shufflevector <2 x double> %i.dm, <2 x double> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.dv = fmul <2 x double> %i.dt, %i.du
  %i.dw = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.dw, %i.dm
  %shift = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dk, %shift
  %i.dy = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dz = fadd <2 x double> %i.dq, %i.cy          ; 2 uses
  %i.ea = fadd <2 x double> %i.ds, %i.cz          ; 2 uses
  %i.eb = fadd <2 x double> %i.dv, %i.da          ; 2 uses
  %i.ec = fadd <2 x double> %i.dx, %i.db          ; 2 uses
  %i.ed = fadd double %i.dy, %i.cx                ; 2 uses
  %i.ee = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.ee, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !15

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.ft, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.ef = phi double [ %i.fs, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.eg = phi <2 x double> [ %i.fo, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eh = phi <2 x double> [ %i.fp, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ei = phi <2 x double> [ %i.fq, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ej = phi <2 x double> [ %i.fr, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.082261
  %i.el = load double, ptr %i.ek, align 8, !tbaa !8 ; 2 uses
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !10
  %i.ep = fsub double %i.eo, %i.cv
  %i.eq = fmul double %i.el, %i.ep                ; 2 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load double, ptr %i.es, align 8, !tbaa !10
  %i.eu = fsub double %i.et, %i.cw                ; 3 uses
  %i.ev = load <2 x double>, ptr %i.er, align 8, !tbaa !8
  %i.ew = fsub <2 x double> %i.ev, %i.cn          ; 3 uses
  %i.ex = load <2 x double>, ptr %i.em, align 8, !tbaa !8
  %i.ey = fsub <2 x double> %i.ex, %i.co
  %i.ez = insertelement <2 x double> poison, double %i.el, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x double> %i.fa, %i.ey          ; 3 uses
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %i.fc, %i.ew
  %i.fe = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ff = insertelement <2 x double> %i.fe, double %i.eu, i64 0
  %i.fg = fmul <2 x double> %i.fb, %i.ff
  %i.fh = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fi = insertelement <2 x double> %i.fe, double %i.eu, i64 1
  %i.fj = fmul <2 x double> %i.fh, %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x double> %i.ew, %i.fl
  %i.fn = fmul double %i.eq, %i.eu
  %i.fo = fadd <2 x double> %i.fd, %i.eg          ; 2 uses
  %i.fp = fadd <2 x double> %i.fg, %i.eh          ; 2 uses
  %i.fq = fadd <2 x double> %i.fj, %i.ei          ; 2 uses
  %i.fr = fadd <2 x double> %i.fm, %i.ej          ; 2 uses
  %i.fs = fadd double %i.fn, %i.ef                ; 2 uses
  %i.ft = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.ft, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !16

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.ed, %.preheader223 ], [ %i.fs, %.preheader225 ]
  %i.fu = phi <2 x double> [ %i.dz, %.preheader223 ], [ %i.fo, %.preheader225 ]
  %i.fv = phi <2 x double> [ %i.ea, %.preheader223 ], [ %i.fp, %.preheader225 ]
  %i.fw = phi <2 x double> [ %i.eb, %.preheader223 ], [ %i.fq, %.preheader225 ]
  %i.fx = phi <2 x double> [ %i.ec, %.preheader223 ], [ %i.fr, %.preheader225 ]
  store <2 x double> %i.fu, ptr %6, align 16, !tbaa !8
  store <2 x double> %i.fv, ptr %i.cq, align 16, !tbaa !8
  store <2 x double> %i.fw, ptr %i.cs, align 16, !tbaa !8
  store <2 x double> %i.fx, ptr %i.ct, align 16, !tbaa !8
  store double %storemerge, ptr %i.cu, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fz, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.gb, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.gd, align 8, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.gf, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 48
  %10 = load double, ptr %i.gh, align 8, !tbaa !8, !noalias !17 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 56
  %11 = load double, ptr %i.gi, align 8, !tbaa !8, !noalias !17 ; 3 uses
  %i.gj = load double, ptr %i.gb, align 8, !tbaa !8, !noalias !17 ; 2 uses
  %i.gk = load double, ptr %8, align 8, !tbaa !8, !noalias !20 ; 2 uses
  %i.gl = load double, ptr %i.gc, align 8, !tbaa !8, !noalias !20 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gn = load <4 x double>, ptr %7, align 8, !tbaa !8, !noalias !17 ; 4 uses
  %i.go = load double, ptr %i.gg, align 8, !tbaa !8, !noalias !17
  %i.gp = load double, ptr %i.fy, align 8, !tbaa !8, !noalias !17
  %i.gq = load <2 x double>, ptr %i.fz, align 8, !tbaa !8, !noalias !17 ; 2 uses
  %i.gr = load double, ptr %i.ga, align 8, !tbaa !8, !noalias !17
  %i.gs = shufflevector <2 x double> %i.gq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gt = shufflevector <4 x double> %i.gn, <4 x double> %i.gs, <2 x i32> <i32 1, i32 4>
  %i.gu = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %i.gt, %i.gv
  %i.gx = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = shufflevector <4 x double> %i.gn, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.gz, <2 x double> %i.gw)
  %i.hb = shufflevector <4 x double> %i.gn, <4 x double> %i.gs, <2 x i32> <i32 2, i32 5>
  %12 = fmul double %11, %i.gl
  %13 = call double @llvm.fmuladd.f64(double %i.gk, double %10, double %12)
  %i.hc = load double, ptr %i.gd, align 8, !tbaa !8, !noalias !20 ; 2 uses
  %i.hd = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.he = insertelement <2 x double> %i.hd, double %i.gp, i64 0 ; 2 uses
  %i.hf = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fmul <2 x double> %i.he, %i.hg
  %i.hi = insertelement <2 x double> %i.gz, double %i.go, i64 1 ; 2 uses
  %i.hj = shufflevector <4 x double> %i.gn, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.hk = insertelement <2 x double> %i.hj, double %i.gr, i64 1 ; 2 uses
  %i.hl = fmul double %11, %i.hc
  %i.hm = load <2 x double>, ptr %i.gm, align 8, !tbaa !8, !noalias !20 ; 3 uses
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.hb, <2 x double> %i.ha) ; 4 uses
  %i.hp = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.hi, <2 x double> %i.hh)
  %i.hr = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %10, i64 1 ; 2 uses
  %i.ht = insertelement <2 x double> poison, double %13, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hl, i64 1
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.hs, <2 x double> %i.hu) ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !8, !noalias !20 ; 2 uses
  %i.hy = load double, ptr %i.gf, align 8, !tbaa !8, !noalias !20 ; 2 uses
  %i.hz = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x double> %i.he, %i.ia
  %i.ic = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul double %11, %i.hx
  %i.if = load <2 x double>, ptr %i.ge, align 8, !tbaa !8, !noalias !20 ; 3 uses
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.hk, <2 x double> %i.hq) ; 4 uses
  %i.ii = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.hi, <2 x double> %i.ib)
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.hk, <2 x double> %i.ij) ; 4 uses
  %i.il = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.im = insertelement <2 x double> %i.il, double %i.ie, i64 1
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.hs, <2 x double> %i.im) ; 3 uses
  %i.io = extractelement <2 x double> %i.in, i64 1
  %i.ip = call double @llvm.fmuladd.f64(double %i.hy, double %i.gj, double %i.io) ; 3 uses
  %i.iq = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.iq
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.ir = extractelement <2 x double> %i.cn, i64 0
  %i.is = extractelement <2 x double> %i.cn, i64 1
  %i.it = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.iu = extractelement <2 x double> %i.cn, i64 0
  %i.iv = extractelement <2 x double> %i.cn, i64 1
  %i.iw = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.jn, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.jk, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.jm, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.079286 ; 3 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !23
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !24
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !10
  %i.jd = fsub double %i.iy, %i.iu                ; 2 uses
  %i.je = fsub double %i.ja, %i.iv                ; 2 uses
  %i.jf = fsub double %i.jc, %i.iw                ; 2 uses
  %i.jg = fmul double %i.je, %i.je
  %i.jh = call double @llvm.fmuladd.f64(double %i.jd, double %i.jd, double %i.jg)
  %i.ji = call noundef double @llvm.fmuladd.f64(double %i.jf, double %i.jf, double %i.jh)
  %i.jj = fsub double %i.ji, %.sroa.8.0284        ; 2 uses
  %i.jk = fadd double %.sroa.0110.0285, %i.jj     ; 3 uses
  %i.jl = fsub double %i.jk, %.sroa.0110.0285
  %i.jm = fsub double %i.jl, %i.jj
  %i.jn = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.jn, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !25

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.kh, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.ke, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.kg, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078283
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !23
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jt = load double, ptr %i.js, align 8, !tbaa !24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !10
  %i.jw = fsub double %i.jr, %i.ir                ; 2 uses
  %i.jx = fsub double %i.jt, %i.is                ; 2 uses
  %i.jy = fsub double %i.jv, %i.it                ; 2 uses
  %i.jz = fmul double %i.jx, %i.jx
  %i.ka = call double @llvm.fmuladd.f64(double %i.jw, double %i.jw, double %i.jz)
  %i.kb = call noundef double @llvm.fmuladd.f64(double %i.jy, double %i.jy, double %i.ka)
  %i.kc = fmul double %i.jp, %i.kb
  %i.kd = fsub double %i.kc, %.sroa.8.1281        ; 2 uses
  %i.ke = fadd double %.sroa.0110.1282, %i.kd     ; 3 uses
  %i.kf = fsub double %i.ke, %.sroa.0110.1282
  %i.kg = fsub double %i.kf, %i.kd
  %i.kh = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.kh, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !26

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.jk, %.preheader220 ], [ %i.ke, %.preheader221 ]
  %i.ki = load <2 x double>, ptr %6, align 16, !tbaa !8
  %i.kj = shufflevector <2 x double> %i.ho, <2 x double> %i.ih, <2 x i32> <i32 0, i32 2>
  %i.kk = fmul <2 x double> %i.kj, %i.ki          ; 2 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0 ; 2 uses
  %i.km = fadd double %i.kl, 0.000000e+00         ; 3 uses
  %i.kn = fsub double %i.km, %i.kl
  %i.ko = extractelement <2 x double> %i.kk, i64 1
  %i.kp = fsub double %i.ko, %i.kn                ; 2 uses
  %i.kq = fadd double %i.km, %i.kp                ; 3 uses
  %i.kr = fsub double %i.kq, %i.km
  %i.ks = fsub double %i.kr, %i.kp
  %i.kt = load double, ptr %i.cq, align 16, !tbaa !8
  %i.ku = extractelement <2 x double> %i.ik, i64 0
  %i.kv = fmul double %i.ku, %i.kt
  %i.kw = fsub double %i.kv, %i.ks                ; 2 uses
  %i.kx = fadd double %i.kq, %i.kw                ; 3 uses
  %i.ky = fsub double %i.kx, %i.kq
  %i.kz = fsub double %i.ky, %i.kw
  %i.la = load double, ptr %i.cr, align 8, !tbaa !8
  %i.lb = extractelement <2 x double> %i.ho, i64 1
  %i.lc = fmul double %i.lb, %i.la
  %i.ld = fsub double %i.lc, %i.kz                ; 2 uses
  %i.le = fadd double %i.kx, %i.ld                ; 3 uses
  %i.lf = fsub double %i.le, %i.kx
  %i.lg = fsub double %i.lf, %i.ld
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.li = load double, ptr %i.lh, align 16, !tbaa !8
  %i.lj = extractelement <2 x double> %i.ih, i64 1
  %i.lk = fmul double %i.lj, %i.li
  %i.ll = fsub double %i.lk, %i.lg                ; 2 uses
  %i.lm = fadd double %i.le, %i.ll                ; 3 uses
  %i.ln = fsub double %i.lm, %i.le
  %i.lo = fsub double %i.ln, %i.ll
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !8
  %i.lr = extractelement <2 x double> %i.ik, i64 1
  %i.ls = fmul double %i.lr, %i.lq
  %i.lt = fsub double %i.ls, %i.lo                ; 2 uses
  %i.lu = fadd double %i.lm, %i.lt                ; 3 uses
  %i.lv = fsub double %i.lu, %i.lm
  %i.lw = fsub double %i.lv, %i.lt
  %i.lx = load double, ptr %i.ct, align 16, !tbaa !8
  %i.ly = extractelement <2 x double> %i.hv, i64 0
  %i.lz = fmul double %i.ly, %i.lx
  %i.ma = fsub double %i.lz, %i.lw                ; 2 uses
  %i.mb = fadd double %i.lu, %i.ma                ; 3 uses
  %i.mc = fsub double %i.mb, %i.lu
  %i.md = fsub double %i.mc, %i.ma
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.mf = load double, ptr %i.me, align 8, !tbaa !8
  %i.mg = extractelement <2 x double> %i.in, i64 0
  %i.mh = fmul double %i.mg, %i.mf
  %i.mi = fsub double %i.mh, %i.md                ; 2 uses
  %i.mj = fadd double %i.mb, %i.mi                ; 2 uses
  %i.mk = fsub double %i.mj, %i.mb
  %i.ml = fsub double %i.mk, %i.mi
  %i.mm = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.mn = load double, ptr %i.mm, align 16, !tbaa !8
  %i.mo = fmul double %i.ip, %i.mn
  %i.mp = fsub double %i.mo, %i.ml
  %i.mq = fadd double %i.mj, %i.mp
  %i.mr = fdiv double %i.mq, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.mr, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.ms = extractelement <2 x double> %i.cn, i64 0
  %i.mt = fmul double %i.ms, %.080                ; 2 uses
  %i.mu = extractelement <2 x double> %i.cn, i64 1
  %i.mv = fmul double %i.mu, %.080                ; 2 uses
  %i.mw = extractelement <2 x double> %i.cp, i64 1
  %i.mx = fmul double %i.mw, %.080                ; 2 uses
  %i.my = extractelement <2 x double> %i.in, i64 0 ; 2 uses
  %i.mz = fmul double %i.my, %i.mv
  %i.na = extractelement <2 x double> %i.hv, i64 0 ; 2 uses
  %i.nb = call double @llvm.fmuladd.f64(double %i.mt, double %i.na, double %i.mz)
  %i.nc = call double @llvm.fmuladd.f64(double %i.mx, double %i.ip, double %i.nb)
  %i.nd = extractelement <2 x double> %i.cp, i64 0
  %i.ne = fsub double %i.nd, %i.nc
  %i.nf = insertelement <2 x double> poison, double %.080, i64 0
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nh = fmul <2 x double> %i.ho, %i.ng
  %i.ni = fmul double %i.na, %.080
  %i.nj = fmul <2 x double> %i.ih, %i.ng
  %i.nk = fmul double %i.my, %.080
  %i.nl = fmul <2 x double> %i.ik, %i.ng
  %i.nm = fmul double %i.ip, %.080
  store <2 x double> %i.nh, ptr %0, align 8, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ni, ptr %i.nn, align 8, !tbaa !8
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.no, align 8, !tbaa !8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.nj, ptr %i.np, align 8, !tbaa !8
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.nk, ptr %i.nq, align 8, !tbaa !8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.nr, align 8, !tbaa !8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.nl, ptr %i.ns, align 8, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.nm, ptr %i.nt, align 8, !tbaa !8
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.nu, align 8, !tbaa !8
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nw = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x double> %i.ih, %i.nx
  %i.nz = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.ho, <2 x double> %i.ny)
  %i.oc = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.ik, <2 x double> %i.ob)
  %i.of = fsub <2 x double> %i.co, %i.oe
  store <2 x double> %i.of, ptr %i.nv, align 8, !tbaa !8
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ne, ptr %i.og, align 8, !tbaa !8
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.oh, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  ret void
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = fadd double %.081237, %i.ai             ; 2 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !29
  %i.an = load <2 x float>, ptr %i.ak, align 4, !tbaa !27
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  %i.ap = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ar = fmul <2 x double> %i.aq, %i.ao
  %i.as = fadd <2 x double> %i.ae, %i.ar          ; 2 uses
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !29
  %i.aw = load <2 x float>, ptr %i.at, align 4, !tbaa !27
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x double> %i.aq, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.am, i64 1
  %i.bb = fpext <2 x float> %i.ba to <2 x double>
  %i.bc = fmul <2 x double> %i.aq, %i.bb
  %i.bd = fadd <2 x double> %i.ad, %i.ay          ; 2 uses
  %i.be = fadd <2 x double> %i.af, %i.bc          ; 2 uses
  %i.bf = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !32

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.i, %bb.d ], [ %i.aj, %.preheader228 ] ; 2 uses
  %i.bg = phi <2 x double> [ %i.aa, %bb.d ], [ %i.bd, %.preheader228 ]
  %i.bh = phi <2 x double> [ %i.r, %bb.d ], [ %i.as, %.preheader228 ]
  %i.bi = phi <2 x double> [ %i.ab, %bb.d ], [ %i.be, %.preheader228 ]
  %i.bj = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bl, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !8
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.bq = insertelement <2 x double> poison, double %.1, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bs = fdiv <2 x double> %i.bh, %i.br          ; 8 uses
  %i.bt = fdiv <2 x double> %i.bg, %i.br          ; 3 uses
  %i.bu = fdiv <2 x double> %i.bi, %i.br          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.ca = extractelement <2 x double> %i.bu, i64 0
  %i.cb = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.dm, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cc = phi double [ %i.dl, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cd = phi <2 x double> [ %i.dh, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.ce = phi <2 x double> [ %i.di, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cf = phi <2 x double> [ %i.dj, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cg = phi <2 x double> [ %i.dk, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !29
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !29
  %i.cn = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cm, i64 1
  %i.cp = fpext <2 x float> %i.co to <2 x double>
  %i.cq = fsub <2 x double> %i.cp, %i.bu          ; 5 uses
  %i.cr = load <2 x float>, ptr %i.ck, align 4, !tbaa !27
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fsub <2 x double> %i.cs, %i.bs          ; 4 uses
  %i.cu = load <2 x float>, ptr %i.ch, align 4, !tbaa !27
  %i.cv = fpext <2 x float> %i.cu to <2 x double>
  %i.cw = fsub <2 x double> %i.cv, %i.bt          ; 3 uses
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cx, %i.ct
  %i.cz = shufflevector <2 x double> %i.cq, <2 x double> %i.ct, <2 x i32> <i32 1, i32 2>
  %i.da = fmul <2 x double> %i.cw, %i.cz
  %i.db = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = shufflevector <2 x double> %i.ct, <2 x double> %i.cq, <2 x i32> <i32 1, i32 3>
  %i.dd = fmul <2 x double> %i.db, %i.dc
  %i.de = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.de, %i.ct
  %shift = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.cq, %shift
  %i.dg = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dh = fadd <2 x double> %i.cy, %i.cd          ; 2 uses
  %i.di = fadd <2 x double> %i.da, %i.ce          ; 2 uses
  %i.dj = fadd <2 x double> %i.dd, %i.cf          ; 2 uses
  %i.dk = fadd <2 x double> %i.df, %i.cg          ; 2 uses
  %i.dl = fadd double %i.dg, %i.cc                ; 2 uses
  %i.dm = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.dm, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !33

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.fg, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.dn = phi double [ %i.ff, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.do = phi <2 x double> [ %i.fb, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dp = phi <2 x double> [ %i.fc, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dq = phi <2 x double> [ %i.fd, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dr = phi <2 x double> [ %i.fe, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.082261
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !27
  %i.du = fpext float %i.dt to double             ; 2 uses
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !29
  %i.dy = fpext float %i.dx to double
  %i.dz = fsub double %i.dy, %i.ca
  %i.ea = fmul double %i.dz, %i.du                ; 2 uses
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !29
  %i.ee = fpext float %i.ed to double
  %i.ef = fsub double %i.ee, %i.cb                ; 3 uses
  %i.eg = load <2 x float>, ptr %i.eb, align 4, !tbaa !27
  %i.eh = fpext <2 x float> %i.eg to <2 x double>
  %i.ei = fsub <2 x double> %i.eh, %i.bs          ; 3 uses
  %i.ej = load <2 x float>, ptr %i.dv, align 4, !tbaa !27
  %i.ek = fpext <2 x float> %i.ej to <2 x double>
  %i.el = fsub <2 x double> %i.ek, %i.bt
  %i.em = insertelement <2 x double> poison, double %i.du, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.el, %i.en          ; 3 uses
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ep, %i.ei
  %i.er = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.es = insertelement <2 x double> %i.er, double %i.ef, i64 0
  %i.et = fmul <2 x double> %i.eo, %i.es
  %i.eu = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = insertelement <2 x double> %i.er, double %i.ef, i64 1
  %i.ew = fmul <2 x double> %i.eu, %i.ev
  %i.ex = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.ei, %i.ey
  %i.fa = fmul double %i.ea, %i.ef
  %i.fb = fadd <2 x double> %i.eq, %i.do          ; 2 uses
  %i.fc = fadd <2 x double> %i.et, %i.dp          ; 2 uses
  %i.fd = fadd <2 x double> %i.ew, %i.dq          ; 2 uses
  %i.fe = fadd <2 x double> %i.ez, %i.dr          ; 2 uses
  %i.ff = fadd double %i.fa, %i.dn                ; 2 uses
  %i.fg = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.fg, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !34

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.dl, %.preheader223 ], [ %i.ff, %.preheader225 ]
  %i.fh = phi <2 x double> [ %i.dh, %.preheader223 ], [ %i.fb, %.preheader225 ]
  %i.fi = phi <2 x double> [ %i.di, %.preheader223 ], [ %i.fc, %.preheader225 ]
  %i.fj = phi <2 x double> [ %i.dj, %.preheader223 ], [ %i.fd, %.preheader225 ]
  %i.fk = phi <2 x double> [ %i.dk, %.preheader223 ], [ %i.fe, %.preheader225 ]
  store <2 x double> %i.fh, ptr %6, align 16, !tbaa !8
  store <2 x double> %i.fi, ptr %i.bv, align 16, !tbaa !8
  store <2 x double> %i.fj, ptr %i.bx, align 16, !tbaa !8
  store <2 x double> %i.fk, ptr %i.by, align 16, !tbaa !8
  store double %storemerge, ptr %i.bz, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fm, align 8, !tbaa !8
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fo, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 8, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fq, align 8, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fs, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 48
  %10 = load double, ptr %i.fu, align 8, !tbaa !8, !noalias !35 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 56
  %11 = load double, ptr %i.fv, align 8, !tbaa !8, !noalias !35 ; 3 uses
  %i.fw = load double, ptr %i.fo, align 8, !tbaa !8, !noalias !35 ; 2 uses
  %i.fx = load double, ptr %8, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.fy = load double, ptr %i.fp, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ga = load <4 x double>, ptr %7, align 8, !tbaa !8, !noalias !35 ; 4 uses
  %i.gb = load double, ptr %i.ft, align 8, !tbaa !8, !noalias !35
  %i.gc = load double, ptr %i.fl, align 8, !tbaa !8, !noalias !35
  %i.gd = load <2 x double>, ptr %i.fm, align 8, !tbaa !8, !noalias !35 ; 2 uses
  %i.ge = load double, ptr %i.fn, align 8, !tbaa !8, !noalias !35
  %i.gf = shufflevector <2 x double> %i.gd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gg = shufflevector <4 x double> %i.ga, <4 x double> %i.gf, <2 x i32> <i32 1, i32 4>
  %i.gh = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x double> %i.gg, %i.gi
  %i.gk = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = shufflevector <4 x double> %i.ga, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gm, <2 x double> %i.gj)
  %i.go = shufflevector <4 x double> %i.ga, <4 x double> %i.gf, <2 x i32> <i32 2, i32 5>
  %12 = fmul double %11, %i.fy
  %13 = call double @llvm.fmuladd.f64(double %i.fx, double %10, double %12)
  %i.gp = load double, ptr %i.fq, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.gq = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gr = insertelement <2 x double> %i.gq, double %i.gc, i64 0 ; 2 uses
  %i.gs = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x double> %i.gr, %i.gt
  %i.gv = insertelement <2 x double> %i.gm, double %i.gb, i64 1 ; 2 uses
  %i.gw = shufflevector <4 x double> %i.ga, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.gx = insertelement <2 x double> %i.gw, double %i.ge, i64 1 ; 2 uses
  %i.gy = fmul double %11, %i.gp
  %i.gz = load <2 x double>, ptr %i.fz, align 8, !tbaa !8, !noalias !38 ; 3 uses
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.go, <2 x double> %i.gn) ; 4 uses
  %i.hc = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.gv, <2 x double> %i.gu)
  %i.he = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %10, i64 1 ; 2 uses
  %i.hg = insertelement <2 x double> poison, double %13, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.gy, i64 1
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.hf, <2 x double> %i.hh) ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.hl = load double, ptr %i.fs, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.hm = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x double> %i.gr, %i.hn
  %i.hp = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul double %11, %i.hk
  %i.hs = load <2 x double>, ptr %i.fr, align 8, !tbaa !8, !noalias !38 ; 3 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.gx, <2 x double> %i.hd) ; 4 uses
  %i.hv = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.gv, <2 x double> %i.ho)
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.gx, <2 x double> %i.hw) ; 4 uses
  %i.hy = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hz = insertelement <2 x double> %i.hy, double %i.hr, i64 1
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.hf, <2 x double> %i.hz) ; 3 uses
  %i.ib = extractelement <2 x double> %i.ia, i64 1
  %i.ic = call double @llvm.fmuladd.f64(double %i.hl, double %i.fw, double %i.ib) ; 3 uses
  %i.id = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.id
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.ie = extractelement <2 x double> %i.bs, i64 0
  %i.if = extractelement <2 x double> %i.bs, i64 1
  %i.ig = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.ih = extractelement <2 x double> %i.bs, i64 0
  %i.ii = extractelement <2 x double> %i.bs, i64 1
  %i.ij = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.jd, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.ja, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.jc, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.079286 ; 3 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !41
  %i.im = fpext float %i.il to double
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.io = load float, ptr %i.in, align 4, !tbaa !42
  %i.ip = fpext float %i.io to double
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !29
  %i.is = fpext float %i.ir to double
  %i.it = fsub double %i.im, %i.ih                ; 2 uses
  %i.iu = fsub double %i.ip, %i.ii                ; 2 uses
  %i.iv = fsub double %i.is, %i.ij                ; 2 uses
  %i.iw = fmul double %i.iu, %i.iu
  %i.ix = call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.iw)
  %i.iy = call noundef double @llvm.fmuladd.f64(double %i.iv, double %i.iv, double %i.ix)
  %i.iz = fsub double %i.iy, %.sroa.8.0284        ; 2 uses
  %i.ja = fadd double %.sroa.0110.0285, %i.iz     ; 3 uses
  %i.jb = fsub double %i.ja, %.sroa.0110.0285
  %i.jc = fsub double %i.jb, %i.iz
  %i.jd = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.jd, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !43

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.kb, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.jy, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.ka, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.078283
  %i.jf = load float, ptr %i.je, align 4, !tbaa !27
  %i.jg = fpext float %i.jf to double
  %i.jh = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !41
  %i.jj = fpext float %i.ji to double
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !42
  %i.jm = fpext float %i.jl to double
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !29
  %i.jp = fpext float %i.jo to double
  %i.jq = fsub double %i.jj, %i.ie                ; 2 uses
  %i.jr = fsub double %i.jm, %i.if                ; 2 uses
  %i.js = fsub double %i.jp, %i.ig                ; 2 uses
  %i.jt = fmul double %i.jr, %i.jr
  %i.ju = call double @llvm.fmuladd.f64(double %i.jq, double %i.jq, double %i.jt)
  %i.jv = call noundef double @llvm.fmuladd.f64(double %i.js, double %i.js, double %i.ju)
  %i.jw = fmul double %i.jv, %i.jg
  %i.jx = fsub double %i.jw, %.sroa.8.1281        ; 2 uses
  %i.jy = fadd double %.sroa.0110.1282, %i.jx     ; 3 uses
  %i.jz = fsub double %i.jy, %.sroa.0110.1282
  %i.ka = fsub double %i.jz, %i.jx
  %i.kb = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.kb, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !44

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.ja, %.preheader220 ], [ %i.jy, %.preheader221 ]
  %i.kc = load <2 x double>, ptr %6, align 16, !tbaa !8
  %i.kd = shufflevector <2 x double> %i.hb, <2 x double> %i.hu, <2 x i32> <i32 0, i32 2>
  %i.ke = fmul <2 x double> %i.kd, %i.kc          ; 2 uses
  %i.kf = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  %i.kg = fadd double %i.kf, 0.000000e+00         ; 3 uses
  %i.kh = fsub double %i.kg, %i.kf
  %i.ki = extractelement <2 x double> %i.ke, i64 1
  %i.kj = fsub double %i.ki, %i.kh                ; 2 uses
  %i.kk = fadd double %i.kg, %i.kj                ; 3 uses
  %i.kl = fsub double %i.kk, %i.kg
  %i.km = fsub double %i.kl, %i.kj
  %i.kn = load double, ptr %i.bv, align 16, !tbaa !8
  %i.ko = extractelement <2 x double> %i.hx, i64 0
  %i.kp = fmul double %i.ko, %i.kn
  %i.kq = fsub double %i.kp, %i.km                ; 2 uses
  %i.kr = fadd double %i.kk, %i.kq                ; 3 uses
  %i.ks = fsub double %i.kr, %i.kk
  %i.kt = fsub double %i.ks, %i.kq
  %i.ku = load double, ptr %i.bw, align 8, !tbaa !8
  %i.kv = extractelement <2 x double> %i.hb, i64 1
  %i.kw = fmul double %i.kv, %i.ku
  %i.kx = fsub double %i.kw, %i.kt                ; 2 uses
  %i.ky = fadd double %i.kr, %i.kx                ; 3 uses
  %i.kz = fsub double %i.ky, %i.kr
  %i.la = fsub double %i.kz, %i.kx
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.lc = load double, ptr %i.lb, align 16, !tbaa !8
  %i.ld = extractelement <2 x double> %i.hu, i64 1
  %i.le = fmul double %i.ld, %i.lc
  %i.lf = fsub double %i.le, %i.la                ; 2 uses
  %i.lg = fadd double %i.ky, %i.lf                ; 3 uses
  %i.lh = fsub double %i.lg, %i.ky
  %i.li = fsub double %i.lh, %i.lf
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !8
  %i.ll = extractelement <2 x double> %i.hx, i64 1
  %i.lm = fmul double %i.ll, %i.lk
  %i.ln = fsub double %i.lm, %i.li                ; 2 uses
  %i.lo = fadd double %i.lg, %i.ln                ; 3 uses
  %i.lp = fsub double %i.lo, %i.lg
  %i.lq = fsub double %i.lp, %i.ln
  %i.lr = load double, ptr %i.by, align 16, !tbaa !8
  %i.ls = extractelement <2 x double> %i.hi, i64 0
  %i.lt = fmul double %i.ls, %i.lr
  %i.lu = fsub double %i.lt, %i.lq                ; 2 uses
  %i.lv = fadd double %i.lo, %i.lu                ; 3 uses
  %i.lw = fsub double %i.lv, %i.lo
  %i.lx = fsub double %i.lw, %i.lu
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !8
  %i.ma = extractelement <2 x double> %i.ia, i64 0
  %i.mb = fmul double %i.ma, %i.lz
  %i.mc = fsub double %i.mb, %i.lx                ; 2 uses
  %i.md = fadd double %i.lv, %i.mc                ; 2 uses
  %i.me = fsub double %i.md, %i.lv
  %i.mf = fsub double %i.me, %i.mc
  %i.mg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.mh = load double, ptr %i.mg, align 16, !tbaa !8
  %i.mi = fmul double %i.ic, %i.mh
  %i.mj = fsub double %i.mi, %i.mf
  %i.mk = fadd double %i.md, %i.mj
  %i.ml = fdiv double %i.mk, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.ml, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.mm = extractelement <2 x double> %i.bs, i64 0
  %i.mn = fmul double %i.mm, %.080                ; 2 uses
  %i.mo = extractelement <2 x double> %i.bs, i64 1
  %i.mp = fmul double %i.mo, %.080                ; 2 uses
  %i.mq = extractelement <2 x double> %i.bu, i64 1
  %i.mr = fmul double %i.mq, %.080                ; 2 uses
  %i.ms = extractelement <2 x double> %i.ia, i64 0 ; 2 uses
  %i.mt = fmul double %i.ms, %i.mp
  %i.mu = extractelement <2 x double> %i.hi, i64 0 ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mn, double %i.mu, double %i.mt)
  %i.mw = call double @llvm.fmuladd.f64(double %i.mr, double %i.ic, double %i.mv)
  %i.mx = extractelement <2 x double> %i.bu, i64 0
  %i.my = fsub double %i.mx, %i.mw
  %i.mz = insertelement <2 x double> poison, double %.080, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nb = fmul <2 x double> %i.hb, %i.na
  %i.nc = fmul double %i.mu, %.080
  %i.nd = fmul <2 x double> %i.hu, %i.na
  %i.ne = fmul double %i.ms, %.080
  %i.nf = fmul <2 x double> %i.hx, %i.na
  %i.ng = fmul double %i.ic, %.080
  store <2 x double> %i.nb, ptr %0, align 8, !tbaa !8
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.nc, ptr %i.nh, align 8, !tbaa !8
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.ni, align 8, !tbaa !8
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.nd, ptr %i.nj, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ne, ptr %i.nk, align 8, !tbaa !8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.nl, align 8, !tbaa !8
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.nf, ptr %i.nm, align 8, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ng, ptr %i.nn, align 8, !tbaa !8
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.no, align 8, !tbaa !8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nq = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ns = fmul <2 x double> %i.hu, %i.nr
  %i.nt = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.hb, <2 x double> %i.ns)
  %i.nw = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> %i.hx, <2 x double> %i.nv)
  %i.nz = fsub <2 x double> %i.bt, %i.ny
  store <2 x double> %i.nz, ptr %i.np, align 8, !tbaa !8
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.my, ptr %i.oa, align 8, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.ob, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
end_hunk_1
