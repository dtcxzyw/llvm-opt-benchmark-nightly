inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 82
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
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i) #33
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
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #31
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
  br i1 %exitcond632.not, label %.loopexit523, label %.lr.ph565, !llvm.loop !384

bb.ad:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

bb.ae:                                            ; preds = %_ZN5o3dgc6VectorIcE8AllocateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %17, i32 noundef 12)
          to label %.preheader524 unwind label %bb.af

.preheader524:                                    ; preds = %bb.ae
  %.not608 = icmp eq i64 %2, 0
  br i1 %.not608, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.al, %.preheader524
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
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
  %i.ds = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i324) #33
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
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #31
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !385

bb.am:                                            ; preds = %bb.ah, %.lr.ph
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #30
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.am ], [ %i.de, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
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
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i64 %i.h, ptr %i.ec, align 8
  %i.ei = icmp ugt i64 %i.h, 2305843009213693951
  %i.ej = shl nuw i64 %i.h, 3
  %i.ek = select i1 %i.ei, i64 -1, i64 %i.ej
  %i.el = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #33
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
  br i1 %i.iq, label %.lr.ph46.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, !llvm.loop !386

bb.bm:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %bb.bk, %bb.bj
  %i.ir = add nuw i64 %.02542.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ir, %.1465571
  br i1 %exitcond.not.i, label %.thread33.i, label %.lr.ph.i333, !llvm.loop !387

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
  br i1 %i.ka, label %middle.block, label %vector.body, !llvm.loop !388

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
  br i1 %exitcond638.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph, !llvm.loop !389

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.preheader495, %.thread33.i
  %.2466 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block ], [ %.1465571, %.preheader495 ], [ %.1465571, %.thread33.i ], [ %.9, %scalar.ph.prol.loopexit ], [ %.9, %scalar.ph ], [ %.1465571, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.lg = add nsw i64 %.0246572, 1                ; 2 uses
  %exitcond639.not = icmp eq i64 %i.lg, %i.gn
  br i1 %exitcond639.not, label %.critedge, label %bb.bg, !llvm.loop !390

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
  br i1 %i.ml, label %.lr.ph46.i347, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353, !llvm.loop !386

bb.bs:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i351, %bb.bq, %bb.bp
  %i.mm = add nuw i64 %.02542.i338, 1             ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %i.mm, %.4477
  br i1 %exitcond.not.i339, label %.thread33.i340, label %.lr.ph.i337, !llvm.loop !387

.thread33.i340:                                   ; preds = %bb.bs
  %i.mn = icmp eq i64 %.4477, 1
  br i1 %i.mn, label %.thread33.thread.i342, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353.thread

.thread33.thread.i342:                            ; preds = %.thread33.i340, %bb.bn
  %i.mo = add nuw nsw i64 %.4477, 1
  %i.mp = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.4477
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit353: ; preds = %.lr.ph46.i347.prol.loopexit, %.lr.ph46.i347, %bb.br, %.thread33.thread.i342
end_hunk_0
begin_hunk_1_@_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.not.i358 = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i358, label %._crit_edge.i364, label %.lr.ph.i359

.lr.ph.i359:                                      ; preds = %bb.ao
  %i.fg = trunc i64 %7 to i32
  %notmask.i360 = shl nsw i32 -1, %i.fg
  %i.fh = xor i32 %notmask.i360, -1
  %i.fi = uitofp nneg i32 %i.fh to float          ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i359
  %n.vec = and i64 %3, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index
  %wide.load = load <4 x float>, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  %wide.load953 = load <4 x float>, ptr %i.fk, align 4
  %i.fl = fsub <4 x float> %wide.load, %wide.load953 ; 2 uses
  %i.fm = fcmp ogt <4 x float> %i.fl, zeroinitializer
  %i.fn = fdiv <4 x float> %broadcast.splat, %i.fl
  %i.fo = select <4 x i1> %i.fm, <4 x float> %i.fn, <4 x float> splat (float 1.000000e+00)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <4 x float> %i.fo, ptr %i.fp, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !959

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.i364, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i359, %middle.block
  %.03439.i361.ph = phi i64 [ 0, %.lr.ph.i359 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i364:                                 ; preds = %scalar.ph, %middle.block, %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = icmp ult i64 %i.fs, %i.ff
  br i1 %i.ft, label %bb.ap, label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03439.i361 = phi i64 [ %i.gc, %scalar.ph ], [ %.03439.i361.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.03439.i361
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.03439.i361
  %i.fx = load float, ptr %i.fw, align 4
  %i.fy = fsub float %i.fv, %i.fx                 ; 2 uses
  %i.fz = fcmp ogt float %i.fy, 0.000000e+00
  %i.ga = fdiv float %i.fi, %i.fy
  %.sink.i362 = select i1 %i.fz, float %i.ga, float 1.000000e+00
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.03439.i361
  store float %.sink.i362, ptr %i.gb, align 4
  %i.gc = add nuw i64 %.03439.i361, 1             ; 2 uses
  %exitcond.not.i363 = icmp eq i64 %i.gc, %3
  br i1 %exitcond.not.i363, label %._crit_edge.i364, label %scalar.ph, !llvm.loop !960

bb.ap:                                            ; preds = %._crit_edge.i364
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.ge) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i64 %i.ff, ptr %i.fr, align 8
  %i.gg = icmp ugt i64 %i.ff, 2305843009213693951
  %i.gh = shl nuw i64 %i.ff, 3
  %i.gi = select i1 %i.gg, i64 -1, i64 %i.gh
  %i.gj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gi) #33
          to label %.noexc373 unwind label %bb.o

.noexc373:                                        ; preds = %bb.ar
  store ptr %i.gj, ptr %i.gd, align 8
  br label %bb.as

bb.as:                                            ; preds = %.noexc373, %._crit_edge.i364
  %.not45.i365 = icmp eq i64 %2, 0
  br i1 %.not45.i365, label %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit374, label %.preheader.lr.ph.i366

.preheader.lr.ph.i366:                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  br i1 %.not.i358, label %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit374, label %.preheader.i367.preheader

.preheader.i367.preheader:                        ; preds = %.preheader.lr.ph.i366
  %xtraiter = and i64 %3, 1
  %i.gl = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1069 = trunc i64 %3 to i1
  br label %.preheader.i367

.preheader.i367:                                  ; preds = %.preheader.i367.preheader, %._crit_edge42.i371
  %.03343.i368 = phi i64 [ %i.gz, %._crit_edge42.i371 ], [ 0, %.preheader.i367.preheader ] ; 2 uses
  %i.gm = mul i64 %.03343.i368, %4                ; 3 uses
  br i1 %i.gl, label %.epil.preheader, label %.preheader.i367.new

._crit_edge42.i371.unr-lcssa:                     ; preds = %.preheader.i367.new
  br i1 %lcmp.mod.not, label %._crit_edge42.i371, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge42.i371.unr-lcssa, %.preheader.i367
  %.040.i369.epil.init = phi i64 [ 0, %.preheader.i367 ], [ %i.hz, %._crit_edge42.i371.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1069)
  %i.gn = add i64 %.040.i369.epil.init, %i.gm     ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.040.i369.epil.init
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = fsub float %i.gp, %i.gr
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040.i369.epil.init
  %i.gu = load float, ptr %i.gt, align 4
  %i.gv = call float @llvm.fmuladd.f32(float %i.gs, float %i.gu, float 5.000000e-01)
  %i.gw = fptosi float %i.gv to i64
  %i.gx = load ptr, ptr %i.gk, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gn
  store i64 %i.gw, ptr %i.gy, align 8
  br label %._crit_edge42.i371

._crit_edge42.i371:                               ; preds = %._crit_edge42.i371.unr-lcssa, %.epil.preheader
  %i.gz = add nuw i64 %.03343.i368, 1             ; 2 uses
  %exitcond48.not.i372 = icmp eq i64 %i.gz, %2
  br i1 %exitcond48.not.i372, label %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit374, label %.preheader.i367, !llvm.loop !957

.preheader.i367.new:                              ; preds = %.preheader.i367, %.preheader.i367.new
  %.040.i369 = phi i64 [ %i.hz, %.preheader.i367.new ], [ 0, %.preheader.i367 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i367.new ], [ 0, %.preheader.i367 ]
  %i.ha = add i64 %.040.i369, %i.gm               ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.040.i369
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = fsub float %i.hc, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040.i369
  %i.hh = load float, ptr %i.hg, align 8
  %i.hi = call float @llvm.fmuladd.f32(float %i.hf, float %i.hh, float 5.000000e-01)
  %i.hj = fptosi float %i.hi to i64
  %i.hk = load ptr, ptr %i.gk, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ha
  store i64 %i.hj, ptr %i.hl, align 8
  %i.hm = or disjoint i64 %.040.i369, 1           ; 3 uses
  %i.hn = add i64 %i.hm, %i.gm                    ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hm
  %i.hr = load float, ptr %i.hq, align 4
  %i.hs = fsub float %i.hp, %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hm
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = call float @llvm.fmuladd.f32(float %i.hs, float %i.hu, float 5.000000e-01)
  %i.hw = fptosi float %i.hv to i64
  %i.hx = load ptr, ptr %i.gk, align 8
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hn
  store i64 %i.hw, ptr %i.hy, align 8
  %i.hz = add nuw i64 %.040.i369, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge42.i371.unr-lcssa, label %.preheader.i367.new, !llvm.loop !958

_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit374: ; preds = %._crit_edge42.i371, %bb.as, %.preheader.lr.ph.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.at

bb.at:                                            ; preds = %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit374, %.loopexit595
  %i.ia = icmp sgt i64 %2, 0
  br i1 %i.ia, label %.lr.ph667, label %._crit_edge668

.lr.ph667:                                        ; preds = %bb.at
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ic = icmp ne i32 %9, 0                       ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 36 uses
  %.not682 = icmp eq i64 %3, 0                    ; 8 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 18 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.il = add i64 %i.a, 624
  %i.im = shl i64 %4, 3
  %i.in = add i64 %i.a, 624
  %i.io = shl i64 %4, 3
  %i.ip = add i64 %i.a, 624
  %i.iq = shl i64 %4, 3
  %i.ir = add i64 %i.a, 624
  %i.is = shl i64 %4, 3
  %i.it = add i64 %i.a, 624
  %i.iu = shl i64 %4, 3
  %i.iv = add i64 %i.a, 624
  %i.iw = shl i64 %4, 3
  %min.iters.check1018 = icmp ult i64 %3, 12
  %n.vec1021 = and i64 %3, -4                     ; 3 uses
  %cmp.n1032 = icmp eq i64 %3, %n.vec1021
  %xtraiter1081 = and i64 %3, 1
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1081, 0
  %min.iters.check1000 = icmp ult i64 %3, 10
  %n.vec1003 = and i64 %3, -4                     ; 3 uses
  %cmp.n1010 = icmp eq i64 %3, %n.vec1003
  %xtraiter1092 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1093.not = icmp eq i64 %xtraiter1092, 0
  %min.iters.check985 = icmp ult i64 %3, 10
  %n.vec988 = and i64 %3, -4                      ; 3 uses
  %cmp.n995 = icmp eq i64 %3, %n.vec988
  %xtraiter1102 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  %min.iters.check970 = icmp ult i64 %3, 10
  %n.vec973 = and i64 %3, -4                      ; 3 uses
  %cmp.n980 = icmp eq i64 %3, %n.vec973
  %xtraiter1111 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1112.not = icmp eq i64 %xtraiter1111, 0
  br label %bb.au

._crit_edge668:                                   ; preds = %.loopexit592, %bb.at
  %i.ix = load i32, ptr %i.p, align 8
  %.not = icmp eq i32 %i.ix, 1
  br i1 %.not, label %.thread550, label %bb.fa

.thread550:                                       ; preds = %._crit_edge668
  %i.iy = load i64, ptr %i.l, align 8
  %i.iz = sub i64 %i.iy, %i.m                     ; 2 uses
  %i.ja = trunc i64 %i.iz to i8
  br label %bb.fk

bb.au:                                            ; preds = %.lr.ph667, %.loopexit592
  %.0285665 = phi i64 [ 257, %.lr.ph667 ], [ %.1286, %.loopexit592 ] ; 6 uses
  %.0287664 = phi i64 [ 2, %.lr.ph667 ], [ %.1288, %.loopexit592 ] ; 6 uses
  %.0291663 = phi i64 [ 0, %.lr.ph667 ], [ %i.aiz, %.loopexit592 ] ; 11 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0291663 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8            ; 7 uses
  %i.jd = load ptr, ptr %i.ib, align 8
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.jc ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8            ; 3 uses
  %i.jg = icmp sgt i64 %i.jc, 0
  br i1 %i.jg, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.au
  %i.jh = getelementptr i8, ptr %i.je, i64 -8
  %i.ji = load i64, ptr %i.jh, align 8            ; 2 uses
  %i.jj = icmp sgt i64 %i.jf, %i.ji
  %or.cond = and i1 %i.ic, %i.jj
  br i1 %or.cond, label %bb.av, label %.thread548

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread: ; preds = %bb.au
  %i.jk = icmp sgt i64 %i.jf, 0
  %or.cond538 = and i1 %i.ic, %i.jk
  br i1 %or.cond538, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %.thread548

bb.av:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.jl = shl i64 %i.ji, 32
  %i.jm = ashr exact i64 %i.jl, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread, %bb.av
  %sext = phi i64 [ %i.jm, %bb.av ], [ 0, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread ] ; 2 uses
  %sext322 = shl i64 %i.jf, 32
  %i.jn = ashr exact i64 %sext322, 32             ; 2 uses
  %i.jo = icmp slt i64 %sext, %i.jn
  br i1 %i.jo, label %.lr.ph642, label %.thread548

.lr.ph642:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %.loopexit590
  %.0294641 = phi i64 [ %i.yi, %.loopexit590 ], [ %sext, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0537640 = phi i64 [ %.7, %.loopexit590 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 7 uses
  %i.jp = load ptr, ptr %i.id, align 8
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %.0294641
  %i.jr = load i64, ptr %i.jq, align 8            ; 2 uses
  switch i32 %9, label %.loopexit590 [
    i32 5, label %bb.aw
    i32 6, label %.thread542
    i32 1, label %.thread542
  ]

bb.aw:                                            ; preds = %.lr.ph642
  %.idx555 = mul nsw i64 %i.jr, 6
  %i.js = getelementptr inbounds i8, ptr %i.k, i64 %.idx555 ; 3 uses
  %i.jt = load i16, ptr %i.js, align 2
  %i.ju = zext i16 %i.jt to i64                   ; 3 uses
  %i.jv = icmp eq i64 %i.jc, %i.ju
  %i.jw = getelementptr i8, ptr %i.js, i64 2
  %i.jx = load i16, ptr %i.jw, align 2
  %i.jy = zext i16 %i.jx to i64                   ; 3 uses
  br i1 %i.jv, label %.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jz = icmp eq i64 %i.jc, %i.jy
  br i1 %i.jz, label %.sink.split, label %bb.ay

.sink.split:                                      ; preds = %bb.ax, %bb.aw
  %.0295.ph = phi i64 [ %i.jy, %bb.aw ], [ %i.ju, %bb.ax ]
  %i.ka = getelementptr i8, ptr %i.js, i64 4
  %i.kb = load i16, ptr %i.ka, align 2
  %i.kc = zext i16 %i.kb to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.ax
  %.0296 = phi i64 [ %i.jy, %bb.ax ], [ %i.kc, %.sink.split ] ; 6 uses
  %.0295 = phi i64 [ %i.ju, %bb.ax ], [ %.0295.ph, %.sink.split ] ; 9 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0295 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = icmp slt i64 %i.ke, %.0291663
  br i1 %i.kf, label %bb.az, label %.thread542

bb.az:                                            ; preds = %bb.ay
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0296 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = icmp slt i64 %i.kh, %.0291663
  br i1 %i.ki, label %bb.ba, label %.thread542

bb.ba:                                            ; preds = %bb.az
  %.not556 = icmp eq i64 %.0295, 0
  %.pre747 = load ptr, ptr %i.ib, align 8         ; 2 uses
  br i1 %.not556, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kj = getelementptr [8 x i8], ptr %.pre747, i64 %.0295
  %i.kk = getelementptr i8, ptr %i.kj, i64 -8
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = shl i64 %i.kl, 32
  %i.kn = ashr exact i64 %i.km, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375:        ; preds = %bb.ba, %bb.bb
  %sext325 = phi i64 [ %i.kn, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.pre747, i64 %.0295
  %i.kp = load i64, ptr %i.ko, align 8
  %sext326 = shl i64 %i.kp, 32
  %i.kq = ashr exact i64 %sext326, 32             ; 2 uses
  %i.kr = icmp slt i64 %sext325, %i.kq
  br i1 %i.kr, label %.lr.ph634, label %.thread542

.lr.ph634:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375
  %i.ks = mul i64 %.0295, %4
  %i.kt = mul i64 %.0296, %4
  %i.ku = mul i64 %i.iu, %.0296
  %i.kv = mul i64 %i.iw, %.0295
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph634, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0297633 = phi i64 [ %sext325, %.lr.ph634 ], [ %i.pq, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1632 = phi i64 [ %.0537640, %.lr.ph634 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %i.kw = load ptr, ptr %i.id, align 8
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %.0297633
  %i.ky = load i64, ptr %i.kx, align 8
  %.idx332 = mul i64 %i.ky, 6
  %i.kz = getelementptr i8, ptr %i.k, i64 %.idx332 ; 3 uses
  %i.la = load i16, ptr %i.kz, align 2
  %i.lb = zext i16 %i.la to i64                   ; 4 uses
  %i.lc = icmp eq i64 %.0296, %i.lb               ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lb
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = icmp sge i64 %i.le, %.0291663
  %.not333 = icmp eq i64 %.0295, %i.lb
  %or.cond343 = or i1 %i.lf, %.not333
  %or.cond344 = select i1 %or.cond343, i1 true, i1 %i.lc
  %.1302 = select i1 %or.cond344, i64 -1, i64 %i.lb
  %i.lg = getelementptr i8, ptr %i.kz, i64 2
  %i.lh = load i16, ptr %i.lg, align 2
  %i.li = zext i16 %i.lh to i64                   ; 4 uses
  %i.lj = icmp eq i64 %.0296, %i.li               ; 2 uses
  %spec.select.1 = or i1 %i.lj, %i.lc
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.li
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = icmp sge i64 %i.ll, %.0291663
  %.not333.1 = icmp eq i64 %.0295, %i.li
  %or.cond343.1 = or i1 %i.lm, %.not333.1
  %or.cond344.1 = select i1 %or.cond343.1, i1 true, i1 %i.lj
  %.1302.1 = select i1 %or.cond344.1, i64 %.1302, i64 %i.li
  %i.ln = getelementptr i8, ptr %i.kz, i64 4
  %i.lo = load i16, ptr %i.ln, align 2
  %i.lp = zext i16 %i.lo to i64                   ; 4 uses
  %i.lq = icmp eq i64 %.0296, %i.lp               ; 2 uses
  %spec.select.2 = or i1 %i.lq, %spec.select.1
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lp
  %i.ls = load i64, ptr %i.lr, align 8
  %i.lt = icmp sge i64 %i.ls, %.0291663
  %.not333.2 = icmp eq i64 %.0295, %i.lp
  %or.cond343.2 = or i1 %i.lt, %.not333.2
  %or.cond344.2 = select i1 %or.cond343.2, i1 true, i1 %i.lq
  %.1302.2 = select i1 %or.cond344.2, i64 %.1302.1, i64 %i.lp ; 4 uses
  %i.lu = icmp ne i64 %.1302.2, -1
  %or.cond3 = select i1 %i.lu, i1 %spec.select.2, i1 false
  br i1 %or.cond3, label %bb.bd, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.lv = load i64, ptr %i.kg, align 8            ; 2 uses
  %i.lw = load i64, ptr %i.kd, align 8            ; 2 uses
  %..i = call noundef i64 @llvm.smin.i64(i64 %i.lv, i64 %i.lw) ; 3 uses
  %..i376 = call noundef i64 @llvm.smax.i64(i64 %i.lv, i64 %i.lw) ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1302.2
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = xor i64 %i.ly, -1                       ; 3 uses
  %.not.i377 = icmp eq i64 %.1632, 0
  br i1 %.not.i377, label %.thread33.thread.i, label %.lr.ph.i378

.lr.ph.i378:                                      ; preds = %bb.bd, %bb.bi
  %.02542.i = phi i64 [ %i.nb, %bb.bi ], [ 0, %bb.bd ] ; 9 uses
  %i.ma = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02542.i ; 6 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load i64, ptr %i.mb, align 8            ; 2 uses
  %i.md = icmp eq i64 %i.mc, %i.lz
  br i1 %i.md, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i378
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8            ; 2 uses
  %i.mg = icmp eq i64 %..i376, %i.mf
  br i1 %i.mg, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.be
  %i.mh = load i64, ptr %i.ma, align 8            ; 2 uses
  %i.mi = icmp eq i64 %..i, %i.mh
  br i1 %i.mi, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i378
  %i.mj = icmp sgt i64 %i.mc, %i.lz
  br i1 %i.mj, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.mk = icmp slt i64 %..i, %i.mh
  br i1 %i.mk, label %bb.bh, label %bb.bi

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.be
  %i.ml = icmp slt i64 %..i376, %i.mf
  br i1 %i.ml, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %bb.bg, %bb.bf
  %i.mm = icmp eq i64 %.1632, 1
  %spec.select551 = select i1 %i.mm, i64 2, i64 %.1632 ; 9 uses
  %.043.i = add i64 %spec.select551, -1           ; 4 uses
  %i.mn = icmp ugt i64 %.043.i, %.02542.i
  br i1 %i.mn, label %.lr.ph46.i.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph46.i.preheader:                             ; preds = %bb.bh
  %reass.sub = sub i64 %spec.select551, %.02542.i
  %i.mo = sub i64 %.02542.i, %spec.select551
  %i.mp = and i64 %i.mo, 1
  %lcmp.mod1080.not.not = icmp eq i64 %i.mp, 0
  br i1 %lcmp.mod1080.not.not, label %.lr.ph46.i.prol, label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.i.preheader
  %i.mq = getelementptr [280 x i8], ptr %i.ie, i64 %spec.select551
  %i.mr = getelementptr i8, ptr %i.mq, i64 -560
  %i.ms = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ms, ptr noundef nonnull align 8 dereferenceable(280) %i.mr, i64 280, i1 false)
  %.0.i.prol = add i64 %spec.select551, -2
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.i.preheader
  %.045.i.unr = phi i64 [ %.043.i, %.lr.ph46.i.preheader ], [ %.0.i.prol, %.lr.ph46.i.prol ]
  %.0.in44.i.unr = phi i64 [ %spec.select551, %.lr.ph46.i.preheader ], [ %.043.i, %.lr.ph46.i.prol ]
  %i.mt = icmp eq i64 %reass.sub, 2
  br i1 %i.mt, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.045.i = phi i64 [ %.0.i.1, %.lr.ph46.i ], [ %.045.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %.0.in44.i = phi i64 [ %.0.i, %.lr.ph46.i ], [ %.0.in44.i.unr, %.lr.ph46.i.prol.loopexit ]
  %i.mu = getelementptr [280 x i8], ptr %i.ie, i64 %.0.in44.i
  %i.mv = getelementptr i8, ptr %i.mu, i64 -560
  %i.mw = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.045.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.mw, ptr noundef nonnull align 8 dereferenceable(280) %i.mv, i64 280, i1 false)
  %.0.i = add i64 %.045.i, -1                     ; 2 uses
  %i.mx = getelementptr [280 x i8], ptr %i.ie, i64 %.045.i
  %i.my = getelementptr i8, ptr %i.mx, i64 -560
  %i.mz = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.mz, ptr noundef nonnull align 8 dereferenceable(280) %i.my, i64 280, i1 false)
  %.0.i.1 = add i64 %.045.i, -2                   ; 2 uses
  %i.na = icmp ugt i64 %.0.i.1, %.02542.i
  br i1 %i.na, label %.lr.ph46.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, !llvm.loop !386

bb.bi:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %bb.bg, %bb.bf
  %i.nb = add nuw i64 %.02542.i, 1                ; 2 uses
  %exitcond.not.i379 = icmp eq i64 %i.nb, %.1632
  br i1 %exitcond.not.i379, label %.thread33.i, label %.lr.ph.i378, !llvm.loop !387

.thread33.i:                                      ; preds = %bb.bi
  %i.nc = icmp eq i64 %.1632, 1
  br i1 %i.nc, label %.thread33.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread33.thread.i:                               ; preds = %.thread33.i, %bb.bd
  %i.nd = add nuw nsw i64 %.1632, 1
  %i.ne = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1632
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i, %bb.bh, %.thread33.thread.i
  %.9 = phi i64 [ %i.nd, %.thread33.thread.i ], [ %spec.select551, %bb.bh ], [ %spec.select551, %.lr.ph46.i ], [ %spec.select551, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.ne, %.thread33.thread.i ], [ %i.ma, %bb.bh ], [ %i.ma, %.lr.ph46.i ], [ %i.ma, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.1.ph.i = phi i64 [ %.1632, %.thread33.thread.i ], [ %.02542.i, %bb.bh ], [ %.02542.i, %.lr.ph46.i ], [ %.02542.i, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  store i64 %..i, ptr %.lcssa.sink.i, align 8
  %.sroa.5.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 8
  store i64 %..i376, ptr %.sroa.5.0..lcssa.sink.i.sroa_idx, align 8
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  store i64 %i.lz, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not331 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not331, %.not682
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph631

.lr.ph631:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.nf = load ptr, ptr %i.if, align 8            ; 4 uses
  %i.ng = getelementptr [8 x i8], ptr %i.nf, i64 %i.ks ; 4 uses
  %i.nh = getelementptr [8 x i8], ptr %i.nf, i64 %i.kt ; 4 uses
  %i.ni = mul i64 %.1302.2, %4
  %i.nj = getelementptr [8 x i8], ptr %i.nf, i64 %i.ni ; 4 uses
  %i.nk = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24 ; 4 uses
  br i1 %min.iters.check1018, label %scalar.ph1017.preheader, label %vector.memcheck1012

vector.memcheck1012:                              ; preds = %.lr.ph631
  %i.nm = ptrtoaddr ptr %i.nf to i64              ; 3 uses
  %i.nn = mul i64 %.1.ph.i, 280                   ; 3 uses
  %i.no = add i64 %i.ir, %i.nn
  %i.np = mul i64 %i.is, %.1302.2
  %i.nq = add i64 %i.np, %i.nm
  %i.nr = sub i64 %i.nq, %i.no
  %diff.check1013 = icmp ugt i64 %i.nr, -32
  %i.ns = add i64 %i.it, %i.nn
  %i.nt = add i64 %i.ku, %i.nm
  %i.nu = sub i64 %i.nt, %i.ns
  %diff.check1014 = icmp ugt i64 %i.nu, -32
  %conflict.rdx = or i1 %diff.check1013, %diff.check1014
  %i.nv = add i64 %i.iv, %i.nn
  %i.nw = add i64 %i.kv, %i.nm
  %i.nx = sub i64 %i.nw, %i.nv
  %diff.check1015 = icmp ugt i64 %i.nx, -32
  %conflict.rdx1016 = or i1 %conflict.rdx, %diff.check1015
  br i1 %conflict.rdx1016, label %scalar.ph1017.preheader, label %vector.body1022

vector.body1022:                                  ; preds = %vector.memcheck1012, %vector.body1022
  %index1023 = phi i64 [ %index.next1030, %vector.body1022 ], [ 0, %vector.memcheck1012 ] ; 5 uses
  %i.ny = getelementptr [8 x i8], ptr %i.ng, i64 %index1023 ; 2 uses
  %i.nz = getelementptr i8, ptr %i.ny, i64 16
  %wide.load1024 = load <2 x i64>, ptr %i.ny, align 8
  %wide.load1025 = load <2 x i64>, ptr %i.nz, align 8
  %i.oa = getelementptr [8 x i8], ptr %i.nh, i64 %index1023 ; 2 uses
  %i.ob = getelementptr i8, ptr %i.oa, i64 16
  %wide.load1026 = load <2 x i64>, ptr %i.oa, align 8
  %wide.load1027 = load <2 x i64>, ptr %i.ob, align 8
  %i.oc = add nsw <2 x i64> %wide.load1026, %wide.load1024
  %i.od = add nsw <2 x i64> %wide.load1027, %wide.load1025
  %i.oe = getelementptr [8 x i8], ptr %i.nj, i64 %index1023 ; 2 uses
  %i.of = getelementptr i8, ptr %i.oe, i64 16
  %wide.load1028 = load <2 x i64>, ptr %i.oe, align 8
  %wide.load1029 = load <2 x i64>, ptr %i.of, align 8
  %i.og = sub <2 x i64> %i.oc, %wide.load1028
  %i.oh = sub <2 x i64> %i.od, %wide.load1029
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %index1023 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store <2 x i64> %i.og, ptr %i.oi, align 8
  store <2 x i64> %i.oh, ptr %i.oj, align 8
  %index.next1030 = add nuw i64 %index1023, 4     ; 2 uses
  %i.ok = icmp eq i64 %index.next1030, %n.vec1021
  br i1 %i.ok, label %middle.block1031, label %vector.body1022, !llvm.loop !961

middle.block1031:                                 ; preds = %vector.body1022
  br i1 %cmp.n1032, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1017.preheader

scalar.ph1017.preheader:                          ; preds = %vector.memcheck1012, %.lr.ph631, %middle.block1031
  %.0293630.ph = phi i64 [ 0, %vector.memcheck1012 ], [ 0, %.lr.ph631 ], [ %n.vec1021, %middle.block1031 ] ; 7 uses
  %.neg = or disjoint i64 %.0293630.ph, 1
  br i1 %lcmp.mod1082.not, label %scalar.ph1017.prol.loopexit, label %scalar.ph1017.prol

scalar.ph1017.prol:                               ; preds = %scalar.ph1017.preheader
  %i.ol = getelementptr [8 x i8], ptr %i.ng, i64 %.0293630.ph
  %i.om = load i64, ptr %i.ol, align 8
  %i.on = getelementptr [8 x i8], ptr %i.nh, i64 %.0293630.ph
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = add nsw i64 %i.oo, %i.om
  %i.oq = getelementptr [8 x i8], ptr %i.nj, i64 %.0293630.ph
  %i.or = load i64, ptr %i.oq, align 8
  %i.os = sub i64 %i.op, %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.0293630.ph
  store i64 %i.os, ptr %i.ot, align 8
  %i.ou = or disjoint i64 %.0293630.ph, 1
  br label %scalar.ph1017.prol.loopexit

scalar.ph1017.prol.loopexit:                      ; preds = %scalar.ph1017.prol, %scalar.ph1017.preheader
  %.0293630.unr = phi i64 [ %.0293630.ph, %scalar.ph1017.preheader ], [ %i.ou, %scalar.ph1017.prol ]
  %i.ov = icmp eq i64 %3, %.neg
  br i1 %i.ov, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1017

scalar.ph1017:                                    ; preds = %scalar.ph1017.prol.loopexit, %scalar.ph1017
  %.0293630 = phi i64 [ %i.pp, %scalar.ph1017 ], [ %.0293630.unr, %scalar.ph1017.prol.loopexit ] ; 6 uses
  %i.ow = getelementptr [8 x i8], ptr %i.ng, i64 %.0293630
  %i.ox = load i64, ptr %i.ow, align 8
  %i.oy = getelementptr [8 x i8], ptr %i.nh, i64 %.0293630
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = add nsw i64 %i.oz, %i.ox
  %i.pb = getelementptr [8 x i8], ptr %i.nj, i64 %.0293630
  %i.pc = load i64, ptr %i.pb, align 8
  %i.pd = sub i64 %i.pa, %i.pc
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.0293630
  store i64 %i.pd, ptr %i.pe, align 8
  %i.pf = add nuw i64 %.0293630, 1                ; 4 uses
  %i.pg = getelementptr [8 x i8], ptr %i.ng, i64 %i.pf
  %i.ph = load i64, ptr %i.pg, align 8
  %i.pi = getelementptr [8 x i8], ptr %i.nh, i64 %i.pf
  %i.pj = load i64, ptr %i.pi, align 8
  %i.pk = add nsw i64 %i.pj, %i.ph
  %i.pl = getelementptr [8 x i8], ptr %i.nj, i64 %i.pf
  %i.pm = load i64, ptr %i.pl, align 8
  %i.pn = sub i64 %i.pk, %i.pm
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.pf
  store i64 %i.pn, ptr %i.po, align 8
  %i.pp = add nuw i64 %.0293630, 2                ; 2 uses
  %exitcond719.not.1 = icmp eq i64 %i.pp, %3
  br i1 %exitcond719.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1017, !llvm.loop !962

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph1017.prol.loopexit, %scalar.ph1017, %middle.block1031, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread33.i, %bb.bc
  %.2 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block1031 ], [ %.1632, %bb.bc ], [ %.1632, %.thread33.i ], [ %.9, %scalar.ph1017.prol.loopexit ], [ %.9, %scalar.ph1017 ], [ %.1632, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.pq = add nsw i64 %.0297633, 1                ; 2 uses
  %exitcond720.not = icmp eq i64 %i.pq, %i.kq
  br i1 %exitcond720.not, label %.thread542, label %bb.bc, !llvm.loop !963

.thread542:                                       ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375, %bb.az, %bb.ay, %.lr.ph642, %.lr.ph642
  %.4 = phi i64 [ %.0537640, %bb.az ], [ %.0537640, %bb.ay ], [ %.0537640, %.lr.ph642 ], [ %.0537640, %.lr.ph642 ], [ %.0537640, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit375 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %.idx = mul i64 %i.jr, 6
  %i.pr = getelementptr i8, ptr %i.k, i64 %.idx   ; 3 uses
  %i.ps = load i16, ptr %i.pr, align 2
  %i.pt = zext i16 %i.ps to i64                   ; 3 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.pt
  %i.pv = load i64, ptr %i.pu, align 8            ; 4 uses
  %i.pw = icmp slt i64 %i.pv, %.0291663
  br i1 %i.pw, label %bb.bj, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread

bb.bj:                                            ; preds = %.thread542
  %.not.i380 = icmp eq i64 %.4, 0
  br i1 %.not.i380, label %.thread33.thread.i386, label %.lr.ph.i381

.lr.ph.i381:                                      ; preds = %bb.bj, %bb.bo
  %.02542.i382 = phi i64 [ %i.qy, %bb.bo ], [ 0, %bb.bj ] ; 9 uses
  %i.px = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02542.i382 ; 6 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = load i64, ptr %i.py, align 8            ; 2 uses
  %i.qa = icmp eq i64 %i.pv, %i.pz
  br i1 %i.qa, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i381
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qc = load i64, ptr %i.qb, align 8            ; 2 uses
  %i.qd = icmp eq i64 %i.qc, -1
  br i1 %i.qd, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396:   ; preds = %bb.bk
  %i.qe = load i64, ptr %i.px, align 8            ; 2 uses
  %i.qf = icmp eq i64 %i.qe, -1
  br i1 %i.qf, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i381
  %i.qg = icmp slt i64 %i.pv, %i.pz
  br i1 %i.qg, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396
  %i.qh = icmp sgt i64 %i.qe, -1
  br i1 %i.qh, label %bb.bn, label %bb.bo

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395:   ; preds = %bb.bk
  %i.qi = icmp sgt i64 %i.qc, -1
  br i1 %i.qi, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395, %bb.bm, %bb.bl
  %i.qj = icmp eq i64 %.4, 1
  %spec.select553 = select i1 %i.qj, i64 2, i64 %.4 ; 9 uses
  %.043.i390 = add i64 %spec.select553, -1        ; 4 uses
  %i.qk = icmp ugt i64 %.043.i390, %.02542.i382
  br i1 %i.qk, label %.lr.ph46.i391.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397

.lr.ph46.i391.preheader:                          ; preds = %bb.bn
  %reass.sub1114 = sub i64 %spec.select553, %.02542.i382
  %i.ql = sub i64 %.02542.i382, %spec.select553
  %i.qm = and i64 %i.ql, 1
  %lcmp.mod1087.not.not = icmp eq i64 %i.qm, 0
  br i1 %lcmp.mod1087.not.not, label %.lr.ph46.i391.prol, label %.lr.ph46.i391.prol.loopexit

.lr.ph46.i391.prol:                               ; preds = %.lr.ph46.i391.preheader
  %i.qn = getelementptr [280 x i8], ptr %i.ie, i64 %spec.select553
  %i.qo = getelementptr i8, ptr %i.qn, i64 -560
  %i.qp = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.043.i390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.qp, ptr noundef nonnull align 8 dereferenceable(280) %i.qo, i64 280, i1 false)
  %.0.i394.prol = add i64 %spec.select553, -2
  br label %.lr.ph46.i391.prol.loopexit

.lr.ph46.i391.prol.loopexit:                      ; preds = %.lr.ph46.i391.prol, %.lr.ph46.i391.preheader
  %.045.i392.unr = phi i64 [ %.043.i390, %.lr.ph46.i391.preheader ], [ %.0.i394.prol, %.lr.ph46.i391.prol ]
  %.0.in44.i393.unr = phi i64 [ %spec.select553, %.lr.ph46.i391.preheader ], [ %.043.i390, %.lr.ph46.i391.prol ]
  %i.qq = icmp eq i64 %reass.sub1114, 2
  br i1 %i.qq, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397, label %.lr.ph46.i391

.lr.ph46.i391:                                    ; preds = %.lr.ph46.i391.prol.loopexit, %.lr.ph46.i391
  %.045.i392 = phi i64 [ %.0.i394.11090, %.lr.ph46.i391 ], [ %.045.i392.unr, %.lr.ph46.i391.prol.loopexit ] ; 4 uses
  %.0.in44.i393 = phi i64 [ %.0.i394, %.lr.ph46.i391 ], [ %.0.in44.i393.unr, %.lr.ph46.i391.prol.loopexit ]
  %i.qr = getelementptr [280 x i8], ptr %i.ie, i64 %.0.in44.i393
  %i.qs = getelementptr i8, ptr %i.qr, i64 -560
  %i.qt = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.045.i392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.qt, ptr noundef nonnull align 8 dereferenceable(280) %i.qs, i64 280, i1 false)
  %.0.i394 = add i64 %.045.i392, -1               ; 2 uses
  %i.qu = getelementptr [280 x i8], ptr %i.ie, i64 %.045.i392
  %i.qv = getelementptr i8, ptr %i.qu, i64 -560
  %i.qw = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.0.i394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.qw, ptr noundef nonnull align 8 dereferenceable(280) %i.qv, i64 280, i1 false)
  %.0.i394.11090 = add i64 %.045.i392, -2         ; 2 uses
  %i.qx = icmp ugt i64 %.0.i394.11090, %.02542.i382
  br i1 %i.qx, label %.lr.ph46.i391, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397, !llvm.loop !386

bb.bo:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395, %bb.bm, %bb.bl
  %i.qy = add nuw i64 %.02542.i382, 1             ; 2 uses
  %exitcond.not.i383 = icmp eq i64 %i.qy, %.4
  br i1 %exitcond.not.i383, label %.thread33.i384, label %.lr.ph.i381, !llvm.loop !387

.thread33.i384:                                   ; preds = %bb.bo
  %i.qz = icmp eq i64 %.4, 1
  br i1 %i.qz, label %.thread33.thread.i386, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread

.thread33.thread.i386:                            ; preds = %.thread33.i384, %bb.bj
  %i.ra = add nuw nsw i64 %.4, 1
  %i.rb = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.4
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397: ; preds = %.lr.ph46.i391.prol.loopexit, %.lr.ph46.i391, %bb.bn, %.thread33.thread.i386
  %.12 = phi i64 [ %i.ra, %.thread33.thread.i386 ], [ %spec.select553, %bb.bn ], [ %spec.select553, %.lr.ph46.i391 ], [ %spec.select553, %.lr.ph46.i391.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i388 = phi ptr [ %i.rb, %.thread33.thread.i386 ], [ %i.px, %bb.bn ], [ %i.px, %.lr.ph46.i391 ], [ %i.px, %.lr.ph46.i391.prol.loopexit ] ; 2 uses
  %.1.ph.i389 = phi i64 [ %.4, %.thread33.thread.i386 ], [ %.02542.i382, %bb.bn ], [ %.02542.i382, %.lr.ph46.i391 ], [ %.02542.i382, %.lr.ph46.i391.prol.loopexit ] ; 3 uses
  %.sroa.7536.0..lcssa.sink.i388.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i388, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i388, i8 -1, i64 16, i1 false)
  store i64 %i.pv, ptr %.sroa.7536.0..lcssa.sink.i388.sroa_idx, align 8
  %.not327 = icmp eq i64 %.1.ph.i389, 4294967295
  %brmerge679 = or i1 %.not327, %.not682
  br i1 %brmerge679, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread, label %.lr.ph637

.lr.ph637:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397
  %i.rc = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.rd = mul i64 %4, %i.pt
  %i.re = getelementptr [8 x i8], ptr %i.rc, i64 %i.rd ; 6 uses
  %i.rf = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i389
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24 ; 6 uses
  br i1 %min.iters.check1000, label %scalar.ph999.preheader, label %vector.memcheck997

vector.memcheck997:                               ; preds = %.lr.ph637
  %i.rh = ptrtoaddr ptr %i.rc to i64
  %i.ri = mul i64 %.1.ph.i389, 280
  %i.rj = add i64 %i.ip, %i.ri
  %i.rk = mul i64 %i.iq, %i.pt
  %i.rl = add i64 %i.rk, %i.rh
  %i.rm = sub i64 %i.rl, %i.rj
  %diff.check998 = icmp ugt i64 %i.rm, -32
  br i1 %diff.check998, label %scalar.ph999.preheader, label %vector.body1004

vector.body1004:                                  ; preds = %vector.memcheck997, %vector.body1004
  %index1005 = phi i64 [ %index.next1008, %vector.body1004 ], [ 0, %vector.memcheck997 ] ; 3 uses
  %i.rn = getelementptr [8 x i8], ptr %i.re, i64 %index1005 ; 2 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 16
  %wide.load1006 = load <2 x i64>, ptr %i.rn, align 8
  %wide.load1007 = load <2 x i64>, ptr %i.ro, align 8
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %index1005 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store <2 x i64> %wide.load1006, ptr %i.rp, align 8
  store <2 x i64> %wide.load1007, ptr %i.rq, align 8
  %index.next1008 = add nuw i64 %index1005, 4     ; 2 uses
  %i.rr = icmp eq i64 %index.next1008, %n.vec1003
  br i1 %i.rr, label %middle.block1009, label %vector.body1004, !llvm.loop !964

middle.block1009:                                 ; preds = %vector.body1004
  br i1 %cmp.n1010, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread, label %scalar.ph999.preheader

scalar.ph999.preheader:                           ; preds = %vector.memcheck997, %.lr.ph637, %middle.block1009
  %.0284636.ph = phi i64 [ 0, %vector.memcheck997 ], [ 0, %.lr.ph637 ], [ %n.vec1003, %middle.block1009 ] ; 3 uses
  br i1 %lcmp.mod1093.not, label %scalar.ph999.prol.loopexit, label %scalar.ph999.prol

scalar.ph999.prol:                                ; preds = %scalar.ph999.preheader, %scalar.ph999.prol
  %.0284636.prol = phi i64 [ %i.rv, %scalar.ph999.prol ], [ %.0284636.ph, %scalar.ph999.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph999.prol ], [ 0, %scalar.ph999.preheader ]
  %i.rs = getelementptr [8 x i8], ptr %i.re, i64 %.0284636.prol
  %i.rt = load i64, ptr %i.rs, align 8
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %.0284636.prol
  store i64 %i.rt, ptr %i.ru, align 8
  %i.rv = add nuw i64 %.0284636.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1092
  br i1 %prol.iter.cmp.not, label %scalar.ph999.prol.loopexit, label %scalar.ph999.prol, !llvm.loop !965

scalar.ph999.prol.loopexit:                       ; preds = %scalar.ph999.prol, %scalar.ph999.preheader
  %.0284636.unr = phi i64 [ %.0284636.ph, %scalar.ph999.preheader ], [ %i.rv, %scalar.ph999.prol ]
  %i.rw = sub i64 %.0284636.ph, %3
  %i.rx = icmp ugt i64 %i.rw, -4
  br i1 %i.rx, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread, label %scalar.ph999

scalar.ph999:                                     ; preds = %scalar.ph999.prol.loopexit, %scalar.ph999
  %.0284636 = phi i64 [ %i.sn, %scalar.ph999 ], [ %.0284636.unr, %scalar.ph999.prol.loopexit ] ; 6 uses
  %i.ry = getelementptr [8 x i8], ptr %i.re, i64 %.0284636
  %i.rz = load i64, ptr %i.ry, align 8
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %.0284636
  store i64 %i.rz, ptr %i.sa, align 8
  %i.sb = add nuw i64 %.0284636, 1                ; 2 uses
  %i.sc = getelementptr [8 x i8], ptr %i.re, i64 %i.sb
  %i.sd = load i64, ptr %i.sc, align 8
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %i.sb
  store i64 %i.sd, ptr %i.se, align 8
  %i.sf = add nuw i64 %.0284636, 2                ; 2 uses
  %i.sg = getelementptr [8 x i8], ptr %i.re, i64 %i.sf
  %i.sh = load i64, ptr %i.sg, align 8
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %i.sf
  store i64 %i.sh, ptr %i.si, align 8
  %i.sj = add nuw i64 %.0284636, 3                ; 2 uses
  %i.sk = getelementptr [8 x i8], ptr %i.re, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %i.sj
  store i64 %i.sl, ptr %i.sm, align 8
  %i.sn = add nuw i64 %.0284636, 4                ; 2 uses
  %exitcond725.not.3 = icmp eq i64 %i.sn, %3
  br i1 %exitcond725.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread, label %scalar.ph999, !llvm.loop !966

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396, %scalar.ph999.prol.loopexit, %scalar.ph999, %middle.block1009, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397, %.thread33.i384, %.thread542
  %.6 = phi i64 [ %.12, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397 ], [ %.12, %middle.block1009 ], [ %.4, %.thread542 ], [ %.4, %.thread33.i384 ], [ %.12, %scalar.ph999.prol.loopexit ], [ %.12, %scalar.ph999 ], [ %.4, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396 ] ; 11 uses
  %i.so = getelementptr i8, ptr %i.pr, i64 2
  %i.sp = load i16, ptr %i.so, align 2
  %i.sq = zext i16 %i.sp to i64                   ; 3 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.sq
  %i.ss = load i64, ptr %i.sr, align 8            ; 4 uses
  %i.st = icmp slt i64 %i.ss, %.0291663
  br i1 %i.st, label %bb.bp, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1

bb.bp:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread
  %.not.i380.1 = icmp eq i64 %.6, 0
  br i1 %.not.i380.1, label %.thread33.thread.i386.1, label %.lr.ph.i381.1

.lr.ph.i381.1:                                    ; preds = %bb.bp, %bb.bt
  %.02542.i382.1 = phi i64 [ %i.tg, %bb.bt ], [ 0, %bb.bp ] ; 9 uses
  %i.su = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02542.i382.1 ; 6 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sw = load i64, ptr %i.sv, align 8            ; 2 uses
  %i.sx = icmp eq i64 %i.ss, %i.sw
  br i1 %i.sx, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i381.1
  %i.sy = icmp slt i64 %i.ss, %i.sw
  br i1 %i.sy, label %bb.bu, label %bb.bt

bb.br:                                            ; preds = %.lr.ph.i381.1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.ta = load i64, ptr %i.sz, align 8            ; 2 uses
  %i.tb = icmp eq i64 %i.ta, -1
  br i1 %i.tb, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1: ; preds = %bb.br
  %i.tc = icmp sgt i64 %i.ta, -1
  br i1 %i.tc, label %bb.bu, label %bb.bt

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1: ; preds = %bb.br
  %i.td = load i64, ptr %i.su, align 8            ; 2 uses
  %i.te = icmp eq i64 %i.td, -1
  br i1 %i.te, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1, label %bb.bs

bb.bs:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1
  %i.tf = icmp sgt i64 %i.td, -1
  br i1 %i.tf, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1, %bb.bq
  %i.tg = add nuw i64 %.02542.i382.1, 1           ; 2 uses
  %exitcond.not.i383.1 = icmp eq i64 %i.tg, %.6
  br i1 %exitcond.not.i383.1, label %.thread33.i384.1, label %.lr.ph.i381.1, !llvm.loop !387

.thread33.i384.1:                                 ; preds = %bb.bt
  %i.th = icmp eq i64 %.6, 1
  br i1 %i.th, label %.thread33.thread.i386.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1

bb.bu:                                            ; preds = %bb.bs, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.1, %bb.bq
  %i.ti = icmp eq i64 %.6, 1
  %spec.select553.1 = select i1 %i.ti, i64 2, i64 %.6 ; 9 uses
  %.043.i390.1 = add i64 %spec.select553.1, -1    ; 4 uses
  %i.tj = icmp ugt i64 %.043.i390.1, %.02542.i382.1
  br i1 %i.tj, label %.lr.ph46.i391.1.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1

.lr.ph46.i391.1.preheader:                        ; preds = %bb.bu
  %reass.sub1115 = sub i64 %spec.select553.1, %.02542.i382.1
  %i.tk = sub i64 %.02542.i382.1, %spec.select553.1
  %i.tl = and i64 %i.tk, 1
  %lcmp.mod1100.not.not = icmp eq i64 %i.tl, 0
  br i1 %lcmp.mod1100.not.not, label %.lr.ph46.i391.1.prol, label %.lr.ph46.i391.1.prol.loopexit

.lr.ph46.i391.1.prol:                             ; preds = %.lr.ph46.i391.1.preheader
  %i.tm = getelementptr [280 x i8], ptr %i.ie, i64 %spec.select553.1
  %i.tn = getelementptr i8, ptr %i.tm, i64 -560
  %i.to = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.043.i390.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.to, ptr noundef nonnull align 8 dereferenceable(280) %i.tn, i64 280, i1 false)
  %.0.i394.1.prol = add i64 %spec.select553.1, -2
  br label %.lr.ph46.i391.1.prol.loopexit

.lr.ph46.i391.1.prol.loopexit:                    ; preds = %.lr.ph46.i391.1.prol, %.lr.ph46.i391.1.preheader
  %.045.i392.1.unr = phi i64 [ %.043.i390.1, %.lr.ph46.i391.1.preheader ], [ %.0.i394.1.prol, %.lr.ph46.i391.1.prol ]
  %.0.in44.i393.1.unr = phi i64 [ %spec.select553.1, %.lr.ph46.i391.1.preheader ], [ %.043.i390.1, %.lr.ph46.i391.1.prol ]
  %i.tp = icmp eq i64 %reass.sub1115, 2
  br i1 %i.tp, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1, label %.lr.ph46.i391.1

.lr.ph46.i391.1:                                  ; preds = %.lr.ph46.i391.1.prol.loopexit, %.lr.ph46.i391.1
  %.045.i392.1 = phi i64 [ %.0.i394.1.1, %.lr.ph46.i391.1 ], [ %.045.i392.1.unr, %.lr.ph46.i391.1.prol.loopexit ] ; 4 uses
  %.0.in44.i393.1 = phi i64 [ %.0.i394.1, %.lr.ph46.i391.1 ], [ %.0.in44.i393.1.unr, %.lr.ph46.i391.1.prol.loopexit ]
  %i.tq = getelementptr [280 x i8], ptr %i.ie, i64 %.0.in44.i393.1
  %i.tr = getelementptr i8, ptr %i.tq, i64 -560
  %i.ts = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.045.i392.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ts, ptr noundef nonnull align 8 dereferenceable(280) %i.tr, i64 280, i1 false)
  %.0.i394.1 = add i64 %.045.i392.1, -1           ; 2 uses
  %i.tt = getelementptr [280 x i8], ptr %i.ie, i64 %.045.i392.1
  %i.tu = getelementptr i8, ptr %i.tt, i64 -560
  %i.tv = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.0.i394.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.tv, ptr noundef nonnull align 8 dereferenceable(280) %i.tu, i64 280, i1 false)
  %.0.i394.1.1 = add i64 %.045.i392.1, -2         ; 2 uses
  %i.tw = icmp ugt i64 %.0.i394.1.1, %.02542.i382.1
  br i1 %i.tw, label %.lr.ph46.i391.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1, !llvm.loop !386

.thread33.thread.i386.1:                          ; preds = %.thread33.i384.1, %bb.bp
  %i.tx = add nuw nsw i64 %.6, 1
  %i.ty = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.6
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1: ; preds = %.lr.ph46.i391.1.prol.loopexit, %.lr.ph46.i391.1, %.thread33.thread.i386.1, %bb.bu
  %.12.1 = phi i64 [ %i.tx, %.thread33.thread.i386.1 ], [ %spec.select553.1, %bb.bu ], [ %spec.select553.1, %.lr.ph46.i391.1 ], [ %spec.select553.1, %.lr.ph46.i391.1.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i388.1 = phi ptr [ %i.ty, %.thread33.thread.i386.1 ], [ %i.su, %bb.bu ], [ %i.su, %.lr.ph46.i391.1 ], [ %i.su, %.lr.ph46.i391.1.prol.loopexit ] ; 2 uses
  %.1.ph.i389.1 = phi i64 [ %.6, %.thread33.thread.i386.1 ], [ %.02542.i382.1, %bb.bu ], [ %.02542.i382.1, %.lr.ph46.i391.1 ], [ %.02542.i382.1, %.lr.ph46.i391.1.prol.loopexit ] ; 3 uses
  %.sroa.7536.0..lcssa.sink.i388.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i388.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i388.1, i8 -1, i64 16, i1 false)
  store i64 %i.ss, ptr %.sroa.7536.0..lcssa.sink.i388.sroa_idx.1, align 8
  %.not327.1 = icmp eq i64 %.1.ph.i389.1, 4294967295
  %brmerge679.1 = or i1 %.not327.1, %.not682
  br i1 %brmerge679.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1, label %.lr.ph637.1

.lr.ph637.1:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1
  %i.tz = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.ua = mul i64 %4, %i.sq
  %i.ub = getelementptr [8 x i8], ptr %i.tz, i64 %i.ua ; 6 uses
  %i.uc = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i389.1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24 ; 6 uses
  br i1 %min.iters.check985, label %scalar.ph984.preheader, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph637.1
  %i.ue = ptrtoaddr ptr %i.tz to i64
  %i.uf = mul i64 %.1.ph.i389.1, 280
  %i.ug = add i64 %i.in, %i.uf
  %i.uh = mul i64 %i.io, %i.sq
  %i.ui = add i64 %i.uh, %i.ue
  %i.uj = sub i64 %i.ui, %i.ug
  %diff.check983 = icmp ugt i64 %i.uj, -32
  br i1 %diff.check983, label %scalar.ph984.preheader, label %vector.body989

vector.body989:                                   ; preds = %vector.memcheck982, %vector.body989
  %index990 = phi i64 [ %index.next993, %vector.body989 ], [ 0, %vector.memcheck982 ] ; 3 uses
  %i.uk = getelementptr [8 x i8], ptr %i.ub, i64 %index990 ; 2 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 16
  %wide.load991 = load <2 x i64>, ptr %i.uk, align 8
  %wide.load992 = load <2 x i64>, ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %index990 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store <2 x i64> %wide.load991, ptr %i.um, align 8
  store <2 x i64> %wide.load992, ptr %i.un, align 8
  %index.next993 = add nuw i64 %index990, 4       ; 2 uses
  %i.uo = icmp eq i64 %index.next993, %n.vec988
  br i1 %i.uo, label %middle.block994, label %vector.body989, !llvm.loop !967

middle.block994:                                  ; preds = %vector.body989
  br i1 %cmp.n995, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1, label %scalar.ph984.preheader

scalar.ph984.preheader:                           ; preds = %vector.memcheck982, %.lr.ph637.1, %middle.block994
  %.0284636.1.ph = phi i64 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph637.1 ], [ %n.vec988, %middle.block994 ] ; 3 uses
  br i1 %lcmp.mod1103.not, label %scalar.ph984.prol.loopexit, label %scalar.ph984.prol

