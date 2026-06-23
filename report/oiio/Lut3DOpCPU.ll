inline.NumInlined: 813
inline.NumDeleted: 378
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %.1169 = phi i64 [ %.0110171, %.lr.ph170 ], [ %.4, %bb.ab ] ; 6 uses
  %i.dw = phi <2 x i64> [ %i.dk, %.lr.ph170 ], [ %i.rt, %bb.ab ] ; 4 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.1169 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !117 ; 6 uses
  %i.dz = getelementptr inbounds nuw [112 x i8], ptr %.val129.pre, i64 %.1169 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = mul i64 %i.dy, %.val                    ; 4 uses
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !87 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !102
  %i.ef = fcmp ult float %i.dg, %i.ee
  br i1 %i.ef, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.eg = add i64 %i.eb, 1                        ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !102
  %i.ej = fcmp ult float %i.dh, %i.ei
  br i1 %i.ej, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ek = add i64 %i.eb, 2                        ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !102
  %i.en = fcmp ult float %.sroa.speculated.i134, %i.em
  br i1 %i.en, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !87 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eb
  %i.er = load float, ptr %i.eq, align 4, !tbaa !102
  %i.es = fcmp ugt float %i.dg, %i.er
  br i1 %i.es, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eg
  %i.eu = load float, ptr %i.et, align 4, !tbaa !102
  %i.ev = fcmp ugt float %i.dh, %i.eu
  br i1 %i.ev, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ek
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !102
  %i.ey = fcmp ugt float %.sroa.speculated.i134, %i.ex
  %i.ez = add nuw i64 %i.du, 1
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !117
  %i.fa = add i64 %i.dy, 1
  store i64 %i.fa, ptr %i.dx, align 8, !tbaa !117
  br i1 %i.ey, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fb = icmp eq i64 %.1169, %i.bo
  br i1 %i.fb, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.h
  br i1 %.not, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %.val130, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr align 8 %i.fc, i64 %i.cf, i1 false), !tbaa !117
  %.0. = load <2 x i64>, ptr %i.q, align 16, !tbaa !117
  %.16..16..pre = load i64, ptr %.16..16..sroa_idx, align 16, !tbaa !117
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %.lr.ph167, %.preheader
  %.16. = phi i64 [ %.16..16..pre, %.lr.ph167 ], [ %.16.204, %.preheader ] ; 4 uses
  %i.fd = phi <2 x i64> [ %.0., %.lr.ph167 ], [ %i.dw, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.fe = extractelement <2 x i64> %i.fd, i64 0
  %i.ff = mul i64 %i.dr, %i.fe
  %i.fg = extractelement <2 x i64> %i.fd, i64 1
  %i.fh = mul i64 %i.ds, %i.fg
  %i.fi = mul i64 %i.dt, %.16.
  %i.fj = getelementptr [4 x i8], ptr %i.dq, i64 %i.fi
  %i.fk = getelementptr [4 x i8], ptr %i.fj, i64 %i.fh
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %i.ff ; 3 uses
  store i64 0, ptr %i.a, align 16, !tbaa !117
  store i64 0, ptr %i.b, align 16, !tbaa !117
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !102
  %i.fn = fpext float %i.fm to double             ; 2 uses
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bt, align 8, !tbaa !117
  store i64 1, ptr %i.bu, align 8, !tbaa !117
  %i.fo = getelementptr i8, ptr %i.fl, i64 4
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bv, align 16, !tbaa !125
  store double 0.000000e+00, ptr %i.bw, align 16, !tbaa !125
  store i64 2, ptr %i.bx, align 16, !tbaa !117
  store i64 2, ptr %i.by, align 16, !tbaa !117
  %i.fp = load <2 x float>, ptr %i.fo, align 4, !tbaa !102
  %i.fq = fpext <2 x float> %i.fp to <2 x double> ; 3 uses
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fs = insertelement <2 x double> %i.fr, double %i.fn, i64 0
  %i.ft = fsub <2 x double> %i.de, %i.fs          ; 2 uses
  store <2 x double> %i.ft, ptr %i.e, align 16, !tbaa !125
  %i.fu = extractelement <2 x double> %i.fq, i64 1
  %i.fv = fsub double %i.df, %i.fu                ; 2 uses
  store double %i.fv, ptr %i.bz, align 16, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cb, align 16, !tbaa !125
  br label %bb.i

bb.i:                                             ; preds = %.thread336.i, %._crit_edge168
  %.0255436.i = phi i64 [ 0, %._crit_edge168 ], [ %.7.ph.i, %.thread336.i ]
  %.0259435.i = phi i64 [ 0, %._crit_edge168 ], [ %.2261.lcssa.i, %.thread336.i ]
  %.0290433.i = phi i64 [ 0, %._crit_edge168 ], [ %i.qw, %.thread336.i ] ; 5 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0290433.i
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !117 ; 2 uses
  %i.fy = icmp slt i64 %i.fx, 0
  br i1 %i.fy, label %.preheader363.preheader.i, label %.loopexit364.i

.preheader363.preheader.i:                        ; preds = %bb.i
  store <2 x double> %i.ft, ptr %i.e, align 16, !tbaa !125
  store double %i.fv, ptr %i.bz, align 16, !tbaa !125
  store i64 0, ptr %i.a, align 16, !tbaa !117
  store i64 0, ptr %i.b, align 16, !tbaa !117
  store double 1.000000e+00, ptr %i.f, align 16, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bt, align 8, !tbaa !117
  store i64 1, ptr %i.bu, align 8, !tbaa !117
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bv, align 16, !tbaa !125
  store double 0.000000e+00, ptr %i.bw, align 16, !tbaa !125
  store i64 2, ptr %i.bx, align 16, !tbaa !117
  store i64 2, ptr %i.by, align 16, !tbaa !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cb, align 16, !tbaa !125
  br label %.loopexit364.i

.loopexit364.i:                                   ; preds = %.preheader363.preheader.i, %bb.i
  %.1260.i = phi i64 [ %.0259435.i, %bb.i ], [ 0, %.preheader363.preheader.i ] ; 7 uses
  %.0251.i = phi i64 [ %i.fx, %bb.i ], [ 0, %.preheader363.preheader.i ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0290433.i
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !117 ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0290433.i
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !117
  %.idx.i = mul i64 %i.gc, 12
  %i.gd = getelementptr i8, ptr %i.fl, i64 %.idx.i ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !102
  %i.gf = fpext float %i.ge to double
  %i.gg = fsub double %i.gf, %i.fn                ; 2 uses
  store double %i.gg, ptr %i.i, align 16, !tbaa !125
  %i.gh = getelementptr i8, ptr %i.gd, i64 4
  %i.gi = load <2 x float>, ptr %i.gh, align 4, !tbaa !102
  %i.gj = fpext <2 x float> %i.gi to <2 x double>
  %i.gk = fsub <2 x double> %i.gj, %i.fq          ; 2 uses
  store <2 x double> %i.gk, ptr %i.cc, align 8, !tbaa !125
  %.not441.i = icmp eq i64 %.1260.i, 0
  br i1 %.not441.i, label %.preheader361.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit364.i
  %xtraiter = and i64 %.1260.i, 1
  %i.gl = icmp eq i64 %.1260.i, 1
  br i1 %i.gl, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.1260.i, -2
  br label %.lr.ph.i

.preheader361.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader361.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0297378.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ij, %.preheader361.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod251 = trunc i64 %.1260.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0297378.i.epil.init
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !125
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0297378.i.epil.init
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !117
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gp
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !125
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0297378.i.epil.init
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !117
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gt ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !125
  %i.gw = fneg double %i.gn
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gr, double %i.gv)
  store double %i.gx, ptr %i.gu, align 8, !tbaa !125
  br label %.preheader361.loopexit.i

.preheader361.loopexit.i:                         ; preds = %.preheader361.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load double, ptr %i.i, align 16, !tbaa !125
  %i.gy = load <2 x double>, ptr %i.cc, align 8, !tbaa !125
  br label %.preheader361.i

.preheader361.i:                                  ; preds = %.preheader361.loopexit.i, %.loopexit364.i
  %i.gz = phi double [ %.pre.i, %.preheader361.loopexit.i ], [ %i.gg, %.loopexit364.i ]
  %i.ha = phi <2 x double> [ %i.gy, %.preheader361.loopexit.i ], [ %i.gk, %.loopexit364.i ] ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.f, i64 %i.ga ; 3 uses
  store double %i.gz, ptr %invariant.gep.i, align 8, !tbaa !125
  %i.hb = load i64, ptr %i.b, align 16, !tbaa !117 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, %i.ga
  %spec.select.i = zext i1 %i.hc to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 32
  %i.hd = extractelement <2 x double> %i.ha, i64 0
  store double %i.hd, ptr %gep.1.i, align 8, !tbaa !125
  %i.he = load i64, ptr %i.bu, align 8, !tbaa !117 ; 2 uses
  %i.hf = icmp eq i64 %i.he, %i.ga
  %spec.select.1.i = select i1 %i.hf, i64 2, i64 %spec.select.i
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 64
  %i.hg = extractelement <2 x double> %i.ha, i64 1
  store double %i.hg, ptr %gep.2.i, align 8, !tbaa !125
  %i.hh = load i64, ptr %i.by, align 16, !tbaa !117
  %i.hi = icmp eq i64 %i.hh, %i.ga
  %spec.select.2.i = select i1 %i.hi, i64 3, i64 %spec.select.1.i ; 2 uses
  %i.hj = icmp samesign ult i64 %spec.select.2.i, 2
  %4 = add nsw i64 %spec.select.2.i, -1           ; 4 uses
  br i1 %i.hj, label %bb.j, label %.preheader361._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0297378.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ij, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0297378.i
  %i.hl = load double, ptr %i.hk, align 16, !tbaa !125
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0297378.i
  %i.hn = load i64, ptr %i.hm, align 16, !tbaa !117
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !125
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0297378.i
  %i.hr = load i64, ptr %i.hq, align 16, !tbaa !117
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.hr ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !125
  %i.hu = fneg double %i.hl
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.hp, double %i.ht)
  store double %i.hv, ptr %i.hs, align 8, !tbaa !125
  %i.hw = or disjoint i64 %.0297378.i, 1          ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !125
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hw
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !117
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !125
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hw
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !117
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ie ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !125
  %i.ih = fneg double %i.hy
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ic, double %i.ig)
  store double %i.ii, ptr %i.if, align 8, !tbaa !125
  %i.ij = add nuw i64 %.0297378.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader361.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !127

