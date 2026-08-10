inline.NumInlined: 467
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Bac_ManExtract:bb.a
  %.pre.i.i68.i = load i32, ptr %i.aj, align 4, !tbaa !30
  br label %Vec_IntGrow.exit.i.i.i69.i

Vec_IntGrow.exit.i.i.i69.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i66.i, %bb.x, %bb.w, %bb.s
  %i.co = phi i32 [ %.pre.i.i68.i, %Vec_IntGrow.exit.sink.split.i.i.i66.i ], [ %i.ca, %bb.x ], [ %i.ca, %bb.w ], [ %i.ca, %bb.s ] ; 2 uses
  %.not4.i.i70.i = icmp sgt i32 %i.co, %i.by
  br i1 %.not4.i.i70.i, label %._crit_edge.i.i.i74.i, label %.lr.ph.i.i.i71.i

.lr.ph.i.i.i71.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i69.i
  %i.cp = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.cq = sext i32 %i.co to i64                   ; 2 uses
  %wide.trip.count.i.i.i72.i = sext i32 %i.bz to i64
  %i.cr = shl nsw i64 %i.cq, 2
  %scevgep.i.i73.i = getelementptr i8, ptr %i.cp, i64 %i.cr
  %i.cs = sub nsw i64 %wide.trip.count.i.i.i72.i, %i.cq
  %i.ct = shl nsw i64 %i.cs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i73.i, i8 0, i64 %i.ct, i1 false), !tbaa !32
  br label %._crit_edge.i.i.i74.i

._crit_edge.i.i.i74.i:                            ; preds = %.lr.ph.i.i.i71.i, %Vec_IntGrow.exit.i.i.i69.i
  store i32 %i.bz, ptr %i.aj, align 4, !tbaa !30
  br label %Bac_ObjSetIndex.exit79.i

Bac_ObjSetIndex.exit79.i:                         ; preds = %._crit_edge.i.i.i74.i, %bb.q
  %.val.i.i75.i = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.cu = sext i32 %i.by to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.val.i.i75.i, i64 %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv141.i to i32
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !32
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %.val59.i = load i32, ptr %i.ao, align 4, !tbaa !30
  %i.cx = sext i32 %.val59.i to i64
  %i.cy = icmp slt i64 %indvars.iv.next142.i, %i.cx
  br i1 %i.cy, label %bb.q, label %.critedge2.preheader.i, !llvm.loop !67

bb.ab:                                            ; preds = %.critedge6.i, %.lr.ph139.i
  %.val55166.i = phi i32 [ %.val55136.i, %.lr.ph139.i ], [ %.val55.i, %.critedge6.i ] ; 2 uses
  %indvars.iv149.i = phi i64 [ 1, %.lr.ph139.i ], [ %indvars.iv.next150.i, %.critedge6.i ] ; 3 uses
  %indvars.iv144.i = phi i64 [ 0, %.lr.ph139.i ], [ %indvars.iv.next145.pre-phi.i, %.critedge6.i ] ; 7 uses
  %.val60.i = load ptr, ptr %i.bv, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %indvars.iv144.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !55
  %i.db = lshr i8 %i.da, 1
  %i.dc = add nsw i8 %i.db, -73
  %i.dd = icmp ult i8 %i.dc, -68
  br i1 %i.dd, label %..critedge6_crit_edge.i, label %.preheader.i

..critedge6_crit_edge.i:                          ; preds = %bb.ab
  %.pre169.i = add nuw nsw i64 %indvars.iv144.i, 1
  br label %.critedge6.i

.preheader.i:                                     ; preds = %bb.ab
  %.not192.i = icmp eq i64 %indvars.iv144.i, 0
  br i1 %.not192.i, label %.critedge4.i, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %.preheader.i, %Bac_ObjSetIndex.exit97.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %Bac_ObjSetIndex.exit97.i ], [ 0, %.preheader.i ] ; 2 uses
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %Bac_ObjSetIndex.exit97.i ], [ %indvars.iv144.i, %.preheader.i ] ; 9 uses
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, -1 ; 3 uses
  %.val.i = load ptr, ptr %i.bv, align 8, !tbaa !53
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i, i64 %indvars.iv.next147.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !55
  %.mask.i.i = and i8 %i.df, -2
  %.not.i = icmp eq i8 %.mask.i.i, 6
  br i1 %.not.i, label %bb.ac, label %.critedge4.loopexit.i

