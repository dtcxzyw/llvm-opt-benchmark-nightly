Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/apriltag_quad_thresh?download=true
inline.NumInlined: 743
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2cv5aruco8fit_quadERKNS0_18DetectorParametersENS_3MatEPNS0_6zarrayEPNS0_5sQuadE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %.val332, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 7
  %i.ac = load i16, ptr %i.n, align 4, !tbaa !36
  %i.ad = load i16, ptr %i.p, align 4, !tbaa !36
  %i.ae = load i16, ptr %i.r, align 4, !tbaa !36
  %i.af = load i16, ptr %i.t, align 4, !tbaa !36
  %i.ag = insertelement <4 x i16> poison, i16 %i.ac, i64 0
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 1
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 2
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 3
  %i.ak = load i16, ptr %i.v, align 4, !tbaa !36
  %i.al = load i16, ptr %i.x, align 4, !tbaa !36
  %i.am = load i16, ptr %i.z, align 4, !tbaa !36
  %i.an = load i16, ptr %i.ab, align 4, !tbaa !36
  %i.ao = insertelement <4 x i16> poison, i16 %i.ak, i64 0
  %i.ap = insertelement <4 x i16> %i.ao, i16 %i.al, i64 1
  %i.aq = insertelement <4 x i16> %i.ap, i16 %i.am, i64 2
  %i.ar = insertelement <4 x i16> %i.aq, i16 %i.an, i64 3
  %i.as = zext <4 x i16> %i.aj to <4 x i32>       ; 2 uses
  %i.at = zext <4 x i16> %i.ar to <4 x i32>       ; 2 uses
  %i.au = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.as) ; 2 uses
  %i.av = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi487, <4 x i32> %i.at) ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi488, <4 x i32> %i.as) ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi489, <4 x i32> %i.at) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !37
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !37
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !37
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !37
  %i.bk = insertelement <4 x i16> poison, i16 %i.bg, i64 0
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.bh, i64 1
  %i.bm = insertelement <4 x i16> %i.bl, i16 %i.bi, i64 2
  %i.bn = insertelement <4 x i16> %i.bm, i16 %i.bj, i64 3
  %i.bo = load i16, ptr %i.bc, align 2, !tbaa !37
  %i.bp = load i16, ptr %i.bd, align 2, !tbaa !37
  %i.bq = load i16, ptr %i.be, align 2, !tbaa !37
  %i.br = load i16, ptr %i.bf, align 2, !tbaa !37
  %i.bs = insertelement <4 x i16> poison, i16 %i.bo, i64 0
  %i.bt = insertelement <4 x i16> %i.bs, i16 %i.bp, i64 1
  %i.bu = insertelement <4 x i16> %i.bt, i16 %i.bq, i64 2
  %i.bv = insertelement <4 x i16> %i.bu, i16 %i.br, i64 3
  %i.bw = zext <4 x i16> %i.bn to <4 x i32>       ; 2 uses
  %i.bx = zext <4 x i16> %i.bv to <4 x i32>       ; 2 uses
  %i.by = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi490, <4 x i32> %i.bw) ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi491, <4 x i32> %i.bx) ; 2 uses
  %i.ca = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi492, <4 x i32> %i.bw) ; 2 uses
  %i.cb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi493, <4 x i32> %i.bx) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.cd = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax494 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aw, <4 x i32> %i.ax)
  %i.ce = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax494) ; 2 uses
  %rdx.minmax495 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.by, <4 x i32> %i.bz)
  %i.cf = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax495) ; 2 uses
  %rdx.minmax496 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ca, <4 x i32> %i.cb)
  %i.cg = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax496) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader373, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader373 ], [ %n.vec, %middle.block ] ; 4 uses
  %.0277379.ph = phi i32 [ 0, %.preheader373 ], [ %i.cd, %middle.block ] ; 2 uses
  %.0278378.ph = phi i32 [ 2147483647, %.preheader373 ], [ %i.ce, %middle.block ] ; 2 uses
  %.0280377.ph = phi i32 [ 0, %.preheader373 ], [ %i.cf, %middle.block ] ; 2 uses
  %.0281376.ph = phi i32 [ 2147483647, %.preheader373 ], [ %i.cg, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ch = mul i64 %.val331, %indvars.iv.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.ck = load i16, ptr %i.ci, align 4, !tbaa !36
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %.0277..prol = tail call i32 @llvm.umax.i32(i32 %.0277379.ph, i32 %i.cl) ; 2 uses
  %i.cm = tail call i32 @llvm.umin.i32(i32 %.0278378.ph, i32 %i.cl) ; 2 uses
  %i.cn = load i16, ptr %i.cj, align 2, !tbaa !37
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = tail call i32 @llvm.umax.i32(i32 %.0280377.ph, i32 %i.co) ; 2 uses
  %i.cq = tail call i32 @llvm.umin.i32(i32 %.0281376.ph, i32 %i.co) ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0277..lcssa516.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %.0277..prol, %scalar.ph.prol ]
  %.lcssa515.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %.lcssa514.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %.lcssa513.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.0277379.unr = phi i32 [ %.0277379.ph, %scalar.ph.preheader ], [ %.0277..prol, %scalar.ph.prol ]
  %.0278378.unr = phi i32 [ %.0278378.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %.0280377.unr = phi i32 [ %.0280377.ph, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %.0281376.unr = phi i32 [ %.0281376.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %i.cr = add nsw i64 %wide.trip.count, -1
  %i.cs = icmp eq i64 %indvars.iv.ph, %i.cr
  br i1 %i.cs, label %.lr.ph, label %scalar.ph

.lr.ph:                                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.0277..lcssa = phi i32 [ %i.cd, %middle.block ], [ %.0277..lcssa516.unr, %scalar.ph.prol.loopexit ], [ %.0277..1, %scalar.ph ]
  %.lcssa486 = phi i32 [ %i.ce, %middle.block ], [ %.lcssa515.unr, %scalar.ph.prol.loopexit ], [ %i.dp, %scalar.ph ]
  %.lcssa485 = phi i32 [ %i.cf, %middle.block ], [ %.lcssa514.unr, %scalar.ph.prol.loopexit ], [ %i.ds, %scalar.ph ]
  %.lcssa484 = phi i32 [ %i.cg, %middle.block ], [ %.lcssa513.unr, %scalar.ph.prol.loopexit ], [ %i.dt, %scalar.ph ]
  %i.ct = add nuw nsw i32 %.0277..lcssa, %.lcssa486
  %i.cu = add nuw nsw i32 %.lcssa485, %.lcssa484
  %i.cv = uitofp nneg i32 %i.ct to double
  %i.cw = uitofp nneg i32 %i.cu to double
  %i.cx = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cw, i64 1
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> splat (double 5.000000e-01), <2 x double> <double 5.118000e-02, double -2.858100e-02>)
  br label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0277379 = phi i32 [ %.0277..1, %scalar.ph ], [ %.0277379.unr, %scalar.ph.prol.loopexit ]
  %.0278378 = phi i32 [ %i.dp, %scalar.ph ], [ %.0278378.unr, %scalar.ph.prol.loopexit ]
  %.0280377 = phi i32 [ %i.ds, %scalar.ph ], [ %.0280377.unr, %scalar.ph.prol.loopexit ]
  %.0281376 = phi i32 [ %i.dt, %scalar.ph ], [ %.0281376.unr, %scalar.ph.prol.loopexit ]
  %i.da = mul i64 %.val331, %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i16, ptr %i.db, align 4, !tbaa !36
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %.0277. = tail call i32 @llvm.umax.i32(i32 %.0277379, i32 %i.de)
  %i.df = tail call i32 @llvm.umin.i32(i32 %.0278378, i32 %i.de)
  %i.dg = load i16, ptr %i.dc, align 2, !tbaa !37
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  %i.di = tail call i32 @llvm.umax.i32(i32 %.0280377, i32 %i.dh)
  %i.dj = tail call i32 @llvm.umin.i32(i32 %.0281376, i32 %i.dh)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dk = mul i64 %.val331, %indvars.iv.next
  %i.dl = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = load i16, ptr %i.dl, align 4, !tbaa !36
  %i.do = zext i16 %i.dn to i32                   ; 2 uses
  %.0277..1 = tail call i32 @llvm.umax.i32(i32 %.0277., i32 %i.do) ; 2 uses
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.df, i32 %i.do) ; 2 uses
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !37
  %i.dr = zext i16 %i.dq to i32                   ; 2 uses
  %i.ds = tail call i32 @llvm.umax.i32(i32 %i.di, i32 %i.dr) ; 2 uses
  %i.dt = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 %i.dr) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.lr.ph, label %scalar.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.h
  %i.du = fcmp olt double %i.en, 0.000000e+00
  br i1 %i.du, label %bb.ao, label %.lr.ph386.preheader

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv403 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next404, %bb.h ] ; 2 uses
  %.0285381 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.en, %bb.h ]
  %.val329 = load i64, ptr %2, align 8, !tbaa !32
  %.val330 = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.dv = mul i64 %.val329, %indvars.iv403
  %i.dw = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.dv ; 3 uses
  %i.dx = load <2 x i16>, ptr %i.dw, align 4, !tbaa !40
  %i.dy = uitofp <2 x i16> %i.dx to <2 x double>
  %i.dz = fsub <2 x double> %i.dy, %i.cz          ; 3 uses
  %i.ea = fptrunc <2 x double> %i.dz to <2 x float> ; 2 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0
  %i.ec = extractelement <2 x float> %i.ea, i64 1
  %i.ed = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.ec, float noundef %i.eb)
  %i.ee = fmul float %i.ed, f0x3C8EFA35
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store float %i.ee, ptr %i.ef, align 4, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eh = load <2 x i16>, ptr %i.eg, align 4, !tbaa !40
  %i.ei = sitofp <2 x i16> %i.eh to <2 x double>  ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.dz, %i.ei
  %i.ej = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ek = extractelement <2 x double> %i.dz, i64 0
  %i.el = extractelement <2 x double> %i.ei, i64 0
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.el, double %i.ej)
  %i.en = fadd double %.0285381, %i.em            ; 2 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count
  br i1 %exitcond407.not, label %._crit_edge, label %bb.h, !llvm.loop !116