bb.j:                                             ; preds = %.preheader361.i
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %4
  %5 = load i64, ptr %i.ik, align 8, !tbaa !117
  %6 = icmp eq i64 %4, 0
  %.lcssa.i = select i1 %6, i64 %i.he, i64 %i.hb
  store i64 %.lcssa.i, ptr %i.b, align 16
  store i64 %5, ptr %i.bu, align 8, !tbaa !117
  br label %.preheader361._crit_edge.i

.preheader361._crit_edge.i:                       ; preds = %bb.j, %.preheader361.i
  %i.il = icmp ult i64 %4, 2
  br i1 %i.il, label %.lr.ph389.preheader.i, label %._crit_edge424.i

.loopexit357.i:                                   ; preds = %bb.v
  %i.im = icmp eq i64 %.0291419.i, 0
  br i1 %i.im, label %.lr.ph389.preheader.i, label %._crit_edge424.i, !llvm.loop !128

._crit_edge424.i:                                 ; preds = %.loopexit357.i, %.preheader361._crit_edge.i
  %.2261.lcssa.i = phi i64 [ %.1260.i, %.preheader361._crit_edge.i ], [ %.4263.i, %.loopexit357.i ]
  %.not.i = icmp eq i64 %.0251.i, 0
  br i1 %.not.i, label %.thread336.i, label %.preheader360.preheader.i

