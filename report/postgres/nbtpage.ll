Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtpage?download=true
inline.NumInlined: 256
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_bt_delitems_delete_check:bb.a
.lr.ph.preheader.i:                               ; preds = %_bt_delitems_update.exit.loopexit.i, %bb.t
  %.057.ph.i = phi i32 [ %i.dx, %_bt_delitems_update.exit.loopexit.i ], [ 0, %bb.t ]
  %.053.ph.i = phi ptr [ %i.co, %_bt_delitems_update.exit.loopexit.i ], [ null, %bb.t ]
  %i.ea = load volatile i32, ptr @CritSectionCount, align 4
  %i.eb = add i32 %i.ea, 1
  store volatile i32 %i.eb, ptr @CritSectionCount, align 4
  br label %.lr.ph.i

bb.x:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %bb.x, %_bt_delitems_update.exit.i
  %.05377.i = phi ptr [ null, %_bt_delitems_update.exit.i ], [ %.053.ph.i, %bb.x ] ; 3 uses
  %.05775.i = phi i32 [ 0, %_bt_delitems_update.exit.i ], [ %.057.ph.i, %bb.x ]
  %i.ec = icmp sgt i32 %.094.lcssa, 0             ; 2 uses
  br i1 %i.ec, label %bb.z, label %bb.aa

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 6
  %.val.i = load i16, ptr %i.ei, align 2
  %i.ej = and i16 %.val.i, 8191
  %narrow.i = add nuw nsw i16 %i.ej, 7
  %i.ek = and i16 %narrow.i, 16376
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = tail call zeroext i1 @PageIndexTupleOverwrite(ptr noundef %.0.i.i.i, i16 noundef zeroext %i.ee, ptr noundef %i.eh, i64 noundef %i.el) #9
  br i1 %i.em, label %bb.x, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.en = tail call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #10 ; 0 uses
  %i.eo = tail call i32 @BufferGetBlockNumber(i32 noundef %1) #9
  %i.ep = load ptr, ptr %i.bo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.eo, ptr noundef nonnull %i.eq) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1349, ptr noundef nonnull @__func__._bt_delitems_delete) #9
  unreachable

bb.z:                                             ; preds = %._crit_edge.i
  call void @PageIndexMultiDelete(ptr noundef %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef %.094.lcssa) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.et = load i16, ptr %i.es, align 8
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 4
  %i.ey = and i16 %i.ex, -65
  store i16 %i.ey, ptr %i.ew, align 4
  call void @MarkBufferDirty(i32 noundef %1) #9
  br i1 %i.cb, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i32 %spec.select, ptr %4, align 4
  %i.ez = trunc i32 %.094.lcssa to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ez, ptr %i.fa, align 4
  %i.fb = trunc i32 %.091.lcssa to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.fb, ptr %i.fc, align 2
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.ar, ptr %i.fd, align 4
  call void @XLogBeginInsert() #9
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %1, i8 noundef zeroext 8) #9
  call void @XLogRegisterData(ptr noundef nonnull %4, i32 noundef 9) #9
  br i1 %i.ec, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fe = shl nuw i32 %.094.lcssa, 1
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %i.b, i32 noundef %i.fe) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.cc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ff = shl nuw i32 %.091.lcssa, 1
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %i.a, i32 noundef %i.ff) #9
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %.05377.i, i32 noundef %.05775.i) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fg = call i64 @XLogInsert(i8 noundef zeroext 11, i8 noundef zeroext 112) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.fh = call i64 @XLogGetFakeLSN(ptr noundef %0) #9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.052.i = phi i64 [ %i.fg, %bb.af ], [ %i.fh, %bb.ag ] ; 2 uses
  %i.fi = call i64 @llvm.fshl.i64(i64 %.052.i, i64 %.052.i, i64 32)
  store volatile i64 %i.fi, ptr %.0.i.i.i, align 8
  %i.fj = load volatile i32, ptr @CritSectionCount, align 4
  %i.fk = add i32 %i.fj, -1
  store volatile i32 %i.fk, ptr @CritSectionCount, align 4
  %.not.i = icmp eq ptr %.05377.i, null
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @pfree(ptr noundef nonnull %.05377.i) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %i.cc, label %.lr.ph61.preheader.i, label %_bt_delitems_delete.exit

