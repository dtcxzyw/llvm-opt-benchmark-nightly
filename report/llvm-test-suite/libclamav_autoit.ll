inline.NumInlined: 47
inline.NumDeleted: 9
begin_hunk_0_@cli_scanautoit:bb.a
bb.cd:                                            ; preds = %.preheader458.2.i
  %i.ags = shl nuw nsw i32 %.sroa.109.5.i, 4
  %i.agt = add i32 %.sroa.29.5.i, 1
  %i.agu = zext i32 %.sroa.29.5.i to i64
  %i.agv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.agu
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !8
  %i.agx = zext i8 %i.agw to i32
  %i.agy = shl nuw nsw i32 %i.agx, 8
  %i.agz = zext i32 %i.agt to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.agz
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !8
  %i.ahc = zext i8 %i.ahb to i32
  %i.ahd = or i32 %i.ags, %i.ahc
  %.sroa.109.36.insert.insert377.3.i = or i32 %i.ahd, %i.agy
  br label %.preheader458.5.i.thread

.preheader458.5.i.thread:                         ; preds = %.preheader458.3.thread.i, %bb.cd
  %.sroa.109.26.3.ph.i = phi i32 [ %i.agr, %.preheader458.3.thread.i ], [ %.sroa.109.36.insert.insert377.3.i, %bb.cd ]
  %.ph825.i = phi i32 [ 14, %.preheader458.3.thread.i ], [ 15, %bb.cd ]
  %.sroa.29.26.3.ph.i = add i32 %.sroa.29.5.i, 2
  %i.ahe = shl nuw nsw i32 %.sroa.109.26.3.ph.i, 1
  br label %.preheader458.6.i

.preheader458.4.i:                                ; preds = %.preheader458.2.i, %.preheader458.3.i.thread
  %i.ahf = phi i32 [ %.ph814.i, %.preheader458.3.i.thread ], [ %i.agf, %.preheader458.2.i ]
  %.sroa.29.26.2.i117 = phi i32 [ %.sroa.29.26.1.ph.i, %.preheader458.3.i.thread ], [ %.sroa.29.5.i, %.preheader458.2.i ] ; 6 uses
  %.sroa.109.26.2.i116 = phi i32 [ %i.agd, %.preheader458.3.i.thread ], [ %i.age, %.preheader458.2.i ] ; 2 uses
  %i.ahg = shl nuw nsw i32 %.sroa.109.26.2.i116, 2 ; 2 uses
  %i.ahh = add i32 %i.ahf, -2                     ; 2 uses
  switch i32 %i.ahh, label %.preheader458.6.i [
    i32 0, label %.preheader458.5.thread.i
    i32 1, label %bb.ce
  ]

.preheader458.5.thread.i:                         ; preds = %.preheader458.4.i
  %i.ahi = add i32 %.sroa.29.26.2.i117, 1
  %i.ahj = zext i32 %.sroa.29.26.2.i117 to i64
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !8
  %i.ahm = zext i8 %i.ahl to i32
  %i.ahn = shl nuw nsw i32 %i.ahm, 8
  %i.aho = zext i32 %i.ahi to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.aho
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !8
  %i.ahr = zext i8 %i.ahq to i32
  %i.ahs = or disjoint i32 %i.ahn, %i.ahr
  %.sroa.109.36.insert.insert377.4.i = or i32 %i.ahs, %i.ahg
  %i.aht = shl nuw nsw i32 %.sroa.109.36.insert.insert377.4.i, 1
  br label %.preheader458.6.thread.i

bb.ce:                                            ; preds = %.preheader458.4.i
  %i.ahu = shl nuw nsw i32 %.sroa.109.26.2.i116, 3
  %i.ahv = add i32 %.sroa.29.26.2.i117, 1
  %i.ahw = zext i32 %.sroa.29.26.2.i117 to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !8
  %i.ahz = zext i8 %i.ahy to i32
  %i.aia = shl nuw nsw i32 %i.ahz, 8
  %i.aib = zext i32 %i.ahv to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.aib
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !8
  %i.aie = zext i8 %i.aid to i32
  %i.aif = or i32 %i.ahu, %i.aie
  %.sroa.109.36.insert.insert377.5.i = or i32 %i.aif, %i.aia
  br label %.preheader458.6.thread.i

.preheader458.6.thread.i:                         ; preds = %bb.ce, %.preheader458.5.thread.i
  %.sroa.109.26.5.ph.i = phi i32 [ %i.aht, %.preheader458.5.thread.i ], [ %.sroa.109.36.insert.insert377.5.i, %bb.ce ]
  %.ph836.i = phi i32 [ 14, %.preheader458.5.thread.i ], [ 15, %bb.ce ]
  %.sroa.29.26.5.ph.i = add i32 %.sroa.29.26.2.i117, 2
  %i.aig = shl nuw nsw i32 %.sroa.109.26.5.ph.i, 1
  br label %.preheader458.7.i

.preheader458.6.i:                                ; preds = %.preheader458.4.i, %.preheader458.5.i.thread
  %i.aih = phi i32 [ %.ph825.i, %.preheader458.5.i.thread ], [ %i.ahh, %.preheader458.4.i ]
  %.sroa.29.26.4.i122 = phi i32 [ %.sroa.29.26.3.ph.i, %.preheader458.5.i.thread ], [ %.sroa.29.26.2.i117, %.preheader458.4.i ] ; 4 uses
  %.sroa.109.26.4.i121 = phi i32 [ %i.ahe, %.preheader458.5.i.thread ], [ %i.ahg, %.preheader458.4.i ]
  %i.aii = shl nuw nsw i32 %.sroa.109.26.4.i121, 2 ; 2 uses
  %i.aij = add i32 %i.aih, -2                     ; 2 uses
  %.not24.i228.6.i = icmp eq i32 %i.aij, 0
  br i1 %.not24.i228.6.i, label %.preheader458.7.thread.i, label %.preheader458.7.i

.preheader458.7.thread.i:                         ; preds = %.preheader458.6.i
  %i.aik = add i32 %.sroa.29.26.4.i122, 1
  %i.ail = zext i32 %.sroa.29.26.4.i122 to i64
  %i.aim = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ail
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !8
  %i.aio = zext i8 %i.ain to i32
  %i.aip = shl nuw nsw i32 %i.aio, 8
  %i.aiq = add i32 %.sroa.29.26.4.i122, 2
  %i.air = zext i32 %i.aik to i64
  %i.ais = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.air
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !8
  %i.aiu = zext i8 %i.ait to i32
  %i.aiv = or disjoint i32 %i.aip, %i.aiu
  %.sroa.109.36.insert.insert377.6.i = or i32 %i.aiv, %i.aii
  %i.aiw = shl nuw nsw i32 %.sroa.109.36.insert.insert377.6.i, 1
  br label %bb.cg

.preheader458.7.i:                                ; preds = %.preheader458.6.i, %.preheader458.6.thread.i
  %.sroa.109.26.6.i = phi i32 [ %i.aig, %.preheader458.6.thread.i ], [ %i.aii, %.preheader458.6.i ]
  %.sroa.29.26.6.i = phi i32 [ %.sroa.29.26.5.ph.i, %.preheader458.6.thread.i ], [ %.sroa.29.26.4.i122, %.preheader458.6.i ] ; 4 uses
  %i.aix = phi i32 [ %.ph836.i, %.preheader458.6.thread.i ], [ %i.aij, %.preheader458.6.i ]
  %i.aiy = shl nuw nsw i32 %.sroa.109.26.6.i, 1   ; 2 uses
  %i.aiz = add i32 %i.aix, -1                     ; 2 uses
  %.not24.i228.7.i = icmp eq i32 %i.aiz, 0
  br i1 %.not24.i228.7.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.preheader458.7.i
  %i.aja = add i32 %.sroa.29.26.6.i, 1
  %i.ajb = zext i32 %.sroa.29.26.6.i to i64
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !8
  %i.aje = zext i8 %i.ajd to i32
  %i.ajf = shl nuw nsw i32 %i.aje, 8
  %i.ajg = add i32 %.sroa.29.26.6.i, 2
  %i.ajh = zext i32 %i.aja to i64
  %i.aji = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !8
  %i.ajk = zext i8 %i.ajj to i32
  %i.ajl = or disjoint i32 %i.ajf, %i.ajk
  %.sroa.109.36.insert.insert377.7.i = or i32 %i.ajl, %i.aiy
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.preheader458.7.i, %.preheader458.7.thread.i
  %.sroa.109.26.7.i = phi i32 [ %.sroa.109.36.insert.insert377.7.i, %bb.cf ], [ %i.aiy, %.preheader458.7.i ], [ %i.aiw, %.preheader458.7.thread.i ] ; 2 uses
  %.sroa.29.26.7.i = phi i32 [ %i.ajg, %bb.cf ], [ %.sroa.29.26.6.i, %.preheader458.7.i ], [ %i.aiq, %.preheader458.7.thread.i ]
  %i.ajm = phi i32 [ 16, %bb.cf ], [ %i.aiz, %.preheader458.7.i ], [ 15, %.preheader458.7.thread.i ]
  %i.ajn = shl nuw nsw i32 %.sroa.109.26.7.i, 1
  %i.ajo = add i32 %i.ajm, -1
  %i.ajp = lshr i32 %.sroa.109.26.7.i, 15
  %i.ajq = trunc nuw i32 %i.ajp to i8
  br label %getbits.exit231.i