.preheader360.preheader.i:                        ; preds = %._crit_edge424.i
  %i.in = load i64, ptr %i.bx, align 16, !tbaa !117 ; 2 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.in
  %i.ip = load i64, ptr %i.by, align 16, !tbaa !117 ; 4 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !125 ; 2 uses
  %i.is = tail call double @llvm.fabs.f64(double %i.ir)
  %i.it = fcmp olt double %i.is, 1.000000e-09
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.in
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !125 ; 2 uses
  br i1 %i.it, label %bb.w, label %._crit_edge429.i

.lr.ph389.preheader.i:                            ; preds = %.preheader361._crit_edge.i, %.loopexit357.i
  %.2261421.i = phi i64 [ %.4263.i, %.loopexit357.i ], [ %.1260.i, %.preheader361._crit_edge.i ]
  %.0291419.i = phi i64 [ 1, %.loopexit357.i ], [ %4, %.preheader361._crit_edge.i ] ; 28 uses
  %i.iw = add nuw nsw i64 %.0291419.i, 1          ; 12 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0291419.i ; 3 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !117 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0291419.i ; 6 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !117 ; 2 uses
  %invariant.gep383.i = getelementptr [8 x i8], ptr %i.f, i64 %i.ja ; 3 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.iy
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ja
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !125
  %i.je = tail call double @llvm.fabs.f64(double %i.jd) ; 3 uses
  %lcmp.mod253.not = icmp eq i64 %.0291419.i, 0
  br i1 %lcmp.mod253.not, label %.lr.ph389.i.prol.loopexit, label %.lr.ph389.i.prol

