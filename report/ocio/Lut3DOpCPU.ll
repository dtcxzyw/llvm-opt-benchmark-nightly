Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU?download=true
inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %.1169 = phi i64 [ %.0106171, %.lr.ph170 ], [ %.4, %bb.ab ] ; 6 uses
  %i.dz = phi <2 x i64> [ %i.dn, %.lr.ph170 ], [ %i.sb, %bb.ab ] ; 4 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.1169 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !64 ; 6 uses
  %i.ec = getelementptr inbounds nuw [112 x i8], ptr %.val129.pre, i64 %.1169 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = mul i64 %i.eb, %.val                    ; 4 uses
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !47 ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !56
  %i.ei = fcmp ult float %i.dj, %i.eh
  br i1 %i.ei, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ej = add i64 %i.ee, 1                        ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !56
  %i.em = fcmp ult float %i.dk, %i.el
  br i1 %i.em, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.en = add i64 %i.ee, 2                        ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !56
  %i.eq = fcmp ult float %.sroa.speculated.i134, %i.ep
  br i1 %i.eq, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !47 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ee
  %i.eu = load float, ptr %i.et, align 4, !tbaa !56
  %i.ev = fcmp ugt float %i.dj, %i.eu
  br i1 %i.ev, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ej
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !56
  %i.ey = fcmp ugt float %i.dk, %i.ex
  br i1 %i.ey, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.en
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !56
  %i.fb = fcmp ugt float %.sroa.speculated.i134, %i.fa
  %i.fc = add nuw i64 %i.dx, 1
  store i64 %i.fc, ptr %i.dy, align 8, !tbaa !64
  %i.fd = add i64 %i.eb, 1
  store i64 %i.fd, ptr %i.ea, align 8, !tbaa !64
  br i1 %i.fb, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fe = icmp eq i64 %.1169, %i.bq
  br i1 %i.fe, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.h
  br i1 %.not, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %.val130, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr align 8 %i.ff, i64 %i.ci, i1 false), !tbaa !64
  %.0..0..pre = load i64, ptr %i.q, align 16, !tbaa !64
  %.8. = load <2 x i64>, ptr %.8..8..sroa_idx, align 8, !tbaa !64
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %.lr.ph167, %.preheader
  %.0. = phi i64 [ %.0..0..pre, %.lr.ph167 ], [ %.0.194, %.preheader ] ; 4 uses
  %i.fg = phi <2 x i64> [ %.8., %.lr.ph167 ], [ %i.dz, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.fh = mul i64 %i.dt, %.0.
  %i.fi = extractelement <2 x i64> %i.fg, i64 0
  %i.fj = mul i64 %i.du, %i.fi
  %i.fk = extractelement <2 x i64> %i.fg, i64 1
  %i.fl = mul i64 %i.dv, %i.fk
  %i.fm = getelementptr [4 x i8], ptr %i.dw, i64 %i.fl
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %i.fj
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %i.fh ; 3 uses
  store i64 0, ptr %i.a, align 16, !tbaa !64
  store i64 0, ptr %i.b, align 16, !tbaa !64
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !56
  %i.fq = fpext float %i.fp to double             ; 2 uses
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bw, align 8, !tbaa !64
  store i64 1, ptr %i.bx, align 8, !tbaa !64
  %i.fr = getelementptr i8, ptr %i.fo, i64 4
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.by, align 16, !tbaa !142
  store double 0.000000e+00, ptr %i.bz, align 16, !tbaa !142
  store i64 2, ptr %i.ca, align 16, !tbaa !64
  store i64 2, ptr %i.cb, align 16, !tbaa !64
  %i.fs = load <2 x float>, ptr %i.fr, align 4, !tbaa !56
  %i.ft = fpext <2 x float> %i.fs to <2 x double> ; 3 uses
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fv = insertelement <2 x double> %i.fu, double %i.fq, i64 0
  %i.fw = fsub <2 x double> %i.dh, %i.fv          ; 2 uses
  store <2 x double> %i.fw, ptr %i.e, align 16, !tbaa !142
  %i.fx = extractelement <2 x double> %i.ft, i64 1
  %i.fy = fsub double %i.di, %i.fx                ; 2 uses
  store double %i.fy, ptr %i.cc, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ce, align 16, !tbaa !142
  br label %bb.i

bb.i:                                             ; preds = %.thread336.i, %._crit_edge168
  %.0279435.i = phi i64 [ 0, %._crit_edge168 ], [ %i.rc, %.thread336.i ] ; 5 uses
  %.0288434.i = phi i64 [ 0, %._crit_edge168 ], [ %.2290.lcssa.i, %.thread336.i ]
  %.0293433.i = phi i64 [ 0, %._crit_edge168 ], [ %.7.ph.i, %.thread336.i ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0279435.i
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !64 ; 2 uses
  %i.gb = icmp slt i64 %i.ga, 0
  br i1 %i.gb, label %.preheader363.preheader.i, label %.loopexit364.i

.preheader363.preheader.i:                        ; preds = %bb.i
  store <2 x double> %i.fw, ptr %i.e, align 16, !tbaa !142
  store double %i.fy, ptr %i.cc, align 16, !tbaa !142
  store i64 0, ptr %i.a, align 16, !tbaa !64
  store i64 0, ptr %i.b, align 16, !tbaa !64
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bw, align 8, !tbaa !64
  store i64 1, ptr %i.bx, align 8, !tbaa !64
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.by, align 16, !tbaa !142
  store double 0.000000e+00, ptr %i.bz, align 16, !tbaa !142
  store i64 2, ptr %i.ca, align 16, !tbaa !64
  store i64 2, ptr %i.cb, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ce, align 16, !tbaa !142
  br label %.loopexit364.i

.loopexit364.i:                                   ; preds = %.preheader363.preheader.i, %bb.i
  %.0299.i = phi i64 [ %i.ga, %bb.i ], [ 0, %.preheader363.preheader.i ]
  %.1289.i = phi i64 [ %.0288434.i, %bb.i ], [ 0, %.preheader363.preheader.i ] ; 7 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0279435.i
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !64 ; 4 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0279435.i
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !64
  %.idx.i = mul i64 %i.gf, 12
  %i.gg = getelementptr i8, ptr %i.fo, i64 %.idx.i ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !56
  %i.gi = fpext float %i.gh to double
  %i.gj = fsub double %i.gi, %i.fq                ; 2 uses
  store double %i.gj, ptr %i.i, align 16, !tbaa !142
  %i.gk = getelementptr i8, ptr %i.gg, i64 4
  %i.gl = load <2 x float>, ptr %i.gk, align 4, !tbaa !56
  %i.gm = fpext <2 x float> %i.gl to <2 x double>
  %i.gn = fsub <2 x double> %i.gm, %i.ft          ; 2 uses
  store <2 x double> %i.gn, ptr %i.cf, align 8, !tbaa !142
  %.not441.i = icmp eq i64 %.1289.i, 0
  br i1 %.not441.i, label %.preheader361.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit364.i
  %xtraiter = and i64 %.1289.i, 1
  %i.go = icmp eq i64 %.1289.i, 1
  br i1 %i.go, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.1289.i, -2
  br label %.lr.ph.i

.preheader361.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader361.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0275378.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.in, %.preheader361.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod251 = trunc i64 %.1289.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0275378.i.epil.init
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !142
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0275378.i.epil.init
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !142
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0275378.i.epil.init
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gw ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !142
  %i.gz = fneg double %i.gq
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.gu, double %i.gy)
  store double %i.ha, ptr %i.gx, align 8, !tbaa !142
  br label %.preheader361.loopexit.i

.preheader361.loopexit.i:                         ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load double, ptr %i.i, align 16, !tbaa !142
  %i.hb = load <2 x double>, ptr %i.cf, align 8, !tbaa !142
  br label %.preheader361.i

.preheader361.i:                                  ; preds = %.preheader361.loopexit.i, %.loopexit364.i
  %i.hc = phi double [ %.pre.i, %.preheader361.loopexit.i ], [ %i.gj, %.loopexit364.i ]
  %i.hd = phi <2 x double> [ %i.hb, %.preheader361.loopexit.i ], [ %i.gn, %.loopexit364.i ] ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.f, i64 %i.gd ; 3 uses
  store double %i.hc, ptr %invariant.gep.i, align 8, !tbaa !142
  %i.he = load i64, ptr %i.b, align 16, !tbaa !64
  %i.hf = icmp eq i64 %i.he, %i.gd
  %spec.select.i = zext i1 %i.hf to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 32
  %i.hg = extractelement <2 x double> %i.hd, i64 0
  store double %i.hg, ptr %gep.1.i, align 8, !tbaa !142
  %i.hh = load i64, ptr %i.bx, align 8, !tbaa !64 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, %i.gd
  %spec.select.1.i = select i1 %i.hi, i64 2, i64 %spec.select.i
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 64
  %i.hj = extractelement <2 x double> %i.hd, i64 1
  store double %i.hj, ptr %gep.2.i, align 8, !tbaa !142
  %i.hk = load i64, ptr %i.cb, align 16, !tbaa !64
  %i.hl = icmp eq i64 %i.hk, %i.gd
  %spec.select.2.i = select i1 %i.hl, i64 3, i64 %spec.select.1.i ; 2 uses
  %i.hm = icmp samesign ult i64 %spec.select.2.i, 2
  %i.hn = add nsw i64 %spec.select.2.i, -1        ; 4 uses
  br i1 %i.hm, label %bb.j, label %.preheader361._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0275378.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.in, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0275378.i
  %i.hp = load double, ptr %i.ho, align 16, !tbaa !142
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0275378.i
  %i.hr = load i64, ptr %i.hq, align 16, !tbaa !64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !142
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0275378.i
  %i.hv = load i64, ptr %i.hu, align 16, !tbaa !64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hv ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !142
  %i.hy = fneg double %i.hp
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.ht, double %i.hx)
  store double %i.hz, ptr %i.hw, align 8, !tbaa !142
  %i.ia = or disjoint i64 %.0275378.i, 1          ; 3 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !142
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ia
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !142
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ia
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ii ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !142
  %i.il = fneg double %i.ic
  %i.im = tail call double @llvm.fmuladd.f64(double %i.il, double %i.ig, double %i.ik)
  store double %i.im, ptr %i.ij, align 8, !tbaa !142
  %i.in = add nuw nsw i64 %.0275378.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader361.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !133

