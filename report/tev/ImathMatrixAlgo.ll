Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImathMatrixAlgo?download=true
inline.NumInlined: 1139
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.bc = phi <2 x double> [ %i.by, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bd = phi <2 x double> [ %i.bs, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.be = phi <2 x double> [ %i.bz, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.085236
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !9 ; 2 uses
  %i.bh = fadd double %.081237, %i.bg             ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = load double, ptr %i.bj, align 8, !tbaa !11
  %i.bo = load <2 x double>, ptr %i.bi, align 8, !tbaa !9
  %i.bp = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = fmul <2 x double> %i.bq, %i.bo
  %i.bs = fadd <2 x double> %i.bd, %i.br          ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bk, align 8, !tbaa !9
  %i.bu = fmul <2 x double> %i.bq, %i.bt
  %i.bv = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bn, i64 1
  %i.bx = fmul <2 x double> %i.bq, %i.bw
  %i.by = fadd <2 x double> %i.bc, %i.bu          ; 2 uses
  %i.bz = fadd <2 x double> %i.be, %i.bx          ; 2 uses
  %i.ca = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !20

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.w, %bb.d ], [ %i.bh, %.preheader228 ] ; 2 uses
  %i.cb = phi <2 x double> [ %.lcssa433, %bb.d ], [ %i.by, %.preheader228 ]
  %i.cc = phi <2 x double> [ %.lcssa434, %bb.d ], [ %i.bs, %.preheader228 ]
  %i.cd = phi <2 x double> [ %.lcssa432, %bb.d ], [ %i.bz, %.preheader228 ]
  %i.ce = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ci, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ck, align 8, !tbaa !9
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.cl = insertelement <2 x double> poison, double %.1, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cn = fdiv <2 x double> %i.cc, %i.cm          ; 8 uses
  %i.co = fdiv <2 x double> %i.cb, %i.cm          ; 3 uses
  %i.cp = fdiv <2 x double> %i.cd, %i.cm          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.cu = extractelement <2 x double> %i.cp, i64 0
  %i.cv = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.ed, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cw = phi double [ %i.ec, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cx = phi <2 x double> [ %i.dy, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cy = phi <2 x double> [ %i.dz, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cz = phi <2 x double> [ %i.ea, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.da = phi <2 x double> [ %i.eb, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !11
  %i.dh = load <2 x double>, ptr %i.de, align 8, !tbaa !9
  %i.di = fsub <2 x double> %i.dh, %i.cn          ; 4 uses
  %i.dj = load <2 x double>, ptr %i.db, align 8, !tbaa !9
  %i.dk = fsub <2 x double> %i.dj, %i.co          ; 3 uses
  %i.dl = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dg, i64 1
  %i.dn = fsub <2 x double> %i.dm, %i.cp          ; 5 uses
  %i.do = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.do, %i.di
  %i.dq = shufflevector <2 x double> %i.dn, <2 x double> %i.di, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x double> %i.dk, %i.dq
  %i.ds = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = shufflevector <2 x double> %i.di, <2 x double> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.du = fmul <2 x double> %i.ds, %i.dt
  %i.dv = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %i.dv, %i.di
  %shift = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dn, %shift
  %i.dx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dy = fadd <2 x double> %i.dp, %i.cx          ; 2 uses
  %i.dz = fadd <2 x double> %i.dr, %i.cy          ; 2 uses
  %i.ea = fadd <2 x double> %i.du, %i.cz          ; 2 uses
  %i.eb = fadd <2 x double> %i.dw, %i.da          ; 2 uses
  %i.ec = fadd double %i.dx, %i.cw                ; 2 uses
  %i.ed = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.ed, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !21

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.fs, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.ee = phi double [ %i.fr, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.ef = phi <2 x double> [ %i.fn, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eg = phi <2 x double> [ %i.fo, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eh = phi <2 x double> [ %i.fp, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ei = phi <2 x double> [ %i.fq, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.082261
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !9 ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = fsub double %i.en, %i.cu
  %i.ep = fmul double %i.ek, %i.eo                ; 2 uses
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load double, ptr %i.er, align 8, !tbaa !11
  %i.et = load <2 x double>, ptr %i.eq, align 8, !tbaa !9
  %i.eu = fsub <2 x double> %i.et, %i.cn          ; 3 uses
  %i.ev = load <2 x double>, ptr %i.el, align 8, !tbaa !9
  %i.ew = fsub <2 x double> %i.ev, %i.co
  %i.ex = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.ey, %i.ew          ; 3 uses
  %i.fa = fsub double %i.es, %i.cv                ; 3 uses
  %i.fb = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x double> %i.fb, %i.eu
  %i.fd = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fe = insertelement <2 x double> %i.fd, double %i.fa, i64 0
  %i.ff = fmul <2 x double> %i.ez, %i.fe
  %i.fg = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = insertelement <2 x double> %i.fd, double %i.fa, i64 1
  %i.fi = fmul <2 x double> %i.fg, %i.fh
  %i.fj = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.eu, %i.fk
  %i.fm = fmul double %i.ep, %i.fa
  %i.fn = fadd <2 x double> %i.fc, %i.ef          ; 2 uses
  %i.fo = fadd <2 x double> %i.ff, %i.eg          ; 2 uses
  %i.fp = fadd <2 x double> %i.fi, %i.eh          ; 2 uses
  %i.fq = fadd <2 x double> %i.fl, %i.ei          ; 2 uses
  %i.fr = fadd double %i.fm, %i.ee                ; 2 uses
  %i.fs = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.fs, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !22

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.ec, %.preheader223 ], [ %i.fr, %.preheader225 ]
  %i.ft = phi <2 x double> [ %i.dy, %.preheader223 ], [ %i.fn, %.preheader225 ]
  %i.fu = phi <2 x double> [ %i.dz, %.preheader223 ], [ %i.fo, %.preheader225 ]
  %i.fv = phi <2 x double> [ %i.ea, %.preheader223 ], [ %i.fp, %.preheader225 ]
  %i.fw = phi <2 x double> [ %i.eb, %.preheader223 ], [ %i.fq, %.preheader225 ]
  store <2 x double> %i.ft, ptr %6, align 16, !tbaa !9
  store <2 x double> %i.fu, ptr %i.cq, align 16, !tbaa !9
  store <2 x double> %i.fv, ptr %i.cr, align 16, !tbaa !9
  store <2 x double> %i.fw, ptr %i.cs, align 16, !tbaa !9
  store double %storemerge, ptr %i.ct, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fy, align 8, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ga, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 16, !tbaa !9
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.gc, align 16, !tbaa !9
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ge, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.gi = load double, ptr %i.ga, align 8, !tbaa !9, !noalias !29 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gk = load <4 x double>, ptr %7, align 8, !tbaa !9, !noalias !29 ; 4 uses
  %i.gl = load double, ptr %i.gf, align 8, !tbaa !9, !noalias !29
  %i.gm = load double, ptr %i.fx, align 8, !tbaa !9, !noalias !29
  %i.gn = load <2 x double>, ptr %i.fy, align 8, !tbaa !9, !noalias !29 ; 2 uses
  %i.go = load double, ptr %i.fz, align 8, !tbaa !9, !noalias !29
  %10 = load <2 x double>, ptr %i.gj, align 16    ; 2 uses
  %i.gp = shufflevector <2 x double> %i.gn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gq = shufflevector <4 x double> %i.gk, <4 x double> %i.gp, <2 x i32> <i32 1, i32 4>
  %i.gr = shufflevector <4 x double> %i.gk, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gs = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <4 x double> %i.gk, <4 x double> %i.gp, <2 x i32> <i32 2, i32 5>
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gv = load double, ptr %i.gd, align 8, !tbaa !9, !noalias !30 ; 2 uses
  %i.gw = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gx = insertelement <2 x double> %i.gw, double %i.gm, i64 0 ; 2 uses
  %i.gy = insertelement <2 x double> %i.gr, double %i.gl, i64 1 ; 2 uses
  %i.gz = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = shufflevector <4 x double> %i.gk, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.hc = insertelement <2 x double> %i.hb, double %i.go, i64 1 ; 2 uses
  %i.hd = load double, ptr %i.gg, align 8, !tbaa !9, !noalias !29 ; 2 uses
  %i.he = load double, ptr %i.gh, align 8, !tbaa !9, !noalias !29 ; 2 uses
  %i.hf = load <2 x double>, ptr %8, align 16, !tbaa !9, !noalias !30 ; 4 uses
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hh = fmul <2 x double> %i.gq, %i.hg
  %i.hi = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.gr, <2 x double> %i.hh)
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gt, <2 x double> %i.hj) ; 4 uses
  %i.hl = load <2 x double>, ptr %i.gu, align 8, !tbaa !9, !noalias !30 ; 4 uses
  %i.hm = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = shufflevector <2 x double> %i.hf, <2 x double> %i.hl, <2 x i32> <i32 1, i32 3>
  %i.hp = fmul <2 x double> %i.hn, %i.ho
  %i.hq = shufflevector <2 x double> %i.hf, <2 x double> %i.hl, <2 x i32> <i32 0, i32 2>
  %i.hr = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.hs, <2 x double> %i.hp)
  %i.hu = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = fmul <2 x double> %i.gx, %i.hu
  %i.hw = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.gy, <2 x double> %i.hv)
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.hc, <2 x double> %i.hx) ; 4 uses
  %i.hz = insertelement <2 x double> %10, double %i.gv, i64 1
  %i.ia = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ib, <2 x double> %i.ht) ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ie = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.if = load double, ptr %i.id, align 16, !tbaa !9, !noalias !30 ; 2 uses
  %i.ig = load double, ptr %i.ie, align 8, !tbaa !9, !noalias !30 ; 2 uses
  %i.ih = load double, ptr %i.ge, align 16, !tbaa !9, !noalias !30 ; 2 uses
  %i.ii = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x double> %i.gx, %i.ij
  %i.il = insertelement <2 x double> poison, double %i.if, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.gy, <2 x double> %i.ik)
  %i.io = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.hc, <2 x double> %i.in) ; 4 uses
  %i.ir = fmul double %i.he, %i.ig
  %i.is = call double @llvm.fmuladd.f64(double %i.if, double %i.hd, double %i.ir)
  %i.it = call double @llvm.fmuladd.f64(double %i.ih, double %i.gi, double %i.is) ; 3 uses
  %i.iu = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.iu
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.iv = extractelement <2 x double> %i.cn, i64 0
  %i.iw = extractelement <2 x double> %i.cn, i64 1
  %i.ix = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.iy = extractelement <2 x double> %i.cn, i64 0
  %i.iz = extractelement <2 x double> %i.cn, i64 1
  %i.ja = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.jr, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.jo, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.jq, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.079286 ; 3 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !13
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.je = load double, ptr %i.jd, align 8, !tbaa !31
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !11
  %i.jh = fsub double %i.jc, %i.iy                ; 2 uses
  %i.ji = fsub double %i.je, %i.iz                ; 2 uses
  %i.jj = fsub double %i.jg, %i.ja                ; 2 uses
  %i.jk = fmul double %i.ji, %i.ji
  %i.jl = call double @llvm.fmuladd.f64(double %i.jh, double %i.jh, double %i.jk)
  %i.jm = call noundef double @llvm.fmuladd.f64(double %i.jj, double %i.jj, double %i.jl)
  %i.jn = fsub double %i.jm, %.sroa.8.0284        ; 2 uses
  %i.jo = fadd double %.sroa.0110.0285, %i.jn     ; 3 uses
  %i.jp = fsub double %i.jo, %.sroa.0110.0285
  %i.jq = fsub double %i.jp, %i.jn
  %i.jr = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.jr, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !27

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.kl, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.ki, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.kk, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078283
  %i.jt = load double, ptr %i.js, align 8, !tbaa !9
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !31
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !11
  %i.ka = fsub double %i.jv, %i.iv                ; 2 uses
  %i.kb = fsub double %i.jx, %i.iw                ; 2 uses
  %i.kc = fsub double %i.jz, %i.ix                ; 2 uses
  %i.kd = fmul double %i.kb, %i.kb
  %i.ke = call double @llvm.fmuladd.f64(double %i.ka, double %i.ka, double %i.kd)
  %i.kf = call noundef double @llvm.fmuladd.f64(double %i.kc, double %i.kc, double %i.ke)
  %i.kg = fmul double %i.jt, %i.kf
  %i.kh = fsub double %i.kg, %.sroa.8.1281        ; 2 uses
  %i.ki = fadd double %.sroa.0110.1282, %i.kh     ; 3 uses
  %i.kj = fsub double %i.ki, %.sroa.0110.1282
  %i.kk = fsub double %i.kj, %i.kh
  %i.kl = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.kl, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !28

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.jo, %.preheader220 ], [ %i.ki, %.preheader221 ]
  %i.km = load <2 x double>, ptr %6, align 16, !tbaa !9
  %i.kn = shufflevector <2 x double> %i.hk, <2 x double> %i.hy, <2 x i32> <i32 0, i32 2>
  %i.ko = fmul <2 x double> %i.kn, %i.km          ; 2 uses
  %i.kp = extractelement <2 x double> %i.ko, i64 0 ; 2 uses
  %i.kq = fadd double %i.kp, 0.000000e+00         ; 3 uses
  %i.kr = fsub double %i.kq, %i.kp
  %i.ks = extractelement <2 x double> %i.ko, i64 1
  %i.kt = fsub double %i.ks, %i.kr                ; 2 uses
  %i.ku = fadd double %i.kq, %i.kt                ; 3 uses
  %i.kv = fsub double %i.ku, %i.kq
  %i.kw = fsub double %i.kv, %i.kt
  %i.kx = load <2 x double>, ptr %i.cq, align 16, !tbaa !9
  %i.ky = shufflevector <2 x double> %i.iq, <2 x double> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.kz = fmul <2 x double> %i.ky, %i.kx          ; 2 uses
  %i.la = extractelement <2 x double> %i.kz, i64 0
  %i.lb = fsub double %i.la, %i.kw                ; 2 uses
  %i.lc = fadd double %i.ku, %i.lb                ; 3 uses
  %i.ld = fsub double %i.lc, %i.ku
  %i.le = fsub double %i.ld, %i.lb
  %i.lf = extractelement <2 x double> %i.kz, i64 1
  %i.lg = fsub double %i.lf, %i.le                ; 2 uses
  %i.lh = fadd double %i.lc, %i.lg                ; 3 uses
  %i.li = fsub double %i.lh, %i.lc
  %i.lj = fsub double %i.li, %i.lg
  %i.lk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ll = load <2 x double>, ptr %i.lk, align 16, !tbaa !9
  %i.lm = shufflevector <2 x double> %i.hy, <2 x double> %i.iq, <2 x i32> <i32 1, i32 3>
  %i.ln = fmul <2 x double> %i.lm, %i.ll          ; 2 uses
  %i.lo = extractelement <2 x double> %i.ln, i64 0
  %i.lp = fsub double %i.lo, %i.lj                ; 2 uses
  %i.lq = fadd double %i.lh, %i.lp                ; 3 uses
  %i.lr = fsub double %i.lq, %i.lh
  %i.ls = fsub double %i.lr, %i.lp
  %i.lt = extractelement <2 x double> %i.ln, i64 1
  %i.lu = fsub double %i.lt, %i.ls                ; 2 uses
  %i.lv = fadd double %i.lq, %i.lu                ; 3 uses
  %i.lw = fsub double %i.lv, %i.lq
  %i.lx = fsub double %i.lw, %i.lu
  %i.ly = load <2 x double>, ptr %i.cs, align 16, !tbaa !9
  %i.lz = fmul <2 x double> %i.ic, %i.ly          ; 2 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0
  %i.mb = fsub double %i.ma, %i.lx                ; 2 uses
  %i.mc = fadd double %i.lv, %i.mb                ; 3 uses
  %i.md = fsub double %i.mc, %i.lv
  %i.me = fsub double %i.md, %i.mb
  %i.mf = extractelement <2 x double> %i.lz, i64 1
  %i.mg = fsub double %i.mf, %i.me                ; 2 uses
  %i.mh = fadd double %i.mc, %i.mg                ; 2 uses
  %i.mi = fsub double %i.mh, %i.mc
  %i.mj = fsub double %i.mi, %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ml = load double, ptr %i.mk, align 16, !tbaa !9
  %i.mm = fmul double %i.it, %i.ml
  %i.mn = fsub double %i.mm, %i.mj
  %i.mo = fadd double %i.mh, %i.mn
  %i.mp = fdiv double %i.mo, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.mp, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.mq = extractelement <2 x double> %i.cn, i64 0
  %i.mr = fmul double %i.mq, %.080                ; 2 uses
  %i.ms = extractelement <2 x double> %i.cn, i64 1
  %i.mt = fmul double %i.ms, %.080                ; 2 uses
  %i.mu = extractelement <2 x double> %i.cp, i64 1
  %i.mv = fmul double %i.mu, %.080                ; 2 uses
  %i.mw = extractelement <2 x double> %i.ic, i64 1 ; 2 uses
  %i.mx = fmul double %i.mw, %i.mt
  %i.my = extractelement <2 x double> %i.ic, i64 0 ; 2 uses
  %i.mz = call double @llvm.fmuladd.f64(double %i.mr, double %i.my, double %i.mx)
  %i.na = call double @llvm.fmuladd.f64(double %i.mv, double %i.it, double %i.mz)
  %i.nb = extractelement <2 x double> %i.cp, i64 0
  %i.nc = fsub double %i.nb, %i.na
  %i.nd = insertelement <2 x double> poison, double %.080, i64 0
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nf = fmul <2 x double> %i.hk, %i.ne
  %i.ng = fmul double %i.my, %.080
  %i.nh = fmul <2 x double> %i.hy, %i.ne
  %i.ni = fmul double %i.mw, %.080
  %i.nj = fmul <2 x double> %i.iq, %i.ne
  %i.nk = fmul double %i.it, %.080
  store <2 x double> %i.nf, ptr %0, align 8, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ng, ptr %i.nl, align 8, !tbaa !9
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.nm, align 8, !tbaa !9
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.nh, ptr %i.nn, align 8, !tbaa !9
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ni, ptr %i.no, align 8, !tbaa !9
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.np, align 8, !tbaa !9
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.nj, ptr %i.nq, align 8, !tbaa !9
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.nk, ptr %i.nr, align 8, !tbaa !9
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.ns, align 8, !tbaa !9
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nu = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x double> %i.hy, %i.nv
  %i.nx = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.hk, <2 x double> %i.nw)
  %i.oa = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.iq, <2 x double> %i.nz)
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.ap = load float, ptr %i.al, align 4, !tbaa !17
  %i.aq = load <2 x float>, ptr %i.ak, align 4, !tbaa !15
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.au = fmul <2 x double> %i.at, %i.ar
  %i.av = fadd <2 x double> %i.ae, %i.au          ; 2 uses
  %i.aw = load <2 x float>, ptr %i.am, align 4, !tbaa !15
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x double> %i.at, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ap, i64 1
  %i.bb = fpext <2 x float> %i.ba to <2 x double>
  %i.bc = fmul <2 x double> %i.at, %i.bb
  %i.bd = fadd <2 x double> %i.ad, %i.ay          ; 2 uses
  %i.be = fadd <2 x double> %i.af, %i.bc          ; 2 uses
  %i.bf = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !33

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.i, %bb.d ], [ %i.aj, %.preheader228 ] ; 2 uses
  %i.bg = phi <2 x double> [ %i.aa, %bb.d ], [ %i.bd, %.preheader228 ]
  %i.bh = phi <2 x double> [ %i.s, %bb.d ], [ %i.av, %.preheader228 ]
  %i.bi = phi <2 x double> [ %i.ab, %bb.d ], [ %i.be, %.preheader228 ]
  %i.bj = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bl, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !9
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.bq = insertelement <2 x double> poison, double %.1, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bs = fdiv <2 x double> %i.bh, %i.br          ; 8 uses
  %i.bt = fdiv <2 x double> %i.bg, %i.br          ; 3 uses
  %i.bu = fdiv <2 x double> %i.bi, %i.br          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.bz = extractelement <2 x double> %i.bu, i64 0
  %i.ca = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.dl, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cb = phi double [ %i.dk, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cc = phi <2 x double> [ %i.dg, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cd = phi <2 x double> [ %i.dh, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.ce = phi <2 x double> [ %i.di, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cf = phi <2 x double> [ %i.dj, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !17
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !17
  %i.cm = load <2 x float>, ptr %i.cj, align 4, !tbaa !15
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fsub <2 x double> %i.cn, %i.bs          ; 4 uses
  %i.cp = load <2 x float>, ptr %i.cg, align 4, !tbaa !15
  %i.cq = fpext <2 x float> %i.cp to <2 x double>
  %i.cr = fsub <2 x double> %i.cq, %i.bt          ; 3 uses
  %i.cs = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cl, i64 1
  %i.cu = fpext <2 x float> %i.ct to <2 x double>
  %i.cv = fsub <2 x double> %i.cu, %i.bu          ; 5 uses
  %i.cw = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, %i.co
  %i.cy = shufflevector <2 x double> %i.cv, <2 x double> %i.co, <2 x i32> <i32 1, i32 2>
  %i.cz = fmul <2 x double> %i.cr, %i.cy
  %i.da = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.db = shufflevector <2 x double> %i.co, <2 x double> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.dc = fmul <2 x double> %i.da, %i.db
  %i.dd = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.dd, %i.co
  %shift = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.cv, %shift
  %i.df = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dg = fadd <2 x double> %i.cx, %i.cc          ; 2 uses
  %i.dh = fadd <2 x double> %i.cz, %i.cd          ; 2 uses
  %i.di = fadd <2 x double> %i.dc, %i.ce          ; 2 uses
  %i.dj = fadd <2 x double> %i.de, %i.cf          ; 2 uses
  %i.dk = fadd double %i.df, %i.cb                ; 2 uses
  %i.dl = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.dl, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !34

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.ff, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.dm = phi double [ %i.fe, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.dn = phi <2 x double> [ %i.fa, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.do = phi <2 x double> [ %i.fb, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dp = phi <2 x double> [ %i.fc, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dq = phi <2 x double> [ %i.fd, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.082261
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !15
  %i.dt = fpext float %i.ds to double             ; 2 uses
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !17
  %i.dx = fpext float %i.dw to double
  %i.dy = fsub double %i.dx, %i.bz
  %i.dz = fmul double %i.dy, %i.dt                ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !17
  %i.ed = fpext float %i.ec to double
  %i.ee = load <2 x float>, ptr %i.ea, align 4, !tbaa !15
  %i.ef = fpext <2 x float> %i.ee to <2 x double>
  %i.eg = fsub <2 x double> %i.ef, %i.bs          ; 3 uses
  %i.eh = load <2 x float>, ptr %i.du, align 4, !tbaa !15
  %i.ei = fpext <2 x float> %i.eh to <2 x double>
  %i.ej = fsub <2 x double> %i.ei, %i.bt
  %i.ek = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.ej, %i.el          ; 3 uses
  %i.en = fsub double %i.ed, %i.ca                ; 3 uses
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %i.eo, %i.eg
  %i.eq = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.er = insertelement <2 x double> %i.eq, double %i.en, i64 0
  %i.es = fmul <2 x double> %i.em, %i.er
  %i.et = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = insertelement <2 x double> %i.eq, double %i.en, i64 1
  %i.ev = fmul <2 x double> %i.et, %i.eu
  %i.ew = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.eg, %i.ex
  %i.ez = fmul double %i.dz, %i.en
  %i.fa = fadd <2 x double> %i.ep, %i.dn          ; 2 uses
  %i.fb = fadd <2 x double> %i.es, %i.do          ; 2 uses
  %i.fc = fadd <2 x double> %i.ev, %i.dp          ; 2 uses
  %i.fd = fadd <2 x double> %i.ey, %i.dq          ; 2 uses
  %i.fe = fadd double %i.ez, %i.dm                ; 2 uses
  %i.ff = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.ff, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !35

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.dk, %.preheader223 ], [ %i.fe, %.preheader225 ]
  %i.fg = phi <2 x double> [ %i.dg, %.preheader223 ], [ %i.fa, %.preheader225 ]
  %i.fh = phi <2 x double> [ %i.dh, %.preheader223 ], [ %i.fb, %.preheader225 ]
  %i.fi = phi <2 x double> [ %i.di, %.preheader223 ], [ %i.fc, %.preheader225 ]
  %i.fj = phi <2 x double> [ %i.dj, %.preheader223 ], [ %i.fd, %.preheader225 ]
  store <2 x double> %i.fg, ptr %6, align 16, !tbaa !9
  store <2 x double> %i.fh, ptr %i.bv, align 16, !tbaa !9
  store <2 x double> %i.fi, ptr %i.bw, align 16, !tbaa !9
  store <2 x double> %i.fj, ptr %i.bx, align 16, !tbaa !9
  store double %storemerge, ptr %i.by, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fl, align 8, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fn, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 16, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fp, align 16, !tbaa !9
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fr, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fv = load double, ptr %i.fn, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fx = load <4 x double>, ptr %7, align 8, !tbaa !9, !noalias !42 ; 4 uses
  %i.fy = load double, ptr %i.fs, align 8, !tbaa !9, !noalias !42
  %i.fz = load double, ptr %i.fk, align 8, !tbaa !9, !noalias !42
  %i.ga = load <2 x double>, ptr %i.fl, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %i.gb = load double, ptr %i.fm, align 8, !tbaa !9, !noalias !42
  %10 = load <2 x double>, ptr %i.fw, align 16    ; 2 uses
  %i.gc = shufflevector <2 x double> %i.ga, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gd = shufflevector <4 x double> %i.fx, <4 x double> %i.gc, <2 x i32> <i32 1, i32 4>
  %i.ge = shufflevector <4 x double> %i.fx, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gf = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = shufflevector <4 x double> %i.fx, <4 x double> %i.gc, <2 x i32> <i32 2, i32 5>
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gi = load double, ptr %i.fq, align 8, !tbaa !9, !noalias !43 ; 2 uses
  %i.gj = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gk = insertelement <2 x double> %i.gj, double %i.fz, i64 0 ; 2 uses
  %i.gl = insertelement <2 x double> %i.ge, double %i.fy, i64 1 ; 2 uses
  %i.gm = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = shufflevector <4 x double> %i.fx, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.gp = insertelement <2 x double> %i.go, double %i.gb, i64 1 ; 2 uses
  %i.gq = load double, ptr %i.ft, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %i.gr = load double, ptr %i.fu, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %i.gs = load <2 x double>, ptr %8, align 16, !tbaa !9, !noalias !43 ; 4 uses
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = fmul <2 x double> %i.gd, %i.gt
  %i.gv = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.ge, <2 x double> %i.gu)
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.gg, <2 x double> %i.gw) ; 4 uses
  %i.gy = load <2 x double>, ptr %i.gh, align 8, !tbaa !9, !noalias !43 ; 4 uses
  %i.gz = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = shufflevector <2 x double> %i.gs, <2 x double> %i.gy, <2 x i32> <i32 1, i32 3>
  %i.hc = fmul <2 x double> %i.ha, %i.hb
  %i.hd = shufflevector <2 x double> %i.gs, <2 x double> %i.gy, <2 x i32> <i32 0, i32 2>
  %i.he = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.hf, <2 x double> %i.hc)
  %i.hh = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hi = fmul <2 x double> %i.gk, %i.hh
  %i.hj = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.gl, <2 x double> %i.hi)
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gp, <2 x double> %i.hk) ; 4 uses
  %i.hm = insertelement <2 x double> %10, double %i.gi, i64 1
  %i.hn = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.ho, <2 x double> %i.hg) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hs = load double, ptr %i.hq, align 16, !tbaa !9, !noalias !43 ; 2 uses
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !9, !noalias !43 ; 2 uses
  %i.hu = load double, ptr %i.fr, align 16, !tbaa !9, !noalias !43 ; 2 uses
  %i.hv = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %i.gk, %i.hw
  %i.hy = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.gl, <2 x double> %i.hx)
  %i.ib = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.gp, <2 x double> %i.ia) ; 4 uses
  %i.ie = fmul double %i.gr, %i.ht
  %i.if = call double @llvm.fmuladd.f64(double %i.hs, double %i.gq, double %i.ie)
  %i.ig = call double @llvm.fmuladd.f64(double %i.hu, double %i.fv, double %i.if) ; 3 uses
  %i.ih = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.ih
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.ii = extractelement <2 x double> %i.bs, i64 0
  %i.ij = extractelement <2 x double> %i.bs, i64 1
  %i.ik = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.il = extractelement <2 x double> %i.bs, i64 0
  %shift419 = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.jb, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.iy, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.ja, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.im = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.079286 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !18
  %i.io = fpext float %i.in to double
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.iq = load <2 x float>, ptr %i.ip, align 4, !tbaa !15
  %i.ir = fpext <2 x float> %i.iq to <2 x double> ; 2 uses
  %i.is = fsub double %i.io, %i.il                ; 2 uses
  %foldExtExtBinop420 = fsub <2 x double> %i.ir, %shift419 ; 2 uses
  %foldExtExtBinop422 = fsub <2 x double> %i.ir, %i.bu
  %i.it = extractelement <2 x double> %foldExtExtBinop422, i64 1 ; 2 uses
  %foldExtExtBinop424 = fmul <2 x double> %foldExtExtBinop420, %foldExtExtBinop420
  %i.iu = extractelement <2 x double> %foldExtExtBinop424, i64 0
  %i.iv = call double @llvm.fmuladd.f64(double %i.is, double %i.is, double %i.iu)
  %i.iw = call noundef double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.iv)
  %i.ix = fsub double %i.iw, %.sroa.8.0284        ; 2 uses
  %i.iy = fadd double %.sroa.0110.0285, %i.ix     ; 3 uses
  %i.iz = fsub double %i.iy, %.sroa.0110.0285
  %i.ja = fsub double %i.iz, %i.ix
  %i.jb = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.jb, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !40

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.jz, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.jw, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.jy, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.078283
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !15
  %i.je = fpext float %i.jd to double
  %i.jf = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !18
  %i.jh = fpext float %i.jg to double
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !44
  %i.jk = fpext float %i.jj to double
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !17
  %i.jn = fpext float %i.jm to double
  %i.jo = fsub double %i.jh, %i.ii                ; 2 uses
  %i.jp = fsub double %i.jk, %i.ij                ; 2 uses
  %i.jq = fsub double %i.jn, %i.ik                ; 2 uses
  %i.jr = fmul double %i.jp, %i.jp
  %i.js = call double @llvm.fmuladd.f64(double %i.jo, double %i.jo, double %i.jr)
  %i.jt = call noundef double @llvm.fmuladd.f64(double %i.jq, double %i.jq, double %i.js)
  %i.ju = fmul double %i.jt, %i.je
  %i.jv = fsub double %i.ju, %.sroa.8.1281        ; 2 uses
  %i.jw = fadd double %.sroa.0110.1282, %i.jv     ; 3 uses
  %i.jx = fsub double %i.jw, %.sroa.0110.1282
  %i.jy = fsub double %i.jx, %i.jv
  %i.jz = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.jz, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !41

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.iy, %.preheader220 ], [ %i.jw, %.preheader221 ]
  %i.ka = load <2 x double>, ptr %6, align 16, !tbaa !9
  %i.kb = shufflevector <2 x double> %i.gx, <2 x double> %i.hl, <2 x i32> <i32 0, i32 2>
  %i.kc = fmul <2 x double> %i.kb, %i.ka          ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0 ; 2 uses
  %i.ke = fadd double %i.kd, 0.000000e+00         ; 3 uses
  %i.kf = fsub double %i.ke, %i.kd
  %i.kg = extractelement <2 x double> %i.kc, i64 1
  %i.kh = fsub double %i.kg, %i.kf                ; 2 uses
  %i.ki = fadd double %i.ke, %i.kh                ; 3 uses
  %i.kj = fsub double %i.ki, %i.ke
  %i.kk = fsub double %i.kj, %i.kh
  %i.kl = load <2 x double>, ptr %i.bv, align 16, !tbaa !9
  %i.km = shufflevector <2 x double> %i.id, <2 x double> %i.gx, <2 x i32> <i32 0, i32 3>
  %i.kn = fmul <2 x double> %i.km, %i.kl          ; 2 uses
  %i.ko = extractelement <2 x double> %i.kn, i64 0
  %i.kp = fsub double %i.ko, %i.kk                ; 2 uses
  %i.kq = fadd double %i.ki, %i.kp                ; 3 uses
  %i.kr = fsub double %i.kq, %i.ki
  %i.ks = fsub double %i.kr, %i.kp
  %i.kt = extractelement <2 x double> %i.kn, i64 1
  %i.ku = fsub double %i.kt, %i.ks                ; 2 uses
  %i.kv = fadd double %i.kq, %i.ku                ; 3 uses
  %i.kw = fsub double %i.kv, %i.kq
  %i.kx = fsub double %i.kw, %i.ku
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.kz = load <2 x double>, ptr %i.ky, align 16, !tbaa !9
  %i.la = shufflevector <2 x double> %i.hl, <2 x double> %i.id, <2 x i32> <i32 1, i32 3>
  %i.lb = fmul <2 x double> %i.la, %i.kz          ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  %i.ld = fsub double %i.lc, %i.kx                ; 2 uses
  %i.le = fadd double %i.kv, %i.ld                ; 3 uses
  %i.lf = fsub double %i.le, %i.kv
  %i.lg = fsub double %i.lf, %i.ld
  %i.lh = extractelement <2 x double> %i.lb, i64 1
  %i.li = fsub double %i.lh, %i.lg                ; 2 uses
  %i.lj = fadd double %i.le, %i.li                ; 3 uses
  %i.lk = fsub double %i.lj, %i.le
  %i.ll = fsub double %i.lk, %i.li
  %i.lm = load <2 x double>, ptr %i.bx, align 16, !tbaa !9
  %i.ln = fmul <2 x double> %i.hp, %i.lm          ; 2 uses
  %i.lo = extractelement <2 x double> %i.ln, i64 0
  %i.lp = fsub double %i.lo, %i.ll                ; 2 uses
  %i.lq = fadd double %i.lj, %i.lp                ; 3 uses
  %i.lr = fsub double %i.lq, %i.lj
  %i.ls = fsub double %i.lr, %i.lp
  %i.lt = extractelement <2 x double> %i.ln, i64 1
  %i.lu = fsub double %i.lt, %i.ls                ; 2 uses
  %i.lv = fadd double %i.lq, %i.lu                ; 2 uses
  %i.lw = fsub double %i.lv, %i.lq
  %i.lx = fsub double %i.lw, %i.lu
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.lz = load double, ptr %i.ly, align 16, !tbaa !9
  %i.ma = fmul double %i.ig, %i.lz
  %i.mb = fsub double %i.ma, %i.lx
  %i.mc = fadd double %i.lv, %i.mb
  %i.md = fdiv double %i.mc, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.md, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.me = extractelement <2 x double> %i.bs, i64 0
  %i.mf = fmul double %i.me, %.080                ; 2 uses
  %i.mg = extractelement <2 x double> %i.bs, i64 1
  %i.mh = fmul double %i.mg, %.080                ; 2 uses
  %i.mi = extractelement <2 x double> %i.bu, i64 1
  %i.mj = fmul double %i.mi, %.080                ; 2 uses
  %i.mk = extractelement <2 x double> %i.hp, i64 1 ; 2 uses
  %i.ml = fmul double %i.mk, %i.mh
  %i.mm = extractelement <2 x double> %i.hp, i64 0 ; 2 uses
  %i.mn = call double @llvm.fmuladd.f64(double %i.mf, double %i.mm, double %i.ml)
  %i.mo = call double @llvm.fmuladd.f64(double %i.mj, double %i.ig, double %i.mn)
  %i.mp = extractelement <2 x double> %i.bu, i64 0
  %i.mq = fsub double %i.mp, %i.mo
  %i.mr = insertelement <2 x double> poison, double %.080, i64 0
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mt = fmul <2 x double> %i.gx, %i.ms
  %i.mu = fmul double %i.mm, %.080
  %i.mv = fmul <2 x double> %i.hl, %i.ms
  %i.mw = fmul double %i.mk, %.080
  %i.mx = fmul <2 x double> %i.id, %i.ms
  %i.my = fmul double %i.ig, %.080
  store <2 x double> %i.mt, ptr %0, align 8, !tbaa !9
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.mu, ptr %i.mz, align 8, !tbaa !9
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.na, align 8, !tbaa !9
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.mv, ptr %i.nb, align 8, !tbaa !9
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.mw, ptr %i.nc, align 8, !tbaa !9
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.nd, align 8, !tbaa !9
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.mx, ptr %i.ne, align 8, !tbaa !9
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.my, ptr %i.nf, align 8, !tbaa !9
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.ng, align 8, !tbaa !9
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ni = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.nj = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nk = fmul <2 x double> %i.hl, %i.nj
  %i.nl = insertelement <2 x double> poison, double %i.mf, i64 0
