inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@fdp_tLayout:bb.a
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph223.i.preheader

.lr.ph223.i.preheader:                            ; preds = %bb.ap
  %i.hx = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %.sroa.8151.0.i, i64 1
  br label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.lr.ph223.i.preheader, %bb.as
  %.2221.i = phi ptr [ %i.iw, %bb.as ], [ %i.hw, %.lr.ph223.i.preheader ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.2221.i, i64 16 ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !31 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 163
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !69
  %.not176.i = icmp eq i8 %i.ic, 0
  br i1 %.not176.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph223.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 176
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !76 ; 2 uses
  %i.if = load <2 x double>, ptr %i.ie, align 8, !tbaa !21
  %i.ig = fsub <2 x double> %i.if, %i.hy
  store <2 x double> %i.ig, ptr %i.ie, align 8, !tbaa !21
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph223.i
  %i.ih = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.ii = tail call double @drand48() #6
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ii, double 2.000000e+00, double -1.000000e+00)
  %i.ik = fmul double %i.ih, %i.ij
  %i.il = load ptr, ptr %i.hz, align 8, !tbaa !31
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 176
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !76
  store double %i.ik, ptr %i.in, align 8, !tbaa !21
  %i.io = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.ip = tail call double @drand48() #6
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.ip, double 2.000000e+00, double -1.000000e+00)
  %i.ir = fmul double %i.io, %i.iq
  %i.is = load ptr, ptr %i.hz, align 8, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 176
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !76
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store double %i.ir, ptr %i.iv, align 8, !tbaa !21
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.iw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2221.i) #6 ; 2 uses
  %.not175.i = icmp eq ptr %i.iw, null
  br i1 %.not175.i, label %initPositions.exit, label %.lr.ph223.i, !llvm.loop !96

bb.at:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.at, %.lr.ph227.i
  %.3225.i = phi ptr [ %i.jn, %.lr.ph227.i ], [ %i.hw, %bb.at ] ; 2 uses
  %i.ix = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.iy = tail call double @drand48() #6
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iy, double 2.000000e+00, double -1.000000e+00)
  %i.ja = fmul double %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %.3225.i, i64 16 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !31
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 176
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !76
  store double %i.ja, ptr %i.je, align 8, !tbaa !21
  %i.jf = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.jg = tail call double @drand48() #6
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jg, double 2.000000e+00, double -1.000000e+00)
  %i.ji = fmul double %i.jf, %i.jh
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !31
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 176
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !76
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store double %i.ji, ptr %i.jm, align 8, !tbaa !21
  %i.jn = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.3225.i) #6 ; 2 uses
  %.not174.i = icmp eq ptr %i.jn, null
  br i1 %.not174.i, label %initPositions.exit, label %.lr.ph227.i, !llvm.loop !97

initPositions.exit:                               ; preds = %bb.an, %bb.as, %.lr.ph227.i, %._crit_edge203.i, %bb.ap, %bb.at
  %i.jo = load i32, ptr @parms, align 8, !tbaa !30
  %.not = icmp eq i32 %i.jo, 0
  br i1 %.not, label %.preheader, label %bb.au

.preheader:                                       ; preds = %initPositions.exit
  %i.jp = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66 ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph90.preheader, label %.loopexit75

.lr.ph90.preheader:                               ; preds = %.preheader
  %.pre112 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre114 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  br label %.lr.ph90

bb.au:                                            ; preds = %initPositions.exit
  %i.jr = tail call i32 @agnnodes(ptr noundef %0) #6
  %i.js = tail call ptr @mkGrid(i32 noundef %i.jr) #6 ; 5 uses
  %i.jt = tail call i32 @agnnodes(ptr noundef %0) #6
  tail call void @adjustGrid(ptr noundef %i.js, i32 noundef %i.jt) #6
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66 ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.au
  %.pre107 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre109 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  br label %.lr.ph

._crit_edge:                                      ; preds = %gAdjust.exit, %bb.au
  tail call void @delGrid(ptr noundef %i.js) #6
  br label %.loopexit75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %gAdjust.exit
  %i.jw = phi i32 [ %i.nk, %gAdjust.exit ], [ %i.ju, %.lr.ph.preheader ]
  %i.jx = phi i32 [ %i.nl, %gAdjust.exit ], [ %.pre109, %.lr.ph.preheader ] ; 3 uses
  %i.jy = phi double [ %i.nm, %gAdjust.exit ], [ %.pre107, %.lr.ph.preheader ] ; 2 uses
  %.03288 = phi i32 [ %i.nn, %gAdjust.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.jz = sub nsw i32 %i.jx, %.03288
  %i.ka = sitofp i32 %i.jz to double
  %i.kb = fmul double %i.jy, %i.ka
  %i.kc = sitofp i32 %i.jx to double
  %i.kd = fdiv double %i.kb, %i.kc                ; 2 uses
  %i.ke = fcmp ugt double %i.kd, 0.000000e+00
  br i1 %i.ke, label %bb.av, label %gAdjust.exit

bb.av:                                            ; preds = %.lr.ph
  tail call void @clearGrid(ptr noundef %i.js) #6
  %i.kf = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not42.i = icmp eq ptr %i.kf, null
  br i1 %.not42.i, label %._crit_edge.i40, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.av, %.lr.ph.i38
  %.03443.i = phi ptr [ %i.kx, %.lr.ph.i38 ], [ %i.kf, %bb.av ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.03443.i, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !31 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 152
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !86
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i8 0, i64 16, i1 false)
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !76
  %i.kn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8
  %i.ko = load <2 x double>, ptr %i.km, align 8, !tbaa !21
  %i.kp = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = fdiv <2 x double> %i.ko, %i.kp          ; 2 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 0
  %i.ks = tail call double @llvm.floor.f64(double %i.kr)
  %i.kt = fptosi double %i.ks to i32
  %i.ku = extractelement <2 x double> %i.kq, i64 1
  %i.kv = tail call double @llvm.floor.f64(double %i.ku)
  %i.kw = fptosi double %i.kv to i32
  tail call void @addGrid(ptr noundef %i.js, i32 noundef %i.kt, i32 noundef %i.kw, ptr noundef nonnull %.03443.i) #6
  %i.kx = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03443.i) #6 ; 2 uses
  %.not.i39 = icmp eq ptr %i.kx, null
  br i1 %.not.i39, label %._crit_edge.i40, label %.lr.ph.i38, !llvm.loop !98

