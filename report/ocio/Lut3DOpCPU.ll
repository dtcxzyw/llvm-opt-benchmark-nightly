Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU?download=true
inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bu, align 8, !tbaa !64
  store i64 1, ptr %i.bv, align 8, !tbaa !64
  %i.fp = getelementptr i8, ptr %i.fm, i64 4
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bw, align 16, !tbaa !142
  store double 0.000000e+00, ptr %i.bx, align 16, !tbaa !142
  store i64 2, ptr %i.by, align 16, !tbaa !64
  store i64 2, ptr %i.bz, align 16, !tbaa !64
  %i.fq = load <2 x float>, ptr %i.fp, align 4, !tbaa !56
  %i.fr = fpext <2 x float> %i.fq to <2 x double> ; 3 uses
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ft = insertelement <2 x double> %i.fs, double %i.fo, i64 0
  %i.fu = fsub <2 x double> %i.df, %i.ft          ; 2 uses
  store <2 x double> %i.fu, ptr %i.e, align 16, !tbaa !142
  %i.fv = extractelement <2 x double> %i.fr, i64 1
  %i.fw = fsub double %i.dg, %i.fv                ; 2 uses
  store double %i.fw, ptr %i.ca, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cc, align 16, !tbaa !142
  br label %bb.i

bb.i:                                             ; preds = %.thread336.i, %._crit_edge168
  %.0279435.i = phi i64 [ 0, %._crit_edge168 ], [ %i.qy, %.thread336.i ] ; 5 uses
  %.0288434.i = phi i64 [ 0, %._crit_edge168 ], [ %.2290.lcssa.i, %.thread336.i ]
  %.0293433.i = phi i64 [ 0, %._crit_edge168 ], [ %.7.ph.i, %.thread336.i ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0279435.i
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !64 ; 2 uses
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %.preheader363.preheader.i, label %.loopexit364.i

.preheader363.preheader.i:                        ; preds = %bb.i
  store <2 x double> %i.fu, ptr %i.e, align 16, !tbaa !142
  store double %i.fw, ptr %i.ca, align 16, !tbaa !142
  store i64 0, ptr %i.a, align 16, !tbaa !64
  store i64 0, ptr %i.b, align 16, !tbaa !64
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bu, align 8, !tbaa !64
  store i64 1, ptr %i.bv, align 8, !tbaa !64
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bw, align 16, !tbaa !142
  store double 0.000000e+00, ptr %i.bx, align 16, !tbaa !142
  store i64 2, ptr %i.by, align 16, !tbaa !64
  store i64 2, ptr %i.bz, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cc, align 16, !tbaa !142
  br label %.loopexit364.i

.loopexit364.i:                                   ; preds = %.preheader363.preheader.i, %bb.i
  %.0299.i = phi i64 [ %i.fy, %bb.i ], [ 0, %.preheader363.preheader.i ]
  %.1289.i = phi i64 [ %.0288434.i, %bb.i ], [ 0, %.preheader363.preheader.i ] ; 7 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0279435.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !64 ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0279435.i
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !64
  %.idx.i = mul i64 %i.gd, 12
  %i.ge = getelementptr i8, ptr %i.fm, i64 %.idx.i ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !56
  %i.gg = fpext float %i.gf to double
  %i.gh = fsub double %i.gg, %i.fo                ; 2 uses
  store double %i.gh, ptr %i.i, align 16, !tbaa !142
  %i.gi = getelementptr i8, ptr %i.ge, i64 4
  %i.gj = load <2 x float>, ptr %i.gi, align 4, !tbaa !56
  %i.gk = fpext <2 x float> %i.gj to <2 x double>
  %i.gl = fsub <2 x double> %i.gk, %i.fr          ; 2 uses
  store <2 x double> %i.gl, ptr %i.cd, align 8, !tbaa !142
  %.not441.i = icmp eq i64 %.1289.i, 0
  br i1 %.not441.i, label %.preheader361.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit364.i
  %xtraiter = and i64 %.1289.i, 1
  %i.gm = icmp eq i64 %.1289.i, 1
  br i1 %i.gm, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.1289.i, -2
  br label %.lr.ph.i

.preheader361.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader361.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0275378.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.il, %.preheader361.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod251 = trunc i64 %.1289.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0275378.i.epil.init
  %i.go = load double, ptr %i.gn, align 8, !tbaa !142
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0275378.i.epil.init
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !142
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0275378.i.epil.init
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gu ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !142
  %i.gx = fneg double %i.go
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gs, double %i.gw)
  store double %i.gy, ptr %i.gv, align 8, !tbaa !142
  br label %.preheader361.loopexit.i

