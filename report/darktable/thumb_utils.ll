loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6LibRaw18kodak_thumb_loaderEv:bb.a
  %i.jm = add nsw i32 %i.jl, %i.ji                ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, %.0127
  br i1 %i.jn, label %.split.loop.exit, label %bb.ad, !llvm.loop !124

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next267.4 = add nsw i64 %indvars.iv266337, -5 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next267.4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !112
  %i.jq = add nsw i32 %i.jp, %i.jm                ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, %.0127
  br i1 %i.jr, label %.split.loop.exit, label %bb.ae, !llvm.loop !124

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next267.5 = add nsw i64 %indvars.iv266337, -6 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next267.5
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !112
  %i.ju = add nsw i32 %i.jt, %i.jq                ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, %.0127
  br i1 %i.jv, label %.split.loop.exit, label %bb.af, !llvm.loop !124

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next267.6 = add nsw i64 %indvars.iv266337, -7 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next267.6
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !112
  %i.jy = add nsw i32 %i.jx, %i.ju                ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, %.0127
  br i1 %i.jz, label %.split.loop.exit, label %bb.ag, !llvm.loop !124

bb.ag:                                            ; preds = %bb.af
  %i.ka = icmp sgt i64 %indvars.iv266337, 40
  br i1 %i.ka, label %bb.ah, label %.split.loop.exit326

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next267.7 = add nsw i64 %indvars.iv266337, -8 ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next267.7
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !112
  %i.kd = add nsw i32 %i.kc, %i.jy                ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, %.0127
  br i1 %i.ke, label %.split.loop.exit, label %bb.ai, !llvm.loop !124

bb.ai:                                            ; preds = %bb.ah, %.preheader172
  %.0125338 = phi i32 [ 0, %.preheader172 ], [ %i.kd, %bb.ah ]
  %indvars.iv266337 = phi i64 [ 8192, %.preheader172 ], [ %indvars.iv.next267.7, %bb.ah ] ; 9 uses
  %indvars.iv.next267 = add nsw i64 %indvars.iv266337, -1 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next267
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !112
  %i.kh = add nsw i32 %i.kg, %.0125338            ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, %.0127
  br i1 %i.ki, label %.split.loop.exit, label %bb.aa, !llvm.loop !124

.split.loop.exit:                                 ; preds = %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.ai
  %indvars.iv.next267.lcssa = phi i64 [ %indvars.iv.next267, %bb.ai ], [ %indvars.iv.next267.1, %bb.aa ], [ %indvars.iv.next267.2, %bb.ab ], [ %indvars.iv.next267.3, %bb.ac ], [ %indvars.iv.next267.4, %bb.ad ], [ %indvars.iv.next267.5, %bb.ae ], [ %indvars.iv.next267.6, %bb.af ], [ %indvars.iv.next267.7, %bb.ah ]
  %i.kj = trunc nuw nsw i64 %indvars.iv.next267.lcssa to i32
  br label %.split.loop.exit326

.split.loop.exit326:                              ; preds = %bb.ag, %.split.loop.exit
  %.lcssa238 = phi i32 [ %i.kj, %.split.loop.exit ], [ 32, %bb.ag ]
  %spec.select169 = tail call i32 @llvm.smax.i32(i32 %.0123211, i32 %.lcssa238) ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count
  br i1 %exitcond274.not, label %.loopexit.loopexit, label %.preheader172, !llvm.loop !125

.loopexit.loopexit:                               ; preds = %.split.loop.exit326
  %i.kk = shl i32 %spec.select169, 3
  %i.kl = sitofp reassoc nsz arcp contract afn i32 %i.kk to float
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader173, %bb.z, %.loopexit176
  %.2 = phi float [ 6.553600e+04, %.loopexit176 ], [ 6.553600e+04, %bb.z ], [ 0.000000e+00, %.preheader173 ], [ %i.kl, %.loopexit.loopexit ]
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 5304
  %i.kn = load double, ptr %i.km, align 8, !tbaa !126
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 5312
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !126
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !127
  %i.ks = fdiv reassoc nsz arcp contract afn float %.2, %i.kr
  %i.kt = fptosi float %i.ks to i32
  tail call void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512) %0, double noundef %i.kn, double noundef %i.kp, i32 noundef 2, i32 noundef %i.kt)
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !120
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.da)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !128 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 5552 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !129
  %i.ky = and i32 %i.kx, 8
  %.not161 = icmp eq i32 %i.ky, 0
  br i1 %.not161, label %bb.aj, label %.thread