getbits.exit231.i:                                ; preds = %bb.cg, %bb.cb
  %.sroa.92.11.i = phi i32 [ %.sroa.92.4406799.i, %bb.cb ], [ %i.ajo, %bb.cg ]
  %.sroa.109.27.i = phi i32 [ %.sroa.109.6407796.i, %bb.cb ], [ %i.ajn, %bb.cg ]
  %.sroa.29.27.i = phi i32 [ %.sroa.29.6408794.i, %bb.cb ], [ %.sroa.29.26.7.i, %bb.cg ]
  %.sroa.158.13.i = phi i32 [ 1, %bb.cb ], [ 0, %bb.cg ]
  %.021.i230.i = phi i8 [ 0, %bb.cb ], [ %i.ajq, %bb.cg ]
  %i.ajr = zext i32 %.sroa.20.0531.i to i64
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ajr
  store i8 %.021.i230.i, ptr %i.ajs, align 1, !tbaa !8
  %i.ajt = add nuw i32 %.sroa.20.0531.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block673, %vec.epilog.middle.block688, %getbits.exit231.i
  %.sroa.92.3.i = phi i32 [ %.sroa.92.11.i, %getbits.exit231.i ], [ %.sroa.92.2.i, %middle.block673 ], [ %.sroa.92.2.i, %vec.epilog.middle.block688 ], [ %.sroa.92.2.i, %.lr.ph.i ], [ %.sroa.92.2.i, %.lr.ph.i.prol.loopexit ]
  %.sroa.109.3.i = phi i32 [ %.sroa.109.27.i, %getbits.exit231.i ], [ %.sroa.109.2.i, %middle.block673 ], [ %.sroa.109.2.i, %vec.epilog.middle.block688 ], [ %.sroa.109.2.i, %.lr.ph.i ], [ %.sroa.109.2.i, %.lr.ph.i.prol.loopexit ]
  %.sroa.29.3.i = phi i32 [ %.sroa.29.27.i, %getbits.exit231.i ], [ %.sroa.29.2.i, %middle.block673 ], [ %.sroa.29.2.i, %vec.epilog.middle.block688 ], [ %.sroa.29.2.i, %.lr.ph.i ], [ %.sroa.29.2.i, %.lr.ph.i.prol.loopexit ]
  %.sroa.20.3.i = phi i32 [ %i.ajt, %getbits.exit231.i ], [ %i.acx, %middle.block673 ], [ %i.adi, %vec.epilog.middle.block688 ], [ %.lcssa715.unr, %.lr.ph.i.prol.loopexit ], [ %i.afc, %.lr.ph.i ] ; 2 uses
  %.sroa.158.4.i = phi i32 [ %.sroa.158.13.i, %getbits.exit231.i ], [ %.sroa.158.2.i, %middle.block673 ], [ %.sroa.158.2.i, %vec.epilog.middle.block688 ], [ %.sroa.158.2.i, %.lr.ph.i ], [ %.sroa.158.2.i, %.lr.ph.i.prol.loopexit ]
  %.not173.i = icmp eq i32 %.sroa.158.4.i, 0      ; 2 uses
  %i.aju = icmp ult i32 %.sroa.20.3.i, %i.dt
  %i.ajv = select i1 %.not173.i, i1 %i.aju, i1 false
  br i1 %i.ajv, label %.lr.ph533.i, label %._crit_edge.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %.loopexit.i
  call void @free(ptr noundef %i.dn) #12
  br i1 %.not173.i, label %bb.ch, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ai, %._crit_edge.i, %.thread438.i
  %.str.17.sink.i = phi ptr [ @.str.17, %._crit_edge.i ], [ @.str.17, %.thread438.i ], [ @.str.18, %bb.ai ]
  %.sroa.62.1.ph.i = phi i32 [ %i.dt, %._crit_edge.i ], [ %i.dt, %.thread438.i ], [ %i.db, %bb.ai ]
  %.sroa.0.0.ph.i = phi ptr [ %i.dz, %._crit_edge.i ], [ %i.dz, %.thread438.i ], [ %i.dn, %bb.ai ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.17.sink.i) #12
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split.i, %._crit_edge.i
  %.sroa.62.1.i = phi i32 [ %i.dt, %._crit_edge.i ], [ %.sroa.62.1.ph.i, %.sink.split.i ] ; 7 uses
  %.sroa.0.0.i = phi ptr [ %i.dz, %._crit_edge.i ], [ %.sroa.0.0.ph.i, %.sink.split.i ] ; 9 uses
  %i.ajw = icmp ult i32 %.sroa.62.1.i, 2
  br i1 %i.ajw, label %u2a.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ajx = icmp ugt i32 %.sroa.62.1.i, 4
  br i1 %i.ajx, label %bb.cj, label %.lr.ph.preheader.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ajy = load i8, ptr %.sroa.0.0.i, align 1, !tbaa !8
  %i.ajz = icmp eq i8 %i.ajy, -1
  br i1 %i.ajz, label %bb.ck, label %.lr.ph.preheader.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !8
  %i.akc = icmp eq i8 %i.akb, -2
  br i1 %i.akc, label %bb.cl, label %.lr.ph.preheader.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2 ; 2 uses
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !8
  %.not.i232.i = icmp eq i8 %i.ake, 0
  br i1 %.not.i232.i, label %.lr.ph.preheader.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.akf = add i32 %.sroa.62.1.i, -2
  br label %.lr.ph49.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.akg = call i32 @llvm.umin.i32(i32 %.sroa.62.1.i, i32 21)
  %i.akh = and i32 %i.akg, 30                     ; 2 uses
  %i.aki = zext nneg i32 %i.akh to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.co, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.co ] ; 2 uses
  %.045.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.akq, %bb.co ]
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %indvars.iv.i.i ; 2 uses
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !8
  %.not43.i.i = icmp eq i8 %i.akk, 0
  br i1 %.not43.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akj, i64 1
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !8
  %i.akn = icmp eq i8 %i.akm, 0
  %i.ako = zext i1 %i.akn to i32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i.i
  %i.akp = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ako, %bb.cn ]
  %i.akq = add i32 %i.akp, %.045.i.i              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.akr = icmp samesign ult i64 %indvars.iv.next.i.i, %i.aki
  br i1 %i.akr, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !36

._crit_edge.i.i:                                  ; preds = %bb.co
  %i.aks = shl i32 %i.akq, 2
  %.not42.i.i = icmp ult i32 %i.aks, %i.akh
  br i1 %.not42.i.i, label %u2a.exit.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %._crit_edge.i.i, %bb.cm
  %.035.i.i = phi i32 [ %i.akf, %bb.cm ], [ %.sroa.62.1.i, %._crit_edge.i.i ] ; 2 uses
  %.034.i.i = phi ptr [ %i.akd, %bb.cm ], [ %.sroa.0.0.i, %._crit_edge.i.i ]
  %i.akt = zext i32 %.035.i.i to i64
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i, %.lr.ph49.preheader.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next54.i.i, %.lr.ph49.i.i ] ; 2 uses
  %.03646.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph49.preheader.i.i ], [ %i.akw, %.lr.ph49.i.i ] ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv53.i.i
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !8
  %i.akw = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 1
  store i8 %i.akv, ptr %.03646.i.i, align 1, !tbaa !8
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 2 ; 2 uses
  %i.akx = icmp samesign ult i64 %indvars.iv.next54.i.i, %i.akt
  br i1 %i.akx, label %.lr.ph49.i.i, label %u2a.exit.loopexit.i, !llvm.loop !37

u2a.exit.loopexit.i:                              ; preds = %.lr.ph49.i.i
  %i.aky = lshr i32 %.035.i.i, 1
  br label %u2a.exit.i

u2a.exit.i:                                       ; preds = %u2a.exit.loopexit.i, %._crit_edge.i.i, %bb.ch, %.thread848.i
  %.sroa.0.0851.i = phi ptr [ %.sroa.0.0.i, %._crit_edge.i.i ], [ %.sroa.0.0.i, %bb.ch ], [ %.sroa.0.0.i, %u2a.exit.loopexit.i ], [ %i.dz, %.thread848.i ] ; 4 uses
  %.138.i.i = phi i32 [ %.sroa.62.1.i, %._crit_edge.i.i ], [ %.sroa.62.1.i, %bb.ch ], [ %i.aky, %u2a.exit.loopexit.i ], [ 0, %.thread848.i ] ; 3 uses
  %i.akz = add i32 %.0124.ph.i, 1                 ; 2 uses
  %i.ala = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1023, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.h, i32 noundef %i.akz) #12 ; 0 uses
  store i8 0, ptr %i.by, align 1, !tbaa !8
  %i.alb = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.d, i32 noundef 578, i32 noundef 448) #12 ; 7 uses
  %i.alc = icmp slt i32 %i.alb, 0
  br i1 %i.alc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %u2a.exit.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.d) #12
  call void @free(ptr noundef %.sroa.0.0851.i) #12
  br label %ea05.exit

bb.cq:                                            ; preds = %u2a.exit.i
  %i.ald = call i32 @cli_writen(i32 noundef %i.alb, ptr noundef nonnull %.sroa.0.0851.i, i32 noundef %.138.i.i) #12
  %.not182.i = icmp eq i32 %i.ald, %.138.i.i
  br i1 %.not182.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %.138.i.i) #12
  %i.ale = call i32 @close(i32 noundef %i.alb) #12 ; 0 uses
  call void @free(ptr noundef nonnull %.sroa.0.0851.i) #12
  br label %ea05.exit

bb.cs:                                            ; preds = %bb.cq
  call void @free(ptr noundef nonnull %.sroa.0.0851.i) #12
  %i.alf = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not183.i = icmp eq i8 %i.alf, 0
  br i1 %.not183.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.d) #12
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #12
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.alg = call i32 @fsync(i32 noundef %i.alb) #12 ; 0 uses
  %i.alh = call i64 @lseek(i32 noundef %i.alb, i64 noundef 0, i32 noundef 0) #12 ; 0 uses
  %i.ali = call i32 @cli_magic_scandesc(i32 noundef %i.alb, ptr noundef %1) #12
  %i.alj = icmp eq i32 %i.ali, 1
  %i.alk = call i32 @close(i32 noundef %i.alb) #12 ; 0 uses
  %i.all = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not185.i = icmp eq i8 %i.all, 0               ; 2 uses
  br i1 %i.alj, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not185.i, label %bb.cx, label %ea05.exit