end_hunk_1
begin_hunk_2_@_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, double noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !9 ; 4 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.m = load double, ptr %i.k, align 8, !tbaa !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !9 ; 2 uses
  store double 1.000000e+00, ptr %1, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !9
  store double 1.000000e+00, ptr %3, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !9
  %i.z = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.aa = fcmp one double %i.g, 0.000000e+00
  %.sroa.speculated23.i.i = select i1 %i.aa, double %i.z, double 0.000000e+00 ; 2 uses
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.c) ; 2 uses
  %i.ac = fcmp olt double %.sroa.speculated23.i.i, %i.ab
  %.sroa.speculated19.i.i = select i1 %i.ac, double %i.ab, double %.sroa.speculated23.i.i ; 2 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.ae = fcmp olt double %.sroa.speculated19.i.i, %i.ad
  %.sroa.speculated15.i.i = select i1 %i.ae, double %i.ad, double %.sroa.speculated19.i.i ; 2 uses
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.ag = fcmp olt double %.sroa.speculated15.i.i, %i.af
  %.sroa.speculated11.i.i = select i1 %i.ag, double %i.af, double %.sroa.speculated15.i.i ; 2 uses
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.m) ; 2 uses
  %i.ai = fcmp olt double %.sroa.speculated11.i.i, %i.ah
  %.sroa.speculated7.i.i = select i1 %i.ai, double %i.ah, double %.sroa.speculated11.i.i ; 2 uses
  %i.aj = tail call noundef double @llvm.fabs.f64(double %i.o) ; 2 uses
  %i.ak = fcmp olt double %.sroa.speculated7.i.i, %i.aj
  %.sroa.speculated.i.i = select i1 %i.ak, double %i.aj, double %.sroa.speculated7.i.i
  %i.al = fmul double %4, %.sroa.speculated.i.i   ; 2 uses
  %i.am = fcmp une double %i.al, 0.000000e+00
  %i.an = insertelement <2 x double> %i.h, double %i.q, i64 0
  br i1 %i.am, label %.preheader129.i, label %.loopexit130.i