._crit_edge.i40:                                  ; preds = %.lr.ph.i38, %bb.av
  %i.ky = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3749.i = icmp eq ptr %i.ky, null
  br i1 %.not3749.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge.i40, %._crit_edge48.i
  %.150.i = phi ptr [ %i.nj, %._crit_edge48.i ], [ %i.ky, %._crit_edge.i40 ] ; 4 uses
  %i.kz = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.150.i) #6 ; 2 uses
  %.not3844.i = icmp eq ptr %i.kz, null
  br i1 %.not3844.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph52.i
  %i.la = getelementptr inbounds nuw i8, ptr %.150.i, i64 16 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph47.i
  %.045.i = phi ptr [ %i.kz, %.lr.ph47.i ], [ %i.ni, %bb.ba ] ; 4 uses
  %i.lb = load i32, ptr %.045.i, align 8
  %i.lc = and i32 %i.lb, 3
  %i.ld = icmp eq i32 %i.lc, 2
  %i.le = select i1 %i.ld, i64 56, i64 -8
  %i.lf = getelementptr inbounds i8, ptr %.045.i, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !90 ; 2 uses
  %.not39.i = icmp eq ptr %.150.i, %i.lg
  br i1 %.not39.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !31
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 176
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !76
  %i.ll = load ptr, ptr %i.la, align 8, !tbaa !31
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 176
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !76
  %i.lo = load <2 x double>, ptr %i.lk, align 8, !tbaa !21
  %i.lp = load <2 x double>, ptr %i.ln, align 8, !tbaa !21
  %i.lq = fsub <2 x double> %i.lo, %i.lp          ; 4 uses
  %i.lr = extractelement <2 x double> %i.lq, i64 0 ; 2 uses
  %foldExtExtBinop189 = fmul <2 x double> %i.lq, %i.lq
  %i.ls = extractelement <2 x double> %foldExtExtBinop189, i64 1
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.lr, double %i.ls) ; 2 uses
  %i.lu = fcmp oeq double %i.lt, 0.000000e+00
  br i1 %i.lu, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %.lr.ph.i.i
  %i.lv = tail call i32 @rand() #6
  %i.lw = tail call i32 @rand() #6
  %2 = insertelement <2 x i32> poison, i32 %i.lv, i64 0
  %i.lx = insertelement <2 x i32> %2, i32 %i.lw, i64 1
  %3 = srem <2 x i32> %i.lx, splat (i32 10)
  %i.ly = sub nsw <2 x i32> splat (i32 5), %3
  %i.lz = sitofp <2 x i32> %i.ly to <2 x double>  ; 4 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0 ; 2 uses
  %foldExtExtBinop191 = fmul nnan <2 x double> %i.lz, %i.lz
  %i.mb = extractelement <2 x double> %foldExtExtBinop191, i64 1
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.ma, double %i.ma, double %i.mb) ; 2 uses
  %i.md = fcmp oeq double %i.mc, 0.000000e+00
  br i1 %i.md, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !99

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ax
  %.0.lcssa.i.i = phi double [ %i.lt, %bb.ax ], [ %i.mc, %.lr.ph.i.i ]
  %i.me = phi <2 x double> [ %i.lq, %bb.ax ], [ %i.lz, %.lr.ph.i.i ] ; 2 uses
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i) ; 3 uses
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i.i = icmp eq i32 %i.mf, 0
  %i.mg = getelementptr inbounds nuw i8, ptr %.045.i, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !31 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 176
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !101 ; 2 uses
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 184
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !107
  %i.mm = fsub double %sqrt.i.i, %i.ml
  %i.mn = fmul double %i.mj, %i.mm
  %i.mo = fdiv double %i.mn, %sqrt.i.i
  br label %applyAttr.exit.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.mp = fmul double %sqrt.i.i, %i.mj
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mh, i64 184
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !107
  %i.ms = fdiv double %i.mp, %i.mr
  br label %applyAttr.exit.i

applyAttr.exit.i:                                 ; preds = %bb.az, %bb.ay
  %.034.i.i = phi double [ %i.mo, %bb.ay ], [ %i.ms, %bb.az ]
  %i.mt = load ptr, ptr %i.lh, align 8, !tbaa !31
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 152
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !86
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16 ; 2 uses
  %i.mx = fneg <2 x double> %i.me
  %i.my = load <2 x double>, ptr %i.mw, align 8, !tbaa !21
  %i.mz = insertelement <2 x double> poison, double %.034.i.i, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.na, <2 x double> %i.my)
  store <2 x double> %i.nb, ptr %i.mw, align 8, !tbaa !21
  %i.nc = load ptr, ptr %i.la, align 8, !tbaa !31
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 152
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !86
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  %i.ng = load <2 x double>, ptr %i.nf, align 8, !tbaa !21
  %i.nh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.na, <2 x double> %i.ng)
  store <2 x double> %i.nh, ptr %i.nf, align 8, !tbaa !21
  br label %bb.ba

bb.ba:                                            ; preds = %applyAttr.exit.i, %bb.aw
  %i.ni = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.045.i) #6 ; 2 uses
  %.not38.i = icmp eq ptr %i.ni, null
  br i1 %.not38.i, label %._crit_edge48.i, label %bb.aw, !llvm.loop !108

._crit_edge48.i:                                  ; preds = %bb.ba, %.lr.ph52.i
  %i.nj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.150.i) #6 ; 2 uses
  %.not37.i = icmp eq ptr %i.nj, null
  br i1 %.not37.i, label %._crit_edge53.i, label %.lr.ph52.i, !llvm.loop !109

._crit_edge53.i:                                  ; preds = %._crit_edge48.i, %._crit_edge.i40
  tail call void @walkGrid(ptr noundef %i.js, ptr noundef nonnull @gridRepulse) #6
  tail call fastcc void @updatePos(ptr noundef %0, double noundef %i.kd, ptr noundef readnone %i.e)
  %.pre = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre108 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  %.pre110 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66
  br label %gAdjust.exit