.lr.ph61.preheader.i:                             ; preds = %bb.aj
  %wide.trip.count67.i = zext nneg i32 %.091.lcssa to i64
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i, %.lr.ph61.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph61.preheader.i ], [ %indvars.iv.next65.i, %.lr.ph61.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv64.i
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void @pfree(ptr noundef %i.fn) #9
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %.lr.ph138.preheader, label %.lr.ph61.i, !llvm.loop !13

_bt_delitems_delete.exit:                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit

.lr.ph138.preheader:                              ; preds = %.lr.ph61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %wide.trip.count151 = zext nneg i32 %.091.lcssa to i64
  br label %.lr.ph138

bb.ak:                                            ; preds = %.lr.ph133, %._crit_edge.thread
  %indvars.iv145 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next146, %._crit_edge.thread ] ; 3 uses
  %.091130 = phi i32 [ 0, %.lr.ph133 ], [ %.293, %._crit_edge.thread ] ; 8 uses
  %.094129 = phi i32 [ 0, %.lr.ph133 ], [ %.3, %._crit_edge.thread ] ; 9 uses
  %.097128 = phi i16 [ 0, %.lr.ph133 ], [ %.198, %._crit_edge.thread ] ; 4 uses
  %i.fo = load ptr, ptr %i.bc, align 8
  %i.fp = load ptr, ptr %i.au, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv145
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 6
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = sext i16 %i.fs to i64
  %i.fu = getelementptr inbounds [6 x i8], ptr %i.fo, i64 %i.ft ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 2            ; 10 uses
  %i.fw = zext i16 %i.fv to i64
  %i.fx = getelementptr [4 x i8], ptr %i.bd, i64 %i.fw
  %.val = load i32, ptr %i.fx, align 4
  %i.fy = and i32 %.val, 32767
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.fz ; 6 uses
  %i.gb = icmp eq i16 %i.fv, %.097128
  br i1 %i.gb, label %._crit_edge.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 6
  %i.gd = load i16, ptr %i.gc, align 2
  %i.ge = and i16 %i.gd, 8192
  %i.gf = icmp eq i16 %i.ge, 0
  br i1 %i.gf, label %BTreeTupleIsPosting.exit.thread, label %BTreeTupleIsPosting.exit

BTreeTupleIsPosting.exit:                         ; preds = %bb.al
  %i.gg = getelementptr i8, ptr %i.ga, i64 4
  %.val.i109 = load i16, ptr %i.gg, align 2       ; 2 uses
  %i.gh = and i16 %.val.i109, 8192
  %.not113 = icmp eq i16 %i.gh, 0
  br i1 %.not113, label %BTreeTupleIsPosting.exit.thread, label %bb.an

BTreeTupleIsPosting.exit.thread:                  ; preds = %bb.al, %BTreeTupleIsPosting.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %i.gj = load i8, ptr %i.gi, align 2, !range !6, !noundef !7
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.am, label %._crit_edge.thread

bb.am:                                            ; preds = %BTreeTupleIsPosting.exit.thread
  %i.gl = add i32 %.094129, 1
  %i.gm = sext i32 %.094129 to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.gm
  store i16 %i.fv, ptr %i.gn, align 2
  br label %._crit_edge.thread

bb.an:                                            ; preds = %BTreeTupleIsPosting.exit
  %i.go = and i16 %.val.i109, 4095                ; 4 uses
  %.not139 = icmp eq i16 %i.go, 0
  br i1 %.not139, label %._crit_edge.thread, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.an
  %i.gp = getelementptr i8, ptr %i.ga, i64 2
  %i.gq = shl nuw nsw i16 %i.go, 1
  %narrow = add nuw nsw i16 %i.gq, 12
  %i.gr = zext nneg i16 %narrow to i64
  %wide.trip.count = zext nneg i16 %i.go to i64
  %i.gs = trunc nuw nsw i64 %indvars.iv145 to i32
  %5 = insertelement <2 x i16> <i16 poison, i16 0>, i16 %i.fv, i64 0
  br label %bb.ao

._crit_edge:                                      ; preds = %.thread.thread
  %i.gt = icmp eq ptr %.286, null
  br i1 %i.gt, label %._crit_edge.thread, label %bb.av

bb.ao:                                            ; preds = %.lr.ph126, %.thread.thread
  %indvars.iv141 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next142, %.thread.thread ] ; 3 uses
  %.084124 = phi ptr [ null, %.lr.ph126 ], [ %.286, %.thread.thread ] ; 5 uses
  %.087123 = phi i32 [ %i.gs, %.lr.ph126 ], [ %.188.lcssa169, %.thread.thread ] ; 3 uses
  %.val.i.i = load i16, ptr %i.ga, align 2
  %.val2.i.i = load i16, ptr %i.gp, align 2
  %i.gu = zext i16 %.val.i.i to i64
  %i.gv = shl nuw nsw i64 %i.gu, 16
  %i.gw = zext i16 %.val2.i.i to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gw
  %i.gz = getelementptr inbounds nuw [6 x i8], ptr %i.gy, i64 %indvars.iv141
  %i.ha = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.hb = icmp slt i32 %.087123, %i.ha
  br i1 %i.hb, label %.lr.ph.preheader, label %.thread.thread