bb.cx:                                            ; preds = %bb.cw
  %i.alm = call i32 @unlink(ptr noundef nonnull %i.d) #12 ; 0 uses
  br label %ea05.exit

bb.cy:                                            ; preds = %bb.cv
  br i1 %.not185.i, label %bb.cz, label %.outer.i.backedge

bb.cz:                                            ; preds = %bb.cy
  %i.aln = call i32 @unlink(ptr noundef nonnull %i.d) #12 ; 0 uses
  br label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.cz, %bb.cy
  br label %.outer.i, !llvm.loop !24

.outer.i:                                         ; preds = %.outer.i.backedge, %.preheader470.preheader.i
  %.0124.ph.i = phi i32 [ 0, %.preheader470.preheader.i ], [ %i.akz, %.outer.i.backedge ] ; 2 uses
  br label %.backedge.i

bb.da:                                            ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %i.cb) #12
  br label %ea05.exit

ea05.exit:                                        ; preds = %.critedge.i, %bb.l, %bb.n, %bb.q, %bb.r, %bb.t, %bb.w, %bb.af, %bb.h, %bb.k, %bb.y, %bb.ah, %bb.ao, %bb.cp, %bb.cr, %bb.cw, %bb.cx, %bb.da
  %.0122.i = phi i32 [ -102, %bb.da ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.ah ], [ -123, %bb.cp ], [ -123, %bb.cr ], [ 1, %bb.cx ], [ -114, %bb.ao ], [ 1, %bb.cw ], [ 0, %bb.y ], [ 0, %.critedge.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.t ], [ -114, %bb.af ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.it

bb.db:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.alo = call i64 @lseek(i32 noundef %0, i64 noundef 16, i32 noundef 1) #12 ; 0 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.alr = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.alu = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.alv = getelementptr inbounds nuw i8, ptr %i.b, i64 1023
  br label %.outer.i22

.outer.i22:                                       ; preds = %.outer.i22.backedge, %bb.db
  %.0187.ph.i = phi i32 [ 0, %bb.db ], [ %i.asi, %.outer.i22.backedge ] ; 2 uses
  br label %.backedge.i40

.backedge.i40:                                    ; preds = %.backedge.i40.backedge, %.outer.i22
  %i.alw = load ptr, ptr %i.alp, align 8, !tbaa !9 ; 2 uses
  %.not.i23 = icmp eq ptr %i.alw, null
  br i1 %.not.i23, label %.critedge.i24, label %bb.dc

bb.dc:                                            ; preds = %.backedge.i40
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !19 ; 2 uses
  %i.alz = add i32 %i.aly, -1
  %or.cond304.not.i = icmp ult i32 %i.alz, %.0187.ph.i
  br i1 %or.cond304.not.i, label %bb.ir, label %.critedge.i24

.critedge.i24:                                    ; preds = %bb.dc, %.backedge.i40
  %i.ama = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 8) #12
  %.not249.i = icmp eq i32 %i.ama, 8
  br i1 %.not249.i, label %bb.dd, label %ea06.exit

bb.dd:                                            ; preds = %.critedge.i24
  %.val326.i = load i32, ptr %i.a, align 16
  %.not250.i = icmp eq i32 %.val326.i, 1388987243
  br i1 %.not250.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #12
  br label %ea06.exit

bb.df:                                            ; preds = %bb.dd
  %.val325.i = load i32, ptr %i.alq, align 4      ; 2 uses
  %i.amb = xor i32 %.val325.i, 44476              ; 3 uses
  %i.amc = shl i32 %i.amb, 1                      ; 10 uses
  %i.amd = icmp slt i32 %i.amc, 0
  br i1 %i.amd, label %ea06.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ame = icmp ult i32 %i.amb, 300
  br i1 %i.ame, label %bb.dh, label %bb.do

bb.dh:                                            ; preds = %bb.dg
  %i.amf = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.amc) #12
  %.not251.i = icmp eq i32 %i.amf, %i.amc
  br i1 %.not251.i, label %bb.di, label %ea06.exit

bb.di:                                            ; preds = %bb.dh
  %i.amg = trunc nuw nsw i32 %i.amb to i16
  %i.amh = add nuw nsw i16 %i.amg, -19649
  call fastcc void @LAME_decrypt(ptr noundef %i.a, i32 noundef %i.amc, i16 noundef zeroext %i.amh)
  %i.ami = icmp eq i32 %i.amc, 0
  br i1 %i.ami, label %u2a.exit.i48, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.amj = icmp samesign ult i32 %i.amc, 5
  %i.amk = load i8, ptr %i.a, align 16
  %i.aml = icmp ne i8 %i.amk, -1
  %or.cond695.not837.i = select i1 %i.amj, i1 true, i1 %i.aml
  %i.amm = load i8, ptr %i.alr, align 1
  %i.amn = icmp ne i8 %i.amm, -2
  %or.cond698.not834.i = select i1 %or.cond695.not837.i, i1 true, i1 %i.amn
  %i.amo = load i8, ptr %i.als, align 2
  %.not.i.i = icmp eq i8 %i.amo, 0
  %or.cond831.i = select i1 %or.cond698.not834.i, i1 true, i1 %.not.i.i
  br i1 %or.cond831.i, label %.lr.ph.preheader.i.i49, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.amp = add nsw i32 %i.amc, -2
  br label %.lr.ph49.preheader.i.i41

.lr.ph.preheader.i.i49:                           ; preds = %bb.dj
  %i.amq = call i32 @llvm.umin.i32(i32 %i.amc, i32 21)
  %3 = and i32 %i.amq, 30                         ; 2 uses
  %i.amr = zext nneg i32 %3 to i64
  br label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.dm, %.lr.ph.preheader.i.i49
  %indvars.iv.i.i51 = phi i64 [ 0, %.lr.ph.preheader.i.i49 ], [ %indvars.iv.next.i.i54, %bb.dm ] ; 2 uses
  %.045.i.i52 = phi i32 [ 0, %.lr.ph.preheader.i.i49 ], [ %i.amz, %bb.dm ]
  %i.ams = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i51 ; 2 uses
  %i.amt = load i8, ptr %i.ams, align 2, !tbaa !8
  %.not43.i.i53 = icmp eq i8 %i.amt, 0
  br i1 %.not43.i.i53, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i50
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 1
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !8
  %i.amw = icmp eq i8 %i.amv, 0
  %i.amx = zext i1 %i.amw to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph.i.i50
  %i.amy = phi i32 [ 0, %.lr.ph.i.i50 ], [ %i.amx, %bb.dl ]
  %i.amz = add i32 %i.amy, %.045.i.i52            ; 2 uses
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i51, 2 ; 2 uses
  %i.ana = icmp samesign ult i64 %indvars.iv.next.i.i54, %i.amr
  br i1 %i.ana, label %.lr.ph.i.i50, label %._crit_edge.i.i55, !llvm.loop !36

._crit_edge.i.i55:                                ; preds = %bb.dm
  %i.anb = shl i32 %i.amz, 2
  %.not42.i.i56 = icmp ult i32 %i.anb, %3
  br i1 %.not42.i.i56, label %u2a.exit.i48, label %.lr.ph49.preheader.i.i41

.lr.ph49.preheader.i.i41:                         ; preds = %._crit_edge.i.i55, %bb.dk
  %.035.i.i42 = phi i32 [ %i.amp, %bb.dk ], [ %i.amc, %._crit_edge.i.i55 ] ; 2 uses
  %.034.i.i43 = phi ptr [ %i.als, %bb.dk ], [ %i.a, %._crit_edge.i.i55 ] ; 9 uses
  %i.anc = call i32 @llvm.umax.i32(i32 %.035.i.i42, i32 2)
  %umax.i = zext nneg i32 %i.anc to i64
  %i.and = add nsw i64 %umax.i, -1
  %i.ane = lshr i64 %i.and, 1
  %i.anf = add nuw nsw i64 %i.ane, 1              ; 2 uses
  %xtraiter = and i64 %i.anf, 7                   ; 3 uses
  %i.ang = icmp ult i32 %.035.i.i42, 15
  br i1 %i.ang, label %.lr.ph49.i.i44.epil.preheader, label %.lr.ph49.preheader.i.i41.new

.lr.ph49.preheader.i.i41.new:                     ; preds = %.lr.ph49.preheader.i.i41
  %unroll_iter = and i64 %i.anf, 9223372036854775800
  br label %.lr.ph49.i.i44