gAdjust.exit:                                     ; preds = %.lr.ph, %._crit_edge53.i
  %i.nk = phi i32 [ %i.jw, %.lr.ph ], [ %.pre110, %._crit_edge53.i ] ; 2 uses
  %i.nl = phi i32 [ %i.jx, %.lr.ph ], [ %.pre108, %._crit_edge53.i ]
  %i.nm = phi double [ %i.jy, %.lr.ph ], [ %.pre, %._crit_edge53.i ]
  %i.nn = add nuw nsw i32 %.03288, 1              ; 2 uses
  %i.no = icmp slt i32 %i.nn, %i.nk
  br i1 %i.no, label %.lr.ph, label %._crit_edge, !llvm.loop !110

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %adjust.exit
  %i.np = phi i32 [ %i.td, %adjust.exit ], [ %i.jp, %.lr.ph90.preheader ]
  %i.nq = phi i32 [ %i.te, %adjust.exit ], [ %.pre114, %.lr.ph90.preheader ] ; 3 uses
  %i.nr = phi double [ %i.tf, %adjust.exit ], [ %.pre112, %.lr.ph90.preheader ] ; 2 uses
  %.03389 = phi i32 [ %i.tg, %adjust.exit ], [ 0, %.lr.ph90.preheader ] ; 2 uses
  %i.ns = sub nsw i32 %i.nq, %.03389
  %i.nt = sitofp i32 %i.ns to double
  %i.nu = fmul double %i.nr, %i.nt
  %i.nv = sitofp i32 %i.nq to double
  %i.nw = fdiv double %i.nu, %i.nv                ; 2 uses
  %i.nx = fcmp ugt double %i.nw, 0.000000e+00
  br i1 %i.nx, label %bb.bb, label %adjust.exit

bb.bb:                                            ; preds = %.lr.ph90
  %i.ny = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not51.i = icmp eq ptr %i.ny, null
  br i1 %.not51.i, label %._crit_edge.i43, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.bb, %.lr.ph.i41
  %.03652.i = phi ptr [ %i.oe, %.lr.ph.i41 ], [ %i.ny, %bb.bb ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.03652.i, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !31
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 152
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !86
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.od, i8 0, i64 16, i1 false)
  %i.oe = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03652.i) #6 ; 2 uses
  %.not.i42 = icmp eq ptr %i.oe, null
  br i1 %.not.i42, label %._crit_edge.i43, label %.lr.ph.i41, !llvm.loop !111

._crit_edge.i43:                                  ; preds = %.lr.ph.i41, %bb.bb
  %i.of = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3963.i = icmp eq ptr %i.of, null
  br i1 %.not3963.i, label %._crit_edge67.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %._crit_edge.i43, %._crit_edge62.i
  %.164.i = phi ptr [ %i.tc, %._crit_edge62.i ], [ %i.of, %._crit_edge.i43 ] ; 6 uses
  %i.og = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not4053.i = icmp eq ptr %i.og, null
  br i1 %.not4053.i, label %._crit_edge57.i, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph66.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.164.i, i64 16 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %doRep.exit.i, %.lr.ph56.i
  %.03554.i = phi ptr [ %i.og, %.lr.ph56.i ], [ %i.qr, %doRep.exit.i ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.03554.i, i64 16 ; 3 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !31
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 176
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !76
  %i.om = load ptr, ptr %i.oh, align 8, !tbaa !31
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 176
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !76
  %i.op = load <2 x double>, ptr %i.ol, align 8, !tbaa !21
  %i.oq = load <2 x double>, ptr %i.oo, align 8, !tbaa !21
  %i.or = fsub <2 x double> %i.op, %i.oq          ; 3 uses
  %i.os = extractelement <2 x double> %i.or, i64 1
  %i.ot = extractelement <2 x double> %i.or, i64 0
  %i.ou = tail call double @hypot(double noundef %i.ot, double noundef %i.os) #6 ; 2 uses
  %i.ov = fcmp ule double %i.ou, 0.000000e+00
  br i1 %i.ov, label %.lr.ph.i45.i, label %._crit_edge.i43.i

.lr.ph.i45.i:                                     ; preds = %bb.bc, %.lr.ph.i45.i
  %i.ow = tail call i32 @rand() #6
  %i.ox = tail call i32 @rand() #6
  %4 = insertelement <2 x i32> poison, i32 %i.ow, i64 0
  %i.oy = insertelement <2 x i32> %4, i32 %i.ox, i64 1
  %5 = srem <2 x i32> %i.oy, splat (i32 10)
  %i.oz = sub nsw <2 x i32> splat (i32 5), %5
  %i.pa = sitofp <2 x i32> %i.oz to <2 x double>  ; 3 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 1
  %i.pc = extractelement <2 x double> %i.pa, i64 0
  %i.pd = tail call double @hypot(double noundef %i.pc, double noundef %i.pb) #6 ; 2 uses
  %i.pe = fcmp ule double %i.pd, 0.000000e+00
  br i1 %i.pe, label %.lr.ph.i45.i, label %._crit_edge.i43.i, !llvm.loop !112

._crit_edge.i43.i:                                ; preds = %.lr.ph.i45.i, %bb.bc
  %.026.lcssa.i.i = phi double [ %i.ou, %bb.bc ], [ %i.pd, %.lr.ph.i45.i ] ; 4 uses
  %i.pf = phi <2 x double> [ %i.or, %bb.bc ], [ %i.pa, %.lr.ph.i45.i ] ; 2 uses
  %i.pg = load ptr, ptr @fdp_parms, align 8, !tbaa !8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !113
  %i.pj = fcmp ogt double %.026.lcssa.i.i, %i.pi
  br i1 %i.pj, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i43.i
  %i.pk = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i44.i = icmp eq i32 %i.pk, 0
  %i.pl = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23 ; 2 uses
  %i.pm = fmul double %i.pl, %i.pl                ; 2 uses
  %i.pn = fmul nnan double %.026.lcssa.i.i, %.026.lcssa.i.i ; 2 uses
  br i1 %.not.i44.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.po = fmul double %.026.lcssa.i.i, %i.pn
  %i.pp = fdiv double %i.pm, %i.po
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.pq = fdiv double %i.pm, %i.pn
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i43.i
  %.0.i.i = phi double [ %i.pq, %bb.bf ], [ %i.pp, %bb.be ], [ 0.000000e+00, %._crit_edge.i43.i ] ; 5 uses
  %i.pr = load ptr, ptr %i.oh, align 8, !tbaa !31 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 152
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !86 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !87
  %.not29.i.i = icmp eq ptr %i.pv, null
  br i1 %.not29.i.i, label %bb.bh, label %.doRep.exit_crit_edge.i

.doRep.exit_crit_edge.i:                          ; preds = %bb.bg
  %.pre.i44 = load ptr, ptr %i.oi, align 8, !tbaa !31
  br label %doRep.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 336
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !89
  %.not30.i.i = icmp eq ptr %i.px, null
  %.pre73.i = load ptr, ptr %i.oi, align 8, !tbaa !31 ; 6 uses
  br i1 %.not30.i.i, label %bb.bi, label %doRep.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.py = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 152
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !86
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !87
  %.not31.i.i = icmp eq ptr %i.qb, null
  br i1 %.not31.i.i, label %bb.bj, label %doRep.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.qc = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 336
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !89
  %.not32.i.i = icmp eq ptr %i.qd, null
  br i1 %.not32.i.i, label %bb.bk, label %doRep.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.qe = fmul double %.0.i.i, 1.000000e+01
  br label %doRep.exit.i

doRep.exit.i:                                     ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.doRep.exit_crit_edge.i
  %i.qf = phi ptr [ %.pre.i44, %.doRep.exit_crit_edge.i ], [ %.pre73.i, %bb.bh ], [ %.pre73.i, %bb.bi ], [ %.pre73.i, %bb.bj ], [ %.pre73.i, %bb.bk ]
  %.1.i.i = phi double [ %.0.i.i, %.doRep.exit_crit_edge.i ], [ %.0.i.i, %bb.bh ], [ %.0.i.i, %bb.bi ], [ %.0.i.i, %bb.bj ], [ %i.qe, %bb.bk ]
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 152
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !86
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16 ; 2 uses
  %i.qj = load <2 x double>, ptr %i.qi, align 8, !tbaa !21
  %i.qk = insertelement <2 x double> poison, double %.1.i.i, i64 0
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.ql, <2 x double> %i.qj)
  store <2 x double> %i.qm, ptr %i.qi, align 8, !tbaa !21
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  %i.qo = fneg <2 x double> %i.pf
  %i.qp = load <2 x double>, ptr %i.qn, align 8, !tbaa !21
  %i.qq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.ql, <2 x double> %i.qp)
  store <2 x double> %i.qq, ptr %i.qn, align 8, !tbaa !21
  %i.qr = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03554.i) #6 ; 2 uses
  %.not40.i = icmp eq ptr %i.qr, null
  br i1 %.not40.i, label %._crit_edge57.i, label %bb.bc, !llvm.loop !114