.lr.ph386.preheader:                              ; preds = %._crit_edge
  %i.eo = load ptr, ptr %i.m, align 8, !tbaa !33
  tail call fastcc void @_ZN2cv5arucoL6ptsortEPNS0_2ptEi(ptr noundef %i.eo, i32 noundef %.val320)
  %.val328 = load ptr, ptr %i.m, align 8, !tbaa !33 ; 2 uses
  %wide.trip.count411 = zext nneg i32 %.val320 to i64
  %.val325.pre443 = load i64, ptr %2, align 8, !tbaa !32
  br label %.lr.ph386

._crit_edge387:                                   ; preds = %bb.m
  store i32 %.1288, ptr %i.k, align 8, !tbaa !31
  %i.ep = icmp slt i32 %.1288, 4
  br i1 %i.ep, label %bb.ao, label %bb.n

.lr.ph386:                                        ; preds = %.lr.ph386.preheader, %bb.m
  %.val326 = phi ptr [ %.val328, %.lr.ph386.preheader ], [ %.val326448, %bb.m ] ; 4 uses
  %.val325 = phi i64 [ %.val325.pre443, %.lr.ph386.preheader ], [ %.val325444, %bb.m ] ; 4 uses
  %indvars.iv408 = phi i64 [ 1, %.lr.ph386.preheader ], [ %indvars.iv.next409, %bb.m ] ; 3 uses
  %.0287384 = phi i32 [ 1, %.lr.ph386.preheader ], [ %.1288, %bb.m ] ; 4 uses
  %.0348382 = phi ptr [ %.val328, %.lr.ph386.preheader ], [ %i.er, %bb.m ] ; 2 uses
  %i.eq = mul i64 %.val325, %indvars.iv408
  %i.er = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.eq ; 4 uses
  %i.es = load i16, ptr %i.er, align 4, !tbaa !36
  %i.et = load i16, ptr %.0348382, align 4, !tbaa !36
  %.not311 = icmp eq i16 %i.es, %i.et
  br i1 %.not311, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph386
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %.0348382, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !37
  %.not312 = icmp eq i16 %i.ev, %i.ex
  br i1 %.not312, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph386
  %i.ey = zext i32 %.0287384 to i64
  %.not313 = icmp eq i64 %indvars.iv408, %i.ey
  br i1 %.not313, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ez = sext i32 %.0287384 to i64
  %i.fa = mul i64 %.val325, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.fa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fb, ptr noundef nonnull align 4 dereferenceable(12) %i.er, i64 12, i1 false)
  %.val325.pre = load i64, ptr %2, align 8, !tbaa !32
  %.val326.pre = load ptr, ptr %i.m, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val326449 = phi ptr [ %.val326.pre, %bb.k ], [ %.val326, %bb.j ]
  %.val325445 = phi i64 [ %.val325.pre, %bb.k ], [ %.val325, %bb.j ]
  %i.fc = add nsw i32 %.0287384, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.val326448 = phi ptr [ %.val326449, %bb.l ], [ %.val326, %bb.i ]
  %.val325444 = phi i64 [ %.val325445, %bb.l ], [ %.val325, %bb.i ]
  %.1288 = phi i32 [ %i.fc, %bb.l ], [ %.0287384, %bb.i ] ; 10 uses
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count411
  br i1 %exitcond412.not, label %._crit_edge387, label %.lr.ph386, !llvm.loop !117