.lr.ph49.i.i44:                                   ; preds = %.lr.ph49.i.i44, %.lr.ph49.preheader.i.i41.new
  %indvars.iv53.i.i45 = phi i64 [ 0, %.lr.ph49.preheader.i.i41.new ], [ %indvars.iv.next54.i.i47.7, %.lr.ph49.i.i44 ] ; 9 uses
  %.03646.i.i46 = phi ptr [ %i.a, %.lr.ph49.preheader.i.i41.new ], [ %i.aol, %.lr.ph49.i.i44 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph49.preheader.i.i41.new ], [ %niter.next.7, %.lr.ph49.i.i44 ]
  %i.anh = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !8
  %i.anj = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 1
  store i8 %i.ani, ptr %.03646.i.i46, align 1, !tbaa !8
  %i.ank = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 2
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !8
  %i.ann = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 2
  store i8 %i.anm, ptr %i.anj, align 1, !tbaa !8
  %i.ano = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 4
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !8
  %i.anr = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 3
  store i8 %i.anq, ptr %i.ann, align 1, !tbaa !8
  %i.ans = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 6
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !8
  %i.anv = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 4
  store i8 %i.anu, ptr %i.anr, align 1, !tbaa !8
  %i.anw = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !8
  %i.anz = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 5
  store i8 %i.any, ptr %i.anv, align 1, !tbaa !8
  %i.aoa = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 10
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !8
  %i.aod = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 6
  store i8 %i.aoc, ptr %i.anz, align 1, !tbaa !8
  %i.aoe = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 12
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !8
  %i.aoh = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 7
  store i8 %i.aog, ptr %i.aod, align 1, !tbaa !8
  %i.aoi = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 14
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !8
  %i.aol = getelementptr inbounds nuw i8, ptr %.03646.i.i46, i64 8 ; 2 uses
  store i8 %i.aok, ptr %i.aoh, align 1, !tbaa !8
  %indvars.iv.next54.i.i47.7 = add nuw nsw i64 %indvars.iv53.i.i45, 16 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %u2a.exit.i48.loopexit.unr-lcssa, label %.lr.ph49.i.i44, !llvm.loop !37

u2a.exit.i48.loopexit.unr-lcssa:                  ; preds = %.lr.ph49.i.i44
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %u2a.exit.i48, label %.lr.ph49.i.i44.epil.preheader

.lr.ph49.i.i44.epil.preheader:                    ; preds = %u2a.exit.i48.loopexit.unr-lcssa, %.lr.ph49.preheader.i.i41
  %indvars.iv53.i.i45.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i.i41 ], [ %indvars.iv.next54.i.i47.7, %u2a.exit.i48.loopexit.unr-lcssa ]
  %.03646.i.i46.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i.i41 ], [ %i.aol, %u2a.exit.i48.loopexit.unr-lcssa ]
  %lcmp.mod787 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod787)
  br label %.lr.ph49.i.i44.epil

.lr.ph49.i.i44.epil:                              ; preds = %.lr.ph49.i.i44.epil, %.lr.ph49.i.i44.epil.preheader
  %indvars.iv53.i.i45.epil = phi i64 [ %indvars.iv53.i.i45.epil.init, %.lr.ph49.i.i44.epil.preheader ], [ %indvars.iv.next54.i.i47.epil, %.lr.ph49.i.i44.epil ] ; 2 uses
  %.03646.i.i46.epil = phi ptr [ %.03646.i.i46.epil.init, %.lr.ph49.i.i44.epil.preheader ], [ %i.aoo, %.lr.ph49.i.i44.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph49.i.i44.epil.preheader ], [ %epil.iter.next, %.lr.ph49.i.i44.epil ]
  %i.aom = getelementptr inbounds nuw i8, ptr %.034.i.i43, i64 %indvars.iv53.i.i45.epil
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !8
  %i.aoo = getelementptr inbounds nuw i8, ptr %.03646.i.i46.epil, i64 1
  store i8 %i.aon, ptr %.03646.i.i46.epil, align 1, !tbaa !8
  %indvars.iv.next54.i.i47.epil = add nuw nsw i64 %indvars.iv53.i.i45.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %u2a.exit.i48, label %.lr.ph49.i.i44.epil, !llvm.loop !38

u2a.exit.i48:                                     ; preds = %u2a.exit.i48.loopexit.unr-lcssa, %.lr.ph49.i.i44.epil, %._crit_edge.i.i55, %bb.di
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a) #12
  %i.aop = icmp eq i32 %.val325.i, 44463
  br i1 %i.aop, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %u2a.exit.i48
  %i.aoq = load i128, ptr %i.a, align 16
  %i.aor = xor i128 112072022528062101447413485049216908862, %i.aoq
  %i.aos = getelementptr i8, ptr %i.a, i64 3
  %i.aot = load i128, ptr %i.aos, align 1
  %i.aou = xor i128 80066441183196353176882849944769418561, %i.aot
  %i.aov = or i128 %i.aor, %i.aou
  %i.aow = icmp ne i128 %i.aov, 0                 ; 2 uses
  %i.aox = zext i1 %i.aow to i32                  ; 0 uses
  br label %bb.dp

bb.do:                                            ; preds = %bb.dg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51) #12
  %i.aoy = zext nneg i32 %i.amc to i64
  %i.aoz = call i64 @lseek(i32 noundef %0, i64 noundef %i.aoy, i32 noundef 1) #12 ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %u2a.exit.i48
  %.not275.i = phi i1 [ %i.aow, %bb.dn ], [ true, %bb.do ], [ true, %u2a.exit.i48 ] ; 2 uses
  %i.apa = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 4) #12
  %.not253.i = icmp eq i32 %i.apa, 4
  br i1 %.not253.i, label %bb.dq, label %ea06.exit

bb.dq:                                            ; preds = %bb.dp
  %.val324.i = load i32, ptr %i.a, align 16
  %i.apb = xor i32 %.val324.i, 63520              ; 3 uses
  %i.apc = shl i32 %i.apb, 1                      ; 10 uses
  %i.apd = icmp slt i32 %i.apc, 0
  br i1 %i.apd, label %ea06.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ape = load i8, ptr @cli_debug_flag, align 1, !tbaa !8
  %i.apf = icmp ne i8 %i.ape, 0
  %i.apg = icmp ult i32 %i.apb, 300
  %or.cond.i25 = and i1 %i.apg, %i.apf
  br i1 %or.cond.i25, label %bb.ds, label %bb.dy

bb.ds:                                            ; preds = %bb.dr
  %i.aph = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.apc) #12
  %.not254.i = icmp eq i32 %i.aph, %i.apc
  br i1 %.not254.i, label %bb.dt, label %ea06.exit

bb.dt:                                            ; preds = %bb.ds
  %i.api = trunc nuw nsw i32 %i.apb to i16
  %i.apj = add nuw nsw i16 %i.api, -2951
  call fastcc void @LAME_decrypt(ptr noundef %i.a, i32 noundef %i.apc, i16 noundef zeroext %i.apj)
  %i.apk = zext nneg i32 %i.apc to i64            ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apk ; 2 uses
  store i8 0, ptr %i.apl, align 2, !tbaa !8
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 1
  store i8 0, ptr %i.apm, align 1, !tbaa !8
  %i.apn = icmp eq i32 %i.apc, 0
  br i1 %i.apn, label %u2a.exit344.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.apo = icmp samesign ult i32 %i.apc, 5
  %i.app = load i8, ptr %i.a, align 16
  %i.apq = icmp ne i8 %i.app, -1
  %or.cond700.not842.i = select i1 %i.apo, i1 true, i1 %i.apq
  %i.apr = load i8, ptr %i.alr, align 1
  %i.aps = icmp ne i8 %i.apr, -2
  %or.cond703.not839.i = select i1 %or.cond700.not842.i, i1 true, i1 %i.aps
  %i.apt = load i8, ptr %i.als, align 2
  %.not.i343.i = icmp eq i8 %i.apt, 0
  %or.cond832.i = select i1 %or.cond703.not839.i, i1 true, i1 %.not.i343.i
  br i1 %or.cond832.i, label %.lr.ph.preheader.i327.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.apu = add nsw i32 %i.apc, -2
  %.pre911.i = zext nneg i32 %i.apu to i64
  br label %.lr.ph49.preheader.i335.i

.lr.ph.preheader.i327.i:                          ; preds = %bb.du
  %i.apv = call i32 @llvm.umin.i32(i32 %i.apc, i32 21)
  %4 = and i32 %i.apv, 30                         ; 2 uses
  %i.apw = zext nneg i32 %4 to i64
  br label %.lr.ph.i328.i

.lr.ph.i328.i:                                    ; preds = %bb.dx, %.lr.ph.preheader.i327.i
  %indvars.iv.i329.i = phi i64 [ 0, %.lr.ph.preheader.i327.i ], [ %indvars.iv.next.i332.i, %bb.dx ] ; 2 uses
  %.045.i330.i = phi i32 [ 0, %.lr.ph.preheader.i327.i ], [ %i.aqe, %bb.dx ]
  %i.apx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i329.i ; 2 uses
  %i.apy = load i8, ptr %i.apx, align 2, !tbaa !8
  %.not43.i331.i = icmp eq i8 %i.apy, 0
  br i1 %.not43.i331.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i328.i
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apx, i64 1
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !8
  %i.aqb = icmp eq i8 %i.aqa, 0
  %i.aqc = zext i1 %i.aqb to i32
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i328.i
  %i.aqd = phi i32 [ 0, %.lr.ph.i328.i ], [ %i.aqc, %bb.dw ]
  %i.aqe = add i32 %i.aqd, %.045.i330.i           ; 2 uses
  %indvars.iv.next.i332.i = add nuw nsw i64 %indvars.iv.i329.i, 2 ; 2 uses
  %i.aqf = icmp samesign ult i64 %indvars.iv.next.i332.i, %i.apw
  br i1 %i.aqf, label %.lr.ph.i328.i, label %._crit_edge.i333.i, !llvm.loop !36

._crit_edge.i333.i:                               ; preds = %bb.dx
  %i.aqg = shl i32 %i.aqe, 2
  %.not42.i334.i = icmp ult i32 %i.aqg, %4
  br i1 %.not42.i334.i, label %u2a.exit344.i, label %.lr.ph49.preheader.i335.i