bb.ac:                                            ; preds = %.lr.ph127.i
  %i.dg = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %.not.i.not.i.i80.not.i = icmp sgt i64 %indvars.iv146.i, %i.dh
  br i1 %.not.i.not.i.i80.not.i, label %bb.ad, label %Bac_ObjSetIndex.exit97.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i32, ptr %i.v, align 8, !tbaa !50  ; 4 uses
  %i.dj = shl nsw i32 %i.di, 1                    ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %.not.i.i81.not.i = icmp sgt i64 %indvars.iv146.i, %i.dk
  br i1 %.not.i.i81.not.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load ptr, ptr %i.bw, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i.i83.i = icmp eq ptr %i.dl, null
  %i.dm = shl nuw nsw i64 %indvars.iv146.i, 2     ; 2 uses
  br i1 %.not9.i.i.i.i83.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = tail call ptr @realloc(ptr noundef nonnull %i.dl, i64 noundef %i.dm) #23
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dm) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dp = phi ptr [ %i.dn, %bb.af ], [ %i.do, %bb.ag ]
  store ptr %i.dp, ptr %i.bw, align 8, !tbaa !31
  %i.dq = trunc nuw nsw i64 %indvars.iv146.i to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i84.i

bb.ai:                                            ; preds = %bb.ad
  %i.dr = sext i32 %i.di to i64
  %.not.i.i.not.i.i82.not.i = icmp sgt i64 %indvars.iv146.i, %i.dr
  br i1 %.not.i.i.not.i.i82.not.i, label %bb.aj, label %Vec_IntGrow.exit.i.i.i87.i

bb.aj:                                            ; preds = %bb.ai
  %i.ds = icmp slt i32 %i.di, 1073741823
  %spec.select.i.i.i94.i = select i1 %i.ds, i32 %i.dj, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i95.i = icmp slt i32 %i.di, %spec.select.i.i.i94.i
  br i1 %.not.i22.i.i.i95.i, label %bb.ak, label %Vec_IntGrow.exit.i.i.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load ptr, ptr %i.bw, align 8, !tbaa !31 ; 2 uses
  %.not9.i23.i.i.i96.i = icmp eq ptr %i.dt, null
  %i.du = zext nneg i32 %spec.select.i.i.i94.i to i64
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i96.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = tail call ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef %i.dv) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dx = tail call noalias ptr @malloc(i64 noundef %i.dv) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dy = phi ptr [ %i.dw, %bb.al ], [ %i.dx, %bb.am ]
  store ptr %i.dy, ptr %i.bw, align 8, !tbaa !31
  br label %Vec_IntGrow.exit.sink.split.i.i.i84.i

Vec_IntGrow.exit.sink.split.i.i.i84.i:            ; preds = %bb.an, %bb.ah
  %spec.select.sink.i.i.i85.i = phi i32 [ %spec.select.i.i.i94.i, %bb.an ], [ %i.dq, %bb.ah ]
  store i32 %spec.select.sink.i.i.i85.i, ptr %i.v, align 8, !tbaa !50
  %.pre.i.i86.i = load i32, ptr %i.aj, align 4, !tbaa !30
  %.pre.i = sext i32 %.pre.i.i86.i to i64
  br label %Vec_IntGrow.exit.i.i.i87.i

Vec_IntGrow.exit.i.i.i87.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i84.i, %bb.aj, %bb.ai
  %.pre-phi.i = phi i64 [ %.pre.i, %Vec_IntGrow.exit.sink.split.i.i.i84.i ], [ %i.dh, %bb.aj ], [ %i.dh, %bb.ai ] ; 3 uses
  %.not4.i.i88.not.i = icmp slt i64 %.pre-phi.i, %indvars.iv146.i
  br i1 %.not4.i.i88.not.i, label %.lr.ph.i.i.i89.i, label %._crit_edge.i.i.i92.i