.preheader361.loopexit.i:                         ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load double, ptr %i.i, align 16, !tbaa !142
  %i.gz = load <2 x double>, ptr %i.cd, align 8, !tbaa !142
  br label %.preheader361.i

.preheader361.i:                                  ; preds = %.preheader361.loopexit.i, %.loopexit364.i
  %i.ha = phi double [ %.pre.i, %.preheader361.loopexit.i ], [ %i.gh, %.loopexit364.i ]
  %i.hb = phi <2 x double> [ %i.gz, %.preheader361.loopexit.i ], [ %i.gl, %.loopexit364.i ] ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.f, i64 %i.gb ; 3 uses
  store double %i.ha, ptr %invariant.gep.i, align 8, !tbaa !142
  %i.hc = load i64, ptr %i.b, align 16, !tbaa !64 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, %i.gb
  %spec.select.i = zext i1 %i.hd to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 32
  %i.he = extractelement <2 x double> %i.hb, i64 0
  store double %i.he, ptr %gep.1.i, align 8, !tbaa !142
  %i.hf = load i64, ptr %i.bv, align 8, !tbaa !64 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, %i.gb
  %spec.select.1.i = select i1 %i.hg, i64 2, i64 %spec.select.i
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 64
  %i.hh = extractelement <2 x double> %i.hb, i64 1
  store double %i.hh, ptr %gep.2.i, align 8, !tbaa !142
  %i.hi = load i64, ptr %i.bz, align 16, !tbaa !64
  %i.hj = icmp eq i64 %i.hi, %i.gb
  %spec.select.2.i = select i1 %i.hj, i64 3, i64 %spec.select.1.i ; 2 uses
  %i.hk = icmp samesign ult i64 %spec.select.2.i, 2
  %i.hl = add nsw i64 %spec.select.2.i, -1        ; 4 uses
  br i1 %i.hk, label %bb.j, label %.preheader361._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0275378.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.il, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0275378.i
  %i.hn = load double, ptr %i.hm, align 16, !tbaa !142
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0275378.i
  %i.hp = load i64, ptr %i.ho, align 16, !tbaa !64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !142
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0275378.i
  %i.ht = load i64, ptr %i.hs, align 16, !tbaa !64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ht ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !142
  %i.hw = fneg double %i.hn
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hr, double %i.hv)
  store double %i.hx, ptr %i.hu, align 8, !tbaa !142
  %i.hy = or disjoint i64 %.0275378.i, 1          ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !142
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hy
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !142
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hy
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ig ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !142
  %i.ij = fneg double %i.ia
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ie, double %i.ii)
  store double %i.ik, ptr %i.ih, align 8, !tbaa !142
  %i.il = add nuw nsw i64 %.0275378.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader361.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !133

bb.j:                                             ; preds = %.preheader361.i
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hl
  %i.in = load i64, ptr %i.im, align 8, !tbaa !64
  %i.io = icmp eq i64 %i.hl, 0
  %.lcssa.i = select i1 %i.io, i64 %i.hf, i64 %i.hc
  store i64 %.lcssa.i, ptr %i.b, align 16
  store i64 %i.in, ptr %i.bv, align 8, !tbaa !64
  br label %.preheader361._crit_edge.i

.preheader361._crit_edge.i:                       ; preds = %bb.j, %.preheader361.i
  %i.ip = icmp ult i64 %i.hl, 2
  br i1 %i.ip, label %.lr.ph389.preheader.i, label %._crit_edge424.i

.loopexit357.i:                                   ; preds = %bb.s
  %i.iq = icmp eq i64 %.0270420.i, 0
  br i1 %i.iq, label %.lr.ph389.preheader.i, label %._crit_edge424.i, !llvm.loop !134

._crit_edge424.i:                                 ; preds = %.loopexit357.i, %.preheader361._crit_edge.i
  %.2290.lcssa.i = phi i64 [ %.1289.i, %.preheader361._crit_edge.i ], [ %.4292.i, %.loopexit357.i ]
  %.not.i = icmp eq i64 %.0299.i, 0
  br i1 %.not.i, label %.thread336.i, label %.preheader360.preheader.i