.preheader129.i:                                  ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aw = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ax = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.preheader129.i
  %.sroa.66.1 = phi double [ %i.q, %.preheader129.i ], [ %i.sz, %bb.h ] ; 6 uses
  %.sroa.57.0 = phi double [ %i.o, %.preheader129.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.39.0 = phi double [ %i.l, %.preheader129.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.0.1 = phi double [ %i.f, %.preheader129.i ], [ %i.ta, %bb.h ] ; 5 uses
  %i.ay = phi double [ %i.m, %.preheader129.i ], [ %i.st, %bb.h ] ; 3 uses
  %i.az = phi double [ %i.c, %.preheader129.i ], [ %i.sn, %bb.h ] ; 2 uses
  %i.ba = phi double [ %i.i, %.preheader129.i ], [ %i.sq, %bb.h ] ; 3 uses
  %i.bb = phi double [ %i.g, %.preheader129.i ], [ %i.sk, %bb.h ] ; 5 uses
  %.082.i = phi i32 [ 0, %.preheader129.i ], [ %i.be, %bb.h ] ; 2 uses
  %i.bc = phi <2 x double> [ %i.aw, %.preheader129.i ], [ %i.tb, %bb.h ] ; 2 uses
  %i.bd = phi <2 x double> [ %i.ax, %.preheader129.i ], [ %i.tc, %bb.h ] ; 3 uses
  %i.be = add nuw nsw i32 %.082.i, 1
  %i.bf = extractelement <2 x double> %i.bd, i64 0 ; 5 uses
  %i.bg = fadd double %i.bf, %.sroa.0.1           ; 2 uses
  %i.bh = fsub double %i.bb, %i.ba                ; 2 uses
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bk = fmul double %4, %i.bj
  %i.bl = fcmp ugt double %i.bi, %i.bk
  br i1 %i.bl, label %bb.c, label %.thread134.i.i

bb.c:                                             ; preds = %bb.b
  %i.bm = fdiv double %i.bg, %i.bh                ; 4 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double 1.000000e+00)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bn)
  %i.bo = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.bp = fcmp olt double %i.bm, 0.000000e+00
  %i.bq = fneg double %i.bo
  %.0122.i.i = select i1 %i.bp, double %i.bq, double %i.bo ; 5 uses
  %i.br = fsub double %i.bf, %.sroa.0.1
  %i.bs = fneg double %i.bf
  %i.bt = fmul double %i.bm, %.0122.i.i           ; 4 uses
  %i.bu = fadd double %i.ba, %i.bb
  %i.bv = fmul double %i.br, %i.bt
  %i.bw = fmul double %.0122.i.i, %i.bs
  %i.bx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bt, i64 1
  %i.bz = insertelement <2 x double> poison, double %.0122.i.i, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bb, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bw, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ca, <2 x double> %i.cc) ; 2 uses
  %i.ce = fmul <2 x double> %i.cd, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.cf = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ce) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = fmul double %4, %i.cg
  %i.ci = extractelement <2 x double> %i.cf, i64 1
  %i.cj = fcmp ugt double %i.ci, %i.ch
  %i.ck = extractelement <2 x double> %i.ce, i64 1
  %i.cl = extractelement <2 x double> %i.cd, i64 0
  br i1 %i.cj, label %.thread.i.i, label %bb.d

.thread134.i.i:                                   ; preds = %bb.b
  %i.cm = fsub double %i.bf, %.sroa.0.1           ; 2 uses
  %i.cn = fadd double %i.ba, %i.bb                ; 2 uses
  %i.co = tail call noundef double @llvm.fabs.f64(double %i.cn)
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.cq = fmul double %4, %i.cp
  %i.cr = fcmp ugt double %i.co, %i.cq
  br i1 %i.cr, label %.thread.i.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.c
  %.0120146.i.i = phi double [ %i.cm, %.thread134.i.i ], [ %i.cl, %bb.c ]
  %.0121145.i.i = phi double [ %i.cn, %.thread134.i.i ], [ %i.ck, %bb.c ]
  %.1123144.i.i = phi double [ 0.000000e+00, %.thread134.i.i ], [ %.0122.i.i, %bb.c ]
  %.0124141.i.i = phi double [ 1.000000e+00, %.thread134.i.i ], [ %i.bt, %bb.c ]
  %i.cs = fdiv double %.0120146.i.i, %.0121145.i.i ; 4 uses
  %i.ct = tail call noundef double @llvm.fabs.f64(double %i.cs)
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double 1.000000e+00)
  %sqrt133.i.i = tail call double @llvm.sqrt.f64(double %i.cu)
  %i.cv = fadd double %i.ct, %sqrt133.i.i
  %i.cw = fdiv double 1.000000e+00, %i.cv         ; 2 uses
  %i.cx = fcmp olt double %i.cs, 0.000000e+00
  %i.cy = fneg double %i.cw
  %.0117.i.i = select i1 %i.cx, double %i.cy, double %i.cw ; 3 uses
  %i.cz = tail call double @llvm.fmuladd.f64(double %.0117.i.i, double %.0117.i.i, double 1.000000e+00)
  %sqrt132.i.i = tail call double @llvm.sqrt.f64(double %i.cz)
  %i.da = fdiv double 1.000000e+00, %sqrt132.i.i  ; 3 uses
  %i.db = fmul double %.0117.i.i, %i.da           ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.da, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.c
  %.1123142.i.i = phi double [ %.1123144.i.i, %.thread.i.i ], [ %.0122.i.i, %bb.c ] ; 2 uses
  %.0124139.i.i = phi double [ %.0124141.i.i, %.thread.i.i ], [ %i.bt, %bb.c ] ; 2 uses
  %.0118129.i.i = phi double [ %i.db, %.thread.i.i ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.0119128.i.i = phi double [ %i.da, %.thread.i.i ], [ 1.000000e+00, %bb.c ]
  %i.de = phi <2 x double> [ %i.dd, %.thread.i.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.c ] ; 8 uses
  %i.df = insertelement <2 x double> poison, double %.1123142.i.i, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %.sroa.57.0, i64 1
  %i.dh = insertelement <2 x double> poison, double %.0119128.i.i, i64 0 ; 2 uses
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = fmul <2 x double> %i.dg, %i.di
  %i.dk = fneg double %.1123142.i.i
  %i.dl = fneg double %.0118129.i.i
  %i.dm = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.bd, %i.dn
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.di, <2 x double> %i.do) ; 2 uses
  %i.dq = fneg double %.sroa.39.0
  %i.dr = fneg double %.sroa.57.0
  %i.ds = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1
  %i.du = insertelement <2 x double> %i.dh, double %.0118129.i.i, i64 1 ; 2 uses
  %i.dv = fmul <2 x double> %i.dt, %i.du
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %.sroa.0.1, i64 1
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dy, <2 x double> %i.dw) ; 2 uses
  %i.ea = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = insertelement <2 x double> %i.bd, double %i.dk, i64 1
  %i.ec = fmul <2 x double> %i.ea, %i.eb
  %i.ed = insertelement <2 x double> %i.bc, double %.0124139.i.i, i64 1
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.de, <2 x double> %i.ec) ; 5 uses
  %6 = load <2 x double>, ptr %1, align 8
  %i.ef = load double, ptr %i.r, align 8, !tbaa !9 ; 2 uses
  %i.eg = fneg double %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ef, i64 1
  %i.ej = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = load <2 x double>, ptr %i.ao, align 8
  %i.ek = load double, ptr %i.s, align 8, !tbaa !9 ; 2 uses
  %i.el = fneg double %i.ek
  %i.em = insertelement <2 x double> poison, double %i.el, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ek, i64 1
  %i.eo = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = load <2 x double>, ptr %i.ap, align 8
  %i.ep = load double, ptr %i.aq, align 8, !tbaa !9 ; 2 uses
  %i.eq = fneg double %i.ep
  %i.er = insertelement <2 x double> poison, double %.0118129.i.i, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = insertelement <2 x double> poison, double %.0124139.i.i, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.ay, i64 1
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.eu, <2 x double> %i.dj) ; 5 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> %i.ee, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ex = fneg <2 x double> %i.dp
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = shufflevector <2 x double> %i.ee, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fb = shufflevector <2 x double> %i.dp, <2 x double> %i.dz, <2 x i32> <i32 1, i32 3>
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fb, <2 x double> %i.ez) ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %.sroa.39.0, i64 1
  %i.ff = fmul <2 x double> %i.ew, %i.fe
  %i.fg = insertelement <2 x double> poison, double %i.az, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fh, <2 x double> %i.ff) ; 2 uses
  %i.fj = shufflevector <2 x double> %i.ev, <2 x double> %i.ee, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.fk = fmul <2 x double> %i.fj, %i.ei
  %i.fl = shufflevector <2 x double> %i.ee, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.ej, <2 x double> %i.fk)
  store <2 x double> %i.fm, ptr %1, align 8, !tbaa !9
  %i.fn = fmul <2 x double> %i.fj, %i.en
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.eo, <2 x double> %i.fn)
  store <2 x double> %i.fo, ptr %i.ao, align 8, !tbaa !9
  %i.fp = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.ep, i64 1
  %i.fr = fmul <2 x double> %i.fj, %i.fq
  %i.fs = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fs, <2 x double> %i.fr)
  store <2 x double> %i.ft, ptr %i.ap, align 8, !tbaa !9
  %9 = load <2 x double>, ptr %3, align 8
  %i.fu = load double, ptr %i.v, align 8, !tbaa !9 ; 2 uses
  %i.fv = fneg double %i.fu
  %i.fw = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.fu, i64 1
  %i.fy = fmul <2 x double> %i.de, %i.fx
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ga = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.ga, <2 x double> %i.fz)
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gc, ptr %3, align 8, !tbaa !9
  %10 = load <2 x double>, ptr %i.ar, align 8
  %i.gd = load double, ptr %i.w, align 8, !tbaa !9 ; 2 uses
  %i.ge = fneg double %i.gd
  %i.gf = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.gd, i64 1
  %i.gh = fmul <2 x double> %i.de, %i.gg
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gj = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.gj, <2 x double> %i.gi)
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gl, ptr %i.ar, align 8, !tbaa !9
  %11 = load <2 x double>, ptr %i.as, align 8
  %i.gm = load double, ptr %i.at, align 8, !tbaa !9 ; 2 uses
  %i.gn = fneg double %i.gm
  %i.go = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gm, i64 1
  %i.gq = fmul <2 x double> %i.de, %i.gp
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gs = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.gs, <2 x double> %i.gr)
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gu, ptr %i.as, align 8, !tbaa !9
  %i.gv = extractelement <2 x double> %i.dz, i64 0
  %i.gw = extractelement <2 x double> %i.ev, i64 1
  %i.gx = extractelement <2 x double> %i.fc, i64 0
  %i.gy = extractelement <2 x double> %i.fc, i64 1
  %i.gz = extractelement <2 x double> %i.fi, i64 0
  %i.ha = extractelement <2 x double> %i.fi, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i.i, %bb.d
  %.sroa.57.1 = phi double [ %i.gw, %bb.d ], [ %.sroa.57.0, %.thread134.i.i ] ; 3 uses
  %.sroa.39.1 = phi double [ %i.ha, %bb.d ], [ %.sroa.39.0, %.thread134.i.i ] ; 4 uses
  %.sroa.33.2 = phi double [ %i.gy, %bb.d ], [ %i.bf, %.thread134.i.i ] ; 5 uses
  %.sroa.0.2 = phi double [ %i.gx, %bb.d ], [ %.sroa.0.1, %.thread134.i.i ] ; 5 uses
  %i.hb = phi double [ %i.gv, %bb.d ], [ %i.ay, %.thread134.i.i ] ; 4 uses
  %i.hc = phi double [ %i.gz, %bb.d ], [ %i.az, %.thread134.i.i ] ; 5 uses
  %.1130.i.i = phi i1 [ true, %bb.d ], [ false, %.thread134.i.i ]
  %i.hd = fadd double %.sroa.66.1, %.sroa.0.2     ; 2 uses
  %i.he = fsub double %i.hc, %i.hb                ; 2 uses
  %i.hf = tail call noundef double @llvm.fabs.f64(double %i.he)
  %i.hg = tail call noundef double @llvm.fabs.f64(double %i.hd)
  %i.hh = fmul double %4, %i.hg
  %i.hi = fcmp ugt double %i.hf, %i.hh
  br i1 %i.hi, label %bb.e, label %.thread134.i85.i

