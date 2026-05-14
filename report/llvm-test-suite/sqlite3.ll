inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@sqlite3FindInIndex:bb.a
  br i1 %i.bm, label %bb.t, label %sqlite3VdbeUsesBtree.exit

bb.t:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.bn = or i32 %i.bk, %i.bi
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !281
  br label %sqlite3VdbeUsesBtree.exit

sqlite3VdbeUsesBtree.exit:                        ; preds = %sqlite3SchemaToIndex.exit, %bb.t
  %i.bo = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %i.ao, i32 noundef 9, i32 noundef %i.as) ; 3 uses
  %i.bp = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.ao, i32 noundef 46, i32 noundef 1, i32 noundef %i.as) ; 0 uses
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %.1.i, ptr noundef %i.av, i32 noundef 12)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !135 ; 2 uses
  %i.bs = icmp sgt i32 %i.bo, -1
  %i.bt = icmp sgt i32 %i.br, %i.bo
  %or.cond.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i, label %bb.u, label %.critedge.thread124

bb.u:                                             ; preds = %sqlite3VdbeUsesBtree.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %.critedge.thread124, label %.critedge.thread124.sink.split

bb.v:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1204
  %i.by = tail call fastcc ptr @sqlite3BinaryCompareCollSeq(ptr noundef nonnull %0, ptr noundef %i.bx, ptr noundef nonnull %i.ac)
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !1221
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1232 ; 2 uses
  %i.cc = tail call fastcc signext i8 @comparisonAffinity(ptr noundef nonnull %1) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !261
  %i.cf = zext nneg i32 %i.an to i64
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 34
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !1317
  %i.cj = icmp eq i8 %i.ci, %i.cc
  %i.ck = icmp eq i8 %i.cc, 98
  %i.cl = or i1 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.089129 = load ptr, ptr %i.cm, align 8, !tbaa !268 ; 2 uses
  %i.cn = icmp ne ptr %.089129, null
  %or.cond3130 = select i1 %i.cn, i1 %i.cl, i1 false
  br i1 %or.cond3130, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.not105 = icmp eq i32 %2, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %sqlite3VdbeJumpHere.exit121
  %.089131 = phi ptr [ %.089129, %.lr.ph ], [ %.089, %sqlite3VdbeJumpHere.exit121 ] ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.089131, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !271
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = icmp eq i32 %i.cw, %i.an
  br i1 %i.cx, label %bb.x, label %sqlite3VdbeJumpHere.exit121

bb.x:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !235
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !236
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 145
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !240
  %i.dd = getelementptr inbounds nuw i8, ptr %.089131, i64 80
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1325
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.dg = tail call fastcc ptr @sqlite3FindCollSeq(ptr noundef %i.al, i8 noundef zeroext %i.dc, ptr noundef %i.df, i32 noundef -1, i32 noundef 0)
  %i.dh = icmp eq ptr %i.by, %i.dg
  br i1 %i.dh, label %bb.y, label %sqlite3VdbeJumpHere.exit121

bb.y:                                             ; preds = %bb.x
  br i1 %.not105, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %.089131, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !269
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.aa, label %sqlite3VdbeJumpHere.exit121

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %.089131, i64 44
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !1078
  %.not106 = icmp eq i8 %i.dm, 0
  br i1 %.not106, label %sqlite3VdbeJumpHere.exit121, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.dn = load i32, ptr %i.cp, align 8, !tbaa !1304
  %i.do = add nsw i32 %i.dn, 1                    ; 3 uses
  store i32 %i.do, ptr %i.cp, align 8, !tbaa !1304
  %i.dp = tail call fastcc ptr @sqlite3IndexKeyinfo(ptr noundef nonnull %0, ptr noundef nonnull %.089131)
  %i.dq = getelementptr inbounds nuw i8, ptr %.089131, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !389 ; 2 uses
  %.not.i107 = icmp eq ptr %i.dr, null
  br i1 %.not.i107, label %sqlite3SchemaToIndex.exit116, label %.preheader.i108

.preheader.i108:                                  ; preds = %bb.ab
  %i.ds = load i32, ptr %i.cq, align 8, !tbaa !278 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i110, label %sqlite3SchemaToIndex.exit116

.lr.ph.i110:                                      ; preds = %.preheader.i108
  %i.du = load ptr, ptr %i.co, align 8, !tbaa !235
  %wide.trip.count.i111 = zext nneg i32 %i.ds to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i110
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.i110 ], [ %indvars.iv.next.i113, %bb.ad ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.du, i64 %indvars.iv.i112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !236
  %i.dy = icmp eq ptr %i.dx, %i.dr
  br i1 %i.dy, label %.loopexit.loopexit.split.loop.exit13.i115, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i111
  br i1 %exitcond.not.i114, label %sqlite3SchemaToIndex.exit116, label %bb.ac, !llvm.loop !279

.loopexit.loopexit.split.loop.exit13.i115:        ; preds = %bb.ac
  %i.dz = trunc nuw nsw i64 %indvars.iv.i112 to i32
  br label %sqlite3SchemaToIndex.exit116

sqlite3SchemaToIndex.exit116:                     ; preds = %bb.ad, %bb.ab, %.preheader.i108, %.loopexit.loopexit.split.loop.exit13.i115
  %.1.i109 = phi i32 [ -1000000, %bb.ab ], [ 0, %.preheader.i108 ], [ %i.dz, %.loopexit.loopexit.split.loop.exit13.i115 ], [ %i.ds, %bb.ad ] ; 2 uses
  %i.ea = shl nuw i32 1, %.1.i109                 ; 2 uses
  %i.eb = load i32, ptr %i.cr, align 8, !tbaa !281 ; 2 uses
  %i.ec = and i32 %i.eb, %i.ea
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ae, label %sqlite3VdbeUsesBtree.exit117

bb.ae:                                            ; preds = %sqlite3SchemaToIndex.exit116
  %i.ee = or i32 %i.eb, %i.ea
  store i32 %i.ee, ptr %i.cr, align 8, !tbaa !281
  br label %sqlite3VdbeUsesBtree.exit117

sqlite3VdbeUsesBtree.exit117:                     ; preds = %sqlite3SchemaToIndex.exit116, %bb.ae
  %i.ef = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %i.ao, i32 noundef 9, i32 noundef %i.do) ; 3 uses
  %i.eg = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.ao, i32 noundef 46, i32 noundef 1, i32 noundef %i.do) ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.089131, i64 40
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1068
  %i.ej = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.ao, i32 noundef 12, i32 noundef %i.b, i32 noundef %i.ei, i32 noundef %.1.i109, ptr noundef %i.dp, i32 noundef -9) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.089131, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !269
  %i.em = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.ao, i32 noundef 97, i32 noundef %i.b, i32 noundef %i.el) ; 0 uses
  %i.en = load i32, ptr %i.cs, align 8, !tbaa !135 ; 2 uses
  %i.eo = icmp sgt i32 %i.ef, -1
  %i.ep = icmp sgt i32 %i.en, %i.ef
  %or.cond.i119 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i119, label %bb.af, label %.critedge.thread124