.lr.ph.preheader:                                 ; preds = %bb.ao
  %i.hc = sext i32 %.087123 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ar
  %i.hd = phi i32 [ %i.ha, %.lr.ph.preheader ], [ %i.hr, %bb.ar ]
  %indvars.iv = phi i64 [ %i.hc, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ar ] ; 4 uses
  %.082115 = phi i32 [ -1, %.lr.ph.preheader ], [ %.1, %bb.ar ] ; 2 uses
  %i.he = load ptr, ptr %i.au, align 8
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.he, i64 %indvars.iv ; 2 uses
  %i.hg = load ptr, ptr %i.bc, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 6
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = sext i16 %i.hi to i64
  %i.hk = getelementptr inbounds [6 x i8], ptr %i.hg, i64 %i.hj ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 2
  %.not106 = icmp eq i16 %i.hl, %i.fv
  br i1 %.not106, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %.lr.ph
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hn = load i8, ptr %i.hm, align 2, !range !6, !noundef !7
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hp = tail call i32 @ItemPointerCompare(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.gz) #9 ; 3 uses
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %.thread, label %._crit_edge153

._crit_edge153:                                   ; preds = %bb.aq
  %.pre = load i32, ptr %i.aw, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge153, %bb.ap
  %i.hr = phi i32 [ %i.hd, %bb.ap ], [ %.pre, %._crit_edge153 ] ; 2 uses
  %.1 = phi i32 [ %.082115, %bb.ap ], [ %i.hp, %._crit_edge153 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next, %i.hs
  br i1 %i.ht, label %.lr.ph, label %.thread, !llvm.loop !14

.thread:                                          ; preds = %bb.ar, %.lr.ph, %bb.aq
  %.188.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.ar ], [ %indvars.iv, %.lr.ph ], [ %indvars.iv, %bb.aq ]
  %.2.ph = phi i32 [ %.1, %bb.ar ], [ %.082115, %.lr.ph ], [ %i.hp, %bb.aq ]
  %.188.lcssa.ph = trunc i64 %.188.lcssa.ph.in to i32 ; 2 uses
  %i.hu = icmp eq i32 %.2.ph, 0
  br i1 %i.hu, label %bb.as, label %.thread.thread

bb.as:                                            ; preds = %.thread
  %i.hv = icmp eq ptr %.084124, null
  br i1 %i.hv, label %bb.at, label %._crit_edge154

._crit_edge154:                                   ; preds = %bb.as
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.084124, i64 10
  %.pre155 = load i16, ptr %.phi.trans.insert, align 2
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hw = tail call ptr @palloc(i64 noundef %i.gr) #9 ; 3 uses
  store ptr %i.ga, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store <2 x i16> %5, ptr %i.hx, align 8
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge154, %bb.at
  %i.hy = phi i16 [ 0, %bb.at ], [ %.pre155, %._crit_edge154 ] ; 2 uses
  %.185 = phi ptr [ %i.hw, %bb.at ], [ %.084124, %._crit_edge154 ] ; 3 uses
  %i.hz = trunc i64 %indvars.iv141 to i16
  %i.ia = getelementptr inbounds nuw i8, ptr %.185, i64 12
  %i.ib = getelementptr inbounds nuw i8, ptr %.185, i64 10
  %i.ic = add i16 %i.hy, 1
  store i16 %i.ic, ptr %i.ib, align 2
  %i.id = zext i16 %i.hy to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.id
  store i16 %i.hz, ptr %i.ie, align 2
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.ao, %.thread, %bb.au
  %.188.lcssa169 = phi i32 [ %.188.lcssa.ph, %bb.au ], [ %.188.lcssa.ph, %.thread ], [ %.087123, %bb.ao ]
  %.286 = phi ptr [ %.185, %bb.au ], [ %.084124, %.thread ], [ %.084124, %bb.ao ] ; 5 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ao, !llvm.loop !15

bb.av:                                            ; preds = %._crit_edge
  %i.if = getelementptr inbounds nuw i8, ptr %.286, i64 10
  %i.ig = load i16, ptr %i.if, align 2
  %i.ih = icmp eq i16 %i.ig, %i.go
  br i1 %i.ih, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ii = add i32 %.094129, 1
  %i.ij = sext i32 %.094129 to i64
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.ij
  store i16 %i.fv, ptr %i.ik, align 2
  tail call void @pfree(ptr noundef nonnull %.286) #9
  br label %._crit_edge.thread