bb.j:                                             ; preds = %.preheader361.i
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hn
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !64
  %i.iq = icmp eq i64 %i.hn, 0
  br i1 %i.iq, label %.critedge.i, label %4

4:                                                ; preds = %.critedge.i, %bb.j
  store i64 %i.ip, ptr %i.bx, align 8, !tbaa !64
  br label %.preheader361._crit_edge.i

.critedge.i:                                      ; preds = %bb.j
  store i64 %i.hh, ptr %i.b, align 16, !tbaa !64
  br label %4

.preheader361._crit_edge.i:                       ; preds = %4, %.preheader361.i
  %i.ir = icmp ult i64 %i.hn, 2
  br i1 %i.ir, label %.lr.ph389.preheader.i, label %._crit_edge424.i

.loopexit357.i:                                   ; preds = %bb.v
  %i.is = icmp eq i64 %.0270420.i, 0
  br i1 %i.is, label %.lr.ph389.preheader.i, label %._crit_edge424.i, !llvm.loop !134

._crit_edge424.i:                                 ; preds = %.loopexit357.i, %.preheader361._crit_edge.i
  %.2290.lcssa.i = phi i64 [ %.1289.i, %.preheader361._crit_edge.i ], [ %.4292.i, %.loopexit357.i ]
  %.not.i = icmp eq i64 %.0299.i, 0
  br i1 %.not.i, label %.thread336.i, label %.preheader360.preheader.i