scalar.ph984.prol:                                ; preds = %scalar.ph984.preheader, %scalar.ph984.prol
  %.0284636.1.prol = phi i64 [ %i.us, %scalar.ph984.prol ], [ %.0284636.1.ph, %scalar.ph984.preheader ] ; 3 uses
  %prol.iter1104 = phi i64 [ %prol.iter1104.next, %scalar.ph984.prol ], [ 0, %scalar.ph984.preheader ]
  %i.up = getelementptr [8 x i8], ptr %i.ub, i64 %.0284636.1.prol
  %i.uq = load i64, ptr %i.up, align 8
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %.0284636.1.prol
  store i64 %i.uq, ptr %i.ur, align 8
  %i.us = add nuw i64 %.0284636.1.prol, 1         ; 2 uses
  %prol.iter1104.next = add i64 %prol.iter1104, 1 ; 2 uses
  %prol.iter1104.cmp.not = icmp eq i64 %prol.iter1104.next, %xtraiter1102
  br i1 %prol.iter1104.cmp.not, label %scalar.ph984.prol.loopexit, label %scalar.ph984.prol, !llvm.loop !968

scalar.ph984.prol.loopexit:                       ; preds = %scalar.ph984.prol, %scalar.ph984.preheader
  %.0284636.1.unr = phi i64 [ %.0284636.1.ph, %scalar.ph984.preheader ], [ %i.us, %scalar.ph984.prol ]
  %i.ut = sub i64 %.0284636.1.ph, %3
  %i.uu = icmp ugt i64 %i.ut, -4
  br i1 %i.uu, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1, label %scalar.ph984