bb.n:                                             ; preds = %._crit_edge387
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.fd = zext nneg i32 %.1288 to i64             ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.fe, ptr %6, align 8, !tbaa !121
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %.1288, 64
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !122
  br i1 %.not.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fg = mul nuw nsw i64 %i.fd, 48
  %i.fh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fg) #24 ; 2 uses
  store ptr %i.fh, ptr %6, align 8, !tbaa !121
  %.pre = load i64, ptr %i.ff, align 8, !tbaa !122
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fi = phi i64 [ %i.fd, %bb.n ], [ %.pre, %bb.o ]
  %i.fj = phi ptr [ %i.fe, %bb.n ], [ %i.fh, %bb.o ] ; 13 uses
  %i.fk = mul i64 %i.fi, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fj, i8 0, i64 %i.fk, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count417 = zext nneg i32 %.1288 to i64
  %.val321.peel = load i64, ptr %2, align 8, !tbaa !32
  %.val322.peel = load ptr, ptr %i.m, align 8, !tbaa !33 ; 2 uses
  %i.fo = load <2 x i16>, ptr %.val322.peel, align 4, !tbaa !40
  %i.fp = uitofp <2 x i16> %i.fo to <2 x double>
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double 5.000000e-01)) ; 5 uses
  %i.fr = extractelement <2 x double> %i.fq, i64 0
  %i.fs = call double @llvm.floor.f64(double %i.fr)
  %i.ft = fptosi double %i.fs to i32              ; 5 uses
  %i.fu = extractelement <2 x double> %i.fq, i64 1 ; 2 uses
  %i.fv = call double @llvm.floor.f64(double %i.fu)
  %i.fw = fptosi double %i.fv to i32              ; 4 uses
  %.not369.peel = icmp eq i32 %i.ft, 0
  br i1 %.not369.peel, label %.peel.next, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fx = add nuw nsw i32 %i.ft, 1
  %i.fy = load i32, ptr %i.fl, align 4, !tbaa !48 ; 4 uses
  %i.fz = icmp slt i32 %i.fx, %i.fy
  %i.ga = icmp ne i32 %i.fw, 0
  %or.cond.peel = and i1 %i.ga, %i.fz
  br i1 %or.cond.peel, label %bb.r, label %.peel.next