.preheader360.preheader.i:                        ; preds = %._crit_edge424.i
  %i.it = load i64, ptr %i.ca, align 16, !tbaa !64 ; 2 uses
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.it
  %i.iv = load i64, ptr %i.cb, align 16, !tbaa !64 ; 4 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !142 ; 2 uses
  %i.iy = tail call double @llvm.fabs.f64(double %i.ix)
  %i.iz = fcmp olt double %i.iy, 1.000000e-09
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.it
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !142 ; 2 uses
  br i1 %i.iz, label %bb.w, label %._crit_edge429.i

.lr.ph389.preheader.i:                            ; preds = %.preheader361._crit_edge.i, %.loopexit357.i
  %.0270420.i = phi i64 [ 1, %.loopexit357.i ], [ %i.hn, %.preheader361._crit_edge.i ] ; 28 uses
  %.2290419.i = phi i64 [ %.4292.i, %.loopexit357.i ], [ %.1289.i, %.preheader361._crit_edge.i ]
  %i.jc = add nuw nsw i64 %.0270420.i, 1          ; 12 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0270420.i ; 3 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !64 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0270420.i ; 6 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !64 ; 2 uses
  %invariant.gep383.i = getelementptr [8 x i8], ptr %i.f, i64 %i.jg ; 3 uses
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.je
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !142
  %i.jk = tail call double @llvm.fabs.f64(double %i.jj) ; 3 uses
  %lcmp.mod253.not = icmp eq i64 %.0270420.i, 0
  br i1 %lcmp.mod253.not, label %.lr.ph389.i.prol.loopexit, label %.lr.ph389.i.prol