scalar.ph984:                                     ; preds = %scalar.ph984.prol.loopexit, %scalar.ph984
  %.0284636.1 = phi i64 [ %i.vk, %scalar.ph984 ], [ %.0284636.1.unr, %scalar.ph984.prol.loopexit ] ; 6 uses
  %i.uv = getelementptr [8 x i8], ptr %i.ub, i64 %.0284636.1
  %i.uw = load i64, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %.0284636.1
  store i64 %i.uw, ptr %i.ux, align 8
  %i.uy = add nuw i64 %.0284636.1, 1              ; 2 uses
  %i.uz = getelementptr [8 x i8], ptr %i.ub, i64 %i.uy
  %i.va = load i64, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.uy
  store i64 %i.va, ptr %i.vb, align 8
  %i.vc = add nuw i64 %.0284636.1, 2              ; 2 uses
  %i.vd = getelementptr [8 x i8], ptr %i.ub, i64 %i.vc
  %i.ve = load i64, ptr %i.vd, align 8
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.vc
  store i64 %i.ve, ptr %i.vf, align 8
  %i.vg = add nuw i64 %.0284636.1, 3              ; 2 uses
  %i.vh = getelementptr [8 x i8], ptr %i.ub, i64 %i.vg
  %i.vi = load i64, ptr %i.vh, align 8
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.vg
  store i64 %i.vi, ptr %i.vj, align 8
  %i.vk = add nuw i64 %.0284636.1, 4              ; 2 uses
  %exitcond725.1.not.3 = icmp eq i64 %i.vk, %3
  br i1 %exitcond725.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1, label %scalar.ph984, !llvm.loop !969

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1, %scalar.ph984.prol.loopexit, %scalar.ph984, %middle.block994, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1, %.thread33.i384.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread
  %.6.1 = phi i64 [ %.12.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.1 ], [ %.12.1, %middle.block994 ], [ %.6, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread ], [ %.6, %.thread33.i384.1 ], [ %.12.1, %scalar.ph984.prol.loopexit ], [ %.12.1, %scalar.ph984 ], [ %.6, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.1 ] ; 11 uses
  %i.vl = getelementptr i8, ptr %i.pr, i64 4
  %i.vm = load i16, ptr %i.vl, align 2
  %i.vn = zext i16 %i.vm to i64                   ; 3 uses
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.vn
  %i.vp = load i64, ptr %i.vo, align 8            ; 4 uses
  %i.vq = icmp slt i64 %i.vp, %.0291663
  br i1 %i.vq, label %bb.bv, label %.loopexit590

