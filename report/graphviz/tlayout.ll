Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/tlayout?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@fdp_tLayout:bb.a
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !18
  %i.id = fsub double %i.ic, %i.hu
  store double %i.id, ptr %i.ib, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !18
  %i.ig = fsub double %i.if, %i.hv
  store double %i.ig, ptr %i.ie, align 8, !tbaa !18
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph223.i
  %i.ih = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.ii = tail call double @drand48() #6
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ii, double 2.000000e+00, double -1.000000e+00)
  %i.ik = fmul double %i.ih, %i.ij
  %i.il = load ptr, ptr %i.hw, align 8, !tbaa !29
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 176
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46
  store double %i.ik, ptr %i.in, align 8, !tbaa !18
  %i.io = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.ip = tail call double @drand48() #6
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.ip, double 2.000000e+00, double -1.000000e+00)
  %i.ir = fmul double %i.io, %i.iq
  %i.is = load ptr, ptr %i.hw, align 8, !tbaa !29
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 176
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !46
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store double %i.ir, ptr %i.iv, align 8, !tbaa !18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.iw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2221.i) #6 ; 2 uses
  %.not175.i = icmp eq ptr %i.iw, null
  br i1 %.not175.i, label %initPositions.exit, label %.lr.ph223.i, !llvm.loop !70

bb.at:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.at, %.lr.ph227.i
  %.3225.i = phi ptr [ %i.jn, %.lr.ph227.i ], [ %i.ht, %bb.at ] ; 2 uses
  %i.ix = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.iy = tail call double @drand48() #6
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iy, double 2.000000e+00, double -1.000000e+00)
  %i.ja = fmul double %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %.3225.i, i64 16 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !29
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 176
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !46
  store double %i.ja, ptr %i.je, align 8, !tbaa !18
  %i.jf = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.jg = tail call double @drand48() #6
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jg, double 2.000000e+00, double -1.000000e+00)
  %i.ji = fmul double %i.jf, %i.jh
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !29
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 176
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !46
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store double %i.ji, ptr %i.jm, align 8, !tbaa !18
  %i.jn = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.3225.i) #6 ; 2 uses
  %.not174.i = icmp eq ptr %i.jn, null
  br i1 %.not174.i, label %initPositions.exit, label %.lr.ph227.i, !llvm.loop !71

initPositions.exit:                               ; preds = %bb.an, %bb.as, %.lr.ph227.i, %._crit_edge203.i, %bb.ap, %bb.at
  %i.jo = load i32, ptr @parms, align 8, !tbaa !25
  %.not = icmp eq i32 %i.jo, 0
  br i1 %.not, label %.preheader, label %bb.au

.preheader:                                       ; preds = %initPositions.exit
  %i.jp = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105 ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph89.preheader, label %.loopexit74

.lr.ph89.preheader:                               ; preds = %.preheader
  %.pre111.a = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre113.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  br label %.lr.ph89

bb.au:                                            ; preds = %initPositions.exit
  %i.jr = tail call i32 @agnnodes(ptr noundef %0) #6
  %i.js = tail call ptr @mkGrid(i32 noundef %i.jr) #6 ; 5 uses
  %i.jt = tail call i32 @agnnodes(ptr noundef %0) #6
  tail call void @adjustGrid(ptr noundef %i.js, i32 noundef %i.jt) #6
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105 ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.au
  %.pre106 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre108.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  br label %.lr.ph

._crit_edge:                                      ; preds = %gAdjust.exit, %bb.au
  tail call void @delGrid(ptr noundef %i.js) #6
  br label %.loopexit74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %gAdjust.exit
  %i.jw = phi i32 [ %i.nn, %gAdjust.exit ], [ %i.ju, %.lr.ph.preheader ]
  %i.jx = phi i32 [ %i.no, %gAdjust.exit ], [ %.pre108.a, %.lr.ph.preheader ] ; 3 uses
  %i.jy = phi double [ %i.np, %gAdjust.exit ], [ %.pre106, %.lr.ph.preheader ] ; 2 uses
  %.03387 = phi i32 [ %i.nq, %gAdjust.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.jz = sub nsw i32 %i.jx, %.03387
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
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !29 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 152
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !48
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i8 0, i64 16, i1 false)
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !46
  %i.kn = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8
  %i.ko = load <2 x double>, ptr %i.km, align 8, !tbaa !18
  %i.kp = shufflevector <1 x double> %i.kn, <1 x double> poison, <2 x i32> zeroinitializer
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
  br i1 %.not.i39, label %._crit_edge.i40, label %.lr.ph.i38, !llvm.loop !72