.lr.ph49.preheader.i335.i:                        ; preds = %._crit_edge.i333.i, %bb.dv
  %.pre-phi912.i = phi i64 [ %i.apk, %._crit_edge.i333.i ], [ %.pre911.i, %bb.dv ] ; 2 uses
  %.034.i337.i = phi ptr [ %i.a, %._crit_edge.i333.i ], [ %i.als, %bb.dv ] ; 9 uses
  %umax907.i = call i64 @llvm.umax.i64(i64 %.pre-phi912.i, i64 2)
  %i.aqh = add nsw i64 %umax907.i, -1
  %i.aqi = lshr i64 %i.aqh, 1
  %i.aqj = add nuw nsw i64 %i.aqi, 1              ; 2 uses
  %xtraiter788 = and i64 %i.aqj, 7                ; 3 uses
  %i.aqk = icmp samesign ult i64 %.pre-phi912.i, 15
  br i1 %i.aqk, label %.lr.ph49.i338.i.epil.preheader, label %.lr.ph49.preheader.i335.i.new

.lr.ph49.preheader.i335.i.new:                    ; preds = %.lr.ph49.preheader.i335.i
  %unroll_iter792 = and i64 %i.aqj, 9223372036854775800
  br label %.lr.ph49.i338.i

.lr.ph49.i338.i:                                  ; preds = %.lr.ph49.i338.i, %.lr.ph49.preheader.i335.i.new
  %indvars.iv53.i339.i = phi i64 [ 0, %.lr.ph49.preheader.i335.i.new ], [ %indvars.iv.next54.i341.i.7, %.lr.ph49.i338.i ] ; 9 uses
  %.03646.i340.i = phi ptr [ %i.a, %.lr.ph49.preheader.i335.i.new ], [ %i.arp, %.lr.ph49.i338.i ] ; 9 uses
  %niter793 = phi i64 [ 0, %.lr.ph49.preheader.i335.i.new ], [ %niter793.next.7, %.lr.ph49.i338.i ]
  %i.aql = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.aqm = load i8, ptr %i.aql, align 1, !tbaa !8
  %i.aqn = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 1
  store i8 %i.aqm, ptr %.03646.i340.i, align 1, !tbaa !8
  %i.aqo = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 2
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !8
  %i.aqr = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 2
  store i8 %i.aqq, ptr %i.aqn, align 1, !tbaa !8
  %i.aqs = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !8
  %i.aqv = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 3
  store i8 %i.aqu, ptr %i.aqr, align 1, !tbaa !8
  %i.aqw = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 6
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !8
  %i.aqz = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 4
  store i8 %i.aqy, ptr %i.aqv, align 1, !tbaa !8
  %i.ara = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !8
  %i.ard = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 5
  store i8 %i.arc, ptr %i.aqz, align 1, !tbaa !8
  %i.are = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 10
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !8
  %i.arh = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 6
  store i8 %i.arg, ptr %i.ard, align 1, !tbaa !8
  %i.ari = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 12
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !8
  %i.arl = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 7
  store i8 %i.ark, ptr %i.arh, align 1, !tbaa !8
  %i.arm = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 14
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !8
  %i.arp = getelementptr inbounds nuw i8, ptr %.03646.i340.i, i64 8 ; 2 uses
  store i8 %i.aro, ptr %i.arl, align 1, !tbaa !8
  %indvars.iv.next54.i341.i.7 = add nuw nsw i64 %indvars.iv53.i339.i, 16 ; 2 uses
  %niter793.next.7 = add i64 %niter793, 8         ; 2 uses
  %niter793.ncmp.7 = icmp eq i64 %niter793.next.7, %unroll_iter792
  br i1 %niter793.ncmp.7, label %u2a.exit344.i.loopexit.unr-lcssa, label %.lr.ph49.i338.i, !llvm.loop !37

u2a.exit344.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph49.i338.i
  %lcmp.mod790.not = icmp eq i64 %xtraiter788, 0
  br i1 %lcmp.mod790.not, label %u2a.exit344.i, label %.lr.ph49.i338.i.epil.preheader

.lr.ph49.i338.i.epil.preheader:                   ; preds = %u2a.exit344.i.loopexit.unr-lcssa, %.lr.ph49.preheader.i335.i
  %indvars.iv53.i339.i.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i335.i ], [ %indvars.iv.next54.i341.i.7, %u2a.exit344.i.loopexit.unr-lcssa ]
  %.03646.i340.i.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i335.i ], [ %i.arp, %u2a.exit344.i.loopexit.unr-lcssa ]
  %lcmp.mod791 = icmp ne i64 %xtraiter788, 0
  call void @llvm.assume(i1 %lcmp.mod791)
  br label %.lr.ph49.i338.i.epil

.lr.ph49.i338.i.epil:                             ; preds = %.lr.ph49.i338.i.epil, %.lr.ph49.i338.i.epil.preheader
  %indvars.iv53.i339.i.epil = phi i64 [ %indvars.iv53.i339.i.epil.init, %.lr.ph49.i338.i.epil.preheader ], [ %indvars.iv.next54.i341.i.epil, %.lr.ph49.i338.i.epil ] ; 2 uses
  %.03646.i340.i.epil = phi ptr [ %.03646.i340.i.epil.init, %.lr.ph49.i338.i.epil.preheader ], [ %i.ars, %.lr.ph49.i338.i.epil ] ; 2 uses
  %epil.iter789 = phi i64 [ 0, %.lr.ph49.i338.i.epil.preheader ], [ %epil.iter789.next, %.lr.ph49.i338.i.epil ]
  %i.arq = getelementptr inbounds nuw i8, ptr %.034.i337.i, i64 %indvars.iv53.i339.i.epil
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !8
  %i.ars = getelementptr inbounds nuw i8, ptr %.03646.i340.i.epil, i64 1
  store i8 %i.arr, ptr %.03646.i340.i.epil, align 1, !tbaa !8
  %indvars.iv.next54.i341.i.epil = add nuw nsw i64 %indvars.iv53.i339.i.epil, 2
  %epil.iter789.next = add i64 %epil.iter789, 1   ; 2 uses
  %epil.iter789.cmp.not = icmp eq i64 %epil.iter789.next, %xtraiter788
  br i1 %epil.iter789.cmp.not, label %u2a.exit344.i, label %.lr.ph49.i338.i.epil, !llvm.loop !39

u2a.exit344.i:                                    ; preds = %u2a.exit344.i.loopexit.unr-lcssa, %.lr.ph49.i338.i.epil, %._crit_edge.i333.i, %bb.dt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #12
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dr
  %i.art = zext nneg i32 %i.apc to i64
  %i.aru = call i64 @lseek(i32 noundef %0, i64 noundef %i.art, i32 noundef 1) #12 ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %u2a.exit344.i
  %i.arv = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 13) #12
  %.not255.i = icmp eq i32 %i.arv, 13
  br i1 %.not255.i, label %bb.ea, label %ea06.exit

bb.ea:                                            ; preds = %bb.dz
  %i.arw = load i8, ptr %i.a, align 16, !tbaa !8
  %.val323.i = load i32, ptr %i.alr, align 1      ; 3 uses
  %i.arx = xor i32 %.val323.i, 34748              ; 18 uses
  %i.ary = icmp slt i32 %.val323.i, 0
  br i1 %i.ary, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #12
  br label %ea06.exit

bb.ec:                                            ; preds = %bb.ea
  %i.arz = call i64 @lseek(i32 noundef %0, i64 noundef 16, i32 noundef 1) #12 ; 0 uses
  %.not256.i = icmp eq i32 %.val323.i, 34748
  br i1 %.not256.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #12
  br label %.backedge.i40.backedge

bb.ee:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.arx) #12
  %.val322.i = load i32, ptr %i.alt, align 1
  %i.asa = xor i32 %.val322.i, 34748
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10, i32 noundef %i.asa) #12
  %.val321.i = load i32, ptr %i.alu, align 1
  %i.asb = xor i32 %.val321.i, 42629
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.asb) #12
  %i.asc = load ptr, ptr %i.alp, align 8, !tbaa !9 ; 2 uses
  %.not257.i = icmp eq ptr %i.asc, null
  br i1 %.not257.i, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 24
  %i.ase = load i64, ptr %i.asd, align 8, !tbaa !23 ; 3 uses
  %.not258.i = icmp eq i64 %i.ase, 0
  br i1 %.not258.i, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.asf = zext nneg i32 %i.arx to i64            ; 2 uses
  %i.asg = icmp ult i64 %i.ase, %i.asf
  br i1 %i.asg, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, i32 noundef %i.arx, i64 noundef %i.ase) #12
  %i.ash = call i64 @lseek(i32 noundef %0, i64 noundef %i.asf, i32 noundef 1) #12 ; 0 uses
  br label %.backedge.i40.backedge

.backedge.i40.backedge:                           ; preds = %bb.eh, %bb.ed
  br label %.backedge.i40, !llvm.loop !40

bb.ei:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %i.asi = add i32 %.0187.ph.i, 1                 ; 2 uses
  %i.asj = zext nneg i32 %i.arx to i64
  %i.ask = call ptr @cli_malloc(i64 noundef %i.asj) #12 ; 113 uses
  %.not259.i = icmp eq ptr %i.ask, null
  br i1 %.not259.i, label %ea06.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.asl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.ask, i32 noundef %i.arx) #12
  %.not260.i = icmp eq i32 %i.asl, %i.arx
  br i1 %.not260.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #12
  call void @free(ptr noundef nonnull %i.ask) #12
  br label %ea06.exit

bb.el:                                            ; preds = %bb.ej
  call fastcc void @LAME_decrypt(ptr noundef %i.ask, i32 noundef %i.arx, i16 noundef zeroext 9335)
  %i.asm = icmp eq i8 %i.arw, 1
  br i1 %i.asm, label %bb.em, label %.sink.split.i26

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #12
  %.val320.i = load i32, ptr %i.ask, align 1
  %.not261.i = icmp eq i32 %.val320.i, 909132101
  br i1 %.not261.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #12
  call void @free(ptr noundef nonnull %i.ask) #12
  br label %.outer.i22.backedge