bb.bv:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1
  %.not.i380.2 = icmp eq i64 %.6.1, 0
  br i1 %.not.i380.2, label %.thread33.thread.i386.2, label %.lr.ph.i381.2

.lr.ph.i381.2:                                    ; preds = %bb.bv, %bb.bz
  %.02542.i382.2 = phi i64 [ %i.wd, %bb.bz ], [ 0, %bb.bv ] ; 9 uses
  %i.vr = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.02542.i382.2 ; 6 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load i64, ptr %i.vs, align 8            ; 2 uses
  %i.vu = icmp eq i64 %i.vp, %i.vt
  br i1 %i.vu, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i381.2
  %i.vv = icmp slt i64 %i.vp, %i.vt
  br i1 %i.vv, label %bb.ca, label %bb.bz

bb.bx:                                            ; preds = %.lr.ph.i381.2
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vx = load i64, ptr %i.vw, align 8            ; 2 uses
  %i.vy = icmp eq i64 %i.vx, -1
  br i1 %i.vy, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2: ; preds = %bb.bx
  %i.vz = icmp sgt i64 %i.vx, -1
  br i1 %i.vz, label %bb.ca, label %bb.bz

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2: ; preds = %bb.bx
  %i.wa = load i64, ptr %i.vr, align 8            ; 2 uses
  %i.wb = icmp eq i64 %i.wa, -1
  br i1 %i.wb, label %.loopexit590, label %bb.by

bb.by:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2
  %i.wc = icmp sgt i64 %i.wa, -1
  br i1 %i.wc, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2, %bb.bw
  %i.wd = add nuw i64 %.02542.i382.2, 1           ; 2 uses
  %exitcond.not.i383.2 = icmp eq i64 %i.wd, %.6.1
  br i1 %exitcond.not.i383.2, label %.thread33.i384.2, label %.lr.ph.i381.2, !llvm.loop !387

.thread33.i384.2:                                 ; preds = %bb.bz
  %i.we = icmp eq i64 %.6.1, 1
  br i1 %i.we, label %.thread33.thread.i386.2, label %.loopexit590

bb.ca:                                            ; preds = %bb.by, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i395.2, %bb.bw
  %i.wf = icmp eq i64 %.6.1, 1
  %spec.select553.2 = select i1 %i.wf, i64 2, i64 %.6.1 ; 9 uses
  %.043.i390.2 = add i64 %spec.select553.2, -1    ; 4 uses
  %i.wg = icmp ugt i64 %.043.i390.2, %.02542.i382.2
  br i1 %i.wg, label %.lr.ph46.i391.2.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2

.lr.ph46.i391.2.preheader:                        ; preds = %bb.ca
  %reass.sub1116 = sub i64 %spec.select553.2, %.02542.i382.2
  %i.wh = sub i64 %.02542.i382.2, %spec.select553.2
  %i.wi = and i64 %i.wh, 1
  %lcmp.mod1109.not.not = icmp eq i64 %i.wi, 0
  br i1 %lcmp.mod1109.not.not, label %.lr.ph46.i391.2.prol, label %.lr.ph46.i391.2.prol.loopexit

