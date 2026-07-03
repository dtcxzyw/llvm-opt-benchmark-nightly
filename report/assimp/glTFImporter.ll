inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
  %i.cl = add i64 %.1.i.i, 1
  %i.cm = lshr exact i64 %i.cl, 1
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = lshr exact i64 %.1.i.i, 1
  %i.cp = select i1 %.not.i2.i, i64 %i.co, i64 %i.cn
  %i.cq = trunc i64 %i.cp to i8
  %i.cr = load i64, ptr %i.bn, align 8            ; 6 uses
  %i.cs = load i64, ptr %i.bf, align 8
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.y, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.loopexit521
  %.pre.i = load ptr, ptr %i.be, align 8
  br label %bb.ac

bb.y:                                             ; preds = %.loopexit521
  %i.cu = shl i64 %i.cr, 1
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.bf, align 8
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i) #32
          to label %.noexc320 unwind label %bb.ad ; 3 uses

.noexc320:                                        ; preds = %bb.y
  %.not.i319 = icmp eq i64 %i.cr, 0
  br i1 %.not.i319, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.noexc320
  %i.cw = load ptr, ptr %i.be, align 8            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %i.cw, i64 %i.cr, i1 false)
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #29
  %.pre6.pre.i = load i64, ptr %i.bn, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.noexc320
  %.pre6.i = phi i64 [ %i.cr, %bb.z ], [ %.pre6.pre.i, %bb.aa ], [ 0, %.noexc320 ]
  store ptr %i.cv, ptr %i.be, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.cy = phi i64 [ %i.cr, %._crit_edge.i ], [ %.pre6.i, %bb.ab ] ; 2 uses
  %i.cz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cv, %bb.ab ]
  %i.da = add i64 %i.cy, 1
  store i64 %i.da, ptr %i.bn, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 %i.cq, ptr %i.db, align 1
  %i.dc = add nuw i64 %.0240564, 1                ; 2 uses
  %exitcond632.not = icmp eq i64 %i.dc, %2
  br i1 %exitcond632.not, label %.loopexit523, label %.lr.ph565, !llvm.loop !810

bb.ad:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

bb.ae:                                            ; preds = %_ZN5o3dgc6VectorIcE8AllocateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %17, i32 noundef 12)
          to label %.preheader524 unwind label %bb.af

.preheader524:                                    ; preds = %bb.ae
  %.not608 = icmp eq i64 %2, 0
  br i1 %.not608, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.al, %.preheader524
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.loopexit523

bb.af:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph:                                           ; preds = %.preheader524, %bb.al
  %.0243563 = phi i64 [ %i.dz, %bb.al ], [ 0, %.preheader524 ]
  %i.df = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %17)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %.lr.ph
  %i.dg = zext i32 %i.df to i64                   ; 3 uses
  %i.dh = and i64 %i.dg, 1
  %.not.i321 = icmp eq i64 %i.dh, 0
  %i.di = add nuw nsw i64 %i.dg, 1
  %i.dj = lshr exact i64 %i.di, 1
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = lshr exact i64 %i.dg, 1
  %i.dm = select i1 %.not.i321, i64 %i.dl, i64 %i.dk
  %i.dn = trunc i64 %i.dm to i8
  %i.do = load i64, ptr %i.bn, align 8            ; 6 uses
  %i.dp = load i64, ptr %i.bf, align 8
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.ah, label %._crit_edge.i322

._crit_edge.i322:                                 ; preds = %bb.ag
  %.pre.i323 = load ptr, ptr %i.be, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dr = shl i64 %i.do, 1
  %spec.select.i324 = call i64 @llvm.umax.i64(i64 %i.dr, i64 32) ; 2 uses
  store i64 %spec.select.i324, ptr %i.bf, align 8
  %i.ds = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i324) #32
          to label %.noexc328 unwind label %bb.am ; 3 uses