bb.af:                                            ; preds = %sqlite3VdbeUsesBtree.exit117
  %i.eq = load ptr, ptr %i.ct, align 8, !tbaa !136 ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i120, label %.critedge.thread124, label %.critedge.thread124.sink.split

sqlite3VdbeJumpHere.exit121:                      ; preds = %bb.w, %bb.x, %bb.z, %bb.aa
  %i.er = getelementptr inbounds nuw i8, ptr %.089131, i64 56
  %.089 = load ptr, ptr %i.er, align 8, !tbaa !268 ; 2 uses
  %.not161 = icmp eq ptr %.089, null
  br i1 %.not161, label %.critedge.thread, label %bb.w, !llvm.loop !1839

.critedge.thread:                                 ; preds = %sqlite3VdbeJumpHere.exit121, %bb.v, %bb.f, %bb.g, %bb.i, %bb.k, %bb.l, %bb.a, %bb.o, %bb.n, %bb.m, %bb.j, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  tail call fastcc void @sqlite3CodeSubselect(ptr noundef %0, ptr noundef %1)
  br label %bb.ag

.critedge.thread124.sink.split:                   ; preds = %bb.af, %bb.u
  %.sink160 = phi i32 [ %i.bo, %bb.u ], [ %i.ef, %bb.af ]
  %.sink158 = phi ptr [ %i.bv, %bb.u ], [ %i.eq, %bb.af ]
  %.sink = phi i32 [ %i.br, %bb.u ], [ %i.en, %bb.af ]
  %.3126.ph = phi i32 [ 1, %bb.u ], [ 3, %bb.af ]
  %i.es = zext nneg i32 %.sink160 to i64
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.sink158, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %.sink, ptr %i.eu, align 8, !tbaa !140
  br label %.critedge.thread124

.critedge.thread124:                              ; preds = %.critedge.thread124.sink.split, %bb.af, %sqlite3VdbeUsesBtree.exit117, %bb.u, %sqlite3VdbeUsesBtree.exit
  %.3126 = phi i32 [ 3, %bb.af ], [ 1, %sqlite3VdbeUsesBtree.exit ], [ 1, %bb.u ], [ 3, %sqlite3VdbeUsesBtree.exit117 ], [ %.3126.ph, %.critedge.thread124.sink.split ]
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.b, ptr %i.ev, align 8, !tbaa !1338
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.thread124, %.critedge.thread
  %.4 = phi i32 [ 2, %.critedge.thread ], [ %.3126, %.critedge.thread124 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CodeSubselect(ptr noundef %0, ptr noundef captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.0 = alloca [12 x i8], align 8            ; 5 uses
  %.sroa.6 = alloca { ptr, [1 x ptr] }, align 8   ; 5 uses
  %2 = alloca %struct.SelectDest, align 4         ; 8 uses
  %3 = alloca %struct.SelectDest, align 4         ; 9 uses
  %i.b = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef %0) ; 48 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3VdbeJumpHere.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !1343
  %i.f = and i16 %i.e, 32
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %sqlite3VdbeAddOp2.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1507
  %.not83 = icmp eq ptr %i.h, null
  br i1 %.not83, label %bb.d, label %sqlite3VdbeAddOp2.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1304
  %i.k = add nsw i32 %i.j, 1                      ; 3 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !1304
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !135  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.o, %i.m
  br i1 %.not.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not23.i.i = icmp eq i32 %i.o, 0
  %i.p = shl nsw i32 %i.o, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.p ; 4 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 42 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2, !tbaa !129
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %resizeOpArray.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = mul i32 %spec.select.i.i, 24
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.x = tail call ptr @sqlite3_realloc(ptr noundef %i.w, i32 noundef %i.v) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %bb.g, label %sqlite3DbRealloc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.s, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.f
  store i32 %spec.select.i.i, ptr %i.n, align 4, !tbaa !147
  store ptr %i.x, ptr %i.r, align 8, !tbaa !136
  %i.y = icmp sgt i32 %spec.select.i.i, %i.o
  br i1 %i.y, label %bb.h, label %resizeOpArray.exit.i.i

bb.h:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.z = sext i32 %i.o to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.z
  %i.ab = sub nsw i32 %spec.select.i.i, %i.o
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.h, %sqlite3DbRealloc.exit.i.i.i, %bb.g, %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 42
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.ag, 0
  %.pre204 = load i32, ptr %i.l, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp1.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i, %bb.d
  %i.ah = phi i32 [ %i.m, %bb.d ], [ %.pre204, %resizeOpArray.exit.i.i ]
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.l, align 8, !tbaa !135
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.al = sext i32 %i.m to i64
  %i.am = getelementptr inbounds [24 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  store i8 9, ptr %i.am, align 8, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.k, ptr %i.an, align 4, !tbaa !141
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.ap, align 1, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.aq, align 1, !tbaa !104
  %.pre = load i32, ptr %i.l, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %resizeOpArray.exit.i.i, %resizeOpArray.exit._crit_edge.i.i
  %i.ar = phi i32 [ %.pre204, %resizeOpArray.exit.i.i ], [ %.pre, %resizeOpArray.exit._crit_edge.i.i ] ; 4 uses
  %i.as = load i32, ptr %i.n, align 4, !tbaa !147 ; 6 uses
  %.not.i.i96 = icmp sgt i32 %i.as, %i.ar
  br i1 %.not.i.i96, label %bb.m, label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeAddOp1.exit
  %.not23.i.i97 = icmp eq i32 %i.as, 0
  %i.at = shl nsw i32 %i.as, 1
  %spec.select.i.i98 = select i1 %.not23.i.i97, i32 42, i32 %i.at ; 4 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 42 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !129
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %resizeOpArray.exit.i.i99

bb.j:                                             ; preds = %bb.i
  %i.az = mul i32 %spec.select.i.i98, 24
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !136
  %i.bb = tail call ptr @sqlite3_realloc(ptr noundef %i.ba, i32 noundef %i.az) ; 3 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i104, label %bb.k, label %sqlite3DbRealloc.exit.i.i.i105

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.aw, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i99

sqlite3DbRealloc.exit.i.i.i105:                   ; preds = %bb.j
  store i32 %spec.select.i.i98, ptr %i.n, align 4, !tbaa !147
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !136
  %i.bc = icmp sgt i32 %spec.select.i.i98, %i.as
  br i1 %i.bc, label %bb.l, label %resizeOpArray.exit.i.i99

bb.l:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i105
  %i.bd = sext i32 %i.as to i64
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = sub nsw i32 %spec.select.i.i98, %i.as
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = mul nuw nsw i64 %i.bg, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.bh, i1 false)
  br label %resizeOpArray.exit.i.i99

resizeOpArray.exit.i.i99:                         ; preds = %bb.l, %sqlite3DbRealloc.exit.i.i.i105, %bb.k, %bb.i
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 42
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !129
  %.not24.i.i100 = icmp eq i8 %i.bk, 0
  br i1 %.not24.i.i100, label %resizeOpArray.exit._crit_edge.i.i102, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i102:             ; preds = %resizeOpArray.exit.i.i99
  %.pre.i.i103 = load i32, ptr %i.l, align 8, !tbaa !135
  br label %bb.m

bb.m:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i102, %sqlite3VdbeAddOp1.exit
  %i.bl = phi i32 [ %.pre.i.i103, %resizeOpArray.exit._crit_edge.i.i102 ], [ %i.ar, %sqlite3VdbeAddOp1.exit ]
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.l, align 8, !tbaa !135
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !136
  %i.bp = sext i32 %i.ar to i64
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bo, i64 %i.bp ; 6 uses
  store i8 46, ptr %i.bq, align 8, !tbaa !137
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.k, ptr %i.bs, align 8, !tbaa !140
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !190
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr null, ptr %i.bu, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 0, ptr %i.bv, align 1, !tbaa !191
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.bw, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.m, %resizeOpArray.exit.i.i99, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.ar, %bb.m ], [ 0, %resizeOpArray.exit.i.i99 ] ; 6 uses
  %i.bx = load i8, ptr %1, align 8, !tbaa !1319   ; 2 uses
  switch i8 %i.bx, label %bb.cg [
    i8 64, label %bb.n
    i8 17, label %bb.bq
    i8 110, label %bb.bq
  ]

