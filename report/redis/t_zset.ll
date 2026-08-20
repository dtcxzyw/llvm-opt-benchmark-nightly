inline.NumInlined: 280
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@genericZrangebyrankCommand:bb.a
bb.v:                                             ; preds = %bb.u
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1043) #17
  call void @abort() #18
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.bq = call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %.0160184) #17 ; 3 uses
  %.not14.i111 = icmp eq ptr %i.bq, null
  br i1 %.not14.i111, label %zzlPrev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %i.bq) #17 ; 2 uses
  %.not15.i112 = icmp eq ptr %i.br, null
  br i1 %.not15.i112, label %bb.y, label %zzlPrev.exit, !prof !91

bb.y:                                             ; preds = %bb.x
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

zzlPrev.exit:                                     ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.1163 = phi ptr [ null, %bb.t ], [ %i.bp, %bb.u ], [ null, %bb.w ], [ %i.bq, %bb.x ]
  %.1161 = phi ptr [ null, %bb.t ], [ %i.bo, %bb.u ], [ null, %bb.w ], [ %i.br, %bb.x ]
  %i.bs = add nsw i64 %i.aw, -1
  %.not103 = icmp eq i64 %i.aw, 0
  br i1 %.not103, label %._crit_edge, label %bb.j, !llvm.loop !230

._crit_edge:                                      ; preds = %zzlPrev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.loopexit

bb.z:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103 ; 5 uses
  %.not96 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not96, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30
  %.not98 = icmp slt i64 %spec.select, 1
  br i1 %.not98, label %zslGetElementByRank.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = sub nsw i64 %.0.i, %spec.store.select   ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.preheader.i.i, label %zslGetElementByRank.exit

.preheader.preheader.i.i:                         ; preds = %bb.ab
  %i.cd = add nsw i32 %i.cb, -1
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.cf = zext nneg i32 %i.cd to i64
  br label %.preheader.i.i

bb.ac:                                            ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.cg = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.cg, label %.preheader.i.i, label %zslGetElementByRank.exit, !llvm.loop !55