.lr.ph46.i391.2.prol:                             ; preds = %.lr.ph46.i391.2.preheader
  %i.wj = getelementptr [280 x i8], ptr %i.ie, i64 %spec.select553.2
  %i.wk = getelementptr i8, ptr %i.wj, i64 -560
  %i.wl = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.043.i390.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.wl, ptr noundef nonnull align 8 dereferenceable(280) %i.wk, i64 280, i1 false)
  %.0.i394.2.prol = add i64 %spec.select553.2, -2
  br label %.lr.ph46.i391.2.prol.loopexit

.lr.ph46.i391.2.prol.loopexit:                    ; preds = %.lr.ph46.i391.2.prol, %.lr.ph46.i391.2.preheader
  %.045.i392.2.unr = phi i64 [ %.043.i390.2, %.lr.ph46.i391.2.preheader ], [ %.0.i394.2.prol, %.lr.ph46.i391.2.prol ]
  %.0.in44.i393.2.unr = phi i64 [ %spec.select553.2, %.lr.ph46.i391.2.preheader ], [ %.043.i390.2, %.lr.ph46.i391.2.prol ]
  %i.wm = icmp eq i64 %reass.sub1116, 2
  br i1 %i.wm, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2, label %.lr.ph46.i391.2

.lr.ph46.i391.2:                                  ; preds = %.lr.ph46.i391.2.prol.loopexit, %.lr.ph46.i391.2
  %.045.i392.2 = phi i64 [ %.0.i394.2.1, %.lr.ph46.i391.2 ], [ %.045.i392.2.unr, %.lr.ph46.i391.2.prol.loopexit ] ; 4 uses
  %.0.in44.i393.2 = phi i64 [ %.0.i394.2, %.lr.ph46.i391.2 ], [ %.0.in44.i393.2.unr, %.lr.ph46.i391.2.prol.loopexit ]
  %i.wn = getelementptr [280 x i8], ptr %i.ie, i64 %.0.in44.i393.2
  %i.wo = getelementptr i8, ptr %i.wn, i64 -560
  %i.wp = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.045.i392.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.wp, ptr noundef nonnull align 8 dereferenceable(280) %i.wo, i64 280, i1 false)
  %.0.i394.2 = add i64 %.045.i392.2, -1           ; 2 uses
  %i.wq = getelementptr [280 x i8], ptr %i.ie, i64 %.045.i392.2
  %i.wr = getelementptr i8, ptr %i.wq, i64 -560
  %i.ws = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.0.i394.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ws, ptr noundef nonnull align 8 dereferenceable(280) %i.wr, i64 280, i1 false)
  %.0.i394.2.1 = add i64 %.045.i392.2, -2         ; 2 uses
  %i.wt = icmp ugt i64 %.0.i394.2.1, %.02542.i382.2
  br i1 %i.wt, label %.lr.ph46.i391.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2, !llvm.loop !386

.thread33.thread.i386.2:                          ; preds = %.thread33.i384.2, %bb.bv
  %i.wu = add nuw nsw i64 %.6.1, 1
  %i.wv = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.6.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2: ; preds = %.lr.ph46.i391.2.prol.loopexit, %.lr.ph46.i391.2, %.thread33.thread.i386.2, %bb.ca
  %.12.2 = phi i64 [ %i.wu, %.thread33.thread.i386.2 ], [ %spec.select553.2, %bb.ca ], [ %spec.select553.2, %.lr.ph46.i391.2 ], [ %spec.select553.2, %.lr.ph46.i391.2.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i388.2 = phi ptr [ %i.wv, %.thread33.thread.i386.2 ], [ %i.vr, %bb.ca ], [ %i.vr, %.lr.ph46.i391.2 ], [ %i.vr, %.lr.ph46.i391.2.prol.loopexit ] ; 2 uses
  %.1.ph.i389.2 = phi i64 [ %.6.1, %.thread33.thread.i386.2 ], [ %.02542.i382.2, %bb.ca ], [ %.02542.i382.2, %.lr.ph46.i391.2 ], [ %.02542.i382.2, %.lr.ph46.i391.2.prol.loopexit ] ; 3 uses
  %.sroa.7536.0..lcssa.sink.i388.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i388.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i388.2, i8 -1, i64 16, i1 false)
  store i64 %i.vp, ptr %.sroa.7536.0..lcssa.sink.i388.sroa_idx.2, align 8
  %.not327.2 = icmp eq i64 %.1.ph.i389.2, 4294967295
  %brmerge679.2 = or i1 %.not327.2, %.not682
  br i1 %brmerge679.2, label %.loopexit590, label %.lr.ph637.2

.lr.ph637.2:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2
  %i.ww = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.wx = mul i64 %4, %i.vn
  %i.wy = getelementptr [8 x i8], ptr %i.ww, i64 %i.wx ; 6 uses
  %i.wz = getelementptr inbounds nuw [280 x i8], ptr %i.ie, i64 %.1.ph.i389.2
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 24 ; 6 uses
  br i1 %min.iters.check970, label %scalar.ph969.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph637.2
  %i.xb = ptrtoaddr ptr %i.ww to i64
  %i.xc = mul i64 %.1.ph.i389.2, 280
  %i.xd = add i64 %i.il, %i.xc
  %i.xe = mul i64 %i.im, %i.vn
  %i.xf = add i64 %i.xe, %i.xb
  %i.xg = sub i64 %i.xf, %i.xd
  %diff.check = icmp ugt i64 %i.xg, -32
  br i1 %diff.check, label %scalar.ph969.preheader, label %vector.body974

vector.body974:                                   ; preds = %vector.memcheck, %vector.body974
  %index975 = phi i64 [ %index.next978, %vector.body974 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.xh = getelementptr [8 x i8], ptr %i.wy, i64 %index975 ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 16
  %wide.load976 = load <2 x i64>, ptr %i.xh, align 8
  %wide.load977 = load <2 x i64>, ptr %i.xi, align 8
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %index975 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store <2 x i64> %wide.load976, ptr %i.xj, align 8
  store <2 x i64> %wide.load977, ptr %i.xk, align 8
  %index.next978 = add nuw i64 %index975, 4       ; 2 uses
  %i.xl = icmp eq i64 %index.next978, %n.vec973
  br i1 %i.xl, label %middle.block979, label %vector.body974, !llvm.loop !970

middle.block979:                                  ; preds = %vector.body974
  br i1 %cmp.n980, label %.loopexit590, label %scalar.ph969.preheader

scalar.ph969.preheader:                           ; preds = %vector.memcheck, %.lr.ph637.2, %middle.block979
  %.0284636.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph637.2 ], [ %n.vec973, %middle.block979 ] ; 3 uses
  br i1 %lcmp.mod1112.not, label %scalar.ph969.prol.loopexit, label %scalar.ph969.prol

scalar.ph969.prol:                                ; preds = %scalar.ph969.preheader, %scalar.ph969.prol
  %.0284636.2.prol = phi i64 [ %i.xp, %scalar.ph969.prol ], [ %.0284636.2.ph, %scalar.ph969.preheader ] ; 3 uses
  %prol.iter1113 = phi i64 [ %prol.iter1113.next, %scalar.ph969.prol ], [ 0, %scalar.ph969.preheader ]
  %i.xm = getelementptr [8 x i8], ptr %i.wy, i64 %.0284636.2.prol
  %i.xn = load i64, ptr %i.xm, align 8
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %.0284636.2.prol
  store i64 %i.xn, ptr %i.xo, align 8
  %i.xp = add nuw i64 %.0284636.2.prol, 1         ; 2 uses
  %prol.iter1113.next = add i64 %prol.iter1113, 1 ; 2 uses
  %prol.iter1113.cmp.not = icmp eq i64 %prol.iter1113.next, %xtraiter1111
  br i1 %prol.iter1113.cmp.not, label %scalar.ph969.prol.loopexit, label %scalar.ph969.prol, !llvm.loop !971

scalar.ph969.prol.loopexit:                       ; preds = %scalar.ph969.prol, %scalar.ph969.preheader
  %.0284636.2.unr = phi i64 [ %.0284636.2.ph, %scalar.ph969.preheader ], [ %i.xp, %scalar.ph969.prol ]
  %i.xq = sub i64 %.0284636.2.ph, %3
  %i.xr = icmp ugt i64 %i.xq, -4
  br i1 %i.xr, label %.loopexit590, label %scalar.ph969

scalar.ph969:                                     ; preds = %scalar.ph969.prol.loopexit, %scalar.ph969
  %.0284636.2 = phi i64 [ %i.yh, %scalar.ph969 ], [ %.0284636.2.unr, %scalar.ph969.prol.loopexit ] ; 6 uses
  %i.xs = getelementptr [8 x i8], ptr %i.wy, i64 %.0284636.2
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %.0284636.2
  store i64 %i.xt, ptr %i.xu, align 8
  %i.xv = add nuw i64 %.0284636.2, 1              ; 2 uses
  %i.xw = getelementptr [8 x i8], ptr %i.wy, i64 %i.xv
  %i.xx = load i64, ptr %i.xw, align 8
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.xv
  store i64 %i.xx, ptr %i.xy, align 8
  %i.xz = add nuw i64 %.0284636.2, 2              ; 2 uses
  %i.ya = getelementptr [8 x i8], ptr %i.wy, i64 %i.xz
  %i.yb = load i64, ptr %i.ya, align 8
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.xz
  store i64 %i.yb, ptr %i.yc, align 8
  %i.yd = add nuw i64 %.0284636.2, 3              ; 2 uses
  %i.ye = getelementptr [8 x i8], ptr %i.wy, i64 %i.yd
  %i.yf = load i64, ptr %i.ye, align 8
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.yd
  store i64 %i.yf, ptr %i.yg, align 8
  %i.yh = add nuw i64 %.0284636.2, 4              ; 2 uses
  %exitcond725.2.not.3 = icmp eq i64 %i.yh, %3
  br i1 %exitcond725.2.not.3, label %.loopexit590, label %scalar.ph969, !llvm.loop !972

.loopexit590:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2, %scalar.ph969.prol.loopexit, %scalar.ph969, %middle.block979, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1, %.thread33.i384.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2, %.lr.ph642
  %.7 = phi i64 [ %.0537640, %.lr.ph642 ], [ %.12.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.2 ], [ %.12.2, %middle.block979 ], [ %.6.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit397.thread.1 ], [ %.6.1, %.thread33.i384.2 ], [ %.12.2, %scalar.ph969.prol.loopexit ], [ %.12.2, %scalar.ph969 ], [ %.6.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i396.2 ] ; 3 uses
  %i.yi = add nsw i64 %.0294641, 1                ; 2 uses
  %exitcond737.not = icmp eq i64 %i.yi, %i.jn
  br i1 %exitcond737.not, label %._crit_edge643, label %.lr.ph642, !llvm.loop !973

._crit_edge643:                                   ; preds = %.loopexit590
  %i.yj = icmp ugt i64 %.7, 1
  br i1 %i.yj, label %.preheader591, label %.thread548

.preheader591:                                    ; preds = %._crit_edge643
  %i.yk = uitofp i64 %.0287664 to double
  %i.yl = mul i64 %i.jc, %4                       ; 2 uses
  %i.ym = uitofp i64 %.0285665 to double          ; 2 uses
  br label %bb.cc

bb.cb:                                            ; preds = %._crit_edge654
  %i.yn = load i32, ptr %i.p, align 8
  %i.yo = icmp eq i32 %i.yn, 1
  br i1 %i.yo, label %bb.ch, label %bb.co

bb.cc:                                            ; preds = %.preheader591, %._crit_edge654
  %.0277658 = phi i64 [ 0, %.preheader591 ], [ %i.zb, %._crit_edge654 ] ; 4 uses
  %.0280657 = phi double [ 1.797690e+308, %.preheader591 ], [ %.1281, %._crit_edge654 ] ; 2 uses
  %.0282656 = phi i64 [ 4294967295, %.preheader591 ], [ %.1283, %._crit_edge654 ]
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0277658
  %i.yq = load i64, ptr %i.yp, align 8
  %i.yr = uitofp i64 %i.yq to double
  %i.ys = fadd double %i.yr, 1.000000e+00
  %i.yt = fdiv double %i.ys, %i.yk
  %i.yu = call double @log(double noundef %i.yt) #30
  %i.yv = fdiv double %i.yu, f0xBFE62E42FEFA39EF  ; 2 uses
  br i1 %.not682, label %._crit_edge654, label %.lr.ph653

.lr.ph653:                                        ; preds = %bb.cc
  %i.yw = load ptr, ptr %i.if, align 8
  %i.yx = getelementptr [8 x i8], ptr %i.yw, i64 %i.yl
  %i.yy = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.0277658
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 624
  br label %bb.cd

._crit_edge654:                                   ; preds = %bb.cg, %bb.cc
  %.0278.lcssa = phi double [ %i.yv, %bb.cc ], [ %.1279, %bb.cg ] ; 2 uses
  %i.za = fcmp olt double %.0278.lcssa, %.0280657 ; 2 uses
  %.1283 = select i1 %i.za, i64 %.0277658, i64 %.0282656 ; 5 uses
  %.1281 = select i1 %i.za, double %.0278.lcssa, double %.0280657
  %i.zb = add nuw i64 %.0277658, 1                ; 2 uses
  %exitcond741.not = icmp eq i64 %i.zb, %.7
  br i1 %exitcond741.not, label %bb.cb, label %bb.cc, !llvm.loop !974

bb.cd:                                            ; preds = %.lr.ph653, %bb.cg
  %.0276651 = phi i64 [ 0, %.lr.ph653 ], [ %i.aae, %bb.cg ] ; 3 uses
  %.0278650 = phi double [ %i.yv, %.lr.ph653 ], [ %.1279, %bb.cg ] ; 2 uses
  %i.zc = getelementptr [8 x i8], ptr %i.yx, i64 %.0276651
  %i.zd = load i64, ptr %i.zc, align 8
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %.0276651
  %i.zf = load i64, ptr %i.ze, align 8
  %i.zg = sub nsw i64 %i.zd, %i.zf                ; 2 uses
  %i.zh = shl nsw i64 %i.zg, 1
  %.lobit.i398 = ashr i64 %i.zg, 63
  %i.zi = xor i64 %i.zh, %.lobit.i398             ; 3 uses
  %i.zj = icmp slt i64 %i.zi, 256
  br i1 %i.zj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.zi
  %i.zl = load i64, ptr %i.zk, align 8
  %i.zm = uitofp i64 %i.zl to double
  %i.zn = fadd double %i.zm, 1.000000e+00
  %i.zo = fdiv double %i.zn, %i.ym
  %i.zp = call double @log(double noundef %i.zo) #30
  %i.zq = fdiv double %i.zp, f0x3FE62E42FEFA39EF
  %i.zr = fsub double %.0278650, %i.zq
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.zs = load i64, ptr %i.ih, align 8
  %i.zt = uitofp i64 %i.zs to double
  %i.zu = fadd double %i.zt, 1.000000e+00
  %i.zv = fdiv double %i.zu, %i.ym
  %i.zw = call double @log(double noundef %i.zv) #30
  %i.zx = fdiv double %i.zw, f0x3FE62E42FEFA39EF
  %i.zy = add nsw i64 %i.zi, -256
  %i.zz = uitofp nneg i64 %i.zy to double
  %i.aaa = call double @log(double noundef %i.zz) #30
  %i.aab = fdiv double %i.aaa, f0x3FE62E42FEFA39EF
  %i.aac = fsub double %i.aab, %i.zx
  %i.aad = fadd double %.0278650, %i.aac
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %.1279 = phi double [ %i.zr, %bb.ce ], [ %i.aad, %bb.cf ] ; 2 uses
  %i.aae = add nuw i64 %.0276651, 1               ; 2 uses
  %exitcond740.not = icmp eq i64 %i.aae, %3
  br i1 %exitcond740.not, label %._crit_edge654, label %bb.cd, !llvm.loop !975