bb.eo:                                            ; preds = %bb.em
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ask, i64 4
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !4 ; 2 uses
  %i.asp = call i32 @llvm.bswap.i32(i32 %i.aso)
  %.not262.i = icmp eq i32 %i.aso, 0
  %spec.select704.i = select i1 %.not262.i, i32 %i.arx, i32 %i.asp
  %i.asq = freeze i32 %spec.select704.i           ; 9 uses
  %i.asr = load ptr, ptr %i.alp, align 8, !tbaa !9 ; 2 uses
  %.not263.i = icmp eq ptr %i.asr, null
  br i1 %.not263.i, label %._crit_edge913.i, label %bb.ep

._crit_edge913.i:                                 ; preds = %bb.eo
  %.pre914.i = zext i32 %i.asq to i64
end_hunk_0
begin_hunk_1_@cli_scanautoit:bb.a
  %i.caj = call ptr @cli_realloc(ptr noundef %.0185825.i, i64 noundef %i.cai) #12 ; 2 uses
  %.not297.i = icmp eq ptr %i.caj, null
  br i1 %.not297.i, label %.critedge14.i, label %.thread679.i

.thread679.i:                                     ; preds = %bb.hf, %bb.he
  %.sroa.147.3.i = phi i32 [ %.sroa.147.0822.i, %bb.he ], [ %i.cah, %bb.hf ]
  %.7.i = phi ptr [ %.0185825.i, %bb.he ], [ %i.caj, %bb.hf ] ; 4 uses
  %i.cak = zext i32 %.sroa.30.4824.i to i64
  %i.cal = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.cak ; 2 uses
  %i.cam = zext i32 %i.byz to i64
  %i.can = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.cam
  %i.cao = load double, ptr %i.can, align 8, !tbaa !47
  %i.cap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cal, i64 noundef 39, ptr noundef nonnull @.str.59, double noundef %i.cao) #12 ; 0 uses
  %i.caq = add i32 %.sroa.30.4824.i, 38
  %i.car = zext i32 %i.caq to i64
  %i.cas = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.car
  store i8 32, ptr %i.cas, align 1, !tbaa !8
  %i.cat = add i32 %.sroa.30.4824.i, 39
  %i.cau = zext i32 %i.cat to i64
  %i.cav = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.cau
  store i8 0, ptr %i.cav, align 1, !tbaa !8
  %i.caw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cal) #13
  %i.cax = trunc i64 %i.caw to i32
  %i.cay = add i32 %.sroa.30.4824.i, %i.cax
  %i.caz = add i32 %.sroa.74.4823.i, 9
  br label %.thread676.i

bb.hg:                                            ; preds = %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs
  %.not288.i = icmp ult i32 %i.byz, %i.byv
  br i1 %.not288.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.60) #12
  br label %.critedge14.i

bb.hi:                                            ; preds = %bb.hg
  %i.cba = zext i32 %i.byz to i64
  %i.cbb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.cba
  %.val.i30 = load i32, ptr %i.cbb, align 1       ; 8 uses
  %i.cbc = shl i32 %.val.i30, 1                   ; 9 uses
  %i.cbd = add i32 %.sroa.74.4823.i, 5            ; 9 uses
  %i.cbe = icmp uge i32 %.sroa.130.1.i, %i.cbc
  %i.cbf = sub nuw i32 %.sroa.130.1.i, %i.cbc
  %.not289.i = icmp ult i32 %i.cbd, %i.cbf
  %or.cond313.i = select i1 %i.cbe, i1 %.not289.i, i1 false
  br i1 %or.cond313.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.cbg = sub i32 %.sroa.130.1.i, %i.cbd
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %i.cbc, i32 noundef %.sroa.130.1.i, i32 noundef %i.cbg) #12
  br label %.critedge14.i

bb.hk:                                            ; preds = %bb.hi
  %i.cbh = add i32 %.sroa.30.4824.i, 3
  %i.cbi = add i32 %i.cbh, %.val.i30
  %.not290.i = icmp ult i32 %i.cbi, %.sroa.147.0822.i
  br i1 %.not290.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.cbj = add i32 %.sroa.147.0822.i, 512
  %i.cbk = add i32 %i.cbj, %.val.i30              ; 2 uses
  %i.cbl = zext i32 %i.cbk to i64
  %i.cbm = call ptr @cli_realloc(ptr noundef %.0185825.i, i64 noundef %i.cbl) #12 ; 2 uses
  %.not291.not.i = icmp eq ptr %i.cbm, null
  br i1 %.not291.not.i, label %.critedge14.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.sroa.147.4.i = phi i32 [ %.sroa.147.0822.i, %bb.hk ], [ %i.cbk, %bb.hl ] ; 2 uses
  %.9.i = phi ptr [ %.0185825.i, %bb.hk ], [ %i.cbm, %bb.hl ] ; 6 uses
  %i.cbn = zext nneg i8 %i.bzc to i64
  %i.cbo = getelementptr i8, ptr @__const.ea06.prefixes, i64 %i.cbn
  %i.cbp = getelementptr i8, ptr %i.cbo, i64 -48
  %i.cbq = load i8, ptr %i.cbp, align 1, !tbaa !8 ; 2 uses
  %.not292.i = icmp eq i8 %i.cbq, 0
  br i1 %.not292.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.cbr = add i32 %.sroa.30.4824.i, 1
  %i.cbs = zext i32 %.sroa.30.4824.i to i64
  %i.cbt = getelementptr inbounds nuw i8, ptr %.9.i, i64 %i.cbs
  store i8 %i.cbq, ptr %i.cbt, align 1, !tbaa !8
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.sroa.30.5.i = phi i32 [ %.sroa.30.4824.i, %bb.hm ], [ %i.cbr, %bb.hn ] ; 3 uses
  %.not293.i = icmp eq i32 %.val.i30, 0
  br i1 %.not293.i, label %bb.hx, label %.preheader722.i

.preheader722.i:                                  ; preds = %bb.ho
  %.not845.i = icmp eq i32 %i.cbc, 0
  br i1 %.not845.i, label %._crit_edge820.thread.i, label %.lr.ph819.i

._crit_edge820.thread.i:                          ; preds = %.preheader722.i
  %i.cbu = zext i32 %i.cbd to i64
  %i.cbv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.cbu
  br label %u2a.exit398.i

.lr.ph819.i:                                      ; preds = %.preheader722.i
  %i.cbw = trunc i32 %.val.i30 to i8              ; 3 uses
  %i.cbx = lshr i32 %.val.i30, 8
  %i.cby = trunc i32 %i.cbx to i8                 ; 3 uses
  %i.cbz = zext i32 %i.cbc to i64                 ; 2 uses
  %i.cca = add nsw i64 %i.cbz, -2                 ; 3 uses
  %i.ccb = lshr exact i64 %i.cca, 1
  %i.ccc = add nuw i64 %i.ccb, 1                  ; 2 uses
  %i.ccd = icmp eq i64 %i.cca, 0
  br i1 %i.ccd, label %.epil.preheader, label %.lr.ph819.i.new

.lr.ph819.i.new:                                  ; preds = %.lr.ph819.i
  %unroll_iter800 = and i64 %i.ccc, -2
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %.lr.ph819.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph819.i.new ], [ %indvars.iv.next.i.1, %bb.hp ] ; 3 uses
  %niter801 = phi i64 [ 0, %.lr.ph819.i.new ], [ %niter801.next.1, %bb.hp ]
  %i.cce = trunc nuw i64 %indvars.iv.i to i32
  %i.ccf = add i32 %i.cbd, %i.cce                 ; 2 uses
  %i.ccg = zext i32 %i.ccf to i64
  %i.cch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.ccg ; 2 uses
  %i.cci = load i8, ptr %i.cch, align 1, !tbaa !8
  %i.ccj = xor i8 %i.cci, %i.cbw
  store i8 %i.ccj, ptr %i.cch, align 1, !tbaa !8
  %i.cck = add i32 %i.ccf, 1
  %i.ccl = zext i32 %i.cck to i64
  %i.ccm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.ccl ; 2 uses
  %i.ccn = load i8, ptr %i.ccm, align 1, !tbaa !8
  %i.cco = xor i8 %i.ccn, %i.cby
  store i8 %i.cco, ptr %i.ccm, align 1, !tbaa !8
  %i.ccp = trunc i64 %indvars.iv.i to i32
  %i.ccq = or disjoint i32 %i.ccp, 2
  %i.ccr = add i32 %i.cbd, %i.ccq                 ; 2 uses
  %i.ccs = zext i32 %i.ccr to i64
  %i.cct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.ccs ; 2 uses
  %i.ccu = load i8, ptr %i.cct, align 1, !tbaa !8
  %i.ccv = xor i8 %i.ccu, %i.cbw
  store i8 %i.ccv, ptr %i.cct, align 1, !tbaa !8
  %i.ccw = add i32 %i.ccr, 1
  %i.ccx = zext i32 %i.ccw to i64
  %i.ccy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.ccx ; 2 uses
  %i.ccz = load i8, ptr %i.ccy, align 1, !tbaa !8
  %i.cda = xor i8 %i.ccz, %i.cby
  store i8 %i.cda, ptr %i.ccy, align 1, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter801.next.1 = add nuw nsw i64 %niter801, 2 ; 2 uses
  %niter801.ncmp.1.not = icmp eq i64 %niter801.next.1, %unroll_iter800
  br i1 %niter801.ncmp.1.not, label %.unr-lcssa, label %bb.hp, !llvm.loop !49