.lr.ph389.i.prol:                                 ; preds = %.lr.ph389.preheader.i
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jc
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !64
  %gep384.i.prol = getelementptr [32 x i8], ptr %invariant.gep383.i, i64 %i.jm
  %i.jn = load double, ptr %gep384.i.prol, align 8, !tbaa !142
  %i.jo = tail call double @llvm.fabs.f64(double %i.jn) ; 2 uses
  %i.jp = fcmp ogt double %i.jo, %i.jk            ; 2 uses
  %.1266.i.prol = select i1 %i.jp, i64 %i.jc, i64 %.0270420.i ; 2 uses
  %.1259.i.prol = select i1 %i.jp, double %i.jo, double %i.jk ; 2 uses
  %i.jq = or disjoint i64 %.0270420.i, 2
  br label %.lr.ph389.i.prol.loopexit

.lr.ph389.i.prol.loopexit:                        ; preds = %.lr.ph389.i.prol, %.lr.ph389.preheader.i
  %.1266.i.lcssa.unr = phi i64 [ poison, %.lr.ph389.preheader.i ], [ %.1266.i.prol, %.lr.ph389.i.prol ]
  %.1259.i.lcssa.unr = phi double [ poison, %.lr.ph389.preheader.i ], [ %.1259.i.prol, %.lr.ph389.i.prol ]
  %.0257387.i.unr = phi i64 [ %i.jc, %.lr.ph389.preheader.i ], [ %i.jq, %.lr.ph389.i.prol ]
  %.0258386.i.unr = phi double [ %i.jk, %.lr.ph389.preheader.i ], [ %.1259.i.prol, %.lr.ph389.i.prol ]
  %.0265385.i.unr = phi i64 [ %.0270420.i, %.lr.ph389.preheader.i ], [ %.1266.i.prol, %.lr.ph389.i.prol ]
  %.not257.not = icmp eq i64 %.0270420.i, 1
  br i1 %.not257.not, label %._crit_edge390.i, label %.lr.ph389.i

._crit_edge390.i:                                 ; preds = %.lr.ph389.i, %.lr.ph389.i.prol.loopexit
  %.1266.i.lcssa = phi i64 [ %.1266.i.lcssa.unr, %.lr.ph389.i.prol.loopexit ], [ %.1266.i.1, %.lr.ph389.i ] ; 2 uses
  %.1259.i.lcssa = phi double [ %.1259.i.lcssa.unr, %.lr.ph389.i.prol.loopexit ], [ %.1259.i.1, %.lr.ph389.i ] ; 3 uses
  %i.jr = fcmp olt double %.1259.i.lcssa, 1.000000e-09
  br i1 %i.jr, label %.preheader355.us.i.peel, label %.loopexit359.i

.preheader355.us.i.peel:                          ; preds = %._crit_edge390.i
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jc
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !64
  %invariant.gep401.us.i.peel = getelementptr [8 x i8], ptr %i.f, i64 %i.jt ; 4 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0270420.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !64
  %gep402.us.i.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.jv
  %i.jw = load double, ptr %gep402.us.i.peel, align 8, !tbaa !142
  %i.jx = tail call double @llvm.fabs.f64(double %i.jw) ; 2 uses
  %i.jy = fcmp ogt double %i.jx, %.1259.i.lcssa   ; 3 uses
  %.4269.us.i.peel = select i1 %i.jy, i64 %.0270420.i, i64 %.1266.i.lcssa ; 2 uses
  %.2264.us.i.peel = select i1 %i.jy, i64 %i.jc, i64 %.0270420.i ; 2 uses
  %.4.us.i.peel = select i1 %i.jy, double %i.jx, double %.1259.i.lcssa ; 3 uses
  %i.jz = add nuw nsw i64 %.0270420.i, 1          ; 3 uses
  %exitcond450.not.i.peel = icmp eq i64 %i.jz, 3
  br i1 %exitcond450.not.i.peel, label %._crit_edge397.us.i.peel, label %bb.k