bb.e:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.hj = fdiv double %i.hd, %i.he                ; 4 uses
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hj, double 1.000000e+00)
  %sqrt.i100.i = tail call double @llvm.sqrt.f64(double %i.hk)
  %i.hl = fdiv double 1.000000e+00, %sqrt.i100.i  ; 2 uses
  %i.hm = fcmp olt double %i.hj, 0.000000e+00
  %i.hn = fneg double %i.hl
  %.0122.i101.i = select i1 %i.hm, double %i.hn, double %i.hl ; 5 uses
  %i.ho = fsub double %.sroa.66.1, %.sroa.0.2
  %i.hp = fneg double %.sroa.66.1
  %i.hq = fmul double %i.hj, %.0122.i101.i        ; 4 uses
  %i.hr = fadd double %i.hb, %i.hc
  %i.hs = fmul double %i.ho, %i.hq
  %i.ht = fmul double %.0122.i101.i, %i.hp
  %i.hu = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hq, i64 1
  %i.hw = insertelement <2 x double> poison, double %.0122.i101.i, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.hc, i64 1
  %i.hy = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.ht, i64 1
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hx, <2 x double> %i.hz) ; 2 uses
  %i.ib = fmul <2 x double> %i.ia, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.ic = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ib) ; 2 uses
  %i.id = extractelement <2 x double> %i.ic, i64 0
  %i.ie = fmul double %4, %i.id
  %i.if = extractelement <2 x double> %i.ic, i64 1
  %i.ig = fcmp ugt double %i.if, %i.ie
  %i.ih = extractelement <2 x double> %i.ib, i64 1
  %i.ii = extractelement <2 x double> %i.ia, i64 0
  br i1 %i.ig, label %.thread.i88.i, label %bb.f

.thread134.i85.i:                                 ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.ij = fsub double %.sroa.66.1, %.sroa.0.2     ; 2 uses
  %i.ik = fadd double %i.hb, %i.hc                ; 2 uses
  %i.il = tail call noundef double @llvm.fabs.f64(double %i.ik)
  %i.im = tail call noundef double @llvm.fabs.f64(double %i.ij)
  %i.in = fmul double %4, %i.im
  %i.io = fcmp ugt double %i.il, %i.in
  %i.ip = insertelement <2 x double> poison, double %.sroa.0.2, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %.sroa.66.1, i64 1
  br i1 %i.io, label %.thread.i88.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i88.i:                                    ; preds = %.thread134.i85.i, %bb.e
  %.0120146.i89.i = phi double [ %i.ij, %.thread134.i85.i ], [ %i.ii, %bb.e ]
  %.0121145.i90.i = phi double [ %i.ik, %.thread134.i85.i ], [ %i.ih, %bb.e ]
  %.1123144.i91.i = phi double [ 0.000000e+00, %.thread134.i85.i ], [ %.0122.i101.i, %bb.e ]
  %.0124141.i92.i = phi double [ 1.000000e+00, %.thread134.i85.i ], [ %i.hq, %bb.e ]
  %i.ir = fdiv double %.0120146.i89.i, %.0121145.i90.i ; 4 uses
  %i.is = tail call noundef double @llvm.fabs.f64(double %i.ir)
  %i.it = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.ir, double 1.000000e+00)
  %sqrt133.i93.i = tail call double @llvm.sqrt.f64(double %i.it)
  %i.iu = fadd double %i.is, %sqrt133.i93.i
  %i.iv = fdiv double 1.000000e+00, %i.iu         ; 2 uses
  %i.iw = fcmp olt double %i.ir, 0.000000e+00
  %i.ix = fneg double %i.iv
  %.0117.i94.i = select i1 %i.iw, double %i.ix, double %i.iv ; 3 uses
  %i.iy = tail call double @llvm.fmuladd.f64(double %.0117.i94.i, double %.0117.i94.i, double 1.000000e+00)
  %sqrt132.i95.i = tail call double @llvm.sqrt.f64(double %i.iy)
  %i.iz = fdiv double 1.000000e+00, %sqrt132.i95.i ; 4 uses
  %i.ja = fmul double %.0117.i94.i, %i.iz         ; 3 uses
  %i.jb = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.jc = insertelement <2 x double> %i.jb, double %i.iz, i64 1
  %i.jd = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.je = insertelement <2 x double> %i.jd, double %i.ja, i64 1
  %i.jf = fmul double %.sroa.39.1, %i.iz
  br label %bb.f