.thread:                                          ; preds = %.loopexit
  store i32 0, ptr %i.ku, align 8, !tbaa !128
  %i.kz = load i16, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  store i16 %i.kz, ptr %i.as, align 4, !tbaa !93
  %i.la = load i16, ptr %i.ao, align 2, !tbaa !91 ; 2 uses
  store i16 %i.la, ptr %i.aq, align 2, !tbaa !92
  br label %bb.al

bb.aj:                                            ; preds = %.loopexit
  %i.lb = load i16, ptr %i.am, align 4, !tbaa !90 ; 4 uses
  store i16 %i.lb, ptr %i.as, align 4, !tbaa !93
  %i.lc = load i16, ptr %i.ao, align 2, !tbaa !91 ; 4 uses
  store i16 %i.lc, ptr %i.aq, align 2, !tbaa !92
  %i.ld = and i32 %i.kv, 4
  %.not162 = icmp eq i32 %i.ld, 0
  br i1 %.not162, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.lb, ptr %i.ao, align 2, !tbaa !91
  store i16 %i.lc, ptr %i.am, align 4, !tbaa !90
  br label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak, %bb.aj
  %i.le = phi i16 [ %i.lc, %bb.ak ], [ %i.lb, %bb.aj ], [ %i.kz, %.thread ]
  %i.lf = phi i16 [ %i.lb, %bb.ak ], [ %i.lc, %bb.aj ], [ %i.la, %.thread ]
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 193504 ; 3 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !130 ; 2 uses
  %.not163 = icmp eq ptr %i.lh, null
  br i1 %.not163, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.lh)
  %.pre285 = load i16, ptr %i.ao, align 2, !tbaa !91
  %.pre286 = load i16, ptr %i.am, align 4, !tbaa !90
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.li = phi i16 [ %.pre286, %bb.am ], [ %i.le, %bb.al ]
  %i.lj = phi i16 [ %.pre285, %bb.am ], [ %i.lf, %bb.al ]
  %i.lk = zext i16 %i.lj to i64
  %i.ll = zext i16 %i.li to i64
  %i.lm = mul nuw nsw i64 %i.ll, %i.lk
  %i.ln = load i32, ptr %i.aw, align 4, !tbaa !95
  %i.lo = sext i32 %i.ln to i64
  %i.lp = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.lm, i64 noundef %i.lo)
  store ptr %i.lp, ptr %i.lg, align 8, !tbaa !130
  %i.lq = load i16, ptr %i.ao, align 2, !tbaa !91
  %i.lr = zext i16 %i.lq to i32
  %i.ls = load i16, ptr %i.am, align 4, !tbaa !90
  %i.lt = zext i16 %i.ls to i32
  %i.lu = mul nuw nsw i32 %i.lt, %i.lr
  %i.lv = load i32, ptr %i.aw, align 4, !tbaa !95
  %i.lw = mul nsw i32 %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 193496
  store i32 %i.lw, ptr %i.lx, align 8, !tbaa !104
  %i.ly = tail call noundef i32 @_ZN6LibRaw10flip_indexEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.lz = tail call noundef i32 @_ZN6LibRaw10flip_indexEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 0, i32 noundef 1)
  %i.ma = sub i32 %i.lz, %i.ly                    ; 3 uses
  %i.mb = tail call noundef i32 @_ZN6LibRaw10flip_indexEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, i32 noundef 0)
  %i.mc = load i16, ptr %i.ao, align 2, !tbaa !91
  %i.md = zext i16 %i.mc to i32
  %i.me = tail call noundef i32 @_ZN6LibRaw10flip_indexEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 0, i32 noundef %i.md)
  %i.mf = sub i32 %i.mb, %i.me
  %i.mg = load i16, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %.not232 = icmp eq i16 %i.mg, 0
  br i1 %.not232, label %._crit_edge226, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.an
  %i.mh = sext i32 %i.ma to i64
  %.pre287 = load i16, ptr %i.ao, align 2, !tbaa !91 ; 3 uses
  %.pre288 = load i32, ptr %i.aw, align 4, !tbaa !95 ; 3 uses
  br label %.lr.ph225