.preheader.i.i:                                   ; preds = %bb.ac, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cf, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 6 uses
  %.01845.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.1.lcssa.i.i, %bb.ac ] ; 4 uses
  %.01944.i.i = phi ptr [ %i.ce, %.preheader.preheader.i.i ], [ %.120.lcssa.i.i, %bb.ac ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01944.i.i, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 4 uses
  %.not29.i.i = icmp eq ptr %i.cj, null
  br i1 %.not29.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.not28.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not28.i.i, label %.lr.ph.split.us.i.i, label %zslGetNodeSpanAtLevel.exit.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !31
  %.not.i.us40.i.i = icmp ne ptr %i.ck, null
  %i.cl = zext i1 %.not.i.us40.i.i to i64
  %i.cm = add i64 %.01845.i.i, %i.cl              ; 4 uses
  %.not2227.us41.i.i = icmp ugt i64 %i.cm, %i.bz
  br i1 %.not2227.us41.i.i, label %.critedge.thread.i.i, label %.thread.us.i.preheader.i

.thread.us.i.preheader.i:                         ; preds = %.lr.ph.split.us.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.peel.i = icmp eq ptr %i.co, null
  %i.cp = add i64 %i.cm, 1
  %.not2227.us.i.peel.i = icmp ugt i64 %i.cp, %i.bz
  %or.cond.i.peel.i = or i1 %.not2227.us.i.peel.i, %.not.us.i.peel.i
  br i1 %or.cond.i.peel.i, label %.critedge.i.thread.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %.thread.us.i.preheader.i, %.thread.us.i.i
  %.131.us42.i.i = phi i64 [ %i.cr, %.thread.us.i.i ], [ %i.cm, %.thread.us.i.preheader.i ] ; 2 uses
  %i.cq = phi ptr [ %i.ct, %.thread.us.i.i ], [ %i.co, %.thread.us.i.preheader.i ] ; 2 uses
  %i.cr = add i64 %.131.us42.i.i, 1               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.ct, null
  %i.cu = add i64 %.131.us42.i.i, 2
  %.not2227.us.i.i = icmp ugt i64 %i.cu, %i.bz
  %or.cond.i.i = select i1 %.not.us.i.i, i1 true, i1 %.not2227.us.i.i
  br i1 %or.cond.i.i, label %.critedge.i.thread.i, label %.thread.us.i.i, !llvm.loop !67

zslGetNodeSpanAtLevel.exit.i.i:                   ; preds = %.lr.ph.i.i, %zslGetNodeSpanAtLevel.exit25.i.i
  %i.cv = phi ptr [ %i.dc, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %i.cj, %.lr.ph.i.i ] ; 3 uses
  %.131.i.i = phi i64 [ %i.cz, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.01845.i.i, %.lr.ph.i.i ] ; 2 uses
  %.12030.i.i = phi ptr [ %i.cv, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.01944.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.12030.i.i, i64 %indvars.iv.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, %.131.i.i                ; 3 uses
  %.not22.i.i = icmp ugt i64 %i.cz, %i.bz
  br i1 %.not22.i.i, label %.critedge.i.i, label %zslGetNodeSpanAtLevel.exit25.i.i

zslGetNodeSpanAtLevel.exit25.i.i:                 ; preds = %zslGetNodeSpanAtLevel.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %indvars.iv.i.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %.critedge.i.i, label %zslGetNodeSpanAtLevel.exit.i.i, !llvm.loop !57

.critedge.i.i:                                    ; preds = %zslGetNodeSpanAtLevel.exit25.i.i, %zslGetNodeSpanAtLevel.exit.i.i, %.preheader.i.i
  %.120.lcssa.i.i = phi ptr [ %.01944.i.i, %.preheader.i.i ], [ %i.cv, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.12030.i.i, %zslGetNodeSpanAtLevel.exit.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi i64 [ %.01845.i.i, %.preheader.i.i ], [ %i.cz, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.131.i.i, %zslGetNodeSpanAtLevel.exit.i.i ] ; 2 uses
  %i.dd = icmp eq i64 %.1.lcssa.i.i, %i.bz
  br i1 %i.dd, label %zslGetElementByRank.exit, label %bb.ac

.critedge.i.thread.i:                             ; preds = %.thread.us.i.i, %.thread.us.i.preheader.i
  %.lcssa16.i = phi ptr [ %i.cj, %.thread.us.i.preheader.i ], [ %i.cq, %.thread.us.i.i ]
  %.lcssa.i = phi i64 [ %i.cm, %.thread.us.i.preheader.i ], [ %i.cr, %.thread.us.i.i ]
  %i.de = icmp eq i64 %.lcssa.i, %i.bz
  %spec.select.i = select i1 %i.de, ptr %.lcssa16.i, ptr null
  br label %zslGetElementByRank.exit

.critedge.thread.i.i:                             ; preds = %.lr.ph.split.us.i.i
  %i.df = icmp eq i64 %.01845.i.i, %i.bz
  %spec.select.i.i = select i1 %i.df, ptr %.01944.i.i, ptr null
  br label %zslGetElementByRank.exit

bb.ad:                                            ; preds = %bb.z
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !28 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31
  %.not97 = icmp slt i64 %spec.select, 1
  br i1 %.not97, label %zslGetElementByRank.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = add nuw nsw i64 %spec.store.select, 1   ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !18 ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.preheader.preheader.i.i116, label %zslGetElementByRank.exit

.preheader.preheader.i.i116:                      ; preds = %bb.ae
  %i.dn = add nsw i32 %i.dl, -1
  %i.do = zext nneg i32 %i.dn to i64
  br label %.preheader.i.i117

bb.af:                                            ; preds = %.critedge.i.i130
  %indvars.iv.next.i.i133 = add nsw i64 %indvars.iv.i.i118, -1
  %i.dp = icmp sgt i64 %indvars.iv.i.i118, 0
  br i1 %i.dp, label %.preheader.i.i117, label %zslGetElementByRank.exit, !llvm.loop !55

.preheader.i.i117:                                ; preds = %bb.af, %.preheader.preheader.i.i116
  %indvars.iv.i.i118 = phi i64 [ %i.do, %.preheader.preheader.i.i116 ], [ %indvars.iv.next.i.i133, %bb.af ] ; 6 uses
  %.01845.i.i119 = phi i64 [ 0, %.preheader.preheader.i.i116 ], [ %.1.lcssa.i.i132, %bb.af ] ; 3 uses
  %.01944.i.i120 = phi ptr [ %i.dg, %.preheader.preheader.i.i116 ], [ %.120.lcssa.i.i131, %bb.af ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.01944.i.i120, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv.i.i118
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 4 uses
  %.not29.i.i121 = icmp eq ptr %i.ds, null
  br i1 %.not29.i.i121, label %.critedge.i.i130, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.preheader.i.i117
  %.not28.i.i123 = icmp eq i64 %indvars.iv.i.i118, 0
  br i1 %.not28.i.i123, label %.lr.ph.split.us.i.i134, label %zslGetNodeSpanAtLevel.exit.i.i124

.lr.ph.split.us.i.i134:                           ; preds = %.lr.ph.i.i122
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !31
  %.not.i.us40.i.i135 = icmp ne ptr %i.dt, null
  %i.du = zext i1 %.not.i.us40.i.i135 to i64
  %i.dv = add nuw i64 %.01845.i.i119, %i.du       ; 4 uses
  %.not2227.us41.i.i136 = icmp ugt i64 %i.dv, %i.dj
  br i1 %.not2227.us41.i.i136, label %zslGetElementByRank.exit, label %.thread.us.i.preheader.i137

.thread.us.i.preheader.i137:                      ; preds = %.lr.ph.split.us.i.i134
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.peel.i138 = icmp eq ptr %i.dx, null
  %.not2227.us.i.peel.i139 = icmp ugt i64 %i.dv, %spec.store.select
  %or.cond.i.peel.i140 = or i1 %.not2227.us.i.peel.i139, %.not.us.i.peel.i138
  br i1 %or.cond.i.peel.i140, label %.critedge.i.thread.i146, label %.thread.us.i.i141

.thread.us.i.i141:                                ; preds = %.thread.us.i.preheader.i137, %.thread.us.i.i141
  %.131.us42.i.i142 = phi i64 [ %i.dz, %.thread.us.i.i141 ], [ %i.dv, %.thread.us.i.preheader.i137 ] ; 2 uses
  %i.dy = phi ptr [ %i.eb, %.thread.us.i.i141 ], [ %i.dx, %.thread.us.i.preheader.i137 ] ; 2 uses
  %i.dz = add i64 %.131.us42.i.i142, 1            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.i143 = icmp eq ptr %i.eb, null
  %i.ec = add i64 %.131.us42.i.i142, 2
  %.not2227.us.i.i144 = icmp ugt i64 %i.ec, %i.dj
  %or.cond.i.i145 = select i1 %.not.us.i.i143, i1 true, i1 %.not2227.us.i.i144
  br i1 %or.cond.i.i145, label %.critedge.i.thread.i146, label %.thread.us.i.i141, !llvm.loop !67

zslGetNodeSpanAtLevel.exit.i.i124:                ; preds = %.lr.ph.i.i122, %zslGetNodeSpanAtLevel.exit25.i.i128
  %i.ed = phi ptr [ %i.ek, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %i.ds, %.lr.ph.i.i122 ] ; 3 uses
  %.131.i.i125 = phi i64 [ %i.eh, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.01845.i.i119, %.lr.ph.i.i122 ] ; 2 uses
  %.12030.i.i126 = phi ptr [ %i.ed, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.01944.i.i120, %.lr.ph.i.i122 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.12030.i.i126, i64 %indvars.iv.i.i118
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !26
  %i.eh = add i64 %i.eg, %.131.i.i125             ; 3 uses
  %.not22.i.i127 = icmp ugt i64 %i.eh, %i.dj
  br i1 %.not22.i.i127, label %.critedge.i.i130, label %zslGetNodeSpanAtLevel.exit25.i.i128

zslGetNodeSpanAtLevel.exit25.i.i128:              ; preds = %zslGetNodeSpanAtLevel.exit.i.i124
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv.i.i118
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !31 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i129, label %.critedge.i.i130, label %zslGetNodeSpanAtLevel.exit.i.i124, !llvm.loop !57

.critedge.i.i130:                                 ; preds = %zslGetNodeSpanAtLevel.exit25.i.i128, %zslGetNodeSpanAtLevel.exit.i.i124, %.preheader.i.i117
  %.120.lcssa.i.i131 = phi ptr [ %.01944.i.i120, %.preheader.i.i117 ], [ %i.ed, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.12030.i.i126, %zslGetNodeSpanAtLevel.exit.i.i124 ] ; 2 uses
  %.1.lcssa.i.i132 = phi i64 [ %.01845.i.i119, %.preheader.i.i117 ], [ %i.eh, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.131.i.i125, %zslGetNodeSpanAtLevel.exit.i.i124 ] ; 2 uses
  %i.el = icmp eq i64 %.1.lcssa.i.i132, %i.dj
  br i1 %i.el, label %zslGetElementByRank.exit, label %bb.af

.critedge.i.thread.i146:                          ; preds = %.thread.us.i.i141, %.thread.us.i.preheader.i137
  %.lcssa16.i147 = phi ptr [ %i.ds, %.thread.us.i.preheader.i137 ], [ %i.dy, %.thread.us.i.i141 ]
  %.lcssa.i148 = phi i64 [ %i.dv, %.thread.us.i.preheader.i137 ], [ %i.dz, %.thread.us.i.i141 ]
  %i.em = icmp eq i64 %.lcssa.i148, %i.dj
  %spec.select.i149 = select i1 %i.em, ptr %.lcssa16.i147, ptr null
  br label %zslGetElementByRank.exit

zslGetElementByRank.exit:                         ; preds = %.critedge.i.i, %bb.ac, %.critedge.i.i130, %bb.af, %.critedge.i.thread.i146, %bb.ae, %.lr.ph.split.us.i.i134, %.critedge.thread.i.i, %.critedge.i.thread.i, %bb.ab, %bb.ad, %bb.aa
  %.0 = phi ptr [ %i.di, %bb.ad ], [ %i.by, %bb.aa ], [ null, %.lr.ph.split.us.i.i134 ], [ null, %bb.ab ], [ %spec.select.i, %.critedge.i.thread.i ], [ %spec.select.i.i, %.critedge.thread.i.i ], [ %.120.lcssa.i.i131, %.critedge.i.i130 ], [ null, %bb.ae ], [ %spec.select.i149, %.critedge.i.thread.i146 ], [ null, %bb.af ], [ null, %bb.ac ], [ %.120.lcssa.i.i, %.critedge.i.i ]
  %.not99180 = icmp eq i64 %i.ah, 0
  br i1 %.not99180, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %zslGetElementByRank.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.in.v = select i1 %.not96, i64 16, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %sdslen.exit
  %i.eo = phi i64 [ %i.ag, %.lr.ph ], [ %i.fl, %sdslen.exit ] ; 2 uses
  %.1181 = phi ptr [ %.0, %.lr.ph ], [ %i.fk, %sdslen.exit ] ; 5 uses
  %.not100 = icmp eq ptr %.1181, null
  br i1 %.not100, label %bb.ah, label %bb.ai, !prof !91

bb.ah:                                            ; preds = %bb.ag
  tail call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 3470) #17
  tail call void @abort() #18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %.1181, i64 24
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !13
  %i.er = zext i16 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.1181, i64 %i.er ; 6 uses
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !229
  %i.eu = getelementptr i8, ptr %i.es, i64 -1
  %.val.i = load i8, ptr %i.eu, align 1, !tbaa !36 ; 2 uses
  %i.ev = and i8 %.val.i, 7
  switch i8 %i.ev, label %sdslen.exit [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ew = lshr i8 %.val.i, 3
  %i.ex = zext nneg i8 %i.ew to i64
  br label %sdslen.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds i8, ptr %i.es, i64 -3
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !36
  %i.fa = zext i8 %i.ez to i64
  br label %sdslen.exit

bb.al:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds i8, ptr %i.es, i64 -5
  %i.fc = load i16, ptr %i.fb, align 1, !tbaa !37
  %i.fd = zext i16 %i.fc to i64
  br label %sdslen.exit

bb.am:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds i8, ptr %i.es, i64 -9
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !9
  %i.fg = zext i32 %i.ff to i64
  br label %sdslen.exit

bb.an:                                            ; preds = %bb.ai
  %i.fh = getelementptr inbounds i8, ptr %i.es, i64 -17
  %i.fi = load i64, ptr %i.fh, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  %.0.i153 = phi i64 [ %i.fi, %bb.an ], [ %i.ex, %bb.aj ], [ %i.fa, %bb.ak ], [ %i.fd, %bb.al ], [ %i.fg, %bb.am ], [ 0, %bb.ai ]
  %i.fj = load double, ptr %.1181, align 8, !tbaa !16
  tail call void %i.et(ptr noundef nonnull %0, ptr noundef nonnull %i.es, i64 noundef %.0.i153, double noundef %i.fj) #17
  %.in = getelementptr inbounds nuw i8, ptr %.1181, i64 %.in.v
  %i.fk = load ptr, ptr %.in, align 8, !tbaa !29
  %i.fl = add nsw i64 %i.eo, -1
  %.not99 = icmp eq i64 %i.eo, 0
  br i1 %.not99, label %.loopexit, label %bb.ag, !llvm.loop !231

bb.ao:                                            ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3476, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

.loopexit:                                        ; preds = %sdslen.exit, %zslGetElementByRank.exit, %._crit_edge
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !227
  call void %i.fn(ptr noundef nonnull %0, i64 noundef %i.ah) #17
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangestoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !224
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginStore, ptr %i.f, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeStore, ptr %i.g, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferForStore, ptr %i.h, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongForStore, ptr %i.i, align 8, !tbaa !228
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !232
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangeGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.zrangespec, align 8         ; 4 uses
  %6 = alloca %struct.zlexrangespec, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224  ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.l = add nsw i32 %1, 1                        ; 2 uses
  %i.m = add nsw i32 %1, 2                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 -1, ptr %i.d, align 8, !tbaa !24
  %i.n = add nsw i32 %1, 3                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !163  ; 2 uses
  %.not135173 = icmp slt i32 %i.n, %i.p
  br i1 %.not135173, label %.lr.ph, label %.thread202

.thread202:                                       ; preds = %bb.a
  %spec.store.select11196 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %i.q = icmp eq i32 %3, 3
  br label %bb.n

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br label %bb.b

end_hunk_0