bb.f:                                             ; preds = %.thread.i88.i, %bb.e
  %.1123142.i96.i = phi double [ %.1123144.i91.i, %.thread.i88.i ], [ %.0122.i101.i, %bb.e ] ; 2 uses
  %.0124139.i97.i = phi double [ %.0124141.i92.i, %.thread.i88.i ], [ %i.hq, %bb.e ]
  %.0118129.i98.i = phi double [ %i.ja, %.thread.i88.i ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.0119128.i99.i = phi double [ %i.jf, %.thread.i88.i ], [ %.sroa.39.1, %bb.e ]
  %i.jg = phi <2 x double> [ %i.jc, %.thread.i88.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.e ] ; 11 uses
  %i.jh = phi <2 x double> [ %i.je, %.thread.i88.i ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.e ] ; 2 uses
  %i.ji = fneg double %.1123142.i96.i
  %i.jj = fneg double %.0118129.i98.i             ; 2 uses
  %i.jk = insertelement <2 x double> poison, double %.sroa.57.1, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %.sroa.39.1, i64 1
  %i.jm = fneg <2 x double> %i.jl
  %i.jn = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.jo = insertelement <2 x double> %i.jn, double %.1123142.i96.i, i64 1 ; 2 uses
  %i.jp = insertelement <2 x double> %i.jg, double %i.jj, i64 0
  %i.jq = fmul <2 x double> %i.jo, %i.jp
  %i.jr = insertelement <2 x double> %i.jo, double %i.ji, i64 1
  %i.js = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jt = fmul <2 x double> %i.jr, %i.js
  %i.ju = insertelement <2 x double> poison, double %.sroa.0.2, i64 0
  %i.jv = insertelement <2 x double> %i.ju, double %.0124139.i97.i, i64 1 ; 2 uses
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.js, <2 x double> %i.jq) ; 5 uses
  %i.jx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.jg, <2 x double> %i.jt) ; 5 uses
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jz = extractelement <2 x double> %i.jw, i64 1
  %i.ka = extractelement <2 x double> %i.jx, i64 1
  %i.kb = insertelement <2 x double> poison, double %.sroa.66.1, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ke = insertelement <2 x double> %i.kd, double %i.jj, i64 0
  %i.kf = fmul <2 x double> %i.kc, %i.ke
  %i.kg = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.jh, <2 x double> %i.kf) ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0
  %i.kk = fneg double %i.kj
  %i.kl = shufflevector <2 x double> %i.jw, <2 x double> %i.jx, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.km = insertelement <2 x double> %i.ki, double %i.kk, i64 0
  %i.kn = fmul <2 x double> %i.kl, %i.km
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.jw, <2 x double> %i.kn)
  %i.kp = fmul double %.sroa.57.1, %i.ka
  %i.kq = tail call double @llvm.fmuladd.f64(double %i.jz, double 0.000000e+00, double %i.kp)
  %i.kr = shufflevector <2 x double> %i.jw, <2 x double> %i.jg, <2 x i32> <i32 1, i32 2>
  %i.ks = fmul <2 x double> %i.kr, %i.jm
  %i.kt = shufflevector <2 x double> %i.jx, <2 x double> %i.jg, <2 x i32> <i32 1, i32 3>
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> zeroinitializer, <2 x double> %i.ks)
  %i.kv = tail call double @llvm.fmuladd.f64(double %.0118129.i98.i, double 0.000000e+00, double %.0119128.i99.i)
  %i.kw = load double, ptr %1, align 8, !tbaa !9  ; 2 uses
  %i.kx = load <2 x double>, ptr %i.au, align 8, !tbaa !9 ; 3 uses
  %i.ky = load double, ptr %i.ao, align 8, !tbaa !9
  %i.kz = extractelement <2 x double> %i.kx, i64 0
  %i.la = fneg double %i.kz
  %i.lb = shufflevector <2 x double> %i.jx, <2 x double> %i.jw, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.lc = insertelement <2 x double> %i.kx, double %i.kw, i64 0
  %i.ld = load double, ptr %i.u, align 8, !tbaa !9 ; 2 uses
  %i.le = fneg double %i.ld
  %i.lf = load <2 x double>, ptr %i.t, align 8, !tbaa !9 ; 3 uses
  %i.lg = load double, ptr %i.ap, align 8, !tbaa !9
  %i.lh = fneg <2 x double> %i.lf
  %i.li = shufflevector <2 x double> %i.kx, <2 x double> %i.lh, <2 x i32> <i32 0, i32 2>
  %i.lj = fmul <2 x double> %i.lb, %i.li
  %i.lk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.lc, <2 x double> %i.lj)
  store <2 x double> %i.lk, ptr %i.au, align 8, !tbaa !9
  %i.ll = insertelement <2 x double> %i.lf, double %i.le, i64 1
  %i.lm = fmul <2 x double> %i.lb, %i.ll
  %i.ln = insertelement <2 x double> %i.lf, double %i.ky, i64 0
  %i.lo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.ln, <2 x double> %i.lm)
  store <2 x double> %i.lo, ptr %i.t, align 8, !tbaa !9
  %i.lp = insertelement <2 x double> poison, double %i.la, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.ld, i64 1
  %i.lr = fmul <2 x double> %i.kl, %i.lq
  %i.ls = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.lg, i64 1
  %i.lu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.lt, <2 x double> %i.lr) ; 2 uses
  %i.lv = extractelement <2 x double> %i.lu, i64 0
  store double %i.lv, ptr %1, align 8, !tbaa !9
  %i.lw = extractelement <2 x double> %i.lu, i64 1
  store double %i.lw, ptr %i.u, align 8, !tbaa !9
  %i.lx = load double, ptr %3, align 8, !tbaa !9  ; 2 uses
  %i.ly = load <2 x double>, ptr %i.av, align 8, !tbaa !9 ; 3 uses
  %i.lz = load double, ptr %i.ar, align 8, !tbaa !9
  %i.ma = extractelement <2 x double> %i.ly, i64 0
  %i.mb = fneg double %i.ma
  %i.mc = insertelement <2 x double> %i.ly, double %i.lx, i64 0
  %i.md = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.me = fneg double %i.md
  %i.mf = load <2 x double>, ptr %i.x, align 8, !tbaa !9 ; 3 uses
  %i.mg = load <2 x double>, ptr %i.as, align 8
  %i.mh = fneg <2 x double> %i.mf
  %i.mi = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mj = shufflevector <2 x double> %i.ly, <2 x double> %i.mh, <2 x i32> <i32 0, i32 2>
  %i.mk = fmul <2 x double> %i.mi, %i.mj
  %i.ml = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.mc, <2 x double> %i.mk)
  store <2 x double> %i.ml, ptr %i.av, align 8, !tbaa !9
  %i.mm = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.mn = insertelement <2 x double> %i.mm, double %i.me, i64 0
  %i.mo = fmul <2 x double> %i.jg, %i.mn
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mq = insertelement <2 x double> %i.mf, double %i.lz, i64 0
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.mq, <2 x double> %i.mp)
  store <2 x double> %i.mr, ptr %i.x, align 8, !tbaa !9
  %i.ms = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.md, i64 1
  %i.mu = fmul <2 x double> %i.jg, %i.mt
  %i.mv = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mw = insertelement <2 x double> %i.mg, double %i.lx, i64 1
  %i.mx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.mw, <2 x double> %i.mv) ; 2 uses
  %i.my = extractelement <2 x double> %i.mx, i64 1
  store double %i.my, ptr %3, align 8, !tbaa !9
  %i.mz = extractelement <2 x double> %i.mx, i64 0
  store double %i.mz, ptr %i.y, align 8, !tbaa !9
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.f
  %.sroa.57.2 = phi double [ %i.kq, %bb.f ], [ %.sroa.57.1, %.thread134.i85.i ] ; 5 uses
  %.sroa.39.2 = phi double [ %i.kv, %bb.f ], [ %.sroa.39.1, %.thread134.i85.i ] ; 6 uses
  %.1130.i87.i = phi i1 [ true, %bb.f ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.na = phi <2 x double> [ %i.ku, %bb.f ], [ zeroinitializer, %.thread134.i85.i ] ; 3 uses
  %i.nb = phi <2 x double> [ %i.ko, %bb.f ], [ %i.iq, %.thread134.i85.i ] ; 5 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 1 ; 6 uses
  %i.nd = fadd double %.sroa.33.2, %i.nc          ; 2 uses
  %i.ne = fsub double %.sroa.39.2, %.sroa.57.2    ; 2 uses
  %i.nf = tail call noundef double @llvm.fabs.f64(double %i.ne)
  %i.ng = tail call noundef double @llvm.fabs.f64(double %i.nd)
  %i.nh = fmul double %4, %i.ng
  %i.ni = fcmp ugt double %i.nf, %i.nh
  br i1 %i.ni, label %bb.g, label %.thread134.i102.i

bb.g:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.nj = fdiv double %i.nd, %i.ne                ; 4 uses
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.nj, double 1.000000e+00)
  %sqrt.i117.i = tail call double @llvm.sqrt.f64(double %i.nk)
  %i.nl = fdiv double 1.000000e+00, %sqrt.i117.i  ; 2 uses
  %i.nm = fcmp olt double %i.nj, 0.000000e+00
  %i.nn = fneg double %i.nl
  %.0122.i118.i = select i1 %i.nm, double %i.nn, double %i.nl ; 5 uses
  %i.no = fsub double %i.nc, %.sroa.33.2
  %i.np = fneg double %i.nc
  %i.nq = fmul double %i.nj, %.0122.i118.i        ; 4 uses
  %i.nr = fadd double %.sroa.57.2, %.sroa.39.2
  %i.ns = fmul double %i.no, %i.nq
  %i.nt = fmul double %.0122.i118.i, %i.np
  %i.nu = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.nq, i64 1
  %i.nw = insertelement <2 x double> poison, double %.0122.i118.i, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %.sroa.39.2, i64 1
  %i.ny = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.nz = insertelement <2 x double> %i.ny, double %i.nt, i64 1
  %i.oa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.nx, <2 x double> %i.nz) ; 2 uses
  %i.ob = fmul <2 x double> %i.oa, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.oc = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ob) ; 2 uses
  %i.od = extractelement <2 x double> %i.oc, i64 0
  %i.oe = fmul double %4, %i.od
  %i.of = extractelement <2 x double> %i.oc, i64 1
  %i.og = fcmp ugt double %i.of, %i.oe
  %i.oh = extractelement <2 x double> %i.ob, i64 1
  %i.oi = extractelement <2 x double> %i.oa, i64 0
  br i1 %i.og, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.oj = fsub double %i.nc, %.sroa.33.2          ; 2 uses
  %i.ok = fadd double %.sroa.57.2, %.sroa.39.2    ; 2 uses
  %i.ol = tail call noundef double @llvm.fabs.f64(double %i.ok)
  %i.om = tail call noundef double @llvm.fabs.f64(double %i.oj)
  %i.on = fmul double %4, %i.om
  %i.oo = fcmp ugt double %i.ol, %i.on
  br i1 %i.oo, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.g
  %.0120146.i106.i = phi double [ %i.oj, %.thread134.i102.i ], [ %i.oi, %bb.g ]
  %.0121145.i107.i = phi double [ %i.ok, %.thread134.i102.i ], [ %i.oh, %bb.g ]
  %.1123144.i108.i = phi double [ 0.000000e+00, %.thread134.i102.i ], [ %.0122.i118.i, %bb.g ]
  %.0124141.i109.i = phi double [ 1.000000e+00, %.thread134.i102.i ], [ %i.nq, %bb.g ]
  %i.op = fdiv double %.0120146.i106.i, %.0121145.i107.i ; 4 uses
  %i.oq = tail call noundef double @llvm.fabs.f64(double %i.op)
  %i.or = tail call double @llvm.fmuladd.f64(double %i.op, double %i.op, double 1.000000e+00)
  %sqrt133.i110.i = tail call double @llvm.sqrt.f64(double %i.or)
  %i.os = fadd double %i.oq, %sqrt133.i110.i
  %i.ot = fdiv double 1.000000e+00, %i.os         ; 2 uses
  %i.ou = fcmp olt double %i.op, 0.000000e+00
  %i.ov = fneg double %i.ot
  %.0117.i111.i = select i1 %i.ou, double %i.ov, double %i.ot ; 3 uses
  %i.ow = tail call double @llvm.fmuladd.f64(double %.0117.i111.i, double %.0117.i111.i, double 1.000000e+00)
  %sqrt132.i112.i = tail call double @llvm.sqrt.f64(double %i.ow)
  %i.ox = fdiv double 1.000000e+00, %sqrt132.i112.i ; 3 uses
  %i.oy = fmul double %.0117.i111.i, %i.ox        ; 2 uses
  %i.oz = insertelement <2 x double> poison, double %i.oy, i64 0
  %i.pa = insertelement <2 x double> %i.oz, double %i.ox, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.g
  %.1123142.i113.i = phi double [ %.1123144.i108.i, %.thread.i105.i ], [ %.0122.i118.i, %bb.g ] ; 2 uses
  %.0124139.i114.i = phi double [ %.0124141.i109.i, %.thread.i105.i ], [ %i.nq, %bb.g ]
  %.0118129.i115.i = phi double [ %i.oy, %.thread.i105.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.0119128.i116.i = phi double [ %i.ox, %.thread.i105.i ], [ 1.000000e+00, %bb.g ] ; 5 uses
  %i.pb = phi <2 x double> [ %i.pa, %.thread.i105.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.g ] ; 8 uses
  %i.pc = fneg double %.1123142.i113.i
  %i.pd = fneg double %.0118129.i115.i            ; 2 uses
  %i.pe = fmul double %i.nc, %i.pd
  %i.pf = tail call double @llvm.fmuladd.f64(double %.sroa.57.2, double %.0119128.i116.i, double %i.pe)
  %i.pg = fmul double %i.nc, %.0119128.i116.i
  %i.ph = fmul double %.1123142.i113.i, %.0119128.i116.i
  %i.pi = fmul double %.sroa.39.2, %i.pd
  %i.pj = insertelement <2 x double> poison, double %.0124139.i114.i, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %.sroa.33.2, i64 1 ; 2 uses
  %i.pl = insertelement <2 x double> %i.pb, double %.0119128.i116.i, i64 1 ; 3 uses
  %i.pm = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.pn = insertelement <2 x double> %i.pm, double %i.pi, i64 1
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.pl, <2 x double> %i.pn) ; 4 uses
  %i.pp = insertelement <2 x double> poison, double %i.pc, i64 0
  %i.pq = insertelement <2 x double> %i.pp, double %.sroa.39.2, i64 1
  %i.pr = fmul <2 x double> %i.pl, %i.pq
  %i.ps = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.ps, <2 x double> %i.pr) ; 3 uses
  %i.pu = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pv = fneg double %i.pf
  %i.pw = tail call double @llvm.fmuladd.f64(double %.sroa.57.2, double %.0118129.i115.i, double %i.pg)
  %i.px = shufflevector <2 x double> %i.pt, <2 x double> %i.po, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.py = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.pz = insertelement <2 x double> %i.py, double %i.pv, i64 1
  %i.qa = fmul <2 x double> %i.px, %i.pz
  %i.qb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.po, <2 x double> %i.pu, <2 x double> %i.qa)
  %i.qc = shufflevector <2 x double> %i.pb, <2 x double> %i.po, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qd = fmul <2 x double> %i.qc, splat (double -0.000000e+00)
  %i.qe = insertelement <2 x double> %i.pu, double %.0119128.i116.i, i64 0 ; 2 uses
  %i.qf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> %i.na, <2 x double> %i.qd)
  %i.qg = fmul <2 x double> %i.qe, zeroinitializer
  %i.qh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.na, <2 x double> %i.qg)
  %12 = load <2 x double>, ptr %i.r, align 8
  %i.qi = load double, ptr %i.au, align 8, !tbaa !9 ; 2 uses
  %i.qj = fneg double %i.qi
  %i.qk = shufflevector <2 x double> %i.po, <2 x double> %i.pt, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ql = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.qi, i64 1
  %i.qn = fmul <2 x double> %i.qk, %i.qm
  %i.qo = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.qo, <2 x double> %i.qn)
  store <2 x double> %i.qp, ptr %i.r, align 8, !tbaa !9
  %13 = load <2 x double>, ptr %i.s, align 8
  %i.qq = load double, ptr %i.t, align 8, !tbaa !9 ; 2 uses
  %i.qr = fneg double %i.qq
  %i.qs = insertelement <2 x double> poison, double %i.qr, i64 0
  %i.qt = insertelement <2 x double> %i.qs, double %i.qq, i64 1
  %i.qu = fmul <2 x double> %i.qk, %i.qt
  %i.qv = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.qv, <2 x double> %i.qu)
  store <2 x double> %i.qw, ptr %i.s, align 8, !tbaa !9
  %14 = load <2 x double>, ptr %i.aq, align 8
  %i.qx = load double, ptr %i.u, align 8, !tbaa !9 ; 2 uses
  %i.qy = fneg double %i.qx
  %i.qz = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qx, i64 1
  %i.rb = fmul <2 x double> %i.qk, %i.ra
  %i.rc = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.rc, <2 x double> %i.rb)
  store <2 x double> %i.rd, ptr %i.aq, align 8, !tbaa !9
  %15 = load <2 x double>, ptr %i.v, align 8
  %i.re = load double, ptr %i.av, align 8, !tbaa !9 ; 2 uses
  %i.rf = fneg double %i.re
  %i.rg = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.rh = insertelement <2 x double> %i.rg, double %i.re, i64 1
  %i.ri = fmul <2 x double> %i.pb, %i.rh
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rk = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.rk, <2 x double> %i.rj)
  %i.rm = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rm, ptr %i.v, align 8, !tbaa !9
  %16 = load <2 x double>, ptr %i.w, align 8
  %i.rn = load double, ptr %i.x, align 8, !tbaa !9 ; 2 uses
  %i.ro = fneg double %i.rn
  %i.rp = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rq = insertelement <2 x double> %i.rp, double %i.rn, i64 1
  %i.rr = fmul <2 x double> %i.pb, %i.rq
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rt = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ru = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.rt, <2 x double> %i.rs)
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rv, ptr %i.w, align 8, !tbaa !9
  %17 = load <2 x double>, ptr %i.at, align 8
  %i.rw = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.rx = fneg double %i.rw
  %i.ry = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %i.rw, i64 1
  %i.sa = fmul <2 x double> %i.pb, %i.rz
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sc = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.sc, <2 x double> %i.sb)
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.se, ptr %i.at, align 8, !tbaa !9
  br label %bb.h

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.sf = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sg = insertelement <2 x double> %i.sf, double %.sroa.33.2, i64 1 ; 2 uses
  br i1 %.1130.i87.i, label %bb.h, label %.loopexit130.i.loopexit.split.loop.exit