._crit_edge57.i:                                  ; preds = %doRep.exit.i, %.lr.ph66.i
  %i.qs = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not4158.i = icmp eq ptr %i.qs, null
  br i1 %.not4158.i, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %._crit_edge57.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.164.i, i64 16 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph61.i
  %.059.i = phi ptr [ %i.qs, %.lr.ph61.i ], [ %i.tb, %bb.bp ] ; 4 uses
  %i.qu = load i32, ptr %.059.i, align 8
  %i.qv = and i32 %i.qu, 3
  %i.qw = icmp eq i32 %i.qv, 2
  %i.qx = select i1 %i.qw, i64 56, i64 -8
  %i.qy = getelementptr inbounds i8, ptr %.059.i, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !90 ; 2 uses
  %.not42.i45 = icmp eq ptr %.164.i, %i.qz
  br i1 %.not42.i45, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !31
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 176
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !76
  %i.re = load ptr, ptr %i.qt, align 8, !tbaa !31
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 176
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !76
  %i.rh = load <2 x double>, ptr %i.rd, align 8, !tbaa !21
  %i.ri = load <2 x double>, ptr %i.rg, align 8, !tbaa !21
  %i.rj = fsub <2 x double> %i.rh, %i.ri          ; 4 uses
  %i.rk = extractelement <2 x double> %i.rj, i64 0 ; 2 uses
  %foldExtExtBinop193 = fmul <2 x double> %i.rj, %i.rj
  %i.rl = extractelement <2 x double> %foldExtExtBinop193, i64 1
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.rk, double %i.rk, double %i.rl) ; 2 uses
  %i.rn = fcmp oeq double %i.rm, 0.000000e+00
  br i1 %i.rn, label %.lr.ph.i.i55, label %._crit_edge.i.i46

.lr.ph.i.i55:                                     ; preds = %bb.bm, %.lr.ph.i.i55
  %i.ro = tail call i32 @rand() #6
  %i.rp = tail call i32 @rand() #6
  %6 = insertelement <2 x i32> poison, i32 %i.ro, i64 0
  %i.rq = insertelement <2 x i32> %6, i32 %i.rp, i64 1
  %7 = srem <2 x i32> %i.rq, splat (i32 10)
  %i.rr = sub nsw <2 x i32> splat (i32 5), %7
  %i.rs = sitofp <2 x i32> %i.rr to <2 x double>  ; 4 uses
  %i.rt = extractelement <2 x double> %i.rs, i64 0 ; 2 uses
  %foldExtExtBinop195 = fmul nnan <2 x double> %i.rs, %i.rs
  %i.ru = extractelement <2 x double> %foldExtExtBinop195, i64 1
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.rt, double %i.rt, double %i.ru) ; 2 uses
  %i.rw = fcmp oeq double %i.rv, 0.000000e+00
  br i1 %i.rw, label %.lr.ph.i.i55, label %._crit_edge.i.i46, !llvm.loop !99

._crit_edge.i.i46:                                ; preds = %.lr.ph.i.i55, %bb.bm
  %.0.lcssa.i.i49 = phi double [ %i.rm, %bb.bm ], [ %i.rv, %.lr.ph.i.i55 ]
  %i.rx = phi <2 x double> [ %i.rj, %bb.bm ], [ %i.rs, %.lr.ph.i.i55 ] ; 2 uses
  %sqrt.i.i50 = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i49) ; 3 uses
  %i.ry = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i.i51 = icmp eq i32 %i.ry, 0
  %i.rz = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !31 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 176
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !101 ; 2 uses
  br i1 %.not.i.i51, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i.i46
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 184
  %i.se = load double, ptr %i.sd, align 8, !tbaa !107
  %i.sf = fsub double %sqrt.i.i50, %i.se
  %i.sg = fmul double %i.sc, %i.sf
  %i.sh = fdiv double %i.sg, %sqrt.i.i50
  br label %applyAttr.exit.i52