.lr.ph389.i.prol:                                 ; preds = %.lr.ph389.preheader.i
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.iw
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !117
  %gep384.i.prol = getelementptr [32 x i8], ptr %invariant.gep383.i, i64 %i.jg
  %i.jh = load double, ptr %gep384.i.prol, align 8, !tbaa !125
  %i.ji = tail call double @llvm.fabs.f64(double %i.jh) ; 2 uses
  %i.jj = fcmp ogt double %i.ji, %i.je            ; 2 uses
  %.1285.i.prol = select i1 %i.jj, i64 %i.iw, i64 %.0291419.i ; 2 uses
  %.1277.i.prol = select i1 %i.jj, double %i.ji, double %i.je ; 2 uses
  %i.jk = or disjoint i64 %.0291419.i, 2
  br label %.lr.ph389.i.prol.loopexit

.lr.ph389.i.prol.loopexit:                        ; preds = %.lr.ph389.i.prol, %.lr.ph389.preheader.i
  %.1285.i.lcssa.unr = phi i64 [ poison, %.lr.ph389.preheader.i ], [ %.1285.i.prol, %.lr.ph389.i.prol ]
  %.1277.i.lcssa.unr = phi double [ poison, %.lr.ph389.preheader.i ], [ %.1277.i.prol, %.lr.ph389.i.prol ]
  %.0275387.i.unr = phi i64 [ %i.iw, %.lr.ph389.preheader.i ], [ %i.jk, %.lr.ph389.i.prol ]
  %.0276386.i.unr = phi double [ %i.je, %.lr.ph389.preheader.i ], [ %.1277.i.prol, %.lr.ph389.i.prol ]
  %.0284385.i.unr = phi i64 [ %.0291419.i, %.lr.ph389.preheader.i ], [ %.1285.i.prol, %.lr.ph389.i.prol ]
  %.not257.not = icmp eq i64 %.0291419.i, 1
  br i1 %.not257.not, label %._crit_edge390.i, label %.lr.ph389.i

._crit_edge390.i:                                 ; preds = %.lr.ph389.i, %.lr.ph389.i.prol.loopexit
  %.1285.i.lcssa = phi i64 [ %.1285.i.lcssa.unr, %.lr.ph389.i.prol.loopexit ], [ %.1285.i.1, %.lr.ph389.i ] ; 2 uses
  %.1277.i.lcssa = phi double [ %.1277.i.lcssa.unr, %.lr.ph389.i.prol.loopexit ], [ %.1277.i.1, %.lr.ph389.i ] ; 3 uses
  %i.jl = fcmp olt double %.1277.i.lcssa, 1.000000e-09
  br i1 %i.jl, label %.preheader355.us.i.peel, label %.loopexit359.i