bb.h:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.sh = phi <2 x double> [ %i.qb, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.sg, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.si = phi <2 x double> [ %i.qh, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ zeroinitializer, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 2 uses
  %i.sj = phi <2 x double> [ %i.qf, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.na, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 4 uses
  %i.sk = extractelement <2 x double> %i.sj, i64 0 ; 3 uses
  %i.sl = tail call noundef double @llvm.fabs.f64(double %i.sk)
  %i.sm = fcmp one double %i.sk, 0.000000e+00
  %.sroa.speculated23.i119.i = select i1 %i.sm, double %i.sl, double 0.000000e+00 ; 2 uses
  %i.sn = extractelement <2 x double> %i.si, i64 0 ; 2 uses
  %i.so = tail call noundef double @llvm.fabs.f64(double %i.sn) ; 2 uses
  %i.sp = fcmp olt double %.sroa.speculated23.i119.i, %i.so
  %.sroa.speculated19.i120.i = select i1 %i.sp, double %i.so, double %.sroa.speculated23.i119.i ; 2 uses
  %i.sq = extractelement <2 x double> %i.sj, i64 1 ; 2 uses
  %i.sr = tail call noundef double @llvm.fabs.f64(double %i.sq) ; 2 uses
  %i.ss = fcmp olt double %.sroa.speculated19.i120.i, %i.sr
  %.sroa.speculated15.i121.i = select i1 %i.ss, double %i.sr, double %.sroa.speculated19.i120.i ; 2 uses
  %i.st = extractelement <2 x double> %i.si, i64 1 ; 2 uses
  %i.su = tail call noundef double @llvm.fabs.f64(double %i.st) ; 2 uses
  %i.sv = fcmp olt double %.sroa.speculated15.i121.i, %i.su
  %.sroa.speculated7.i123.i = select i1 %i.sv, double %i.su, double %.sroa.speculated15.i121.i
  %i.sw = fcmp ogt double %.sroa.speculated7.i123.i, %i.al
  %i.sx = icmp samesign ult i32 %.082.i, 19
  %i.sy = select i1 %i.sw, i1 %i.sx, i1 false
  %i.sz = extractelement <2 x double> %i.sh, i64 0
  %i.ta = extractelement <2 x double> %i.nb, i64 0 ; 2 uses
  %i.tb = shufflevector <2 x double> %i.sj, <2 x double> %i.nb, <2 x i32> <i32 1, i32 2>
  %i.tc = shufflevector <2 x double> %i.sh, <2 x double> %i.sj, <2 x i32> <i32 1, i32 2>
  br i1 %i.sy, label %bb.b, label %.loopexit130.i, !llvm.loop !45

.loopexit130.i.loopexit.split.loop.exit:          ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.td = extractelement <2 x double> %i.nb, i64 0
  br label %.loopexit130.i

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.split.loop.exit, %bb.h, %bb.a
  %.sroa.0.0 = phi double [ %i.f, %bb.a ], [ %i.td, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.ta, %bb.h ] ; 3 uses
  %i.te = phi <2 x double> [ %i.an, %bb.a ], [ %i.sg, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.sh, %bb.h ] ; 2 uses
  store double %.sroa.0.0, ptr %2, align 8, !tbaa !13
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.th = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.th, ptr %i.tf, align 8, !tbaa !9
  %i.ti = fcmp olt double %.sroa.0.0, 0.000000e+00
  %i.tj = extractelement <2 x double> %i.te, i64 1
  br i1 %i.ti, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.tk = fneg double %.sroa.0.0
  store double %i.tk, ptr %2, align 8, !tbaa !9
  %i.tl = load double, ptr %1, align 8, !tbaa !9
  %i.tm = fneg double %i.tl
  store double %i.tm, ptr %1, align 8, !tbaa !9
  %gep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tn = load double, ptr %gep.1.i, align 8, !tbaa !9
  %i.to = fneg double %i.tn
  store double %i.to, ptr %gep.1.i, align 8, !tbaa !9
  %gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.tp = load double, ptr %gep.2.i, align 8, !tbaa !9
  %i.tq = fneg double %i.tp
  store double %i.tq, ptr %gep.2.i, align 8, !tbaa !9
  %.pre153.i = load double, ptr %i.tf, align 8, !tbaa !9
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.tr = phi double [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.tj, %.loopexit130.i ] ; 2 uses
  %i.ts = fcmp olt double %i.tr, 0.000000e+00
  br i1 %i.ts, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.tt = fneg double %i.tr
  store double %i.tt, ptr %i.tf, align 8, !tbaa !9
  %i.tu = load double, ptr %i.r, align 8, !tbaa !9
  %i.tv = fneg double %i.tu
  store double %i.tv, ptr %i.r, align 8, !tbaa !9
  %i.tw = load double, ptr %i.s, align 8, !tbaa !9
  %i.tx = fneg double %i.tw
  store double %i.tx, ptr %i.s, align 8, !tbaa !9
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ty = load double, ptr %gep.2.1.i, align 8, !tbaa !9
  %i.tz = fneg double %i.ty
  store double %i.tz, ptr %gep.2.1.i, align 8, !tbaa !9
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.ua = load double, ptr %i.tg, align 8, !tbaa !9 ; 2 uses
  %i.ub = fcmp olt double %i.ua, 0.000000e+00
  br i1 %i.ub, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.uc = fneg double %i.ua
  store double %i.uc, ptr %i.tg, align 8, !tbaa !9
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ud = load double, ptr %invariant.gep.2.i, align 8, !tbaa !9
  %i.ue = fneg double %i.ud
  store double %i.ue, ptr %invariant.gep.2.i, align 8, !tbaa !9
  %i.uf = load double, ptr %i.t, align 8, !tbaa !9
  %i.ug = fneg double %i.uf
  store double %i.ug, ptr %i.t, align 8, !tbaa !9
  %i.uh = load double, ptr %i.u, align 8, !tbaa !9
  %i.ui = fneg double %i.uh
  store double %i.ui, ptr %i.u, align 8, !tbaa !9
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.un = load double, ptr %2, align 8, !tbaa !9  ; 2 uses
  %i.uo = load double, ptr %i.tf, align 8, !tbaa !9 ; 3 uses
  %i.up = fcmp olt double %i.un, %i.uo
  br i1 %i.up, label %bb.j, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.k, %.lr.ph.1145.i
  %i.uq = phi double [ %.pre, %bb.k ], [ %i.vr, %.lr.ph.1145.i ] ; 2 uses
  %i.ur = load double, ptr %2, align 8, !tbaa !9  ; 2 uses
  %i.us = fcmp olt double %i.ur, %i.uq
  br i1 %i.us, label %bb.i, label %._crit_edge.1.i

bb.i:                                             ; preds = %.lr.ph.preheader.1.i
  store double %i.uq, ptr %2, align 8, !tbaa !9
  store double %i.ur, ptr %i.tf, align 8, !tbaa !9
  %i.ut = load <2 x double>, ptr %1, align 8, !tbaa !9
  %i.uu = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uu, ptr %1, align 8, !tbaa !9
  %i.uv = load <2 x double>, ptr %i.uj, align 8, !tbaa !9
  %i.uw = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uw, ptr %i.uj, align 8, !tbaa !9
  %i.ux = load <2 x double>, ptr %i.uk, align 8, !tbaa !9
  %i.uy = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uy, ptr %i.uk, align 8, !tbaa !9
  %i.uz = load <2 x double>, ptr %3, align 8, !tbaa !9
  %i.va = shufflevector <2 x double> %i.uz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.va, ptr %3, align 8, !tbaa !9
  %i.vb = load <2 x double>, ptr %i.ul, align 8, !tbaa !9
  %i.vc = shufflevector <2 x double> %i.vb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vc, ptr %i.ul, align 8, !tbaa !9
  %i.vd = load <2 x double>, ptr %i.um, align 8, !tbaa !9
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ve, ptr %i.um, align 8, !tbaa !9
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %bb.i, %.lr.ph.preheader.1.i
  br i1 %5, label %bb.l, label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

bb.j:                                             ; preds = %.lr.ph.preheader.i
  store double %i.uo, ptr %2, align 8, !tbaa !9
  store double %i.un, ptr %i.tf, align 8, !tbaa !9
  %i.vf = load <2 x double>, ptr %1, align 8, !tbaa !9
  %i.vg = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vg, ptr %1, align 8, !tbaa !9
  %i.vh = load <2 x double>, ptr %i.uj, align 8, !tbaa !9
  %i.vi = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vi, ptr %i.uj, align 8, !tbaa !9
  %i.vj = load <2 x double>, ptr %i.uk, align 8, !tbaa !9
  %i.vk = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vk, ptr %i.uk, align 8, !tbaa !9
  %i.vl = load <2 x double>, ptr %3, align 8, !tbaa !9
  %i.vm = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vm, ptr %3, align 8, !tbaa !9
  %i.vn = load <2 x double>, ptr %i.ul, align 8, !tbaa !9
  %i.vo = shufflevector <2 x double> %i.vn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vo, ptr %i.ul, align 8, !tbaa !9
  %i.vp = load <2 x double>, ptr %i.um, align 8, !tbaa !9
  %i.vq = shufflevector <2 x double> %i.vp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vq, ptr %i.um, align 8, !tbaa !9
  %.pre154.i = load double, ptr %i.tf, align 8, !tbaa !9
  br label %.lr.ph.1145.i

.lr.ph.1145.i:                                    ; preds = %bb.j, %.lr.ph.preheader.i
  %i.vr = phi double [ %i.uo, %.lr.ph.preheader.i ], [ %.pre154.i, %bb.j ] ; 3 uses
  %i.vs = load double, ptr %i.tg, align 8, !tbaa !9 ; 2 uses
  %i.vt = fcmp olt double %i.vr, %i.vs
  br i1 %i.vt, label %bb.k, label %.lr.ph.preheader.1.i

bb.k:                                             ; preds = %.lr.ph.1145.i
  store double %i.vs, ptr %i.tf, align 8, !tbaa !9
  store double %i.vr, ptr %i.tg, align 8, !tbaa !9
  %i.vu = load <2 x double>, ptr %i.r, align 8, !tbaa !9
  %i.vv = shufflevector <2 x double> %i.vu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vv, ptr %i.r, align 8, !tbaa !9
  %i.vw = load <2 x double>, ptr %i.s, align 8, !tbaa !9
  %i.vx = shufflevector <2 x double> %i.vw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vx, ptr %i.s, align 8, !tbaa !9
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.vz = load <2 x double>, ptr %i.vy, align 8, !tbaa !9
  %i.wa = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wa, ptr %i.vy, align 8, !tbaa !9
  %i.wb = load <2 x double>, ptr %i.v, align 8, !tbaa !9
  %i.wc = shufflevector <2 x double> %i.wb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wc, ptr %i.v, align 8, !tbaa !9
end_hunk_2
begin_hunk_3_@_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  %i.ym = extractelement <2 x double> %i.yl, i64 0
  %i.yn = extractelement <2 x double> %i.yl, i64 1
  %i.yo = tail call noundef double @llvm.fmuladd.f64(double %i.yc, double %i.yn, double %i.ym)
  %i.yp = fcmp olt double %i.yo, 0.000000e+00
  br i1 %i.yp, label %.preheader.preheader.i, label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

.preheader.preheader.i:                           ; preds = %bb.m
  %i.yq = fneg double %i.yc
  store double %i.yq, ptr %i.yb, align 8, !tbaa !9
  %i.yr = extractelement <2 x double> %i.xs, i64 1
  %i.ys = fneg double %i.yr
  store double %i.ys, ptr %i.x, align 8, !tbaa !9
  %i.yt = extractelement <2 x double> %i.xu, i64 1
  store double %i.yt, ptr %i.y, align 8, !tbaa !9
  %i.yu = load double, ptr %i.tg, align 8, !tbaa !11
  %i.yv = fneg double %i.yu
  store double %i.yv, ptr %i.tg, align 8, !tbaa !11
  br label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit: ; preds = %._crit_edge.1.i, %bb.m, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_29jacobiSVDIfEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !15   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !15 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !15 ; 3 uses
  %i.m = load float, ptr %i.k, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 10 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.u, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ac, align 4, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !15
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.ai = fcmp one float %i.c, 0.000000e+00
  %.sroa.speculated23.i.i = select i1 %i.ai, float %i.ah, float 0.000000e+00 ; 2 uses
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.ak = fcmp olt float %.sroa.speculated23.i.i, %i.aj
  %.sroa.speculated19.i.i = select i1 %i.ak, float %i.aj, float %.sroa.speculated23.i.i ; 2 uses
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.am = fcmp olt float %.sroa.speculated19.i.i, %i.al
  %.sroa.speculated15.i.i = select i1 %i.am, float %i.al, float %.sroa.speculated19.i.i ; 2 uses
  %i.an = extractelement <2 x float> %i.l, i64 0
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an) ; 2 uses
  %i.ap = fcmp olt float %.sroa.speculated15.i.i, %i.ao
  %.sroa.speculated11.i.i = select i1 %i.ap, float %i.ao, float %.sroa.speculated15.i.i ; 2 uses
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.ar = fcmp olt float %.sroa.speculated11.i.i, %i.aq
  %.sroa.speculated7.i.i = select i1 %i.ar, float %i.aq, float %.sroa.speculated11.i.i ; 2 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.at = fcmp olt float %.sroa.speculated7.i.i, %i.as
  %.sroa.speculated.i.i = select i1 %i.at, float %i.as, float %.sroa.speculated7.i.i
  %i.au = fmul float %4, %.sroa.speculated.i.i    ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  %i.aw = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.i, i64 1
  br i1 %i.av, label %.preheader129.i.preheader, label %.loopexit130.i

.preheader129.i.preheader:                        ; preds = %bb.a
  %i.ay = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.o, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.e, i64 3
  %i.bb = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x float> %i.bb, float %i.e, i64 1
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.preheader129.i.preheader, %bb.g
  %.sroa.66.1 = phi float [ %i.rw, %bb.g ], [ %i.q, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.33.1 = phi float [ %i.rx, %bb.g ], [ %i.i, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.0.1 = phi float [ %.sroa.0.3, %bb.g ], [ %i.a, %.preheader129.i.preheader ] ; 6 uses
  %i.bd = phi float [ %i.rn, %bb.g ], [ %i.g, %.preheader129.i.preheader ] ; 5 uses
  %i.be = phi float [ %i.rh, %bb.g ], [ %i.c, %.preheader129.i.preheader ] ; 6 uses
  %.082.i = phi i32 [ %i.bi, %bb.g ], [ 0, %.preheader129.i.preheader ] ; 2 uses
  %i.bf = phi <2 x float> [ %i.ry, %bb.g ], [ %i.bc, %.preheader129.i.preheader ]
  %i.bg = phi <4 x float> [ %i.rz, %bb.g ], [ %i.ba, %.preheader129.i.preheader ] ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bi = add nuw nsw i32 %.082.i, 1
  %i.bj = fadd float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.bk = fsub float %i.be, %i.bd                 ; 2 uses
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bn = fmul float %4, %i.bm
  %i.bo = fcmp ugt float %i.bl, %i.bn
  br i1 %i.bo, label %bb.b, label %.thread134.i.i

bb.b:                                             ; preds = %.preheader129.i
  %i.bp = fdiv float %i.bj, %i.bk                 ; 4 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float 1.000000e+00)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.br = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bs = fcmp olt float %i.bp, 0.000000e+00
  %i.bt = fneg float %i.br
  %.0122.i.i = select i1 %i.bs, float %i.bt, float %i.br ; 5 uses
  %i.bu = fmul float %i.bp, %.0122.i.i            ; 4 uses
  %i.bv = fadd float %i.bd, %i.be
  %i.bw = fsub float %.sroa.33.1, %.sroa.0.1
  %i.bx = fmul float %i.bw, %i.bu
  %i.by = tail call float @llvm.fmuladd.f32(float %.0122.i.i, float %i.bv, float %i.bx) ; 2 uses
  %i.bz = fneg float %.sroa.33.1
  %i.ca = fmul float %.0122.i.i, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.be, float %i.ca)
  %i.cc = fmul float %i.cb, 2.000000e+00          ; 2 uses
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = tail call noundef float @llvm.fabs.f32(float %i.by)
  %i.cf = fmul float %4, %i.ce
  %i.cg = fcmp ugt float %i.cd, %i.cf
  br i1 %i.cg, label %.thread.i.i, label %bb.c

.thread134.i.i:                                   ; preds = %.preheader129.i
  %i.ch = fsub float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.ci = fadd float %i.bd, %i.be                 ; 2 uses
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cl = fmul float %4, %i.ck
  %i.cm = fcmp ugt float %i.cj, %i.cl
  br i1 %i.cm, label %.thread.i.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.b
  %.0120146.i.i = phi float [ %i.ch, %.thread134.i.i ], [ %i.by, %bb.b ]
  %.0121145.i.i = phi float [ %i.ci, %.thread134.i.i ], [ %i.cc, %bb.b ]
  %.1123144.i.i = phi float [ 0.000000e+00, %.thread134.i.i ], [ %.0122.i.i, %bb.b ]
  %.0124141.i.i = phi float [ 1.000000e+00, %.thread134.i.i ], [ %i.bu, %bb.b ]
  %i.cn = fdiv float %.0120146.i.i, %.0121145.i.i ; 4 uses
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float 1.000000e+00)
  %sqrt133.i.i = tail call float @llvm.sqrt.f32(float %i.cp)
  %i.cq = fadd float %i.co, %sqrt133.i.i
  %i.cr = fdiv float 1.000000e+00, %i.cq          ; 2 uses
  %i.cs = fcmp olt float %i.cn, 0.000000e+00
  %i.ct = fneg float %i.cr
  %.0117.i.i = select i1 %i.cs, float %i.ct, float %i.cr ; 3 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %.0117.i.i, float %.0117.i.i, float 1.000000e+00)
  %sqrt132.i.i = tail call float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fdiv float 1.000000e+00, %sqrt132.i.i   ; 3 uses
  %i.cw = fmul float %.0117.i.i, %i.cv            ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cv, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i, %bb.b
  %.1123142.i.i = phi float [ %.1123144.i.i, %.thread.i.i ], [ %.0122.i.i, %bb.b ] ; 2 uses
  %.0124139.i.i = phi float [ %.0124141.i.i, %.thread.i.i ], [ %i.bu, %bb.b ] ; 2 uses
  %.0118129.i.i = phi float [ %i.cw, %.thread.i.i ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0119128.i.i = phi float [ %i.cv, %.thread.i.i ], [ 1.000000e+00, %bb.b ] ; 4 uses
  %i.cz = phi <2 x float> [ %i.cy, %.thread.i.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ] ; 10 uses
  %i.da = fmul float %.1123142.i.i, %.0119128.i.i
  %i.db = fneg float %.1123142.i.i
  %i.dc = fneg float %.0118129.i.i                ; 2 uses
  %i.dd = fmul float %i.be, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0119128.i.i, float %i.dd)
  %i.df = fmul float %.sroa.33.1, %i.dc
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.bd, float %.0119128.i.i, float %i.df)
  %i.dh = fneg float %i.dg
  %i.di = fmul float %i.be, %.0119128.i.i
  %i.dj = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0118129.i.i, float %i.di)
  %i.dk = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.33.1, i64 1
  %i.dm = fmul <2 x float> %i.cz, %i.dl
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %.0124139.i.i, i64 1
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cz, <2 x float> %i.dn) ; 5 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.bg, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.du = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dv = fneg <4 x float> %i.bg
  %i.dw = extractelement <2 x float> %i.dq, i64 0
  %6 = load <4 x float>, ptr %1, align 4
  %i.dx = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.dy = fneg float %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dx, i64 1
  %i.eb = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ec = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %7 = load <4 x float>, ptr %i.t, align 4
  %i.ed = load float, ptr %i.u, align 4, !tbaa !15 ; 2 uses
  %i.ee = fneg float %i.ed
  %i.ef = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ed, i64 1
  %i.eh = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ei = load float, ptr %i.w, align 4, !tbaa !15
  %i.ej = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.ek = fneg float %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %.0118129.i.i, float %.0124139.i.i, float %i.da) ; 5 uses
  %i.em = extractelement <2 x float> %i.dq, i64 1 ; 2 uses
  %i.en = insertelement <4 x float> %i.dt, float %i.el, i64 3 ; 2 uses
  %i.eo = shufflevector <4 x float> %i.du, <4 x float> %i.dr, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eq = fmul <4 x float> %i.en, %i.ep
  %i.er = fmul float %i.el, %i.dh
  %i.es = tail call float @llvm.fmuladd.f32(float %i.em, float %i.de, float %i.er)
  %i.et = fmul float %i.em, %i.dw
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.el, float %i.dj, float %i.et)
  %i.ev = shufflevector <4 x float> %i.en, <4 x float> %i.eo, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.bh, <4 x float> %i.eq)
  %i.ex = insertelement <2 x float> %i.dq, float %i.el, i64 0 ; 3 uses
  %i.ey = fmul <2 x float> %i.ex, %i.ea
  %i.ez = insertelement <2 x float> %i.eb, float %i.el, i64 1 ; 3 uses
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ec, <2 x float> %i.ey)
  store <2 x float> %i.fa, ptr %1, align 4, !tbaa !15
  %i.fb = fmul <2 x float> %i.ex, %i.eg
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.eh, <2 x float> %i.fb)
  store <2 x float> %i.fc, ptr %i.t, align 4, !tbaa !15
  %i.fd = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.ej, i64 1
  %i.ff = fmul <2 x float> %i.ex, %i.fe
  %i.fg = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fh, <2 x float> %i.ff)
  store <2 x float> %i.fi, ptr %i.w, align 4, !tbaa !15
  %8 = load <4 x float>, ptr %3, align 4
  %i.fj = load float, ptr %i.z, align 4, !tbaa !15 ; 2 uses
  %i.fk = fneg float %i.fj
  %i.fl = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fj, i64 1
  %i.fn = fmul <2 x float> %i.cz, %i.fm
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.fp, <2 x float> %i.fo)
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fr, ptr %3, align 4, !tbaa !15
  %9 = load <4 x float>, ptr %i.ab, align 4
  %i.fs = load float, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ft = fneg float %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fs, i64 1
  %i.fw = fmul <2 x float> %i.cz, %i.fv
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.fy, <2 x float> %i.fx)
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ga, ptr %i.ab, align 4, !tbaa !15
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !15
  %i.gc = load float, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gc, i64 1
  %i.gg = fmul <2 x float> %i.cz, %i.gf
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.gj, <2 x float> %i.gh)
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.gl, ptr %i.ae, align 4, !tbaa !15
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i.i, %bb.c
  %.sroa.33.2 = phi float [ %i.eu, %bb.c ], [ %.sroa.33.1, %.thread134.i.i ] ; 5 uses
  %.sroa.0.2 = phi float [ %i.es, %bb.c ], [ %.sroa.0.1, %.thread134.i.i ] ; 6 uses
  %.1130.i.i = phi i1 [ true, %bb.c ], [ false, %.thread134.i.i ]
  %i.gm = phi <4 x float> [ %i.ew, %bb.c ], [ %i.bg, %.thread134.i.i ] ; 7 uses
  %i.gn = fadd float %.sroa.66.1, %.sroa.0.2      ; 2 uses
  %i.go = extractelement <4 x float> %i.gm, i64 2 ; 4 uses
  %i.gp = extractelement <4 x float> %i.gm, i64 3 ; 6 uses
  %i.gq = fsub float %i.gp, %i.go                 ; 2 uses
  %i.gr = tail call noundef float @llvm.fabs.f32(float %i.gq)
  %i.gs = tail call noundef float @llvm.fabs.f32(float %i.gn)
  %i.gt = fmul float %4, %i.gs
  %i.gu = fcmp ugt float %i.gr, %i.gt
  br i1 %i.gu, label %bb.d, label %.thread134.i85.i