.unr-lcssa:                                       ; preds = %bb.hp
  %i.cdb = and i64 %i.cca, 2
  %lcmp.mod798.not.not = icmp eq i64 %i.cdb, 0
  br i1 %lcmp.mod798.not.not, label %.epil.preheader, label %bb.hq

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph819.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph819.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ]
  %lcmp.mod799 = trunc i64 %i.ccc to i1
  call void @llvm.assume(i1 %lcmp.mod799)
  %i.cdc = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.cdd = add i32 %i.cbd, %i.cdc                 ; 2 uses
  %i.cde = zext i32 %i.cdd to i64
  %i.cdf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.cde ; 2 uses
  %i.cdg = load i8, ptr %i.cdf, align 1, !tbaa !8
  %i.cdh = xor i8 %i.cdg, %i.cbw
  store i8 %i.cdh, ptr %i.cdf, align 1, !tbaa !8
  %i.cdi = add i32 %i.cdd, 1
  %i.cdj = zext i32 %i.cdi to i64
  %i.cdk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.cdj ; 2 uses
  %i.cdl = load i8, ptr %i.cdk, align 1, !tbaa !8
  %i.cdm = xor i8 %i.cdl, %i.cby
  store i8 %i.cdm, ptr %i.cdk, align 1, !tbaa !8
  br label %bb.hq

bb.hq:                                            ; preds = %.unr-lcssa, %.epil.preheader
  %i.cdn = zext i32 %i.cbd to i64
  %i.cdo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 %i.cdn ; 8 uses
  %i.cdp = icmp ugt i32 %i.cbc, 4
  br i1 %i.cdp, label %bb.hr, label %.lr.ph.preheader.i381.i

bb.hr:                                            ; preds = %bb.hq
  %i.cdq = load i8, ptr %i.cdo, align 1, !tbaa !8
  %i.cdr = icmp eq i8 %i.cdq, -1
  br i1 %i.cdr, label %bb.hs, label %.lr.ph.preheader.i381.i

bb.hs:                                            ; preds = %bb.hr
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdo, i64 1
  %i.cdt = load i8, ptr %i.cds, align 1, !tbaa !8
  %i.cdu = icmp eq i8 %i.cdt, -2
  br i1 %i.cdu, label %bb.ht, label %.lr.ph.preheader.i381.i

bb.ht:                                            ; preds = %bb.hs
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdo, i64 2 ; 2 uses
  %i.cdw = load i8, ptr %i.cdv, align 1, !tbaa !8
  %.not.i397.i = icmp eq i8 %i.cdw, 0
  br i1 %.not.i397.i, label %.lr.ph.preheader.i381.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.cdx = add i32 %i.cbc, -2
  %.pre = zext i32 %i.cdx to i64
  br label %.lr.ph49.preheader.i389.i

.lr.ph.preheader.i381.i:                          ; preds = %bb.ht, %bb.hs, %bb.hr, %bb.hq
  %i.cdy = call i32 @llvm.umin.i32(i32 %i.cbc, i32 21)
  %5 = and i32 %i.cdy, 30                         ; 2 uses
  %i.cdz = zext nneg i32 %5 to i64
  br label %.lr.ph.i382.i

.lr.ph.i382.i:                                    ; preds = %bb.hw, %.lr.ph.preheader.i381.i
  %indvars.iv.i383.i = phi i64 [ 0, %.lr.ph.preheader.i381.i ], [ %indvars.iv.next.i386.i, %bb.hw ] ; 2 uses
  %.045.i384.i = phi i32 [ 0, %.lr.ph.preheader.i381.i ], [ %i.ceh, %bb.hw ]
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdo, i64 %indvars.iv.i383.i ; 2 uses
  %i.ceb = load i8, ptr %i.cea, align 1, !tbaa !8
  %.not43.i385.i = icmp eq i8 %i.ceb, 0
  br i1 %.not43.i385.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph.i382.i
  %i.cec = getelementptr inbounds nuw i8, ptr %i.cea, i64 1
  %i.ced = load i8, ptr %i.cec, align 1, !tbaa !8
  %i.cee = icmp eq i8 %i.ced, 0
  %i.cef = zext i1 %i.cee to i32
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.lr.ph.i382.i
  %i.ceg = phi i32 [ 0, %.lr.ph.i382.i ], [ %i.cef, %bb.hv ]
  %i.ceh = add i32 %i.ceg, %.045.i384.i           ; 2 uses
  %indvars.iv.next.i386.i = add nuw nsw i64 %indvars.iv.i383.i, 2 ; 2 uses
  %i.cei = icmp samesign ult i64 %indvars.iv.next.i386.i, %i.cdz
  br i1 %i.cei, label %.lr.ph.i382.i, label %._crit_edge.i387.i, !llvm.loop !36

._crit_edge.i387.i:                               ; preds = %bb.hw
  %i.cej = shl i32 %i.ceh, 2
  %.not42.i388.i = icmp ult i32 %i.cej, %5
  br i1 %.not42.i388.i, label %u2a.exit398.i, label %.lr.ph49.preheader.i389.i

.lr.ph49.preheader.i389.i:                        ; preds = %._crit_edge.i387.i, %bb.hu
  %.pre-phi = phi i64 [ %i.cbz, %._crit_edge.i387.i ], [ %.pre, %bb.hu ]
  %.034.i391.i = phi ptr [ %i.cdo, %._crit_edge.i387.i ], [ %i.cdv, %bb.hu ]
  br label %.lr.ph49.i392.i

.lr.ph49.i392.i:                                  ; preds = %.lr.ph49.i392.i, %.lr.ph49.preheader.i389.i
  %indvars.iv53.i393.i = phi i64 [ 0, %.lr.ph49.preheader.i389.i ], [ %indvars.iv.next54.i395.i, %.lr.ph49.i392.i ] ; 2 uses
  %.03646.i394.i = phi ptr [ %i.cdo, %.lr.ph49.preheader.i389.i ], [ %i.cem, %.lr.ph49.i392.i ] ; 2 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %.034.i391.i, i64 %indvars.iv53.i393.i
  %i.cel = load i8, ptr %i.cek, align 1, !tbaa !8
  %i.cem = getelementptr inbounds nuw i8, ptr %.03646.i394.i, i64 1
  store i8 %i.cel, ptr %.03646.i394.i, align 1, !tbaa !8
  %indvars.iv.next54.i395.i = add nuw nsw i64 %indvars.iv53.i393.i, 2 ; 2 uses
  %i.cen = icmp samesign ult i64 %indvars.iv.next54.i395.i, %.pre-phi
  br i1 %i.cen, label %.lr.ph49.i392.i, label %u2a.exit398.i, !llvm.loop !37

u2a.exit398.i:                                    ; preds = %.lr.ph49.i392.i, %._crit_edge.i387.i, %._crit_edge820.thread.i
  %i.ceo = phi ptr [ %i.cbv, %._crit_edge820.thread.i ], [ %i.cdo, %._crit_edge.i387.i ], [ %i.cdo, %.lr.ph49.i392.i ]
  %i.cep = zext i32 %.sroa.30.5.i to i64
  %i.ceq = getelementptr inbounds nuw i8, ptr %.9.i, i64 %i.cep
  %i.cer = zext i32 %.val.i30 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ceq, ptr nonnull align 1 %i.ceo, i64 %i.cer, i1 false)
  %i.ces = add i32 %.sroa.30.5.i, %.val.i30
  %i.cet = add i32 %i.cbc, %i.cbd
  br label %bb.hx

bb.hx:                                            ; preds = %u2a.exit398.i, %bb.ho
  %.sroa.74.5.i = phi i32 [ %i.cbd, %bb.ho ], [ %i.cet, %u2a.exit398.i ] ; 2 uses
  %.sroa.30.6.i = phi i32 [ %.sroa.30.5.i, %bb.ho ], [ %i.ces, %u2a.exit398.i ] ; 4 uses
  switch i8 %i.bzc, label %bb.hz [
    i8 54, label %bb.hy
    i8 52, label %.thread676.i
  ]

bb.hy:                                            ; preds = %bb.hx
  %i.ceu = add i32 %.sroa.30.6.i, 1
  %i.cev = zext i32 %.sroa.30.6.i to i64
  %i.cew = getelementptr inbounds nuw i8, ptr %.9.i, i64 %i.cev
  store i8 34, ptr %i.cew, align 1, !tbaa !8
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.sroa.30.7.i = phi i32 [ %.sroa.30.6.i, %bb.hx ], [ %i.ceu, %bb.hy ] ; 2 uses
  %i.cex = add i32 %.sroa.30.7.i, 1
  %i.cey = zext i32 %.sroa.30.7.i to i64
  %i.cez = getelementptr inbounds nuw i8, ptr %.9.i, i64 %i.cey
  store i8 32, ptr %i.cez, align 1, !tbaa !8
  br label %.thread676.i

bb.ia:                                            ; preds = %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs
  %i.cfa = add i32 %.sroa.30.4824.i, 4
  %.not286.i = icmp ult i32 %i.cfa, %.sroa.147.0822.i
  br i1 %.not286.i, label %.thread686.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.cfb = add i32 %.sroa.147.0822.i, 512         ; 2 uses
  %i.cfc = zext i32 %i.cfb to i64
  %i.cfd = call ptr @cli_realloc(ptr noundef %.0185825.i, i64 noundef %i.cfc) #12 ; 2 uses
  %.not287.i = icmp eq ptr %i.cfd, null
  br i1 %.not287.i, label %.critedge14.i, label %.thread686.i

.thread686.i:                                     ; preds = %bb.ib, %bb.ia
  %.sroa.147.5.i = phi i32 [ %.sroa.147.0822.i, %bb.ia ], [ %i.cfb, %bb.ib ]
  %.12.i = phi ptr [ %.0185825.i, %bb.ia ], [ %i.cfd, %bb.ib ] ; 2 uses
  %i.cfe = zext i32 %.sroa.30.4824.i to i64
  %i.cff = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.cfe
  %i.cfg = zext nneg i8 %i.bzc to i64
  %i.cfh = getelementptr [8 x i8], ptr @__const.ea06.opers, i64 %i.cfg
  %i.cfi = getelementptr i8, ptr %i.cfh, i64 -512
  %i.cfj = load ptr, ptr %i.cfi, align 8, !tbaa !50
  %i.cfk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cff, i64 noundef 4, ptr noundef nonnull @.str.62, ptr noundef %i.cfj) #12
  %i.cfl = add i32 %i.cfk, %.sroa.30.4824.i
  br label %.thread676.i