bb.bo:                                            ; preds = %._crit_edge.i.i46
  %i.si = fmul double %sqrt.i.i50, %i.sc
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 184
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !107
  %i.sl = fdiv double %i.si, %i.sk
  br label %applyAttr.exit.i52

applyAttr.exit.i52:                               ; preds = %bb.bo, %bb.bn
  %.034.i.i53 = phi double [ %i.sh, %bb.bn ], [ %i.sl, %bb.bo ]
  %i.sm = load ptr, ptr %i.ra, align 8, !tbaa !31
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 152
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !86
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %i.sq = fneg <2 x double> %i.rx
  %i.sr = load <2 x double>, ptr %i.sp, align 8, !tbaa !21
  %i.ss = insertelement <2 x double> poison, double %.034.i.i53, i64 0
  %i.st = shufflevector <2 x double> %i.ss, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.su = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sq, <2 x double> %i.st, <2 x double> %i.sr)
  store <2 x double> %i.su, ptr %i.sp, align 8, !tbaa !21
  %i.sv = load ptr, ptr %i.qt, align 8, !tbaa !31
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 152
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !86
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 2 uses
  %i.sz = load <2 x double>, ptr %i.sy, align 8, !tbaa !21
  %i.ta = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> %i.st, <2 x double> %i.sz)
  store <2 x double> %i.ta, ptr %i.sy, align 8, !tbaa !21
  br label %bb.bp

bb.bp:                                            ; preds = %applyAttr.exit.i52, %bb.bl
  %i.tb = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.059.i) #6 ; 2 uses
  %.not41.i = icmp eq ptr %i.tb, null
  br i1 %.not41.i, label %._crit_edge62.i, label %bb.bl, !llvm.loop !115

._crit_edge62.i:                                  ; preds = %bb.bp, %._crit_edge57.i
  %i.tc = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not39.i54 = icmp eq ptr %i.tc, null
  br i1 %.not39.i54, label %._crit_edge67.i, label %.lr.ph66.i, !llvm.loop !116

._crit_edge67.i:                                  ; preds = %._crit_edge62.i, %._crit_edge.i43
  tail call fastcc void @updatePos(ptr noundef %0, double noundef %i.nw, ptr noundef readnone %i.e)
  %.pre111 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre113 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  %.pre115 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66
  br label %adjust.exit

adjust.exit:                                      ; preds = %.lr.ph90, %._crit_edge67.i
  %i.td = phi i32 [ %i.np, %.lr.ph90 ], [ %.pre115, %._crit_edge67.i ] ; 2 uses
  %i.te = phi i32 [ %i.nq, %.lr.ph90 ], [ %.pre113, %._crit_edge67.i ]
  %i.tf = phi double [ %i.nr, %.lr.ph90 ], [ %.pre111, %._crit_edge67.i ]
  %i.tg = add nuw nsw i32 %.03389, 1              ; 2 uses
  %i.th = icmp slt i32 %i.tg, %i.td
  br i1 %i.th, label %.lr.ph90, label %.loopexit75, !llvm.loop !117

.loopexit75:                                      ; preds = %adjust.exit, %.preheader, %._crit_edge
  %i.ti = fcmp une double %.sroa.0147.0.i, 0.000000e+00
  %i.tj = fcmp une double %.sroa.8151.0.i, 0.000000e+00
  %or.cond = select i1 %i.ti, i1 true, i1 %i.tj
  br i1 %or.cond, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %.loopexit75
  %i.tk = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3491 = icmp eq ptr %i.tk, null
  br i1 %.not3491, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %bb.bq
  %i.tl = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %i.tm = insertelement <2 x double> %i.tl, double %.sroa.8151.0.i, i64 1
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %.092 = phi ptr [ %i.tt, %.lr.ph94 ], [ %i.tk, %.lr.ph94.preheader ] ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.092, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !31
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 176
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !76 ; 2 uses
  %i.tr = load <2 x double>, ptr %i.tq, align 8, !tbaa !21
  %i.ts = fadd <2 x double> %i.tm, %i.tr
  store <2 x double> %i.ts, ptr %i.tq, align 8, !tbaa !21
  %i.tt = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.092) #6 ; 2 uses
  %.not34 = icmp eq ptr %i.tt, null
  br i1 %.not34, label %.loopexit, label %.lr.ph94, !llvm.loop !118

.loopexit:                                        ; preds = %.lr.ph94, %bb.bq, %.loopexit75
  br i1 %i.g, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.loopexit
  store double -1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit
  ret void
}

declare ptr @mkGrid(i32 noundef) local_unnamed_addr #1

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #1