bb.n:                                             ; preds = %sqlite3VdbeAddOp2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.o, %bb.n
  %.tr.i.in = phi ptr [ %i.by, %bb.n ], [ %i.ce, %bb.o ]
  %.tr.i = load ptr, ptr %.tr.i.in, align 8, !tbaa !1340 ; 5 uses
  %i.bz = load i8, ptr %.tr.i, align 8, !tbaa !1319
  switch i8 %i.bz, label %bb.u [
    i8 110, label %bb.o
    i8 31, label %bb.p
  ]

bb.o:                                             ; preds = %tailrecurse.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1216
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1218
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1207
  br label %tailrecurse.i

bb.p:                                             ; preds = %tailrecurse.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %.val.i = load ptr, ptr %i.cf, align 8, !tbaa !77 ; 2 uses
  %i.cg = getelementptr i8, ptr %.tr.i, i64 48
  %.val7.i = load i32, ptr %i.cg, align 8
  %i.ch = lshr i32 %.val7.i, 1                    ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ci
  %.not1.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not1.i.i, label %sqlite3ExprAffinity.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.t
  %.04.i.i = phi i32 [ %i.cq, %bb.t ], [ 0, %bb.p ]
  %.0323.i.i = phi ptr [ %i.cr, %bb.t ], [ %.val.i, %bb.p ] ; 2 uses
  %.0332.i.i = phi i8 [ %.1.i.i, %bb.t ], [ 99, %bb.p ] ; 3 uses
  %i.ck = shl i32 %.04.i.i, 8
  %i.cl = load i8, ptr %.0323.i.i, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !37
  %i.cp = zext i8 %i.co to i32
  %i.cq = or disjoint i32 %i.ck, %i.cp            ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0323.i.i, i64 1 ; 2 uses
  switch i32 %i.cq, label %bb.r [
    i32 1667785074, label %bb.t
    i32 1668050786, label %bb.t
    i32 1952807028, label %bb.t
    i32 1651273570, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i
  switch i8 %.0332.i.i, label %bb.r [
    i8 101, label %bb.t
    i8 99, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i
  %i.cs = icmp eq i32 %i.cq, 1919246700
  %i.ct = icmp eq i8 %.0332.i.i, 99
  %i.cu = icmp eq i32 %i.cq, 1718382433
  %i.cv = or i1 %i.cs, %i.cu
  %i.cw = icmp eq i32 %i.cq, 1685026146
  %i.cx = or i1 %i.cw, %i.cv
  %or.cond35.i.i = select i1 %i.cx, i1 %i.ct, i1 false
  br i1 %or.cond35.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = and i32 %i.cq, 16777215
  %i.cz = icmp eq i32 %i.cy, 6909556
  br i1 %i.cz, label %sqlite3ExprAffinity.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.q, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.1.i.i = phi i8 [ %.0332.i.i, %bb.s ], [ 97, %.lr.ph.i.i ], [ 97, %.lr.ph.i.i ], [ 97, %.lr.ph.i.i ], [ 98, %bb.q ], [ 101, %bb.r ], [ 98, %bb.q ] ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.cr, %i.cj
  br i1 %.not.i.i106, label %sqlite3ExprAffinity.exit, label %.lr.ph.i.i, !llvm.loop !1318

bb.u:                                             ; preds = %tailrecurse.i
  %i.da = getelementptr inbounds nuw i8, ptr %.tr.i, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !1571
  br label %sqlite3ExprAffinity.exit

sqlite3ExprAffinity.exit:                         ; preds = %bb.s, %bb.t, %bb.p, %bb.u
  %.0.i = phi i8 [ 99, %bb.p ], [ %i.db, %bb.u ], [ %.1.i.i, %bb.t ], [ 100, %bb.s ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1305 ; 3 uses
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !1305
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i32 %i.dd, ptr %i.df, align 8, !tbaa !1338
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 14 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !135 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 8 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !147 ; 6 uses
  %.not.i.i107 = icmp sgt i32 %i.dj, %i.dh
  br i1 %.not.i.i107, label %resizeOpArray.exit._crit_edge.i.i113, label %bb.v

bb.v:                                             ; preds = %sqlite3ExprAffinity.exit
  %.not23.i.i108 = icmp eq i32 %i.dj, 0
  %i.dk = shl nsw i32 %i.dj, 1
  %spec.select.i.i109 = select i1 %.not23.i.i108, i32 42, i32 %i.dk ; 4 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 42 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !129
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.w, label %resizeOpArray.exit.i.i110

bb.w:                                             ; preds = %bb.v
  %i.dq = mul i32 %spec.select.i.i109, 24
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !136
  %i.ds = tail call ptr @sqlite3_realloc(ptr noundef %i.dr, i32 noundef %i.dq) ; 3 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i115, label %bb.x, label %sqlite3DbRealloc.exit.i.i.i116

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.dn, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i110

sqlite3DbRealloc.exit.i.i.i116:                   ; preds = %bb.w
  store i32 %spec.select.i.i109, ptr %i.di, align 4, !tbaa !147
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !136
  %i.dt = icmp sgt i32 %spec.select.i.i109, %i.dj
  br i1 %i.dt, label %bb.y, label %resizeOpArray.exit.i.i110

bb.y:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i116
  %i.du = sext i32 %i.dj to i64
  %i.dv = getelementptr inbounds [24 x i8], ptr %i.ds, i64 %i.du
  %i.dw = sub nsw i32 %spec.select.i.i109, %i.dj
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = mul nuw nsw i64 %i.dx, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dv, i8 0, i64 %i.dy, i1 false)
  br label %resizeOpArray.exit.i.i110

resizeOpArray.exit.i.i110:                        ; preds = %bb.y, %sqlite3DbRealloc.exit.i.i.i116, %bb.x, %bb.v
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 42
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !129
  %.not24.i.i111 = icmp eq i8 %i.eb, 0
  %.pre206 = load i32, ptr %i.dg, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i111, label %resizeOpArray.exit._crit_edge.i.i113, label %sqlite3VdbeAddOp1.exit117

resizeOpArray.exit._crit_edge.i.i113:             ; preds = %resizeOpArray.exit.i.i110, %sqlite3ExprAffinity.exit
  %i.ec = phi i32 [ %i.dh, %sqlite3ExprAffinity.exit ], [ %.pre206, %resizeOpArray.exit.i.i110 ]
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dg, align 8, !tbaa !135
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !136
  %i.eg = sext i32 %i.dh to i64
  %i.eh = getelementptr inbounds [24 x i8], ptr %i.ef, i64 %i.eg ; 4 uses
  store i8 111, ptr %i.eh, align 8, !tbaa !137
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i32 %i.dd, ptr %i.ei, align 4, !tbaa !141
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 0, ptr %i.ek, align 1, !tbaa !191
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.el, align 1, !tbaa !104
  %.pre205 = load i32, ptr %i.dg, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp1.exit117

sqlite3VdbeAddOp1.exit117:                        ; preds = %resizeOpArray.exit.i.i110, %resizeOpArray.exit._crit_edge.i.i113
  %i.em = phi i32 [ %.pre205, %resizeOpArray.exit._crit_edge.i.i113 ], [ %.pre206, %resizeOpArray.exit.i.i110 ] ; 3 uses
  %.0.i.i112 = phi i32 [ %i.dh, %resizeOpArray.exit._crit_edge.i.i113 ], [ 0, %resizeOpArray.exit.i.i110 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i8 0, i64 16, i1 false)
  %i.en = load i32, ptr %i.df, align 8, !tbaa !1338
  %i.eo = load i32, ptr %i.di, align 4, !tbaa !147 ; 6 uses
  %.not.i.i118 = icmp sgt i32 %i.eo, %i.em
  br i1 %.not.i.i118, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %sqlite3VdbeAddOp1.exit117
  %.not23.i.i119 = icmp eq i32 %i.eo, 0
  %i.ep = shl nsw i32 %i.eo, 1
  %spec.select.i.i120 = select i1 %.not23.i.i119, i32 42, i32 %i.ep ; 4 uses
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 42 ; 2 uses
  %i.et = load i8, ptr %i.es, align 2, !tbaa !129
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.aa, label %resizeOpArray.exit.i.i121

bb.aa:                                            ; preds = %bb.z
  %i.ev = mul i32 %spec.select.i.i120, 24
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !136
  %i.ex = tail call ptr @sqlite3_realloc(ptr noundef %i.ew, i32 noundef %i.ev) ; 3 uses
  %.not.i.i.i.i126 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i126, label %bb.ab, label %sqlite3DbRealloc.exit.i.i.i127

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.es, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i121

sqlite3DbRealloc.exit.i.i.i127:                   ; preds = %bb.aa
  store i32 %spec.select.i.i120, ptr %i.di, align 4, !tbaa !147
  store ptr %i.ex, ptr %i.er, align 8, !tbaa !136
  %i.ey = icmp sgt i32 %spec.select.i.i120, %i.eo
  br i1 %i.ey, label %bb.ac, label %resizeOpArray.exit.i.i121

bb.ac:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i127
  %i.ez = sext i32 %i.eo to i64
  %i.fa = getelementptr inbounds [24 x i8], ptr %i.ex, i64 %i.ez
  %i.fb = sub nsw i32 %spec.select.i.i120, %i.eo
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = mul nuw nsw i64 %i.fc, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fa, i8 0, i64 %i.fd, i1 false)
  br label %resizeOpArray.exit.i.i121

resizeOpArray.exit.i.i121:                        ; preds = %bb.ac, %sqlite3DbRealloc.exit.i.i.i127, %bb.ab, %bb.z
  %i.fe = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 42
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !129
  %.not24.i.i122 = icmp eq i8 %i.fg, 0
  br i1 %.not24.i.i122, label %resizeOpArray.exit._crit_edge.i.i124, label %sqlite3VdbeAddOp2.exit128

resizeOpArray.exit._crit_edge.i.i124:             ; preds = %resizeOpArray.exit.i.i121
  %.pre.i.i125 = load i32, ptr %i.dg, align 8, !tbaa !135
  br label %bb.ad

bb.ad:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i124, %sqlite3VdbeAddOp1.exit117
  %i.fh = phi i32 [ %.pre.i.i125, %resizeOpArray.exit._crit_edge.i.i124 ], [ %i.em, %sqlite3VdbeAddOp1.exit117 ]
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.dg, align 8, !tbaa !135
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !136
  %i.fl = sext i32 %i.em to i64
  %i.fm = getelementptr inbounds [24 x i8], ptr %i.fk, i64 %i.fl ; 6 uses
  store i8 97, ptr %i.fm, align 8, !tbaa !137
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 %i.en, ptr %i.fn, align 4, !tbaa !141
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 1, ptr %i.fo, align 8, !tbaa !140
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !190
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr null, ptr %i.fq, align 8, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store i8 0, ptr %i.fr, align 1, !tbaa !191
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.fs, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit128

sqlite3VdbeAddOp2.exit128:                        ; preds = %resizeOpArray.exit.i.i121, %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1216 ; 2 uses
  %.not85 = icmp eq ptr %i.fu, null
  br i1 %.not85, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %sqlite3VdbeAddOp2.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.fv = load i32, ptr %i.df, align 8, !tbaa !1338
  store i8 7, ptr %2, align 4, !tbaa !1416
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !1418
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.fy, align 4, !tbaa !1420
  store i8 %.0.i, ptr %i.fx, align 1, !tbaa !1419
  %i.fz = call fastcc i32 @sqlite3Select(ptr noundef nonnull %0, ptr noundef nonnull %i.fu, ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.not90 = icmp eq i32 %i.fz, 0
  br i1 %.not90, label %bb.af, label %sqlite3VdbeChangeP4.exit

bb.af:                                            ; preds = %bb.ae
  %i.ga = load ptr, ptr %i.ft, align 8, !tbaa !1216
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1218 ; 3 uses
  %.not91 = icmp eq ptr %i.gb, null
  br i1 %.not91, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !1210
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ge = load ptr, ptr %i.by, align 8, !tbaa !1204
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1207
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !1211
  %i.gi = tail call fastcc ptr @sqlite3BinaryCompareCollSeq(ptr noundef nonnull %0, ptr noundef %i.ge, ptr noundef %i.gh) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %sqlite3ReleaseTempReg.exit157

bb.aj:                                            ; preds = %sqlite3VdbeAddOp2.exit128
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1206 ; 3 uses
  %.not86 = icmp eq ptr %i.gk, null
  br i1 %.not86, label %sqlite3ReleaseTempReg.exit157, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not87 = icmp eq i8 %.0.i, 0
  %spec.select = select i1 %.not87, i8 98, i8 %.0.i
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 7 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !1491 ; 3 uses
  %.not.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i, label %sqlite3GetTempReg.exit.thread, label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit.thread:                    ; preds = %bb.ak
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !1304
  %i.gp = add nsw i32 %i.go, 1                    ; 2 uses
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !1304
  br label %bb.am

sqlite3GetTempReg.exit:                           ; preds = %bb.ak
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gr = add i8 %i.gm, -1                        ; 3 uses
  store i8 %i.gr, ptr %i.gl, align 1, !tbaa !1491
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4  ; 2 uses
  %.not.i130 = icmp eq i8 %i.gr, 0
  br i1 %.not.i130, label %bb.am, label %bb.al

bb.al:                                            ; preds = %sqlite3GetTempReg.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gw = add i8 %i.gm, -2                        ; 2 uses
  store i8 %i.gw, ptr %i.gl, align 1, !tbaa !1491
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !4
  br label %sqlite3GetTempReg.exit132

bb.am:                                            ; preds = %sqlite3GetTempReg.exit.thread, %sqlite3GetTempReg.exit
  %.0.i129252 = phi i32 [ %i.gp, %sqlite3GetTempReg.exit.thread ], [ %i.gu, %sqlite3GetTempReg.exit ]
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !1304
  %i.hc = add nsw i32 %i.hb, 1                    ; 2 uses
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !1304
  br label %sqlite3GetTempReg.exit132

sqlite3GetTempReg.exit132:                        ; preds = %bb.al, %bb.am
  %.0.i129251 = phi i32 [ %i.gu, %bb.al ], [ %.0.i129252, %bb.am ] ; 4 uses
  %.0.i131 = phi i32 [ %i.gz, %bb.al ], [ %i.hc, %bb.am ] ; 4 uses
  %i.hd = load i32, ptr %i.gk, align 8, !tbaa !1210 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3GetTempReg.exit132
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1207
  %i.hh = getelementptr i8, ptr %i.b, i64 32      ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 339 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %sqlite3VdbeAddOp2.exit154
  %.1200 = phi i32 [ %.0, %.lr.ph ], [ %.2, %sqlite3VdbeAddOp2.exit154 ] ; 3 uses
  %.078199 = phi i32 [ %i.hd, %.lr.ph ], [ %i.lb, %sqlite3VdbeAddOp2.exit154 ] ; 2 uses
  %.079198 = phi ptr [ %i.hg, %.lr.ph ], [ %i.lc, %sqlite3VdbeAddOp2.exit154 ] ; 2 uses
  %i.hj = load ptr, ptr %.079198, align 8, !tbaa !1211 ; 2 uses
  %.not88 = icmp eq i32 %.1200, 0
  br i1 %.not88, label %sqlite3VdbeChangeToNoop.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i32 1, ptr %i.a, align 4, !tbaa !4
  %i.hk = call fastcc i32 @walkExprTree(ptr noundef %i.hj, ptr noundef nonnull @exprNodeIsConstant, ptr noundef nonnull %i.a) ; 0 uses
  %i.hl = load i32, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %.not89 = icmp eq i32 %i.hl, 0
  br i1 %.not89, label %bb.ap, label %sqlite3VdbeChangeToNoop.exit

bb.ap:                                            ; preds = %bb.ao
  %.val95 = load ptr, ptr %i.hh, align 8, !tbaa !136 ; 2 uses
end_hunk_0
begin_hunk_1_@sqlite3CodeSubselect:bb.a
  %i.jj = load i32, ptr %i.dg, align 8, !tbaa !135 ; 2 uses
  %i.jk = add nsw i32 %i.jj, -1
  %i.jl = icmp slt i32 %i.jj, 1
  br i1 %i.jl, label %sqlite3VdbeChangeP4.exit185, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i184 = phi i32 [ %i.jk, %bb.ax ], [ %.0.i.i139, %bb.aw ]
  %i.jm = zext nneg i32 %.0.i184 to i64
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1 ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !191
  %i.jq = sext i8 %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !37
  call fastcc void @freeP4(i32 noundef %i.jq, ptr noundef %i.js)
  store ptr null, ptr %i.jr, align 8, !tbaa !37
  %i.jt = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ju = call ptr @sqlite3_malloc(i32 noundef 2) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i, label %sqlite3StrNDup.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i8 %spec.select, ptr %i.ju, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  store i8 0, ptr %i.jv, align 1, !tbaa !37
  br label %sqlite3DbStrNDup.exit.i

sqlite3StrNDup.exit.i.i:                          ; preds = %bb.ay
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 42
  store i8 1, ptr %i.jw, align 2, !tbaa !129
  br label %sqlite3DbStrNDup.exit.i

sqlite3DbStrNDup.exit.i:                          ; preds = %sqlite3StrNDup.exit.i.i, %bb.az
  store ptr %i.ju, ptr %i.jr, align 8, !tbaa !37
  store i8 -1, ptr %i.jo, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit185

sqlite3VdbeChangeP4.exit185:                      ; preds = %sqlite3VdbeAddOp4.exit, %bb.av, %bb.ax, %sqlite3DbStrNDup.exit.i
  %i.jx = load i32, ptr %i.df, align 8, !tbaa !1338
  %i.jy = load i32, ptr %i.dg, align 8, !tbaa !135 ; 3 uses
  %i.jz = load i32, ptr %i.di, align 4, !tbaa !147 ; 6 uses
  %.not.i.i144 = icmp sgt i32 %i.jz, %i.jy
  br i1 %.not.i.i144, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %sqlite3VdbeChangeP4.exit185
  %.not23.i.i145 = icmp eq i32 %i.jz, 0
  %i.ka = shl nsw i32 %i.jz, 1
  %spec.select.i.i146 = select i1 %.not23.i.i145, i32 42, i32 %i.ka ; 4 uses
  %i.kb = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 42 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 2, !tbaa !129
  %i.ke = icmp eq i8 %i.kd, 0
  br i1 %i.ke, label %bb.bb, label %resizeOpArray.exit.i.i147

bb.bb:                                            ; preds = %bb.ba
  %i.kf = mul i32 %spec.select.i.i146, 24
  %i.kg = load ptr, ptr %i.hh, align 8, !tbaa !136
  %i.kh = call ptr @sqlite3_realloc(ptr noundef %i.kg, i32 noundef %i.kf) ; 3 uses
  %.not.i.i.i.i152 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i152, label %bb.bc, label %sqlite3DbRealloc.exit.i.i.i153

bb.bc:                                            ; preds = %bb.bb
  store i8 1, ptr %i.kc, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i147

sqlite3DbRealloc.exit.i.i.i153:                   ; preds = %bb.bb
  store i32 %spec.select.i.i146, ptr %i.di, align 4, !tbaa !147
  store ptr %i.kh, ptr %i.hh, align 8, !tbaa !136
  %i.ki = icmp sgt i32 %spec.select.i.i146, %i.jz
  br i1 %i.ki, label %bb.bd, label %resizeOpArray.exit.i.i147

bb.bd:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i153
  %i.kj = sext i32 %i.jz to i64
  %i.kk = getelementptr inbounds [24 x i8], ptr %i.kh, i64 %i.kj
  %i.kl = sub nsw i32 %spec.select.i.i146, %i.jz
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = mul nuw nsw i64 %i.km, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kk, i8 0, i64 %i.kn, i1 false)
  br label %resizeOpArray.exit.i.i147

resizeOpArray.exit.i.i147:                        ; preds = %bb.bd, %sqlite3DbRealloc.exit.i.i.i153, %bb.bc, %bb.ba
  %i.ko = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 42
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !129
  %.not24.i.i148 = icmp eq i8 %i.kq, 0
  br i1 %.not24.i.i148, label %resizeOpArray.exit._crit_edge.i.i150, label %sqlite3VdbeAddOp2.exit154

resizeOpArray.exit._crit_edge.i.i150:             ; preds = %resizeOpArray.exit.i.i147
  %.pre.i.i151 = load i32, ptr %i.dg, align 8, !tbaa !135
  br label %bb.be

bb.be:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i150, %sqlite3VdbeChangeP4.exit185
  %i.kr = phi i32 [ %.pre.i.i151, %resizeOpArray.exit._crit_edge.i.i150 ], [ %i.jy, %sqlite3VdbeChangeP4.exit185 ]
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %i.dg, align 8, !tbaa !135
  %i.kt = load ptr, ptr %i.hh, align 8, !tbaa !136
  %i.ku = sext i32 %i.jy to i64
  %i.kv = getelementptr inbounds [24 x i8], ptr %i.kt, i64 %i.ku ; 6 uses
  store i8 103, ptr %i.kv, align 8, !tbaa !137
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store i32 %i.jx, ptr %i.kw, align 4, !tbaa !141
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i32 %.0.i131, ptr %i.kx, align 8, !tbaa !140
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 0, ptr %i.ky, align 4, !tbaa !190
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store ptr null, ptr %i.kz, align 8, !tbaa !37
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 0, ptr %i.la, align 1, !tbaa !191
  store i8 0, ptr %i.hi, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit154

sqlite3VdbeAddOp2.exit154:                        ; preds = %resizeOpArray.exit.i.i147, %bb.be
  %i.lb = add nsw i32 %.078199, -1
  %i.lc = getelementptr inbounds nuw i8, ptr %.079198, i64 24
  %i.ld = icmp sgt i32 %.078199, 1
  br i1 %i.ld, label %bb.an, label %._crit_edge, !llvm.loop !1840

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp2.exit154, %sqlite3GetTempReg.exit132
  %.1.lcssa = phi i32 [ %.0, %sqlite3GetTempReg.exit132 ], [ %.2, %sqlite3VdbeAddOp2.exit154 ] ; 3 uses
  %.not.i155 = icmp eq i32 %.0.i129251, 0
  br i1 %.not.i155, label %sqlite3ReleaseTempReg.exit, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge
  %i.le = load i8, ptr %i.gl, align 1, !tbaa !1491 ; 3 uses
  %i.lf = icmp ult i8 %i.le, 8
  br i1 %i.lf, label %bb.bg, label %sqlite3ReleaseTempReg.exit

bb.bg:                                            ; preds = %bb.bf
  %i.lg = zext nneg i8 %i.le to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.li = add nuw nsw i8 %i.le, 1
  store i8 %i.li, ptr %i.gl, align 1, !tbaa !1491
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lg
  store i32 %.0.i129251, ptr %i.lj, align 4, !tbaa !4
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %._crit_edge, %bb.bf, %bb.bg
  %.not.i156 = icmp eq i32 %.0.i131, 0
  br i1 %.not.i156, label %sqlite3ReleaseTempReg.exit157, label %bb.bh

bb.bh:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.lk = load i8, ptr %i.gl, align 1, !tbaa !1491 ; 3 uses
  %i.ll = icmp ult i8 %i.lk, 8
  br i1 %i.ll, label %bb.bi, label %sqlite3ReleaseTempReg.exit157

bb.bi:                                            ; preds = %bb.bh
  %i.lm = zext nneg i8 %i.lk to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lo = add nuw nsw i8 %i.lk, 1
  store i8 %i.lo, ptr %i.gl, align 1, !tbaa !1491
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lm
  store i32 %.0.i131, ptr %i.lp, align 4, !tbaa !4
  br label %sqlite3ReleaseTempReg.exit157

sqlite3ReleaseTempReg.exit157:                    ; preds = %bb.bi, %bb.bh, %sqlite3ReleaseTempReg.exit, %bb.ai, %bb.aj
  %.3 = phi i32 [ %.0, %bb.ai ], [ %.0, %bb.aj ], [ %.1.lcssa, %sqlite3ReleaseTempReg.exit ], [ %.1.lcssa, %bb.bh ], [ %.1.lcssa, %bb.bi ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !136 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %sqlite3VdbeChangeP4.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %sqlite3ReleaseTempReg.exit157
  %i.lt = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 42
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !129
  %.not.i158 = icmp eq i8 %i.lv, 0
  br i1 %.not.i158, label %bb.bk, label %sqlite3VdbeChangeP4.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.lw = icmp slt i32 %.0.i.i112, 0
  br i1 %i.lw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lx = load i32, ptr %i.dg, align 8, !tbaa !135 ; 2 uses
  %i.ly = add nsw i32 %i.lx, -1
  %i.lz = icmp slt i32 %i.lx, 1
  br i1 %i.lz, label %sqlite3VdbeChangeP4.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i159 = phi i32 [ %i.ly, %bb.bl ], [ %.0.i.i112, %bb.bk ]
  %i.ma = zext nneg i32 %.0.i159 to i64
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %i.lr, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !191
  %i.me = sext i8 %i.md to i32
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 3 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !37
  call fastcc void @freeP4(i32 noundef %i.me, ptr noundef %i.mg)
  store ptr null, ptr %i.mf, align 8, !tbaa !37
  %i.mh = call ptr @sqlite3_malloc(i32 noundef 33) ; 5 uses
  store ptr %i.mh, ptr %i.mf, align 8, !tbaa !37
  %.not56.i = icmp eq ptr %i.mh, null
  br i1 %.not56.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mh, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.mi = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 42
  store i8 1, ptr %i.mj, align 2, !tbaa !129
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %storemerge.i = phi i8 [ 0, %bb.bo ], [ -6, %bb.bn ]
  store i8 %storemerge.i, ptr %i.mc, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit.thread

sqlite3VdbeChangeP4.exit.thread:                  ; preds = %sqlite3ReleaseTempReg.exit157, %bb.bj, %bb.bl, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.cg

sqlite3VdbeChangeP4.exit:                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %sqlite3VdbeJumpHere.exit

bb.bq:                                            ; preds = %sqlite3VdbeAddOp2.exit, %sqlite3VdbeAddOp2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !1216 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !1304
  %i.mo = add nsw i32 %i.mn, 1                    ; 3 uses
  store i32 %i.mo, ptr %i.mm, align 8, !tbaa !1304
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.mo, ptr %i.mp, align 4, !tbaa !1418
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.mq, align 1, !tbaa !1419
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.mr, align 4, !tbaa !1420
  %i.ms = icmp eq i8 %i.bx, 110
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  br i1 %i.ms, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  store i8 6, ptr %3, align 4, !tbaa !1416
  %i.mv = load i32, ptr %i.mt, align 8, !tbaa !135 ; 4 uses
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !147 ; 6 uses
  %.not.i.i160 = icmp sgt i32 %i.mw, %i.mv
  br i1 %.not.i.i160, label %sqlite3VdbeAddOp2.exit170.sink.split, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not23.i.i161 = icmp eq i32 %i.mw, 0
  %i.mx = shl nsw i32 %i.mw, 1
  %spec.select.i.i162 = select i1 %.not23.i.i161, i32 42, i32 %i.mx ; 4 uses
  %i.my = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.mz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 42 ; 2 uses
  %i.nb = load i8, ptr %i.na, align 2, !tbaa !129
  %i.nc = icmp eq i8 %i.nb, 0
  br i1 %i.nc, label %bb.bt, label %resizeOpArray.exit.i.i163

bb.bt:                                            ; preds = %bb.bs
  %i.nd = mul i32 %spec.select.i.i162, 24
  %i.ne = load ptr, ptr %i.mz, align 8, !tbaa !136
  %i.nf = tail call ptr @sqlite3_realloc(ptr noundef %i.ne, i32 noundef %i.nd) ; 3 uses
  %.not.i.i.i.i168 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i168, label %bb.bu, label %sqlite3DbRealloc.exit.i.i.i169

bb.bu:                                            ; preds = %bb.bt
  store i8 1, ptr %i.na, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i163

sqlite3DbRealloc.exit.i.i.i169:                   ; preds = %bb.bt
  store i32 %spec.select.i.i162, ptr %i.mu, align 4, !tbaa !147
  store ptr %i.nf, ptr %i.mz, align 8, !tbaa !136
  %i.ng = icmp sgt i32 %spec.select.i.i162, %i.mw
  br i1 %i.ng, label %bb.bv, label %resizeOpArray.exit.i.i163

bb.bv:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i169
  %i.nh = sext i32 %i.mw to i64
  %i.ni = getelementptr inbounds [24 x i8], ptr %i.nf, i64 %i.nh
  %i.nj = sub nsw i32 %spec.select.i.i162, %i.mw
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = mul nuw nsw i64 %i.nk, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ni, i8 0, i64 %i.nl, i1 false)
  br label %resizeOpArray.exit.i.i163

resizeOpArray.exit.i.i163:                        ; preds = %bb.bv, %sqlite3DbRealloc.exit.i.i.i169, %bb.bu, %bb.bs
  %i.nm = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 42
  %i.no = load i8, ptr %i.nn, align 2, !tbaa !129
  %.not24.i.i164 = icmp eq i8 %i.no, 0
  br i1 %.not24.i.i164, label %sqlite3VdbeAddOp2.exit170.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit170

bb.bw:                                            ; preds = %bb.bq
  store i8 3, ptr %3, align 4, !tbaa !1416
  %i.np = load i32, ptr %i.mt, align 8, !tbaa !135 ; 4 uses
  %i.nq = load i32, ptr %i.mu, align 4, !tbaa !147 ; 6 uses
  %.not.i.i171 = icmp sgt i32 %i.nq, %i.np
  br i1 %.not.i.i171, label %sqlite3VdbeAddOp2.exit170.sink.split, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not23.i.i172 = icmp eq i32 %i.nq, 0
  %i.nr = shl nsw i32 %i.nq, 1
  %spec.select.i.i173 = select i1 %.not23.i.i172, i32 42, i32 %i.nr ; 4 uses
  %i.ns = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 42 ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 2, !tbaa !129
  %i.nw = icmp eq i8 %i.nv, 0
  br i1 %i.nw, label %bb.by, label %resizeOpArray.exit.i.i174

bb.by:                                            ; preds = %bb.bx
  %i.nx = mul i32 %spec.select.i.i173, 24
  %i.ny = load ptr, ptr %i.nt, align 8, !tbaa !136
  %i.nz = tail call ptr @sqlite3_realloc(ptr noundef %i.ny, i32 noundef %i.nx) ; 3 uses
  %.not.i.i.i.i179 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i179, label %bb.bz, label %sqlite3DbRealloc.exit.i.i.i180

bb.bz:                                            ; preds = %bb.by
  store i8 1, ptr %i.nu, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i174

sqlite3DbRealloc.exit.i.i.i180:                   ; preds = %bb.by
  store i32 %spec.select.i.i173, ptr %i.mu, align 4, !tbaa !147
  store ptr %i.nz, ptr %i.nt, align 8, !tbaa !136
  %i.oa = icmp sgt i32 %spec.select.i.i173, %i.nq
  br i1 %i.oa, label %bb.ca, label %resizeOpArray.exit.i.i174

bb.ca:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i180
  %i.ob = sext i32 %i.nq to i64
  %i.oc = getelementptr inbounds [24 x i8], ptr %i.nz, i64 %i.ob
  %i.od = sub nsw i32 %spec.select.i.i173, %i.nq
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = mul nuw nsw i64 %i.oe, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.oc, i8 0, i64 %i.of, i1 false)
  br label %resizeOpArray.exit.i.i174