._crit_edge.i40:                                  ; preds = %.lr.ph.i38, %bb.av
  %i.ky = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3749.i = icmp eq ptr %i.ky, null
  br i1 %.not3749.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge.i40, %._crit_edge48.i
  %.150.i = phi ptr [ %i.nm, %._crit_edge48.i ], [ %i.ky, %._crit_edge.i40 ] ; 4 uses
  %i.kz = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.150.i) #6 ; 2 uses
  %.not3844.i = icmp eq ptr %i.kz, null
  br i1 %.not3844.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph52.i
  %i.la = getelementptr inbounds nuw i8, ptr %.150.i, i64 16 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph47.i
  %.045.i = phi ptr [ %i.kz, %.lr.ph47.i ], [ %i.nl, %bb.ba ] ; 4 uses
  %i.lb = load i32, ptr %.045.i, align 8
  %i.lc = and i32 %i.lb, 3
  %i.ld = icmp eq i32 %i.lc, 2
  %i.le = select i1 %i.ld, i64 56, i64 -8
  %i.lf = getelementptr inbounds i8, ptr %.045.i, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !115 ; 2 uses
  %.not39.i = icmp eq ptr %.150.i, %i.lg
  br i1 %.not39.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !29
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 176
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !46
  %i.ll = load ptr, ptr %i.la, align 8, !tbaa !29
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 176
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !46
  %i.lo = load <2 x double>, ptr %i.lk, align 8, !tbaa !18
  %i.lp = load <2 x double>, ptr %i.ln, align 8, !tbaa !18
  %i.lq = fsub <2 x double> %i.lo, %i.lp          ; 4 uses
  %i.lr = extractelement <2 x double> %i.lq, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.lq, %i.lq
  %i.ls = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.lr, double %i.ls) ; 2 uses
  %i.lu = fcmp oeq double %i.lt, 0.000000e+00
  br i1 %i.lu, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %.lr.ph.i.i
  %i.lv = tail call i32 @rand() #6
  %i.lw = tail call i32 @rand() #6
  %i.lx = insertelement <2 x i32> poison, i32 %i.lv, i64 0
  %i.ly = insertelement <2 x i32> %i.lx, i32 %i.lw, i64 1
  %i.lz = srem <2 x i32> %i.ly, splat (i32 10)
  %i.ma = sub nsw <2 x i32> splat (i32 5), %i.lz
  %i.mb = sitofp <2 x i32> %i.ma to <2 x double>  ; 4 uses
  %i.mc = extractelement <2 x double> %i.mb, i64 0 ; 2 uses
  %foldExtExtBinop186 = fmul nnan <2 x double> %i.mb, %i.mb
  %i.md = extractelement <2 x double> %foldExtExtBinop186, i64 1
  %i.me = tail call double @llvm.fmuladd.f64(double %i.mc, double %i.mc, double %i.md) ; 2 uses
  %i.mf = fcmp oeq double %i.me, 0.000000e+00
  br i1 %i.mf, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ax
  %.0.lcssa.i.i = phi double [ %i.lt, %bb.ax ], [ %i.me, %.lr.ph.i.i ]
  %i.mg = phi <2 x double> [ %i.lq, %bb.ax ], [ %i.mb, %.lr.ph.i.i ] ; 2 uses
  %i.mh = tail call double @sqrt(double noundef %.0.lcssa.i.i) #6 ; 3 uses
  %i.mi = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i.i = icmp eq i32 %i.mi, 0
  %i.mj = getelementptr inbounds nuw i8, ptr %.045.i, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !29 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 176
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !121 ; 2 uses
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 184
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !122
  %i.mp = fsub double %i.mh, %i.mo
  %i.mq = fmul double %i.mm, %i.mp
  %i.mr = fdiv double %i.mq, %i.mh
  br label %applyAttr.exit.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.ms = fmul double %i.mh, %i.mm
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 184
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !122
  %i.mv = fdiv double %i.ms, %i.mu
  br label %applyAttr.exit.i

applyAttr.exit.i:                                 ; preds = %bb.az, %bb.ay
  %.033.i.i = phi double [ %i.mr, %bb.ay ], [ %i.mv, %bb.az ]
  %i.mw = load ptr, ptr %i.lh, align 8, !tbaa !29
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 152
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !48
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 2 uses
  %i.na = fneg <2 x double> %i.mg
  %i.nb = load <2 x double>, ptr %i.mz, align 8, !tbaa !18
  %i.nc = insertelement <2 x double> poison, double %.033.i.i, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ne = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.nd, <2 x double> %i.nb)
  store <2 x double> %i.ne, ptr %i.mz, align 8, !tbaa !18
  %i.nf = load ptr, ptr %i.la, align 8, !tbaa !29
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 152
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !48
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %i.nj = load <2 x double>, ptr %i.ni, align 8, !tbaa !18
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.nd, <2 x double> %i.nj)
  store <2 x double> %i.nk, ptr %i.ni, align 8, !tbaa !18
  br label %bb.ba

bb.ba:                                            ; preds = %applyAttr.exit.i, %bb.aw
  %i.nl = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.045.i) #6 ; 2 uses
  %.not38.i = icmp eq ptr %i.nl, null
  br i1 %.not38.i, label %._crit_edge48.i, label %bb.aw, !llvm.loop !74

._crit_edge48.i:                                  ; preds = %bb.ba, %.lr.ph52.i
  %i.nm = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.150.i) #6 ; 2 uses
  %.not37.i = icmp eq ptr %i.nm, null
  br i1 %.not37.i, label %._crit_edge53.i, label %.lr.ph52.i, !llvm.loop !75

._crit_edge53.i:                                  ; preds = %._crit_edge48.i, %._crit_edge.i40
  tail call void @walkGrid(ptr noundef %i.js, ptr noundef nonnull @gridRepulse) #6
  tail call fastcc void @updatePos(ptr noundef %0, double noundef %i.kd, ptr noundef readnone %i.e)
  %.pre = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre107 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  %.pre109 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105
  br label %gAdjust.exit

gAdjust.exit:                                     ; preds = %.lr.ph, %._crit_edge53.i
  %i.nn = phi i32 [ %i.jw, %.lr.ph ], [ %.pre109, %._crit_edge53.i ] ; 2 uses
  %i.no = phi i32 [ %i.jx, %.lr.ph ], [ %.pre107, %._crit_edge53.i ]
  %i.np = phi double [ %i.jy, %.lr.ph ], [ %.pre, %._crit_edge53.i ]
  %i.nq = add nuw nsw i32 %.03387, 1              ; 2 uses
  %i.nr = icmp slt i32 %i.nq, %i.nn
  br i1 %i.nr, label %.lr.ph, label %._crit_edge, !llvm.loop !76

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %adjust.exit
  %i.ns = phi i32 [ %i.tl, %adjust.exit ], [ %i.jp, %.lr.ph89.preheader ]
  %i.nt = phi i32 [ %i.tm, %adjust.exit ], [ %.pre113.a, %.lr.ph89.preheader ] ; 3 uses
  %i.nu = phi double [ %i.tn, %adjust.exit ], [ %.pre111.a, %.lr.ph89.preheader ] ; 2 uses
  %.03288 = phi i32 [ %i.to, %adjust.exit ], [ 0, %.lr.ph89.preheader ] ; 2 uses
  %i.nv = sub nsw i32 %i.nt, %.03288
  %i.nw = sitofp i32 %i.nv to double
  %i.nx = fmul double %i.nu, %i.nw
  %i.ny = sitofp i32 %i.nt to double
  %i.nz = fdiv double %i.nx, %i.ny                ; 2 uses
  %i.oa = fcmp ugt double %i.nz, 0.000000e+00
  br i1 %i.oa, label %bb.bb, label %adjust.exit

bb.bb:                                            ; preds = %.lr.ph89
  %i.ob = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not51.i = icmp eq ptr %i.ob, null
  br i1 %.not51.i, label %._crit_edge.i43, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.bb, %.lr.ph.i41
  %.03652.i = phi ptr [ %i.oh, %.lr.ph.i41 ], [ %i.ob, %bb.bb ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.03652.i, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !29
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 152
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !48
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.og, i8 0, i64 16, i1 false)
  %i.oh = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03652.i) #6 ; 2 uses
  %.not.i42 = icmp eq ptr %i.oh, null
  br i1 %.not.i42, label %._crit_edge.i43, label %.lr.ph.i41, !llvm.loop !77