.lr.ph.i.i.i89.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i87.i
  %i.dz = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.ea = shl nsw i64 %.pre-phi.i, 2
  %scevgep.i.i91.i = getelementptr i8, ptr %i.dz, i64 %i.ea
  %i.eb = sub nsw i64 %indvars.iv146.i, %.pre-phi.i
  %i.ec = shl nsw i64 %i.eb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i91.i, i8 0, i64 %i.ec, i1 false), !tbaa !32
  br label %._crit_edge.i.i.i92.i

._crit_edge.i.i.i92.i:                            ; preds = %.lr.ph.i.i.i89.i, %Vec_IntGrow.exit.i.i.i87.i
  %i.ed = trunc nuw nsw i64 %indvars.iv146.i to i32
  store i32 %i.ed, ptr %i.aj, align 4, !tbaa !30
  br label %Bac_ObjSetIndex.exit97.i

Bac_ObjSetIndex.exit97.i:                         ; preds = %._crit_edge.i.i.i92.i, %bb.ac
  %.val.i.i93.i = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i93.i, i64 %indvars.iv.next147.i
  %i.ef = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv144.i, %indvars.iv.next
  br i1 %exitcond.not.i, label %.critedge4.loopexit.i, label %.lr.ph127.i, !llvm.loop !68

.critedge4.loopexit.i:                            ; preds = %Bac_ObjSetIndex.exit97.i, %.lr.ph127.i
  %.val54130.pre.i = load i32, ptr %i.w, align 4, !tbaa !65
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.critedge4.loopexit.i, %.preheader.i
  %.val55164.i = phi i32 [ %.val54130.pre.i, %.critedge4.loopexit.i ], [ %.val55166.i, %.preheader.i ] ; 3 uses
  %i.eg = add nuw nsw i64 %indvars.iv144.i, 1     ; 5 uses
  %i.eh = sext i32 %.val55164.i to i64
  %i.ei = icmp slt i64 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph134.i.preheader, label %.critedge6.i

.lr.ph134.i.preheader:                            ; preds = %.critedge4.i
  %.val52.i102 = load ptr, ptr %i.bv, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %.val52.i102, i64 %indvars.iv149.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !55
  %.mask.i98.i103 = and i8 %i.ek, -2
  %.not117.i104 = icmp eq i8 %.mask.i98.i103, 8
  br i1 %.not117.i104, label %.lr.ph, label %.critedge6.i

.lr.ph134.i:                                      ; preds = %Bac_ObjSetIndex.exit116.i
  %indvars.iv.next154.i = add nuw nsw i64 %indvars.iv153.i105, 1
  %i.el = add nuw nsw i32 %.3131.i107, 1
  %.val52.i = load ptr, ptr %i.bv, align 8, !tbaa !53
  %i.em = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %indvars.iv.next152.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !55
  %.mask.i98.i = and i8 %i.en, -2
  %.not117.i = icmp eq i8 %.mask.i98.i, 8
  br i1 %.not117.i, label %.lr.ph, label %.critedge6.i, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i
  %.3131.i107 = phi i32 [ %i.el, %.lr.ph134.i ], [ 0, %.lr.ph134.i.preheader ] ; 2 uses
  %indvars.iv151.i106 = phi i64 [ %indvars.iv.next152.i, %.lr.ph134.i ], [ %indvars.iv149.i, %.lr.ph134.i.preheader ] ; 6 uses
  %indvars.iv153.i105 = phi i64 [ %indvars.iv.next154.i, %.lr.ph134.i ], [ %indvars.iv144.i, %.lr.ph134.i.preheader ] ; 2 uses
  %i.eo = add nuw nsw i64 %indvars.iv153.i105, 2  ; 4 uses
  %i.ep = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %.not.i.not.i.i99.i = icmp slt i64 %indvars.iv151.i106, %i.eq
  br i1 %.not.i.not.i.i99.i, label %Bac_ObjSetIndex.exit116.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.er = load i32, ptr %i.v, align 8, !tbaa !50  ; 4 uses
  %i.es = shl nsw i32 %i.er, 1                    ; 2 uses
  %3 = sext i32 %i.es to i64
  %.not.i.i100.i = icmp slt i64 %indvars.iv151.i106, %3
  %i.et = sext i32 %i.er to i64
  %.not.i.i.not.i.i101.i.a = icmp slt i64 %indvars.iv151.i106, %i.et ; 2 uses
  br i1 %.not.i.i100.i, label %bb.at, label %4