.preheader355.us.i.peel:                          ; preds = %._crit_edge390.i
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.iw
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !117
  %invariant.gep401.us.i.peel = getelementptr [8 x i8], ptr %i.f, i64 %i.jn ; 4 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0291419.i
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !117
  %gep402.us.i.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.jp
  %i.jq = load double, ptr %gep402.us.i.peel, align 8, !tbaa !125
  %i.jr = tail call double @llvm.fabs.f64(double %i.jq) ; 2 uses
  %i.js = fcmp ogt double %i.jr, %.1277.i.lcssa   ; 3 uses
  %.4288.us.i.peel = select i1 %i.js, i64 %.0291419.i, i64 %.1285.i.lcssa ; 2 uses
  %.2283.us.i.peel = select i1 %i.js, i64 %i.iw, i64 %.0291419.i ; 2 uses
  %.4280.us.i.peel = select i1 %i.js, double %i.jr, double %.1277.i.lcssa ; 3 uses
  %i.jt = add nuw nsw i64 %.0291419.i, 1          ; 3 uses
  %exitcond450.not.i.peel = icmp eq i64 %i.jt, 3
  br i1 %exitcond450.not.i.peel, label %._crit_edge397.us.i.peel, label %bb.k

bb.k:                                             ; preds = %.preheader355.us.i.peel
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jt
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !117
  %gep402.us.i.1.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.jv
  %i.jw = load double, ptr %gep402.us.i.1.peel, align 8, !tbaa !125
  %i.jx = tail call double @llvm.fabs.f64(double %i.jw) ; 2 uses
  %i.jy = fcmp ogt double %i.jx, %.4280.us.i.peel ; 3 uses
  %.4288.us.i.1.peel = select i1 %i.jy, i64 %i.jt, i64 %.4288.us.i.peel ; 2 uses
  %.2283.us.i.1.peel = select i1 %i.jy, i64 %i.iw, i64 %.2283.us.i.peel ; 2 uses
  %.4280.us.i.1.peel = select i1 %i.jy, double %i.jx, double %.4280.us.i.peel ; 3 uses
  %exitcond450.not.i.1.peel = icmp eq i64 %.0291419.i, 1
  br i1 %exitcond450.not.i.1.peel, label %._crit_edge397.us.i.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jz = or disjoint i64 %.0291419.i, 2          ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !117
  %gep402.us.i.2.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.kb
  %i.kc = load double, ptr %gep402.us.i.2.peel, align 8, !tbaa !125
  %i.kd = tail call double @llvm.fabs.f64(double %i.kc) ; 2 uses
  %i.ke = fcmp ogt double %i.kd, %.4280.us.i.1.peel ; 3 uses
  %.4288.us.i.2.peel = select i1 %i.ke, i64 %i.jz, i64 %.4288.us.i.1.peel ; 2 uses
  %.2283.us.i.2.peel = select i1 %i.ke, i64 %i.iw, i64 %.2283.us.i.1.peel ; 2 uses
  %.4280.us.i.2.peel = select i1 %i.ke, double %i.kd, double %.4280.us.i.1.peel ; 3 uses
  %exitcond450.not.i.2.peel = icmp eq i64 %.0291419.i, 0
  br i1 %exitcond450.not.i.2.peel, label %._crit_edge397.us.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kf = add nuw nsw i64 %.0291419.i, 3          ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !117
  %gep402.us.i.3.peel = getelementptr [32 x i8], ptr %invariant.gep401.us.i.peel, i64 %i.kh
  %i.ki = load double, ptr %gep402.us.i.3.peel, align 8, !tbaa !125
  %i.kj = tail call double @llvm.fabs.f64(double %i.ki) ; 2 uses
  %i.kk = fcmp ogt double %i.kj, %.4280.us.i.2.peel ; 3 uses
  %.4288.us.i.3.peel = select i1 %i.kk, i64 %i.kf, i64 %.4288.us.i.2.peel
  %.2283.us.i.3.peel = select i1 %i.kk, i64 %i.iw, i64 %.2283.us.i.2.peel
  %.4280.us.i.3.peel = select i1 %i.kk, double %i.kj, double %.4280.us.i.2.peel
  br label %._crit_edge397.us.i.peel