._crit_edge.i43:                                  ; preds = %.lr.ph.i41, %bb.bb
  %i.oi = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3963.i = icmp eq ptr %i.oi, null
  br i1 %.not3963.i, label %._crit_edge67.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %._crit_edge.i43, %._crit_edge62.i
  %.164.i = phi ptr [ %i.tk, %._crit_edge62.i ], [ %i.oi, %._crit_edge.i43 ] ; 6 uses
  %i.oj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not4053.i = icmp eq ptr %i.oj, null
  br i1 %.not4053.i, label %._crit_edge57.i, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph66.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.164.i, i64 16 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %doRep.exit.i, %.lr.ph56.i
  %.03554.i = phi ptr [ %i.oj, %.lr.ph56.i ], [ %i.qw, %doRep.exit.i ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.03554.i, i64 16 ; 3 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !29
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 176
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !46
  %i.op = load ptr, ptr %i.ok, align 8, !tbaa !29
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 176
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !46
  %i.os = load <2 x double>, ptr %i.oo, align 8, !tbaa !18
  %i.ot = load <2 x double>, ptr %i.or, align 8, !tbaa !18
  %i.ou = fsub <2 x double> %i.os, %i.ot          ; 3 uses
  %i.ov = extractelement <2 x double> %i.ou, i64 1
  %i.ow = extractelement <2 x double> %i.ou, i64 0
  %i.ox = tail call double @hypot(double noundef %i.ow, double noundef %i.ov) #6 ; 2 uses
  %i.oy = fcmp ule double %i.ox, 0.000000e+00
  br i1 %i.oy, label %.lr.ph.i45.i, label %._crit_edge.i43.i

.lr.ph.i45.i:                                     ; preds = %bb.bc, %.lr.ph.i45.i
  %i.oz = tail call i32 @rand() #6
  %i.pa = tail call i32 @rand() #6
  %i.pb = insertelement <2 x i32> poison, i32 %i.oz, i64 0
  %i.pc = insertelement <2 x i32> %i.pb, i32 %i.pa, i64 1
  %i.pd = srem <2 x i32> %i.pc, splat (i32 10)
  %i.pe = sub nsw <2 x i32> splat (i32 5), %i.pd
  %i.pf = sitofp <2 x i32> %i.pe to <2 x double>  ; 3 uses
  %i.pg = extractelement <2 x double> %i.pf, i64 1
  %i.ph = extractelement <2 x double> %i.pf, i64 0
  %i.pi = tail call double @hypot(double noundef %i.ph, double noundef %i.pg) #6 ; 2 uses
  %i.pj = fcmp ule double %i.pi, 0.000000e+00
  br i1 %i.pj, label %.lr.ph.i45.i, label %._crit_edge.i43.i, !llvm.loop !0

._crit_edge.i43.i:                                ; preds = %.lr.ph.i45.i, %bb.bc
  %.026.lcssa.i.i = phi double [ %i.ox, %bb.bc ], [ %i.pi, %.lr.ph.i45.i ] ; 4 uses
  %i.pk = phi <2 x double> [ %i.ou, %bb.bc ], [ %i.pf, %.lr.ph.i45.i ] ; 2 uses
  %i.pl = load ptr, ptr @fdp_parms, align 8, !tbaa !11
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 48
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !55
  %i.po = fcmp ogt double %.026.lcssa.i.i, %i.pn
  br i1 %i.po, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i43.i
  %i.pp = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i44.i = icmp eq i32 %i.pp, 0
  %i.pq = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !20 ; 2 uses
  %i.pr = fmul double %i.pq, %i.pq                ; 2 uses
  %i.ps = fmul nnan double %.026.lcssa.i.i, %.026.lcssa.i.i ; 2 uses
  br i1 %.not.i44.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pt = fmul double %.026.lcssa.i.i, %i.ps
  %i.pu = fdiv double %i.pr, %i.pt
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.pv = fdiv double %i.pr, %i.ps
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i43.i
  %.0.i.i = phi double [ %i.pv, %bb.bf ], [ %i.pu, %bb.be ], [ 0.000000e+00, %._crit_edge.i43.i ] ; 5 uses
  %i.pw = load ptr, ptr %i.ok, align 8, !tbaa !29 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 152
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !48 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !50
  %.not29.i.i = icmp eq ptr %i.qa, null
  br i1 %.not29.i.i, label %bb.bh, label %.doRep.exit_crit_edge.i

.doRep.exit_crit_edge.i:                          ; preds = %bb.bg
  %.pre.i44 = load ptr, ptr %i.ol, align 8, !tbaa !29
  br label %doRep.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 336
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !51
  %.not30.i.i = icmp eq ptr %i.qc, null
  %.pre73.i = load ptr, ptr %i.ol, align 8, !tbaa !29 ; 6 uses
  br i1 %.not30.i.i, label %bb.bi, label %doRep.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.qd = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 152
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !48
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !50
  %.not31.i.i = icmp eq ptr %i.qg, null
  br i1 %.not31.i.i, label %bb.bj, label %doRep.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.qh = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 336
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !51
  %.not32.i.i = icmp eq ptr %i.qi, null
  br i1 %.not32.i.i, label %bb.bk, label %doRep.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.qj = fmul double %.0.i.i, 1.000000e+01
  br label %doRep.exit.i

doRep.exit.i:                                     ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.doRep.exit_crit_edge.i
  %i.qk = phi ptr [ %.pre.i44, %.doRep.exit_crit_edge.i ], [ %.pre73.i, %bb.bh ], [ %.pre73.i, %bb.bi ], [ %.pre73.i, %bb.bj ], [ %.pre73.i, %bb.bk ]
  %.1.i.i = phi double [ %.0.i.i, %.doRep.exit_crit_edge.i ], [ %.0.i.i, %bb.bh ], [ %.0.i.i, %bb.bi ], [ %.0.i.i, %bb.bj ], [ %i.qj, %bb.bk ]
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 152
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !48
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16 ; 2 uses
  %i.qo = load <2 x double>, ptr %i.qn, align 8, !tbaa !18
  %i.qp = insertelement <2 x double> poison, double %.1.i.i, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.qq, <2 x double> %i.qo)
  store <2 x double> %i.qr, ptr %i.qn, align 8, !tbaa !18
  %i.qs = getelementptr inbounds nuw i8, ptr %i.py, i64 16 ; 2 uses
  %i.qt = fneg <2 x double> %i.pk
  %i.qu = load <2 x double>, ptr %i.qs, align 8, !tbaa !18
  %i.qv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> %i.qq, <2 x double> %i.qu)
  store <2 x double> %i.qv, ptr %i.qs, align 8, !tbaa !18
  %i.qw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03554.i) #6 ; 2 uses
  %.not40.i = icmp eq ptr %i.qw, null
  br i1 %.not40.i, label %._crit_edge57.i, label %bb.bc, !llvm.loop !78