bb.ic:                                            ; preds = %bb.gs
  %i.cfm = add i32 %.sroa.177.4821.i, -1
  %i.cfn = add i32 %.sroa.30.4824.i, 1            ; 2 uses
  %.not284.i = icmp ult i32 %i.cfn, %.sroa.147.0822.i
  br i1 %.not284.i, label %.thread690.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.cfo = add i32 %.sroa.147.0822.i, 512         ; 2 uses
  %i.cfp = zext i32 %i.cfo to i64
  %i.cfq = call ptr @cli_realloc(ptr noundef %.0185825.i, i64 noundef %i.cfp) #12 ; 2 uses
  %.not285.i = icmp eq ptr %i.cfq, null
  br i1 %.not285.i, label %.critedge14.i, label %.thread690.i

.thread690.i:                                     ; preds = %bb.id, %bb.ic
  %.sroa.147.6.i = phi i32 [ %.sroa.147.0822.i, %bb.ic ], [ %i.cfo, %bb.id ]
  %.14.i = phi ptr [ %.0185825.i, %bb.ic ], [ %i.cfq, %bb.id ] ; 2 uses
  %i.cfr = zext i32 %.sroa.30.4824.i to i64
  %i.cfs = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.cfr
  store i8 10, ptr %i.cfs, align 1, !tbaa !8
  br label %.thread676.i

bb.ie:                                            ; preds = %bb.gs
  %i.cft = zext i8 %i.bzc to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63, i32 noundef %i.cft) #12
  br label %.critedge14.i

.thread676.i:                                     ; preds = %.thread690.i, %.thread686.i, %bb.hz, %bb.hx, %.thread679.i, %bb.hb, %.thread672.i
  %.sroa.177.5.i = phi i32 [ %.sroa.177.4821.i, %.thread679.i ], [ %.sroa.177.4821.i, %.thread672.i ], [ %i.cfm, %.thread690.i ], [ %.sroa.177.4821.i, %.thread686.i ], [ %.sroa.177.4821.i, %bb.hb ], [ %.sroa.177.4821.i, %bb.hz ], [ %.sroa.177.4821.i, %bb.hx ] ; 2 uses
  %.sroa.147.7.i = phi i32 [ %.sroa.147.3.i, %.thread679.i ], [ %.sroa.147.1.i, %.thread672.i ], [ %.sroa.147.6.i, %.thread690.i ], [ %.sroa.147.5.i, %.thread686.i ], [ %.sroa.147.2.i, %bb.hb ], [ %.sroa.147.4.i, %bb.hz ], [ %.sroa.147.4.i, %bb.hx ]
  %.sroa.74.6.i = phi i32 [ %i.caz, %.thread679.i ], [ %i.bzn, %.thread672.i ], [ %i.byz, %.thread690.i ], [ %i.byz, %.thread686.i ], [ %i.caf, %bb.hb ], [ %.sroa.74.5.i, %bb.hz ], [ %.sroa.74.5.i, %bb.hx ]
  %.sroa.30.8.i = phi i32 [ %i.cay, %.thread679.i ], [ %i.bzm, %.thread672.i ], [ %i.cfn, %.thread690.i ], [ %i.cfl, %.thread686.i ], [ %i.cae, %bb.hb ], [ %i.cex, %bb.hz ], [ %.sroa.30.6.i, %bb.hx ] ; 2 uses
  %.15.i = phi ptr [ %.7.i, %.thread679.i ], [ %.2.i, %.thread672.i ], [ %.14.i, %.thread690.i ], [ %.12.i, %.thread686.i ], [ %.4.i, %bb.hb ], [ %.9.i, %bb.hz ], [ %.9.i, %bb.hx ] ; 2 uses
  %.not1286.i = icmp eq i32 %.sroa.177.5.i, 0
  br i1 %.not1286.i, label %.critedge14.thread.i, label %bb.gr, !llvm.loop !52

.critedge14.i:                                    ; preds = %bb.id, %bb.ib, %bb.hl, %bb.hf, %bb.ha, %bb.gw, %bb.ie, %bb.hj, %bb.hh, %bb.hd, %bb.gy, %bb.gu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64) #12
  br label %.critedge14.thread.i

.critedge14.thread.i:                             ; preds = %.thread676.i, %bb.gr, %.critedge14.i, %bb.gq
  %.sroa.30.4779.i = phi i32 [ 0, %bb.gq ], [ %.sroa.30.4824.i, %.critedge14.i ], [ %.sroa.30.4824.i, %bb.gr ], [ %.sroa.30.8.i, %.thread676.i ]
  %.0185777.i = phi ptr [ %i.byu, %bb.gq ], [ %.0185825.i, %.critedge14.i ], [ %.0185825.i, %bb.gr ], [ %.15.i, %.thread676.i ]
  call void @free(ptr noundef nonnull %.sroa.0.0.i29) #12
  br label %bb.if

bb.if:                                            ; preds = %.critedge14.thread.i, %bb.gn
  %.sroa.30.9.i = phi i32 [ %.sroa.30.4779.i, %.critedge14.thread.i ], [ %.sroa.130.1.i, %bb.gn ] ; 2 uses
  %.16.i = phi ptr [ %.0185777.i, %.critedge14.thread.i ], [ %.sroa.0.0.i29, %bb.gn ] ; 4 uses
  %i.cfu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1023, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.h, i32 noundef %i.asi) #12 ; 0 uses
  store i8 0, ptr %i.alv, align 1, !tbaa !8
  %i.cfv = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 578, i32 noundef 448) #12 ; 7 uses
  %i.cfw = icmp slt i32 %i.cfv, 0
  br i1 %i.cfw, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.b) #12
  call void @free(ptr noundef %.16.i) #12
  br label %ea06.exit

bb.ih:                                            ; preds = %bb.if
  %i.cfx = call i32 @cli_writen(i32 noundef %i.cfv, ptr noundef %.16.i, i32 noundef %.sroa.30.9.i) #12
  %.not278.i = icmp eq i32 %i.cfx, %.sroa.30.9.i
  br i1 %.not278.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %.sroa.130.1.i) #12
  %i.cfy = call i32 @close(i32 noundef %i.cfv) #12 ; 0 uses
  call void @free(ptr noundef %.16.i) #12
  br label %ea06.exit

bb.ij:                                            ; preds = %bb.ih
  call void @free(ptr noundef %.16.i) #12
  %i.cfz = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not279.i = icmp eq i8 %i.cfz, 0
  %i.cga = select i1 %.not275.i, ptr @.str.67, ptr @.str.66 ; 2 uses
  br i1 %.not279.i, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65, ptr noundef nonnull %i.cga, ptr noundef nonnull %i.b) #12
  br label %bb.im

bb.il:                                            ; preds = %bb.ij
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, ptr noundef nonnull %i.cga) #12
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.cgb = call i32 @fsync(i32 noundef %i.cfv) #12 ; 0 uses
  %i.cgc = call i64 @lseek(i32 noundef %i.cfv, i64 noundef 0, i32 noundef 0) #12 ; 0 uses
  %i.cgd = call i32 @cli_magic_scandesc(i32 noundef %i.cfv, ptr noundef %1) #12
  %i.cge = icmp eq i32 %i.cgd, 1
  %i.cgf = call i32 @close(i32 noundef %i.cfv) #12 ; 0 uses
  %i.cgg = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not283.i = icmp eq i8 %i.cgg, 0               ; 2 uses
  br i1 %i.cge, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %bb.im
  br i1 %.not283.i, label %bb.io, label %ea06.exit

bb.io:                                            ; preds = %bb.in
  %i.cgh = call i32 @unlink(ptr noundef nonnull %i.b) #12 ; 0 uses
  br label %ea06.exit

bb.ip:                                            ; preds = %bb.im
  br i1 %.not283.i, label %bb.iq, label %.outer.i22.backedge

bb.iq:                                            ; preds = %bb.ip
  %i.cgi = call i32 @unlink(ptr noundef nonnull %i.b) #12 ; 0 uses
  br label %.outer.i22.backedge

.outer.i22.backedge:                              ; preds = %bb.iq, %bb.ip, %bb.gm, %bb.eq, %bb.en
  br label %.outer.i22, !llvm.loop !40

bb.ir:                                            ; preds = %bb.dc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.69, i32 noundef %i.aly) #12
  br label %ea06.exit

ea06.exit:                                        ; preds = %bb.ei, %.critedge.i24, %bb.df, %bb.dh, %bb.dp, %bb.dq, %bb.ds, %bb.dz, %bb.de, %bb.eb, %bb.ek, %bb.es, %bb.gp, %bb.ig, %bb.ii, %bb.in, %bb.io, %bb.ir
  %.0.i = phi i32 [ -102, %bb.ir ], [ 0, %bb.de ], [ -123, %bb.ig ], [ -123, %bb.ii ], [ 1, %bb.io ], [ -114, %bb.gp ], [ -114, %bb.es ], [ 1, %bb.in ], [ 0, %bb.eb ], [ 0, %bb.ek ], [ 0, %.critedge.i24 ], [ 0, %bb.dz ], [ 0, %bb.ds ], [ 0, %bb.dq ], [ 0, %bb.dp ], [ 0, %bb.dh ], [ 0, %bb.df ], [ -114, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.it

bb.is:                                            ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #12
end_hunk_1