.noexc328:                                        ; preds = %bb.ah
  %.not.i325 = icmp eq i64 %i.do, 0
  br i1 %.not.i325, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.noexc328
  %i.dt = load ptr, ptr %i.be, align 8            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %i.dt, i64 %i.do, i1 false)
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #29
  %.pre6.pre.i326 = load i64, ptr %i.bn, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.noexc328
  %.pre6.i327 = phi i64 [ %i.do, %bb.ai ], [ %.pre6.pre.i326, %bb.aj ], [ 0, %.noexc328 ]
  store ptr %i.ds, ptr %i.be, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i322
  %i.dv = phi i64 [ %i.do, %._crit_edge.i322 ], [ %.pre6.i327, %bb.ak ] ; 2 uses
  %i.dw = phi ptr [ %.pre.i323, %._crit_edge.i322 ], [ %i.ds, %bb.ak ]
  %i.dx = add i64 %i.dv, 1
  store i64 %i.dx, ptr %i.bn, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  store i8 %i.dn, ptr %i.dy, align 1
  %i.dz = add nuw i64 %.0243563, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dz, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !811

bb.am:                                            ; preds = %bb.ah, %.lr.ph
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #28
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.am ], [ %i.de, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.loopexit.split-lp509

.loopexit523:                                     ; preds = %bb.ac, %.preheader522, %._crit_edge
  %i.eb = invoke noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE14ProcessNormalsERKNS_14IndexedFaceSetItEE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef nonnull align 8 dereferenceable(80000) %8)
          to label %bb.ao unwind label %bb.x      ; 0 uses

bb.ao:                                            ; preds = %.loopexit523, %bb.q
  %.0214 = phi i64 [ %3, %bb.q ], [ 2, %.loopexit523 ] ; 29 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = icmp ult i64 %i.ed, %i.h
  br i1 %i.ee, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i64 %i.h, ptr %i.ec, align 8
  %i.ei = icmp ugt i64 %i.h, 2305843009213693951
  %i.ej = shl nuw i64 %i.h, 3
  %i.ek = select i1 %i.ei, i64 -1, i64 %i.ej
  %i.el = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #32
          to label %bb.as unwind label %bb.x

bb.as:                                            ; preds = %bb.ar
  store ptr %i.el, ptr %i.ef, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %i.em = icmp sgt i64 %2, 0                      ; 2 uses
  br i1 %i.em, label %.lr.ph599, label %._crit_edge600

.lr.ph599:                                        ; preds = %bb.at
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %.not610 = icmp eq i64 %.0214, 0                ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 7 uses
  %i.eq = zext i32 %.0237 to i64                  ; 3 uses
  %i.er = shl nuw i64 %.0214, 3                   ; 3 uses
  %i.es = add i64 %i.c, 24
  %i.et = shl i64 %4, 3
  %i.eu = add i64 %i.c, 24
  %i.ev = shl i64 %4, 3
  %i.ew = add i64 %i.c, 24
  %i.ex = shl i64 %4, 3
  %min.iters.check = icmp ult i64 %.0214, 12
  %n.vec = and i64 %.0214, -4                     ; 3 uses
  %cmp.n = icmp eq i64 %.0214, %n.vec
  %xtraiter850 = and i64 %.0214, 1
  %lcmp.mod851.not = icmp eq i64 %xtraiter850, 0
  br label %bb.au

._crit_edge600:                                   ; preds = %.loopexit517, %bb.at
  %.1468.lcssa = phi i64 [ %.0467, %bb.at ], [ %.3470, %.loopexit517 ]
  store i64 %.1468.lcssa, ptr %0, align 8
  %i.ey = load i32, ptr %9, align 4
  %i.ez = icmp eq i32 %i.ey, 6
  br i1 %i.ez, label %bb.cw, label %bb.da

bb.au:                                            ; preds = %.lr.ph599, %.loopexit517
  %.0244595 = phi i64 [ 0, %.lr.ph599 ], [ %i.wa, %.loopexit517 ] ; 17 uses
  %.1468594 = phi i64 [ %.0467, %.lr.ph599 ], [ %.3470, %.loopexit517 ] ; 7 uses
  %i.fa = load ptr, ptr %i.en, align 8            ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0244595 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  %.not487 = icmp eq i64 %.0244595, 0             ; 3 uses
  br i1 %.not487, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr i8, ptr %i.fb, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.au, %bb.av
  %i.ff = phi i64 [ %i.fe, %bb.av ], [ 0, %bb.au ]
  %i.fg = icmp sgt i64 %i.fc, %i.ff
  br i1 %i.fg, label %bb.aw, label %.critedge298.thread