bb.ax:                                            ; preds = %bb.av
  %i.il = add i32 %.091130, 1
  %i.im = sext i32 %.091130 to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.im
  store ptr %.286, ptr %i.in, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.an, %._crit_edge, %bb.ax, %bb.aw, %BTreeTupleIsPosting.exit.thread, %bb.am, %bb.ak
  %.198 = phi i16 [ %.097128, %bb.ak ], [ %.097128, %BTreeTupleIsPosting.exit.thread ], [ %.097128, %bb.am ], [ %i.fv, %bb.aw ], [ %i.fv, %bb.ax ], [ %i.fv, %._crit_edge ], [ %i.fv, %bb.an ]
  %.3 = phi i32 [ %.094129, %bb.ak ], [ %.094129, %BTreeTupleIsPosting.exit.thread ], [ %i.gl, %bb.am ], [ %i.ii, %bb.aw ], [ %.094129, %bb.ax ], [ %.094129, %._crit_edge ], [ %.094129, %bb.an ] ; 2 uses
  %.293 = phi i32 [ %.091130, %bb.ak ], [ %.091130, %BTreeTupleIsPosting.exit.thread ], [ %.091130, %bb.am ], [ %.091130, %bb.aw ], [ %i.il, %bb.ax ], [ %.091130, %._crit_edge ], [ %.091130, %bb.an ] ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.io = load i32, ptr %i.aw, align 4
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp slt i64 %indvars.iv.next146, %i.ip
  br i1 %i.iq, label %bb.ak, label %._crit_edge134, !llvm.loop !16

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv147 = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next148, %.lr.ph138 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv147
  %i.is = load ptr, ptr %i.ir, align 8
  call void @pfree(ptr noundef %i.is) #9
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count151
  br i1 %exitcond152.not, label %.loopexit, label %.lr.ph138, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph138, %_bt_delitems_delete.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -65535, 65536) i32 @_bt_delitems_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = load i16, ptr %i.c, align 2
  %i.e = sext i16 %i.b to i32
  %i.f = sext i16 %i.d to i32
  %i.g = sub nsw i32 %i.e, %i.f
  ret i32 %i.g
}

declare i32 @ItemPointerCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @_bt_pagedel(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.xl_btree_unlink_page, align 8 ; 9 uses
  %4 = alloca %struct.xl_btree_metadata, align 16 ; 6 uses
  %5 = alloca %struct.IndexTupleData, align 2     ; 8 uses
  %6 = alloca %struct.xl_btree_mark_page_halfdead, align 4 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @BufferGetBlockNumber(i32 noundef %1) #9 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.fo, %bb.a
  %.061.ph = phi i32 [ %i.aan, %bb.fo ], [ %1, %bb.a ] ; 23 uses
  %.060.ph = phi ptr [ %.060, %bb.fo ], [ null, %bb.a ]
  %i.x = icmp slt i32 %.061.ph, 0                 ; 7 uses
  %i.y = add nsw i32 %.061.ph, -1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 13                    ; 7 uses
  %i.ab = xor i32 %.061.ph, -1
  %i.ac = zext nneg i32 %i.ab to i64              ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_bt_leftsib_splitflag.exit.thread
  %.060 = phi ptr [ %i.da, %_bt_leftsib_splitflag.exit.thread ], [ %.060.ph, %.outer ] ; 4 uses
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8
  br label %BufferGetPage.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr @BufferBlocks, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.af, %bb.c ], [ %i.ah, %bb.d ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ak ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i16, ptr %i.am, align 4            ; 4 uses
  %i.ao = zext i16 %i.an to i32                   ; 4 uses
  %.not = trunc i16 %i.an to i1
  %i.ap = and i32 %i.ao, 4
  %.not62 = icmp eq i32 %i.ap, 0
  %or.cond = and i1 %.not62, %.not
  br i1 %or.cond, label %bb.l, label %bb.e

bb.e:                                             ; preds = %BufferGetPage.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.ar = and i16 %i.an, 16
  %.not69 = icmp eq i16 %i.ar, 0
  br i1 %.not69, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #9
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = call i32 @errcode(i32 noundef 33557032) #9 ; 0 uses
  %i.au = load ptr, ptr %i.f, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.av) #9 ; 0 uses
  %i.ax = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.12) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1893, ptr noundef nonnull @__func__._bt_pagedel) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ay = load i16, ptr %i.aq, align 4
  %i.az = and i16 %i.ay, 4
  %.not70 = icmp eq i16 %i.az, 0
  br i1 %.not70, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #9
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = call i32 @errcode(i32 noundef 33557032) #9 ; 0 uses
  %i.bc = call i32 @BufferGetBlockNumber(i32 noundef %.061.ph) #9
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13, i32 noundef %i.bc, i32 noundef %i.b, ptr noundef nonnull %i.be) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1901, ptr noundef nonnull @__func__._bt_pagedel) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
end_hunk_0