bb.ch:                                            ; preds = %bb.cb
  %i.aaf = and i64 %.1283, 255
  %i.aag = load i64, ptr %i.ij, align 8           ; 6 uses
  %i.aah = load i64, ptr %i.ik, align 8
  %i.aai = icmp eq i64 %i.aag, %i.aah
  br i1 %i.aai, label %bb.ci, label %._crit_edge.i399

._crit_edge.i399:                                 ; preds = %bb.ch
  %.pre.i = load ptr, ptr %i.ii, align 8
  br label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.aaj = shl i64 %i.aag, 1                      ; 2 uses
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.aaj, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.ik, align 8
  %i.aak = icmp ugt i64 %i.aaj, 2305843009213693951
  %i.aal = shl i64 %spec.select.i, 3
  %i.aam = select i1 %i.aak, i64 -1, i64 %i.aal
  %i.aan = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aam) #33
          to label %.noexc401 unwind label %bb.cn ; 3 uses

.noexc401:                                        ; preds = %bb.ci
  %.not.i400 = icmp eq i64 %i.aag, 0
  br i1 %.not.i400, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.noexc401
  %i.aao = load ptr, ptr %i.ii, align 8           ; 3 uses
  %i.aap = shl i64 %i.aag, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aan, ptr align 8 %i.aao, i64 %i.aap, i1 false)
  %i.aaq = icmp eq ptr %i.aao, null
  br i1 %i.aaq, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZdaPv(ptr noundef nonnull %i.aao) #31
  %.pre6.pre.i = load i64, ptr %i.ij, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %.noexc401
end_hunk_1
begin_hunk_2_@_ZN5o3dgc13SC3DMCEncoderItE14EncodeIntArrayEPKlmmmRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %bb.g, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.g:                                             ; preds = %bb.f
  store i64 %2, ptr %i.q, align 8
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %i.u = shl nuw i64 %2, 3
  %i.v = select i1 %i.t, i64 -1, i64 %i.u
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #33
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.z = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.aa = shl i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.z, i64 %i.aa, i1 false)
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.z) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc
  store ptr %i.w, ptr %i.p, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

_ZN5o3dgc6VectorIlE8AllocateEm.exit:              ; preds = %bb.j, %bb.f
  %i.ac = trunc i32 %6 to i8
  %i.ad = and i8 %i.ac, 7
  %i.ae = or disjoint i8 %i.ad, 80
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3248
  store i64 0, ptr %i.af, align 8
  br label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212

bb.k:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.l:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.m:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.n:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.o:                                             ; preds = %bb.x, %bb.w, %bb.g, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp392

bb.p:                                             ; preds = %bb.e
  %i.al = trunc i32 %6 to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 64
  %i.ao = mul i64 %3, %2
  %.tr = trunc i64 %i.ao to i32
  %i.ap = shl i32 %.tr, 3
  %i.aq = add i32 %i.ap, 100                      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = zext i32 %i.aq to i64                   ; 3 uses
  %i.au = icmp ult i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  br i1 %i.au, label %bb.q, label %._crit_edge497

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #31
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %i.at, ptr %i.ar, align 8
  %i.ay = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #33
          to label %bb.t unwind label %.loopexit.split-lp392.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %bb.s
  store ptr %i.ay, ptr %i.av, align 8
  br label %._crit_edge497

.loopexit391:                                     ; preds = %.lr.ph21.i
  %lpad.loopexit393 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp392

.loopexit.split-lp392.loopexit:                   ; preds = %.lr.ph.i
  %lpad.loopexit396 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp392

.loopexit.split-lp392.loopexit.split-lp:          ; preds = %._crit_edge.i, %bb.v, %bb.u, %._crit_edge497, %bb.s
  %lpad.loopexit.split-lp397 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp392

._crit_edge497:                                   ; preds = %bb.p, %bb.t
  %i.az = phi ptr [ %i.ay, %bb.t ], [ %i.aw, %bb.p ]
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef %i.aq, ptr noundef %i.az)
          to label %bb.u unwind label %.loopexit.split-lp392.loopexit.split-lp

bb.u:                                             ; preds = %._crit_edge497
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %8)
          to label %bb.v unwind label %.loopexit.split-lp392.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.lr.ph.i unwind label %.loopexit.split-lp392.loopexit.split-lp

.lr.ph.i:                                         ; preds = %bb.v, %.noexc209
  %i.ba = phi i32 [ %i.bd, %.noexc209 ], [ 1, %bb.v ]
  %.016.i = phi i32 [ %i.bb, %.noexc209 ], [ 256, %bb.v ]
  %.01115.i = phi i32 [ %i.bc, %.noexc209 ], [ 0, %bb.v ] ; 2 uses
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.noexc209 unwind label %.loopexit.split-lp392.loopexit

.noexc209:                                        ; preds = %.lr.ph.i
  %i.bb = sub nuw i32 %.016.i, %i.ba              ; 3 uses
  %i.bc = add nuw nsw i32 %.01115.i, 1            ; 2 uses
  %i.bd = shl nuw i32 2, %.01115.i                ; 2 uses
  %.not.i208 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i208, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !951

._crit_edge.i:                                    ; preds = %.noexc209
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.lr.ph21.i unwind label %.loopexit.split-lp392.loopexit.split-lp

.lr.ph21.i:                                       ; preds = %._crit_edge.i, %.noexc211
  %.119.i = phi i32 [ %i.be, %.noexc211 ], [ %i.bc, %._crit_edge.i ]
  %i.be = add nsw i32 %.119.i, -1                 ; 3 uses
  %i.bf = lshr i32 %i.bb, %i.be
  %i.bg = and i32 %i.bf, 1
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %.noexc211 unwind label %.loopexit391

.noexc211:                                        ; preds = %.lr.ph21.i
  %.not13.i = icmp eq i32 %i.be, 0
  br i1 %.not13.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212, label %.lr.ph21.i, !llvm.loop !952

_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212: ; preds = %.noexc211, %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  %.0166 = phi i8 [ %i.ae, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ], [ %i.an, %.noexc211 ]
  %i.bh = load i32, ptr %i.m, align 8
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212
  invoke void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %7, i64 noundef 0)
          to label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit unwind label %bb.o

bb.x:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit212
  invoke void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %7, i64 noundef 0)
          to label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit unwind label %bb.o

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.w, %bb.x
  %i.bj = load i32, ptr %i.m, align 8
  invoke void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 noundef zeroext %.0166, i32 noundef %i.bj)
          to label %.preheader390 unwind label %bb.o

.preheader390:                                    ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.bk = icmp sgt i64 %2, 0
  br i1 %i.bk, label %.lr.ph438, label %._crit_edge439

.lr.ph438:                                        ; preds = %.preheader390
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bm = icmp ne i32 %6, 0                       ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 27 uses
  %.not449 = icmp eq i64 %3, 0                    ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 18 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.bu = add i64 %i.b, 624
  %i.bv = shl i64 %4, 3
  %i.bw = add i64 %i.b, 624
  %i.bx = shl i64 %4, 3
  %i.by = add i64 %i.b, 624
  %i.bz = shl i64 %4, 3
  %min.iters.check684 = icmp ult i64 %3, 10
  %n.vec687 = and i64 %3, -4                      ; 3 uses
  %cmp.n694 = icmp eq i64 %3, %n.vec687
  %xtraiter732 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  %min.iters.check669 = icmp ult i64 %3, 10
  %n.vec672 = and i64 %3, -4                      ; 3 uses
  %cmp.n679 = icmp eq i64 %3, %n.vec672
  %xtraiter742 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod743.not = icmp eq i64 %xtraiter742, 0
  %min.iters.check = icmp ult i64 %3, 10
  %n.vec = and i64 %3, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter751 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  br label %bb.y

._crit_edge439:                                   ; preds = %.loopexit387, %.preheader390
  %i.ca = load i32, ptr %i.m, align 8
  %.not = icmp eq i32 %i.ca, 1
  br i1 %.not, label %.thread353, label %bb.dr

.thread353:                                       ; preds = %._crit_edge439
  %i.cb = load i64, ptr %i.i, align 8
  %i.cc = sub i64 %i.cb, %i.j                     ; 2 uses
  %i.cd = trunc i64 %i.cc to i8
  br label %bb.eb