.preheader360.preheader.i:                        ; preds = %._crit_edge424.i
  %i.ir = load i64, ptr %i.by, align 16, !tbaa !64 ; 2 uses
  %i.is = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ir
  %i.it = load i64, ptr %i.bz, align 16, !tbaa !64 ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !142 ; 2 uses
  %i.iw = tail call double @llvm.fabs.f64(double %i.iv)
  %i.ix = fcmp olt double %i.iw, 1.000000e-09
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ir
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !142 ; 2 uses
  br i1 %i.ix, label %bb.t, label %._crit_edge429.i

.lr.ph389.preheader.i:                            ; preds = %.preheader361._crit_edge.i, %.loopexit357.i
  %.0270420.i = phi i64 [ 1, %.loopexit357.i ], [ %i.hl, %.preheader361._crit_edge.i ] ; 27 uses
  %.2290419.i = phi i64 [ %.4292.i, %.loopexit357.i ], [ %.1289.i, %.preheader361._crit_edge.i ]
  %i.ja = add nuw nsw i64 %.0270420.i, 1          ; 11 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0270420.i ; 3 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !64 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0270420.i ; 6 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !64 ; 2 uses
  %invariant.gep383.i = getelementptr [8 x i8], ptr %i.f, i64 %i.je ; 3 uses
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.jc
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.je
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !142
  %i.ji = tail call double @llvm.fabs.f64(double %i.jh) ; 3 uses
  %lcmp.mod253.not = icmp eq i64 %.0270420.i, 0
  br i1 %lcmp.mod253.not, label %.lr.ph389.i.prol.loopexit, label %.lr.ph389.i.prol

.lr.ph389.i.prol:                                 ; preds = %.lr.ph389.preheader.i
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ja
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !64
  %gep384.i.prol = getelementptr [32 x i8], ptr %invariant.gep383.i, i64 %i.jk
  %i.jl = load double, ptr %gep384.i.prol, align 8, !tbaa !142
  %i.jm = tail call double @llvm.fabs.f64(double %i.jl) ; 2 uses
  %i.jn = fcmp ogt double %i.jm, %i.ji            ; 2 uses
  %.1266.i.prol = select i1 %i.jn, i64 %i.ja, i64 %.0270420.i ; 2 uses
  %.1259.i.prol = select i1 %i.jn, double %i.jm, double %i.ji ; 2 uses
  %i.jo = or disjoint i64 %.0270420.i, 2
  br label %.lr.ph389.i.prol.loopexit

.lr.ph389.i.prol.loopexit:                        ; preds = %.lr.ph389.i.prol, %.lr.ph389.preheader.i
  %.1266.i.lcssa.unr = phi i64 [ poison, %.lr.ph389.preheader.i ], [ %.1266.i.prol, %.lr.ph389.i.prol ]
  %.1259.i.lcssa.unr = phi double [ poison, %.lr.ph389.preheader.i ], [ %.1259.i.prol, %.lr.ph389.i.prol ]
  %.0257387.i.unr = phi i64 [ %i.ja, %.lr.ph389.preheader.i ], [ %i.jo, %.lr.ph389.i.prol ]
  %.0258386.i.unr = phi double [ %i.ji, %.lr.ph389.preheader.i ], [ %.1259.i.prol, %.lr.ph389.i.prol ]
  %.0265385.i.unr = phi i64 [ %.0270420.i, %.lr.ph389.preheader.i ], [ %.1266.i.prol, %.lr.ph389.i.prol ]
  %.not257.not = icmp eq i64 %.0270420.i, 1
  br i1 %.not257.not, label %._crit_edge390.i, label %.lr.ph389.i

._crit_edge390.i:                                 ; preds = %.lr.ph389.i, %.lr.ph389.i.prol.loopexit
  %.1266.i.lcssa = phi i64 [ %.1266.i.lcssa.unr, %.lr.ph389.i.prol.loopexit ], [ %.1266.i.1, %.lr.ph389.i ] ; 2 uses
  %.1259.i.lcssa = phi double [ %.1259.i.lcssa.unr, %.lr.ph389.i.prol.loopexit ], [ %.1259.i.1, %.lr.ph389.i ] ; 3 uses
  %i.jp = fcmp olt double %.1259.i.lcssa, 1.000000e-09
  br i1 %i.jp, label %.preheader355.us.i.peel, label %.loopexit359.i