._crit_edge226:                                   ; preds = %._crit_edge219, %bb.an
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.ih, ptr noundef nonnull align 2 dereferenceable(131072) %i.ig, i64 131072, i1 false)
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ig)
  %i.mi = load ptr, ptr %i.b, align 8, !tbaa !97
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.mi)
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !97
  %i.mj = load i32, ptr %i.kw, align 8, !tbaa !129
  %i.mk = and i32 %i.mj, 8
  %.not164 = icmp eq i32 %i.mk, 0
  br i1 %.not164, label %bb.ap, label %bb.ao

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %._crit_edge219
  %i.ml = phi i16 [ %i.ng, %._crit_edge219 ], [ %i.mg, %.lr.ph225.preheader ] ; 2 uses
  %i.mm = phi i16 [ %i.nh, %._crit_edge219 ], [ %.pre287, %.lr.ph225.preheader ] ; 3 uses
  %i.mn = phi i32 [ %i.ni, %._crit_edge219 ], [ %.pre288, %.lr.ph225.preheader ] ; 3 uses
  %i.mo = phi i16 [ %i.nj, %._crit_edge219 ], [ %.pre287, %.lr.ph225.preheader ] ; 4 uses
  %i.mp = phi i32 [ %i.nk, %._crit_edge219 ], [ %.pre288, %.lr.ph225.preheader ] ; 4 uses
  %i.mq = phi i16 [ %i.nl, %._crit_edge219 ], [ %.pre287, %.lr.ph225.preheader ] ; 2 uses
  %i.mr = phi i32 [ %i.nm, %._crit_edge219 ], [ %.pre288, %.lr.ph225.preheader ] ; 2 uses
  %.0120223 = phi i32 [ %i.nn, %._crit_edge219 ], [ 0, %.lr.ph225.preheader ] ; 2 uses
  %.0121222 = phi i32 [ %i.no, %._crit_edge219 ], [ %i.ly, %.lr.ph225.preheader ] ; 3 uses
  %i.ms = load ptr, ptr %i.lg, align 8, !tbaa !130
  %i.mt = zext i16 %i.mq to i32
  %i.mu = mul nuw nsw i32 %.0120223, %i.mt
  %i.mv = mul nsw i32 %i.mu, %i.mr
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds i8, ptr %i.ms, i64 %i.mw
  %.not233 = icmp eq i16 %i.mq, 0
  br i1 %.not233, label %._crit_edge219, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.lr.ph225
  %i.my = icmp sgt i32 %i.mp, 0
  br i1 %i.my, label %.preheader.preheader, label %.preheader.lr.ph.split.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.mz = sext i32 %.0121222 to i64
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %1 = zext i16 %i.mo to i32
  %2 = add i32 %i.ma, %.0121222
  %3 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 1)
  %i.na = mul i32 %i.ma, %3
  %i.nb = add i32 %2, %i.na
  br label %._crit_edge219

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge216
  %i.nc = phi i16 [ %i.mm, %.preheader.preheader ], [ %i.nr, %._crit_edge216 ]
  %i.nd = phi i32 [ %i.mn, %.preheader.preheader ], [ %i.ns, %._crit_edge216 ] ; 3 uses
  %indvars.iv279 = phi i64 [ %i.mz, %.preheader.preheader ], [ %indvars.iv.next280, %._crit_edge216 ] ; 2 uses
  %.0119218 = phi i32 [ 0, %.preheader.preheader ], [ %i.nt, %._crit_edge216 ] ; 2 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph215, label %._crit_edge216