bb.r:                                             ; preds = %bb.q
  %i.gb = add nuw nsw i32 %i.fw, 1                ; 2 uses
  %i.gc = load i32, ptr %i.fm, align 8, !tbaa !49
  %i.gd = icmp slt i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.s, label %.peel.next

bb.s:                                             ; preds = %bb.r
  %i.ge = load ptr, ptr %i.fn, align 8, !tbaa !50 ; 3 uses
  %i.gf = mul nsw i32 %i.fy, %i.fw
  %i.gg = add nuw nsw i32 %i.gf, %i.ft
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !18
  %i.gl = zext i8 %i.gk to i32
  %i.gm = getelementptr i8, ptr %i.gi, i64 -1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !18
  %i.go = zext i8 %i.gn to i32
  %i.gp = sub nsw i32 %i.gl, %i.go                ; 2 uses
  %i.gq = mul nsw i32 %i.fy, %i.gb
  %i.gr = add nuw nsw i32 %i.gq, %i.ft
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !18
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add nsw i32 %i.fw, -1
  %i.gx = mul nsw i32 %i.fy, %i.gw
  %i.gy = add nuw nsw i32 %i.gx, %i.ft
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !18
  %i.hc = zext i8 %i.hb to i32
  %i.hd = sub nsw i32 %i.gv, %i.hc                ; 2 uses
  %i.he = mul nsw i32 %i.gp, %i.gp
  %i.hf = mul nsw i32 %i.hd, %i.hd
  %i.hg = add nuw nsw i32 %i.hf, %i.he
  %i.hh = uitofp nneg i32 %i.hg to double
  %sqrt.peel = call double @llvm.sqrt.f64(double %i.hh)
  %i.hi = fadd double %sqrt.peel, 1.000000e+00
  br label %.peel.next