bb.k:                                             ; preds = %.preheader355.us.i.peel
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !64
  %gep402.us.i.1.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.kb
  %i.kc = load double, ptr %gep402.us.i.1.peel, align 8, !tbaa !142
  %i.kd = tail call double @llvm.fabs.f64(double %i.kc) ; 2 uses
  %i.ke = fcmp ogt double %i.kd, %.4.us.i.peel    ; 3 uses
  %.4269.us.i.1.peel = select i1 %i.ke, i64 %i.jz, i64 %.4269.us.i.peel ; 2 uses
  %.2264.us.i.1.peel = select i1 %i.ke, i64 %i.jc, i64 %.2264.us.i.peel ; 2 uses
  %.4.us.i.1.peel = select i1 %i.ke, double %i.kd, double %.4.us.i.peel ; 3 uses
  %exitcond450.not.i.1.peel = icmp eq i64 %.0270420.i, 1
  br i1 %exitcond450.not.i.1.peel, label %._crit_edge397.us.i.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kf = or disjoint i64 %.0270420.i, 2          ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !64
  %gep402.us.i.2.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.kh
  %i.ki = load double, ptr %gep402.us.i.2.peel, align 8, !tbaa !142
  %i.kj = tail call double @llvm.fabs.f64(double %i.ki) ; 2 uses
  %i.kk = fcmp ogt double %i.kj, %.4.us.i.1.peel  ; 3 uses
  %.4269.us.i.2.peel = select i1 %i.kk, i64 %i.kf, i64 %.4269.us.i.1.peel ; 2 uses
  %.2264.us.i.2.peel = select i1 %i.kk, i64 %i.jc, i64 %.2264.us.i.1.peel ; 2 uses
  %.4.us.i.2.peel = select i1 %i.kk, double %i.kj, double %.4.us.i.1.peel ; 3 uses
  %exitcond450.not.i.2.peel = icmp eq i64 %.0270420.i, 0
  br i1 %exitcond450.not.i.2.peel, label %._crit_edge397.us.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kl = add nuw nsw i64 %.0270420.i, 3          ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !64
  %gep402.us.i.3.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.kn
  %i.ko = load double, ptr %gep402.us.i.3.peel, align 8, !tbaa !142
  %i.kp = tail call double @llvm.fabs.f64(double %i.ko) ; 2 uses
  %i.kq = fcmp ogt double %i.kp, %.4.us.i.2.peel  ; 3 uses
  %.4269.us.i.3.peel = select i1 %i.kq, i64 %i.kl, i64 %.4269.us.i.2.peel
  %.2264.us.i.3.peel = select i1 %i.kq, i64 %i.jc, i64 %.2264.us.i.2.peel
  %.4.us.i.3.peel = select i1 %i.kq, double %i.kp, double %.4.us.i.2.peel
  br label %._crit_edge397.us.i.peel

._crit_edge397.us.i.peel:                         ; preds = %bb.m, %bb.l, %bb.k, %.preheader355.us.i.peel
  %.4269.us.i.lcssa.peel = phi i64 [ %.4269.us.i.peel, %.preheader355.us.i.peel ], [ %.4269.us.i.1.peel, %bb.k ], [ %.4269.us.i.2.peel, %bb.l ], [ %.4269.us.i.3.peel, %bb.m ] ; 2 uses
  %.2264.us.i.lcssa.peel = phi i64 [ %.2264.us.i.peel, %.preheader355.us.i.peel ], [ %.2264.us.i.1.peel, %bb.k ], [ %.2264.us.i.2.peel, %bb.l ], [ %.2264.us.i.3.peel, %bb.m ] ; 2 uses
  %.4.us.i.lcssa.peel = phi double [ %.4.us.i.peel, %.preheader355.us.i.peel ], [ %.4.us.i.1.peel, %bb.k ], [ %.4.us.i.2.peel, %bb.l ], [ %.4.us.i.3.peel, %bb.m ] ; 3 uses
  %i.kr = fcmp ogt double %.4.us.i.lcssa.peel, 1.000000e-09
  br i1 %i.kr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge397.us.i.peel
  %i.ks = load i64, ptr %i.jf, align 8, !tbaa !64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2264.us.i.lcssa.peel ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !64
  store i64 %i.ku, ptr %i.jf, align 8, !tbaa !64
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge397.us.i.peel
  %exitcond451.not.i.peel = icmp eq i64 %i.jc, 2
  br i1 %exitcond451.not.i.peel, label %.loopexit359.i, label %.preheader355.us.i.preheader.peel.newph