resizeOpArray.exit.i.i174:                        ; preds = %bb.ca, %sqlite3DbRealloc.exit.i.i.i180, %bb.bz, %bb.bx
  %i.og = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 42
  %i.oi = load i8, ptr %i.oh, align 2, !tbaa !129
  %.not24.i.i175 = icmp eq i8 %i.oi, 0
  br i1 %.not24.i.i175, label %sqlite3VdbeAddOp2.exit170.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit170

sqlite3VdbeAddOp2.exit170.sink.split.sink.split:  ; preds = %resizeOpArray.exit.i.i174, %resizeOpArray.exit.i.i163
  %.sink262.ph = phi i32 [ %i.mv, %resizeOpArray.exit.i.i163 ], [ %i.np, %resizeOpArray.exit.i.i174 ]
  %.sink.ph = phi i8 [ 112, %resizeOpArray.exit.i.i163 ], [ 46, %resizeOpArray.exit.i.i174 ]
  %.pre.i.i178 = load i32, ptr %i.mt, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit170.sink.split

sqlite3VdbeAddOp2.exit170.sink.split:             ; preds = %sqlite3VdbeAddOp2.exit170.sink.split.sink.split, %bb.bw, %bb.br
  %.sink265 = phi i32 [ %i.mv, %bb.br ], [ %i.np, %bb.bw ], [ %.pre.i.i178, %sqlite3VdbeAddOp2.exit170.sink.split.sink.split ]
  %.sink262 = phi i32 [ %i.mv, %bb.br ], [ %i.np, %bb.bw ], [ %.sink262.ph, %sqlite3VdbeAddOp2.exit170.sink.split.sink.split ]
  %.sink = phi i8 [ 112, %bb.br ], [ 46, %bb.bw ], [ %.sink.ph, %sqlite3VdbeAddOp2.exit170.sink.split.sink.split ]
  %i.oj = add nsw i32 %.sink265, 1
  store i32 %i.oj, ptr %i.mt, align 8, !tbaa !135
  %i.ok = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !136
  %i.om = sext i32 %.sink262 to i64
  %i.on = getelementptr inbounds [24 x i8], ptr %i.ol, i64 %i.om ; 6 uses
  store i8 %.sink, ptr %i.on, align 8, !tbaa !137
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  store i32 0, ptr %i.oo, align 4, !tbaa !141
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store i32 %i.mo, ptr %i.op, align 8, !tbaa !140
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  store i32 0, ptr %i.oq, align 4, !tbaa !190
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store ptr null, ptr %i.or, align 8, !tbaa !37
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  store i8 0, ptr %i.os, align 1, !tbaa !191
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.ot, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit170