.preheader355.us.i.peel:                          ; preds = %._crit_edge390.i
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ja
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !64
  %invariant.gep401.us.i.peel = getelementptr [8 x i8], ptr %i.f, i64 %i.jr ; 4 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0270420.i
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !64
  %gep402.us.i.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.jt
  %i.ju = load double, ptr %gep402.us.i.peel, align 8, !tbaa !142
  %i.jv = tail call double @llvm.fabs.f64(double %i.ju) ; 2 uses
  %i.jw = fcmp ogt double %i.jv, %.1259.i.lcssa   ; 3 uses
  %.4.us.i.peel = select i1 %i.jw, double %i.jv, double %.1259.i.lcssa ; 2 uses
  %.4269.us.i.peel = select i1 %i.jw, i64 %.0270420.i, i64 %.1266.i.lcssa
  %i.jx = add nuw nsw i64 %.0270420.i, 1          ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !64
  %gep402.us.i.1.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.jz
  %i.ka = load double, ptr %gep402.us.i.1.peel, align 8, !tbaa !142
  %i.kb = tail call double @llvm.fabs.f64(double %i.ka) ; 2 uses
  %i.kc = fcmp ogt double %i.kb, %.4.us.i.peel    ; 3 uses
  %.4269.us.i.1.peel = select i1 %i.kc, i64 %i.jx, i64 %.4269.us.i.peel ; 2 uses
  %i.kd = or i1 %i.kc, %i.jw
  %.2264.us.i.1.peel = select i1 %i.kd, i64 %i.ja, i64 %.0270420.i ; 2 uses
  %.4.us.i.1.peel = select i1 %i.kc, double %i.kb, double %.4.us.i.peel ; 3 uses
  %exitcond448.not.i.1.peel = icmp eq i64 %.0270420.i, 1
  br i1 %exitcond448.not.i.1.peel, label %._crit_edge397.us.i.peel, label %bb.k

bb.k:                                             ; preds = %.preheader355.us.i.peel
  %i.ke = or disjoint i64 %.0270420.i, 2          ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !64
  %gep402.us.i.2.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.kg
  %i.kh = load double, ptr %gep402.us.i.2.peel, align 8, !tbaa !142
  %i.ki = tail call double @llvm.fabs.f64(double %i.kh) ; 2 uses
  %i.kj = fcmp ogt double %i.ki, %.4.us.i.1.peel  ; 3 uses
  %.4269.us.i.2.peel = select i1 %i.kj, i64 %i.ke, i64 %.4269.us.i.1.peel ; 2 uses
  %.2264.us.i.2.peel = select i1 %i.kj, i64 %i.ja, i64 %.2264.us.i.1.peel ; 2 uses
  %.4.us.i.2.peel = select i1 %i.kj, double %i.ki, double %.4.us.i.1.peel ; 3 uses
  %exitcond448.not.i.2.peel = icmp eq i64 %.0270420.i, 0
  br i1 %exitcond448.not.i.2.peel, label %._crit_edge397.us.i.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kk = add nuw nsw i64 %.0270420.i, 3          ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !64
  %gep402.us.i.3.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.km
  %i.kn = load double, ptr %gep402.us.i.3.peel, align 8, !tbaa !142
  %i.ko = tail call double @llvm.fabs.f64(double %i.kn) ; 2 uses
  %i.kp = fcmp ogt double %i.ko, %.4.us.i.2.peel  ; 3 uses
  %.4269.us.i.3.peel = select i1 %i.kp, i64 %i.kk, i64 %.4269.us.i.2.peel
  %.2264.us.i.3.peel = select i1 %i.kp, i64 %i.ja, i64 %.2264.us.i.2.peel
  %.4.us.i.3.peel = select i1 %i.kp, double %i.ko, double %.4.us.i.2.peel
  br label %._crit_edge397.us.i.peel