declare void @adjustGrid(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @delGrid(ptr noundef) local_unnamed_addr #1

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #1

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @srand48(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @drand48() local_unnamed_addr #3

declare void @clearGrid(ptr noundef) local_unnamed_addr #1

declare void @addGrid(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @walkGrid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @gridRepulse(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 11 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !123    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !124  ; 4 uses
  %.not53 = icmp eq ptr %i.b, null
  br i1 %.not53, label %._crit_edge55, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.04654 = phi ptr [ %i.bu, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.l
  %.052 = phi ptr [ %i.b, %.preheader ], [ %i.bs, %bb.l ] ; 3 uses
  %.not48 = icmp eq ptr %.04654, %.052
  br i1 %.not48, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.04654, align 8, !tbaa !125
  %i.g = load ptr, ptr %.052, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.p = load <2 x double>, ptr %i.k, align 8, !tbaa !21
  %i.q = load <2 x double>, ptr %i.o, align 8, !tbaa !21
  %i.r = fsub <2 x double> %i.p, %i.q             ; 3 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = extractelement <2 x double> %i.r, i64 0
  %i.u = tail call double @hypot(double noundef %i.t, double noundef %i.s) #6 ; 2 uses
  %i.v = fcmp ule double %i.u, 0.000000e+00
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.w = tail call i32 @rand() #6
  %i.x = tail call i32 @rand() #6
  %2 = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.y = insertelement <2 x i32> %2, i32 %i.x, i64 1
  %3 = srem <2 x i32> %i.y, splat (i32 10)
  %i.z = sub nsw <2 x i32> splat (i32 5), %3
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>   ; 3 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1
  %i.ac = extractelement <2 x double> %i.aa, i64 0
  %i.ad = tail call double @hypot(double noundef %i.ac, double noundef %i.ab) #6 ; 2 uses
  %i.ae = fcmp ule double %i.ad, 0.000000e+00
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.026.lcssa.i = phi double [ %i.u, %bb.c ], [ %i.ad, %.lr.ph.i ] ; 4 uses
  %i.af = phi <2 x double> [ %i.r, %bb.c ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.ag = load ptr, ptr @fdp_parms, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !113
  %i.aj = fcmp ogt double %.026.lcssa.i, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i = icmp eq i32 %i.ak, 0
  %i.al = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23 ; 2 uses
  %i.am = fmul double %i.al, %i.al                ; 2 uses
  %i.an = fmul nnan double %.026.lcssa.i, %.026.lcssa.i ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = fmul double %.026.lcssa.i, %i.an
  %i.ap = fdiv double %i.am, %i.ao
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aq = fdiv double %i.am, %i.an
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.i = phi double [ %i.aq, %bb.f ], [ %i.ap, %bb.e ], [ 0.000000e+00, %._crit_edge.i ] ; 5 uses
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !31  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !87
  %.not29.i = icmp eq ptr %i.av, null
  br i1 %.not29.i, label %bb.h, label %.doRep.exit_crit_edge

.doRep.exit_crit_edge:                            ; preds = %bb.g
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !31
  br label %doRep.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 336
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89
  %.not30.i = icmp eq ptr %i.ax, null
  %.pre58 = load ptr, ptr %i.h, align 8, !tbaa !31 ; 6 uses
  br i1 %.not30.i, label %bb.i, label %doRep.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre58, i64 152
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !87
  %.not31.i = icmp eq ptr %i.bb, null
  br i1 %.not31.i, label %bb.j, label %doRep.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre58, i64 336
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !89
  %.not32.i = icmp eq ptr %i.bd, null
  br i1 %.not32.i, label %bb.k, label %doRep.exit

bb.k:                                             ; preds = %bb.j
  %i.be = fmul double %.0.i, 1.000000e+01
  br label %doRep.exit

doRep.exit:                                       ; preds = %.doRep.exit_crit_edge, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bf = phi ptr [ %.pre, %.doRep.exit_crit_edge ], [ %.pre58, %bb.h ], [ %.pre58, %bb.i ], [ %.pre58, %bb.j ], [ %.pre58, %bb.k ]
  %.1.i = phi double [ %.0.i, %.doRep.exit_crit_edge ], [ %.0.i, %bb.h ], [ %.0.i, %bb.i ], [ %.0.i, %bb.j ], [ %i.be, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !86
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bi, align 8, !tbaa !21
  %i.bk = insertelement <2 x double> poison, double %.1.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.bl, <2 x double> %i.bj)
  store <2 x double> %i.bm, ptr %i.bi, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.bo = fneg <2 x double> %i.af
  %i.bp = load <2 x double>, ptr %i.bn, align 8, !tbaa !21
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bl, <2 x double> %i.bp)
  store <2 x double> %i.bq, ptr %i.bn, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %doRep.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !127 ; 2 uses
  %.not47 = icmp eq ptr %i.bs, null
  br i1 %.not47, label %._crit_edge, label %bb.b, !llvm.loop !128

._crit_edge:                                      ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.04654, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !127 ; 2 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %._crit_edge55, label %.preheader, !llvm.loop !129

._crit_edge55:                                    ; preds = %._crit_edge, %bb.a
  %i.bv = add nsw i32 %i.c, -1                    ; 3 uses
  %i.bw = add nsw i32 %i.e, -1                    ; 3 uses
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.bv, i32 noundef %i.bw, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.bv, i32 noundef %i.e, ptr noundef %i.b)
  %i.bx = add nsw i32 %i.e, 1                     ; 3 uses
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.c, i32 noundef %i.bw, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.c, i32 noundef %i.bx, ptr noundef %i.b)
  %i.by = add nsw i32 %i.c, 1                     ; 3 uses
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.by, i32 noundef %i.bw, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.by, i32 noundef %i.e, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.by, i32 noundef %i.bx, ptr noundef %i.b)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @updatePos(ptr noundef %0, double noundef %1, ptr nofree noundef readnone captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = fmul double %1, %1                       ; 2 uses
  %i.b = tail call ptr @agfstnode(ptr noundef %0) #6 ; 3 uses
  %.not64 = icmp eq ptr %i.b, null
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.065.us = phi ptr [ %i.ac, %bb.f ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.065.us, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 163
  %i.f = load i8, ptr %i.e, align 1, !tbaa !69
  %i.g = and i8 %i.f, 2
  %.not59.us = icmp eq i8 %i.g, 0
  br i1 %.not59.us, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !21 ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.k, %i.k
  %i.l = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.m = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.l) ; 2 uses
  %i.o = fcmp olt double %i.n, %i.a
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %sqrt.us = tail call double @llvm.sqrt.f64(double %i.n)
  %i.p = fdiv double %1, %sqrt.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !21
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.u, <2 x double> %i.s)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76   ; 2 uses
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !21
  %i.z = fadd <2 x double> %i.k, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi ptr [ %i.x, %bb.d ], [ %i.r, %bb.c ]
  %i.ab = phi <2 x double> [ %i.z, %bb.d ], [ %i.v, %bb.c ]
  store <2 x double> %i.ab, ptr %i.aa, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %i.ac = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.065.us) #6 ; 2 uses
  %.not.us = icmp eq ptr %i.ac, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !130

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %.065 = phi ptr [ %i.cb, %bb.p ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.065, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 163
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69
  %i.ah = and i8 %i.ag, 2
  %.not59 = icmp eq i8 %i.ah, 0
  br i1 %.not59, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.lr.ph.split
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load <2 x double>, ptr %i.ak, align 8, !tbaa !21 ; 5 uses
  %foldExtExtBinop75 = fmul <2 x double> %i.al, %i.al
  %i.am = extractelement <2 x double> %foldExtExtBinop75, i64 1
  %i.an = extractelement <2 x double> %i.al, i64 0 ; 2 uses
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.am) ; 2 uses
  %i.ap = fcmp olt double %i.ao, %i.a
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !76 ; 2 uses
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !21
  %i.at = fadd <2 x double> %i.al, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ao)
  %i.au = fdiv double %1, %sqrt
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !21
  %i.ay = insertelement <2 x double> poison, double %i.au, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.az, <2 x double> %i.ax)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = phi ptr [ %i.ar, %bb.h ], [ %i.aw, %bb.i ] ; 4 uses
  %i.bc = phi <2 x double> [ %i.at, %bb.h ], [ %i.ba, %bb.i ] ; 6 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc
  %i.be = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !21 ; 2 uses
  %i.bf = fmul <2 x double> %i.be, %i.be
  %i.bg = fdiv <2 x double> %i.bd, %i.bf          ; 2 uses
  %shift = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fadd <2 x double> %i.bg, %shift
  %i.bh = extractelement <2 x double> %foldExtExtBinop77, i64 0
  %sqrt63 = tail call double @llvm.sqrt.f64(double %i.bh) ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  %.not61 = icmp eq ptr %i.bj, null
  br i1 %.not61, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 336
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !89
  %.not62 = icmp eq ptr %i.bl, null
  br i1 %.not62, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = insertelement <2 x double> poison, double %sqrt63, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x double> %i.bc, %i.bn          ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  store double %i.bp, ptr %i.bb, align 8, !tbaa !21
  %i.bq = extractelement <2 x double> %i.bo, i64 1
  br label %.sink.split

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.br = fcmp ult double %sqrt63, 1.000000e+00
  br i1 %i.br, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = fmul <2 x double> %i.bc, splat (double f0x3FEE666666666666)
  %i.bt = insertelement <2 x double> poison, double %sqrt63, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fdiv <2 x double> %i.bs, %i.bu          ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0
  store double %i.bw, ptr %i.bb, align 8, !tbaa !21
  %i.bx = extractelement <2 x double> %i.bv, i64 1
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.by = extractelement <2 x double> %i.bc, i64 0
  store double %i.by, ptr %i.bb, align 8, !tbaa !21
  %i.bz = extractelement <2 x double> %i.bc, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.o, %bb.n
  %.sink = phi double [ %i.bx, %bb.n ], [ %i.bz, %bb.o ], [ %i.bq, %bb.l ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store double %.sink, ptr %i.ca, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %.lr.ph.split
  %i.cb = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.065) #6 ; 2 uses
  %.not = icmp eq ptr %i.cb, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.p, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @doNeighbor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @findGrid(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6 ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.023.in29 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %.023.in29, align 8, !tbaa !131 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %.0.us = phi ptr [ %i.g, %.preheader.split.us ], [ %3, %.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0.us, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127  ; 2 uses
  %.old1.not.us = icmp eq ptr %i.g, null
  br i1 %.old1.not.us, label %.loopexit, label %.preheader.split.us

.preheader.splitthread-pre-split:                 ; preds = %._crit_edge
  %.02330.pr = load ptr, ptr %.023.in29, align 8, !tbaa !131
  br label %.preheader.split

.preheader.split:                                 ; preds = %.preheader, %.preheader.splitthread-pre-split
  %.02330 = phi ptr [ %.02330.pr, %.preheader.splitthread-pre-split ], [ %i.d, %.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.by, %.preheader.splitthread-pre-split ], [ %3, %.preheader ] ; 2 uses
  %.not31 = icmp eq ptr %.02330, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split
  %i.h = load ptr, ptr %.0, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !31
  %.pre37 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.j = phi double [ %.pre37, %.lr.ph ], [ %i.bv, %bb.l ] ; 2 uses
  %i.k = phi ptr [ %.pre, %.lr.ph ], [ %i.bw, %bb.l ] ; 2 uses
  %.02332 = phi ptr [ %.02330, %.lr.ph ], [ %.023, %bb.l ] ; 2 uses
  %i.l = load ptr, ptr %.02332, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.s = load <2 x double>, ptr %i.p, align 8, !tbaa !21
  %i.t = load <2 x double>, ptr %i.r, align 8, !tbaa !21
  %i.u = fsub <2 x double> %i.s, %i.t             ; 3 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = extractelement <2 x double> %i.u, i64 0
  %i.x = tail call double @hypot(double noundef %i.w, double noundef %i.v) #6 ; 3 uses
  %i.y = fcmp olt double %i.x, %i.j
  br i1 %i.y, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.z = fcmp ule double %i.x, 0.000000e+00
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.aa = tail call i32 @rand() #6
  %i.ab = tail call i32 @rand() #6
  %4 = insertelement <2 x i32> poison, i32 %i.aa, i64 0
  %i.ac = insertelement <2 x i32> %4, i32 %i.ab, i64 1
  %5 = srem <2 x i32> %i.ac, splat (i32 10)
  %i.ad = sub nsw <2 x i32> splat (i32 5), %5
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>  ; 3 uses
  %i.af = extractelement <2 x double> %i.ae, i64 1
  %i.ag = extractelement <2 x double> %i.ae, i64 0
  %i.ah = tail call double @hypot(double noundef %i.ag, double noundef %i.af) #6 ; 2 uses
  %i.ai = fcmp ule double %i.ah, 0.000000e+00
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.026.lcssa.i = phi double [ %i.x, %bb.c ], [ %i.ah, %.lr.ph.i ] ; 4 uses
  %i.aj = phi <2 x double> [ %i.u, %bb.c ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.ak = load ptr, ptr @fdp_parms, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load double, ptr %i.al, align 8, !tbaa !113
  %i.an = fcmp ogt double %.026.lcssa.i, %i.am
  br i1 %i.an, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i = icmp eq i32 %i.ao, 0
  %i.ap = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23 ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap                ; 2 uses
  %i.ar = fmul nnan double %.026.lcssa.i, %.026.lcssa.i ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = fmul double %.026.lcssa.i, %i.ar
  %i.at = fdiv double %i.aq, %i.as
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.au = fdiv double %i.aq, %i.ar
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.i = phi double [ %i.au, %bb.f ], [ %i.at, %bb.e ], [ 0.000000e+00, %._crit_edge.i ] ; 5 uses
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !31  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !86 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !87
  %.not29.i = icmp eq ptr %i.az, null
  br i1 %.not29.i, label %bb.h, label %.doRep.exit_crit_edge

.doRep.exit_crit_edge:                            ; preds = %bb.g
  %.pre38 = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %doRep.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !89
  %.not30.i = icmp eq ptr %i.bb, null
  %.pre39 = load ptr, ptr %i.m, align 8, !tbaa !31 ; 6 uses
  br i1 %.not30.i, label %bb.i, label %doRep.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre39, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87
  %.not31.i = icmp eq ptr %i.bf, null
  br i1 %.not31.i, label %bb.j, label %doRep.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre39, i64 336
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !89
  %.not32.i = icmp eq ptr %i.bh, null
  br i1 %.not32.i, label %bb.k, label %doRep.exit

bb.k:                                             ; preds = %bb.j
  %i.bi = fmul double %.0.i, 1.000000e+01
  br label %doRep.exit

doRep.exit:                                       ; preds = %.doRep.exit_crit_edge, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bj = phi ptr [ %.pre38, %.doRep.exit_crit_edge ], [ %.pre39, %bb.h ], [ %.pre39, %bb.i ], [ %.pre39, %bb.j ], [ %.pre39, %bb.k ]
  %.1.i = phi double [ %.0.i, %.doRep.exit_crit_edge ], [ %.0.i, %bb.h ], [ %.0.i, %bb.i ], [ %.0.i, %bb.j ], [ %i.bi, %bb.k ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bm, align 8, !tbaa !21
  %i.bo = insertelement <2 x double> poison, double %.1.i, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.bp, <2 x double> %i.bn)
  store <2 x double> %i.bq, ptr %i.bm, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.bs = fneg <2 x double> %i.aj
  %i.bt = load <2 x double>, ptr %i.br, align 8, !tbaa !21
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bp, <2 x double> %i.bt)
  store <2 x double> %i.bu, ptr %i.br, align 8, !tbaa !21
  %.pre36 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %doRep.exit, %bb.b
  %i.bv = phi double [ %.pre36, %doRep.exit ], [ %i.j, %bb.b ]
  %i.bw = phi ptr [ %i.av, %doRep.exit ], [ %i.k, %bb.b ]
  %.023.in = getelementptr inbounds nuw i8, ptr %.02332, i64 8
  %.023 = load ptr, ptr %.023.in, align 8, !tbaa !131 ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.l, %.preheader.split
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !127 ; 2 uses
  %.old1.not = icmp eq ptr %i.by, null
  br i1 %.old1.not, label %.loopexit, label %.preheader.splitthread-pre-split, !llvm.loop !133

.loopexit:                                        ; preds = %._crit_edge, %.preheader.split.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #2

declare ptr @findGrid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS10fdpParms_s", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !5, i64 8}
!13 = !{!"fdpParms_s", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!14 = !{!"double", !6, i64 0}
!15 = !{!16, !5, i64 16}
!16 = !{!"", !5, i64 0, !5, i64 4, !17, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !5, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !5, i64 96, !5, i64 100}
!17 = !{!"long", !6, i64 0}
!18 = !{!13, !5, i64 12}
!19 = !{!16, !5, i64 24}
!20 = !{!16, !14, i64 72}
!21 = !{!14, !14, i64 0}
!22 = !{!16, !5, i64 20}
!23 = !{!16, !14, i64 48}
!24 = !{!13, !14, i64 32}
!25 = !{!13, !14, i64 40}
!26 = !{!16, !14, i64 56}
!27 = !{!16, !17, i64 8}
!28 = !{!16, !5, i64 64}
!29 = !{!16, !5, i64 96}
!30 = !{!16, !5, i64 0}
!31 = !{!32, !34, i64 16}
!32 = !{!"Agobj_s", !33, i64 0, !34, i64 16}
!33 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !17, i64 8}
!34 = !{!"p1 _ZTS7Agrec_s", !10, i64 0}
!35 = !{!36, !10, i64 160}
!36 = !{!"Agraphinfo_t", !37, i64 0, !39, i64 16, !40, i64 24, !41, i64 32, !6, i64 64, !6, i64 128, !6, i64 129, !43, i64 130, !6, i64 131, !5, i64 132, !14, i64 136, !14, i64 144, !44, i64 152, !10, i64 160, !45, i64 168, !10, i64 176, !46, i64 184, !5, i64 192, !48, i64 200, !48, i64 208, !48, i64 216, !49, i64 224, !44, i64 232, !44, i64 234, !5, i64 236, !51, i64 240, !52, i64 248, !53, i64 256, !54, i64 264, !52, i64 272, !5, i64 280, !53, i64 288, !53, i64 296, !55, i64 304, !53, i64 320, !53, i64 328, !5, i64 336, !5, i64 340, !43, i64 344, !6, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !53, i64 360, !53, i64 368, !53, i64 376, !46, i64 384, !43, i64 392, !6, i64 393, !6, i64 394, !6, i64 395, !43, i64 396}
!37 = !{!"Agrec_s", !38, i64 0, !34, i64 8}
!38 = !{!"p1 omnipotent char", !10, i64 0}
!39 = !{!"p1 _ZTS8layout_t", !10, i64 0}
!40 = !{!"p1 _ZTS11textlabel_t", !10, i64 0}
!41 = !{!"", !42, i64 0, !42, i64 16}
!42 = !{!"pointf_s", !14, i64 0, !14, i64 8}
!43 = !{!"_Bool", !6, i64 0}
!44 = !{!"short", !6, i64 0}
!45 = !{!"p1 _ZTS5GVC_s", !10, i64 0}
!46 = !{!"p2 _ZTS8Agnode_s", !47, i64 0}
!47 = !{!"any p2 pointer", !10, i64 0}
!48 = !{!"p2 double", !47, i64 0}
!49 = !{!"p3 double", !50, i64 0}
!50 = !{!"any p3 pointer", !47, i64 0}
!51 = !{!"p2 _ZTS8Agraph_s", !47, i64 0}
!52 = !{!"p1 _ZTS8Agraph_s", !10, i64 0}
!53 = !{!"p1 _ZTS8Agnode_s", !10, i64 0}
!54 = !{!"p1 _ZTS6rank_t", !10, i64 0}
!55 = !{!"nlist_t", !46, i64 0, !17, i64 8}
!56 = !{!57, !58, i64 0}
!57 = !{!"", !58, i64 0, !5, i64 8, !41, i64 16, !5, i64 48, !5, i64 52, !52, i64 56}
!58 = !{!"p1 _ZTS7bport_s", !10, i64 0}
!59 = !{!16, !14, i64 40}
!60 = !{!61, !14, i64 8}
!61 = !{!"", !5, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !5, i64 32}
!62 = !{!61, !14, i64 16}
!63 = !{!16, !14, i64 32}
!64 = !{!61, !14, i64 24}
end_hunk_0