._crit_edge57.i:                                  ; preds = %doRep.exit.i, %.lr.ph66.i
  %i.qx = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not4158.i = icmp eq ptr %i.qx, null
  br i1 %.not4158.i, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %._crit_edge57.i
  %i.qy = getelementptr inbounds nuw i8, ptr %.164.i, i64 16 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph61.i
  %.059.i = phi ptr [ %i.qx, %.lr.ph61.i ], [ %i.tj, %bb.bp ] ; 4 uses
  %i.qz = load i32, ptr %.059.i, align 8
  %i.ra = and i32 %i.qz, 3
  %i.rb = icmp eq i32 %i.ra, 2
  %i.rc = select i1 %i.rb, i64 56, i64 -8
  %i.rd = getelementptr inbounds i8, ptr %.059.i, i64 %i.rc
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !115 ; 2 uses
  %.not42.i45 = icmp eq ptr %.164.i, %i.re
  br i1 %.not42.i45, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !29
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 176
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !46
  %i.rj = load ptr, ptr %i.qy, align 8, !tbaa !29
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 176
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !46
  %i.rm = load <2 x double>, ptr %i.ri, align 8, !tbaa !18
  %i.rn = load <2 x double>, ptr %i.rl, align 8, !tbaa !18
  %i.ro = fsub <2 x double> %i.rm, %i.rn          ; 4 uses
  %i.rp = extractelement <2 x double> %i.ro, i64 0 ; 2 uses
  %foldExtExtBinop188 = fmul <2 x double> %i.ro, %i.ro
  %i.rq = extractelement <2 x double> %foldExtExtBinop188, i64 1
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.rp, double %i.rp, double %i.rq) ; 2 uses
  %i.rs = fcmp oeq double %i.rr, 0.000000e+00
  br i1 %i.rs, label %.lr.ph.i.i54, label %._crit_edge.i.i46

.lr.ph.i.i54:                                     ; preds = %bb.bm, %.lr.ph.i.i54
  %i.rt = tail call i32 @rand() #6
  %i.ru = tail call i32 @rand() #6
  %i.rv = insertelement <2 x i32> poison, i32 %i.rt, i64 0
  %i.rw = insertelement <2 x i32> %i.rv, i32 %i.ru, i64 1
  %i.rx = srem <2 x i32> %i.rw, splat (i32 10)
  %i.ry = sub nsw <2 x i32> splat (i32 5), %i.rx
  %i.rz = sitofp <2 x i32> %i.ry to <2 x double>  ; 4 uses
  %i.sa = extractelement <2 x double> %i.rz, i64 0 ; 2 uses
  %foldExtExtBinop190 = fmul nnan <2 x double> %i.rz, %i.rz
  %i.sb = extractelement <2 x double> %foldExtExtBinop190, i64 1
  %i.sc = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.sa, double %i.sb) ; 2 uses
  %i.sd = fcmp oeq double %i.sc, 0.000000e+00
  br i1 %i.sd, label %.lr.ph.i.i54, label %._crit_edge.i.i46, !llvm.loop !73

._crit_edge.i.i46:                                ; preds = %.lr.ph.i.i54, %bb.bm
  %.0.lcssa.i.i49 = phi double [ %i.rr, %bb.bm ], [ %i.sc, %.lr.ph.i.i54 ]
  %i.se = phi <2 x double> [ %i.ro, %bb.bm ], [ %i.rz, %.lr.ph.i.i54 ] ; 2 uses
  %i.sf = tail call double @sqrt(double noundef %.0.lcssa.i.i49) #6 ; 3 uses
  %i.sg = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i.i50 = icmp eq i32 %i.sg, 0
  %i.sh = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !29 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 176
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !121 ; 2 uses
  br i1 %.not.i.i50, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i.i46
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 184
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !122
  %i.sn = fsub double %i.sf, %i.sm
  %i.so = fmul double %i.sk, %i.sn
  %i.sp = fdiv double %i.so, %i.sf
  br label %applyAttr.exit.i51

bb.bo:                                            ; preds = %._crit_edge.i.i46
  %i.sq = fmul double %i.sf, %i.sk
  %i.sr = getelementptr inbounds nuw i8, ptr %i.si, i64 184
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !122
  %i.st = fdiv double %i.sq, %i.ss
  br label %applyAttr.exit.i51

applyAttr.exit.i51:                               ; preds = %bb.bo, %bb.bn
  %.033.i.i52 = phi double [ %i.sp, %bb.bn ], [ %i.st, %bb.bo ]
  %i.su = load ptr, ptr %i.rf, align 8, !tbaa !29
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 152
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !48
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16 ; 2 uses
  %i.sy = fneg <2 x double> %i.se
  %i.sz = load <2 x double>, ptr %i.sx, align 8, !tbaa !18
  %i.ta = insertelement <2 x double> poison, double %.033.i.i52, i64 0
  %i.tb = shufflevector <2 x double> %i.ta, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.tb, <2 x double> %i.sz)
  store <2 x double> %i.tc, ptr %i.sx, align 8, !tbaa !18
  %i.td = load ptr, ptr %i.qy, align 8, !tbaa !29
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 152
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !48
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 2 uses
  %i.th = load <2 x double>, ptr %i.tg, align 8, !tbaa !18
  %i.ti = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.tb, <2 x double> %i.th)
  store <2 x double> %i.ti, ptr %i.tg, align 8, !tbaa !18
  br label %bb.bp

bb.bp:                                            ; preds = %applyAttr.exit.i51, %bb.bl
  %i.tj = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.059.i) #6 ; 2 uses
  %.not41.i = icmp eq ptr %i.tj, null
  br i1 %.not41.i, label %._crit_edge62.i, label %bb.bl, !llvm.loop !79

._crit_edge62.i:                                  ; preds = %bb.bp, %._crit_edge57.i
  %i.tk = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not39.i53 = icmp eq ptr %i.tk, null
  br i1 %.not39.i53, label %._crit_edge67.i, label %.lr.ph66.i, !llvm.loop !80