sqlite3VdbeAddOp2.exit170:                        ; preds = %sqlite3VdbeAddOp2.exit170.sink.split, %resizeOpArray.exit.i.i174, %resizeOpArray.exit.i.i163
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ml, i64 80 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !1227
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ov)
  %.val = load ptr, ptr %0, align 8, !tbaa !244   ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i186, label %sqlite3DbMallocRaw.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %sqlite3VdbeAddOp2.exit170
  %i.ow = getelementptr inbounds nuw i8, ptr %.val, i64 42 ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 2, !tbaa !129
  %i.oy = icmp eq i8 %i.ox, 0
  br i1 %i.oy, label %bb.cc, label %sqlite3Expr.exit

bb.cc:                                            ; preds = %bb.cb
  %i.oz = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i8 1, ptr %i.ow, align 2, !tbaa !129
  br label %sqlite3Expr.exit

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %sqlite3VdbeAddOp2.exit170
  %i.pb = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i188 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i188, label %sqlite3Expr.exit, label %bb.ce

bb.ce:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i, %bb.cc
  %.0.i11.i.i = phi ptr [ %i.pb, %sqlite3DbMallocRaw.exit.i.i ], [ %i.oz, %bb.cc ] ; 8 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.pc, i8 0, i64 119, i1 false)
  store i8 124, ptr %.0.i11.i.i, align 8, !tbaa !1319
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.pe, align 8, !tbaa !1320
  %i.pf = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 56
  %i.pg = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false), !tbaa.struct !1321
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pf, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 112
  store i32 1, ptr %i.ph, align 8, !tbaa !1322
  br label %sqlite3Expr.exit

sqlite3Expr.exit:                                 ; preds = %bb.cb, %bb.cd, %sqlite3DbMallocRaw.exit.i.i, %bb.ce
end_hunk_1