4:                                                ; preds = %bb.ao
  br i1 %.not.i.i.not.i.i101.i.a, label %Vec_IntGrow.exit.i.i.i106.i, label %bb.ap

bb.ap:                                            ; preds = %4
  %i.eu = load ptr, ptr %i.bw, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i.i102.i = icmp eq ptr %i.eu, null
  %i.ev = shl nuw nsw i64 %i.eo, 2                ; 2 uses
  br i1 %.not9.i.i.i.i102.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = tail call ptr @realloc(ptr noundef nonnull %i.eu, i64 noundef %i.ev) #23
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ex = tail call noalias ptr @malloc(i64 noundef %i.ev) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ey = phi ptr [ %i.ew, %bb.aq ], [ %i.ex, %bb.ar ]
  store ptr %i.ey, ptr %i.bw, align 8, !tbaa !31
  %i.ez = trunc nuw i64 %i.eo to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i103.i

bb.at:                                            ; preds = %bb.ao
  br i1 %.not.i.i.not.i.i101.i.a, label %Vec_IntGrow.exit.i.i.i106.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = icmp slt i32 %i.er, 1073741823
  %spec.select.i.i.i113.i = select i1 %i.fa, i32 %i.es, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i114.i = icmp slt i32 %i.er, %spec.select.i.i.i113.i
  br i1 %.not.i22.i.i.i114.i, label %bb.av, label %Vec_IntGrow.exit.i.i.i106.i

bb.av:                                            ; preds = %bb.au
  %i.fb = load ptr, ptr %i.bw, align 8, !tbaa !31 ; 2 uses
  %.not9.i23.i.i.i115.i = icmp eq ptr %i.fb, null
  %i.fc = sext i32 %spec.select.i.i.i113.i to i64
  %i.fd = shl nsw i64 %i.fc, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i115.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fe = tail call ptr @realloc(ptr noundef nonnull %i.fb, i64 noundef %i.fd) #23
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ff = tail call noalias ptr @malloc(i64 noundef %i.fd) #24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fg = phi ptr [ %i.fe, %bb.aw ], [ %i.ff, %bb.ax ]
  store ptr %i.fg, ptr %i.bw, align 8, !tbaa !31
  br label %Vec_IntGrow.exit.sink.split.i.i.i103.i

Vec_IntGrow.exit.sink.split.i.i.i103.i:           ; preds = %bb.ay, %bb.as
  %spec.select.sink.i.i.i104.i = phi i32 [ %spec.select.i.i.i113.i, %bb.ay ], [ %i.ez, %bb.as ]
  store i32 %spec.select.sink.i.i.i104.i, ptr %i.v, align 8, !tbaa !50
  %.pre.i.i105.i = load i32, ptr %i.aj, align 4, !tbaa !30
  %.pre167.i = sext i32 %.pre.i.i105.i to i64
  br label %Vec_IntGrow.exit.i.i.i106.i

Vec_IntGrow.exit.i.i.i106.i:                      ; preds = %Vec_IntGrow.exit.sink.split.i.i.i103.i, %bb.au, %bb.at, %4
  %.pre-phi168.i = phi i64 [ %.pre167.i, %Vec_IntGrow.exit.sink.split.i.i.i103.i ], [ %i.eq, %bb.au ], [ %i.eq, %bb.at ], [ %i.eq, %4 ] ; 3 uses
  %.not4.i.i107.i = icmp sgt i64 %.pre-phi168.i, %indvars.iv151.i106
  br i1 %.not4.i.i107.i, label %._crit_edge.i.i.i111.i, label %.lr.ph.i.i.i108.i