bb.aw:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.fh = load i32, ptr %9, align 4               ; 3 uses
  %.not268 = icmp eq i32 %i.fh, 0
  br i1 %.not268, label %.critedge298.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not487, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr i8, ptr %i.fb, i64 -8
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = shl i64 %i.fj, 32
  %i.fl = ashr exact i64 %i.fk, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.ax, %bb.ay
  %sext = phi i64 [ %i.fl, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %sext269 = shl i64 %i.fc, 32
  %i.fm = ashr exact i64 %sext269, 32             ; 2 uses
  %i.fn = icmp slt i64 %sext, %i.fm
  br i1 %i.fn, label %.lr.ph582, label %.critedge298.thread

.lr.ph582:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.fo = icmp eq i32 %i.fh, 5
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph582, %.loopexit516
  %.0245581 = phi i64 [ %sext, %.lr.ph582 ], [ %i.px, %.loopexit516 ] ; 2 uses
  %.0464580 = phi i64 [ 0, %.lr.ph582 ], [ %.7, %.loopexit516 ] ; 5 uses
  %i.fp = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %.0245581
  %i.fr = load i64, ptr %i.fq, align 8            ; 3 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  br i1 %i.fs, label %bb.ba, label %.critedge298

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fo, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %.idx488 = mul nuw nsw i64 %i.fr, 6
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx488 ; 3 uses
  %i.fu = load i16, ptr %i.ft, align 2
  %i.fv = zext i16 %i.fu to i64                   ; 3 uses
  %i.fw = icmp eq i64 %.0244595, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = zext i16 %i.fy to i64                   ; 3 uses
  br i1 %i.fw, label %.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ga = icmp eq i64 %.0244595, %i.fz
  br i1 %i.ga, label %.sink.split, label %bb.bd

.sink.split:                                      ; preds = %bb.bc, %bb.bb
  %.0471.ph = phi i64 [ %i.fz, %bb.bb ], [ %i.fv, %bb.bc ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = zext i16 %i.gc to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %bb.bc
  %.0472 = phi i64 [ %i.fz, %bb.bc ], [ %i.gd, %.sink.split ] ; 8 uses
  %.0471 = phi i64 [ %i.fv, %bb.bc ], [ %.0471.ph, %.sink.split ] ; 11 uses
  %i.ge = icmp samesign ult i64 %.0471, %.0244595
  %i.gf = icmp samesign ult i64 %.0472, %.0244595
  %or.cond294 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond294, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %bb.bd
  %.not489 = icmp eq i64 %.0471, 0
  br i1 %.not489, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gg = getelementptr [8 x i8], ptr %i.fa, i64 %.0471
  %i.gh = getelementptr i8, ptr %i.gg, i64 -8
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = shl i64 %i.gi, 32
  %i.gk = ashr exact i64 %i.gj, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330:        ; preds = %bb.be, %bb.bf
  %sext270 = phi i64 [ %i.gk, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0471
  %i.gm = load i64, ptr %i.gl, align 8
  %sext271 = shl i64 %i.gm, 32
  %i.gn = ashr exact i64 %sext271, 32             ; 2 uses
  %i.go = icmp slt i64 %sext270, %i.gn
  br i1 %i.go, label %.lr.ph573, label %.critedge.thread

.lr.ph573:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330
  %i.gp = call i64 @llvm.umin.i64(i64 %.0472, i64 %.0471) ; 3 uses
  %i.gq = call i64 @llvm.umax.i64(i64 %.0472, i64 %.0471) ; 3 uses
  %i.gr = mul i64 %.0471, %4
  %i.gs = mul i64 %.0472, %4
  %i.gt = mul i64 %i.ev, %.0472
  %i.gu = mul i64 %i.ex, %.0471
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph573, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0246572 = phi i64 [ %sext270, %.lr.ph573 ], [ %i.lg, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1465571 = phi i64 [ %.0464580, %.lr.ph573 ], [ %.2466, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 12 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %.0246572
  %i.gw = load i64, ptr %i.gv, align 8            ; 2 uses
  %i.gx = icmp sgt i64 %i.gw, -1
  br i1 %i.gx, label %.preheader495, label %.critedge

.preheader495:                                    ; preds = %bb.bg
  %.idx = mul nuw nsw i64 %i.gw, 6
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = zext i16 %i.gz to i64                   ; 4 uses
  %i.hb = icmp eq i64 %.0472, %i.ha               ; 2 uses
  %i.hc = icmp samesign ule i64 %.0244595, %i.ha
  %.not273 = icmp eq i64 %.0471, %i.ha
  %or.cond295 = or i1 %i.hc, %.not273
  %or.cond296 = select i1 %or.cond295, i1 true, i1 %i.hb
  %.1248 = select i1 %or.cond296, i64 -1, i64 %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = zext i16 %i.he to i64                   ; 4 uses
  %i.hg = icmp eq i64 %.0472, %i.hf               ; 2 uses
  %i.hh = icmp samesign ule i64 %.0244595, %i.hf
  %.not273.1 = icmp eq i64 %.0471, %i.hf
  %or.cond295.1 = or i1 %i.hh, %.not273.1
  %or.cond296.1 = select i1 %or.cond295.1, i1 true, i1 %i.hg
  %.1248.1 = select i1 %or.cond296.1, i64 %.1248, i64 %i.hf
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hj = load i16, ptr %i.hi, align 2
  %i.hk = zext i16 %i.hj to i64                   ; 4 uses
  %i.hl = icmp eq i64 %.0472, %i.hk               ; 2 uses
  %i.hm = select i1 %i.hl, i1 true, i1 %i.hg
  %spec.select.2 = select i1 %i.hm, i1 true, i1 %i.hb
  %i.hn = icmp samesign ule i64 %.0244595, %i.hk
  %.not273.2 = icmp eq i64 %.0471, %i.hk
  %or.cond295.2 = or i1 %i.hn, %.not273.2
  %or.cond296.2 = select i1 %or.cond295.2, i1 true, i1 %i.hl
  %.1248.2 = select i1 %or.cond296.2, i64 %.1248.1, i64 %i.hk ; 4 uses
  %i.ho = icmp ne i64 %.1248.2, -1
  %or.cond = select i1 %i.ho, i1 %spec.select.2, i1 false
  br i1 %or.cond, label %bb.bh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.bh:                                            ; preds = %.preheader495
  %i.hp = xor i64 %.1248.2, -1                    ; 3 uses
  %.not.i332 = icmp eq i64 %.1465571, 0
  br i1 %.not.i332, label %.thread33.thread.i, label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %bb.bh, %bb.bm
  %.02542.i = phi i64 [ %i.ir, %bb.bm ], [ 0, %bb.bh ] ; 9 uses
  %i.hq = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02542.i ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8            ; 2 uses
  %i.ht = icmp eq i64 %i.hs, %i.hp
  br i1 %i.ht, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i333
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hv = load i64, ptr %i.hu, align 8            ; 2 uses
  %i.hw = icmp eq i64 %i.gq, %i.hv
  br i1 %i.hw, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.hx = load i64, ptr %i.hq, align 8            ; 2 uses
  %i.hy = icmp eq i64 %i.gp, %i.hx
  br i1 %i.hy, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i333
  %i.hz = icmp sgt i64 %i.hs, %i.hp
  br i1 %i.hz, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.ia = icmp slt i64 %i.gp, %i.hx
  br i1 %i.ia, label %bb.bl, label %bb.bm

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.ib = icmp slt i64 %i.gq, %i.hv
  br i1 %i.ib, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %bb.bk, %bb.bj
  %i.ic = icmp eq i64 %.1465571, 1
  %spec.select482 = select i1 %i.ic, i64 2, i64 %.1465571 ; 9 uses
  %.043.i = add i64 %spec.select482, -1           ; 4 uses
  %i.id = icmp ugt i64 %.043.i, %.02542.i
  br i1 %i.id, label %.lr.ph46.i.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph46.i.preheader:                             ; preds = %bb.bl
  %reass.sub = sub i64 %spec.select482, %.02542.i
  %i.ie = sub i64 %.02542.i, %spec.select482
  %i.if = and i64 %i.ie, 1
  %lcmp.mod.not.not = icmp eq i64 %i.if, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph46.i.prol, label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.i.preheader
  %i.ig = getelementptr [280 x i8], ptr %11, i64 %spec.select482
  %i.ih = getelementptr i8, ptr %i.ig, i64 -560
  %i.ii = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ii, ptr noundef nonnull align 8 dereferenceable(280) %i.ih, i64 280, i1 false)
  %.0.i335.prol = add i64 %spec.select482, -2
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.i.preheader
  %.045.i.unr = phi i64 [ %.043.i, %.lr.ph46.i.preheader ], [ %.0.i335.prol, %.lr.ph46.i.prol ]
  %.0.in44.i.unr = phi i64 [ %spec.select482, %.lr.ph46.i.preheader ], [ %.043.i, %.lr.ph46.i.prol ]
  %i.ij = icmp eq i64 %reass.sub, 2
  br i1 %i.ij, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.045.i = phi i64 [ %.0.i335.1, %.lr.ph46.i ], [ %.045.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %.0.in44.i = phi i64 [ %.0.i335, %.lr.ph46.i ], [ %.0.in44.i.unr, %.lr.ph46.i.prol.loopexit ]
  %i.ik = getelementptr [280 x i8], ptr %11, i64 %.0.in44.i
  %i.il = getelementptr i8, ptr %i.ik, i64 -560
  %i.im = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.045.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.im, ptr noundef nonnull align 8 dereferenceable(280) %i.il, i64 280, i1 false)
  %.0.i335 = add i64 %.045.i, -1                  ; 2 uses
  %i.in = getelementptr [280 x i8], ptr %11, i64 %.045.i
  %i.io = getelementptr i8, ptr %i.in, i64 -560
  %i.ip = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.0.i335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ip, ptr noundef nonnull align 8 dereferenceable(280) %i.io, i64 280, i1 false)
  %.0.i335.1 = add i64 %.045.i, -2                ; 2 uses
  %i.iq = icmp ugt i64 %.0.i335.1, %.02542.i
  br i1 %i.iq, label %.lr.ph46.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, !llvm.loop !812

bb.bm:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %bb.bk, %bb.bj
  %i.ir = add nuw i64 %.02542.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ir, %.1465571
  br i1 %exitcond.not.i, label %.thread33.i, label %.lr.ph.i333, !llvm.loop !813

.thread33.i:                                      ; preds = %bb.bm
  %i.is = icmp eq i64 %.1465571, 1
  br i1 %i.is, label %.thread33.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread33.thread.i:                               ; preds = %.thread33.i, %bb.bh
  %i.it = add nuw nsw i64 %.1465571, 1
  %i.iu = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1465571
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i, %bb.bl, %.thread33.thread.i
  %.9 = phi i64 [ %i.it, %.thread33.thread.i ], [ %spec.select482, %bb.bl ], [ %spec.select482, %.lr.ph46.i ], [ %spec.select482, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.iu, %.thread33.thread.i ], [ %i.hq, %bb.bl ], [ %i.hq, %.lr.ph46.i ], [ %i.hq, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.1.ph.i = phi i64 [ %.1465571, %.thread33.thread.i ], [ %.02542.i, %bb.bl ], [ %.02542.i, %.lr.ph46.i ], [ %.02542.i, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  store i64 %i.gp, ptr %.lcssa.sink.i, align 8
  %.sroa.5.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 8
  store i64 %i.gq, ptr %.sroa.5.0..lcssa.sink.i.sroa_idx, align 8
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  store i64 %i.hp, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not272 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not272, %.not610
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph570

.lr.ph570:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.iv = load ptr, ptr %i.ep, align 8            ; 4 uses
  %i.iw = getelementptr [8 x i8], ptr %i.iv, i64 %i.gr ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %i.iv, i64 %i.gs ; 4 uses
  %i.iy = mul i64 %.1248.2, %4
  %i.iz = getelementptr [8 x i8], ptr %i.iv, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph570
  %i.jc = ptrtoaddr ptr %i.iv to i64              ; 3 uses
  %i.jd = mul i64 %.1.ph.i, 280                   ; 3 uses
  %i.je = add i64 %i.es, %i.jd
  %i.jf = mul i64 %i.et, %.1248.2
  %i.jg = add i64 %i.jf, %i.jc
  %i.jh = sub i64 %i.jg, %i.je
  %diff.check = icmp ugt i64 %i.jh, -32
  %i.ji = add i64 %i.eu, %i.jd
  %i.jj = add i64 %i.gt, %i.jc
  %i.jk = sub i64 %i.jj, %i.ji
  %diff.check785 = icmp ugt i64 %i.jk, -32
  %conflict.rdx = or i1 %diff.check, %diff.check785
  %i.jl = add i64 %i.ew, %i.jd
  %i.jm = add i64 %i.gu, %i.jc
  %i.jn = sub i64 %i.jm, %i.jl
  %diff.check786 = icmp ugt i64 %i.jn, -32
  %conflict.rdx787 = or i1 %conflict.rdx, %diff.check786
  br i1 %conflict.rdx787, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.jo = getelementptr [8 x i8], ptr %i.iw, i64 %index ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  %wide.load = load <2 x i64>, ptr %i.jo, align 8
  %wide.load788 = load <2 x i64>, ptr %i.jp, align 8
  %i.jq = getelementptr [8 x i8], ptr %i.ix, i64 %index ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 16
  %wide.load789 = load <2 x i64>, ptr %i.jq, align 8
  %wide.load790 = load <2 x i64>, ptr %i.jr, align 8
  %i.js = add nsw <2 x i64> %wide.load789, %wide.load
  %i.jt = add nsw <2 x i64> %wide.load790, %wide.load788
  %i.ju = getelementptr [8 x i8], ptr %i.iz, i64 %index ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  %wide.load791 = load <2 x i64>, ptr %i.ju, align 8
  %wide.load792 = load <2 x i64>, ptr %i.jv, align 8
  %i.jw = sub <2 x i64> %i.js, %wide.load791
  %i.jx = sub <2 x i64> %i.jt, %wide.load792
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store <2 x i64> %i.jw, ptr %i.jy, align 8
  store <2 x i64> %i.jx, ptr %i.jz, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ka = icmp eq i64 %index.next, %n.vec
  br i1 %i.ka, label %middle.block, label %vector.body, !llvm.loop !814

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph570, %middle.block
  %.0242569.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph570 ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg880 = or disjoint i64 %.0242569.ph, 1
  br i1 %lcmp.mod851.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.kb = getelementptr [8 x i8], ptr %i.iw, i64 %.0242569.ph
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = getelementptr [8 x i8], ptr %i.ix, i64 %.0242569.ph
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = add nsw i64 %i.ke, %i.kc
  %i.kg = getelementptr [8 x i8], ptr %i.iz, i64 %.0242569.ph
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = sub i64 %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0242569.ph
  store i64 %i.ki, ptr %i.kj, align 8
  %i.kk = or disjoint i64 %.0242569.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0242569.unr = phi i64 [ %.0242569.ph, %scalar.ph.preheader ], [ %i.kk, %scalar.ph.prol ]
  %i.kl = icmp eq i64 %.0214, %.neg880
  br i1 %i.kl, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0242569 = phi i64 [ %i.lf, %scalar.ph ], [ %.0242569.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.km = getelementptr [8 x i8], ptr %i.iw, i64 %.0242569
  %i.kn = load i64, ptr %i.km, align 8
  %i.ko = getelementptr [8 x i8], ptr %i.ix, i64 %.0242569
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = add nsw i64 %i.kp, %i.kn
  %i.kr = getelementptr [8 x i8], ptr %i.iz, i64 %.0242569
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = sub i64 %i.kq, %i.ks
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0242569
  store i64 %i.kt, ptr %i.ku, align 8
  %i.kv = add nuw i64 %.0242569, 1                ; 4 uses
  %i.kw = getelementptr [8 x i8], ptr %i.iw, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr [8 x i8], ptr %i.ix, i64 %i.kv
  %i.kz = load i64, ptr %i.ky, align 8
  %i.la = add nsw i64 %i.kz, %i.kx
  %i.lb = getelementptr [8 x i8], ptr %i.iz, i64 %i.kv
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = sub i64 %i.la, %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.kv
  store i64 %i.ld, ptr %i.le, align 8
  %i.lf = add nuw i64 %.0242569, 2                ; 2 uses
  %exitcond638.not.1 = icmp eq i64 %i.lf, %.0214
  br i1 %exitcond638.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph, !llvm.loop !815

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.preheader495, %.thread33.i
  %.2466 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block ], [ %.1465571, %.preheader495 ], [ %.1465571, %.thread33.i ], [ %.9, %scalar.ph.prol.loopexit ], [ %.9, %scalar.ph ], [ %.1465571, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.lg = add nsw i64 %.0246572, 1                ; 2 uses
  %exitcond639.not = icmp eq i64 %i.lg, %i.gn
  br i1 %exitcond639.not, label %.critedge, label %bb.bg, !llvm.loop !816

.critedge:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, %bb.bg, %bb.ba
  %.4 = phi i64 [ %.0464580, %bb.ba ], [ %.1465571, %bb.bg ], [ %.2466, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 4 uses
  switch i32 %i.fh, label %.loopexit516 [
    i32 6, label %.critedge.thread
    i32 5, label %.critedge.thread
    i32 1, label %.critedge.thread
  ]

.critedge.thread:                                 ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330, %bb.bd, %.critedge, %.critedge, %.critedge
  %.4477 = phi i64 [ %.4, %.critedge ], [ %.4, %.critedge ], [ %.4, %.critedge ], [ %.0464580, %bb.bd ], [ %.0464580, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit330 ] ; 11 uses
  %.idx275 = mul nuw nsw i64 %i.fr, 6
  %i.lh = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx275 ; 3 uses
  %i.li = load i16, ptr %i.lh, align 2
  %i.lj = zext i16 %i.li to i64                   ; 5 uses
  %i.lk = icmp samesign ugt i64 %.0244595, %i.lj
  br i1 %i.lk, label %bb.bn, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

bb.bn:                                            ; preds = %.critedge.thread
  %.not.i336 = icmp eq i64 %.4477, 0
  br i1 %.not.i336, label %.thread33.thread.i342, label %.lr.ph.i337

.lr.ph.i337:                                      ; preds = %bb.bn, %bb.bs
  %.02542.i338 = phi i64 [ %i.mm, %bb.bs ], [ 0, %bb.bn ] ; 9 uses
  %i.ll = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02542.i338 ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load i64, ptr %i.lm, align 8            ; 2 uses
  %i.lo = icmp eq i64 %i.ln, %i.lj
  br i1 %i.lo, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i337
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lq = load i64, ptr %i.lp, align 8            ; 2 uses
  %i.lr = icmp eq i64 %i.lq, -1
  br i1 %i.lr, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i352, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i351

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i352:   ; preds = %bb.bo
  %i.ls = load i64, ptr %i.ll, align 8            ; 2 uses
  %i.lt = icmp eq i64 %i.ls, -1
  br i1 %i.lt, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i337
  %i.lu = icmp sgt i64 %i.ln, %i.lj
  br i1 %i.lu, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i352
  %i.lv = icmp sgt i64 %i.ls, -1
  br i1 %i.lv, label %bb.br, label %bb.bs

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i351:   ; preds = %bb.bo
  %i.lw = icmp sgt i64 %i.lq, -1
  br i1 %i.lw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i351, %bb.bq, %bb.bp
  %i.lx = icmp eq i64 %.4477, 1
  %spec.select484 = select i1 %i.lx, i64 2, i64 %.4477 ; 9 uses
  %.043.i346 = add i64 %spec.select484, -1        ; 4 uses
  %i.ly = icmp ugt i64 %.043.i346, %.02542.i338
  br i1 %i.ly, label %.lr.ph46.i347.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

.lr.ph46.i347.preheader:                          ; preds = %bb.br
  %reass.sub881 = sub i64 %spec.select484, %.02542.i338
  %i.lz = sub i64 %.02542.i338, %spec.select484
  %i.ma = and i64 %i.lz, 1
  %lcmp.mod856.not.not = icmp eq i64 %i.ma, 0
  br i1 %lcmp.mod856.not.not, label %.lr.ph46.i347.prol, label %.lr.ph46.i347.prol.loopexit

.lr.ph46.i347.prol:                               ; preds = %.lr.ph46.i347.preheader
  %i.mb = getelementptr [280 x i8], ptr %11, i64 %spec.select484
  %i.mc = getelementptr i8, ptr %i.mb, i64 -560
  %i.md = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.043.i346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.md, ptr noundef nonnull align 8 dereferenceable(280) %i.mc, i64 280, i1 false)
  %.0.i350.prol = add i64 %spec.select484, -2
  br label %.lr.ph46.i347.prol.loopexit

.lr.ph46.i347.prol.loopexit:                      ; preds = %.lr.ph46.i347.prol, %.lr.ph46.i347.preheader
  %.045.i348.unr = phi i64 [ %.043.i346, %.lr.ph46.i347.preheader ], [ %.0.i350.prol, %.lr.ph46.i347.prol ]
  %.0.in44.i349.unr = phi i64 [ %spec.select484, %.lr.ph46.i347.preheader ], [ %.043.i346, %.lr.ph46.i347.prol ]
  %i.me = icmp eq i64 %reass.sub881, 2
  br i1 %i.me, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353, label %.lr.ph46.i347

.lr.ph46.i347:                                    ; preds = %.lr.ph46.i347.prol.loopexit, %.lr.ph46.i347
  %.045.i348 = phi i64 [ %.0.i350.1859, %.lr.ph46.i347 ], [ %.045.i348.unr, %.lr.ph46.i347.prol.loopexit ] ; 4 uses
  %.0.in44.i349 = phi i64 [ %.0.i350, %.lr.ph46.i347 ], [ %.0.in44.i349.unr, %.lr.ph46.i347.prol.loopexit ]
  %i.mf = getelementptr [280 x i8], ptr %11, i64 %.0.in44.i349
  %i.mg = getelementptr i8, ptr %i.mf, i64 -560
  %i.mh = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.045.i348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.mh, ptr noundef nonnull align 8 dereferenceable(280) %i.mg, i64 280, i1 false)
  %.0.i350 = add i64 %.045.i348, -1               ; 2 uses
  %i.mi = getelementptr [280 x i8], ptr %11, i64 %.045.i348
  %i.mj = getelementptr i8, ptr %i.mi, i64 -560
  %i.mk = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.0.i350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.mk, ptr noundef nonnull align 8 dereferenceable(280) %i.mj, i64 280, i1 false)
  %.0.i350.1859 = add i64 %.045.i348, -2          ; 2 uses
  %i.ml = icmp ugt i64 %.0.i350.1859, %.02542.i338
  br i1 %i.ml, label %.lr.ph46.i347, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353, !llvm.loop !812

bb.bs:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i351, %bb.bq, %bb.bp
  %i.mm = add nuw i64 %.02542.i338, 1             ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %i.mm, %.4477
  br i1 %exitcond.not.i339, label %.thread33.i340, label %.lr.ph.i337, !llvm.loop !813

.thread33.i340:                                   ; preds = %bb.bs
  %i.mn = icmp eq i64 %.4477, 1
  br i1 %i.mn, label %.thread33.thread.i342, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

.thread33.thread.i342:                            ; preds = %.thread33.i340, %bb.bn
  %i.mo = add nuw nsw i64 %.4477, 1
  %i.mp = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.4477
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353: ; preds = %.lr.ph46.i347.prol.loopexit, %.lr.ph46.i347, %bb.br, %.thread33.thread.i342
end_hunk_0