._crit_edge219.loopexit:                          ; preds = %._crit_edge216
  %i.nf = trunc nsw i64 %indvars.iv.next280 to i32
  %.pre290 = load i16, ptr %i.am, align 4, !tbaa !90
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %.preheader.lr.ph.split.us, %._crit_edge219.loopexit, %.lr.ph225
  %i.ng = phi i16 [ %i.ml, %.lr.ph225 ], [ %.pre290, %._crit_edge219.loopexit ], [ %i.ml, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.nh = phi i16 [ %i.mm, %.lr.ph225 ], [ %i.nr, %._crit_edge219.loopexit ], [ %i.mm, %.preheader.lr.ph.split.us ]
  %i.ni = phi i32 [ %i.mn, %.lr.ph225 ], [ %i.ns, %._crit_edge219.loopexit ], [ %i.mn, %.preheader.lr.ph.split.us ]
  %i.nj = phi i16 [ %i.mo, %.lr.ph225 ], [ %i.nr, %._crit_edge219.loopexit ], [ %i.mo, %.preheader.lr.ph.split.us ]
  %i.nk = phi i32 [ %i.mp, %.lr.ph225 ], [ %i.ns, %._crit_edge219.loopexit ], [ %i.mp, %.preheader.lr.ph.split.us ]
  %i.nl = phi i16 [ 0, %.lr.ph225 ], [ %i.nr, %._crit_edge219.loopexit ], [ %i.mo, %.preheader.lr.ph.split.us ]
  %i.nm = phi i32 [ %i.mr, %.lr.ph225 ], [ %i.ns, %._crit_edge219.loopexit ], [ %i.mp, %.preheader.lr.ph.split.us ]
  %.1.lcssa = phi i32 [ %.0121222, %.lr.ph225 ], [ %i.nf, %._crit_edge219.loopexit ], [ %i.nb, %.preheader.lr.ph.split.us ]
  %i.nn = add nuw nsw i32 %.0120223, 1            ; 2 uses
  %i.no = add nsw i32 %i.mf, %.1.lcssa
  %i.np = zext i16 %i.ng to i32
  %i.nq = icmp samesign ult i32 %i.nn, %i.np
  br i1 %i.nq, label %.lr.ph225, label %._crit_edge226, !llvm.loop !131

._crit_edge216.loopexit:                          ; preds = %.lr.ph215
  %.pre289 = load i16, ptr %i.ao, align 2, !tbaa !91
  br label %._crit_edge216

._crit_edge216:                                   ; preds = %._crit_edge216.loopexit, %.preheader
  %i.nr = phi i16 [ %.pre289, %._crit_edge216.loopexit ], [ %i.nc, %.preheader ] ; 5 uses
  %i.ns = phi i32 [ %i.ol, %._crit_edge216.loopexit ], [ %i.nd, %.preheader ] ; 4 uses
  %i.nt = add nuw nsw i32 %.0119218, 1            ; 2 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, %i.mh ; 2 uses
  %i.nu = zext i16 %i.nr to i32
  %i.nv = icmp samesign ult i32 %i.nt, %i.nu
  br i1 %i.nv, label %.preheader, label %._crit_edge219.loopexit, !llvm.loop !132

.lr.ph215:                                        ; preds = %.preheader, %.lr.ph215
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %.lr.ph215 ], [ 0, %.preheader ] ; 3 uses
  %i.nw = phi i32 [ %i.ol, %.lr.ph215 ], [ %i.nd, %.preheader ]
  %i.nx = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %indvars.iv279
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %indvars.iv275
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !108
  %i.ob = zext i16 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !108
  %i.oe = lshr i16 %i.od, 8
  %i.of = trunc nuw i16 %i.oe to i8
  %i.og = mul nsw i32 %i.nw, %.0119218
  %i.oh = trunc nuw nsw i64 %indvars.iv275 to i32
  %i.oi = add nsw i32 %i.og, %i.oh
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.mx, i64 %i.oj
  store i8 %i.of, ptr %i.ok, align 1, !tbaa !133
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %i.ol = load i32, ptr %i.aw, align 4, !tbaa !95 ; 3 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = icmp slt i64 %indvars.iv.next276, %i.om
  br i1 %i.on, label %.lr.ph215, label %._crit_edge216.loopexit, !llvm.loop !134

bb.ao:                                            ; preds = %._crit_edge226
  store i32 %i.kv, ptr %i.ku, align 8, !tbaa !128
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge226
  store i16 %i.ar, ptr %i.aq, align 2, !tbaa !92
  store i16 %i.at, ptr %i.as, align 4, !tbaa !93
  %i.oo = load <2 x i16>, ptr %i.am, align 4, !tbaa !108
  store i16 %i.ap, ptr %i.ao, align 2, !tbaa !91
  %i.op = shufflevector <2 x i16> %i.oo, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.op, ptr %i.d, align 4, !tbaa !108
  store i16 %i.an, ptr %i.am, align 4, !tbaa !90
  %i.oq = load i32, ptr %i.aw, align 4, !tbaa !95
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 193500
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !103
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !95
  store i32 %i.az, ptr %i.ay, align 8, !tbaa !96
  %i.os = and i32 %i.av, 65535
  store i32 %i.os, ptr %i.au, align 4, !tbaa !94
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.p
  ret void