.lr.ph.i.i.i108.i:                                ; preds = %Vec_IntGrow.exit.i.i.i106.i
  %i.fh = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.fi = shl nsw i64 %.pre-phi168.i, 2
  %scevgep.i.i110.i = getelementptr i8, ptr %i.fh, i64 %i.fi
  %i.fj = sub nsw i64 %i.eo, %.pre-phi168.i
  %i.fk = shl nsw i64 %i.fj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i110.i, i8 0, i64 %i.fk, i1 false), !tbaa !32
  br label %._crit_edge.i.i.i111.i

._crit_edge.i.i.i111.i:                           ; preds = %.lr.ph.i.i.i108.i, %Vec_IntGrow.exit.i.i.i106.i
  %i.fl = trunc nuw i64 %i.eo to i32
  store i32 %i.fl, ptr %i.aj, align 4, !tbaa !30
  br label %Bac_ObjSetIndex.exit116.i

Bac_ObjSetIndex.exit116.i:                        ; preds = %._crit_edge.i.i.i111.i, %.lr.ph
  %.val.i.i112.i = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i112.i, i64 %indvars.iv151.i106
  store i32 %.3131.i107, ptr %i.fm, align 4, !tbaa !32
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i106, 1 ; 3 uses
  %.val54.i = load i32, ptr %i.w, align 4, !tbaa !65 ; 3 uses
  %i.fn = trunc nuw i64 %indvars.iv.next152.i to i32
  %i.fo = icmp sgt i32 %.val54.i, %i.fn
  br i1 %i.fo, label %.lr.ph134.i, label %Bac_ObjSetIndex.exit116.i..critedge6.i.loopexit_crit_edge, !llvm.loop !69

Bac_ObjSetIndex.exit116.i..critedge6.i.loopexit_crit_edge: ; preds = %Bac_ObjSetIndex.exit116.i
  br label %.critedge6.i, !llvm.loop !69

.critedge6.i:                                     ; preds = %.lr.ph134.i, %.lr.ph134.i.preheader, %Bac_ObjSetIndex.exit116.i..critedge6.i.loopexit_crit_edge, %.critedge4.i, %..critedge6_crit_edge.i
  %indvars.iv.next145.pre-phi.i = phi i64 [ %.pre169.i, %..critedge6_crit_edge.i ], [ %i.eg, %.critedge4.i ], [ %i.eg, %.lr.ph134.i.preheader ], [ %i.eg, %Bac_ObjSetIndex.exit116.i..critedge6.i.loopexit_crit_edge ], [ %i.eg, %.lr.ph134.i ] ; 2 uses
  %.val55.i = phi i32 [ %.val55166.i, %..critedge6_crit_edge.i ], [ %.val55164.i, %.critedge4.i ], [ %.val55164.i, %.lr.ph134.i.preheader ], [ %.val54.i, %Bac_ObjSetIndex.exit116.i..critedge6.i.loopexit_crit_edge ], [ %.val54.i, %.lr.ph134.i ] ; 2 uses
  %i.fp = sext i32 %.val55.i to i64
  %i.fq = icmp slt i64 %indvars.iv.next145.pre-phi.i, %i.fp
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1
  br i1 %i.fq, label %bb.ab, label %Bac_NtkDeriveIndex.exit, !llvm.loop !70

Bac_NtkDeriveIndex.exit:                          ; preds = %.critedge6.i, %.critedge2.preheader.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.u, i64 80
  %.val.i63 = load i32, ptr %i.fs, align 8, !tbaa !71 ; 6 uses
  %i.ft = load i32, ptr %i.fr, align 8, !tbaa !50
  %.not.i.i.i64 = icmp slt i32 %i.ft, %.val.i63
  br i1 %.not.i.i.i64, label %bb.az, label %Vec_IntGrow.exit.i.i65