._crit_edge67.i:                                  ; preds = %._crit_edge62.i, %._crit_edge.i43
  tail call fastcc void @updatePos(ptr noundef %0, double noundef %i.nz, ptr noundef readnone %i.e)
  %.pre110 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre112 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  %.pre114 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105
  br label %adjust.exit

adjust.exit:                                      ; preds = %.lr.ph89, %._crit_edge67.i
  %i.tl = phi i32 [ %i.ns, %.lr.ph89 ], [ %.pre114, %._crit_edge67.i ] ; 2 uses
  %i.tm = phi i32 [ %i.nt, %.lr.ph89 ], [ %.pre112, %._crit_edge67.i ]
  %i.tn = phi double [ %i.nu, %.lr.ph89 ], [ %.pre110, %._crit_edge67.i ]
  %i.to = add nuw nsw i32 %.03288, 1              ; 2 uses
  %i.tp = icmp slt i32 %i.to, %i.tl
  br i1 %i.tp, label %.lr.ph89, label %.loopexit74, !llvm.loop !81

.loopexit74:                                      ; preds = %adjust.exit, %.preheader, %._crit_edge
  %i.tq = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  %i.tr = fcmp une double %i.tq, 0.000000e+00
  %i.ts = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %i.tt = fcmp une double %i.ts, 0.000000e+00
  %or.cond = select i1 %i.tr, i1 true, i1 %i.tt
  br i1 %or.cond, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %.loopexit74
  %i.tu = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3490 = icmp eq ptr %i.tu, null
  br i1 %.not3490, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.bq, %.lr.ph93
  %.091 = phi ptr [ %i.ue, %.lr.ph93 ], [ %i.tu, %bb.bq ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.091, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !29
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 176
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !46 ; 3 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !18
  %i.ua = fadd double %i.tq, %i.tz
  store double %i.ua, ptr %i.ty, align 8, !tbaa !18
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 2 uses
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !18
  %i.ud = fadd double %i.ts, %i.uc
  store double %i.ud, ptr %i.ub, align 8, !tbaa !18
  %i.ue = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.091) #6 ; 2 uses
  %.not34 = icmp eq ptr %i.ue, null
  br i1 %.not34, label %.loopexit, label %.lr.ph93, !llvm.loop !82