._crit_edge397.us.i.peel:                         ; preds = %bb.m, %bb.l, %bb.k, %.preheader355.us.i.peel
  %.4288.us.i.lcssa.peel = phi i64 [ %.4288.us.i.peel, %.preheader355.us.i.peel ], [ %.4288.us.i.1.peel, %bb.k ], [ %.4288.us.i.2.peel, %bb.l ], [ %.4288.us.i.3.peel, %bb.m ] ; 2 uses
  %.2283.us.i.lcssa.peel = phi i64 [ %.2283.us.i.peel, %.preheader355.us.i.peel ], [ %.2283.us.i.1.peel, %bb.k ], [ %.2283.us.i.2.peel, %bb.l ], [ %.2283.us.i.3.peel, %bb.m ] ; 2 uses
  %.4280.us.i.lcssa.peel = phi double [ %.4280.us.i.peel, %.preheader355.us.i.peel ], [ %.4280.us.i.1.peel, %bb.k ], [ %.4280.us.i.2.peel, %bb.l ], [ %.4280.us.i.3.peel, %bb.m ] ; 3 uses
  %i.kl = fcmp ogt double %.4280.us.i.lcssa.peel, 1.000000e-09
  br i1 %i.kl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge397.us.i.peel
  %i.km = load i64, ptr %i.iz, align 8, !tbaa !117
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2283.us.i.lcssa.peel ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !117
  store i64 %i.ko, ptr %i.iz, align 8, !tbaa !117
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !117
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge397.us.i.peel
  %exitcond451.not.i.peel = icmp eq i64 %i.iw, 2
  br i1 %exitcond451.not.i.peel, label %.loopexit359.i, label %.preheader355.us.i.preheader.peel.newph

.preheader355.us.i.preheader.peel.newph:          ; preds = %bb.o
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0291419.i
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !117
  %i.kr = add nuw nsw i64 %.0291419.i, 1          ; 3 uses
  %exitcond450.not.i = icmp eq i64 %i.kr, 3
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kr
  %exitcond450.not.i.1 = icmp eq i64 %.0291419.i, 1
  %i.kt = or disjoint i64 %.0291419.i, 2          ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kt
  %exitcond450.not.i.2 = icmp eq i64 %.0291419.i, 0
  %i.kv = add nuw nsw i64 %.0291419.i, 3          ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kv
  %i.kx = load i64, ptr %i.ck, align 16, !tbaa !117
  %invariant.gep401.us.i = getelementptr [8 x i8], ptr %i.f, i64 %i.kx ; 4 uses
  %gep402.us.i = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.kq
  %i.ky = load double, ptr %gep402.us.i, align 8, !tbaa !125
  %i.kz = tail call double @llvm.fabs.f64(double %i.ky) ; 2 uses
  %i.la = fcmp ogt double %i.kz, %.4280.us.i.lcssa.peel ; 3 uses
  %.4288.us.i = select i1 %i.la, i64 %.0291419.i, i64 %.4288.us.i.lcssa.peel ; 2 uses
  %.2283.us.i = select i1 %i.la, i64 2, i64 %.2283.us.i.lcssa.peel ; 2 uses
  %.4280.us.i = select i1 %i.la, double %i.kz, double %.4280.us.i.lcssa.peel ; 3 uses
  br i1 %exitcond450.not.i, label %._crit_edge397.us.i, label %bb.q

bb.p:                                             ; preds = %._crit_edge397.us.i
  %i.lb = load i64, ptr %i.iz, align 8, !tbaa !117
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2283.us.i.lcssa ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !117
  store i64 %i.ld, ptr %i.iz, align 8, !tbaa !117
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !117
  br label %.loopexit359.i