bb.y:                                             ; preds = %.lr.ph438, %.loopexit387
  %.0177437 = phi i64 [ 257, %.lr.ph438 ], [ %.1178, %.loopexit387 ] ; 6 uses
  %.0179436 = phi i64 [ 2, %.lr.ph438 ], [ %.1180, %.loopexit387 ] ; 6 uses
  %.0181435 = phi i64 [ 0, %.lr.ph438 ], [ %i.vs, %.loopexit387 ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0181435 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8            ; 5 uses
  %i.cg = load ptr, ptr %i.bl, align 8
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = icmp sgt i64 %i.cf, 0
  br i1 %i.cj, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.y
  %i.ck = getelementptr i8, ptr %i.ch, i64 -8
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp sgt i64 %i.ci, %i.cl
  %or.cond = and i1 %i.bm, %i.cm
  br i1 %or.cond, label %bb.z, label %.thread351

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread: ; preds = %bb.y
  %i.cn = icmp sgt i64 %i.ci, 0
  %or.cond347 = and i1 %i.bm, %i.cn
  br i1 %or.cond347, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %.thread351

bb.z:                                             ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.co = shl i64 %i.cl, 32
  %i.cp = ashr exact i64 %i.co, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread, %bb.z
  %sext = phi i64 [ %i.cp, %bb.z ], [ 0, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread ] ; 2 uses
  %sext195 = shl i64 %i.ci, 32
  %i.cq = ashr exact i64 %sext195, 32             ; 2 uses
  %i.cr = icmp slt i64 %sext, %i.cq
  br i1 %i.cr, label %.lr.ph416, label %.thread351

.lr.ph416:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %.0182415 = phi i64 [ %i.lg, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ %sext, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0346414 = phi i64 [ %.2.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 11 uses
  %i.cs = load ptr, ptr %i.bn, align 8
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.0182415
  %i.cu = load i64, ptr %i.ct, align 8
  %.idx = mul i64 %i.cu, 6
  %i.cv = getelementptr i8, ptr %i.h, i64 %.idx   ; 3 uses
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = zext i16 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8            ; 4 uses
  %i.da = icmp slt i64 %i.cz, %.0181435
  br i1 %i.da, label %bb.aa, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.aa:                                            ; preds = %.lr.ph416
  %.not.i215 = icmp eq i64 %.0346414, 0
  br i1 %.not.i215, label %.thread33.thread.i, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %bb.aa, %bb.af
  %.02542.i = phi i64 [ %i.ec, %bb.af ], [ 0, %bb.aa ] ; 9 uses
  %i.db = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.02542.i ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq i64 %i.cz, %i.dd
  br i1 %i.de, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i216
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ab
  %i.di = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1
  br i1 %i.dj, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i216
  %i.dk = icmp slt i64 %i.cz, %i.dd
  br i1 %i.dk, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.dl = icmp sgt i64 %i.di, -1
  br i1 %i.dl, label %bb.ae, label %bb.af

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ab
  %i.dm = icmp sgt i64 %i.dg, -1
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %bb.ad, %bb.ac
  %i.dn = icmp eq i64 %.0346414, 1
  %spec.select = select i1 %i.dn, i64 2, i64 %.0346414 ; 9 uses
  %.043.i = add i64 %spec.select, -1              ; 4 uses
  %i.do = icmp ugt i64 %.043.i, %.02542.i
  br i1 %i.do, label %.lr.ph46.i.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph46.i.preheader:                             ; preds = %bb.ae
  %reass.sub = sub i64 %spec.select, %.02542.i
  %i.dp = sub i64 %.02542.i, %spec.select
  %i.dq = and i64 %i.dp, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dq, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph46.i.prol, label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol:                                  ; preds = %.lr.ph46.i.preheader
  %i.dr = getelementptr [280 x i8], ptr %i.bo, i64 %spec.select
  %i.ds = getelementptr i8, ptr %i.dr, i64 -560
  %i.dt = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.dt, ptr noundef nonnull align 8 dereferenceable(280) %i.ds, i64 280, i1 false)
  %.0.i.prol = add i64 %spec.select, -2
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %.lr.ph46.i.preheader
  %.045.i.unr = phi i64 [ %.043.i, %.lr.ph46.i.preheader ], [ %.0.i.prol, %.lr.ph46.i.prol ]
  %.0.in44.i.unr = phi i64 [ %spec.select, %.lr.ph46.i.preheader ], [ %.043.i, %.lr.ph46.i.prol ]
  %i.du = icmp eq i64 %reass.sub, 2
  br i1 %i.du, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i
  %.045.i = phi i64 [ %.0.i.1730, %.lr.ph46.i ], [ %.045.i.unr, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %.0.in44.i = phi i64 [ %.0.i, %.lr.ph46.i ], [ %.0.in44.i.unr, %.lr.ph46.i.prol.loopexit ]
  %i.dv = getelementptr [280 x i8], ptr %i.bo, i64 %.0.in44.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 -560
  %i.dx = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.045.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.dx, ptr noundef nonnull align 8 dereferenceable(280) %i.dw, i64 280, i1 false)
  %.0.i = add i64 %.045.i, -1                     ; 2 uses
  %i.dy = getelementptr [280 x i8], ptr %i.bo, i64 %.045.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 -560
  %i.ea = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ea, ptr noundef nonnull align 8 dereferenceable(280) %i.dz, i64 280, i1 false)
  %.0.i.1730 = add i64 %.045.i, -2                ; 2 uses
  %i.eb = icmp ugt i64 %.0.i.1730, %.02542.i
  br i1 %i.eb, label %.lr.ph46.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, !llvm.loop !386

bb.af:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %bb.ad, %bb.ac
  %i.ec = add nuw i64 %.02542.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %.0346414
  br i1 %exitcond.not.i, label %.thread33.i, label %.lr.ph.i216, !llvm.loop !387

.thread33.i:                                      ; preds = %bb.af
  %i.ed = icmp eq i64 %.0346414, 1
  br i1 %i.ed, label %.thread33.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread33.thread.i:                               ; preds = %.thread33.i, %bb.aa
  %i.ee = add nuw nsw i64 %.0346414, 1
  %i.ef = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.0346414
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %.lr.ph46.i.prol.loopexit, %.lr.ph46.i, %bb.ae, %.thread33.thread.i
  %.4 = phi i64 [ %i.ee, %.thread33.thread.i ], [ %spec.select, %bb.ae ], [ %spec.select, %.lr.ph46.i ], [ %spec.select, %.lr.ph46.i.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.ef, %.thread33.thread.i ], [ %i.db, %bb.ae ], [ %i.db, %.lr.ph46.i ], [ %i.db, %.lr.ph46.i.prol.loopexit ] ; 2 uses
  %.1.ph.i = phi i64 [ %.0346414, %.thread33.thread.i ], [ %.02542.i, %bb.ae ], [ %.02542.i, %.lr.ph46.i ], [ %.02542.i, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i, i8 -1, i64 16, i1 false)
  store i64 %i.cz, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not206 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not206, %.not449
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.eg = mul i64 %4, %i.cx
  %i.eh = getelementptr [8 x i8], ptr %1, i64 %i.eg ; 6 uses
  %i.ei = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.1.ph.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 6 uses
  br i1 %min.iters.check684, label %scalar.ph683.preheader, label %vector.memcheck681

vector.memcheck681:                               ; preds = %.lr.ph
  %i.ek = mul i64 %.1.ph.i, 280
  %i.el = mul i64 %i.bz, %i.cx
  %i.em = add i64 %i.by, %i.ek
  %i.en = add i64 %i.el, %i.a
  %i.eo = sub i64 %i.en, %i.em
  %diff.check682 = icmp ugt i64 %i.eo, -32
  br i1 %diff.check682, label %scalar.ph683.preheader, label %vector.body688

vector.body688:                                   ; preds = %vector.memcheck681, %vector.body688
  %index689 = phi i64 [ %index.next692, %vector.body688 ], [ 0, %vector.memcheck681 ] ; 3 uses
  %i.ep = getelementptr [8 x i8], ptr %i.eh, i64 %index689 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %wide.load690 = load <2 x i64>, ptr %i.ep, align 8
  %wide.load691 = load <2 x i64>, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index689 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x i64> %wide.load690, ptr %i.er, align 8
  store <2 x i64> %wide.load691, ptr %i.es, align 8
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.et, label %middle.block693, label %vector.body688, !llvm.loop !985

middle.block693:                                  ; preds = %vector.body688
  br i1 %cmp.n694, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph683.preheader

scalar.ph683.preheader:                           ; preds = %vector.memcheck681, %.lr.ph, %middle.block693
  %.0176411.ph = phi i64 [ 0, %vector.memcheck681 ], [ 0, %.lr.ph ], [ %n.vec687, %middle.block693 ] ; 3 uses
  br i1 %lcmp.mod733.not, label %scalar.ph683.prol.loopexit, label %scalar.ph683.prol

scalar.ph683.prol:                                ; preds = %scalar.ph683.preheader, %scalar.ph683.prol
  %.0176411.prol = phi i64 [ %i.ex, %scalar.ph683.prol ], [ %.0176411.ph, %scalar.ph683.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph683.prol ], [ 0, %scalar.ph683.preheader ]
  %i.eu = getelementptr [8 x i8], ptr %i.eh, i64 %.0176411.prol
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0176411.prol
  store i64 %i.ev, ptr %i.ew, align 8
  %i.ex = add nuw i64 %.0176411.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter732
  br i1 %prol.iter.cmp.not, label %scalar.ph683.prol.loopexit, label %scalar.ph683.prol, !llvm.loop !986

scalar.ph683.prol.loopexit:                       ; preds = %scalar.ph683.prol, %scalar.ph683.preheader
  %.0176411.unr = phi i64 [ %.0176411.ph, %scalar.ph683.preheader ], [ %i.ex, %scalar.ph683.prol ]
  %i.ey = sub i64 %.0176411.ph, %3
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph683

scalar.ph683:                                     ; preds = %scalar.ph683.prol.loopexit, %scalar.ph683
  %.0176411 = phi i64 [ %i.fp, %scalar.ph683 ], [ %.0176411.unr, %scalar.ph683.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr [8 x i8], ptr %i.eh, i64 %.0176411
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0176411
  store i64 %i.fb, ptr %i.fc, align 8
  %i.fd = add nuw i64 %.0176411, 1                ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.eh, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fd
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fh = add nuw i64 %.0176411, 2                ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %i.eh, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fh
  store i64 %i.fj, ptr %i.fk, align 8
  %i.fl = add nuw i64 %.0176411, 3                ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.eh, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fl
  store i64 %i.fn, ptr %i.fo, align 8
  %i.fp = add nuw i64 %.0176411, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fp, %3
  br i1 %exitcond.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph683, !llvm.loop !987

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph683.prol.loopexit, %scalar.ph683, %middle.block693, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread33.i, %.lr.ph416
  %.2 = phi i64 [ %.4, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.4, %middle.block693 ], [ %.0346414, %.lr.ph416 ], [ %.0346414, %.thread33.i ], [ %.4, %scalar.ph683.prol.loopexit ], [ %.4, %scalar.ph683 ], [ %.0346414, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 11 uses
  %i.fq = getelementptr i8, ptr %i.cv, i64 2
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = zext i16 %i.fr to i64                   ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8            ; 4 uses
  %i.fv = icmp slt i64 %i.fu, %.0181435
  br i1 %i.fv, label %bb.ag, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.ag:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.not.i215.1 = icmp eq i64 %.2, 0
  br i1 %.not.i215.1, label %.thread33.thread.i.1, label %.lr.ph.i216.1

.lr.ph.i216.1:                                    ; preds = %bb.ag, %bb.ak
  %.02542.i.1 = phi i64 [ %i.gi, %bb.ak ], [ 0, %bb.ag ] ; 9 uses
  %i.fw = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.02542.i.1 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i64, ptr %i.fx, align 8            ; 2 uses
  %i.fz = icmp eq i64 %i.fu, %i.fy
  br i1 %i.fz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i216.1
  %i.ga = icmp slt i64 %i.fu, %i.fy
  br i1 %i.ga, label %bb.al, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.i216.1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gc = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.gd = icmp eq i64 %i.gc, -1
  br i1 %i.gd, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.ai
  %i.ge = icmp sgt i64 %i.gc, -1
  br i1 %i.ge, label %bb.al, label %bb.ak

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.ai
  %i.gf = load i64, ptr %i.fw, align 8            ; 2 uses
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %bb.aj

bb.aj:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1
  %i.gh = icmp sgt i64 %i.gf, -1
  br i1 %i.gh, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %bb.ah
  %i.gi = add nuw i64 %.02542.i.1, 1              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.gi, %.2
  br i1 %exitcond.not.i.1, label %.thread33.i.1, label %.lr.ph.i216.1, !llvm.loop !387

.thread33.i.1:                                    ; preds = %bb.ak
  %i.gj = icmp eq i64 %.2, 1
  br i1 %i.gj, label %.thread33.thread.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.al:                                            ; preds = %bb.aj, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %bb.ah
  %i.gk = icmp eq i64 %.2, 1
  %spec.select.1 = select i1 %i.gk, i64 2, i64 %.2 ; 9 uses
  %.043.i.1 = add i64 %spec.select.1, -1          ; 4 uses
  %i.gl = icmp ugt i64 %.043.i.1, %.02542.i.1
  br i1 %i.gl, label %.lr.ph46.i.1.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

.lr.ph46.i.1.preheader:                           ; preds = %bb.al
  %reass.sub754 = sub i64 %spec.select.1, %.02542.i.1
  %i.gm = sub i64 %.02542.i.1, %spec.select.1
  %i.gn = and i64 %i.gm, 1
  %lcmp.mod740.not.not = icmp eq i64 %i.gn, 0
  br i1 %lcmp.mod740.not.not, label %.lr.ph46.i.1.prol, label %.lr.ph46.i.1.prol.loopexit

.lr.ph46.i.1.prol:                                ; preds = %.lr.ph46.i.1.preheader
  %i.go = getelementptr [280 x i8], ptr %i.bo, i64 %spec.select.1
  %i.gp = getelementptr i8, ptr %i.go, i64 -560
  %i.gq = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.043.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.gq, ptr noundef nonnull align 8 dereferenceable(280) %i.gp, i64 280, i1 false)
  %.0.i.1.prol = add i64 %spec.select.1, -2
  br label %.lr.ph46.i.1.prol.loopexit

.lr.ph46.i.1.prol.loopexit:                       ; preds = %.lr.ph46.i.1.prol, %.lr.ph46.i.1.preheader
  %.045.i.1.unr = phi i64 [ %.043.i.1, %.lr.ph46.i.1.preheader ], [ %.0.i.1.prol, %.lr.ph46.i.1.prol ]
  %.0.in44.i.1.unr = phi i64 [ %spec.select.1, %.lr.ph46.i.1.preheader ], [ %.043.i.1, %.lr.ph46.i.1.prol ]
  %i.gr = icmp eq i64 %reass.sub754, 2
  br i1 %i.gr, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1, label %.lr.ph46.i.1

.lr.ph46.i.1:                                     ; preds = %.lr.ph46.i.1.prol.loopexit, %.lr.ph46.i.1
  %.045.i.1 = phi i64 [ %.0.i.1.1, %.lr.ph46.i.1 ], [ %.045.i.1.unr, %.lr.ph46.i.1.prol.loopexit ] ; 4 uses
  %.0.in44.i.1 = phi i64 [ %.0.i.1, %.lr.ph46.i.1 ], [ %.0.in44.i.1.unr, %.lr.ph46.i.1.prol.loopexit ]
  %i.gs = getelementptr [280 x i8], ptr %i.bo, i64 %.0.in44.i.1
  %i.gt = getelementptr i8, ptr %i.gs, i64 -560
  %i.gu = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.045.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.gu, ptr noundef nonnull align 8 dereferenceable(280) %i.gt, i64 280, i1 false)
  %.0.i.1 = add i64 %.045.i.1, -1                 ; 2 uses
  %i.gv = getelementptr [280 x i8], ptr %i.bo, i64 %.045.i.1
  %i.gw = getelementptr i8, ptr %i.gv, i64 -560
  %i.gx = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.0.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.gx, ptr noundef nonnull align 8 dereferenceable(280) %i.gw, i64 280, i1 false)
  %.0.i.1.1 = add i64 %.045.i.1, -2               ; 2 uses
  %i.gy = icmp ugt i64 %.0.i.1.1, %.02542.i.1
  br i1 %i.gy, label %.lr.ph46.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1, !llvm.loop !386

.thread33.thread.i.1:                             ; preds = %.thread33.i.1, %bb.ag
  %i.gz = add nuw nsw i64 %.2, 1
  %i.ha = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.2
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1: ; preds = %.lr.ph46.i.1.prol.loopexit, %.lr.ph46.i.1, %.thread33.thread.i.1, %bb.al
  %.4.1 = phi i64 [ %i.gz, %.thread33.thread.i.1 ], [ %spec.select.1, %bb.al ], [ %spec.select.1, %.lr.ph46.i.1 ], [ %spec.select.1, %.lr.ph46.i.1.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i.1 = phi ptr [ %i.ha, %.thread33.thread.i.1 ], [ %i.fw, %bb.al ], [ %i.fw, %.lr.ph46.i.1 ], [ %i.fw, %.lr.ph46.i.1.prol.loopexit ] ; 2 uses
  %.1.ph.i.1 = phi i64 [ %.2, %.thread33.thread.i.1 ], [ %.02542.i.1, %bb.al ], [ %.02542.i.1, %.lr.ph46.i.1 ], [ %.02542.i.1, %.lr.ph46.i.1.prol.loopexit ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.1, i8 -1, i64 16, i1 false)
  store i64 %i.fu, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.1, align 8
  %.not206.1 = icmp eq i64 %.1.ph.i.1, 4294967295
  %brmerge.1 = or i1 %.not206.1, %.not449
  br i1 %brmerge.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1
  %i.hb = mul i64 %4, %i.fs
  %i.hc = getelementptr [8 x i8], ptr %1, i64 %i.hb ; 6 uses
  %i.hd = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.1.ph.i.1
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24 ; 6 uses
  br i1 %min.iters.check669, label %scalar.ph668.preheader, label %vector.memcheck666

vector.memcheck666:                               ; preds = %.lr.ph.1
  %i.hf = mul i64 %.1.ph.i.1, 280
  %i.hg = mul i64 %i.bx, %i.fs
  %i.hh = add i64 %i.bw, %i.hf
  %i.hi = add i64 %i.hg, %i.a
  %i.hj = sub i64 %i.hi, %i.hh
  %diff.check667 = icmp ugt i64 %i.hj, -32
  br i1 %diff.check667, label %scalar.ph668.preheader, label %vector.body673

vector.body673:                                   ; preds = %vector.memcheck666, %vector.body673
  %index674 = phi i64 [ %index.next677, %vector.body673 ], [ 0, %vector.memcheck666 ] ; 3 uses
  %i.hk = getelementptr [8 x i8], ptr %i.hc, i64 %index674 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 16
  %wide.load675 = load <2 x i64>, ptr %i.hk, align 8
  %wide.load676 = load <2 x i64>, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %index674 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store <2 x i64> %wide.load675, ptr %i.hm, align 8
  store <2 x i64> %wide.load676, ptr %i.hn, align 8
  %index.next677 = add nuw i64 %index674, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next677, %n.vec672
  br i1 %i.ho, label %middle.block678, label %vector.body673, !llvm.loop !988

middle.block678:                                  ; preds = %vector.body673
  br i1 %cmp.n679, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph668.preheader

scalar.ph668.preheader:                           ; preds = %vector.memcheck666, %.lr.ph.1, %middle.block678
  %.0176411.1.ph = phi i64 [ 0, %vector.memcheck666 ], [ 0, %.lr.ph.1 ], [ %n.vec672, %middle.block678 ] ; 3 uses
  br i1 %lcmp.mod743.not, label %scalar.ph668.prol.loopexit, label %scalar.ph668.prol

scalar.ph668.prol:                                ; preds = %scalar.ph668.preheader, %scalar.ph668.prol
  %.0176411.1.prol = phi i64 [ %i.hs, %scalar.ph668.prol ], [ %.0176411.1.ph, %scalar.ph668.preheader ] ; 3 uses
  %prol.iter744 = phi i64 [ %prol.iter744.next, %scalar.ph668.prol ], [ 0, %scalar.ph668.preheader ]
  %i.hp = getelementptr [8 x i8], ptr %i.hc, i64 %.0176411.1.prol
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.0176411.1.prol
  store i64 %i.hq, ptr %i.hr, align 8
  %i.hs = add nuw i64 %.0176411.1.prol, 1         ; 2 uses
  %prol.iter744.next = add i64 %prol.iter744, 1   ; 2 uses
  %prol.iter744.cmp.not = icmp eq i64 %prol.iter744.next, %xtraiter742
  br i1 %prol.iter744.cmp.not, label %scalar.ph668.prol.loopexit, label %scalar.ph668.prol, !llvm.loop !989

scalar.ph668.prol.loopexit:                       ; preds = %scalar.ph668.prol, %scalar.ph668.preheader
  %.0176411.1.unr = phi i64 [ %.0176411.1.ph, %scalar.ph668.preheader ], [ %i.hs, %scalar.ph668.prol ]
  %i.ht = sub i64 %.0176411.1.ph, %3
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph668

scalar.ph668:                                     ; preds = %scalar.ph668.prol.loopexit, %scalar.ph668
  %.0176411.1 = phi i64 [ %i.ik, %scalar.ph668 ], [ %.0176411.1.unr, %scalar.ph668.prol.loopexit ] ; 6 uses
  %i.hv = getelementptr [8 x i8], ptr %i.hc, i64 %.0176411.1
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.0176411.1
  store i64 %i.hw, ptr %i.hx, align 8
  %i.hy = add nuw i64 %.0176411.1, 1              ; 2 uses
  %i.hz = getelementptr [8 x i8], ptr %i.hc, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hy
  store i64 %i.ia, ptr %i.ib, align 8
  %i.ic = add nuw i64 %.0176411.1, 2              ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %i.hc, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ic
  store i64 %i.ie, ptr %i.if, align 8
  %i.ig = add nuw i64 %.0176411.1, 3              ; 2 uses
  %i.ih = getelementptr [8 x i8], ptr %i.hc, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ig
  store i64 %i.ii, ptr %i.ij, align 8
  %i.ik = add nuw i64 %.0176411.1, 4              ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.ik, %3
  br i1 %exitcond.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph668, !llvm.loop !990

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, %scalar.ph668.prol.loopexit, %scalar.ph668, %middle.block678, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1, %.thread33.i.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.2.1 = phi i64 [ %.4.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1 ], [ %.4.1, %middle.block678 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ], [ %.2, %.thread33.i.1 ], [ %.4.1, %scalar.ph668.prol.loopexit ], [ %.4.1, %scalar.ph668 ], [ %.2, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1 ] ; 11 uses
  %i.il = getelementptr i8, ptr %i.cv, i64 4
  %i.im = load i16, ptr %i.il, align 2
  %i.in = zext i16 %i.im to i64                   ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 8            ; 4 uses
  %i.iq = icmp slt i64 %i.ip, %.0181435
  br i1 %i.iq, label %bb.am, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.am:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.not.i215.2 = icmp eq i64 %.2.1, 0
  br i1 %.not.i215.2, label %.thread33.thread.i.2, label %.lr.ph.i216.2

.lr.ph.i216.2:                                    ; preds = %bb.am, %bb.aq
  %.02542.i.2 = phi i64 [ %i.jd, %bb.aq ], [ 0, %bb.am ] ; 9 uses
  %i.ir = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.02542.i.2 ; 6 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load i64, ptr %i.is, align 8            ; 2 uses
  %i.iu = icmp eq i64 %i.ip, %i.it
  br i1 %i.iu, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i216.2
  %i.iv = icmp slt i64 %i.ip, %i.it
  br i1 %i.iv, label %bb.ar, label %bb.aq

bb.ao:                                            ; preds = %.lr.ph.i216.2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.ix = load i64, ptr %i.iw, align 8            ; 2 uses
  %i.iy = icmp eq i64 %i.ix, -1
  br i1 %i.iy, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.ao
  %i.iz = icmp sgt i64 %i.ix, -1
  br i1 %i.iz, label %bb.ar, label %bb.aq

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.ao
  %i.ja = load i64, ptr %i.ir, align 8            ; 2 uses
  %i.jb = icmp eq i64 %i.ja, -1
  br i1 %i.jb, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %bb.ap

bb.ap:                                            ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2
  %i.jc = icmp sgt i64 %i.ja, -1
  br i1 %i.jc, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %bb.an
  %i.jd = add nuw i64 %.02542.i.2, 1              ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.jd, %.2.1
  br i1 %exitcond.not.i.2, label %.thread33.i.2, label %.lr.ph.i216.2, !llvm.loop !387

.thread33.i.2:                                    ; preds = %bb.aq
  %i.je = icmp eq i64 %.2.1, 1
  br i1 %i.je, label %.thread33.thread.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.ar:                                            ; preds = %bb.ap, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %bb.an
  %i.jf = icmp eq i64 %.2.1, 1
  %spec.select.2 = select i1 %i.jf, i64 2, i64 %.2.1 ; 9 uses
  %.043.i.2 = add i64 %spec.select.2, -1          ; 4 uses
  %i.jg = icmp ugt i64 %.043.i.2, %.02542.i.2
  br i1 %i.jg, label %.lr.ph46.i.2.preheader, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

.lr.ph46.i.2.preheader:                           ; preds = %bb.ar
  %reass.sub755 = sub i64 %spec.select.2, %.02542.i.2
  %i.jh = sub i64 %.02542.i.2, %spec.select.2
  %i.ji = and i64 %i.jh, 1
  %lcmp.mod749.not.not = icmp eq i64 %i.ji, 0
  br i1 %lcmp.mod749.not.not, label %.lr.ph46.i.2.prol, label %.lr.ph46.i.2.prol.loopexit

.lr.ph46.i.2.prol:                                ; preds = %.lr.ph46.i.2.preheader
  %i.jj = getelementptr [280 x i8], ptr %i.bo, i64 %spec.select.2
  %i.jk = getelementptr i8, ptr %i.jj, i64 -560
  %i.jl = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.043.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.jl, ptr noundef nonnull align 8 dereferenceable(280) %i.jk, i64 280, i1 false)
  %.0.i.2.prol = add i64 %spec.select.2, -2
  br label %.lr.ph46.i.2.prol.loopexit