._crit_edge397.us.i.peel:                         ; preds = %bb.l, %bb.k, %.preheader355.us.i.peel
  %.4269.us.i.lcssa.peel = phi i64 [ %.4269.us.i.3.peel, %bb.l ], [ %.4269.us.i.1.peel, %.preheader355.us.i.peel ], [ %.4269.us.i.2.peel, %bb.k ] ; 2 uses
  %.2264.us.i.lcssa.peel = phi i64 [ %.2264.us.i.3.peel, %bb.l ], [ %.2264.us.i.1.peel, %.preheader355.us.i.peel ], [ %.2264.us.i.2.peel, %bb.k ] ; 2 uses
  %.4.us.i.lcssa.peel = phi double [ %.4.us.i.3.peel, %bb.l ], [ %.4.us.i.1.peel, %.preheader355.us.i.peel ], [ %.4.us.i.2.peel, %bb.k ] ; 3 uses
  %i.kq = fcmp ogt double %.4.us.i.lcssa.peel, 1.000000e-09
  br i1 %i.kq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge397.us.i.peel
  %i.kr = load i64, ptr %i.jd, align 8, !tbaa !64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2264.us.i.lcssa.peel ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !64
  store i64 %i.kt, ptr %i.jd, align 8, !tbaa !64
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge397.us.i.peel
  %exitcond449.not.i.peel = icmp eq i64 %i.ja, 2
  br i1 %exitcond449.not.i.peel, label %.loopexit359.i, label %.preheader355.us.i.preheader.peel.newph

.preheader355.us.i.preheader.peel.newph:          ; preds = %bb.n
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0270420.i
  %i.kv = add nuw nsw i64 %.0270420.i, 1          ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kv
  %i.kx = or disjoint i64 %.0270420.i, 2          ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kx
  %exitcond448.not.i.2 = icmp eq i64 %.0270420.i, 0
  %i.kz = add nuw nsw i64 %.0270420.i, 3          ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kz
  %i.lb = load i64, ptr %i.cl, align 16, !tbaa !64
  %invariant.gep401.us.i = getelementptr [8 x i8], ptr %i.f, i64 %i.lb ; 4 uses
  %i.lc = load i64, ptr %i.ku, align 8, !tbaa !64
  %gep402.us.i = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.lc
  %i.ld = load double, ptr %gep402.us.i, align 8, !tbaa !142
  %i.le = tail call double @llvm.fabs.f64(double %i.ld) ; 2 uses
  %i.lf = fcmp ogt double %i.le, %.4.us.i.lcssa.peel ; 3 uses
  %.4.us.i = select i1 %i.lf, double %i.le, double %.4.us.i.lcssa.peel ; 2 uses
  %.4269.us.i = select i1 %i.lf, i64 %.0270420.i, i64 %.4269.us.i.lcssa.peel
  %i.lg = load i64, ptr %i.kw, align 8, !tbaa !64
  %gep402.us.i.1 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.lg
  %i.lh = load double, ptr %gep402.us.i.1, align 8, !tbaa !142
  %i.li = tail call double @llvm.fabs.f64(double %i.lh) ; 2 uses
  %i.lj = fcmp ogt double %i.li, %.4.us.i         ; 3 uses
  %.4269.us.i.1 = select i1 %i.lj, i64 %i.kv, i64 %.4269.us.i
  %i.lk = or i1 %i.lj, %i.lf
  %.2264.us.i.1 = select i1 %i.lk, i64 2, i64 %.2264.us.i.lcssa.peel
  %.4.us.i.1 = select i1 %i.lj, double %i.li, double %.4.us.i ; 2 uses
  %4 = load i64, ptr %i.ky, align 8, !tbaa !64
  %gep402.us.i.2 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %4
  %5 = load double, ptr %gep402.us.i.2, align 8, !tbaa !142
  %6 = tail call double @llvm.fabs.f64(double %5) ; 2 uses
  %7 = fcmp ogt double %6, %.4.us.i.1             ; 3 uses
  %.4269.us.i.2 = select i1 %7, i64 %i.kx, i64 %.4269.us.i.1 ; 2 uses
  %.2264.us.i.1.a = select i1 %7, i64 2, i64 %.2264.us.i.1 ; 2 uses
  %.4.us.i.1.a = select i1 %7, double %6, double %.4.us.i.1 ; 3 uses
  br i1 %exitcond448.not.i.2, label %._crit_edge397.us.i, label %bb.o

bb.o:                                             ; preds = %.preheader355.us.i.preheader.peel.newph
  %i.ll = load i64, ptr %i.la, align 8, !tbaa !64
  %gep402.us.i.3 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.ll
  %i.lm = load double, ptr %gep402.us.i.3, align 8, !tbaa !142
  %i.ln = tail call double @llvm.fabs.f64(double %i.lm) ; 2 uses
  %i.lo = fcmp ogt double %i.ln, %.4.us.i.1.a     ; 3 uses
  %.4269.us.i.3 = select i1 %i.lo, i64 %i.kz, i64 %.4269.us.i.2
  %.2264.us.i.3 = select i1 %i.lo, i64 2, i64 %.2264.us.i.1.a
  %.4.us.i.3 = select i1 %i.lo, double %i.ln, double %.4.us.i.1.a
  br label %._crit_edge397.us.i