.peel.next:                                       ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.0289.peel = phi double [ %i.hi, %bb.s ], [ 1.000000e+00, %bb.r ], [ 1.000000e+00, %bb.q ], [ 1.000000e+00, %bb.p ] ; 2 uses
  %i.hj = load <2 x double>, ptr %i.fj, align 8, !tbaa !20
  %i.hk = insertelement <2 x double> poison, double %.0289.peel, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.fq, <2 x double> %i.hj)
  store <2 x double> %i.hm, ptr %i.fj, align 8, !tbaa !20
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !124
  %i.hq = fmul <2 x double> %i.fq, %i.hl          ; 2 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 0
  %i.hs = call double @llvm.fmuladd.f64(double %i.hr, double %i.fu, double %i.hp)
  store double %i.hs, ptr %i.ho, align 8, !tbaa !124
  %i.ht = load <2 x double>, ptr %i.hn, align 8, !tbaa !20
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.fq, <2 x double> %i.ht)
  store <2 x double> %i.hu, ptr %i.hn, align 8, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fj, i64 40 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !125
  %i.hx = fadd double %.0289.peel, %i.hw
  store double %i.hx, ptr %i.hv, align 8, !tbaa !125
  br label %bb.t

._crit_edge391:                                   ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.val = load i32, ptr %i.k, align 8, !tbaa !31
  %i.hy = invoke noundef i32 @_ZN2cv5aruco19quad_segment_maximaERKNS0_18DetectorParametersEiPNS0_11line_fit_ptEPi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.val, ptr noundef nonnull %i.fj, ptr noundef nonnull %i.a)
          to label %bb.y unwind label %bb.z