.lr.ph46.i.2.prol.loopexit:                       ; preds = %.lr.ph46.i.2.prol, %.lr.ph46.i.2.preheader
  %.045.i.2.unr = phi i64 [ %.043.i.2, %.lr.ph46.i.2.preheader ], [ %.0.i.2.prol, %.lr.ph46.i.2.prol ]
  %.0.in44.i.2.unr = phi i64 [ %spec.select.2, %.lr.ph46.i.2.preheader ], [ %.043.i.2, %.lr.ph46.i.2.prol ]
  %i.jm = icmp eq i64 %reass.sub755, 2
  br i1 %i.jm, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2, label %.lr.ph46.i.2

.lr.ph46.i.2:                                     ; preds = %.lr.ph46.i.2.prol.loopexit, %.lr.ph46.i.2
  %.045.i.2 = phi i64 [ %.0.i.2.1, %.lr.ph46.i.2 ], [ %.045.i.2.unr, %.lr.ph46.i.2.prol.loopexit ] ; 4 uses
  %.0.in44.i.2 = phi i64 [ %.0.i.2, %.lr.ph46.i.2 ], [ %.0.in44.i.2.unr, %.lr.ph46.i.2.prol.loopexit ]
  %i.jn = getelementptr [280 x i8], ptr %i.bo, i64 %.0.in44.i.2
  %i.jo = getelementptr i8, ptr %i.jn, i64 -560
  %i.jp = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.045.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.jp, ptr noundef nonnull align 8 dereferenceable(280) %i.jo, i64 280, i1 false)
  %.0.i.2 = add i64 %.045.i.2, -1                 ; 2 uses
  %i.jq = getelementptr [280 x i8], ptr %i.bo, i64 %.045.i.2
  %i.jr = getelementptr i8, ptr %i.jq, i64 -560
  %i.js = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.0.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.js, ptr noundef nonnull align 8 dereferenceable(280) %i.jr, i64 280, i1 false)
  %.0.i.2.1 = add i64 %.045.i.2, -2               ; 2 uses
  %i.jt = icmp ugt i64 %.0.i.2.1, %.02542.i.2
  br i1 %i.jt, label %.lr.ph46.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2, !llvm.loop !386

.thread33.thread.i.2:                             ; preds = %.thread33.i.2, %bb.am
  %i.ju = add nuw nsw i64 %.2.1, 1
  %i.jv = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.2.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2: ; preds = %.lr.ph46.i.2.prol.loopexit, %.lr.ph46.i.2, %.thread33.thread.i.2, %bb.ar
  %.4.2 = phi i64 [ %i.ju, %.thread33.thread.i.2 ], [ %spec.select.2, %bb.ar ], [ %spec.select.2, %.lr.ph46.i.2 ], [ %spec.select.2, %.lr.ph46.i.2.prol.loopexit ] ; 4 uses
  %.lcssa.sink.i.2 = phi ptr [ %i.jv, %.thread33.thread.i.2 ], [ %i.ir, %bb.ar ], [ %i.ir, %.lr.ph46.i.2 ], [ %i.ir, %.lr.ph46.i.2.prol.loopexit ] ; 2 uses
  %.1.ph.i.2 = phi i64 [ %.2.1, %.thread33.thread.i.2 ], [ %.02542.i.2, %bb.ar ], [ %.02542.i.2, %.lr.ph46.i.2 ], [ %.02542.i.2, %.lr.ph46.i.2.prol.loopexit ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.2, i8 -1, i64 16, i1 false)
  store i64 %i.ip, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.2, align 8
  %.not206.2 = icmp eq i64 %.1.ph.i.2, 4294967295
  %brmerge.2 = or i1 %.not206.2, %.not449
  br i1 %brmerge.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2
  %i.jw = mul i64 %4, %i.in
  %i.jx = getelementptr [8 x i8], ptr %1, i64 %i.jw ; 6 uses
  %i.jy = getelementptr inbounds nuw [280 x i8], ptr %i.bo, i64 %.1.ph.i.2
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.2
  %i.ka = mul i64 %.1.ph.i.2, 280
  %i.kb = mul i64 %i.bv, %i.in
  %i.kc = add i64 %i.bu, %i.ka
  %i.kd = add i64 %i.kb, %i.a
  %i.ke = sub i64 %i.kd, %i.kc
  %diff.check = icmp ugt i64 %i.ke, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kf = getelementptr [8 x i8], ptr %i.jx, i64 %index ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 16
  %wide.load = load <2 x i64>, ptr %i.kf, align 8
  %wide.load665 = load <2 x i64>, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %index ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store <2 x i64> %wide.load, ptr %i.kh, align 8
  store <2 x i64> %wide.load665, ptr %i.ki, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !991

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.2, %middle.block
  %.0176411.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.2 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod752.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0176411.2.prol = phi i64 [ %i.kn, %scalar.ph.prol ], [ %.0176411.2.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter753 = phi i64 [ %prol.iter753.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.kk = getelementptr [8 x i8], ptr %i.jx, i64 %.0176411.2.prol
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0176411.2.prol
  store i64 %i.kl, ptr %i.km, align 8
  %i.kn = add nuw i64 %.0176411.2.prol, 1         ; 2 uses
  %prol.iter753.next = add i64 %prol.iter753, 1   ; 2 uses
  %prol.iter753.cmp.not = icmp eq i64 %prol.iter753.next, %xtraiter751
  br i1 %prol.iter753.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !992

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0176411.2.unr = phi i64 [ %.0176411.2.ph, %scalar.ph.preheader ], [ %i.kn, %scalar.ph.prol ]
  %i.ko = sub i64 %.0176411.2.ph, %3
  %i.kp = icmp ugt i64 %i.ko, -4
  br i1 %i.kp, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0176411.2 = phi i64 [ %i.lf, %scalar.ph ], [ %.0176411.2.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.kq = getelementptr [8 x i8], ptr %i.jx, i64 %.0176411.2
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0176411.2
  store i64 %i.kr, ptr %i.ks, align 8
  %i.kt = add nuw i64 %.0176411.2, 1              ; 2 uses
  %i.ku = getelementptr [8 x i8], ptr %i.jx, i64 %i.kt
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kt
  store i64 %i.kv, ptr %i.kw, align 8
  %i.kx = add nuw i64 %.0176411.2, 2              ; 2 uses
  %i.ky = getelementptr [8 x i8], ptr %i.jx, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 8
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kx
  store i64 %i.kz, ptr %i.la, align 8
  %i.lb = add nuw i64 %.0176411.2, 3              ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %i.jx, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.lb
  store i64 %i.ld, ptr %i.le, align 8
  %i.lf = add nuw i64 %.0176411.2, 4              ; 2 uses
  %exitcond.2.not.3 = icmp eq i64 %i.lf, %3
  br i1 %exitcond.2.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph, !llvm.loop !993

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2, %.thread33.i.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.2.2 = phi i64 [ %.4.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2 ], [ %.4.2, %middle.block ], [ %.2.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1 ], [ %.2.1, %.thread33.i.2 ], [ %.4.2, %scalar.ph.prol.loopexit ], [ %.4.2, %scalar.ph ], [ %.2.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2 ] ; 3 uses
  %i.lg = add nsw i64 %.0182415, 1                ; 2 uses
  %exitcond488.not = icmp eq i64 %i.lg, %i.cq
  br i1 %exitcond488.not, label %._crit_edge, label %.lr.ph416, !llvm.loop !994

._crit_edge:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %i.lh = icmp ugt i64 %.2.2, 1
  br i1 %i.lh, label %.preheader386, label %.thread351

.preheader386:                                    ; preds = %._crit_edge
  %i.li = uitofp i64 %.0179436 to double
  %i.lj = mul i64 %i.cf, %4
  %i.lk = getelementptr [8 x i8], ptr %1, i64 %i.lj ; 2 uses
  %i.ll = uitofp i64 %.0177437 to double          ; 2 uses
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge426
  %i.lm = load i32, ptr %i.m, align 8
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %bb.ay, label %bb.bf

bb.at:                                            ; preds = %.preheader386, %._crit_edge426
  %.0169430 = phi i64 [ 0, %.preheader386 ], [ %i.ly, %._crit_edge426 ] ; 4 uses
  %.0172429 = phi double [ 1.797690e+308, %.preheader386 ], [ %.1173, %._crit_edge426 ] ; 2 uses
  %.0174428 = phi i64 [ 4294967295, %.preheader386 ], [ %.1175, %._crit_edge426 ]
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0169430
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = uitofp i64 %i.lp to double
  %i.lr = fadd double %i.lq, 1.000000e+00
  %i.ls = fdiv double %i.lr, %i.li
  %i.lt = call double @log(double noundef %i.ls) #30
  %i.lu = fdiv double %i.lt, f0xBFE62E42FEFA39EF  ; 2 uses
  br i1 %.not449, label %._crit_edge426, label %.lr.ph425

.lr.ph425:                                        ; preds = %bb.at
  %i.lv = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.0169430
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 624
  br label %bb.au

._crit_edge426:                                   ; preds = %bb.ax, %bb.at
  %.0170.lcssa = phi double [ %i.lu, %bb.at ], [ %.1171, %bb.ax ] ; 2 uses
  %i.lx = fcmp olt double %.0170.lcssa, %.0172429 ; 2 uses
  %.1175 = select i1 %i.lx, i64 %.0169430, i64 %.0174428 ; 5 uses
  %.1173 = select i1 %i.lx, double %.0170.lcssa, double %.0172429
  %i.ly = add nuw i64 %.0169430, 1                ; 2 uses
  %exitcond492.not = icmp eq i64 %i.ly, %.2.2
  br i1 %exitcond492.not, label %bb.as, label %bb.at, !llvm.loop !995

bb.au:                                            ; preds = %.lr.ph425, %bb.ax
  %.0168423 = phi i64 [ 0, %.lr.ph425 ], [ %i.nb, %bb.ax ] ; 3 uses
  %.0170422 = phi double [ %i.lu, %.lr.ph425 ], [ %.1171, %bb.ax ] ; 2 uses
  %i.lz = getelementptr [8 x i8], ptr %i.lk, i64 %.0168423
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.0168423
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = sub nsw i64 %i.ma, %i.mc                ; 2 uses
  %i.me = shl nsw i64 %i.md, 1
  %.lobit.i = ashr i64 %i.md, 63
  %i.mf = xor i64 %i.me, %.lobit.i                ; 3 uses
  %i.mg = icmp slt i64 %i.mf, 256
  br i1 %i.mg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.mf
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = uitofp i64 %i.mi to double
  %i.mk = fadd double %i.mj, 1.000000e+00
  %i.ml = fdiv double %i.mk, %i.ll
  %i.mm = call double @log(double noundef %i.ml) #30
  %i.mn = fdiv double %i.mm, f0x3FE62E42FEFA39EF
  %i.mo = fsub double %.0170422, %i.mn
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.mp = load i64, ptr %i.bq, align 8
  %i.mq = uitofp i64 %i.mp to double
  %i.mr = fadd double %i.mq, 1.000000e+00
  %i.ms = fdiv double %i.mr, %i.ll
  %i.mt = call double @log(double noundef %i.ms) #30
  %i.mu = fdiv double %i.mt, f0x3FE62E42FEFA39EF
  %i.mv = add nsw i64 %i.mf, -256
  %i.mw = uitofp nneg i64 %i.mv to double
  %i.mx = call double @log(double noundef %i.mw) #30
  %i.my = fdiv double %i.mx, f0x3FE62E42FEFA39EF
  %i.mz = fsub double %i.my, %i.mu
  %i.na = fadd double %.0170422, %i.mz
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.1171 = phi double [ %i.mo, %bb.av ], [ %i.na, %bb.aw ] ; 2 uses
  %i.nb = add nuw i64 %.0168423, 1                ; 2 uses
  %exitcond491.not = icmp eq i64 %i.nb, %3
  br i1 %exitcond491.not, label %._crit_edge426, label %bb.au, !llvm.loop !996

bb.ay:                                            ; preds = %bb.as
  %i.nc = and i64 %.1175, 255
  %i.nd = load i64, ptr %i.bs, align 8            ; 6 uses
  %i.ne = load i64, ptr %i.bt, align 8
  %i.nf = icmp eq i64 %i.nd, %i.ne
  br i1 %i.nf, label %bb.az, label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %bb.ay
  %.pre.i = load ptr, ptr %i.br, align 8
  br label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.ng = shl i64 %i.nd, 1                        ; 2 uses
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ng, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.bt, align 8
  %i.nh = icmp ugt i64 %i.ng, 2305843009213693951
  %i.ni = shl i64 %spec.select.i, 3
  %i.nj = select i1 %i.nh, i64 -1, i64 %i.ni
  %i.nk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nj) #33
          to label %.noexc219 unwind label %bb.be ; 3 uses

.noexc219:                                        ; preds = %bb.az
  %.not.i218 = icmp eq i64 %i.nd, 0
  br i1 %.not.i218, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.noexc219
  %i.nl = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.nm = shl i64 %i.nd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.nk, ptr align 8 %i.nl, i64 %i.nm, i1 false)
  %i.nn = icmp eq ptr %i.nl, null
  br i1 %i.nn, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.nl) #31
  %.pre6.pre.i = load i64, ptr %i.bs, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.noexc219
  %.pre6.i = phi i64 [ %i.nd, %bb.ba ], [ %.pre6.pre.i, %bb.bb ], [ 0, %.noexc219 ]
end_hunk_2