.preheader355.us.i.preheader.peel.newph:          ; preds = %bb.o
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0270420.i
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !64
  %i.kx = add nuw nsw i64 %.0270420.i, 1          ; 3 uses
  %exitcond450.not.i = icmp eq i64 %i.kx, 3
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kx
  %exitcond450.not.i.1 = icmp eq i64 %.0270420.i, 1
  %i.kz = or disjoint i64 %.0270420.i, 2          ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kz
  %exitcond450.not.i.2 = icmp eq i64 %.0270420.i, 0
  %i.lb = add nuw nsw i64 %.0270420.i, 3          ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.lb
  %i.ld = load i64, ptr %i.cn, align 16, !tbaa !64
  %invariant.gep401.us.i = getelementptr [8 x i8], ptr %i.f, i64 %i.ld ; 4 uses
  %gep402.us.i = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.kw
  %i.le = load double, ptr %gep402.us.i, align 8, !tbaa !142
  %i.lf = tail call double @llvm.fabs.f64(double %i.le) ; 2 uses
  %i.lg = fcmp ogt double %i.lf, %.4.us.i.lcssa.peel ; 3 uses
  %.4269.us.i = select i1 %i.lg, i64 %.0270420.i, i64 %.4269.us.i.lcssa.peel ; 2 uses
  %.2264.us.i = select i1 %i.lg, i64 2, i64 %.2264.us.i.lcssa.peel ; 2 uses
  %.4.us.i = select i1 %i.lg, double %i.lf, double %.4.us.i.lcssa.peel ; 3 uses
  br i1 %exitcond450.not.i, label %._crit_edge397.us.i, label %bb.p

bb.p:                                             ; preds = %.preheader355.us.i.preheader.peel.newph
  %i.lh = load i64, ptr %i.ky, align 8, !tbaa !64
  %gep402.us.i.1 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.lh
  %i.li = load double, ptr %gep402.us.i.1, align 8, !tbaa !142
  %i.lj = tail call double @llvm.fabs.f64(double %i.li) ; 2 uses
  %i.lk = fcmp ogt double %i.lj, %.4.us.i         ; 3 uses
  %.4269.us.i.1 = select i1 %i.lk, i64 %i.kx, i64 %.4269.us.i ; 2 uses
  %.2264.us.i.1 = select i1 %i.lk, i64 2, i64 %.2264.us.i ; 2 uses
  %.4.us.i.1 = select i1 %i.lk, double %i.lj, double %.4.us.i ; 3 uses
  br i1 %exitcond450.not.i.1, label %._crit_edge397.us.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ll = load i64, ptr %i.la, align 8, !tbaa !64
  %gep402.us.i.2 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.ll
  %i.lm = load double, ptr %gep402.us.i.2, align 8, !tbaa !142
  %i.ln = tail call double @llvm.fabs.f64(double %i.lm) ; 2 uses
  %i.lo = fcmp ogt double %i.ln, %.4.us.i.1       ; 3 uses
  %.4269.us.i.2 = select i1 %i.lo, i64 %i.kz, i64 %.4269.us.i.1 ; 2 uses
  %.2264.us.i.2 = select i1 %i.lo, i64 2, i64 %.2264.us.i.1 ; 2 uses
  %.4.us.i.2 = select i1 %i.lo, double %i.ln, double %.4.us.i.1 ; 3 uses
  br i1 %exitcond450.not.i.2, label %._crit_edge397.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lp = load i64, ptr %i.lc, align 8, !tbaa !64
  %gep402.us.i.3 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.lp
  %i.lq = load double, ptr %gep402.us.i.3, align 8, !tbaa !142
  %i.lr = tail call double @llvm.fabs.f64(double %i.lq) ; 2 uses
  %i.ls = fcmp ogt double %i.lr, %.4.us.i.2       ; 3 uses
  %.4269.us.i.3 = select i1 %i.ls, i64 %i.lb, i64 %.4269.us.i.2
  %.2264.us.i.3 = select i1 %i.ls, i64 2, i64 %.2264.us.i.2
  %.4.us.i.3 = select i1 %i.ls, double %i.lr, double %.4.us.i.2
  br label %._crit_edge397.us.i

bb.s:                                             ; preds = %._crit_edge397.us.i
end_hunk_0