.loopexit:                                        ; preds = %.lr.ph93, %bb.bq, %.loopexit74
  br i1 %i.g, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.loopexit
  store double -1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 11 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !128    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !129  ; 4 uses
  %.not53 = icmp eq ptr %i.b, null
  br i1 %.not53, label %._crit_edge55, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.04654 = phi ptr [ %i.bw, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.l
  %.052 = phi ptr [ %i.b, %.preheader ], [ %i.bu, %bb.l ] ; 3 uses
  %.not48 = icmp eq ptr %.04654, %.052
  br i1 %.not48, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.04654, align 8, !tbaa !58
  %i.g = load ptr, ptr %.052, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.p = load <2 x double>, ptr %i.k, align 8, !tbaa !18
  %i.q = load <2 x double>, ptr %i.o, align 8, !tbaa !18
  %i.r = fsub <2 x double> %i.p, %i.q             ; 3 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = extractelement <2 x double> %i.r, i64 0
  %i.u = tail call double @hypot(double noundef %i.t, double noundef %i.s) #6 ; 2 uses
  %i.v = fcmp ule double %i.u, 0.000000e+00
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.w = tail call i32 @rand() #6
  %i.x = tail call i32 @rand() #6
  %i.y = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.x, i64 1
  %i.aa = srem <2 x i32> %i.z, splat (i32 10)
  %i.ab = sub nsw <2 x i32> splat (i32 5), %i.aa
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>  ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 1
  %i.ae = extractelement <2 x double> %i.ac, i64 0
  %i.af = tail call double @hypot(double noundef %i.ae, double noundef %i.ad) #6 ; 2 uses
  %i.ag = fcmp ule double %i.af, 0.000000e+00
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.026.lcssa.i = phi double [ %i.u, %bb.c ], [ %i.af, %.lr.ph.i ] ; 4 uses
  %i.ah = phi <2 x double> [ %i.r, %bb.c ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %i.ai = load ptr, ptr @fdp_parms, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !55
  %i.al = fcmp ogt double %.026.lcssa.i, %i.ak
  br i1 %i.al, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i = icmp eq i32 %i.am, 0
  %i.an = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !20 ; 2 uses
  %i.ao = fmul double %i.an, %i.an                ; 2 uses
  %i.ap = fmul nnan double %.026.lcssa.i, %.026.lcssa.i ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fmul double %.026.lcssa.i, %i.ap
  %i.ar = fdiv double %i.ao, %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = fdiv double %i.ao, %i.ap
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.i = phi double [ %i.as, %bb.f ], [ %i.ar, %bb.e ], [ 0.000000e+00, %._crit_edge.i ] ; 5 uses
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !29  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %.not29.i = icmp eq ptr %i.ax, null
  br i1 %.not29.i, label %bb.h, label %.doRep.exit_crit_edge

.doRep.exit_crit_edge:                            ; preds = %bb.g
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %doRep.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 336
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51
  %.not30.i = icmp eq ptr %i.az, null
  %.pre58 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 6 uses
  br i1 %.not30.i, label %bb.i, label %doRep.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre58, i64 152
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50
  %.not31.i = icmp eq ptr %i.bd, null
  br i1 %.not31.i, label %bb.j, label %doRep.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.pre58, i64 336
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !51
  %.not32.i = icmp eq ptr %i.bf, null
  br i1 %.not32.i, label %bb.k, label %doRep.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = fmul double %.0.i, 1.000000e+01
  br label %doRep.exit

doRep.exit:                                       ; preds = %.doRep.exit_crit_edge, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bh = phi ptr [ %.pre, %.doRep.exit_crit_edge ], [ %.pre58, %bb.h ], [ %.pre58, %bb.i ], [ %.pre58, %bb.j ], [ %.pre58, %bb.k ]
  %.1.i = phi double [ %.0.i, %.doRep.exit_crit_edge ], [ %.0.i, %bb.h ], [ %.0.i, %bb.i ], [ %.0.i, %bb.j ], [ %i.bg, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bk, align 8, !tbaa !18
  %i.bm = insertelement <2 x double> poison, double %.1.i, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.bn, <2 x double> %i.bl)
  store <2 x double> %i.bo, ptr %i.bk, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bq = fneg <2 x double> %i.ah
  %i.br = load <2 x double>, ptr %i.bp, align 8, !tbaa !18
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bn, <2 x double> %i.br)
  store <2 x double> %i.bs, ptr %i.bp, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %doRep.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %.not47 = icmp eq ptr %i.bu, null
  br i1 %.not47, label %._crit_edge, label %bb.b, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.04654, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %._crit_edge55, label %.preheader, !llvm.loop !124

._crit_edge55:                                    ; preds = %._crit_edge, %bb.a
  %i.bx = add nsw i32 %i.c, -1                    ; 3 uses
  %i.by = add nsw i32 %i.e, -1                    ; 3 uses
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.bx, i32 noundef %i.by, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.bx, i32 noundef %i.e, ptr noundef %i.b)
  %i.bz = add nsw i32 %i.e, 1                     ; 3 uses
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.bx, i32 noundef %i.bz, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.c, i32 noundef %i.by, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.c, i32 noundef %i.bz, ptr noundef %i.b)
  %i.ca = add nsw i32 %i.c, 1                     ; 3 uses
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.ca, i32 noundef %i.by, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.ca, i32 noundef %i.e, ptr noundef %i.b)
  tail call fastcc void @doNeighbor(ptr noundef %1, i32 noundef %i.ca, i32 noundef %i.bz, ptr noundef %i.b)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @updatePos(ptr noundef %0, double noundef %1, ptr nofree noundef readnone captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = fmul double %1, %1                       ; 2 uses
  %i.b = tail call ptr @agfstnode(ptr noundef %0) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.b, null
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.064.us = phi ptr [ %i.ad, %bb.f ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.064.us, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 163
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = and i8 %i.f, 2
  %.not59.us = icmp eq i8 %i.g, 0
  br i1 %.not59.us, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !18 ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.k, %i.k
  %i.l = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.m = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.l) ; 2 uses
  %i.o = fcmp olt double %i.n, %i.a
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call double @sqrt(double noundef %i.n) #6
  %i.q = fdiv double %1, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !18
  %i.u = insertelement <2 x double> poison, double %i.q, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.v, <2 x double> %i.t)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !18
  %i.aa = fadd <2 x double> %i.k, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %i.y, %bb.d ], [ %i.s, %bb.c ]
  %i.ac = phi <2 x double> [ %i.aa, %bb.d ], [ %i.w, %bb.c ]
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %i.ad = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.064.us) #6 ; 2 uses
  %.not.us = icmp eq ptr %i.ad, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !130

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %.064 = phi ptr [ %i.cd, %bb.p ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.064, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 163
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !45
  %i.ai = and i8 %i.ah, 2
  %.not59 = icmp eq i8 %i.ai, 0
  br i1 %.not59, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.lr.ph.split
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load <2 x double>, ptr %i.al, align 8, !tbaa !18 ; 5 uses
  %foldExtExtBinop75 = fmul <2 x double> %i.am, %i.am
  %i.an = extractelement <2 x double> %foldExtExtBinop75, i64 1
  %i.ao = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.an) ; 2 uses
  %i.aq = fcmp olt double %i.ap, %i.a
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !18
  %i.au = fadd <2 x double> %i.am, %i.at
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = tail call double @sqrt(double noundef %i.ap) #6
  %i.aw = fdiv double %1, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !18
  %i.ba = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.bb, <2 x double> %i.az)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bd = phi ptr [ %i.as, %bb.h ], [ %i.ay, %bb.i ] ; 4 uses
  %i.be = phi <2 x double> [ %i.au, %bb.h ], [ %i.bc, %bb.i ] ; 6 uses
  %i.bf = fmul <2 x double> %i.be, %i.be
  %i.bg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !18 ; 2 uses
  %i.bh = fmul <2 x double> %i.bg, %i.bg
  %i.bi = fdiv <2 x double> %i.bf, %i.bh
  %3 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bi)
  %i.bj = tail call double @sqrt(double noundef %3) #6 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  %.not61 = icmp eq ptr %i.bl, null
  br i1 %.not61, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !51
  %.not62 = icmp eq ptr %i.bn, null
  br i1 %.not62, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x double> %i.be, %i.bp          ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  store double %i.br, ptr %i.bd, align 8, !tbaa !18
  %i.bs = extractelement <2 x double> %i.bq, i64 1
  br label %.sink.split

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bt = fcmp ult double %i.bj, 1.000000e+00
  br i1 %i.bt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = fmul <2 x double> %i.be, splat (double f0x3FEE666666666666)
  %i.bv = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x double> %i.bu, %i.bw          ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  store double %i.by, ptr %i.bd, align 8, !tbaa !18
  %i.bz = extractelement <2 x double> %i.bx, i64 1
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ca = extractelement <2 x double> %i.be, i64 0
  store double %i.ca, ptr %i.bd, align 8, !tbaa !18
  %i.cb = extractelement <2 x double> %i.be, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.o, %bb.n
  %.sink = phi double [ %i.bz, %bb.n ], [ %i.cb, %bb.o ], [ %i.bs, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store double %.sink, ptr %i.cc, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %.lr.ph.split
  %i.cd = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.064) #6 ; 2 uses
  %.not = icmp eq ptr %i.cd, null
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
  %.0.in29 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %.0.in29, align 8, !tbaa !133 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %.023.us = phi ptr [ %i.g, %.preheader.split.us ], [ %3, %.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.023.us, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.old1.not.us = icmp eq ptr %i.g, null
  br i1 %.old1.not.us, label %.loopexit, label %.preheader.split.us

.preheader.splitthread-pre-split:                 ; preds = %._crit_edge
  %.030.pr = load ptr, ptr %.0.in29, align 8, !tbaa !133
  br label %.preheader.split

.preheader.split:                                 ; preds = %.preheader, %.preheader.splitthread-pre-split
  %.030 = phi ptr [ %.030.pr, %.preheader.splitthread-pre-split ], [ %i.d, %.preheader ] ; 2 uses
  %.023 = phi ptr [ %i.ca, %.preheader.splitthread-pre-split ], [ %3, %.preheader ] ; 2 uses
  %.not31 = icmp eq ptr %.030, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split
  %i.h = load ptr, ptr %.023, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !29
  %.pre37 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.j = phi double [ %.pre37, %.lr.ph ], [ %i.bx, %bb.l ] ; 2 uses
  %i.k = phi ptr [ %.pre, %.lr.ph ], [ %i.by, %bb.l ] ; 2 uses
  %.032 = phi ptr [ %.030, %.lr.ph ], [ %.0, %bb.l ] ; 2 uses
  %i.l = load ptr, ptr %.032, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.s = load <2 x double>, ptr %i.p, align 8, !tbaa !18
  %i.t = load <2 x double>, ptr %i.r, align 8, !tbaa !18
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
  %i.ac = insertelement <2 x i32> poison, i32 %i.aa, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.ab, i64 1
  %i.ae = srem <2 x i32> %i.ad, splat (i32 10)
  %i.af = sub nsw <2 x i32> splat (i32 5), %i.ae
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>  ; 3 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = extractelement <2 x double> %i.ag, i64 0
  %i.aj = tail call double @hypot(double noundef %i.ai, double noundef %i.ah) #6 ; 2 uses
  %i.ak = fcmp ule double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.026.lcssa.i = phi double [ %i.x, %bb.c ], [ %i.aj, %.lr.ph.i ] ; 4 uses
  %i.al = phi <2 x double> [ %i.u, %bb.c ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.am = load ptr, ptr @fdp_parms, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load double, ptr %i.an, align 8, !tbaa !55
  %i.ap = fcmp ogt double %.026.lcssa.i, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i = icmp eq i32 %i.aq, 0
  %i.ar = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !20 ; 2 uses
  %i.as = fmul double %i.ar, %i.ar                ; 2 uses
  %i.at = fmul nnan double %.026.lcssa.i, %.026.lcssa.i ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = fmul double %.026.lcssa.i, %i.at
  %i.av = fdiv double %i.as, %i.au
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aw = fdiv double %i.as, %i.at
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.i = phi double [ %i.aw, %bb.f ], [ %i.av, %bb.e ], [ 0.000000e+00, %._crit_edge.i ] ; 5 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !29  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50
  %.not29.i = icmp eq ptr %i.bb, null
  br i1 %.not29.i, label %bb.h, label %.doRep.exit_crit_edge

.doRep.exit_crit_edge:                            ; preds = %bb.g
  %.pre38 = load ptr, ptr %i.m, align 8, !tbaa !29
  br label %doRep.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51
  %.not30.i = icmp eq ptr %i.bd, null
  %.pre39 = load ptr, ptr %i.m, align 8, !tbaa !29 ; 6 uses
  br i1 %.not30.i, label %bb.i, label %doRep.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.pre39, i64 152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %.not31.i = icmp eq ptr %i.bh, null
  br i1 %.not31.i, label %bb.j, label %doRep.exit

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre39, i64 336
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51
  %.not32.i = icmp eq ptr %i.bj, null
  br i1 %.not32.i, label %bb.k, label %doRep.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = fmul double %.0.i, 1.000000e+01
  br label %doRep.exit

doRep.exit:                                       ; preds = %.doRep.exit_crit_edge, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bl = phi ptr [ %.pre38, %.doRep.exit_crit_edge ], [ %.pre39, %bb.h ], [ %.pre39, %bb.i ], [ %.pre39, %bb.j ], [ %.pre39, %bb.k ]
  %.1.i = phi double [ %.0.i, %.doRep.exit_crit_edge ], [ %.0.i, %bb.h ], [ %.0.i, %bb.i ], [ %.0.i, %bb.j ], [ %i.bk, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !tbaa !18
  %i.bq = insertelement <2 x double> poison, double %.1.i, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.br, <2 x double> %i.bp)
  store <2 x double> %i.bs, ptr %i.bo, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bu = fneg <2 x double> %i.al
  %i.bv = load <2 x double>, ptr %i.bt, align 8, !tbaa !18
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.br, <2 x double> %i.bv)
  store <2 x double> %i.bw, ptr %i.bt, align 8, !tbaa !18
  %.pre36 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %doRep.exit, %bb.b
  %i.bx = phi double [ %.pre36, %doRep.exit ], [ %i.j, %bb.b ]
  %i.by = phi ptr [ %i.ax, %doRep.exit ], [ %i.k, %bb.b ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.l, %.preheader.split
  %i.bz = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !59 ; 2 uses
  %.old1.not = icmp eq ptr %i.ca, null
  br i1 %.old1.not, label %.loopexit, label %.preheader.splitthread-pre-split, !llvm.loop !132

.loopexit:                                        ; preds = %._crit_edge, %.preheader.split.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #2

declare ptr @findGrid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !47}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS10fdpParms_s", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"fdpParms_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!14 = !{!"long", !5, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !6, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !6, i64 100}
!16 = !{!15, !6, i64 16}
!17 = !{!15, !12, i64 72}
!18 = !{!12, !12, i64 0}
!19 = !{!15, !6, i64 20}
!20 = !{!15, !12, i64 48}
!21 = !{!15, !12, i64 56}
!22 = !{!15, !14, i64 8}
!23 = !{!15, !6, i64 64}
!24 = !{!15, !6, i64 96}
!25 = !{!15, !6, i64 0}
!26 = !{!"Agtag_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !14, i64 8}
!27 = !{!"p1 _ZTS7Agrec_s", !9, i64 0}
!28 = !{!"Agobj_s", !26, i64 0, !27, i64 16}
!29 = !{!28, !27, i64 16}
!30 = !{!"p1 omnipotent char", !9, i64 0}
!31 = !{!"Agrec_s", !30, i64 0, !27, i64 8}
!32 = !{!"p1 _ZTS11textlabel_t", !9, i64 0}
!33 = !{!"pointf_s", !12, i64 0, !12, i64 8}
!34 = !{!"", !33, i64 0, !33, i64 16}
!35 = !{!"_Bool", !5, i64 0}
!36 = !{!"any p2 pointer", !9, i64 0}
!37 = !{!"p1 _ZTS8Agraph_s", !9, i64 0}
!38 = !{!"p1 _ZTS8Agnode_s", !9, i64 0}
!39 = !{!"p1 _ZTS10shape_desc", !9, i64 0}
!40 = !{!"p1 double", !9, i64 0}
!41 = !{!"p2 _ZTS8Agedge_s", !36, i64 0}
!42 = !{!"elist", !41, i64 0, !14, i64 8}
!43 = !{!"p1 _ZTS8Agedge_s", !9, i64 0}
!44 = !{!"Agnodeinfo_t", !31, i64 0, !39, i64 16, !9, i64 24, !33, i64 32, !12, i64 48, !12, i64 56, !34, i64 64, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !32, i64 136, !32, i64 144, !9, i64 152, !5, i64 160, !5, i64 161, !35, i64 162, !5, i64 163, !6, i64 164, !6, i64 168, !6, i64 172, !40, i64 176, !12, i64 184, !5, i64 192, !35, i64 193, !38, i64 200, !38, i64 208, !5, i64 216, !14, i64 224, !5, i64 232, !5, i64 233, !5, i64 234, !38, i64 240, !38, i64 248, !42, i64 256, !42, i64 272, !42, i64 288, !42, i64 304, !42, i64 320, !37, i64 336, !6, i64 344, !38, i64 352, !6, i64 360, !6, i64 364, !12, i64 368, !42, i64 376, !42, i64 392, !42, i64 408, !42, i64 424, !43, i64 440, !6, i64 448, !6, i64 452, !6, i64 456, !5, i64 464}
!45 = !{!44, !5, i64 163}
!46 = !{!44, !40, i64 176}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!44, !9, i64 152}
!49 = !{!"", !6, i64 0, !6, i64 4, !38, i64 8, !5, i64 16}
!50 = !{!49, !38, i64 8}
!51 = !{!44, !37, i64 336}
!52 = !{!"p1 _ZTS9dtlink_s_", !9, i64 0}
!53 = !{!"dtlink_s_", !52, i64 0, !5, i64 8}
!54 = !{!15, !6, i64 4}
!55 = !{!13, !12, i64 48}
!56 = !{!"p1 _ZTS10_node_list", !9, i64 0}
!57 = !{!"_node_list", !38, i64 0, !56, i64 8}
!58 = !{!57, !38, i64 0}
!59 = !{!57, !56, i64 8}
!60 = !{!6, !6, i64 0}
!61 = !{!13, !6, i64 8}
!62 = !{!13, !6, i64 12}
!63 = !{!15, !6, i64 24}
!64 = !{!13, !12, i64 32}
!65 = !{!13, !12, i64 40}
!66 = distinct !{!66, !47}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = distinct !{!70, !47}
!71 = distinct !{!71, !47}
!72 = distinct !{!72, !47}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !47}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = distinct !{!81, !47}
!82 = distinct !{!82, !47}
!83 = !{!"p1 _ZTS8layout_t", !9, i64 0}
!84 = !{!"short", !5, i64 0}
!85 = !{!"p1 _ZTS5GVC_s", !9, i64 0}
!86 = !{!"p2 _ZTS8Agnode_s", !36, i64 0}
!87 = !{!"p2 double", !36, i64 0}
!88 = !{!"any p3 pointer", !36, i64 0}
!89 = !{!"p3 double", !88, i64 0}
!90 = !{!"p2 _ZTS8Agraph_s", !36, i64 0}
!91 = !{!"p1 _ZTS6rank_t", !9, i64 0}
!92 = !{!"nlist_t", !86, i64 0, !14, i64 8}
!93 = !{!"Agraphinfo_t", !31, i64 0, !83, i64 16, !32, i64 24, !34, i64 32, !5, i64 64, !5, i64 128, !5, i64 129, !35, i64 130, !5, i64 131, !6, i64 132, !12, i64 136, !12, i64 144, !84, i64 152, !9, i64 160, !85, i64 168, !9, i64 176, !86, i64 184, !6, i64 192, !87, i64 200, !87, i64 208, !87, i64 216, !89, i64 224, !84, i64 232, !84, i64 234, !6, i64 236, !90, i64 240, !37, i64 248, !38, i64 256, !91, i64 264, !37, i64 272, !6, i64 280, !38, i64 288, !38, i64 296, !92, i64 304, !38, i64 320, !38, i64 328, !6, i64 336, !6, i64 340, !35, i64 344, !5, i64 345, !6, i64 348, !6, i64 352, !6, i64 356, !38, i64 360, !38, i64 368, !38, i64 376, !86, i64 384, !35, i64 392, !5, i64 393, !5, i64 394, !5, i64 395, !35, i64 396}
!94 = !{!93, !9, i64 160}
!95 = !{!"p1 _ZTS7bport_s", !9, i64 0}
!96 = !{!"", !95, i64 0, !6, i64 8, !34, i64 16, !6, i64 48, !6, i64 52, !37, i64 56}
!97 = !{!96, !95, i64 0}
!98 = !{!15, !12, i64 40}
!99 = !{!"", !6, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32}
!100 = !{!99, !12, i64 8}
!101 = !{!99, !12, i64 16}
!102 = !{!15, !12, i64 32}
!103 = !{!99, !12, i64 24}
!104 = !{!99, !6, i64 0}
!105 = !{!15, !6, i64 100}
!106 = !{!99, !6, i64 32}
!107 = !{!96, !6, i64 8}
!108 = !{!15, !12, i64 88}
!109 = !{!15, !12, i64 80}
!110 = !{!"bport_s", !43, i64 0, !38, i64 8, !12, i64 16}
!111 = !{!110, !43, i64 0}
!112 = !{!110, !38, i64 8}
!113 = !{!110, !12, i64 16}
!114 = !{!"Agedge_s", !28, i64 0, !53, i64 24, !53, i64 40, !38, i64 56}
!115 = !{!114, !38, i64 56}
!116 = !{!"p1 _ZTS7splines", !9, i64 0}
!117 = !{!"port", !33, i64 0, !12, i64 16, !9, i64 24, !35, i64 32, !35, i64 33, !35, i64 34, !35, i64 35, !5, i64 36, !5, i64 37, !30, i64 40}
!118 = !{!"p1 _ZTS8pointf_s", !9, i64 0}
!119 = !{!"Ppoly_t", !118, i64 0, !14, i64 8}
!120 = !{!"Agedgeinfo_t", !31, i64 0, !116, i64 16, !117, i64 24, !117, i64 72, !32, i64 120, !32, i64 128, !32, i64 136, !32, i64 144, !5, i64 152, !5, i64 153, !5, i64 154, !5, i64 155, !5, i64 156, !43, i64 160, !9, i64 168, !12, i64 176, !12, i64 184, !119, i64 192, !5, i64 208, !35, i64 209, !84, i64 210, !6, i64 212, !6, i64 216, !6, i64 220, !84, i64 224, !6, i64 228, !43, i64 232}
!121 = !{!120, !12, i64 176}
!122 = !{!120, !12, i64 184}
!123 = distinct !{!123, !47}
!124 = distinct !{!124, !47}
!125 = !{!"", !6, i64 0, !6, i64 4}
!126 = !{!"", !125, i64 0, !56, i64 8, !53, i64 16}
!127 = !{!126, !56, i64 8}
!128 = !{!126, !6, i64 0}
!129 = !{!126, !6, i64 4}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !47}
!132 = distinct !{!132, !134}
!133 = !{!56, !56, i64 0}
!134 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