bb.az:                                            ; preds = %Bac_NtkDeriveIndex.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 168 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i69 = icmp eq ptr %i.fv, null
  %i.fw = sext i32 %.val.i63 to i64
  %i.fx = shl nsw i64 %i.fw, 2                    ; 2 uses
  br i1 %.not9.i.i.i69, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fy = tail call ptr @realloc(ptr noundef nonnull %i.fv, i64 noundef %i.fx) #23
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.fz = tail call noalias ptr @malloc(i64 noundef %i.fx) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ga = phi ptr [ %i.fy, %bb.ba ], [ %i.fz, %bb.bb ]
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !31
  store i32 %.val.i63, ptr %i.fr, align 8, !tbaa !50
  br label %Vec_IntGrow.exit.i.i65

Vec_IntGrow.exit.i.i65:                           ; preds = %bb.bc, %Bac_NtkDeriveIndex.exit
  %i.gb = icmp sgt i32 %.val.i63, 0
  br i1 %i.gb, label %.lr.ph.i.i67, label %Bac_NtkStartCopies.exit

.lr.ph.i.i67:                                     ; preds = %Vec_IntGrow.exit.i.i65
  %i.gc = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !31
  %wide.trip.count.i.i68 = zext nneg i32 %.val.i63 to i64
  %i.ge = shl nuw nsw i64 %wide.trip.count.i.i68, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gd, i8 -1, i64 %i.ge, i1 false), !tbaa !32
  br label %Bac_NtkStartCopies.exit

Bac_NtkStartCopies.exit:                          ; preds = %Vec_IntGrow.exit.i.i65, %.lr.ph.i.i67
  %i.gf = getelementptr inbounds nuw i8, ptr %i.u, i64 164
  store i32 %.val.i63, ptr %i.gf, align 4, !tbaa !30
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %.val55 = load i32, ptr %i.r, align 4, !tbaa !60 ; 3 uses
  %i.gg = sext i32 %.val55 to i64
  %.not.not = icmp slt i64 %indvars.iv126, %i.gg
  br i1 %.not.not, label %Bac_ManNtk.exit, label %.critedge, !llvm.loop !72

.critedge:                                        ; preds = %Bac_NtkStartCopies.exit
  %.not8.i = icmp slt i32 %.val55, 1
  br i1 %.not8.i, label %Bac_ManNodeNum.exit, label %Bac_ManNtk.exit.lr.ph.i

Bac_ManNtk.exit.lr.ph.i:                          ; preds = %.critedge
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !61
  %i.gj = add nuw nsw i32 %.val55, 1
  %wide.trip.count.i = zext nneg i32 %i.gj to i64
  br label %Bac_ManNtk.exit.i

Bac_ManNtk.exit.i:                                ; preds = %Bac_NtkBoxNum.exit.i, %Bac_ManNtk.exit.lr.ph.i
  %indvars.iv.i71 = phi i64 [ 1, %Bac_ManNtk.exit.lr.ph.i ], [ %indvars.iv.next.i73, %Bac_NtkBoxNum.exit.i ] ; 2 uses
  %.010.i = phi i32 [ 0, %Bac_ManNtk.exit.lr.ph.i ], [ %i.hf, %Bac_NtkBoxNum.exit.i ]
  %i.gk = getelementptr inbounds nuw [208 x i8], ptr %i.gi, i64 %indvars.iv.i71 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 84
  %.val.i.i72 = load i32, ptr %i.gl, align 4, !tbaa !65 ; 4 uses
  %i.gm = icmp sgt i32 %.val.i.i72, 0
  br i1 %i.gm, label %.lr.ph.i.i.i, label %Bac_NtkBoxNum.exit.i