bb.ar:                                            ; preds = %bb.s
  %i.ot = landingpad { ptr, i32 }
          catch ptr null
  %i.ou = extractvalue { ptr, i32 } %i.ot, 0
  tail call void @__clang_call_terminate(ptr %i.ou) #15
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw20kodak_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6LibRaw18kodak_rgb_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #4

declare void @_ZN6LibRaw20kodak_thumb_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN6LibRaw10flip_indexEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw7thumbOKEx(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381632 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %.not15 = icmp eq i64 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.f = load i32, ptr %i.e, align 8, !tbaa !104
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack = load i64, ptr %i.g, align 8, !tbaa !135
  %.elt17 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack18 = load i64, ptr %.elt17, align 8, !tbaa !135
  %i.h = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw17broadcom_load_rawEv to i64)
  %i.i = icmp eq i64 %.unpack18, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !call_target !81 ; 2 uses
  %i.o = icmp sgt i64 %i.n, 4294967295
  br i1 %i.o, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 193500
  %i.q = load i32, ptr %i.p, align 4, !tbaa !103  ; 2 uses
  %i.r = add i32 %i.q, -1
  %or.cond = icmp ult i32 %i.r, 3
  %i.s = select i1 %or.cond, i32 %i.q, i32 3      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381824
  %i.u = load i32, ptr %i.t, align 8, !tbaa !98
  switch i32 %i.u, label %.thread [
    i32 10, label %bb.l
    i32 4, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZN6LibRaw18dcraw_thumb_writerEPKc:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !112
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 193504 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 3 uses
  %.not30 = icmp eq ptr %i.e, null
  br i1 %.not30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 193488
  %i.h = load i32, ptr %i.g, align 8, !tbaa !136
  switch i32 %i.h, label %bb.n [
    i32 7, label %.sink.split
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.g:                                             ; preds = %bb.l
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions      ; 3 uses
  %i.j = extractvalue { ptr, i32 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i32 } %i.i, 1        ; 2 uses
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #13
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.j) #13 ; 0 uses
  %i.o = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %bb.aa

bb.j:                                             ; preds = %bb.g
  %i.p = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI17LibRaw_exceptions) #13
  %i.q = icmp eq i32 %i.k, %i.p
  br i1 %i.q, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.j) #13
  %i.s = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !11
  switch i32 %i.t, label %bb.x [
    i32 11, label %bb.q
    i32 1, label %bb.r
    i32 10, label %bb.s
    i32 2, label %.invoke
    i32 3, label %.invoke
    i32 9, label %.invoke
    i32 4, label %bb.t
    i32 5, label %bb.t
    i32 6, label %bb.u
    i32 7, label %bb.v
    i32 12, label %bb.w
  ]

bb.l:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.v = load i32, ptr %i.u, align 8, !tbaa !104
  invoke void @_ZN6LibRaw17jpeg_thumb_writerEP8_IO_FILEPci(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.v)
          to label %bb.o unwind label %bb.g

bb.m:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 193500
  %i.x = load i32, ptr %i.w, align 4, !tbaa !103
  %i.y = icmp eq i32 %i.x, 1
  %i.z = select i1 %i.y, i32 5, i32 6
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 193492
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !77
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 193494
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !76
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef %i.z, i32 noundef %i.ac, i32 noundef %i.af) #13 ; 0 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !130
  br label %.sink.split

bb.n:                                             ; preds = %bb.f
  %i.ai = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.aa