bb.p:                                             ; preds = %._crit_edge397.us.i
  %i.lp = load i64, ptr %i.jd, align 8, !tbaa !64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2264.us.i.lcssa ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !64
  store i64 %i.lr, ptr %i.jd, align 8, !tbaa !64
  store i64 %i.lp, ptr %i.lq, align 8, !tbaa !64
  br label %.loopexit359.i

._crit_edge397.us.i:                              ; preds = %bb.o, %.preheader355.us.i.preheader.peel.newph
  %.4269.us.i.lcssa = phi i64 [ %.4269.us.i.3, %bb.o ], [ %.4269.us.i.2, %.preheader355.us.i.preheader.peel.newph ] ; 2 uses
  %.2264.us.i.lcssa = phi i64 [ %.2264.us.i.3, %bb.o ], [ %.2264.us.i.1.a, %.preheader355.us.i.preheader.peel.newph ]
  %.4.us.i.lcssa = phi double [ %.4.us.i.3, %bb.o ], [ %.4.us.i.1.a, %.preheader355.us.i.preheader.peel.newph ]
  %i.ls = fcmp ogt double %.4.us.i.lcssa, 1.000000e-09
  br i1 %i.ls, label %bb.p, label %.loopexit359.i

.lr.ph389.i:                                      ; preds = %.lr.ph389.i.prol.loopexit, %.lr.ph389.i
  %.0257387.i = phi i64 [ %i.me, %.lr.ph389.i ], [ %.0257387.i.unr, %.lr.ph389.i.prol.loopexit ] ; 4 uses
  %.0258386.i = phi double [ %.1259.i.1, %.lr.ph389.i ], [ %.0258386.i.unr, %.lr.ph389.i.prol.loopexit ] ; 2 uses
  %.0265385.i = phi i64 [ %.1266.i.1, %.lr.ph389.i ], [ %.0265385.i.unr, %.lr.ph389.i.prol.loopexit ]
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0257387.i
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !64
  %gep384.i = getelementptr [32 x i8], ptr %invariant.gep383.i, i64 %i.lu
  %i.lv = load double, ptr %gep384.i, align 8, !tbaa !142
  %i.lw = tail call double @llvm.fabs.f64(double %i.lv) ; 2 uses
  %i.lx = fcmp ogt double %i.lw, %.0258386.i      ; 2 uses
  %.1266.i = select i1 %i.lx, i64 %.0257387.i, i64 %.0265385.i
  %.1259.i = select i1 %i.lx, double %i.lw, double %.0258386.i ; 2 uses
  %i.ly = add nuw nsw i64 %.0257387.i, 1          ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ly
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !64
  %gep384.i.1 = getelementptr [32 x i8], ptr %invariant.gep383.i, i64 %i.ma
  %i.mb = load double, ptr %gep384.i.1, align 8, !tbaa !142
  %i.mc = tail call double @llvm.fabs.f64(double %i.mb) ; 2 uses
  %i.md = fcmp ogt double %i.mc, %.1259.i         ; 2 uses
  %.1266.i.1 = select i1 %i.md, i64 %i.ly, i64 %.1266.i ; 2 uses
  %.1259.i.1 = select i1 %i.md, double %i.mc, double %.1259.i ; 2 uses
  %i.me = add nuw nsw i64 %.0257387.i, 2          ; 2 uses
  %exitcond447.not.i.1 = icmp eq i64 %i.me, 3
  br i1 %exitcond447.not.i.1, label %._crit_edge390.i, label %.lr.ph389.i, !llvm.loop !135

.loopexit359.i:                                   ; preds = %bb.n, %bb.p, %._crit_edge397.us.i, %._crit_edge390.i
  %.5.i = phi i64 [ %.1266.i.lcssa, %._crit_edge390.i ], [ %.4269.us.i.lcssa.peel, %bb.n ], [ %.4269.us.i.lcssa, %bb.p ], [ %.4269.us.i.lcssa, %._crit_edge397.us.i ] ; 2 uses
  %.not311.i = icmp eq i64 %.5.i, %.0270420.i
  br i1 %.not311.i, label %.lr.ph417.i, label %bb.q