bb.d:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.gv = fdiv float %i.gn, %i.gq                 ; 4 uses
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gv, float 1.000000e+00)
  %sqrt.i100.i = tail call float @llvm.sqrt.f32(float %i.gw)
  %i.gx = fdiv float 1.000000e+00, %sqrt.i100.i   ; 2 uses
  %i.gy = fcmp olt float %i.gv, 0.000000e+00
  %i.gz = fneg float %i.gx
  %.0122.i101.i = select i1 %i.gy, float %i.gz, float %i.gx ; 5 uses
  %i.ha = fmul float %i.gv, %.0122.i101.i         ; 4 uses
  %i.hb = fadd float %i.go, %i.gp
  %i.hc = fsub float %.sroa.66.1, %.sroa.0.2
  %i.hd = fmul float %i.hc, %i.ha
  %i.he = tail call float @llvm.fmuladd.f32(float %.0122.i101.i, float %i.hb, float %i.hd) ; 2 uses
  %i.hf = fneg float %.sroa.66.1
  %i.hg = fmul float %.0122.i101.i, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.gp, float %i.hg)
  %i.hi = fmul float %i.hh, 2.000000e+00          ; 2 uses
  %i.hj = tail call noundef float @llvm.fabs.f32(float %i.hi)
  %i.hk = tail call noundef float @llvm.fabs.f32(float %i.he)
  %i.hl = fmul float %4, %i.hk
  %i.hm = fcmp ugt float %i.hj, %i.hl
  br i1 %i.hm, label %.thread.i88.i, label %bb.e

.thread134.i85.i:                                 ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.hn = fsub float %.sroa.66.1, %.sroa.0.2      ; 2 uses
  %i.ho = fadd float %i.go, %i.gp                 ; 2 uses
  %i.hp = tail call noundef float @llvm.fabs.f32(float %i.ho)
  %i.hq = tail call noundef float @llvm.fabs.f32(float %i.hn)
  %i.hr = fmul float %4, %i.hq
  %i.hs = fcmp ugt float %i.hp, %i.hr
  %i.ht = extractelement <4 x float> %i.gm, i64 0
  %i.hu = extractelement <4 x float> %i.gm, i64 1
  br i1 %i.hs, label %.thread.i88.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i88.i:                                    ; preds = %.thread134.i85.i, %bb.d
  %.0120146.i89.i = phi float [ %i.hn, %.thread134.i85.i ], [ %i.he, %bb.d ]
  %.0121145.i90.i = phi float [ %i.ho, %.thread134.i85.i ], [ %i.hi, %bb.d ]
  %.1123144.i91.i = phi float [ 0.000000e+00, %.thread134.i85.i ], [ %.0122.i101.i, %bb.d ]
  %.0124141.i92.i = phi float [ 1.000000e+00, %.thread134.i85.i ], [ %i.ha, %bb.d ]
  %i.hv = fdiv float %.0120146.i89.i, %.0121145.i90.i ; 4 uses
  %i.hw = tail call noundef float @llvm.fabs.f32(float %i.hv)
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float 1.000000e+00)
  %sqrt133.i93.i = tail call float @llvm.sqrt.f32(float %i.hx)
  %i.hy = fadd float %i.hw, %sqrt133.i93.i
  %i.hz = fdiv float 1.000000e+00, %i.hy          ; 2 uses
  %i.ia = fcmp olt float %i.hv, 0.000000e+00
  %i.ib = fneg float %i.hz
  %.0117.i94.i = select i1 %i.ia, float %i.ib, float %i.hz ; 3 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %.0117.i94.i, float %.0117.i94.i, float 1.000000e+00)
  %sqrt132.i95.i = tail call float @llvm.sqrt.f32(float %i.ic)
  %i.id = fdiv float 1.000000e+00, %sqrt132.i95.i ; 3 uses
  %i.ie = fmul float %.0117.i94.i, %i.id          ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.id, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.thread.i88.i, %bb.d
  %.1123142.i96.i = phi float [ %.1123144.i91.i, %.thread.i88.i ], [ %.0122.i101.i, %bb.d ] ; 2 uses
  %.0124139.i97.i = phi float [ %.0124141.i92.i, %.thread.i88.i ], [ %i.ha, %bb.d ] ; 2 uses
  %.0118129.i98.i = phi float [ %i.ie, %.thread.i88.i ], [ 0.000000e+00, %bb.d ] ; 7 uses
  %.0119128.i99.i = phi float [ %i.id, %.thread.i88.i ], [ 1.000000e+00, %bb.d ] ; 7 uses
  %i.ih = phi <2 x float> [ %i.ig, %.thread.i88.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ] ; 7 uses
  %i.ii = fmul float %.1123142.i96.i, %.0119128.i99.i
  %i.ij = fneg float %.1123142.i96.i
  %i.ik = fneg float %.0118129.i98.i              ; 2 uses
  %i.il = fmul float %i.gp, %i.ik
  %i.im = tail call float @llvm.fmuladd.f32(float %.sroa.0.2, float %.0119128.i99.i, float %i.il)
  %i.in = fmul float %.sroa.66.1, %i.ik
  %i.io = tail call float @llvm.fmuladd.f32(float %i.go, float %.0119128.i99.i, float %i.in)
  %i.ip = fneg float %i.io
  %i.iq = fmul float %i.gp, %.0119128.i99.i
  %i.ir = tail call float @llvm.fmuladd.f32(float %.sroa.0.2, float %.0118129.i98.i, float %i.iq)
  %i.is = extractelement <4 x float> %i.gm, i64 0 ; 2 uses
  %i.it = fneg float %i.is
  %i.iu = extractelement <4 x float> %i.gm, i64 1 ; 2 uses
  %i.iv = fneg float %i.iu
  %i.iw = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %.sroa.66.1, i64 1
  %i.iy = fmul <2 x float> %i.ih, %i.ix
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jb = insertelement <2 x float> %i.ja, float %.0124139.i97.i, i64 1
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.ih, <2 x float> %i.iz) ; 4 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0
  %i.je = fmul float %.0118129.i98.i, %i.iv
  %i.jf = fmul float %i.iu, %.0119128.i99.i
  %i.jg = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float 0.000000e+00, float %i.jf)
  %i.jh = load float, ptr %1, align 4, !tbaa !15  ; 2 uses
  %i.ji = load <2 x float>, ptr %i.s, align 4, !tbaa !15 ; 2 uses
  %i.jj = load float, ptr %i.t, align 4, !tbaa !15
  %i.jk = extractelement <2 x float> %i.ji, i64 0 ; 2 uses
  %i.jl = fneg float %i.jk
  %i.jm = insertelement <2 x float> %i.ji, float %i.jh, i64 0
  %i.jn = load float, ptr %i.y, align 4, !tbaa !15 ; 2 uses
  %i.jo = fneg float %i.jn
  %i.jp = load <2 x float>, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.jq = load float, ptr %i.w, align 4, !tbaa !15
  %i.jr = extractelement <2 x float> %i.jp, i64 0 ; 2 uses
  %i.js = fneg float %i.jr
  %i.jt = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float %.0124139.i97.i, float %i.ii) ; 9 uses
  %i.ju = extractelement <2 x float> %i.jc, i64 1 ; 7 uses
  %i.jv = fmul float %i.jt, %i.ip
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.im, float %i.jv)
  %i.jx = fmul float %i.ju, %i.jd
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.ir, float %i.jx)
  %i.jz = fmul float %i.jt, %i.it
  %i.ka = fmul float %i.is, %i.ju
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jt, float 0.000000e+00, float %i.ka)
  %i.kc = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> %i.ih, <2 x i32> <i32 0, i32 3>
  %i.ke = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.je, i64 1
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> zeroinitializer, <2 x float> %i.kf)
  %i.kh = fmul float %i.jt, %i.jl
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.jh, float %i.kh)
  store float %i.ki, ptr %1, align 4, !tbaa !15
  %i.kj = fmul float %i.ju, %i.jk
  %i.kk = fmul float %i.jt, %i.js
  %i.kl = insertelement <2 x float> %i.jc, float %i.jt, i64 0 ; 2 uses
  %i.km = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.kk, i64 1
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.jm, <2 x float> %i.kn)
  store <2 x float> %i.ko, ptr %i.s, align 4, !tbaa !15
  %i.kp = fmul float %i.ju, %i.jr
  %i.kq = fmul float %i.jt, %i.jo
  %i.kr = insertelement <2 x float> %i.jp, float %i.jj, i64 0
  %i.ks = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kq, i64 1
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.kr, <2 x float> %i.kt)
  store <2 x float> %i.ku, ptr %i.v, align 4, !tbaa !15
  %i.kv = fmul float %i.ju, %i.jn
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.jq, float %i.kv)
  store float %i.kw, ptr %i.y, align 4, !tbaa !15
  %i.kx = load float, ptr %3, align 4, !tbaa !15  ; 2 uses
  %i.ky = load <2 x float>, ptr %i.aa, align 4, !tbaa !15 ; 3 uses
  %i.kz = load float, ptr %i.ab, align 4, !tbaa !15
  %i.la = extractelement <2 x float> %i.ky, i64 0
  %i.lb = fneg float %i.la
  %i.lc = fmul float %.0118129.i98.i, %i.lb
  %i.ld = tail call float @llvm.fmuladd.f32(float %.0119128.i99.i, float %i.kx, float %i.lc)
  store float %i.ld, ptr %3, align 4, !tbaa !15
  %i.le = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lf = insertelement <2 x float> %i.ky, float %i.kx, i64 0
  %i.lg = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.lh = fneg float %i.lg
  %i.li = load <2 x float>, ptr %i.ad, align 4, !tbaa !15 ; 3 uses
  %i.lj = load float, ptr %i.ae, align 4, !tbaa !15
  %i.lk = extractelement <2 x float> %i.li, i64 0
  %i.ll = fneg float %i.lk
  %i.lm = insertelement <2 x float> %i.le, float %i.ll, i64 0
  %i.ln = fmul <2 x float> %i.ih, %i.lm
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.lf, <2 x float> %i.lo)
  store <2 x float> %i.lp, ptr %i.aa, align 4, !tbaa !15
  %i.lq = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lr = insertelement <2 x float> %i.lq, float %i.lh, i64 0
  %i.ls = fmul <2 x float> %i.ih, %i.lr
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = insertelement <2 x float> %i.li, float %i.kz, i64 0
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.lu, <2 x float> %i.lt)
  store <2 x float> %i.lv, ptr %i.ad, align 4, !tbaa !15
  %i.lw = fmul float %.0119128.i99.i, %i.lg
  %i.lx = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float %i.lj, float %i.lw)
  store float %i.lx, ptr %i.ag, align 4, !tbaa !15
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.e
  %.sroa.66.2 = phi float [ %i.jy, %bb.e ], [ %.sroa.66.1, %.thread134.i85.i ] ; 7 uses
  %.sroa.57.2 = phi float [ %i.kb, %bb.e ], [ %i.ht, %.thread134.i85.i ] ; 5 uses
  %.sroa.39.2 = phi float [ %i.jg, %bb.e ], [ %i.hu, %.thread134.i85.i ] ; 6 uses
  %.sroa.0.3 = phi float [ %i.jw, %bb.e ], [ %.sroa.0.2, %.thread134.i85.i ] ; 3 uses
  %.1130.i87.i = phi i1 [ true, %bb.e ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.ly = phi <2 x float> [ %i.kg, %bb.e ], [ zeroinitializer, %.thread134.i85.i ] ; 2 uses
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ma = fadd float %.sroa.33.2, %.sroa.66.2     ; 2 uses
  %i.mb = fsub float %.sroa.39.2, %.sroa.57.2     ; 2 uses
  %i.mc = tail call noundef float @llvm.fabs.f32(float %i.mb)
  %i.md = tail call noundef float @llvm.fabs.f32(float %i.ma)
  %i.me = fmul float %4, %i.md
  %i.mf = fcmp ugt float %i.mc, %i.me
  br i1 %i.mf, label %bb.f, label %.thread134.i102.i

bb.f:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.mg = fdiv float %i.ma, %i.mb                 ; 4 uses
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mg, float 1.000000e+00)
  %sqrt.i117.i = tail call float @llvm.sqrt.f32(float %i.mh)
  %i.mi = fdiv float 1.000000e+00, %sqrt.i117.i   ; 2 uses
  %i.mj = fcmp olt float %i.mg, 0.000000e+00
  %i.mk = fneg float %i.mi
  %.0122.i118.i = select i1 %i.mj, float %i.mk, float %i.mi ; 5 uses
  %i.ml = fmul float %i.mg, %.0122.i118.i         ; 4 uses
  %i.mm = fadd float %.sroa.57.2, %.sroa.39.2
  %i.mn = fsub float %.sroa.66.2, %.sroa.33.2
  %i.mo = fmul float %i.mn, %i.ml
  %i.mp = tail call float @llvm.fmuladd.f32(float %.0122.i118.i, float %i.mm, float %i.mo) ; 2 uses
  %i.mq = fneg float %.sroa.66.2
  %i.mr = fmul float %.0122.i118.i, %i.mq
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.ml, float %.sroa.39.2, float %i.mr)
  %i.mt = fmul float %i.ms, 2.000000e+00          ; 2 uses
  %i.mu = tail call noundef float @llvm.fabs.f32(float %i.mt)
  %i.mv = tail call noundef float @llvm.fabs.f32(float %i.mp)
  %i.mw = fmul float %4, %i.mv
  %i.mx = fcmp ugt float %i.mu, %i.mw
  br i1 %i.mx, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.my = fsub float %.sroa.66.2, %.sroa.33.2     ; 2 uses
  %i.mz = fadd float %.sroa.57.2, %.sroa.39.2     ; 2 uses
  %i.na = tail call noundef float @llvm.fabs.f32(float %i.mz)
  %i.nb = tail call noundef float @llvm.fabs.f32(float %i.my)
  %i.nc = fmul float %4, %i.nb
  %i.nd = fcmp ugt float %i.na, %i.nc
  br i1 %i.nd, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.f
  %.0120146.i106.i = phi float [ %i.my, %.thread134.i102.i ], [ %i.mp, %bb.f ]
  %.0121145.i107.i = phi float [ %i.mz, %.thread134.i102.i ], [ %i.mt, %bb.f ]
  %.1123144.i108.i = phi float [ 0.000000e+00, %.thread134.i102.i ], [ %.0122.i118.i, %bb.f ]
  %.0124141.i109.i = phi float [ 1.000000e+00, %.thread134.i102.i ], [ %i.ml, %bb.f ]
  %i.ne = fdiv float %.0120146.i106.i, %.0121145.i107.i ; 4 uses
  %i.nf = tail call noundef float @llvm.fabs.f32(float %i.ne)
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.ne, float %i.ne, float 1.000000e+00)
  %sqrt133.i110.i = tail call float @llvm.sqrt.f32(float %i.ng)
  %i.nh = fadd float %i.nf, %sqrt133.i110.i
  %i.ni = fdiv float 1.000000e+00, %i.nh          ; 2 uses
  %i.nj = fcmp olt float %i.ne, 0.000000e+00
  %i.nk = fneg float %i.ni
  %.0117.i111.i = select i1 %i.nj, float %i.nk, float %i.ni ; 3 uses
  %i.nl = tail call float @llvm.fmuladd.f32(float %.0117.i111.i, float %.0117.i111.i, float 1.000000e+00)
  %sqrt132.i112.i = tail call float @llvm.sqrt.f32(float %i.nl)
  %i.nm = fdiv float 1.000000e+00, %sqrt132.i112.i ; 3 uses
  %i.nn = fmul float %.0117.i111.i, %i.nm         ; 2 uses
  %i.no = insertelement <2 x float> poison, float %i.nn, i64 0
  %i.np = insertelement <2 x float> %i.no, float %i.nm, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.f
  %.1123142.i113.i = phi float [ %.1123144.i108.i, %.thread.i105.i ], [ %.0122.i118.i, %bb.f ] ; 2 uses
  %.0124139.i114.i = phi float [ %.0124141.i109.i, %.thread.i105.i ], [ %i.ml, %bb.f ]
  %.0118129.i115.i = phi float [ %i.nn, %.thread.i105.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0119128.i116.i = phi float [ %i.nm, %.thread.i105.i ], [ 1.000000e+00, %bb.f ] ; 3 uses
  %i.nq = phi <2 x float> [ %i.np, %.thread.i105.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.f ] ; 10 uses
  %i.nr = fneg float %.1123142.i113.i
  %i.ns = fneg float %.0118129.i115.i             ; 2 uses
  %i.nt = fmul float %.sroa.66.2, %i.ns
  %i.nu = tail call float @llvm.fmuladd.f32(float %.sroa.57.2, float %.0119128.i116.i, float %i.nt)
  %i.nv = fmul float %.sroa.66.2, %.0119128.i116.i
  %i.nw = fmul float %.1123142.i113.i, %.0119128.i116.i
  %i.nx = fmul float %.sroa.39.2, %i.ns
  %i.ny = insertelement <2 x float> poison, float %.0124139.i114.i, i64 0
  %i.nz = insertelement <2 x float> %i.ny, float %.sroa.33.2, i64 1 ; 2 uses
  %i.oa = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.nx, i64 1
  %i.oc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> %i.nq, <2 x float> %i.ob) ; 6 uses
  %i.od = fneg float %i.nu
  %i.oe = extractelement <2 x float> %i.oc, i64 0
  %i.of = fmul float %i.oe, %i.od
  %i.og = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.oh = insertelement <2 x float> %i.og, float %.sroa.39.2, i64 1
  %i.oi = fmul <2 x float> %i.nq, %i.oh
  %i.oj = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ok = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> %i.oj, <2 x float> %i.oi) ; 5 uses
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.om = tail call float @llvm.fmuladd.f32(float %.sroa.57.2, float %.0118129.i115.i, float %i.nv)
  %i.on = extractelement <2 x float> %i.ok, i64 0
  %i.oo = fmul float %i.on, %i.om
  %i.op = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.oq = insertelement <2 x float> %i.op, float %i.of, i64 1
  %i.or = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.ol, <2 x float> %i.oq)
  %i.os = shufflevector <2 x float> %i.ok, <2 x float> %i.oc, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ot = shufflevector <2 x float> %i.nq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ou = shufflevector <4 x float> %i.os, <4 x float> %i.ot, <4 x i32> <i32 0, i32 5, i32 2, i32 4> ; 2 uses
  %i.ov = fmul <4 x float> %i.ou, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.ow = shufflevector <2 x float> %i.oc, <2 x float> %i.ok, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> %i.ou, <4 x i32> <i32 0, i32 7, i32 2, i32 5>
  %i.oy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> %i.lz, <4 x float> %i.ov)
  %10 = load <4 x float>, ptr %i.r, align 4
  %i.oz = load float, ptr %i.s, align 4, !tbaa !15 ; 2 uses
  %i.pa = fneg float %i.oz
  %i.pb = shufflevector <2 x float> %i.oc, <2 x float> %i.ol, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.pc = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pd = insertelement <2 x float> %i.pc, float %i.oz, i64 1
  %i.pe = fmul <2 x float> %i.pb, %i.pd
  %i.pf = shufflevector <2 x float> %i.ok, <2 x float> %i.oc, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pg = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ph = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.pg, <2 x float> %i.pe)
  store <2 x float> %i.ph, ptr %i.r, align 4, !tbaa !15
  %11 = load <4 x float>, ptr %i.u, align 4
  %i.pi = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.pj = fneg float %i.pi
  %i.pk = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pl = insertelement <2 x float> %i.pk, float %i.pi, i64 1
  %i.pm = fmul <2 x float> %i.pb, %i.pl
  %i.pn = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer
  %i.po = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.pn, <2 x float> %i.pm)
  store <2 x float> %i.po, ptr %i.u, align 4, !tbaa !15
  %i.pp = load float, ptr %i.x, align 4, !tbaa !15
  %i.pq = load float, ptr %i.y, align 4, !tbaa !15 ; 2 uses
  %i.pr = fneg float %i.pq
  %i.ps = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.pt = insertelement <2 x float> %i.ps, float %i.pq, i64 1
  %i.pu = fmul <2 x float> %i.pb, %i.pt
  %i.pv = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.pw = shufflevector <2 x float> %i.pv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.px = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.pw, <2 x float> %i.pu)
  store <2 x float> %i.px, ptr %i.x, align 4, !tbaa !15
  %12 = load <4 x float>, ptr %i.z, align 4
  %i.py = load float, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  %i.pz = fneg float %i.py
  %i.qa = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qb = insertelement <2 x float> %i.qa, float %i.py, i64 1
  %i.qc = fmul <2 x float> %i.nq, %i.qb
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qe = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.qe, <2 x float> %i.qd)
  %i.qg = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qg, ptr %i.z, align 4, !tbaa !15
  %13 = load <4 x float>, ptr %i.ac, align 4
  %i.qh = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.qi = fneg float %i.qh
  %i.qj = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.qk = insertelement <2 x float> %i.qj, float %i.qh, i64 1
  %i.ql = fmul <2 x float> %i.nq, %i.qk
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qn = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.qn, <2 x float> %i.qm)
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qp, ptr %i.ac, align 4, !tbaa !15
  %i.qq = load float, ptr %i.af, align 4, !tbaa !15
  %i.qr = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.qs = fneg float %i.qr
  %i.qt = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.qu = insertelement <2 x float> %i.qt, float %i.qr, i64 1
  %i.qv = fmul <2 x float> %i.nq, %i.qu
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qx = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.qy, <2 x float> %i.qw)
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ra, ptr %i.af, align 4, !tbaa !15
  br label %bb.g

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.rb = insertelement <2 x float> poison, float %.sroa.66.2, i64 0
  %i.rc = insertelement <2 x float> %i.rb, float %.sroa.33.2, i64 1 ; 2 uses
  %i.rd = shufflevector <2 x float> %i.ly, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0>
  br i1 %.1130.i87.i, label %bb.g, label %.loopexit130.i