.sink.split:                                      ; preds = %bb.f, %bb.m
  %.sink = phi ptr [ %i.ah, %bb.m ], [ %i.e, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !104
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call i64 @fwrite(ptr noundef %.sink, i64 noundef 1, i64 noundef %i.al, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %i.an = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.aa

bb.p:                                             ; preds = %.invoke, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #13
  br label %bb.z

bb.q:                                             ; preds = %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

bb.r:                                             ; preds = %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

bb.s:                                             ; preds = %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

.invoke:                                          ; preds = %bb.k, %bb.k, %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

bb.t:                                             ; preds = %bb.k, %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

bb.u:                                             ; preds = %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

bb.v:                                             ; preds = %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

bb.w:                                             ; preds = %bb.k
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.x unwind label %bb.p

bb.x:                                             ; preds = %.invoke, %bb.k, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.024 = phi i32 [ -2, %bb.w ], [ -100011, %bb.v ], [ -100013, %bb.q ], [ -100007, %bb.r ], [ -100012, %bb.s ], [ -1, %bb.k ], [ -100008, %.invoke ], [ -100009, %bb.t ], [ -100010, %bb.u ]
  tail call void @__cxa_end_catch() #13
  br label %bb.aa

bb.y:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y, %bb.p, %bb.j
  %.merged = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.ao, %bb.p ], [ %i.ap, %bb.y ]
  resume { ptr, i32 } %.merged

bb.aa:                                            ; preds = %bb.c, %bb.e, %bb.n, %bb.o, %bb.i, %bb.x, %bb.a
  %.2 = phi i32 [ 2, %bb.a ], [ -6, %bb.n ], [ 0, %bb.o ], [ -100007, %bb.i ], [ %.024, %bb.x ], [ -4, %bb.e ], [ %i.c, %bb.c ]
  ret i32 %.2

bb.ab:                                            ; preds = %bb.y
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN6LibRaw17jpeg_thumb_writerEP8_IO_FILEPci(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #10

declare void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold noreturn }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!13 = !{!14, !28, i64 381632}
!14 = !{!"_ZTS6LibRaw", !15, i64 8, !62, i64 381584, !63, i64 381592, !9, i64 384344, !73, i64 433496, !73, i64 433504, !9, i64 433512, !74, i64 768232, !75, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !17, i64 768448, !17, i64 768456, !17, i64 768464, !54, i64 768472, !17, i64 768480, !17, i64 768488, !17, i64 768496, !17, i64 768504}
!15 = !{!"_ZTS13libraw_data_t", !16, i64 0, !18, i64 8, !21, i64 192, !23, i64 632, !29, i64 1928, !45, i64 5088, !46, i64 5232, !47, i64 5536, !8, i64 5584, !8, i64 5588, !50, i64 5592, !53, i64 192680, !56, i64 193480, !58, i64 193504, !59, i64 193768, !17, i64 381568}
!16 = !{!"p1 short", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"_ZTS20libraw_image_sizes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !8, i64 16, !20, i64 24, !8, i64 32, !9, i64 36, !19, i64 164, !9, i64 166}
!19 = !{!"short", !9, i64 0}
!20 = !{!"double", !9, i64 0}
!21 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !22, i64 432}
!22 = !{!"p1 omnipotent char", !17, i64 0}
!23 = !{!"_ZTS17libraw_lensinfo_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !19, i64 532, !25, i64 536, !26, i64 544, !27, i64 560}
!24 = !{!"float", !9, i64 0}
!25 = !{!"_ZTS18libraw_nikonlens_t", !24, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!26 = !{!"_ZTS16libraw_dnglens_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!27 = !{!"_ZTS24libraw_makernotes_lens_t", !28, i64 0, !9, i64 8, !19, i64 136, !19, i64 138, !28, i64 144, !19, i64 152, !19, i64 154, !9, i64 156, !19, i64 220, !9, i64 222, !9, i64 238, !24, i64 256, !24, i64 260, !24, i64 264, !24, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !28, i64 320, !9, i64 328, !28, i64 456, !9, i64 464, !28, i64 592, !9, i64 600, !19, i64 728, !24, i64 732}
!28 = !{!"long long", !9, i64 0}
!29 = !{!"_ZTS19libraw_makernotes_t", !30, i64 0, !32, i64 168, !34, i64 464, !35, i64 848, !36, i64 1200, !37, i64 1664, !38, i64 1848, !39, i64 2092, !40, i64 2160, !41, i64 2196, !42, i64 2648, !43, i64 2720, !44, i64 2856}
!30 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !19, i64 52, !19, i64 54, !9, i64 56, !19, i64 58, !19, i64 60, !19, i64 62, !19, i64 64, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !19, i64 80, !19, i64 82, !8, i64 84, !24, i64 88, !19, i64 92, !19, i64 94, !19, i64 96, !19, i64 98, !8, i64 100, !19, i64 104, !8, i64 108, !8, i64 112, !19, i64 116, !8, i64 120, !31, i64 124, !31, i64 132, !31, i64 140, !31, i64 148, !31, i64 156, !9, i64 164}
!31 = !{!"_ZTS13libraw_area_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!32 = !{!"_ZTS25libraw_nikon_makernotes_t", !20, i64 0, !19, i64 8, !19, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !19, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !19, i64 170, !33, i64 172, !19, i64 180, !19, i64 182, !19, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !22, i64 256, !19, i64 264, !19, i64 266, !9, i64 268, !19, i64 270, !20, i64 272, !20, i64 280, !20, i64 288}
!33 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!34 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !20, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!35 = !{!"_ZTS18libraw_fuji_info_t", !24, i64 0, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !19, i64 16, !19, i64 18, !9, i64 20, !9, i64 53, !24, i64 88, !19, i64 92, !19, i64 94, !9, i64 96, !19, i64 100, !8, i64 104, !8, i64 108, !19, i64 112, !9, i64 114, !19, i64 120, !19, i64 122, !19, i64 124, !19, i64 126, !19, i64 128, !8, i64 132, !19, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !19, i64 168, !8, i64 172, !19, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!36 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !19, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !19, i64 82, !9, i64 84, !19, i64 88, !19, i64 90, !9, i64 92, !9, i64 352, !19, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !19, i64 416, !19, i64 418, !19, i64 420, !19, i64 422, !20, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !19, i64 456, !19, i64 458}
!37 = !{!"_ZTS18libraw_sony_info_t", !19, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !19, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !19, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !19, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !19, i64 54, !8, i64 56, !19, i64 60, !9, i64 62, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !8, i64 80, !24, i64 84, !19, i64 88, !8, i64 92, !8, i64 96, !19, i64 100, !9, i64 102, !8, i64 124, !19, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !19, i64 138, !19, i64 140, !19, i64 142, !19, i64 144, !19, i64 146, !19, i64 148, !19, i64 150, !19, i64 152, !19, i64 154, !8, i64 156, !19, i64 160, !9, i64 162, !24, i64 180}
!38 = !{!"_ZTS25libraw_kodak_makernotes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !19, i64 228, !19, i64 230, !19, i64 232, !19, i64 234, !24, i64 236, !24, i64 240}
!39 = !{!"_ZTS29libraw_panasonic_makernotes_t", !19, i64 0, !19, i64 2, !9, i64 4, !8, i64 36, !24, i64 40, !9, i64 44, !19, i64 56, !19, i64 58, !8, i64 60, !8, i64 64}
!40 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !19, i64 12, !8, i64 16, !8, i64 20, !19, i64 24, !9, i64 26, !19, i64 30, !9, i64 32, !9, i64 33, !19, i64 34}
!41 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!42 = !{!"_ZTS25libraw_ricoh_makernotes_t", !19, i64 0, !9, i64 4, !9, i64 12, !19, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !20, i64 56, !20, i64 64}
!43 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !20, i64 88, !8, i64 96, !9, i64 100}
!44 = !{!"_ZTS24libraw_metadata_common_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !24, i64 52, !24, i64 56, !24, i64 60, !19, i64 64, !9, i64 66, !24, i64 196, !9, i64 200, !8, i64 296}
!45 = !{!"_ZTS21libraw_shootinginfo_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !9, i64 14, !9, i64 78}
!46 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !24, i64 128, !24, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !22, i64 168, !22, i64 176, !22, i64 184, !22, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !24, i64 248, !24, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !24, i64 288, !24, i64 292, !8, i64 296, !8, i64 300}
!47 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !24, i64 28, !9, i64 32, !48, i64 40}
!48 = !{!"p2 omnipotent char", !49, i64 0}
!49 = !{!"any p2 pointer", !17, i64 0}
!50 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !24, i64 147516, !24, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !51, i64 147876, !24, i64 147912, !24, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !17, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !52, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!51 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !24, i64 32}
!52 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !24, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !24, i64 32920, !24, i64 32924, !9, i64 32928}
!53 = !{!"_ZTS17libraw_imgother_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !54, i64 16, !8, i64 24, !9, i64 28, !55, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!54 = !{!"long", !9, i64 0}
!55 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !24, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!56 = !{!"_ZTS18libraw_thumbnail_t", !57, i64 0, !19, i64 4, !19, i64 6, !8, i64 8, !8, i64 12, !22, i64 16}
!57 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!58 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!59 = !{!"_ZTS16libraw_rawdata_t", !17, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !16, i64 56, !16, i64 64, !21, i64 72, !18, i64 512, !61, i64 696, !50, i64 712}
!60 = !{!"p1 float", !17, i64 0}
!61 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 12, !19, i64 14}
!62 = !{!"p1 _ZTS10LibRaw_TLS", !17, i64 0}
!63 = !{!"_ZTS22libraw_internal_data_t", !64, i64 0, !61, i64 64, !67, i64 80, !69, i64 96, !70, i64 136}
!64 = !{!"_ZTS15internal_data_t", !65, i64 0, !66, i64 8, !8, i64 16, !22, i64 24, !28, i64 32, !28, i64 40, !9, i64 48}
!65 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !17, i64 0}
!66 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!67 = !{!"_ZTS13output_data_t", !68, i64 0, !68, i64 8}
!68 = !{!"p1 int", !17, i64 0}
!69 = !{!"_ZTS15identify_data_t", !8, i64 0, !28, i64 8, !28, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!70 = !{!"_ZTS15unpacker_data_t", !19, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !71, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !28, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !72, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !19, i64 2496, !19, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !19, i64 2608}
!71 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!72 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !19, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !19, i64 148, !19, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!73 = !{!"p1 _ZTS6decode", !17, i64 0}
!74 = !{!"_ZTS13libraw_memmgr", !49, i64 0, !8, i64 8}
!75 = !{!"_ZTS18libraw_callbacks_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144}
!76 = !{!14, !19, i64 193494}
!77 = !{!14, !19, i64 193492}
!78 = !{!14, !65, i64 381592}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !10, i64 0}
!81 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !83, file: !82, line: 104, type: !84, scopeLine: 104, containingType: !83, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!82 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!83 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !82, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !87, line: 109, baseType: !88)
!87 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!88 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!90 = !{!14, !19, i64 20}
!91 = !{!14, !19, i64 22}
!92 = !{!14, !19, i64 30}
!93 = !{!14, !19, i64 28}
!94 = !{!14, !8, i64 381860}
!95 = !{!14, !8, i64 540}
!96 = !{!14, !8, i64 544}
!97 = !{!14, !16, i64 8}
!98 = !{!14, !71, i64 381824}
!99 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !83, file: !82, line: 102, type: !100, scopeLine: 102, containingType: !83, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !89, !86, !102}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!14, !8, i64 193500}
!104 = !{!14, !8, i64 193496}
!105 = !{!14, !8, i64 153096}
!106 = !{!24, !24, i64 0}
!107 = !{!14, !8, i64 524}
!108 = !{!19, !19, i64 0}
!109 = distinct !{!109, !110, !111}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!8, !8, i64 0}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !110, !115}
!115 = !{!"llvm.loop.unswitch.partial.disable"}
!116 = distinct !{!116, !110, !115}
!117 = distinct !{!117, !110}
!118 = distinct !{!118, !110}
!119 = distinct !{!119, !110}
!120 = !{!14, !68, i64 381672}
!121 = !{!14, !19, i64 381670}
!122 = !{!14, !8, i64 5384}
!123 = !{!14, !8, i64 5496}
!124 = distinct !{!124, !110}
!125 = distinct !{!125, !110}
!126 = !{!20, !20, i64 0}
!127 = !{!14, !24, i64 5368}
!128 = !{!14, !8, i64 48}
!129 = !{!14, !8, i64 5552}
!130 = !{!14, !22, i64 193504}
!131 = distinct !{!131, !110}
!132 = distinct !{!132, !110, !115}
!133 = !{!9, !9, i64 0}
!134 = distinct !{!134, !110}
!135 = !{!14, !9, i64 768416}
!136 = !{!14, !57, i64 193488}
end_hunk_1