bb.q:                                             ; preds = %.loopexit359.i
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.5.i ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !64
  store i64 %i.mg, ptr %i.jb, align 8, !tbaa !64
  store i64 %i.jc, ptr %i.mf, align 8, !tbaa !64
  br label %.lr.ph417.i

.lr.ph417.i:                                      ; preds = %bb.q, %.loopexit359.i
  %i.mh = load i64, ptr %i.jb, align 8, !tbaa !64 ; 3 uses
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.mh ; 4 uses
  %i.mj = load i64, ptr %i.jd, align 8, !tbaa !64 ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !142
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.mh
  %lcmp.mod256.not = icmp eq i64 %.0270420.i, 0
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ja
  %i.mo = or disjoint i64 %.0270420.i, 2
  %.not258.not = icmp eq i64 %.0270420.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph417.i
  %.0253415.i = phi i64 [ %i.ja, %.lr.ph417.i ], [ 2, %bb.s ] ; 2 uses
  %.3291414.i = phi i64 [ %.2290419.i, %.lr.ph417.i ], [ %.4292.i, %bb.s ] ; 5 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0253415.i
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !64 ; 3 uses
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.mq ; 4 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mj ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !142 ; 2 uses
  %i.mu = tail call double @llvm.fabs.f64(double %i.mt)
  %i.mv = fcmp ult double %i.mu, 1.000000e-09
  br i1 %i.mv, label %bb.s, label %.lr.ph412.i

.lr.ph412.i:                                      ; preds = %bb.r
  %i.mw = fdiv double %i.mt, %i.ml                ; 2 uses
  store double 0.000000e+00, ptr %i.ms, align 8, !tbaa !142
  %i.mx = fneg double %i.mw                       ; 4 uses
  br i1 %lcmp.mod256.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph412.i
  %i.my = load i64, ptr %i.mn, align 8, !tbaa !64 ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.my
  %i.na = load double, ptr %i.mz, align 8, !tbaa !142
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.my ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !142
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.mx, double %i.na, double %i.nc)
  store double %i.nd, ptr %i.nb, align 8, !tbaa !142
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph412.i
  %.0252410.i.unr = phi i64 [ %i.ja, %.lr.ph412.i ], [ %i.mo, %.prol.loopexit.unr-lcssa ]
  br i1 %.not258.not, label %._crit_edge413.i, label %.lr.ph412.i.new

._crit_edge413.i:                                 ; preds = %.lr.ph412.i.new, %.prol.loopexit
  %i.ne = load double, ptr %i.mm, align 8, !tbaa !142
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.mq ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !142
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.mx, double %i.ne, double %i.ng)
  store double %i.nh, ptr %i.nf, align 8, !tbaa !142
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.3291414.i
  store i64 %i.mq, ptr %i.ni, align 8, !tbaa !64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.3291414.i
  store i64 %i.mh, ptr %i.nj, align 8, !tbaa !64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.3291414.i
  store double %i.mw, ptr %i.nk, align 8, !tbaa !142
  %i.nl = add nuw nsw i64 %.3291414.i, 1
  br label %bb.s

.lr.ph412.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph412.i.new
  %.0252410.i = phi i64 [ %i.ob, %.lr.ph412.i.new ], [ %.0252410.i.unr, %.prol.loopexit ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0252410.i
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !64 ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.nn
  %i.np = load double, ptr %i.no, align 8, !tbaa !142
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.nn ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !142
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.mx, double %i.np, double %i.nr)
  store double %i.ns, ptr %i.nq, align 8, !tbaa !142
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0252410.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !64 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.nv
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !142
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.nv ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !142
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.mx, double %i.nx, double %i.nz)
  store double %i.oa, ptr %i.ny, align 8, !tbaa !142
  %i.ob = add nuw nsw i64 %.0252410.i, 2          ; 2 uses
  %exitcond450.not.i.1 = icmp eq i64 %i.ob, 3
  br i1 %exitcond450.not.i.1, label %._crit_edge413.i, label %.lr.ph412.i.new, !llvm.loop !136

bb.s:                                             ; preds = %._crit_edge413.i, %bb.r
  %.4292.i = phi i64 [ %i.nl, %._crit_edge413.i ], [ %.3291414.i, %bb.r ] ; 3 uses
  %exitcond451.not.i = icmp eq i64 %.0253415.i, 2
  br i1 %exitcond451.not.i, label %.loopexit357.i, label %bb.r, !llvm.loop !137