bb.g:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.rf = phi <2 x float> [ %i.or, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.rc, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.rg = phi <4 x float> [ %i.oy, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.re, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 6 uses
  %i.rh = extractelement <4 x float> %i.rg, i64 3 ; 3 uses
  %i.ri = tail call noundef float @llvm.fabs.f32(float %i.rh)
  %i.rj = fcmp one float %i.rh, 0.000000e+00
  %.sroa.speculated23.i119.i = select i1 %i.rj, float %i.ri, float 0.000000e+00 ; 2 uses
  %i.rk = extractelement <4 x float> %i.rg, i64 1
  %i.rl = tail call noundef float @llvm.fabs.f32(float %i.rk) ; 2 uses
  %i.rm = fcmp olt float %.sroa.speculated23.i119.i, %i.rl
  %.sroa.speculated19.i120.i = select i1 %i.rm, float %i.rl, float %.sroa.speculated23.i119.i ; 2 uses
  %i.rn = extractelement <4 x float> %i.rg, i64 2 ; 2 uses
  %i.ro = tail call noundef float @llvm.fabs.f32(float %i.rn) ; 2 uses
  %i.rp = fcmp olt float %.sroa.speculated19.i120.i, %i.ro
  %.sroa.speculated15.i121.i = select i1 %i.rp, float %i.ro, float %.sroa.speculated19.i120.i ; 2 uses
  %i.rq = extractelement <4 x float> %i.rg, i64 0
  %i.rr = tail call noundef float @llvm.fabs.f32(float %i.rq) ; 2 uses
  %i.rs = fcmp olt float %.sroa.speculated15.i121.i, %i.rr
  %.sroa.speculated7.i123.i = select i1 %i.rs, float %i.rr, float %.sroa.speculated15.i121.i
  %i.rt = fcmp ogt float %.sroa.speculated7.i123.i, %i.au
  %i.ru = icmp samesign ult i32 %.082.i, 19
  %i.rv = select i1 %i.rt, i1 %i.ru, i1 false
  %i.rw = extractelement <2 x float> %i.rf, i64 0
  %i.rx = extractelement <2 x float> %i.rf, i64 1
  %i.ry = shufflevector <4 x float> %i.rg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.rz = shufflevector <4 x float> %i.rg, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  br i1 %i.rv, label %.preheader129.i, label %.loopexit130.i, !llvm.loop !46

.loopexit130.i:                                   ; preds = %bb.g, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %bb.a
  %.sroa.0.0 = phi float [ %i.a, %bb.a ], [ %.sroa.0.3, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ], [ %.sroa.0.3, %bb.g ] ; 3 uses
  %i.sa = phi <2 x float> [ %i.ax, %bb.a ], [ %i.rf, %bb.g ], [ %i.rc, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 2 uses
  store float %.sroa.0.0, ptr %2, align 4, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.sd = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.sd, ptr %i.sb, align 4, !tbaa !15
  %i.se = fcmp olt float %.sroa.0.0, 0.000000e+00
  %i.sf = extractelement <2 x float> %i.sa, i64 1
  br i1 %i.se, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.sg = fneg float %.sroa.0.0
  store float %i.sg, ptr %2, align 4, !tbaa !15
  %i.sh = load float, ptr %1, align 4, !tbaa !15
  %i.si = fneg float %i.sh
  store float %i.si, ptr %1, align 4, !tbaa !15
  %i.sj = load float, ptr %i.t, align 4, !tbaa !15
  %i.sk = fneg float %i.sj
  store float %i.sk, ptr %i.t, align 4, !tbaa !15
  %i.sl = load float, ptr %i.w, align 4, !tbaa !15
  %i.sm = fneg float %i.sl
  store float %i.sm, ptr %i.w, align 4, !tbaa !15
  %.pre153.i = load float, ptr %i.sb, align 4, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.sn = phi float [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.sf, %.loopexit130.i ] ; 2 uses
  %i.so = fcmp olt float %i.sn, 0.000000e+00
  br i1 %i.so, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.sp = fneg float %i.sn
  store float %i.sp, ptr %i.sb, align 4, !tbaa !15
  %i.sq = load float, ptr %i.r, align 4, !tbaa !15
  %i.sr = fneg float %i.sq
  store float %i.sr, ptr %i.r, align 4, !tbaa !15
  %i.ss = load float, ptr %i.u, align 4, !tbaa !15
  %i.st = fneg float %i.ss
  store float %i.st, ptr %i.u, align 4, !tbaa !15
  %i.su = load float, ptr %i.x, align 4, !tbaa !15
  %i.sv = fneg float %i.su
  store float %i.sv, ptr %i.x, align 4, !tbaa !15
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.sw = load float, ptr %i.sc, align 4, !tbaa !15 ; 2 uses
  %i.sx = fcmp olt float %i.sw, 0.000000e+00
  br i1 %i.sx, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.sy = fneg float %i.sw
  store float %i.sy, ptr %i.sc, align 4, !tbaa !15
  %i.sz = load float, ptr %i.s, align 4, !tbaa !15
  %i.ta = fneg float %i.sz
  store float %i.ta, ptr %i.s, align 4, !tbaa !15
  %i.tb = load float, ptr %i.v, align 4, !tbaa !15
  %i.tc = fneg float %i.tb
  store float %i.tc, ptr %i.v, align 4, !tbaa !15
  %i.td = load float, ptr %i.y, align 4, !tbaa !15
  %i.te = fneg float %i.td
  store float %i.te, ptr %i.y, align 4, !tbaa !15
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.tf = load float, ptr %2, align 4, !tbaa !15  ; 2 uses
  %i.tg = load float, ptr %i.sb, align 4, !tbaa !15 ; 3 uses
  %i.th = fcmp olt float %i.tf, %i.tg
  br i1 %i.th, label %bb.i, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.j, %.lr.ph.1145.i
  %i.ti = phi float [ %.pre, %bb.j ], [ %i.uj, %.lr.ph.1145.i ] ; 2 uses
  %i.tj = load float, ptr %2, align 4, !tbaa !15  ; 2 uses
  %i.tk = fcmp olt float %i.tj, %i.ti
  br i1 %i.tk, label %bb.h, label %._crit_edge.1.i

bb.h:                                             ; preds = %.lr.ph.preheader.1.i
  store float %i.ti, ptr %2, align 4, !tbaa !15
  store float %i.tj, ptr %i.sb, align 4, !tbaa !15
  %i.tl = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tm, ptr %1, align 4, !tbaa !15
  %i.tn = load <2 x float>, ptr %i.t, align 4, !tbaa !15
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.to, ptr %i.t, align 4, !tbaa !15
  %i.tp = load <2 x float>, ptr %i.w, align 4, !tbaa !15
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tq, ptr %i.w, align 4, !tbaa !15
  %i.tr = load <2 x float>, ptr %3, align 4, !tbaa !15
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ts, ptr %3, align 4, !tbaa !15
  %i.tt = load <2 x float>, ptr %i.ab, align 4, !tbaa !15
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tu, ptr %i.ab, align 4, !tbaa !15
  %i.tv = load <2 x float>, ptr %i.ae, align 4, !tbaa !15
  %i.tw = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tw, ptr %i.ae, align 4, !tbaa !15
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %bb.h, %.lr.ph.preheader.1.i
  br i1 %5, label %bb.k, label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

bb.i:                                             ; preds = %.lr.ph.preheader.i
  store float %i.tg, ptr %2, align 4, !tbaa !15
  store float %i.tf, ptr %i.sb, align 4, !tbaa !15
  %i.tx = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.ty = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ty, ptr %1, align 4, !tbaa !15
  %i.tz = load <2 x float>, ptr %i.t, align 4, !tbaa !15
  %i.ua = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ua, ptr %i.t, align 4, !tbaa !15
  %i.ub = load <2 x float>, ptr %i.w, align 4, !tbaa !15
  %i.uc = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.uc, ptr %i.w, align 4, !tbaa !15
  %i.ud = load <2 x float>, ptr %3, align 4, !tbaa !15
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ue, ptr %3, align 4, !tbaa !15
  %i.uf = load <2 x float>, ptr %i.ab, align 4, !tbaa !15
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ug, ptr %i.ab, align 4, !tbaa !15
  %i.uh = load <2 x float>, ptr %i.ae, align 4, !tbaa !15
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ui, ptr %i.ae, align 4, !tbaa !15
  %.pre154.i = load float, ptr %i.sb, align 4, !tbaa !15
  br label %.lr.ph.1145.i

.lr.ph.1145.i:                                    ; preds = %bb.i, %.lr.ph.preheader.i
  %i.uj = phi float [ %i.tg, %.lr.ph.preheader.i ], [ %.pre154.i, %bb.i ] ; 3 uses
  %i.uk = load float, ptr %i.sc, align 4, !tbaa !15 ; 2 uses
  %i.ul = fcmp olt float %i.uj, %i.uk
  br i1 %i.ul, label %bb.j, label %.lr.ph.preheader.1.i

bb.j:                                             ; preds = %.lr.ph.1145.i
  store float %i.uk, ptr %i.sb, align 4, !tbaa !15
  store float %i.uj, ptr %i.sc, align 4, !tbaa !15
  %i.um = load <2 x float>, ptr %i.r, align 4, !tbaa !15
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.un, ptr %i.r, align 4, !tbaa !15
  %i.uo = load <2 x float>, ptr %i.u, align 4, !tbaa !15
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.up, ptr %i.u, align 4, !tbaa !15
  %i.uq = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ur, ptr %i.x, align 4, !tbaa !15
  %i.us = load <2 x float>, ptr %i.z, align 4, !tbaa !15
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ut, ptr %i.z, align 4, !tbaa !15
end_hunk_3