bb.q:                                             ; preds = %.preheader355.us.i.preheader.peel.newph
  %i.le = load i64, ptr %i.ks, align 8, !tbaa !117
  %gep402.us.i.1 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.le
  %i.lf = load double, ptr %gep402.us.i.1, align 8, !tbaa !125
  %i.lg = tail call double @llvm.fabs.f64(double %i.lf) ; 2 uses
  %i.lh = fcmp ogt double %i.lg, %.4280.us.i      ; 3 uses
  %.4288.us.i.1 = select i1 %i.lh, i64 %i.kr, i64 %.4288.us.i ; 2 uses
  %.2283.us.i.1 = select i1 %i.lh, i64 2, i64 %.2283.us.i ; 2 uses
  %.4280.us.i.1 = select i1 %i.lh, double %i.lg, double %.4280.us.i ; 3 uses
  br i1 %exitcond450.not.i.1, label %._crit_edge397.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.li = load i64, ptr %i.ku, align 8, !tbaa !117
  %gep402.us.i.2 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.li
  %i.lj = load double, ptr %gep402.us.i.2, align 8, !tbaa !125
  %i.lk = tail call double @llvm.fabs.f64(double %i.lj) ; 2 uses
  %i.ll = fcmp ogt double %i.lk, %.4280.us.i.1    ; 3 uses
  %.4288.us.i.2 = select i1 %i.ll, i64 %i.kt, i64 %.4288.us.i.1 ; 2 uses
  %.2283.us.i.2 = select i1 %i.ll, i64 2, i64 %.2283.us.i.1 ; 2 uses
  %.4280.us.i.2 = select i1 %i.ll, double %i.lk, double %.4280.us.i.1 ; 3 uses
  br i1 %exitcond450.not.i.2, label %._crit_edge397.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lm = load i64, ptr %i.kw, align 8, !tbaa !117
  %gep402.us.i.3 = getelementptr [32 x i8], ptr %invariant.gep401.us.i, i64 %i.lm
  %i.ln = load double, ptr %gep402.us.i.3, align 8, !tbaa !125
  %i.lo = tail call double @llvm.fabs.f64(double %i.ln) ; 2 uses
  %i.lp = fcmp ogt double %i.lo, %.4280.us.i.2    ; 3 uses
  %.4288.us.i.3 = select i1 %i.lp, i64 %i.kv, i64 %.4288.us.i.2
  %.2283.us.i.3 = select i1 %i.lp, i64 2, i64 %.2283.us.i.2
  %.4280.us.i.3 = select i1 %i.lp, double %i.lo, double %.4280.us.i.2
  br label %._crit_edge397.us.i

._crit_edge397.us.i:                              ; preds = %bb.s, %bb.r, %bb.q, %.preheader355.us.i.preheader.peel.newph
  %.4288.us.i.lcssa = phi i64 [ %.4288.us.i, %.preheader355.us.i.preheader.peel.newph ], [ %.4288.us.i.1, %bb.q ], [ %.4288.us.i.2, %bb.r ], [ %.4288.us.i.3, %bb.s ] ; 2 uses
  %.2283.us.i.lcssa = phi i64 [ %.2283.us.i, %.preheader355.us.i.preheader.peel.newph ], [ %.2283.us.i.1, %bb.q ], [ %.2283.us.i.2, %bb.r ], [ %.2283.us.i.3, %bb.s ]
  %.4280.us.i.lcssa = phi double [ %.4280.us.i, %.preheader355.us.i.preheader.peel.newph ], [ %.4280.us.i.1, %bb.q ], [ %.4280.us.i.2, %bb.r ], [ %.4280.us.i.3, %bb.s ]
  %i.lq = fcmp ogt double %.4280.us.i.lcssa, 1.000000e-09
  br i1 %i.lq, label %bb.p, label %.loopexit359.i

.lr.ph389.i:                                      ; preds = %.lr.ph389.i.prol.loopexit, %.lr.ph389.i
  %.0275387.i = phi i64 [ %i.mc, %.lr.ph389.i ], [ %.0275387.i.unr, %.lr.ph389.i.prol.loopexit ] ; 4 uses
  %.0276386.i = phi double [ %.1277.i.1, %.lr.ph389.i ], [ %.0276386.i.unr, %.lr.ph389.i.prol.loopexit ] ; 2 uses
  %.0284385.i = phi i64 [ %.1285.i.1, %.lr.ph389.i ], [ %.0284385.i.unr, %.lr.ph389.i.prol.loopexit ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0275387.i
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !117
  %gep384.i = getelementptr [32 x i8], ptr %invariant.gep383.i, i64 %i.ls
  %i.lt = load double, ptr %gep384.i, align 8, !tbaa !125
  %i.lu = tail call double @llvm.fabs.f64(double %i.lt) ; 2 uses
  %i.lv = fcmp ogt double %i.lu, %.0276386.i      ; 2 uses
  %.1285.i = select i1 %i.lv, i64 %.0275387.i, i64 %.0284385.i
  %.1277.i = select i1 %i.lv, double %i.lu, double %.0276386.i ; 2 uses
  %i.lw = add nuw i64 %.0275387.i, 1              ; 2 uses
end_hunk_0