.lr.ph.i.i.i:                                     ; preds = %Bac_ManNtk.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 88
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.val.i.i72 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val.i.i72, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gv, %vector.body ]
  %vec.phi189 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gw, %vector.body ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %index ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %wide.load = load <4 x i8>, ptr %i.gp, align 1, !tbaa !55
  %wide.load190 = load <4 x i8>, ptr %i.gq, align 1, !tbaa !55
  %i.gr = icmp slt <4 x i8> %wide.load, splat (i8 10)
  %i.gs = icmp slt <4 x i8> %wide.load190, splat (i8 10)
  %i.gt = zext <4 x i1> %i.gr to <4 x i32>
  %i.gu = zext <4 x i1> %i.gs to <4 x i32>
  %i.gv = add <4 x i32> %vec.phi, %i.gt           ; 2 uses
  %i.gw = add <4 x i32> %vec.phi189, %i.gu        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gw, %i.gv
  %i.gy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %Bac_NtkBoxNum.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.gy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.09.i.i.i = phi i32 [ %i.hd, %scalar.ph ], [ %.09.i.i.i.ph, %scalar.ph.preheader ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv.i.i.i
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !55
  %i.hb = icmp slt i8 %i.ha, 10
  %i.hc = zext i1 %i.hb to i32
  %i.hd = add nuw nsw i32 %.09.i.i.i, %i.hc       ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %Bac_NtkBoxNum.exit.i, label %scalar.ph, !llvm.loop !76

Bac_NtkBoxNum.exit.i:                             ; preds = %scalar.ph, %middle.block, %Bac_ManNtk.exit.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %Bac_ManNtk.exit.i ], [ %i.gy, %middle.block ], [ %i.hd, %scalar.ph ]
  %i.he = add i32 %.val.i.i72, %.010.i
  %i.hf = sub i32 %i.he, %.0.lcssa.i.i.i          ; 2 uses
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i
  br i1 %exitcond.not.i74, label %Bac_ManNodeNum.exit, label %Bac_ManNtk.exit.i, !llvm.loop !77

Bac_ManNodeNum.exit:                              ; preds = %Bac_NtkBoxNum.exit.i, %Bac_ManRoot.exit, %.critedge
  %i.hg = phi ptr [ %i.q, %.critedge ], [ null, %Bac_ManRoot.exit ], [ %i.q, %Bac_NtkBoxNum.exit.i ] ; 10 uses
  %.0.lcssa.i = phi i32 [ 0, %.critedge ], [ 0, %Bac_ManRoot.exit ], [ %i.hf, %Bac_NtkBoxNum.exit.i ]
  %i.hh = tail call ptr @Gia_ManStart(i32 noundef %.0.lcssa.i) #21 ; 16 uses
  %i.hi = load ptr, ptr %0, align 8, !tbaa !78    ; 3 uses
  %.not.i75 = icmp eq ptr %i.hi, null
  br i1 %.not.i75, label %Abc_UtilStrsav.exit, label %bb.bd

bb.bd:                                            ; preds = %Bac_ManNodeNum.exit
  %i.hj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hi) #25
  %i.hk = add i64 %i.hj, 1
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hk) #24 ; 2 uses
  %i.hm = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.hl, ptr noundef nonnull readonly dereferenceable(1) %i.hi) #21 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %Bac_ManNodeNum.exit, %bb.bd
  %i.hn = phi ptr [ %i.hl, %bb.bd ], [ null, %Bac_ManNodeNum.exit ]
  store ptr %i.hn, ptr %i.hh, align 8, !tbaa !79
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !80 ; 3 uses
  %.not.i76 = icmp eq ptr %i.hp, null
  br i1 %.not.i76, label %Abc_UtilStrsav.exit77, label %bb.be

bb.be:                                            ; preds = %Abc_UtilStrsav.exit
  %i.hq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hp) #25
  %i.hr = add i64 %i.hq, 1
  %i.hs = tail call noalias ptr @malloc(i64 noundef %i.hr) #24 ; 2 uses
  %i.ht = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.hs, ptr noundef nonnull readonly dereferenceable(1) %i.hp) #21 ; 0 uses
  br label %Abc_UtilStrsav.exit77

Abc_UtilStrsav.exit77:                            ; preds = %Abc_UtilStrsav.exit, %bb.be
end_hunk_0