bb.t:                                             ; preds = %.preheader360.preheader.i
  %i.oc = tail call double @llvm.fabs.f64(double %i.iz)
  %i.od = fcmp ogt double %i.oc, 1.000000e-09
  br i1 %i.od, label %.thread336.i, label %.preheader360.1.i

._crit_edge429.i:                                 ; preds = %.preheader360.preheader.i
  %i.oe = fdiv double %i.iz, %i.iv                ; 4 uses
  %i.of = fcmp olt double %i.oe, -1.000000e-09
  %i.og = fcmp ogt double %i.oe, f0x3FF000000044B830
  %or.cond.i = or i1 %i.of, %i.og
  br i1 %or.cond.i, label %.thread336.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge429.i
  %i.oh = fadd double %i.oe, 0.000000e+00
  br label %.preheader360.1.i

.preheader360.1.i:                                ; preds = %bb.u, %bb.t
  %.sroa.9.0.i = phi double [ %i.oe, %bb.u ], [ 0.000000e+00, %bb.t ] ; 3 uses
  %.3.ph.i = phi double [ %i.oh, %bb.u ], [ 0.000000e+00, %bb.t ] ; 2 uses
  %i.oi = load i64, ptr %i.bu, align 8, !tbaa !64 ; 3 uses
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.oi ; 2 uses
  %i.ok = load i64, ptr %i.bv, align 8, !tbaa !64 ; 3 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ok
  %i.om = load double, ptr %i.ol, align 8, !tbaa !142 ; 2 uses
  %i.on = tail call double @llvm.fabs.f64(double %i.om)
  %i.oo = fcmp olt double %i.on, 1.000000e-09
  br i1 %i.oo, label %bb.v, label %._crit_edge429.1.i

._crit_edge429.1.i:                               ; preds = %.preheader360.1.i
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.it
  %i.oq = load double, ptr %i.op, align 8, !tbaa !142
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oq, double %.sroa.9.0.i, double 0.000000e+00)
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.oi
  %i.ot = load double, ptr %i.os, align 8, !tbaa !142
  %i.ou = fsub double %i.ot, %i.or
  %i.ov = fdiv double %i.ou, %i.om                ; 3 uses
  %i.ow = fcmp olt double %i.ov, -1.000000e-09
  %i.ox = fadd double %.3.ph.i, %i.ov             ; 2 uses
  %i.oy = fcmp ogt double %i.ox, f0x3FF000000044B830
  %or.cond485.i = or i1 %i.ow, %i.oy
  br i1 %or.cond485.i, label %.thread336.i, label %.preheader360.2.i

bb.v:                                             ; preds = %.preheader360.1.i
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.oi
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !142
  %i.pb = tail call double @llvm.fabs.f64(double %i.pa)
  %i.pc = fcmp ogt double %i.pb, 1.000000e-09
  br i1 %i.pc, label %.thread336.i, label %.preheader360.2.i

.preheader360.2.i:                                ; preds = %bb.v, %._crit_edge429.1.i
  %.sroa.5461.0.i = phi double [ %i.ov, %._crit_edge429.1.i ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %.3.ph.1.i = phi double [ %i.ox, %._crit_edge429.1.i ], [ %.3.ph.i, %bb.v ]
  %i.pd = load i64, ptr %i.a, align 16, !tbaa !64 ; 3 uses
  %i.pe = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.pd ; 3 uses
  %i.pf = load i64, ptr %i.b, align 16, !tbaa !64 ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !142 ; 2 uses
  %i.pi = tail call double @llvm.fabs.f64(double %i.ph)
  %i.pj = fcmp olt double %i.pi, 1.000000e-09
  br i1 %i.pj, label %bb.w, label %._crit_edge429.2.i

._crit_edge429.2.i:                               ; preds = %.preheader360.2.i
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.it
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !142
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.ok
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !142
  %i.po = tail call double @llvm.fmuladd.f64(double %i.pn, double %.sroa.5461.0.i, double 0.000000e+00)
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.pl, double %.sroa.9.0.i, double %i.po)
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.pd
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !142
  %i.ps = fsub double %i.pr, %i.pp
  %i.pt = fdiv double %i.ps, %i.ph                ; 3 uses
end_hunk_0