bb.t:                                             ; preds = %.peel.next, %bb.x
  %indvars.iv413 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next414, %bb.x ] ; 4 uses
  %i.hz = mul i64 %.val321.peel, %indvars.iv413
  %i.ia = getelementptr inbounds nuw i8, ptr %.val322.peel, i64 %i.hz
  %i.ib = getelementptr inbounds nuw [48 x i8], ptr %i.fj, i64 %indvars.iv413 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ib, ptr noundef nonnull align 8 dereferenceable(48) %i.ic, i64 48, i1 false)
  %i.id = load <2 x i16>, ptr %i.ia, align 4, !tbaa !40
  %i.ie = uitofp <2 x i16> %i.id to <2 x double>
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double 5.000000e-01)) ; 5 uses
  %i.ig = extractelement <2 x double> %i.if, i64 0
  %i.ih = call double @llvm.floor.f64(double %i.ig)
  %i.ii = fptosi double %i.ih to i32              ; 5 uses
  %i.ij = extractelement <2 x double> %i.if, i64 1 ; 2 uses
  %i.ik = call double @llvm.floor.f64(double %i.ij)
  %i.il = fptosi double %i.ik to i32              ; 4 uses
  %.not369 = icmp eq i32 %i.ii, 0
  br i1 %.not369, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.im = add nuw nsw i32 %i.ii, 1
  %i.in = load i32, ptr %i.fl, align 4, !tbaa !48 ; 4 uses
  %i.io = icmp slt i32 %i.im, %i.in
  %i.ip = icmp ne i32 %i.il, 0
  %or.cond = and i1 %i.ip, %i.io
  br i1 %or.cond, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.iq = add nuw nsw i32 %i.il, 1                ; 2 uses
  %i.ir = load i32, ptr %i.fm, align 8, !tbaa !49
  %i.is = icmp slt i32 %i.iq, %i.ir
  br i1 %i.is, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.it = load ptr, ptr %i.fn, align 8, !tbaa !50 ; 3 uses
  %i.iu = mul nsw i32 %i.in, %i.il
  %i.iv = add nuw nsw i32 %i.iu, %i.ii
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !18
  %i.ja = zext i8 %i.iz to i32
  %i.jb = getelementptr i8, ptr %i.ix, i64 -1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !18
  %i.jd = zext i8 %i.jc to i32
  %i.je = sub nsw i32 %i.ja, %i.jd                ; 2 uses
  %i.jf = mul nsw i32 %i.in, %i.iq
  %i.jg = add nuw nsw i32 %i.jf, %i.ii
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = zext i8 %i.jj to i32
  %i.jl = add nsw i32 %i.il, -1
  %i.jm = mul nsw i32 %i.in, %i.jl
  %i.jn = add nuw nsw i32 %i.jm, %i.ii
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !18
  %i.jr = zext i8 %i.jq to i32
  %i.js = sub nsw i32 %i.jk, %i.jr                ; 2 uses
  %i.jt = mul nsw i32 %i.je, %i.je
  %i.ju = mul nsw i32 %i.js, %i.js
  %i.jv = add nuw nsw i32 %i.ju, %i.jt
  %i.jw = uitofp nneg i32 %i.jv to double
  %sqrt = call double @llvm.sqrt.f64(double %i.jw)
  %i.jx = fadd double %sqrt, 1.000000e+00
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.0289 = phi double [ %i.jx, %bb.w ], [ 1.000000e+00, %bb.v ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %bb.t ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [48 x i8], ptr %i.fj, i64 %indvars.iv413 ; 5 uses
  %i.jz = load <2 x double>, ptr %i.jy, align 8, !tbaa !20
  %i.ka = insertelement <2 x double> poison, double %.0289, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.if, <2 x double> %i.jz)
  store <2 x double> %i.kc, ptr %i.jy, align 8, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
end_hunk_0
