inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_table_column_metadata:bb.a
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !958

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  br i1 %.not.i89, label %bb.h, label %sqlite3Init.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.h, align 4, !tbaa !697
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !697
  br label %sqlite3Init.exit

sqlite3Init.exit:                                 ; preds = %bb.h, %._crit_edge.i
  %i.al = call fastcc ptr @sqlite3FindTable(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1) ; 9 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %sqlite3Init.exit.thread, label %bb.i

bb.i:                                             ; preds = %sqlite3Init.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 63
  %i.an = load i8, ptr %i.am, align 1, !tbaa !924
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %sqlite3Init.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq ptr %3, null
  br i1 %i.ap, label %.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  %i.aq = load i8, ptr %3, align 1, !tbaa !229    ; 3 uses
  %.not10.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not10.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.ar = phi i8 [ %i.ax, %.lr.ph.i.i ], [ %i.aq, %.preheader.i.i ]
  %.012.i.i = phi i8 [ %i.av, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.0611.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %3, %.preheader.i.i ]
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !229
  %i.av = add i8 %i.au, %.012.i.i                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !229 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i, !llvm.loop !929

sqlite3StrIHash.exit.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.07.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.av, %.lr.ph.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !884 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 54
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !883
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.bd = and i8 %.07.i.i, 15
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !229 ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = zext i8 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 11
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !930
  %i.bm = icmp eq i8 %i.bl, %.07.i.i
  br i1 %i.bm, label %bb.k, label %sqlite3StrICmp.exit.i

bb.k:                                             ; preds = %sqlite3StrIHash.exit.i
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !931
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %i.bo = phi i8 [ %i.aq, %bb.k ], [ %.pre, %bb.o ] ; 3 uses
  %.013.i.i = phi ptr [ %3, %bb.k ], [ %i.bz, %bb.o ]
  %.0.i.i = phi ptr [ %i.bn, %bb.k ], [ %i.by, %bb.o ] ; 2 uses
  %i.bp = load i8, ptr %.0.i.i, align 1, !tbaa !229 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, %i.bo
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = icmp eq i8 %i.bo, 0
  br i1 %i.br, label %sqlite3ColumnIndex.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bs = zext i8 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !229
  %i.bv = zext i8 %i.bo to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !229
  %.not.i24.i = icmp eq i8 %i.bu, %i.bx
  br i1 %.not.i24.i, label %bb.o, label %sqlite3StrICmp.exit.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.bz, align 1, !tbaa !229
  br label %bb.l

sqlite3StrICmp.exit.i:                            ; preds = %bb.n, %sqlite3StrIHash.exit.i
  %i.ca = call i16 @llvm.smax.i16(i16 %i.bb, i16 1)
  %wide.trip.count.i = zext nneg i16 %i.ca to i64
  br label %bb.p

bb.p:                                             ; preds = %sqlite3StrICmp.exit30.i, %sqlite3StrICmp.exit.i
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i91, %sqlite3StrICmp.exit30.i ], [ 0, %sqlite3StrICmp.exit.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv.i90 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 11
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !930
  %i.ce = icmp eq i8 %i.cd, %.07.i.i
  br i1 %i.ce, label %bb.q, label %sqlite3StrICmp.exit30.i

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !931
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %.013.i26.i = phi ptr [ %3, %bb.q ], [ %i.cr, %bb.u ] ; 2 uses
  %.0.i27.i = phi ptr [ %i.cf, %bb.q ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cg = load i8, ptr %.0.i27.i, align 1, !tbaa !229 ; 3 uses
  %i.ch = load i8, ptr %.013.i26.i, align 1, !tbaa !229 ; 2 uses
  %i.ci = icmp eq i8 %i.cg, %i.ch
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = icmp eq i8 %i.cg, 0
  br i1 %i.cj, label %sqlite3ColumnIndex.exit, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ck = zext i8 %i.cg to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !229
  %i.cn = zext i8 %i.ch to i64
  %i.co = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !229
  %.not.i28.i = icmp eq i8 %i.cm, %i.cp
  br i1 %.not.i28.i, label %bb.u, label %sqlite3StrICmp.exit30.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i26.i, i64 1
  br label %bb.r

sqlite3StrICmp.exit30.i:                          ; preds = %bb.t, %bb.p
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i91, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3ColumnIndex.exit.thread104, label %bb.p

sqlite3ColumnIndex.exit:                          ; preds = %bb.s
  %i.cs = trunc nuw nsw i64 %indvars.iv.i90 to i32
  br label %sqlite3ColumnIndex.exit.thread

sqlite3ColumnIndex.exit.thread104:                ; preds = %sqlite3StrICmp.exit30.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !790
  %i.cv = and i32 %i.cu, 128
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %sqlite3Init.exit.thread

bb.v:                                             ; preds = %sqlite3ColumnIndex.exit.thread104
  %i.cx = call fastcc i32 @sqlite3IsRowid(ptr noundef nonnull %3)
  %.not80 = icmp eq i32 %i.cx, 0
  br i1 %.not80, label %sqlite3Init.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !893 ; 2 uses
  %i.da = icmp sgt i16 %i.cz, -1
  br i1 %i.da, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.db = zext nneg i16 %i.cz to i32
  br label %sqlite3ColumnIndex.exit.thread

sqlite3ColumnIndex.exit.thread:                   ; preds = %bb.m, %sqlite3ColumnIndex.exit, %bb.x
  %.067 = phi i32 [ %i.db, %bb.x ], [ %i.cs, %sqlite3ColumnIndex.exit ], [ %i.bh, %bb.m ] ; 2 uses
  %.pn = zext i32 %.067 to i64
  %.068 = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.pn ; 5 uses
  %.not81 = icmp eq ptr %i.az, null
  br i1 %.not81, label %.thread, label %bb.y

bb.y:                                             ; preds = %sqlite3ColumnIndex.exit.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %.068, i64 14
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !885 ; 3 uses
  %i.de = and i16 %i.dd, 4
  %.not.i93 = icmp eq i16 %i.de, 0                ; 2 uses
  br i1 %.not.i93, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = load ptr, ptr %.068, align 8, !tbaa !931 ; 2 uses
  %i.dg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  br label %sqlite3ColumnType.exit

bb.aa:                                            ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.dk = load i8, ptr %i.dj, align 8
  %i.dl = lshr i8 %i.dk, 4                        ; 2 uses
  %.not8.i = icmp eq i8 %i.dl, 0
  br i1 %.not8.i, label %sqlite3ColumnType.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = zext nneg i8 %i.dl to i64
  %9 = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.dm
  %10 = getelementptr i8, ptr %9, i64 -8
  %i.dn = load ptr, ptr %10, align 8, !tbaa !253
  br label %sqlite3ColumnType.exit

sqlite3ColumnType.exit:                           ; preds = %bb.z, %bb.aa, %bb.ab
  %.0.i94 = phi ptr [ %i.di, %bb.z ], [ %i.dn, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.do = and i16 %i.dd, 512
  %i.dp = icmp eq i16 %i.do, 0
  br i1 %i.dp, label %sqlite3ColumnColl.exit, label %bb.ac

bb.ac:                                            ; preds = %sqlite3ColumnType.exit
  %i.dq = load ptr, ptr %.068, align 8, !tbaa !931 ; 3 uses
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.dq) ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.dq, i64 %strlen.i ; 2 uses
  br i1 %.not.i93, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ac
  %scevgep12.i = getelementptr i8, ptr %scevgep.i, i64 1
  %strlen13.i = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep12.i)
  %i.dr = getelementptr i8, ptr %i.dq, i64 %strlen13.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 %strlen.i
  %scevgep14.i = getelementptr i8, ptr %i.ds, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %bb.ac
  %.2.i = phi ptr [ %scevgep.i, %bb.ac ], [ %scevgep14.i, %.preheader.preheader.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %sqlite3ColumnColl.exit

sqlite3ColumnColl.exit:                           ; preds = %sqlite3ColumnType.exit, %.loopexit.i
  %.09.i = phi ptr [ %i.dt, %.loopexit.i ], [ null, %sqlite3ColumnType.exit ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.dv = load i8, ptr %i.du, align 8
  %i.dw = and i8 %i.dv, 15
  %i.dx = icmp ne i8 %i.dw, 0                     ; 2 uses
  %i.dy = and i16 %i.dd, 1                        ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !893
  %i.eb = sext i16 %i.ea to i32
  %i.ec = icmp eq i32 %.067, %i.eb
  br i1 %i.ec, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %sqlite3ColumnColl.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !790
  %i.ef = lshr i32 %i.ee, 3
  %.lobit = and i32 %i.ef, 1
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.j, %sqlite3ColumnIndex.exit.thread, %sqlite3ColumnColl.exit, %bb.ad
  %.065 = phi ptr [ %.0.i94, %sqlite3ColumnColl.exit ], [ %.0.i94, %bb.ad ], [ @.str.40, %sqlite3ColumnIndex.exit.thread ], [ @.str.40, %bb.j ], [ @.str.40, %bb.w ]
  %.063 = phi ptr [ %.09.i, %sqlite3ColumnColl.exit ], [ %.09.i, %bb.ad ], [ null, %sqlite3ColumnIndex.exit.thread ], [ null, %bb.j ], [ null, %bb.w ] ; 2 uses
  %.061.shrunk = phi i1 [ %i.dx, %sqlite3ColumnColl.exit ], [ %i.dx, %bb.ad ], [ false, %sqlite3ColumnIndex.exit.thread ], [ false, %bb.j ], [ false, %bb.w ]
  %.059.shrunk = phi i16 [ %i.dy, %sqlite3ColumnColl.exit ], [ %i.dy, %bb.ad ], [ 1, %sqlite3ColumnIndex.exit.thread ], [ 1, %bb.j ], [ 1, %bb.w ]
  %.0 = phi i32 [ 0, %sqlite3ColumnColl.exit ], [ %.lobit, %bb.ad ], [ 0, %sqlite3ColumnIndex.exit.thread ], [ 0, %bb.j ], [ 0, %bb.w ]
  %.059 = zext nneg i16 %.059.shrunk to i32
  %.061 = zext i1 %.061.shrunk to i32
  %.not82 = icmp eq ptr %.063, null
  %spec.store.select = select i1 %.not82, ptr @.str.136, ptr %.063
  br label %sqlite3Init.exit.thread

sqlite3Init.exit.thread:                          ; preds = %bb.f, %bb.d, %sqlite3ColumnIndex.exit.thread104, %bb.v, %sqlite3Init.exit, %bb.i, %.thread
  %.0.i101 = phi i32 [ 0, %sqlite3ColumnIndex.exit.thread104 ], [ 0, %sqlite3Init.exit ], [ 0, %.thread ], [ 0, %bb.i ], [ 0, %bb.v ], [ %i.u, %bb.d ], [ %i.ah, %bb.f ]
  %.069 = phi i1 [ false, %sqlite3ColumnIndex.exit.thread104 ], [ false, %sqlite3Init.exit ], [ true, %.thread ], [ false, %bb.i ], [ false, %bb.v ], [ true, %bb.d ], [ true, %bb.f ]
  %.166 = phi ptr [ null, %sqlite3ColumnIndex.exit.thread104 ], [ null, %sqlite3Init.exit ], [ %.065, %.thread ], [ null, %bb.i ], [ null, %bb.v ], [ null, %bb.d ], [ null, %bb.f ]
  %.164 = phi ptr [ null, %sqlite3ColumnIndex.exit.thread104 ], [ null, %sqlite3Init.exit ], [ %spec.store.select, %.thread ], [ null, %bb.i ], [ null, %bb.v ], [ null, %bb.d ], [ null, %bb.f ]
  %.162 = phi i32 [ 0, %sqlite3ColumnIndex.exit.thread104 ], [ 0, %sqlite3Init.exit ], [ %.061, %.thread ], [ 0, %bb.i ], [ 0, %bb.v ], [ 0, %bb.d ], [ 0, %bb.f ]
  %.160 = phi i32 [ 0, %sqlite3ColumnIndex.exit.thread104 ], [ 0, %sqlite3Init.exit ], [ %.059, %.thread ], [ 0, %bb.i ], [ 0, %bb.v ], [ 0, %bb.d ], [ 0, %bb.f ]
  %.1 = phi i32 [ 0, %sqlite3ColumnIndex.exit.thread104 ], [ 0, %sqlite3Init.exit ], [ %.0, %.thread ], [ 0, %bb.i ], [ 0, %bb.v ], [ 0, %bb.d ], [ 0, %bb.f ]
  %i.eg = load i8, ptr %i.e, align 1, !tbaa !61
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ae, label %sqlite3BtreeLeaveAll.exit

bb.ae:                                            ; preds = %sqlite3Init.exit.thread
  call fastcc void @btreeLeaveAll(ptr noundef nonnull readonly %0)
  br label %sqlite3BtreeLeaveAll.exit

sqlite3BtreeLeaveAll.exit:                        ; preds = %sqlite3Init.exit.thread, %bb.ae
  %.not83 = icmp eq ptr %4, null
  br i1 %.not83, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %sqlite3BtreeLeaveAll.exit
  store ptr %.166, ptr %4, align 8, !tbaa !253
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %sqlite3BtreeLeaveAll.exit
  %.not84 = icmp eq ptr %5, null
  br i1 %.not84, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %.164, ptr %5, align 8, !tbaa !253
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not85 = icmp eq ptr %6, null
  br i1 %.not85, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %.162, ptr %6, align 4, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not86 = icmp eq ptr %7, null
  br i1 %.not86, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %.160, ptr %7, align 4, !tbaa !24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not87 = icmp eq ptr %8, null
  br i1 %.not87, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %.1, ptr %8, align 4, !tbaa !24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pre113 = load ptr, ptr %i.a, align 8, !tbaa !253 ; 3 uses
  br i1 %.069, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.i95 = icmp eq ptr %.pre113, null
  br i1 %.not.i95, label %sqlite3DbFree.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %.pre113)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.ap, %bb.aq
  %i.ei = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef %2, ptr noundef %3) ; 2 uses
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !253
  br label %bb.ar

bb.ar:                                            ; preds = %sqlite3DbFree.exit, %bb.ao
  %i.ej = phi ptr [ %.pre113, %bb.ao ], [ %i.ei, %sqlite3DbFree.exit ] ; 2 uses
  %.070 = phi i32 [ %.0.i101, %bb.ao ], [ 1, %sqlite3DbFree.exit ] ; 3 uses
  %.not88 = icmp eq ptr %i.ej, null
  %i.ek = select i1 %.not88, ptr null, ptr @.str.30
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef nonnull %0, i32 noundef %.070, ptr noundef %i.ek, ptr noundef %i.ej)
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %sqlite3DbFree.exit97, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %i.el)
  br label %sqlite3DbFree.exit97

sqlite3DbFree.exit97:                             ; preds = %bb.ar, %bb.as
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.en = load i8, ptr %i.em, align 1, !tbaa !552
  %i.eo = icmp ne i8 %i.en, 0
  %i.ep = icmp ne i32 %.070, 0
  %or.cond.i = or i1 %i.ep, %i.eo
  br i1 %or.cond.i, label %bb.at, label %sqlite3ApiExit.exit

bb.at:                                            ; preds = %sqlite3DbFree.exit97
  %i.eq = call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %.070)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %sqlite3DbFree.exit97, %bb.at
  %.0.i98 = phi i32 [ %i.eq, %bb.at ], [ 0, %sqlite3DbFree.exit97 ]
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %.not.i99 = icmp eq ptr %i.er, null
  br i1 %.not.i99, label %sqlite3_mutex_leave.exit, label %bb.au

bb.au:                                            ; preds = %sqlite3ApiExit.exit
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.es(ptr noundef nonnull %i.er) #59, !inline_history !21
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3ApiExit.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.0.i98
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sqlite3Init(ptr noundef initializes((100, 101)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !697
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 113
  %i.i = load i8, ptr %i.h, align 1, !tbaa !956
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.i, ptr %i.j, align 4, !tbaa !846
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 114
  %i.l = load i16, ptr %i.k, align 2, !tbaa !695
  %i.m = and i16 %i.l, 1
  %.not23 = icmp eq i16 %i.m, 0
  br i1 %.not23, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call fastcc i32 @sqlite3InitOne(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i32 noundef 0) ; 2 uses
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.c, label %.loopexit

end_hunk_0
begin_hunk_1_@sqlite3FindTable:bb.a
  br label %sqlite3_strnicmp.exit194

sqlite3_strnicmp.exit194:                         ; preds = %.lr.ph.i186.preheader, %.lr.ph.i186.1, %.lr.ph.i186.2, %.lr.ph.i186.3, %.lr.ph.i186.4, %.lr.ph.i186.5, %.lr.ph.i186.6, %split.i191
  %.023.i188268 = phi ptr [ %.023.i188.lcssa266, %split.i191 ], [ @.str.699, %.lr.ph.i186.preheader ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 1), %.lr.ph.i186.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 2), %.lr.ph.i186.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 3), %.lr.ph.i186.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 4), %.lr.ph.i186.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 5), %.lr.ph.i186.5 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 6), %.lr.ph.i186.6 ]
  %i.my = phi i32 [ %i.mx, %split.i191 ], [ 0, %.lr.ph.i186.preheader ], [ 0, %.lr.ph.i186.1 ], [ 0, %.lr.ph.i186.2 ], [ 0, %.lr.ph.i186.3 ], [ 0, %.lr.ph.i186.4 ], [ 0, %.lr.ph.i186.5 ], [ 0, %.lr.ph.i186.6 ]
  %i.mz = load i8, ptr %.023.i188268, align 1, !tbaa !229
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !229
  %i.nd = zext i8 %i.nc to i32
  %i.ne = icmp eq i32 %i.my, %i.nd
  br i1 %i.ne, label %sqlite3_strnicmp.exit194.thread, label %sqlite3StrICmp.exit65

sqlite3_strnicmp.exit194.thread:                  ; preds = %bb.bz, %sqlite3_strnicmp.exit194
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cd, %sqlite3_strnicmp.exit194.thread
  %.013.i195 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.745, i64 7), %sqlite3_strnicmp.exit194.thread ], [ %i.nr, %bb.cd ] ; 2 uses
  %.0.i196 = phi ptr [ %i.nf, %sqlite3_strnicmp.exit194.thread ], [ %i.nq, %bb.cd ] ; 2 uses
  %i.ng = load i8, ptr %.0.i196, align 1, !tbaa !229 ; 3 uses
  %i.nh = load i8, ptr %.013.i195, align 1, !tbaa !229 ; 2 uses
  %i.ni = icmp eq i8 %i.ng, %i.nh
  br i1 %i.ni, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.nj = icmp eq i8 %i.ng, 0
  br i1 %i.nj, label %sqlite3StrICmp.exit199.thread, label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.nk = zext i8 %i.ng to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !229
  %i.nn = zext i8 %i.nh to i64
  %i.no = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !229
  %.not.i197 = icmp eq i8 %i.nm, %i.np
  br i1 %.not.i197, label %bb.cd, label %sqlite3StrICmp.exit199

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i196, i64 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.013.i195, i64 1
  br label %bb.ca

sqlite3StrICmp.exit199.thread:                    ; preds = %bb.cb
  %i.ns = tail call fastcc ptr @sqlite3HashFind(ptr noundef nonnull %i.il, ptr noundef nonnull @.str.364)
  br label %sqlite3StrICmp.exit65

sqlite3StrICmp.exit199:                           ; preds = %bb.cc, %bb.cg
  %.013.i200 = phi ptr [ %i.oe, %bb.cg ], [ getelementptr inbounds nuw (i8, ptr @.str.744, i64 7), %bb.cc ] ; 2 uses
  %.0.i201 = phi ptr [ %i.od, %bb.cg ], [ %i.nf, %bb.cc ] ; 2 uses
  %i.nt = load i8, ptr %.0.i201, align 1, !tbaa !229 ; 3 uses
  %i.nu = load i8, ptr %.013.i200, align 1, !tbaa !229 ; 2 uses
  %i.nv = icmp eq i8 %i.nt, %i.nu
  br i1 %i.nv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %sqlite3StrICmp.exit199
  %i.nw = icmp eq i8 %i.nt, 0
  br i1 %i.nw, label %sqlite3StrICmp.exit204.thread, label %bb.cg

bb.cf:                                            ; preds = %sqlite3StrICmp.exit199
  %i.nx = zext i8 %i.nt to i64
  %i.ny = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !229
  %i.oa = zext i8 %i.nu to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !229
  %.not.i202 = icmp eq i8 %i.nz, %i.oc
  br i1 %.not.i202, label %bb.cg, label %sqlite3StrICmp.exit65

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.od = getelementptr inbounds nuw i8, ptr %.0.i201, i64 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.013.i200, i64 1
  br label %sqlite3StrICmp.exit199

sqlite3StrICmp.exit204.thread:                    ; preds = %bb.ce
  %i.of = tail call fastcc ptr @sqlite3HashFind(ptr noundef nonnull %i.gz, ptr noundef nonnull @.str.387)
  br label %sqlite3StrICmp.exit65

sqlite3StrICmp.exit65:                            ; preds = %bb.h, %bb.aq, %bb.af, %sqlite3HashFind.exit185, %bb.cf, %sqlite3HashFind.exit105, %sqlite3StrICmp.exit110.thread, %sqlite3_strnicmp.exit, %sqlite3HashFind.exit, %sqlite3StrICmp.exit199.thread, %sqlite3StrICmp.exit204.thread, %sqlite3_strnicmp.exit194, %sqlite3HashFind.exit160, %sqlite3HashFind.exit135
  %.048 = phi ptr [ %i.jt, %sqlite3HashFind.exit160 ], [ %i.ii, %sqlite3HashFind.exit135 ], [ null, %bb.aq ], [ %i.gh, %sqlite3HashFind.exit105 ], [ null, %bb.af ], [ %i.gu, %sqlite3StrICmp.exit110.thread ], [ null, %bb.cf ], [ null, %sqlite3_strnicmp.exit ], [ %i.bu, %sqlite3HashFind.exit ], [ %i.ns, %sqlite3StrICmp.exit199.thread ], [ %i.of, %sqlite3StrICmp.exit204.thread ], [ %i.lj, %sqlite3HashFind.exit185 ], [ null, %sqlite3_strnicmp.exit194 ], [ null, %bb.h ]
  ret ptr %.048
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3IsRowid(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.013.i = phi ptr [ @.str.781, %bb.a ], [ %i.l, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.e ]  ; 2 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !229  ; 3 uses
  %i.b = load i8, ptr %.013.i, align 1, !tbaa !229 ; 2 uses
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i8 %i.a, 0
  br i1 %i.d, label %sqlite3StrICmp.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = zext i8 %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !229
  %i.h = zext i8 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !229
  %.not.i = icmp eq i8 %i.g, %i.j
  br i1 %.not.i, label %bb.e, label %sqlite3StrICmp.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %bb.b

sqlite3StrICmp.exit:                              ; preds = %bb.d, %bb.h
  %.013.i3 = phi ptr [ %i.x, %bb.h ], [ @.str.746, %bb.d ] ; 2 uses
  %.0.i4 = phi ptr [ %i.w, %bb.h ], [ %0, %bb.d ] ; 2 uses
  %i.m = load i8, ptr %.0.i4, align 1, !tbaa !229 ; 3 uses
  %i.n = load i8, ptr %.013.i3, align 1, !tbaa !229 ; 2 uses
  %i.o = icmp eq i8 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit
  %i.p = icmp eq i8 %i.m, 0
  br i1 %i.p, label %sqlite3StrICmp.exit.thread, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit
  %i.q = zext i8 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !229
  %i.t = zext i8 %i.n to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !229
  %.not.i5 = icmp eq i8 %i.s, %i.v
  br i1 %.not.i5, label %bb.h, label %sqlite3StrICmp.exit7

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i4, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i3, i64 1
  br label %sqlite3StrICmp.exit

sqlite3StrICmp.exit7:                             ; preds = %bb.g, %bb.k
  %.013.i8 = phi ptr [ %i.aj, %bb.k ], [ @.str.782, %bb.g ] ; 2 uses
  %.0.i9 = phi ptr [ %i.ai, %bb.k ], [ %0, %bb.g ] ; 2 uses
  %i.y = load i8, ptr %.0.i9, align 1, !tbaa !229 ; 3 uses
  %i.z = load i8, ptr %.013.i8, align 1, !tbaa !229 ; 2 uses
  %i.aa = icmp eq i8 %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sqlite3StrICmp.exit7
  %i.ab = icmp eq i8 %i.y, 0
  br i1 %i.ab, label %sqlite3StrICmp.exit.thread, label %bb.k

bb.j:                                             ; preds = %sqlite3StrICmp.exit7
  %i.ac = zext i8 %i.y to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !229
  %i.af = zext i8 %i.z to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !229
  %.not.i10 = icmp eq i8 %i.ae, %i.ah
  br i1 %.not.i10, label %bb.k, label %sqlite3StrICmp.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i9, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i8, i64 1
  br label %sqlite3StrICmp.exit7

sqlite3StrICmp.exit.thread:                       ; preds = %bb.c, %bb.f, %bb.i, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3ColumnType(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2, !tbaa !885
  %i.c = and i16 %i.b, 4
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !931    ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #60
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8
  %i.j = lshr i8 %i.i, 4                          ; 2 uses
  %.not8 = icmp eq i8 %i.j, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i8 %i.j to i64
  %2 = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.k
  %3 = getelementptr i8, ptr %2, i64 -8
  %i.l = load ptr, ptr %3, align 8, !tbaa !253
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %1, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3ColumnColl(ptr nofree noundef readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2, !tbaa !885  ; 2 uses
  %i.c = and i16 %i.b, 512
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !931    ; 4 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.e) ; 3 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 %strlen
  %i.f = and i16 %i.b, 4
  %.not10 = icmp eq i16 %i.f, 0
  br i1 %.not10, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 %strlen
  %scevgep12 = getelementptr i8, ptr %i.g, i64 1
  %strlen13 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep12)
  %i.h = getelementptr i8, ptr %i.e, i64 %strlen13
  %i.i = getelementptr i8, ptr %i.h, i64 %strlen
  %scevgep14 = getelementptr i8, ptr %i.i, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.b
  %.2 = phi ptr [ %scevgep, %bb.b ], [ %scevgep14, %.preheader.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.09 = phi ptr [ %i.j, %.loopexit ], [ null, %bb.a ]
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483, 2147484) i32 @sqlite3_sleep(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !406
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %sqlite3_vfs_find.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !195
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i.thread, label %sqlite3MutexAlloc.exit.i

sqlite3MutexAlloc.exit.i:                         ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !196
  %i.d = tail call ptr %i.c(i32 noundef 2) #59, !inline_history !407 ; 3 uses
  %.not.i12.i = icmp eq ptr %i.d, null
  br i1 %.not.i12.i, label %sqlite3_mutex_enter.exit.i.thread, label %bb.c

sqlite3_mutex_enter.exit.i.thread:                ; preds = %sqlite3MutexAlloc.exit.i, %bb.b
  %.01018.i8 = load ptr, ptr @vfsList, align 8, !tbaa !198
  br label %sqlite3_vfs_find.exit

bb.c:                                             ; preds = %sqlite3MutexAlloc.exit.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.e(ptr noundef nonnull %i.d) #59, !inline_history !408
  %.01018.i = load ptr, ptr @vfsList, align 8, !tbaa !198
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.f(ptr noundef nonnull %i.d) #59, !inline_history !409
  br label %sqlite3_vfs_find.exit

sqlite3_vfs_find.exit:                            ; preds = %sqlite3_mutex_enter.exit.i.thread, %bb.c
  %.0.i = phi ptr [ %.01018.i, %bb.c ], [ %.01018.i8, %sqlite3_mutex_enter.exit.i.thread ] ; 3 uses
  %i.g = icmp eq ptr %.0.i, null
  br i1 %i.g, label %sqlite3_vfs_find.exit.thread, label %bb.d

bb.d:                                             ; preds = %sqlite3_vfs_find.exit
  %i.h = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %i.i = mul nuw nsw i32 %i.h, 1000
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1260
  %i.l = tail call i32 %i.k(ptr noundef nonnull %.0.i, i32 noundef %i.i) #59, !inline_history !1261
  %i.m = sdiv i32 %i.l, 1000
  br label %sqlite3_vfs_find.exit.thread

sqlite3_vfs_find.exit.thread:                     ; preds = %bb.a, %sqlite3_vfs_find.exit, %bb.d
  %.0 = phi i32 [ %i.m, %bb.d ], [ 0, %sqlite3_vfs_find.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @sqlite3_extended_result_codes(ptr nofree noundef captures(none) initializes((88, 92)) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit.thread, label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit.thread:                  ; preds = %bb.a
  %.not4 = icmp eq i32 %1, 0
  %i.c = select i1 %.not4, i32 255, i32 -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.c, ptr %i.d, align 8, !tbaa !606
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.e(ptr noundef nonnull %i.b) #59, !inline_history !18
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq i32 %1, 0
  %i.f = select i1 %.not, i32 255, i32 -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.f, ptr %i.g, align 8, !tbaa !606
  %.not.i3 = icmp eq ptr %.pr, null
  br i1 %.not.i3, label %sqlite3_mutex_leave.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.h(ptr noundef nonnull %.pr) #59, !inline_history !21
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_mutex_enter.exit.thread, %sqlite3_mutex_enter.exit, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_file_control(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !18
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %.not.i45 = icmp eq ptr %1, null
  br i1 %.not.i45, label %.sqlite3FindDbName.exit.thread7_crit_edge.i, label %bb.c

.sqlite3FindDbName.exit.thread7_crit_edge.i:      ; preds = %sqlite3_mutex_enter.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !63
  br label %sqlite3DbNameToBtree.exit

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader.i.i, label %sqlite3BtreeLeave.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %sqlite3_stricmp.exit18.i.i, %.lr.ph.preheader.i.i
  %.028.i.i = phi ptr [ %i.an, %sqlite3_stricmp.exit18.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01127.i.i = phi i32 [ %i.am, %sqlite3_stricmp.exit18.i.i ], [ %i.g, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.l = load ptr, ptr %.028.i.i, align 8, !tbaa !496 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %sqlite3_stricmp.exit.thread20.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %bb.f
  %.013.i.i.i.i = phi ptr [ %i.y, %bb.f ], [ %1, %.lr.ph.i.i ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.n = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !229 ; 3 uses
  %i.o = load i8, ptr %.013.i.i.i.i, align 1, !tbaa !229 ; 2 uses
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.q = icmp eq i8 %i.n, 0
  br i1 %i.q, label %sqlite3FindDbName.exit.i, label %bb.f

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.r = zext i8 %i.n to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !229
  %i.u = zext i8 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !229
  %.not.i.i.i.i = icmp eq i8 %i.t, %i.w
  br i1 %.not.i.i.i.i, label %bb.f, label %sqlite3_stricmp.exit.thread20.i.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 1
  br label %.preheader.i.i.i

sqlite3_stricmp.exit.thread20.i.i:                ; preds = %bb.e, %.lr.ph.i.i
  %i.z = icmp eq i32 %.01127.i.i, 0
  br i1 %i.z, label %.preheader.i13.i.i, label %sqlite3_stricmp.exit18.i.i
end_hunk_1
begin_hunk_2_@sqlite3MemRealValueRC:bb.a

.sink.split.sink.split.i:                         ; preds = %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge, %bb.h
  %.sink24.i = phi ptr [ %.sink24.i.pre, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.c, %bb.h ]
  %.sink.i = phi i32 [ %i.t, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.aa, %bb.h ]
  %i.ab = sext i32 %.sink.i to i64
  %i.ac = getelementptr inbounds i8, ptr %.sink24.i, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !229
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeMemZeroTerminateIfAble.exit:           ; preds = %bb.g, %.sink.split.sink.split.i
  %i.ad = load i16, ptr %i.h, align 4, !tbaa !164
  %i.ae = or i16 %i.ad, 512
  store i16 %i.ae, ptr %i.h, align 4, !tbaa !164
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !291
  br label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit, %bb.c
  %i.af = phi ptr [ %.pre, %sqlite3VdbeMemZeroTerminateIfAble.exit ], [ %i.c, %bb.c ]
  %i.ag = call fastcc i32 @sqlite3AtoF(ptr noundef %i.af, ptr noundef nonnull %i.a)
  br label %sqlite3DbStrNDup.exit.thread

sqlite3VdbeMemZeroTerminateIfAble.exit.thread:    ; preds = %bb.g, %bb.h, %bb.d, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !560 ; 5 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %sqlite3DbStrNDup.exit.thread, label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  %i.ak = load i8, ptr %i.e, align 2, !tbaa !351
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !291 ; 2 uses
  %i.ao = sext i32 %i.ai to i64                   ; 3 uses
  %.not.i65 = icmp eq ptr %i.an, null
  br i1 %.not.i65, label %sqlite3DbStrNDup.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !159
  %i.aq = add nsw i64 %i.ao, 1
  %i.ar = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ap, i64 noundef %i.aq), !inline_history !2647 ; 5 uses
  %.not9.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i, label %sqlite3DbStrNDup.exit.thread, label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.an, i64 range(i64 -2147483648, 4294967296) %i.ao, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  store i8 0, ptr %i.as, align 1, !tbaa !229
  %i.at = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.a)
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !159
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.au, ptr noundef nonnull %i.ar)
  br label %sqlite3DbStrNDup.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.av = and i32 %i.ai, -2                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !159 ; 2 uses
  %i.ay = ashr i32 %i.ai, 1
  %i.az = add nsw i32 %i.ay, 2
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %.not.i67 = icmp eq ptr %i.ax, null
  br i1 %.not.i67, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ax, i64 noundef %i.ba), !inline_history !610
  br label %sqlite3DbMallocRaw.exit

bb.o:                                             ; preds = %bb.m
  %i.bc = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ba), !inline_history !610
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.n, %bb.o
  %.0.i68 = phi ptr [ %i.bb, %bb.n ], [ %i.bc, %bb.o ] ; 6 uses
  %.not60 = icmp eq ptr %.0.i68, null
  br i1 %.not60, label %sqlite3DbStrNDup.exit.thread, label %bb.p

bb.p:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !291 ; 2 uses
  %i.be = load i8, ptr %i.e, align 2, !tbaa !351
  %i.bf = icmp eq i8 %i.be, 2
  %i.bg = add nsw i32 %i.av, -1                   ; 2 uses
  %i.bh = icmp sgt i32 %i.ai, 1                   ; 2 uses
  br i1 %i.bf, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %bb.p
  br i1 %i.bh, label %.lr.ph, label %sqlite3DbFree.exit70

.preheader:                                       ; preds = %bb.p
  br i1 %i.bh, label %.lr.ph86, label %sqlite3DbFree.exit70

.lr.ph86:                                         ; preds = %.preheader, %bb.q
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv100 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !229
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i68, i64 %indvars.iv102
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !229
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !229
  %.not62 = icmp eq i8 %i.bm, 0
  br i1 %.not62, label %bb.q, label %sqlite3DbFree.exit70.loopexit.split.loop.exit122

bb.q:                                             ; preds = %.lr.ph86
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 2 ; 2 uses
  %indvars104 = trunc i64 %indvars.iv.next101 to i32 ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.bn = icmp sgt i32 %i.bg, %indvars104
  br i1 %i.bn, label %.lr.ph86, label %sqlite3DbFree.exit70, !llvm.loop !2648

.lr.ph:                                           ; preds = %.preheader76, %bb.r
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.r ], [ 0, %.preheader76 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.preheader76 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !229
  %.not61 = icmp eq i8 %i.bp, 0
  br i1 %.not61, label %bb.r, label %sqlite3DbFree.exit70.loopexit116.split.loop.exit119

bb.r:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !229
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i68, i64 %indvars.iv95
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !229
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bt = icmp sgt i32 %i.bg, %indvars
  br i1 %i.bt, label %.lr.ph, label %sqlite3DbFree.exit70, !llvm.loop !2649

sqlite3DbFree.exit70.loopexit.split.loop.exit122: ; preds = %.lr.ph86
  %i.bu = trunc nuw nsw i64 %indvars.iv100 to i32
  br label %sqlite3DbFree.exit70

sqlite3DbFree.exit70.loopexit116.split.loop.exit119: ; preds = %.lr.ph
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  br label %sqlite3DbFree.exit70

sqlite3DbFree.exit70:                             ; preds = %bb.r, %bb.q, %sqlite3DbFree.exit70.loopexit116.split.loop.exit119, %sqlite3DbFree.exit70.loopexit.split.loop.exit122, %.preheader76, %.preheader
  %.254 = phi i64 [ 0, %.preheader76 ], [ 0, %.preheader ], [ %indvars.iv.next103, %bb.q ], [ %indvars.iv102, %sqlite3DbFree.exit70.loopexit.split.loop.exit122 ], [ %indvars.iv95, %sqlite3DbFree.exit70.loopexit116.split.loop.exit119 ], [ %indvars.iv.next96, %bb.r ]
  %.251 = phi i32 [ 0, %.preheader76 ], [ 0, %.preheader ], [ %indvars104, %bb.q ], [ %i.bu, %sqlite3DbFree.exit70.loopexit.split.loop.exit122 ], [ %i.bv, %sqlite3DbFree.exit70.loopexit116.split.loop.exit119 ], [ %indvars, %bb.r ]
  %i.bw = and i64 %.254, 4294967295
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i68, i64 %i.bw
  store i8 0, ptr %i.bx, align 1, !tbaa !229
  %i.by = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %.0.i68, ptr noundef nonnull %i.a)
  %i.bz = icmp slt i32 %.251, %i.av
  %spec.store.select = select i1 %i.bz, i32 -100, i32 %i.by
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !159
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ca, ptr noundef nonnull %.0.i68)
  br label %sqlite3DbStrNDup.exit.thread

sqlite3DbStrNDup.exit.thread:                     ; preds = %bb.k, %bb.l, %sqlite3DbMallocRaw.exit, %sqlite3DbFree.exit70, %sqlite3DbFree.exit, %bb.i, %sqlite3VdbeMemZeroTerminateIfAble.exit.thread, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.ag, %bb.i ], [ 0, %sqlite3VdbeMemZeroTerminateIfAble.exit.thread ], [ 0, %sqlite3DbMallocRaw.exit ], [ %i.at, %sqlite3DbFree.exit ], [ %spec.store.select, %sqlite3DbFree.exit70 ], [ 0, %bb.l ], [ 0, %bb.k ]
  %.not64 = icmp eq ptr %1, null
  br i1 %.not64, label %bb.t, label %bb.s

bb.s:                                             ; preds = %sqlite3DbStrNDup.exit.thread
  store i32 %.2, ptr %1, align 4, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %sqlite3DbStrNDup.exit.thread
  %i.cb = load double, ptr %i.a, align 8, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret double %i.cb
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 4) i32 @sqlite3AtoF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #34 {
bb.a:
  store double 0.000000e+00, ptr %1, align 8, !tbaa !324
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.079 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.b ]  ; 3 uses
  %i.a = load i8, ptr %.079, align 1, !tbaa !229  ; 3 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !229
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.079, i64 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !2650

bb.c:                                             ; preds = %bb.b
  %.not96.not = icmp eq i8 %i.a, 45               ; 3 uses
  %i.g = icmp eq i8 %i.a, 43
  %i.h = or i1 %.not96.not, %i.g
  %.180.idx = zext i1 %i.h to i64
  %.180 = getelementptr inbounds nuw i8, ptr %.079, i64 %.180.idx ; 3 uses
  %i.i = load i8, ptr %.180, align 1, !tbaa !229  ; 3 uses
  %i.j = add i8 %i.i, -58
  %.not90107 = icmp ult i8 %i.j, -10
  br i1 %.not90107, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.c, %.loopexit100
  %i.k = phi i8 [ %i.q, %.loopexit100 ], [ %i.i, %bb.c ]
  %.066111 = phi i32 [ %i.o, %.loopexit100 ], [ 0, %bb.c ]
  %.073109 = phi i64 [ %i.m, %.loopexit100 ], [ 0, %bb.c ]
  %.281108 = phi ptr [ %i.n, %.loopexit100 ], [ %.180, %bb.c ]
  %i.l = mul nuw nsw i64 %.073109, 10
  %2 = zext nneg i8 %i.k to i64
  %3 = add nsw i64 %i.l, -48
  %i.m = add nsw i64 %3, %2                       ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.281108, i64 1 ; 5 uses
  %i.o = add nuw nsw i32 %.066111, 1              ; 4 uses
  %i.p = icmp samesign ugt i64 %i.m, 922337203685477578
  %i.q = load i8, ptr %i.n, align 1, !tbaa !229   ; 4 uses
  %i.r = add i8 %i.q, -58
  %.not98103 = icmp ult i8 %i.r, -10              ; 2 uses
  br i1 %i.p, label %.preheader99, label %.loopexit100

.preheader99:                                     ; preds = %.lr.ph112
  br i1 %.not98103, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader99, %.lr.ph
  %.170105 = phi i32 [ %i.t, %.lr.ph ], [ 0, %.preheader99 ]
  %.382104 = phi ptr [ %i.s, %.lr.ph ], [ %i.n, %.preheader99 ]
  %i.s = getelementptr inbounds nuw i8, ptr %.382104, i64 1 ; 3 uses
  %i.t = add nuw nsw i32 %.170105, 1              ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !229   ; 2 uses
  %i.v = add i8 %i.u, -58
  %.not98 = icmp ult i8 %i.v, -10
  br i1 %.not98, label %._crit_edge, label %.lr.ph, !llvm.loop !2651

.loopexit100:                                     ; preds = %.lr.ph112
  br i1 %.not98103, label %._crit_edge, label %.lr.ph112, !llvm.loop !2652

._crit_edge:                                      ; preds = %.loopexit100, %.lr.ph, %.preheader99, %bb.c
  %.281.lcssa = phi ptr [ %.180, %bb.c ], [ %i.s, %.lr.ph ], [ %i.n, %.preheader99 ], [ %i.n, %.loopexit100 ] ; 2 uses
  %.073.lcssa = phi i64 [ 0, %bb.c ], [ %i.m, %.lr.ph ], [ %i.m, %.preheader99 ], [ %i.m, %.loopexit100 ] ; 3 uses
  %.069.lcssa = phi i32 [ 0, %bb.c ], [ %i.t, %.lr.ph ], [ 0, %.preheader99 ], [ 0, %.loopexit100 ] ; 3 uses
  %.066.lcssa = phi i32 [ 0, %bb.c ], [ %i.o, %.lr.ph ], [ %i.o, %.preheader99 ], [ %i.o, %.loopexit100 ] ; 3 uses
  %.lcssa101 = phi i8 [ %i.i, %bb.c ], [ %i.u, %.lr.ph ], [ %i.q, %.preheader99 ], [ %i.q, %.loopexit100 ] ; 2 uses
  %i.w = icmp eq i8 %.lcssa101, 46
  br i1 %i.w, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %.584118 = getelementptr inbounds nuw i8, ptr %.281.lcssa, i64 1 ; 3 uses
  %i.x = load i8, ptr %.584118, align 1, !tbaa !229 ; 3 uses
  %i.y = add i8 %i.x, -58
  %.not91119 = icmp ult i8 %i.y, -10
  br i1 %.not91119, label %.loopexit, label %.lr.ph124

.lr.ph124:                                        ; preds = %.preheader, %bb.e
  %i.z = phi i8 [ %i.af, %bb.e ], [ %i.x, %.preheader ]
  %.584123 = phi ptr [ %.584, %bb.e ], [ %.584118, %.preheader ]
  %.167122 = phi i32 [ %.268, %bb.e ], [ %.066.lcssa, %.preheader ] ; 2 uses
  %.372121 = phi i32 [ %.4, %bb.e ], [ %.069.lcssa, %.preheader ] ; 2 uses
  %.174120 = phi i64 [ %.275, %bb.e ], [ %.073.lcssa, %.preheader ] ; 3 uses
  %i.aa = icmp ult i64 %.174120, 922337203685477579
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph124
  %i.ab = mul nuw nsw i64 %.174120, 10
  %4 = zext nneg i8 %i.z to i64
  %5 = add nsw i64 %i.ab, -48
  %i.ac = add nsw i64 %5, %4
  %i.ad = add nsw i32 %.372121, -1
  %i.ae = add nsw i32 %.167122, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph124
  %.275 = phi i64 [ %i.ac, %bb.d ], [ %.174120, %.lr.ph124 ] ; 2 uses
  %.4 = phi i32 [ %i.ad, %bb.d ], [ %.372121, %.lr.ph124 ] ; 2 uses
  %.268 = phi i32 [ %i.ae, %bb.d ], [ %.167122, %.lr.ph124 ] ; 2 uses
  %.584 = getelementptr inbounds nuw i8, ptr %.584123, i64 1 ; 3 uses
  %i.af = load i8, ptr %.584, align 1, !tbaa !229 ; 3 uses
  %i.ag = add i8 %i.af, -58
  %.not91 = icmp ult i8 %i.ag, -10
  br i1 %.not91, label %.loopexit, label %.lr.ph124, !llvm.loop !2653

.loopexit:                                        ; preds = %bb.e, %.preheader, %._crit_edge
  %i.ah = phi i8 [ %.lcssa101, %._crit_edge ], [ %i.x, %.preheader ], [ %i.af, %bb.e ]
  %.685 = phi ptr [ %.281.lcssa, %._crit_edge ], [ %.584118, %.preheader ], [ %.584, %bb.e ] ; 4 uses
  %.376 = phi i64 [ %.073.lcssa, %._crit_edge ], [ %.073.lcssa, %.preheader ], [ %.275, %bb.e ] ; 2 uses
  %.5 = phi i32 [ %.069.lcssa, %._crit_edge ], [ %.069.lcssa, %.preheader ], [ %.4, %bb.e ] ; 3 uses
  %.3 = phi i32 [ %.066.lcssa, %._crit_edge ], [ %.066.lcssa, %.preheader ], [ %.268, %bb.e ]
  %.065 = phi i32 [ 1, %._crit_edge ], [ 2, %.preheader ], [ 2, %bb.e ] ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 101, label %bb.f
    i8 69, label %bb.f
  ]

bb.f:                                             ; preds = %.loopexit, %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %.685, i64 1 ; 2 uses
  %i.aj = add nuw nsw i32 %.065, 1
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !229
  switch i8 %i.ak, label %bb.i [
    i8 45, label %bb.g
    i8 43, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.685, i64 2
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.685, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.786 = phi ptr [ %i.al, %bb.g ], [ %i.am, %bb.h ], [ %i.ai, %bb.f ] ; 3 uses
  %.064 = phi i32 [ -1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.f ]
  %i.an = load i8, ptr %.786, align 1, !tbaa !229 ; 2 uses
  %i.ao = add i8 %i.an, -58
  %.not92 = icmp ult i8 %i.ao, -10
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = zext nneg i8 %i.an to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %.8130 = getelementptr inbounds nuw i8, ptr %.786, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.8130, align 1, !tbaa !229 ; 2 uses
  %i.as = add i8 %i.ar, -58
  %.not93131 = icmp ult i8 %i.as, -10
  br i1 %.not93131, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.j, %.lr.ph135
  %i.at = phi i8 [ %i.ba, %.lr.ph135 ], [ %i.ar, %bb.j ]
  %.8133 = phi ptr [ %.8, %.lr.ph135 ], [ %.8130, %bb.j ]
  %.0132 = phi i32 [ %i.az, %.lr.ph135 ], [ %i.aq, %bb.j ] ; 2 uses
  %i.au = icmp slt i32 %.0132, 10000
  %i.av = mul nsw i32 %.0132, 10
  %i.aw = zext nneg i8 %i.at to i32
  %i.ax = add i32 %i.av, -48
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = select i1 %i.au, i32 %i.ay, i32 10000   ; 2 uses
  %.8 = getelementptr inbounds nuw i8, ptr %.8133, i64 1 ; 3 uses
  %i.ba = load i8, ptr %.8, align 1, !tbaa !229   ; 2 uses
  %i.bb = add i8 %i.ba, -58
  %.not93 = icmp ult i8 %i.bb, -10
  br i1 %.not93, label %._crit_edge136, label %.lr.ph135, !llvm.loop !2654

._crit_edge136:                                   ; preds = %.lr.ph135, %bb.j
  %.0.lcssa = phi i32 [ %i.aq, %bb.j ], [ %i.az, %.lr.ph135 ]
  %.8.lcssa = phi ptr [ %.8130, %bb.j ], [ %.8, %.lr.ph135 ]
  %i.bc = mul nsw i32 %.0.lcssa, %.064
  %i.bd = add nsw i32 %i.bc, %.5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge136, %bb.i, %.loopexit
  %.10 = phi ptr [ %.685, %.loopexit ], [ %.8.lcssa, %._crit_edge136 ], [ %.786, %bb.i ]
  %.7 = phi i32 [ %.5, %.loopexit ], [ %i.bd, %._crit_edge136 ], [ %.5, %bb.i ]
  %.2 = phi i32 [ %.065, %.loopexit ], [ %i.aj, %._crit_edge136 ], [ -1, %bb.i ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.11 = phi ptr [ %.10, %bb.k ], [ %i.bj, %bb.l ] ; 3 uses
  %i.be = load i8, ptr %.11, align 1, !tbaa !229
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !229
  %i.bi = and i8 %i.bh, 1
  %.not94 = icmp eq i8 %i.bi, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br i1 %.not94, label %bb.m, label %bb.l, !llvm.loop !2655

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp eq i64 %.376, 0
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = select i1 %.not96.not, double -0.000000e+00, double 0.000000e+00
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.bm = tail call fastcc double @sqlite3Fp10Convert2(i64 noundef %.376, i32 noundef %.7) ; 2 uses
  store double %i.bm, ptr %1, align 8, !tbaa !324
  br i1 %.not96.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = fneg double %i.bm
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.p
  %.sink = phi double [ %i.bn, %bb.p ], [ %i.bl, %bb.n ]
  store double %.sink, ptr %1, align 8, !tbaa !324
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  %i.bo = load i8, ptr %.11, align 1, !tbaa !229
  %i.bp = icmp eq i8 %i.bo, 0
  %i.bq = icmp sgt i32 %.3, 0                     ; 2 uses
  %or.cond = select i1 %i.bp, i1 %i.bq, i1 false
  %i.br = icmp sgt i32 %.2, 1
  %or.cond3 = select i1 %i.br, i1 %i.bq, i1 false
  %. = sext i1 %or.cond3 to i32
  %.078 = select i1 %or.cond, i32 %.2, i32 %.
  ret i32 %.078
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @memIntValue(ptr nofree noundef readonly captures(none) %0) unnamed_addr #33 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !291
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !560
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.g = load i8, ptr %i.f, align 2, !tbaa !351
  %i.h = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.e, i8 noundef zeroext %i.g) ; 0 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i64 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 4) i32 @sqlite3Atoi64(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #20 {
bb.a:
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = icmp eq i8 %3, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, -2                           ; 2 uses
  %i.d = sub nsw i32 3, %i.a                      ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %narrow = sub nsw i32 3, %i.a
  %i.f = sext i32 %narrow to i64
  %i.g = sext i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !229
  %.not186.not.not = icmp ne i8 %i.i, 0           ; 2 uses
  br i1 %.not186.not.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 3 uses
  %i.j = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.j, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !2656

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.093.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv, %.lr.ph ]
  %.093.lcssa.ph = trunc i64 %.093.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.093.lcssa = phi i32 [ %i.d, %bb.b ], [ %.093.lcssa.ph, %.critedge.loopexit ]
  %.lcssa122 = phi i1 [ false, %bb.b ], [ %.not186.not.not, %.critedge.loopexit ]
  %i.k = xor i32 %.093.lcssa, 1
  %i.l = and i32 %i.a, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.098 = phi ptr [ %i.n, %.critedge ], [ %0, %bb.a ] ; 3 uses
  %.097 = phi i32 [ 2, %.critedge ], [ 1, %bb.a ] ; 7 uses
end_hunk_2
begin_hunk_3_@sqlite3VdbeExec:bb.a

bb.k:                                             ; preds = %bb.h
  %i.ib = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !586
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 20
  store i16 4, ptr %i.if, align 4, !tbaa !164
  %i.ig = ptrtoint ptr %.02963 to i64
  %i.ih = ptrtoint ptr %.02962 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = sdiv exact i64 %i.ii, 24
  %sext3880 = shl i64 %i.ij, 32
  %i.ik = ashr exact i64 %sext3880, 32
  store i64 %i.ik, ptr %i.ie, align 8, !tbaa !229
  br label %.thread4950

bb.l:                                             ; preds = %bb.h
  %i.il = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !586
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 20
  %i.iq = load i16, ptr %i.ip, align 4, !tbaa !164
  %i.ir = and i16 %i.iq, 4
  %.not3879 = icmp eq i16 %i.ir, 0
  br i1 %.not3879, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.is = load i64, ptr %i.io, align 8, !tbaa !229
  %i.it = getelementptr inbounds [24 x i8], ptr %.02962, i64 %i.is
  br label %.critedge

bb.n:                                             ; preds = %bb.h
  %i.iu = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !586
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !588
  %i.ja = add nsw i32 %i.iz, -1
  %i.jb = sext i32 %i.ja to i64
  store i64 %i.jb, ptr %i.ix, align 8, !tbaa !229
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 20
  store i16 4, ptr %i.jc, align 4, !tbaa !164
  %i.jd = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !587
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %.critedge, label %.thread4737

.thread4737:                                      ; preds = %bb.afn, %bb.ana, %bb.lg, %..si.unfold.true.jt13, %sqlite3VdbeRealValue.exit.i4206, %bb.lc, %sqlite3VdbeSorterCompare.exit, %bb.bbk, %sqlite3BtreeIncrVacuum.exit, %bb.ash, %sqlite3VdbeSorterRewind.exit.thread5086, %bb.aha, %.thread4898.thread, %bb.me, %bb.md, %bb.ks, %bb.kq, %bb.hx, %.thread4727, %bb.hr, %bb.hp, %bb.hs, %._crit_edge6318, %.thread5357, %.thread5057, %.thread4955, %.thread4939, %.thread4925, %bb.aaz, %bb.xy, %bb.lq, %sqlite3VdbeBooleanValue.exit4209, %sqlite3VdbeBooleanValue.exit4201, %bb.aul, %bb.aui, %bb.auj, %bb.atg, %bb.ate, %bb.abc, %bb.lz, %bb.li, %bb.io, %bb.hh, %bb.n, %bb.auc
  %.12997 = phi i32 [ %.02996, %bb.n ], [ %.02996, %bb.hh ], [ %.02996, %.thread4925 ], [ 0, %bb.io ], [ %.02996, %bb.hs ], [ %.02996, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02996, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02996, %bb.li ], [ %.02996, %bb.lq ], [ %.02996, %bb.lz ], [ %.02996, %bb.ks ], [ %.02996, %bb.xy ], [ %.02996, %.thread4898.thread ], [ %.02996, %.thread4939 ], [ %.02996, %.thread4955 ], [ %.02996, %bb.aaz ], [ %.02996, %bb.abc ], [ %.02996, %bb.bbk ], [ %.02996, %.thread5057 ], [ %.02996, %bb.me ], [ %.02996, %bb.aha ], [ %.02996, %..si.unfold.true.jt13 ], [ %.02996, %bb.ana ], [ %.02996, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.02996, %bb.ate ], [ %.02996, %bb.atg ], [ %.02996, %bb.auc ], [ %.02996, %bb.auj ], [ %.02996, %bb.aui ], [ %.02996, %bb.aul ], [ %.02996, %bb.ash ], [ %.02996, %sqlite3BtreeIncrVacuum.exit ], [ %.02996, %.thread5357 ], [ %.02996, %._crit_edge6318 ], [ %.02996, %bb.hx ], [ %.031414726, %.thread4727 ], [ %.02996, %bb.hr ], [ %.02996, %bb.hp ], [ %.02996, %bb.kq ], [ %.02996, %bb.md ], [ %.02996, %sqlite3VdbeSorterCompare.exit ], [ %.02996, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02996, %bb.lg ], [ %.02996, %bb.lc ], [ %.02996, %bb.afn ]
  %.32976 = phi i32 [ %.02973, %bb.n ], [ %.02973, %bb.hh ], [ 0, %.thread4925 ], [ %.02973, %bb.io ], [ %.02973, %bb.hs ], [ %.02973, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02973, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02973, %bb.li ], [ %.02973, %bb.lq ], [ %.02973, %bb.lz ], [ %.02973, %bb.ks ], [ %.02973, %bb.xy ], [ %.02973, %.thread4898.thread ], [ 0, %.thread4939 ], [ 0, %.thread4955 ], [ %.02973, %bb.aaz ], [ %i.dhw, %bb.abc ], [ 0, %bb.bbk ], [ 0, %.thread5057 ], [ %.02973, %bb.me ], [ 0, %bb.aha ], [ 0, %..si.unfold.true.jt13 ], [ 0, %bb.ana ], [ 0, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.02973, %bb.ate ], [ %.02973, %bb.atg ], [ %.02973, %bb.auc ], [ %.02973, %bb.auj ], [ %.02973, %bb.aui ], [ %.02973, %bb.aul ], [ %.02973, %bb.ash ], [ 0, %sqlite3BtreeIncrVacuum.exit ], [ %.02973, %.thread5357 ], [ %.02973, %._crit_edge6318 ], [ %.02973, %bb.hx ], [ %.02973, %.thread4727 ], [ %.02973, %bb.hr ], [ %.02973, %bb.hp ], [ %.02973, %bb.kq ], [ %.02973, %bb.md ], [ 0, %sqlite3VdbeSorterCompare.exit ], [ %.02973, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02973, %bb.lg ], [ %.02973, %bb.lc ], [ 0, %bb.afn ]
  %.22965 = phi ptr [ %.02963, %bb.n ], [ %.02963, %bb.hh ], [ %.02963, %.thread4925 ], [ %.02963, %bb.io ], [ %.02963, %bb.hs ], [ %.02963, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02963, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02963, %bb.li ], [ %.02963, %bb.lq ], [ %.02963, %bb.lz ], [ %.02963, %bb.ks ], [ %.02963, %bb.xy ], [ %.02963, %.thread4898.thread ], [ %.72970.ph, %.thread4939 ], [ %.02963, %.thread4955 ], [ %.02963, %bb.aaz ], [ %.02963, %bb.abc ], [ %.02963, %bb.bbk ], [ %.02963, %.thread5057 ], [ %.02963, %bb.me ], [ %.02963, %bb.aha ], [ %.02963, %..si.unfold.true.jt13 ], [ %.02963, %bb.ana ], [ %.02963, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.02963, %bb.ate ], [ %.02963, %bb.atg ], [ %.02963, %bb.auc ], [ %.02963, %bb.auj ], [ %.02963, %bb.aui ], [ %.02963, %bb.aul ], [ %.02963, %bb.ash ], [ %.02963, %sqlite3BtreeIncrVacuum.exit ], [ %.02963, %.thread5357 ], [ %.02963, %._crit_edge6318 ], [ %.02963, %bb.hx ], [ %.02963, %.thread4727 ], [ %.02963, %bb.hr ], [ %.02963, %bb.hp ], [ %.02963, %bb.kq ], [ %.02963, %bb.md ], [ %.02963, %sqlite3VdbeSorterCompare.exit ], [ %.02963, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02963, %bb.lg ], [ %.02963, %bb.lc ], [ %.02963, %bb.afn ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.22965, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !587
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr [24 x i8], ptr %.02962, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.jj, i64 -24
  br label %.critedge

bb.o:                                             ; preds = %bb.h
  %i.jl = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !586
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.jn ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !229
  %i.jq = getelementptr inbounds [24 x i8], ptr %.02962, i64 %i.jp
  %i.jr = load ptr, ptr %i.al, align 8, !tbaa !186
  %i.js = ptrtoint ptr %.02963 to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = sdiv exact i64 %i.ju, 24
  %i.jw = shl i64 %i.jv, 32
  %sext3878 = add i64 %i.jw, -4294967296
  %i.jx = ashr exact i64 %sext3878, 32
  store i64 %i.jx, ptr %i.jo, align 8, !tbaa !229
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !587
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr [24 x i8], ptr %.02962, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.kb, i64 -24
  br label %.critedge

bb.p:                                             ; preds = %bb.h
  %i.kd = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !586
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.kf ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  store i16 4, ptr %i.kh, align 4, !tbaa !164
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !229
  %i.kj = ptrtoint ptr %.02963 to i64
  %i.kk = ptrtoint ptr %.02962 to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = sdiv exact i64 %i.kl, 24
  %sext = shl i64 %i.km, 32
  %i.kn = ashr exact i64 %sext, 32
  store i64 %i.kn, ptr %i.kg, align 8, !tbaa !229
  %sext3877 = shl i64 %i.ki, 32
  %i.ko = ashr exact i64 %sext3877, 32
  %i.kp = getelementptr inbounds [24 x i8], ptr %.02962, i64 %i.ko
  br label %.critedge

bb.q:                                             ; preds = %bb.h
  %i.kq = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !588
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
  %i.kv = load i16, ptr %i.ku, align 4, !tbaa !164
  %i.kw = and i16 %i.kv, 1
  %i.kx = icmp eq i16 %i.kw, 0
  br i1 %i.kx, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %i.ky = load ptr, ptr %i.do, align 8, !tbaa !2397 ; 3 uses
  %.not3872 = icmp eq ptr %i.ky, null
  %.phi.trans.insert7260 = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %.pre7261 = load i32, ptr %.phi.trans.insert7260, align 4, !tbaa !586 ; 4 uses
  br i1 %.not3872, label %split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kz = icmp eq i32 %.pre7261, 0
  br i1 %i.kz, label %bb.t, label %split.thread

split.thread:                                     ; preds = %bb.s
  store i32 %.pre7261, ptr %i.bd, align 4, !tbaa !532
  %i.la = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !587
  %i.lc = trunc i32 %i.lb to i8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.lc, ptr %i.ld, align 4, !tbaa !616
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !2398
  store ptr %i.lf, ptr %i.do, align 8, !tbaa !2397
  %i.lg = load i32, ptr %i.ds, align 8, !tbaa !913
  %i.lh = add nsw i32 %i.lg, -1
  store i32 %i.lh, ptr %i.ds, align 8, !tbaa !913
  %i.li = load i64, ptr %i.bw, align 8, !tbaa !617 ; 2 uses
  store i64 %i.li, ptr %i.fr, align 8, !tbaa !1237
  %i.lj = load i64, ptr %i.fs, align 8, !tbaa !1238
  %i.lk = add nsw i64 %i.lj, %i.li
  store i64 %i.lk, ptr %i.fs, align 8, !tbaa !1238
  %i.ll = call fastcc i32 @sqlite3VdbeFrameRestore(ptr noundef %i.ky) ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !587
  %i.lo = icmp eq i32 %i.ln, 4
  %.pre7258 = load ptr, ptr %i.al, align 8, !tbaa !186 ; 3 uses
  br i1 %i.lo, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.lp = sext i32 %i.ll to i64
  %i.lq = getelementptr inbounds [24 x i8], ptr %.pre7258, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !587
  %i.lt = add nsw i32 %i.ls, -1
  br label %bb.ag

split:                                            ; preds = %bb.r
  store i32 %.pre7261, ptr %i.bd, align 4, !tbaa !532
  %i.lu = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !587
  %i.lw = trunc i32 %i.lv to i8
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.lw, ptr %i.lx, align 4, !tbaa !616
  %.not3873 = icmp eq i32 %.pre7261, 0
  br i1 %.not3873, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %split.thread, %split
  %i.ly = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.lz = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !588 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, 0
  br i1 %i.mb, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.mc = getelementptr inbounds nuw i8, ptr %.02963, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !568
  %i.me = icmp eq i8 %i.md, 0
  br i1 %i.me, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.mf = zext nneg i32 %i.ma to i64
  %i.mg = getelementptr inbounds nuw [56 x i8], ptr %.03021, i64 %i.mf
  %i.mh = call fastcc ptr @sqlite3ValueText(ptr noundef nonnull %i.mg, i8 noundef zeroext 1)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %i.mh)
  br label %bb.ac

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.mi = getelementptr inbounds nuw i8, ptr %.02963, i64 2
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !589 ; 2 uses
  %.not3874 = icmp eq i16 %i.mj, 0
  br i1 %.not3874, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mk = zext i16 %i.mj to i64
  %20 = getelementptr [8 x i8], ptr @sqlite3VdbeExec.azType, i64 %i.mk
  %21 = getelementptr i8, ptr %20, i64 -8
  %i.ml = load ptr, ptr %21, align 8, !tbaa !253
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.352, ptr noundef %i.ml)
  %i.mm = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !229 ; 2 uses
  %.not3875 = icmp eq ptr %i.mn, null
  br i1 %.not3875, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mo = load ptr, ptr %i.cl, align 8, !tbaa !609
  %i.mp = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.an, ptr noundef nonnull @.str.353, ptr noundef %i.mo, ptr noundef nonnull %i.mn)
  store ptr %i.mp, ptr %i.cl, align 8, !tbaa !609
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.mq = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !229
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %i.mr)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.ms = load i32, ptr %i.ly, align 4, !tbaa !586
  call fastcc void @sqlite3VdbeLogAbort(ptr noundef nonnull %0, i32 noundef %i.ms, ptr noundef nonnull %.02963, ptr noundef %.02962)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %split
  %i.mt = call fastcc i32 @sqlite3VdbeHalt(ptr noundef nonnull %0)
  %i.mu = icmp eq i32 %i.mt, 5
  br i1 %i.mu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 5, ptr %i.bd, align 4, !tbaa !532
  br label %sqlite3ResetOneSchema.exit

bb.af:                                            ; preds = %bb.ad
  %i.mv = load i32, ptr %i.bd, align 4, !tbaa !532
  %.not3876 = icmp eq i32 %i.mv, 0
  %i.mw = select i1 %.not3876, i32 101, i32 1
  br label %sqlite3ResetOneSchema.exit

bb.ag:                                            ; preds = %bb.t, %bb.u
  %.03040 = phi i32 [ %i.lt, %bb.u ], [ %i.ll, %bb.t ]
  %i.mx = load ptr, ptr %i.aq, align 8, !tbaa !546
  %i.my = sext i32 %.03040 to i64
  %i.mz = getelementptr inbounds [24 x i8], ptr %.pre7258, i64 %i.my
  br label %.critedge

bb.ah:                                            ; preds = %bb.h
  %.val4073 = load ptr, ptr %i.aq, align 8, !tbaa !546
  %i.na = getelementptr i8, ptr %.02963, i64 8
  %.02963.val4074 = load i32, ptr %i.na, align 8, !tbaa !587
  %i.nb = sext i32 %.02963.val4074 to i64
  %i.nc = getelementptr inbounds [56 x i8], ptr %.val4073, i64 %i.nb ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 20 ; 2 uses
  %i.ne = load i16, ptr %i.nd, align 4, !tbaa !164
  %i.nf = and i16 %i.ne, -28672
  %.not.i = icmp eq i16 %i.nf, 0
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ng = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.nc) ; 0 uses
  br label %out2Prerelease.exit

bb.aj:                                            ; preds = %bb.ah
  store i16 4, ptr %i.nd, align 4, !tbaa !164
  br label %out2Prerelease.exit

out2Prerelease.exit:                              ; preds = %bb.ai, %bb.aj
  %i.nh = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !586
  %i.nj = sext i32 %i.ni to i64
  store i64 %i.nj, ptr %i.nc, align 8, !tbaa !229
  br label %.critedge

bb.ak:                                            ; preds = %bb.h
  %.val4071 = load ptr, ptr %i.aq, align 8, !tbaa !546
  %i.nk = getelementptr i8, ptr %.02963, i64 8
  %.02963.val4072 = load i32, ptr %i.nk, align 8, !tbaa !587
  %i.nl = sext i32 %.02963.val4072 to i64
  %i.nm = getelementptr inbounds [56 x i8], ptr %.val4071, i64 %i.nl ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 20 ; 2 uses
  %i.no = load i16, ptr %i.nn, align 4, !tbaa !164
  %i.np = and i16 %i.no, -28672
  %.not.i4093 = icmp eq i16 %i.np, 0
  br i1 %.not.i4093, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nq = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.nm) ; 0 uses
  br label %out2Prerelease.exit4094

bb.am:                                            ; preds = %bb.ak
  store i16 4, ptr %i.nn, align 4, !tbaa !164
  br label %out2Prerelease.exit4094

out2Prerelease.exit4094:                          ; preds = %bb.al, %bb.am
  %i.nr = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !229
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !19
  store i64 %i.nt, ptr %i.nm, align 8, !tbaa !229
  br label %.critedge

bb.an:                                            ; preds = %bb.h
  %.val4069 = load ptr, ptr %i.aq, align 8, !tbaa !546
  %i.nu = getelementptr i8, ptr %.02963, i64 8
  %.02963.val4070 = load i32, ptr %i.nu, align 8, !tbaa !587
  %i.nv = sext i32 %.02963.val4070 to i64
  %i.nw = getelementptr inbounds [56 x i8], ptr %.val4069, i64 %i.nv ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 20 ; 2 uses
  %i.ny = load i16, ptr %i.nx, align 4, !tbaa !164
  %i.nz = and i16 %i.ny, -28672
  %.not.i4095 = icmp eq i16 %i.nz, 0
  br i1 %.not.i4095, label %out2Prerelease.exit4096, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oa = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.nw) ; 0 uses
  br label %out2Prerelease.exit4096

out2Prerelease.exit4096:                          ; preds = %bb.an, %bb.ao
  store i16 8, ptr %i.nx, align 4, !tbaa !164
  %i.ob = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !229
  %i.od = load double, ptr %i.oc, align 8, !tbaa !324
  store double %i.od, ptr %i.nw, align 8, !tbaa !229
  br label %.critedge

bb.ap:                                            ; preds = %bb.h
  %.val4067 = load ptr, ptr %i.aq, align 8, !tbaa !546
  %i.oe = getelementptr i8, ptr %.02963, i64 8
  %.02963.val4068 = load i32, ptr %i.oe, align 8, !tbaa !587
  %i.of = sext i32 %.02963.val4068 to i64
  %i.og = getelementptr inbounds [56 x i8], ptr %.val4067, i64 %i.of ; 8 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 20 ; 5 uses
  %i.oi = load i16, ptr %i.oh, align 4, !tbaa !164
  %i.oj = and i16 %i.oi, -28672
  %.not.i4097 = icmp eq i16 %i.oj, 0
  br i1 %.not.i4097, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ok = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.og) ; 0 uses
  br label %out2Prerelease.exit4098

bb.ar:                                            ; preds = %bb.ap
  store i16 4, ptr %i.oh, align 4, !tbaa !164
  br label %out2Prerelease.exit4098

out2Prerelease.exit4098:                          ; preds = %bb.aq, %bb.ar
  %i.ol = getelementptr inbounds nuw i8, ptr %.02963, i64 16 ; 3 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !229 ; 3 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %sqlite3Strlen30.exit, label %bb.as

bb.as:                                            ; preds = %out2Prerelease.exit4098
  %i.oo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.om) #60
  %i.op = trunc i64 %i.oo to i32
  %i.oq = and i32 %i.op, 1073741823
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %out2Prerelease.exit4098, %bb.as
  %.0.i = phi i32 [ %i.oq, %bb.as ], [ 0, %out2Prerelease.exit4098 ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.02963, i64 4 ; 2 uses
  store i32 %.0.i, ptr %i.or, align 4, !tbaa !586
  br i1 %i.cy, label %bb.az, label %bb.at

bb.at:                                            ; preds = %sqlite3Strlen30.exit
  %i.os = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %i.og, ptr noundef %i.om, i64 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  %.not3870 = icmp eq i32 %i.os, 0
  br i1 %.not3870, label %bb.au, label %sqlite3VdbeMemSetNull.exit4132

bb.au:                                            ; preds = %bb.at
  %i.ot = load i16, ptr %i.oh, align 4, !tbaa !164 ; 3 uses
  %i.ou = and i16 %i.ot, 2
  %.not.i4099 = icmp eq i16 %i.ou, 0
  %i.ov = getelementptr inbounds nuw i8, ptr %i.og, i64 22 ; 2 uses
  br i1 %.not.i4099, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i8 %i.ap, ptr %i.ov, align 2, !tbaa !351
  br label %sqlite3VdbeChangeEncoding.exit.thread

bb.aw:                                            ; preds = %bb.au
  %i.ow = load i8, ptr %i.ov, align 2, !tbaa !351
  %i.ox = icmp eq i8 %i.ap, %i.ow
  br i1 %i.ox, label %sqlite3VdbeChangeEncoding.exit.thread, label %sqlite3VdbeChangeEncoding.exit

sqlite3VdbeChangeEncoding.exit:                   ; preds = %bb.aw
  %i.oy = call fastcc i32 @sqlite3VdbeMemTranslate(ptr noundef nonnull %i.og, i8 noundef zeroext %i.ap), !inline_history !814
  %.not3871 = icmp eq i32 %i.oy, 0
  br i1 %.not3871, label %sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge, label %sqlite3VdbeMemSetNull.exit4132.thread

sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge: ; preds = %sqlite3VdbeChangeEncoding.exit
  %.pre7257 = load i16, ptr %i.oh, align 4, !tbaa !164
  br label %sqlite3VdbeChangeEncoding.exit.thread

sqlite3VdbeChangeEncoding.exit.thread:            ; preds = %sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge, %bb.aw, %bb.av
  %i.oz = phi i16 [ %.pre7257, %sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge ], [ %i.ot, %bb.aw ], [ %i.ot, %bb.av ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  store i32 0, ptr %i.pa, align 8, !tbaa !161
  %i.pb = or i16 %i.oz, 8192
  store i16 %i.pb, ptr %i.oh, align 4, !tbaa !164
  %i.pc = getelementptr inbounds nuw i8, ptr %.02963, i64 1 ; 2 uses
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !568
  %i.pe = icmp eq i8 %i.pd, -6
end_hunk_3
begin_hunk_4_@sqlite3VdbeExec:bb.a
.critedge:                                        ; preds = %bb.aya, %.lr.ph6266, %bb.ss, %bb.py, %bb.pr, %bb.is, %bb.cv, %bb.ce, %sqlite3VdbeMemSetNull.exit, %.preheader, %bb.i, %bb.ana, %bb.alg, %..si.unfold.true.jt13, %sqlite3VdbeRealValue.exit.i4206, %bb.lc, %bb.pc, %bb.ir, %out2Prerelease.exit4105, %sqlite3VdbeSorterCompare.exit, %bb.bfk, %sqlite3VdbeDeleteAuxData.exit, %.loopexit5488, %bb.bcg, %bb.bbz, %bb.bbk, %bb.aza, %bb.ayg, %sqlite3BtreeLockTable.exit, %bb.ayf, %sqlite3BtreeIncrVacuum.exit, %sqlite3VdbeChangeEncoding.exit4484, %bb.avt, %bb.avs, %bb.avr, %sqlite3VdbeMemRelease.exit4452, %.loopexit5485, %bb.auk, %bb.asi, %.thread5207, %bb.ann, %bb.anm, %bb.amu, %bb.amt, %.thread5134, %sqlite3VdbeSorterRewind.exit.thread5086, %sqlite3BtreeFirst.exit.thread.thread5404, %bb.aha, %bb.agp, %bb.agq, %bb.afz, %bb.aga, %bb.afy, %bb.aew, %bb.aez, %bb.aey, %bb.aex, %.thread4988, %bb.xx, %.thread4816, %bb.hx, %.thread4727, %bb.hp, %bb.hr, %bb.hs, %bb.dl, %bb.dm, %bb.dz, %bb.de, %bb.bfa, %bb.bee, %bb.bed, %bb.beb, %bb.bea, %.thread5346, %sqlite3VdbeMemSetNull.exit4562.thread, %bb.bbi, %.thread5311, %.thread5304, %sqlite3VtabCallDestroy.exit.thread, %bb.axz, %sqlite3VdbeMemSetInt64.exit4468.2, %sqlite3VdbeMemIntegerify.exit4439.thread, %bb.asw, %bb.asv, %bb.asu, %.loopexit.i4379, %bb.aov, %.thread5202, %.thread5183, %.thread5180, %.thread5171, %sqlite3VdbeMemSetNull.exit4363.thread, %.thread5140, %.thread5131, %.thread5054, %.thread5042, %sqlite3VdbeSorterRowkey.exit.thread5027, %sqlite3BtreeTransferRow.exit.thread, %.thread4981, %.thread4971, %.thread4962, %bb.aag, %.thread4944, %.thread4929, %.thread4879, %.thread4866, %.thread4853, %.thread4847, %sqlite3VdbeMemSetNull.exit4217.thread, %bb.mb, %bb.ma, %bb.ly, %bb.lx, %bb.lv, %bb.lu, %bb.kt, %bb.kk, %bb.kj, %bb.kh, %bb.kg, %bb.kd, %bb.kc, %bb.fu, %bb.ft, %bb.fq, %bb.fp, %bb.dd, %bb.dc, %bb.da, %bb.cz, %bb.cy, %.thread4692, %bb.ag, %sqlite3VdbeMemRelease.exit4543, %bb.azq, %bb.ank, %sqlite3BtreeTransferRow.exit, %bb.aah, %bb.xy, %bb.wm, %bb.lq, %sqlite3VdbeBooleanValue.exit4209, %sqlite3VdbeBooleanValue.exit4201, %bb.ja, %sqlite3VdbeMemIntegerify.exit4439, %bb.aua, %bb.aac, %bb.aae, %bb.aad, %bb.jt, %bb.ju, %bb.gv, %bb.l, %.thread4737, %bb.o, %bb.p, %out2Prerelease.exit, %out2Prerelease.exit4094, %out2Prerelease.exit4096, %bb.bi, %bb.bo, %sqlite3VdbeMemSetNull.exit4148, %sqlite3VdbeMemIntegerify.exit, %bb.hi, %out2Prerelease.exit4268, %sqlite3VdbeFreeCursor.exit, %out2Prerelease.exit4295, %bb.afa, %sqlite3UnlinkAndDeleteTable.exit, %sqlite3UnlinkAndDeleteIndex.exit, %bb.arv, %sqlite3AddInt64.exit4444, %bb.ayc, %bb.ayd, %out2Prerelease.exit4572, %sqlite3BtreeMaxPageCount.exit, %bb.bdx, %filterHash.exit, %bb.m, %bb.n, %bb.q, %bb.bd, %bb.be, %out2Prerelease.exit4103, %bb.fn, %bb.hk, %bb.hj, %.thread4714, %bb.io, %bb.je, %bb.jf, %bb.jc, %bb.ko, %sqlite3VdbeMemSetNull.exit4193, %bb.li, %bb.lz, %bb.xb, %bb.abd, %bb.aoh, %bb.ata, %bb.atb, %bb.asy, %bb.atf, %bb.atg, %bb.atd, %bb.ate, %bb.aub, %bb.auh, %bb.aul, %bb.axc, %bb.ayb, %sqlite3VtabCallDestroy.exit, %bb.beh, %bb.beg, %bb.h
  %.33039 = phi i32 [ %.03036, %bb.h ], [ %.03036, %.loopexit5488 ], [ %.03036, %sqlite3VdbeSorterCompare.exit ], [ %.03036, %bb.m ], [ %.03036, %sqlite3VdbeDeleteAuxData.exit ], [ %.03036, %bb.n ], [ %.03036, %.thread4737 ], [ %.03036, %bb.o ], [ %.03036, %bb.p ], [ %.03036, %bb.q ], [ %.03036, %bb.ag ], [ %.03036, %out2Prerelease.exit ], [ %.03036, %out2Prerelease.exit4094 ], [ %.03036, %out2Prerelease.exit4096 ], [ %.03036, %bb.be ], [ %.03036, %bb.bd ], [ %.03036, %out2Prerelease.exit4103 ], [ %.03036, %bb.l ], [ %.03036, %bb.bi ], [ %.03036, %bb.bo ], [ %.03036, %.thread4692 ], [ %.03036, %bb.bee ], [ %.03036, %.preheader ], [ %.03036, %bb.aua ], [ %.03036, %bb.da ], [ %.03036, %out2Prerelease.exit4105 ], [ %.03036, %bb.de ], [ %.03036, %sqlite3VdbeMemSetNull.exit4148 ], [ %.03036, %bb.dd ], [ %.03036, %bb.fn ], [ %.03036, %bb.cv ], [ %.03036, %sqlite3VdbeMemIntegerify.exit ], [ %.03036, %bb.hi ], [ %.03036, %bb.hk ], [ %.03036, %bb.hj ], [ %.03036, %.thread4714 ], [ %.03036, %bb.fu ], [ %.03036, %bb.io ], [ %.03036, %bb.fq ], [ %.03036, %bb.jc ], [ %.03036, %bb.je ], [ %.03036, %bb.jf ], [ %.03036, %bb.py ], [ %.03036, %bb.dl ], [ %.03036, %bb.kd ], [ %.03036, %bb.kh ], [ %.03036, %bb.ko ], [ %.03036, %sqlite3VdbeMemSetNull.exit4193 ], [ %.03036, %bb.kt ], [ %.03036, %sqlite3VdbeBooleanValue.exit4201 ], [ %.03036, %sqlite3VdbeBooleanValue.exit4209 ], [ %.03036, %bb.li ], [ %.03036, %bb.lq ], [ %.03036, %bb.kk ], [ %.03036, %bb.lv ], [ %.03036, %bb.lz ], [ %.03036, %bb.ly ], [ %.03036, %bb.hx ], [ %.03036, %bb.hr ], [ %.03036, %bb.jt ], [ %.03036, %bb.ana ], [ %.03036, %.thread4816 ], [ %.03036, %.thread4847 ], [ %.03036, %out2Prerelease.exit4268 ], [ %.03036, %bb.wm ], [ %.03036, %bb.xb ], [ %.03036, %.thread4853 ], [ %.03036, %.thread4866 ], [ %.03036, %bb.hs ], [ %.03036, %bb.xy ], [ %.03036, %.thread4879 ], [ %.03036, %sqlite3VdbeFreeCursor.exit ], [ %.03036, %bb.xx ], [ %.03036, %.thread4944 ], [ %.03036, %bb.ir ], [ %.03036, %.thread4929 ], [ %.03036, %.thread4962 ], [ %.03036, %bb.aah ], [ %.03036, %bb.abd ], [ %.03036, %out2Prerelease.exit4295 ], [ %.03036, %.thread4971 ], [ %.13037.ph, %.thread4981 ], [ %.03036, %sqlite3BtreeTransferRow.exit ], [ %.03036, %bb.dm ], [ %.03036, %bb.afa ], [ %.03036, %bb.bfk ], [ %.03036, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.03036, %.thread4988 ], [ %.03036, %.thread5042 ], [ %.03036, %bb.afz ], [ %.03036, %.thread5054 ], [ %.03036, %bb.agp ], [ %.03036, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.03036, %bb.ss ], [ %.03036, %.thread5131 ], [ %.03036, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.03036, %.thread5140 ], [ %.03036, %sqlite3VdbeMemSetNull.exit4363.thread ], [ %.03036, %.thread5134 ], [ %.03036, %..si.unfold.true.jt13 ], [ %.03036, %.thread5171 ], [ %.03036, %bb.ank ], [ %.03036, %bb.amu ], [ %.03036, %.thread5180 ], [ %.03036, %.thread5183 ], [ %.03036, %.thread5202 ], [ %.03036, %bb.aoh ], [ %.03036, %sqlite3UnlinkAndDeleteTable.exit ], [ %.03036, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.03036, %sqlite3BtreeTransferRow.exit.thread ], [ %.03036, %bb.arv ], [ %.03036, %bb.ann ], [ %.03036, %bb.asi ], [ %.03036, %.loopexit.i4379 ], [ %.03036, %bb.asy ], [ %.03036, %bb.ata ], [ %.03036, %bb.atb ], [ %.03036, %bb.ate ], [ %.03036, %bb.atd ], [ %.03036, %bb.atg ], [ %.03036, %bb.atf ], [ %.03036, %bb.aac ], [ %.03036, %bb.aub ], [ %.03036, %sqlite3AddInt64.exit4444 ], [ %.03036, %bb.auh ], [ %.03036, %bb.aul ], [ %.03036, %bb.auk ], [ %.03036, %sqlite3VdbeMemRelease.exit4452 ], [ %.03036, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ %.03036, %bb.avt ], [ %.03036, %bb.axc ], [ %.03036, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.03036, %bb.ayb ], [ %.03036, %sqlite3VdbeMemSetNull.exit ], [ %.03036, %bb.ayc ], [ %.03036, %bb.ayd ], [ %.03036, %sqlite3BtreeIncrVacuum.exit ], [ %.03036, %bb.azq ], [ %.03036, %sqlite3VdbeMemRelease.exit4543 ], [ %.03036, %sqlite3VtabCallDestroy.exit ], [ %.03036, %.thread5304 ], [ %.03036, %.thread5311 ], [ %.03036, %bb.bbi ], [ %.03036, %bb.aza ], [ %.03036, %sqlite3VdbeMemSetNull.exit4562.thread ], [ %.03036, %bb.bbk ], [ %.03036, %bb.bbz ], [ %.03036, %bb.bcg ], [ %.03036, %out2Prerelease.exit4572 ], [ %.03036, %sqlite3BtreeMaxPageCount.exit ], [ %.03036, %sqlite3BtreeLockTable.exit ], [ %.03036, %bb.bdx ], [ %.03036, %.thread5346 ], [ %.03036, %bb.beb ], [ %.03036, %bb.beg ], [ %.03036, %bb.beh ], [ %.03036, %filterHash.exit ], [ %.03036, %bb.bfa ], [ %.03036, %bb.gv ], [ %.03036, %sqlite3VdbeMemIntegerify.exit4439 ], [ %.03036, %bb.ja ], [ %.03036, %bb.ju ], [ %.03036, %bb.aad ], [ %.03036, %bb.aae ], [ %.03036, %bb.cy ], [ %.03036, %bb.cz ], [ %.03036, %bb.dc ], [ %.03036, %bb.fp ], [ %.03036, %bb.ft ], [ %.03036, %bb.hp ], [ %.03036, %.thread4727 ], [ %.03036, %bb.kc ], [ %.03036, %bb.kg ], [ %.03036, %bb.kj ], [ %.03036, %bb.lu ], [ %.03036, %bb.lx ], [ %.03036, %bb.ma ], [ %.03036, %bb.mb ], [ %.03036, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.03036, %bb.pc ], [ %.03036, %bb.aag ], [ %.03036, %bb.aov ], [ %.03036, %bb.asu ], [ %.03036, %bb.asv ], [ %.03036, %bb.asw ], [ %.03036, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.03036, %bb.axz ], [ %.03036, %bb.ce ], [ %.03036, %bb.ayg ], [ %.03036, %sqlite3VtabCallDestroy.exit.thread ], [ %.03036, %bb.bea ], [ %.03036, %bb.bed ], [ %.03036, %bb.dz ], [ %i.ebk, %bb.aew ], [ %i.ebk, %bb.aez ], [ %i.ebk, %bb.aey ], [ %i.ebk, %bb.aex ], [ %.03036, %bb.afy ], [ %.03036, %bb.aga ], [ %.03036, %bb.agq ], [ %.03036, %bb.aha ], [ %.03036, %bb.amt ], [ %.03036, %bb.anm ], [ %.03036, %.thread5207 ], [ %.03036, %.loopexit5485 ], [ %.03036, %bb.avr ], [ %.03036, %bb.avs ], [ %.03036, %bb.ayf ], [ %.03036, %bb.is ], [ %.03036, %bb.alg ], [ %.03036, %.lr.ph6266 ], [ %.03036, %bb.pr ], [ %.03036, %sqlite3VdbeRealValue.exit.i4206 ], [ %.03036, %bb.lc ], [ %.03036, %bb.i ], [ %.03036, %bb.aya ]
  %.43025 = phi ptr [ %.03021, %bb.h ], [ %.03021, %.loopexit5488 ], [ %.03021, %sqlite3VdbeSorterCompare.exit ], [ %.03021, %bb.m ], [ %.03021, %sqlite3VdbeDeleteAuxData.exit ], [ %.03021, %bb.n ], [ %.03021, %.thread4737 ], [ %.03021, %bb.o ], [ %.03021, %bb.p ], [ %.03021, %bb.q ], [ %i.mx, %bb.ag ], [ %.03021, %out2Prerelease.exit ], [ %.03021, %out2Prerelease.exit4094 ], [ %.03021, %out2Prerelease.exit4096 ], [ %.03021, %bb.be ], [ %.03021, %bb.bd ], [ %.03021, %out2Prerelease.exit4103 ], [ %.03021, %bb.l ], [ %.03021, %bb.bi ], [ %.03021, %bb.bo ], [ %.03021, %.thread4692 ], [ %.03021, %bb.bee ], [ %.13022, %.preheader ], [ %.03021, %bb.aua ], [ %.03021, %bb.da ], [ %.03021, %out2Prerelease.exit4105 ], [ %.03021, %bb.de ], [ %.03021, %sqlite3VdbeMemSetNull.exit4148 ], [ %.03021, %bb.dd ], [ %.03021, %bb.fn ], [ %.03021, %bb.cv ], [ %.03021, %sqlite3VdbeMemIntegerify.exit ], [ %.03021, %bb.hi ], [ %.03021, %bb.hk ], [ %.03021, %bb.hj ], [ %.03021, %.thread4714 ], [ %.03021, %bb.fu ], [ %.03021, %bb.io ], [ %.03021, %bb.fq ], [ %.03021, %bb.jc ], [ %.03021, %bb.je ], [ %.03021, %bb.jf ], [ %.03021, %bb.py ], [ %.03021, %bb.dl ], [ %.03021, %bb.kd ], [ %.03021, %bb.kh ], [ %.03021, %bb.ko ], [ %.03021, %sqlite3VdbeMemSetNull.exit4193 ], [ %.03021, %bb.kt ], [ %.03021, %sqlite3VdbeBooleanValue.exit4201 ], [ %.03021, %sqlite3VdbeBooleanValue.exit4209 ], [ %.03021, %bb.li ], [ %.03021, %bb.lq ], [ %.03021, %bb.kk ], [ %.03021, %bb.lv ], [ %.03021, %bb.lz ], [ %.03021, %bb.ly ], [ %.03021, %bb.hx ], [ %.03021, %bb.hr ], [ %.03021, %bb.jt ], [ %.03021, %bb.ana ], [ %.03021, %.thread4816 ], [ %.03021, %.thread4847 ], [ %.03021, %out2Prerelease.exit4268 ], [ %.03021, %bb.wm ], [ %.03021, %bb.xb ], [ %.03021, %.thread4853 ], [ %.03021, %.thread4866 ], [ %.03021, %bb.hs ], [ %.03021, %bb.xy ], [ %.03021, %.thread4879 ], [ %.03021, %sqlite3VdbeFreeCursor.exit ], [ %.03021, %bb.xx ], [ %.03021, %.thread4944 ], [ %.03021, %bb.ir ], [ %.03021, %.thread4929 ], [ %.03021, %.thread4962 ], [ %.03021, %bb.aah ], [ %.03021, %bb.abd ], [ %.03021, %out2Prerelease.exit4295 ], [ %.03021, %.thread4971 ], [ %.03021, %.thread4981 ], [ %.03021, %sqlite3BtreeTransferRow.exit ], [ %.03021, %bb.dm ], [ %.03021, %bb.afa ], [ %.03021, %bb.bfk ], [ %.03021, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.03021, %.thread4988 ], [ %.03021, %.thread5042 ], [ %.03021, %bb.afz ], [ %.03021, %.thread5054 ], [ %.03021, %bb.agp ], [ %.03021, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.03021, %bb.ss ], [ %.03021, %.thread5131 ], [ %.03021, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.03021, %.thread5140 ], [ %.03021, %sqlite3VdbeMemSetNull.exit4363.thread ], [ %.03021, %.thread5134 ], [ %.03021, %..si.unfold.true.jt13 ], [ %.03021, %.thread5171 ], [ %.03021, %bb.ank ], [ %.03021, %bb.amu ], [ %.03021, %.thread5180 ], [ %.03021, %.thread5183 ], [ %.03021, %.thread5202 ], [ %.03021, %bb.aoh ], [ %.03021, %sqlite3UnlinkAndDeleteTable.exit ], [ %.03021, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.03021, %sqlite3BtreeTransferRow.exit.thread ], [ %.03021, %bb.arv ], [ %.03021, %bb.ann ], [ %.03021, %bb.asi ], [ %.03021, %.loopexit.i4379 ], [ %.03021, %bb.asy ], [ %.03021, %bb.ata ], [ %.03021, %bb.atb ], [ %.03021, %bb.ate ], [ %.03021, %bb.atd ], [ %.03021, %bb.atg ], [ %.03021, %bb.atf ], [ %.03021, %bb.aac ], [ %.03021, %bb.aub ], [ %.03021, %sqlite3AddInt64.exit4444 ], [ %.03021, %bb.auh ], [ %.03021, %bb.aul ], [ %.03021, %bb.auk ], [ %.03021, %sqlite3VdbeMemRelease.exit4452 ], [ %.03021, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ %.03021, %bb.avt ], [ %.03021, %bb.axc ], [ %.03021, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.03021, %bb.ayb ], [ %.03021, %sqlite3VdbeMemSetNull.exit ], [ %.03021, %bb.ayc ], [ %.03021, %bb.ayd ], [ %.03021, %sqlite3BtreeIncrVacuum.exit ], [ %.03021, %bb.azq ], [ %.03021, %sqlite3VdbeMemRelease.exit4543 ], [ %.03021, %sqlite3VtabCallDestroy.exit ], [ %.03021, %.thread5304 ], [ %.03021, %.thread5311 ], [ %.03021, %bb.bbi ], [ %.03021, %bb.aza ], [ %.03021, %sqlite3VdbeMemSetNull.exit4562.thread ], [ %.03021, %bb.bbk ], [ %.03021, %bb.bbz ], [ %.03021, %bb.bcg ], [ %.03021, %out2Prerelease.exit4572 ], [ %.03021, %sqlite3BtreeMaxPageCount.exit ], [ %.03021, %sqlite3BtreeLockTable.exit ], [ %.03021, %bb.bdx ], [ %.03021, %.thread5346 ], [ %.03021, %bb.beb ], [ %.03021, %bb.beg ], [ %.03021, %bb.beh ], [ %.03021, %filterHash.exit ], [ %.03021, %bb.bfa ], [ %.03021, %bb.gv ], [ %.03021, %sqlite3VdbeMemIntegerify.exit4439 ], [ %.03021, %bb.ja ], [ %.03021, %bb.ju ], [ %.03021, %bb.aad ], [ %.03021, %bb.aae ], [ %.03021, %bb.cy ], [ %.03021, %bb.cz ], [ %.03021, %bb.dc ], [ %.03021, %bb.fp ], [ %.03021, %bb.ft ], [ %.03021, %bb.hp ], [ %.03021, %.thread4727 ], [ %.03021, %bb.kc ], [ %.03021, %bb.kg ], [ %.03021, %bb.kj ], [ %.03021, %bb.lu ], [ %.03021, %bb.lx ], [ %.03021, %bb.ma ], [ %.03021, %bb.mb ], [ %.03021, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.03021, %bb.pc ], [ %.03021, %bb.aag ], [ %.03021, %bb.aov ], [ %.03021, %bb.asu ], [ %.03021, %bb.asv ], [ %.03021, %bb.asw ], [ %.03021, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.03021, %bb.axz ], [ %.03021, %bb.ce ], [ %.03021, %bb.ayg ], [ %.03021, %sqlite3VtabCallDestroy.exit.thread ], [ %.03021, %bb.bea ], [ %.03021, %bb.bed ], [ %.03021, %bb.dz ], [ %.03021, %bb.aew ], [ %.03021, %bb.aez ], [ %.03021, %bb.aey ], [ %.03021, %bb.aex ], [ %.03021, %bb.afy ], [ %.03021, %bb.aga ], [ %.03021, %bb.agq ], [ %.03021, %bb.aha ], [ %.03021, %bb.amt ], [ %.03021, %bb.anm ], [ %.03021, %.thread5207 ], [ %.03021, %.loopexit5485 ], [ %.03021, %bb.avr ], [ %.03021, %bb.avs ], [ %.03021, %bb.ayf ], [ %.03021, %bb.is ], [ %.03021, %bb.alg ], [ %.03021, %.lr.ph6266 ], [ %.03021, %bb.pr ], [ %.03021, %sqlite3VdbeRealValue.exit.i4206 ], [ %.03021, %bb.lc ], [ %.13022, %bb.i ], [ %.03021, %bb.aya ]
  %.33014 = phi i64 [ %.13012, %bb.h ], [ %.13012, %.loopexit5488 ], [ %.13012, %sqlite3VdbeSorterCompare.exit ], [ %.13012, %bb.m ], [ %.13012, %sqlite3VdbeDeleteAuxData.exit ], [ %.13012, %bb.n ], [ %.13012, %.thread4737 ], [ %.13012, %bb.o ], [ %.13012, %bb.p ], [ %.13012, %bb.q ], [ %.13012, %bb.ag ], [ %.13012, %out2Prerelease.exit ], [ %.13012, %out2Prerelease.exit4094 ], [ %.13012, %out2Prerelease.exit4096 ], [ %.13012, %bb.be ], [ %.13012, %bb.bd ], [ %.13012, %out2Prerelease.exit4103 ], [ %.13012, %bb.l ], [ %.13012, %bb.bi ], [ %.13012, %bb.bo ], [ %.13012, %.thread4692 ], [ %.13012, %bb.bee ], [ %.23013, %.preheader ], [ %.13012, %bb.aua ], [ %.13012, %bb.da ], [ %.13012, %out2Prerelease.exit4105 ], [ %.13012, %bb.de ], [ %.13012, %sqlite3VdbeMemSetNull.exit4148 ], [ %.13012, %bb.dd ], [ %.13012, %bb.fn ], [ %.13012, %bb.cv ], [ %.13012, %sqlite3VdbeMemIntegerify.exit ], [ %.13012, %bb.hi ], [ %.13012, %bb.hk ], [ %.13012, %bb.hj ], [ %.13012, %.thread4714 ], [ %.13012, %bb.fu ], [ %.13012, %bb.io ], [ %.13012, %bb.fq ], [ %.13012, %bb.jc ], [ %.13012, %bb.je ], [ %.13012, %bb.jf ], [ %.13012, %bb.py ], [ %.13012, %bb.dl ], [ %.13012, %bb.kd ], [ %.13012, %bb.kh ], [ %.13012, %bb.ko ], [ %.13012, %sqlite3VdbeMemSetNull.exit4193 ], [ %.13012, %bb.kt ], [ %.13012, %sqlite3VdbeBooleanValue.exit4201 ], [ %.13012, %sqlite3VdbeBooleanValue.exit4209 ], [ %.13012, %bb.li ], [ %.13012, %bb.lq ], [ %.13012, %bb.kk ], [ %.13012, %bb.lv ], [ %.13012, %bb.lz ], [ %.13012, %bb.ly ], [ %.13012, %bb.hx ], [ %.13012, %bb.hr ], [ %.13012, %bb.jt ], [ %.13012, %bb.ana ], [ %.13012, %.thread4816 ], [ %.13012, %.thread4847 ], [ %.13012, %out2Prerelease.exit4268 ], [ %.13012, %bb.wm ], [ %.13012, %bb.xb ], [ %.13012, %.thread4853 ], [ %.13012, %.thread4866 ], [ %.13012, %bb.hs ], [ %.13012, %bb.xy ], [ %.13012, %.thread4879 ], [ %.13012, %sqlite3VdbeFreeCursor.exit ], [ %.13012, %bb.xx ], [ %.13012, %.thread4944 ], [ %.13012, %bb.ir ], [ %.13012, %.thread4929 ], [ %.13012, %.thread4962 ], [ %.13012, %bb.aah ], [ %.13012, %bb.abd ], [ %.13012, %out2Prerelease.exit4295 ], [ %.13012, %.thread4971 ], [ %.13012, %.thread4981 ], [ %.13012, %sqlite3BtreeTransferRow.exit ], [ %.13012, %bb.dm ], [ %.13012, %bb.afa ], [ %.13012, %bb.bfk ], [ %.13012, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.13012, %.thread4988 ], [ %.13012, %.thread5042 ], [ %.13012, %bb.afz ], [ %.13012, %.thread5054 ], [ %.13012, %bb.agp ], [ %.13012, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.13012, %bb.ss ], [ %.13012, %.thread5131 ], [ %.13012, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.13012, %.thread5140 ], [ %.13012, %sqlite3VdbeMemSetNull.exit4363.thread ], [ %.13012, %.thread5134 ], [ %.13012, %..si.unfold.true.jt13 ], [ %.13012, %.thread5171 ], [ %.13012, %bb.ank ], [ %.13012, %bb.amu ], [ %.13012, %.thread5180 ], [ %.13012, %.thread5183 ], [ %.13012, %.thread5202 ], [ %.13012, %bb.aoh ], [ %.13012, %sqlite3UnlinkAndDeleteTable.exit ], [ %.13012, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.13012, %sqlite3BtreeTransferRow.exit.thread ], [ %.13012, %bb.arv ], [ %.13012, %bb.ann ], [ %.13012, %bb.asi ], [ %.13012, %.loopexit.i4379 ], [ %.13012, %bb.asy ], [ %.13012, %bb.ata ], [ %.13012, %bb.atb ], [ %.13012, %bb.ate ], [ %.13012, %bb.atd ], [ %.13012, %bb.atg ], [ %.13012, %bb.atf ], [ %.13012, %bb.aac ], [ %.13012, %bb.aub ], [ %.13012, %sqlite3AddInt64.exit4444 ], [ %.13012, %bb.auh ], [ %.13012, %bb.aul ], [ %.13012, %bb.auk ], [ %.13012, %sqlite3VdbeMemRelease.exit4452 ], [ %.13012, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ %.13012, %bb.avt ], [ %.13012, %bb.axc ], [ %.13012, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.13012, %bb.ayb ], [ %.13012, %sqlite3VdbeMemSetNull.exit ], [ %.13012, %bb.ayc ], [ %.13012, %bb.ayd ], [ %.13012, %sqlite3BtreeIncrVacuum.exit ], [ %.13012, %bb.azq ], [ %.13012, %sqlite3VdbeMemRelease.exit4543 ], [ %.13012, %sqlite3VtabCallDestroy.exit ], [ %.13012, %.thread5304 ], [ %.13012, %.thread5311 ], [ %.13012, %bb.bbi ], [ %.13012, %bb.aza ], [ %.13012, %sqlite3VdbeMemSetNull.exit4562.thread ], [ %.13012, %bb.bbk ], [ %.13012, %bb.bbz ], [ %.13012, %bb.bcg ], [ %.13012, %out2Prerelease.exit4572 ], [ %.13012, %sqlite3BtreeMaxPageCount.exit ], [ %.13012, %sqlite3BtreeLockTable.exit ], [ %.13012, %bb.bdx ], [ %.13012, %.thread5346 ], [ %.13012, %bb.beb ], [ %.13012, %bb.beg ], [ %.13012, %bb.beh ], [ %.13012, %filterHash.exit ], [ %.13012, %bb.bfa ], [ %.13012, %bb.gv ], [ %.13012, %sqlite3VdbeMemIntegerify.exit4439 ], [ %.13012, %bb.ja ], [ %.13012, %bb.ju ], [ %.13012, %bb.aad ], [ %.13012, %bb.aae ], [ %.13012, %bb.cy ], [ %.13012, %bb.cz ], [ %.13012, %bb.dc ], [ %.13012, %bb.fp ], [ %.13012, %bb.ft ], [ %.13012, %bb.hp ], [ %.13012, %.thread4727 ], [ %.13012, %bb.kc ], [ %.13012, %bb.kg ], [ %.13012, %bb.kj ], [ %.13012, %bb.lu ], [ %.13012, %bb.lx ], [ %.13012, %bb.ma ], [ %.13012, %bb.mb ], [ %.13012, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.13012, %bb.pc ], [ %.13012, %bb.aag ], [ %.13012, %bb.aov ], [ %.13012, %bb.asu ], [ %.13012, %bb.asv ], [ %.13012, %bb.asw ], [ %.13012, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.13012, %bb.axz ], [ %.13012, %bb.ce ], [ %.13012, %bb.ayg ], [ %.13012, %sqlite3VtabCallDestroy.exit.thread ], [ %.13012, %bb.bea ], [ %.13012, %bb.bed ], [ %.13012, %bb.dz ], [ %.13012, %bb.aew ], [ %.13012, %bb.aez ], [ %.13012, %bb.aey ], [ %.13012, %bb.aex ], [ %.13012, %bb.afy ], [ %.13012, %bb.aga ], [ %.13012, %bb.agq ], [ %.13012, %bb.aha ], [ %.13012, %bb.amt ], [ %.13012, %bb.anm ], [ %.13012, %.thread5207 ], [ %.13012, %.loopexit5485 ], [ %.13012, %bb.avr ], [ %.13012, %bb.avs ], [ %.13012, %bb.ayf ], [ %.13012, %bb.is ], [ %.13012, %bb.alg ], [ %.13012, %.lr.ph6266 ], [ %.13012, %bb.pr ], [ %.13012, %sqlite3VdbeRealValue.exit.i4206 ], [ %.13012, %bb.lc ], [ %.23013, %bb.i ], [ %.13012, %bb.aya ]
  %.73003 = phi i32 [ %.02996, %bb.h ], [ %.02996, %.loopexit5488 ], [ %.02996, %sqlite3VdbeSorterCompare.exit ], [ %.02996, %bb.m ], [ %.02996, %sqlite3VdbeDeleteAuxData.exit ], [ %.02996, %bb.n ], [ %.12997, %.thread4737 ], [ %.02996, %bb.o ], [ %.02996, %bb.p ], [ %.02996, %bb.q ], [ %.02996, %bb.ag ], [ %.02996, %out2Prerelease.exit ], [ %.02996, %out2Prerelease.exit4094 ], [ %.02996, %out2Prerelease.exit4096 ], [ %.02996, %bb.be ], [ %.02996, %bb.bd ], [ %.02996, %out2Prerelease.exit4103 ], [ %.02996, %bb.l ], [ %.02996, %bb.bi ], [ %.02996, %bb.bo ], [ %.02996, %.thread4692 ], [ %.02996, %bb.bee ], [ %.02996, %.preheader ], [ %.02996, %bb.aua ], [ %.02996, %bb.da ], [ %.02996, %out2Prerelease.exit4105 ], [ %.02996, %bb.de ], [ %.02996, %sqlite3VdbeMemSetNull.exit4148 ], [ %.02996, %bb.dd ], [ %.02996, %bb.fn ], [ %.02996, %bb.cv ], [ %.02996, %sqlite3VdbeMemIntegerify.exit ], [ %.02996, %bb.hi ], [ %.02996, %bb.hk ], [ %.02996, %bb.hj ], [ %.02996, %.thread4714 ], [ %.02996, %bb.fu ], [ %.02996, %bb.io ], [ %.02996, %bb.fq ], [ %.02996, %bb.jc ], [ 0, %bb.je ], [ %.02996, %bb.jf ], [ %.02996, %bb.py ], [ %.02996, %bb.dl ], [ %.02996, %bb.kd ], [ %.02996, %bb.kh ], [ %.02996, %bb.ko ], [ %.02996, %sqlite3VdbeMemSetNull.exit4193 ], [ %.02996, %bb.kt ], [ %.02996, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02996, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02996, %bb.li ], [ %.02996, %bb.lq ], [ %.02996, %bb.kk ], [ %.02996, %bb.lv ], [ %.02996, %bb.lz ], [ %.02996, %bb.ly ], [ 1, %bb.hx ], [ -1, %bb.hr ], [ %.02996, %bb.jt ], [ %.02996, %bb.ana ], [ %.02996, %.thread4816 ], [ %.02996, %.thread4847 ], [ %.02996, %out2Prerelease.exit4268 ], [ %.02996, %bb.wm ], [ %.02996, %bb.xb ], [ %.02996, %.thread4853 ], [ %.02996, %.thread4866 ], [ 0, %bb.hs ], [ %.02996, %bb.xy ], [ %.02996, %.thread4879 ], [ %.02996, %sqlite3VdbeFreeCursor.exit ], [ %.02996, %bb.xx ], [ %.02996, %.thread4944 ], [ %.02996, %bb.ir ], [ %.02996, %.thread4929 ], [ %.02996, %.thread4962 ], [ %.02996, %bb.aah ], [ %.02996, %bb.abd ], [ %.02996, %out2Prerelease.exit4295 ], [ %.02996, %.thread4971 ], [ %.02996, %.thread4981 ], [ %.02996, %sqlite3BtreeTransferRow.exit ], [ %.02996, %bb.dm ], [ %.02996, %bb.afa ], [ %.02996, %bb.bfk ], [ %.02996, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.02996, %.thread4988 ], [ %.02996, %.thread5042 ], [ %.02996, %bb.afz ], [ %.02996, %.thread5054 ], [ %.02996, %bb.agp ], [ %.02996, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.02996, %bb.ss ], [ %.02996, %.thread5131 ], [ %.02996, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.02996, %.thread5140 ], [ %.02996, %sqlite3VdbeMemSetNull.exit4363.thread ], [ %.02996, %.thread5134 ], [ %.02996, %..si.unfold.true.jt13 ], [ %.02996, %.thread5171 ], [ %.02996, %bb.ank ], [ %.02996, %bb.amu ], [ %.02996, %.thread5180 ], [ %.02996, %.thread5183 ], [ %.02996, %.thread5202 ], [ %.02996, %bb.aoh ], [ %.02996, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02996, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.02996, %sqlite3BtreeTransferRow.exit.thread ], [ %.02996, %bb.arv ], [ %.02996, %bb.ann ], [ %.02996, %bb.asi ], [ %.02996, %.loopexit.i4379 ], [ %.02996, %bb.asy ], [ %.02996, %bb.ata ], [ %.02996, %bb.atb ], [ %.02996, %bb.ate ], [ %.02996, %bb.atd ], [ %.02996, %bb.atg ], [ %.02996, %bb.atf ], [ %.02996, %bb.aac ], [ %.02996, %bb.aub ], [ %.02996, %sqlite3AddInt64.exit4444 ], [ %.02996, %bb.auh ], [ %.02996, %bb.aul ], [ %.02996, %bb.auk ], [ %.02996, %sqlite3VdbeMemRelease.exit4452 ], [ %.02996, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ %.02996, %bb.avt ], [ %.02996, %bb.axc ], [ %.02996, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.02996, %bb.ayb ], [ %.02996, %sqlite3VdbeMemSetNull.exit ], [ %.02996, %bb.ayc ], [ %.02996, %bb.ayd ], [ %.02996, %sqlite3BtreeIncrVacuum.exit ], [ %.02996, %bb.azq ], [ %.02996, %sqlite3VdbeMemRelease.exit4543 ], [ %.02996, %sqlite3VtabCallDestroy.exit ], [ %.02996, %.thread5304 ], [ %.02996, %.thread5311 ], [ %.02996, %bb.bbi ], [ %.02996, %bb.aza ], [ %.02996, %sqlite3VdbeMemSetNull.exit4562.thread ], [ %.02996, %bb.bbk ], [ %.02996, %bb.bbz ], [ %.02996, %bb.bcg ], [ %.02996, %out2Prerelease.exit4572 ], [ %.02996, %sqlite3BtreeMaxPageCount.exit ], [ %.02996, %sqlite3BtreeLockTable.exit ], [ %.02996, %bb.bdx ], [ %.02996, %.thread5346 ], [ %.02996, %bb.beb ], [ %.02996, %bb.beg ], [ %.02996, %bb.beh ], [ %.02996, %filterHash.exit ], [ %.02996, %bb.bfa ], [ %.02996, %bb.gv ], [ %.02996, %sqlite3VdbeMemIntegerify.exit4439 ], [ %spec.select3900, %bb.ja ], [ %.02996, %bb.ju ], [ %.02996, %bb.aad ], [ %.02996, %bb.aae ], [ %.02996, %bb.cy ], [ %.02996, %bb.cz ], [ %.02996, %bb.dc ], [ %.02996, %bb.fp ], [ %.02996, %bb.ft ], [ 1, %bb.hp ], [ %.031414726, %.thread4727 ], [ %.02996, %bb.kc ], [ %.02996, %bb.kg ], [ %.02996, %bb.kj ], [ %.02996, %bb.lu ], [ %.02996, %bb.lx ], [ %.02996, %bb.ma ], [ %.02996, %bb.mb ], [ %.02996, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.02996, %bb.pc ], [ %.02996, %bb.aag ], [ %.02996, %bb.aov ], [ %.02996, %bb.asu ], [ %.02996, %bb.asv ], [ %.02996, %bb.asw ], [ %.02996, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.02996, %bb.axz ], [ %.02996, %bb.ce ], [ %.02996, %bb.ayg ], [ %.02996, %sqlite3VtabCallDestroy.exit.thread ], [ %.02996, %bb.bea ], [ %.02996, %bb.bed ], [ %.02996, %bb.dz ], [ %.02996, %bb.aew ], [ %.02996, %bb.aez ], [ %.02996, %bb.aey ], [ %.02996, %bb.aex ], [ %.02996, %bb.afy ], [ %.02996, %bb.aga ], [ %.02996, %bb.agq ], [ %.02996, %bb.aha ], [ %.02996, %bb.amt ], [ %.02996, %bb.anm ], [ %.02996, %.thread5207 ], [ %.02996, %.loopexit5485 ], [ %.02996, %bb.avr ], [ %.02996, %bb.avs ], [ %.02996, %bb.ayf ], [ 0, %bb.is ], [ %.02996, %bb.alg ], [ %.02996, %.lr.ph6266 ], [ %.02996, %bb.pr ], [ %.02996, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02996, %bb.lc ], [ %.02996, %bb.i ], [ %.02996, %bb.aya ]
  %.32991 = phi i8 [ %.02988, %bb.h ], [ %.02988, %.loopexit5488 ], [ %.02988, %sqlite3VdbeSorterCompare.exit ], [ %.02988, %bb.m ], [ %.02988, %sqlite3VdbeDeleteAuxData.exit ], [ %.02988, %bb.n ], [ %.02988, %.thread4737 ], [ %.02988, %bb.o ], [ %.02988, %bb.p ], [ %.02988, %bb.q ], [ %.02988, %bb.ag ], [ %.02988, %out2Prerelease.exit ], [ %.02988, %out2Prerelease.exit4094 ], [ %.02988, %out2Prerelease.exit4096 ], [ %.02988, %bb.be ], [ %.02988, %bb.bd ], [ %.02988, %out2Prerelease.exit4103 ], [ %.02988, %bb.l ], [ %.02988, %bb.bi ], [ %.02988, %bb.bo ], [ %.02988, %.thread4692 ], [ %.02988, %bb.bee ], [ %.02988, %.preheader ], [ %.02988, %bb.aua ], [ %.02988, %bb.da ], [ %.02988, %out2Prerelease.exit4105 ], [ %.02988, %bb.de ], [ %.02988, %sqlite3VdbeMemSetNull.exit4148 ], [ %.02988, %bb.dd ], [ %.02988, %bb.fn ], [ %.02988, %bb.cv ], [ %.02988, %sqlite3VdbeMemIntegerify.exit ], [ %.02988, %bb.hi ], [ %.02988, %bb.hk ], [ %.02988, %bb.hj ], [ %.02988, %.thread4714 ], [ %.02988, %bb.fu ], [ %.02988, %bb.io ], [ %.02988, %bb.fq ], [ %.02988, %bb.jc ], [ %.02988, %bb.je ], [ %.02988, %bb.jf ], [ %.02988, %bb.py ], [ %.02988, %bb.dl ], [ %.02988, %bb.kd ], [ %.02988, %bb.kh ], [ %.02988, %bb.ko ], [ %.02988, %sqlite3VdbeMemSetNull.exit4193 ], [ %.02988, %bb.kt ], [ %.02988, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02988, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02988, %bb.li ], [ %.02988, %bb.lq ], [ %.02988, %bb.kk ], [ %.02988, %bb.lv ], [ %.02988, %bb.lz ], [ %.02988, %bb.ly ], [ %.02988, %bb.hx ], [ %.02988, %bb.hr ], [ %.02988, %bb.jt ], [ %.02988, %bb.ana ], [ %.02988, %.thread4816 ], [ %.02988, %.thread4847 ], [ %.02988, %out2Prerelease.exit4268 ], [ %.02988, %bb.wm ], [ %.02988, %bb.xb ], [ %.02988, %.thread4853 ], [ %.02988, %.thread4866 ], [ %.02988, %bb.hs ], [ %.02988, %bb.xy ], [ %.02988, %.thread4879 ], [ %.02988, %sqlite3VdbeFreeCursor.exit ], [ %.02988, %bb.xx ], [ %.02988, %.thread4944 ], [ %.02988, %bb.ir ], [ %.02988, %.thread4929 ], [ %.02988, %.thread4962 ], [ %.02988, %bb.aah ], [ %.02988, %bb.abd ], [ %.02988, %out2Prerelease.exit4295 ], [ %.02988, %.thread4971 ], [ %.02988, %.thread4981 ], [ %.02988, %sqlite3BtreeTransferRow.exit ], [ %.02988, %bb.dm ], [ %.02988, %bb.afa ], [ %.02988, %bb.bfk ], [ %.02988, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.02988, %.thread4988 ], [ %.02988, %.thread5042 ], [ %.02988, %bb.afz ], [ %.02988, %.thread5054 ], [ %.02988, %bb.agp ], [ %.02988, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.02988, %bb.ss ], [ %.02988, %.thread5131 ], [ %.02988, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.02988, %.thread5140 ], [ %.02988, %sqlite3VdbeMemSetNull.exit4363.thread ], [ %.02988, %.thread5134 ], [ %.02988, %..si.unfold.true.jt13 ], [ %.22990.ph, %.thread5171 ], [ %.02988, %bb.ank ], [ %.02988, %bb.amu ], [ %.02988, %.thread5180 ], [ %.02988, %.thread5183 ], [ %.02988, %.thread5202 ], [ %.02988, %bb.aoh ], [ %.02988, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02988, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.02988, %sqlite3BtreeTransferRow.exit.thread ], [ %.02988, %bb.arv ], [ %.02988, %bb.ann ], [ %.02988, %bb.asi ], [ %.02988, %.loopexit.i4379 ], [ %.02988, %bb.asy ], [ %.02988, %bb.ata ], [ %.02988, %bb.atb ], [ %.02988, %bb.ate ], [ %.02988, %bb.atd ], [ %.02988, %bb.atg ], [ %.02988, %bb.atf ], [ %.02988, %bb.aac ], [ %.02988, %bb.aub ], [ %.02988, %sqlite3AddInt64.exit4444 ], [ %.02988, %bb.auh ], [ %.02988, %bb.aul ], [ %.02988, %bb.auk ], [ %.02988, %sqlite3VdbeMemRelease.exit4452 ], [ %.02988, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ %.02988, %bb.avt ], [ %.02988, %bb.axc ], [ %.02988, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.02988, %bb.ayb ], [ %.02988, %sqlite3VdbeMemSetNull.exit ], [ %.02988, %bb.ayc ], [ %.02988, %bb.ayd ], [ %.02988, %sqlite3BtreeIncrVacuum.exit ], [ %.02988, %bb.azq ], [ %.02988, %sqlite3VdbeMemRelease.exit4543 ], [ %.02988, %sqlite3VtabCallDestroy.exit ], [ %.02988, %.thread5304 ], [ %.02988, %.thread5311 ], [ %.02988, %bb.bbi ], [ %.02988, %bb.aza ], [ %.02988, %sqlite3VdbeMemSetNull.exit4562.thread ], [ %.02988, %bb.bbk ], [ %.02988, %bb.bbz ], [ %.02988, %bb.bcg ], [ %.02988, %out2Prerelease.exit4572 ], [ %.02988, %sqlite3BtreeMaxPageCount.exit ], [ %.02988, %sqlite3BtreeLockTable.exit ], [ %.02988, %bb.bdx ], [ %.02988, %.thread5346 ], [ %.02988, %bb.beb ], [ %.02988, %bb.beg ], [ %.02988, %bb.beh ], [ %.02988, %filterHash.exit ], [ %.02988, %bb.bfa ], [ %.02988, %bb.gv ], [ %.02988, %sqlite3VdbeMemIntegerify.exit4439 ], [ %.02988, %bb.ja ], [ %.02988, %bb.ju ], [ %.02988, %bb.aad ], [ %.02988, %bb.aae ], [ %.02988, %bb.cy ], [ %.02988, %bb.cz ], [ %.02988, %bb.dc ], [ %.02988, %bb.fp ], [ %.02988, %bb.ft ], [ %.02988, %bb.hp ], [ %.02988, %.thread4727 ], [ %.02988, %bb.kc ], [ %.02988, %bb.kg ], [ %.02988, %bb.kj ], [ %.02988, %bb.lu ], [ %.02988, %bb.lx ], [ %.02988, %bb.ma ], [ %.02988, %bb.mb ], [ %.02988, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.02988, %bb.pc ], [ %.02988, %bb.aag ], [ %.02988, %bb.aov ], [ %.02988, %bb.asu ], [ %.02988, %bb.asv ], [ %.02988, %bb.asw ], [ %.02988, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.02988, %bb.axz ], [ %.02988, %bb.ce ], [ %.02988, %bb.ayg ], [ %.02988, %sqlite3VtabCallDestroy.exit.thread ], [ %.02988, %bb.bea ], [ %.02988, %bb.bed ], [ %.02988, %bb.dz ], [ %.02988, %bb.aew ], [ %.02988, %bb.aez ], [ %.02988, %bb.aey ], [ %.02988, %bb.aex ], [ %.02988, %bb.afy ], [ %.02988, %bb.aga ], [ %.02988, %bb.agq ], [ %.02988, %bb.aha ], [ %.02988, %bb.amt ], [ %.02988, %bb.anm ], [ %.02988, %.thread5207 ], [ %.02988, %.loopexit5485 ], [ %.02988, %bb.avr ], [ %.02988, %bb.avs ], [ %.02988, %bb.ayf ], [ %.02988, %bb.is ], [ %.02988, %bb.alg ], [ %.02988, %.lr.ph6266 ], [ %.02988, %bb.pr ], [ %.02988, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02988, %bb.lc ], [ %.02988, %bb.i ], [ %.02988, %bb.aya ]
  %.109 = phi i32 [ %.02973, %bb.h ], [ %.02973, %.loopexit5488 ], [ 0, %sqlite3VdbeSorterCompare.exit ], [ %.02973, %bb.m ], [ 0, %sqlite3VdbeDeleteAuxData.exit ], [ %.02973, %bb.n ], [ %.32976, %.thread4737 ], [ %.02973, %bb.o ], [ %.02973, %bb.p ], [ %.02973, %bb.q ], [ %.02973, %bb.ag ], [ %.02973, %out2Prerelease.exit ], [ %.02973, %out2Prerelease.exit4094 ], [ %.02973, %out2Prerelease.exit4096 ], [ %.72980, %bb.be ], [ %.72980, %bb.bd ], [ %.72980, %out2Prerelease.exit4103 ], [ %.02973, %bb.l ], [ %.02973, %bb.bi ], [ %.02973, %bb.bo ], [ %.02973, %.thread4692 ], [ %.02973, %bb.bee ], [ %.22975, %.preheader ], [ %.02973, %bb.aua ], [ %.02973, %bb.da ], [ %.02973, %out2Prerelease.exit4105 ], [ 0, %bb.de ], [ %.02973, %sqlite3VdbeMemSetNull.exit4148 ], [ %.02973, %bb.dd ], [ %.02973, %bb.fn ], [ %.02973, %bb.cv ], [ %.02973, %sqlite3VdbeMemIntegerify.exit ], [ %.02973, %bb.hi ], [ %.02973, %bb.hk ], [ %.02973, %bb.hj ], [ 0, %.thread4714 ], [ %.02973, %bb.fu ], [ %.02973, %bb.io ], [ %.02973, %bb.fq ], [ %.02973, %bb.jc ], [ %.02973, %bb.je ], [ %.02973, %bb.jf ], [ %.02973, %bb.py ], [ %.02973, %bb.dl ], [ %.02973, %bb.kd ], [ %.02973, %bb.kh ], [ %.02973, %bb.ko ], [ %.02973, %sqlite3VdbeMemSetNull.exit4193 ], [ %.02973, %bb.kt ], [ %.02973, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02973, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02973, %bb.li ], [ %.02973, %bb.lq ], [ %.02973, %bb.kk ], [ %.02973, %bb.lv ], [ %.02973, %bb.lz ], [ %.02973, %bb.ly ], [ %.02973, %bb.hx ], [ %.02973, %bb.hr ], [ %.02973, %bb.jt ], [ 0, %bb.ana ], [ 0, %.thread4816 ], [ 0, %.thread4847 ], [ %.02973, %out2Prerelease.exit4268 ], [ 0, %bb.wm ], [ 0, %bb.xb ], [ %i.cqk, %.thread4853 ], [ 0, %.thread4866 ], [ %.02973, %bb.hs ], [ %.02973, %bb.xy ], [ %.02973, %.thread4879 ], [ %.02973, %sqlite3VdbeFreeCursor.exit ], [ 0, %bb.xx ], [ %.53.ph, %.thread4944 ], [ %.02973, %bb.ir ], [ 0, %.thread4929 ], [ 0, %.thread4962 ], [ %.02973, %bb.aah ], [ 0, %bb.abd ], [ %.02973, %out2Prerelease.exit4295 ], [ %.58, %.thread4971 ], [ %.60.ph, %.thread4981 ], [ 0, %sqlite3BtreeTransferRow.exit ], [ %.02973, %bb.dm ], [ %.02973, %bb.afa ], [ %.02973, %bb.bfk ], [ 0, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.02973, %.thread4988 ], [ %.64.ph, %.thread5042 ], [ 0, %bb.afz ], [ %.65.ph, %.thread5054 ], [ %.02973, %bb.agp ], [ 0, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.02973, %bb.ss ], [ 0, %.thread5131 ], [ 0, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ 0, %.thread5140 ], [ 0, %sqlite3VdbeMemSetNull.exit4363.thread ], [ 0, %.thread5134 ], [ 0, %..si.unfold.true.jt13 ], [ 0, %.thread5171 ], [ 0, %bb.ank ], [ 0, %bb.amu ], [ 0, %.thread5180 ], [ 0, %.thread5183 ], [ 0, %.thread5202 ], [ 0, %bb.aoh ], [ %.02973, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02973, %sqlite3UnlinkAndDeleteIndex.exit ], [ 0, %sqlite3BtreeTransferRow.exit.thread ], [ %.02973, %bb.arv ], [ 0, %bb.ann ], [ %.02973, %bb.asi ], [ %.02973, %.loopexit.i4379 ], [ %.02973, %bb.asy ], [ %.02973, %bb.ata ], [ %.02973, %bb.atb ], [ %.02973, %bb.ate ], [ %.02973, %bb.atd ], [ %.02973, %bb.atg ], [ %.02973, %bb.atf ], [ %.02973, %bb.aac ], [ %.02973, %bb.aub ], [ %.02973, %sqlite3AddInt64.exit4444 ], [ %.02973, %bb.auh ], [ %.02973, %bb.aul ], [ %.02973, %bb.auk ], [ 0, %sqlite3VdbeMemRelease.exit4452 ], [ 0, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ 0, %bb.avt ], [ 0, %bb.axc ], [ 0, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.02973, %bb.ayb ], [ %.02973, %sqlite3VdbeMemSetNull.exit ], [ %.02973, %bb.ayc ], [ %.02973, %bb.ayd ], [ %.2.i4495, %sqlite3BtreeIncrVacuum.exit ], [ 0, %bb.azq ], [ 0, %sqlite3VdbeMemRelease.exit4543 ], [ 0, %sqlite3VtabCallDestroy.exit ], [ %.97.ph, %.thread5304 ], [ %.98.ph, %.thread5311 ], [ %.02973, %bb.bbi ], [ 0, %bb.aza ], [ %.100.ph, %sqlite3VdbeMemSetNull.exit4562.thread ], [ 0, %bb.bbk ], [ %.02973, %bb.bbz ], [ 0, %bb.bcg ], [ %.02973, %out2Prerelease.exit4572 ], [ %.02973, %sqlite3BtreeMaxPageCount.exit ], [ 0, %sqlite3BtreeLockTable.exit ], [ %.02973, %bb.bdx ], [ %.105.ph, %.thread5346 ], [ %.02973, %bb.beb ], [ %.02973, %bb.beg ], [ %.02973, %bb.beh ], [ %.02973, %filterHash.exit ], [ %.02973, %bb.bfa ], [ %.02973, %bb.gv ], [ %.02973, %sqlite3VdbeMemIntegerify.exit4439 ], [ %.02973, %bb.ja ], [ %.02973, %bb.ju ], [ %.02973, %bb.aad ], [ %.02973, %bb.aae ], [ %.02973, %bb.cy ], [ %.02973, %bb.cz ], [ %.02973, %bb.dc ], [ %.02973, %bb.fp ], [ %.02973, %bb.ft ], [ %.02973, %bb.hp ], [ %.02973, %.thread4727 ], [ %.02973, %bb.kc ], [ %.02973, %bb.kg ], [ %.02973, %bb.kj ], [ %.02973, %bb.lu ], [ %.02973, %bb.lx ], [ %.02973, %bb.ma ], [ %.02973, %bb.mb ], [ %.20.ph, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.02973, %bb.pc ], [ %.02973, %bb.aag ], [ %.02973, %bb.aov ], [ %.02973, %bb.asu ], [ %.02973, %bb.asv ], [ %.02973, %bb.asw ], [ %.02973, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.02973, %bb.axz ], [ %.02973, %bb.ce ], [ 0, %bb.ayg ], [ 0, %sqlite3VtabCallDestroy.exit.thread ], [ %.02973, %bb.bea ], [ %.02973, %bb.bed ], [ %.02973, %bb.dz ], [ 0, %bb.aew ], [ 0, %bb.aez ], [ 0, %bb.aey ], [ 0, %bb.aex ], [ 0, %bb.afy ], [ 0, %bb.aga ], [ %.02973, %bb.agq ], [ 0, %bb.aha ], [ %.02973, %bb.amt ], [ %.02973, %bb.anm ], [ %.02973, %.thread5207 ], [ %.02973, %.loopexit5485 ], [ 0, %bb.avr ], [ 0, %bb.avs ], [ %.02973, %bb.ayf ], [ %.02973, %bb.is ], [ 0, %bb.alg ], [ %.02973, %.lr.ph6266 ], [ %.02973, %bb.pr ], [ %.02973, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02973, %bb.lc ], [ %.22975, %bb.i ], [ %.02973, %bb.aya ]
  %.9 = phi ptr [ %.02963, %bb.h ], [ %.02963, %.loopexit5488 ], [ %.02963, %sqlite3VdbeSorterCompare.exit ], [ %i.it, %bb.m ], [ %.02963, %sqlite3VdbeDeleteAuxData.exit ], [ %.02963, %bb.n ], [ %i.jk, %.thread4737 ], [ %i.kc, %bb.o ], [ %i.kp, %bb.p ], [ %.02963, %bb.q ], [ %i.mz, %bb.ag ], [ %.02963, %out2Prerelease.exit ], [ %.02963, %out2Prerelease.exit4094 ], [ %.02963, %out2Prerelease.exit4096 ], [ %.02963, %bb.be ], [ %.02963, %bb.bd ], [ %.02963, %out2Prerelease.exit4103 ], [ %.02963, %bb.l ], [ %.02963, %bb.bi ], [ %.02963, %bb.bo ], [ %.02963, %.thread4692 ], [ %.02963, %bb.bee ], [ %.12964, %.preheader ], [ %.02963, %bb.aua ], [ %.02963, %bb.da ], [ %.02963, %out2Prerelease.exit4105 ], [ %.02963, %bb.de ], [ %.02963, %sqlite3VdbeMemSetNull.exit4148 ], [ %.02963, %bb.dd ], [ %.02963, %bb.fn ], [ %.02963, %bb.cv ], [ %.02963, %sqlite3VdbeMemIntegerify.exit ], [ %.02963, %bb.hi ], [ %.02963, %bb.hk ], [ %.02963, %bb.hj ], [ %.02963, %.thread4714 ], [ %.02963, %bb.fu ], [ %.02963, %bb.io ], [ %.02963, %bb.fq ], [ %i.ara, %bb.jc ], [ %i.arg, %bb.je ], [ %i.arl, %bb.jf ], [ %.02963, %bb.py ], [ %.02963, %bb.dl ], [ %.02963, %bb.kd ], [ %.02963, %bb.kh ], [ %.02963, %bb.ko ], [ %.02963, %sqlite3VdbeMemSetNull.exit4193 ], [ %.02963, %bb.kt ], [ %.02963, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02963, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02963, %bb.li ], [ %.02963, %bb.lq ], [ %.02963, %bb.kk ], [ %.02963, %bb.lv ], [ %.02963, %bb.lz ], [ %.02963, %bb.ly ], [ %.02963, %bb.hx ], [ %.02963, %bb.hr ], [ %.02963, %bb.jt ], [ %.02963, %bb.ana ], [ %.02963, %.thread4816 ], [ %.02963, %.thread4847 ], [ %.02963, %out2Prerelease.exit4268 ], [ %.02963, %bb.wm ], [ %.02963, %bb.xb ], [ %.02963, %.thread4853 ], [ %.02963, %.thread4866 ], [ %.02963, %bb.hs ], [ %.02963, %bb.xy ], [ %.02963, %.thread4879 ], [ %.02963, %sqlite3VdbeFreeCursor.exit ], [ %.02963, %bb.xx ], [ %.02963, %.thread4944 ], [ %.02963, %bb.ir ], [ %i.daz, %.thread4929 ], [ %.02963, %.thread4962 ], [ %.02963, %bb.aah ], [ %.02963, %bb.abd ], [ %.02963, %out2Prerelease.exit4295 ], [ %.02963, %.thread4971 ], [ %.02963, %.thread4981 ], [ %.02963, %sqlite3BtreeTransferRow.exit ], [ %.02963, %bb.dm ], [ %.02963, %bb.afa ], [ %.02963, %bb.bfk ], [ %.02963, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.02963, %.thread4988 ], [ %.02963, %.thread5042 ], [ %.02963, %bb.afz ], [ %.02963, %.thread5054 ], [ %.02963, %bb.agp ], [ %.02963, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.02963, %bb.ss ], [ %.02963, %.thread5131 ], [ %.02963, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.02963, %.thread5140 ], [ %.02963, %sqlite3VdbeMemSetNull.exit4363.thread ], [ %.02963, %.thread5134 ], [ %.02963, %..si.unfold.true.jt13 ], [ %.02963, %.thread5171 ], [ %.02963, %bb.ank ], [ %.02963, %bb.amu ], [ %.02963, %.thread5180 ], [ %.02963, %.thread5183 ], [ %.02963, %.thread5202 ], [ %.02963, %bb.aoh ], [ %.02963, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02963, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.02963, %sqlite3BtreeTransferRow.exit.thread ], [ %.02963, %bb.arv ], [ %.02963, %bb.ann ], [ %.02963, %bb.asi ], [ %.02963, %.loopexit.i4379 ], [ %.02963, %bb.asy ], [ %.02963, %bb.ata ], [ %.02963, %bb.atb ], [ %.02963, %bb.ate ], [ %.02963, %bb.atd ], [ %.02963, %bb.atg ], [ %.02963, %bb.atf ], [ %.02963, %bb.aac ], [ %.02963, %bb.aub ], [ %.02963, %sqlite3AddInt64.exit4444 ], [ %.02963, %bb.auh ], [ %.02963, %bb.aul ], [ %.02963, %bb.auk ], [ %.02963, %sqlite3VdbeMemRelease.exit4452 ], [ %.02963, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ %.02963, %bb.avt ], [ %.02963, %bb.axc ], [ %.02963, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.02963, %bb.ayb ], [ %.02963, %sqlite3VdbeMemSetNull.exit ], [ %.02963, %bb.ayc ], [ %.02963, %bb.ayd ], [ %.02963, %sqlite3BtreeIncrVacuum.exit ], [ %.02963, %bb.azq ], [ %.02963, %sqlite3VdbeMemRelease.exit4543 ], [ %.02963, %sqlite3VtabCallDestroy.exit ], [ %.02963, %.thread5304 ], [ %.02963, %.thread5311 ], [ %.02963, %bb.bbi ], [ %.02963, %bb.aza ], [ %.02963, %sqlite3VdbeMemSetNull.exit4562.thread ], [ %.02963, %bb.bbk ], [ %.02963, %bb.bbz ], [ %.02963, %bb.bcg ], [ %.02963, %out2Prerelease.exit4572 ], [ %.02963, %sqlite3BtreeMaxPageCount.exit ], [ %.02963, %sqlite3BtreeLockTable.exit ], [ %.02963, %bb.bdx ], [ %.02963, %.thread5346 ], [ %.02963, %bb.beb ], [ %.02963, %bb.beg ], [ %.02963, %bb.beh ], [ %.02963, %filterHash.exit ], [ %.02963, %bb.bfa ], [ %.02963, %bb.gv ], [ %.02963, %sqlite3VdbeMemIntegerify.exit4439 ], [ %.02963, %bb.ja ], [ %.02963, %bb.ju ], [ %.02963, %bb.aad ], [ %.02963, %bb.aae ], [ %.02963, %bb.cy ], [ %.02963, %bb.cz ], [ %.02963, %bb.dc ], [ %.02963, %bb.fp ], [ %.02963, %bb.ft ], [ %.02963, %bb.hp ], [ %.02963, %.thread4727 ], [ %.02963, %bb.kc ], [ %.02963, %bb.kg ], [ %.02963, %bb.kj ], [ %.02963, %bb.lu ], [ %.02963, %bb.lx ], [ %.02963, %bb.ma ], [ %.02963, %bb.mb ], [ %.42967.ph, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.02963, %bb.pc ], [ %.02963, %bb.aag ], [ %.02963, %bb.aov ], [ %.02963, %bb.asu ], [ %.02963, %bb.asv ], [ %.02963, %bb.asw ], [ %.02963, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.02963, %bb.axz ], [ %.02963, %bb.ce ], [ %.02963, %bb.ayg ], [ %.02963, %sqlite3VtabCallDestroy.exit.thread ], [ %.02963, %bb.bea ], [ %.02963, %bb.bed ], [ %.02963, %bb.dz ], [ %.02963, %bb.aew ], [ %.02963, %bb.aez ], [ %.02963, %bb.aey ], [ %.02963, %bb.aex ], [ %.02963, %bb.afy ], [ %.02963, %bb.aga ], [ %.02963, %bb.agq ], [ %.02963, %bb.aha ], [ %.02963, %bb.amt ], [ %.02963, %bb.anm ], [ %.02963, %.thread5207 ], [ %.02963, %.loopexit5485 ], [ %.02963, %bb.avr ], [ %.02963, %bb.avs ], [ %.02963, %bb.ayf ], [ %.02963, %bb.is ], [ %.02963, %bb.alg ], [ %.02963, %.lr.ph6266 ], [ %.02963, %bb.pr ], [ %.02963, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02963, %bb.lc ], [ %.12964, %bb.i ], [ %.02963, %bb.aya ]
  %.4 = phi ptr [ %.02962, %bb.h ], [ %.02962, %.loopexit5488 ], [ %.02962, %sqlite3VdbeSorterCompare.exit ], [ %.02962, %bb.m ], [ %.02962, %sqlite3VdbeDeleteAuxData.exit ], [ %.02962, %bb.n ], [ %.02962, %.thread4737 ], [ %.02962, %bb.o ], [ %.02962, %bb.p ], [ %.02962, %bb.q ], [ %.pre7258, %bb.ag ], [ %.02962, %out2Prerelease.exit ], [ %.02962, %out2Prerelease.exit4094 ], [ %.02962, %out2Prerelease.exit4096 ], [ %.02962, %bb.be ], [ %.02962, %bb.bd ], [ %.02962, %out2Prerelease.exit4103 ], [ %.02962, %bb.l ], [ %.02962, %bb.bi ], [ %.02962, %bb.bo ], [ %.02962, %.thread4692 ], [ %.02962, %bb.bee ], [ %.1, %.preheader ], [ %.02962, %bb.aua ], [ %.02962, %bb.da ], [ %.02962, %out2Prerelease.exit4105 ], [ %.02962, %bb.de ], [ %.02962, %sqlite3VdbeMemSetNull.exit4148 ], [ %.02962, %bb.dd ], [ %.02962, %bb.fn ], [ %.02962, %bb.cv ], [ %.02962, %sqlite3VdbeMemIntegerify.exit ], [ %.02962, %bb.hi ], [ %.02962, %bb.hk ], [ %.02962, %bb.hj ], [ %.02962, %.thread4714 ], [ %.02962, %bb.fu ], [ %.02962, %bb.io ], [ %.02962, %bb.fq ], [ %.02962, %bb.jc ], [ %.02962, %bb.je ], [ %.02962, %bb.jf ], [ %.02962, %bb.py ], [ %.02962, %bb.dl ], [ %.02962, %bb.kd ], [ %.02962, %bb.kh ], [ %.02962, %bb.ko ], [ %.02962, %sqlite3VdbeMemSetNull.exit4193 ], [ %.02962, %bb.kt ], [ %.02962, %sqlite3VdbeBooleanValue.exit4201 ], [ %.02962, %sqlite3VdbeBooleanValue.exit4209 ], [ %.02962, %bb.li ], [ %.02962, %bb.lq ], [ %.02962, %bb.kk ], [ %.02962, %bb.lv ], [ %.02962, %bb.lz ], [ %.02962, %bb.ly ], [ %.02962, %bb.hx ], [ %.02962, %bb.hr ], [ %.02962, %bb.jt ], [ %.02962, %bb.ana ], [ %.02962, %.thread4816 ], [ %.02962, %.thread4847 ], [ %.02962, %out2Prerelease.exit4268 ], [ %.02962, %bb.wm ], [ %.02962, %bb.xb ], [ %.02962, %.thread4853 ], [ %.02962, %.thread4866 ], [ %.02962, %bb.hs ], [ %.02962, %bb.xy ], [ %.02962, %.thread4879 ], [ %.02962, %sqlite3VdbeFreeCursor.exit ], [ %.02962, %bb.xx ], [ %.02962, %.thread4944 ], [ %.02962, %bb.ir ], [ %.02962, %.thread4929 ], [ %.02962, %.thread4962 ], [ %.02962, %bb.aah ], [ %.02962, %bb.abd ], [ %.02962, %out2Prerelease.exit4295 ], [ %.02962, %.thread4971 ], [ %.02962, %.thread4981 ], [ %.02962, %sqlite3BtreeTransferRow.exit ], [ %.02962, %bb.dm ], [ %.02962, %bb.afa ], [ %.02962, %bb.bfk ], [ %.02962, %sqlite3VdbeSorterRowkey.exit.thread5027 ], [ %.02962, %.thread4988 ], [ %.02962, %.thread5042 ], [ %.02962, %bb.afz ], [ %.02962, %.thread5054 ], [ %.02962, %bb.agp ], [ %.02962, %sqlite3BtreeFirst.exit.thread.thread5404 ], [ %.02962, %bb.ss ], [ %.02962, %.thread5131 ], [ %.02962, %sqlite3VdbeSorterRewind.exit.thread5086 ], [ %.02962, %.thread5140 ], [ %.02962, %sqlite3VdbeMemSetNull.exit4363.thread ], [ %.02962, %.thread5134 ], [ %.02962, %..si.unfold.true.jt13 ], [ %.02962, %.thread5171 ], [ %.02962, %bb.ank ], [ %.02962, %bb.amu ], [ %.02962, %.thread5180 ], [ %.02962, %.thread5183 ], [ %.02962, %.thread5202 ], [ %.02962, %bb.aoh ], [ %.02962, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02962, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.02962, %sqlite3BtreeTransferRow.exit.thread ], [ %.02962, %bb.arv ], [ %.02962, %bb.ann ], [ %.02962, %bb.asi ], [ %.02962, %.loopexit.i4379 ], [ %.02962, %bb.asy ], [ %.02962, %bb.ata ], [ %.02962, %bb.atb ], [ %.02962, %bb.ate ], [ %.02962, %bb.atd ], [ %.02962, %bb.atg ], [ %.02962, %bb.atf ], [ %.02962, %bb.aac ], [ %.02962, %bb.aub ], [ %.02962, %sqlite3AddInt64.exit4444 ], [ %.02962, %bb.auh ], [ %.02962, %bb.aul ], [ %.02962, %bb.auk ], [ %.02962, %sqlite3VdbeMemRelease.exit4452 ], [ %.02962, %sqlite3VdbeMemSetInt64.exit4468.2 ], [ %.02962, %bb.avt ], [ %.02962, %bb.axc ], [ %.02962, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.02962, %bb.ayb ], [ %.02962, %sqlite3VdbeMemSetNull.exit ], [ %.02962, %bb.ayc ], [ %.02962, %bb.ayd ], [ %.02962, %sqlite3BtreeIncrVacuum.exit ], [ %.02962, %bb.azq ], [ %.02962, %sqlite3VdbeMemRelease.exit4543 ], [ %.02962, %sqlite3VtabCallDestroy.exit ], [ %.02962, %.thread5304 ], [ %.02962, %.thread5311 ], [ %.02962, %bb.bbi ], [ %.02962, %bb.aza ], [ %.02962, %sqlite3VdbeMemSetNull.exit4562.thread ], [ %.02962, %bb.bbk ], [ %.02962, %bb.bbz ], [ %.02962, %bb.bcg ], [ %.02962, %out2Prerelease.exit4572 ], [ %.02962, %sqlite3BtreeMaxPageCount.exit ], [ %.02962, %sqlite3BtreeLockTable.exit ], [ %.02962, %bb.bdx ], [ %.02962, %.thread5346 ], [ %.02962, %bb.beb ], [ %.02962, %bb.beg ], [ %.02962, %bb.beh ], [ %.02962, %filterHash.exit ], [ %.02962, %bb.bfa ], [ %.02962, %bb.gv ], [ %.02962, %sqlite3VdbeMemIntegerify.exit4439 ], [ %.02962, %bb.ja ], [ %.02962, %bb.ju ], [ %.02962, %bb.aad ], [ %.02962, %bb.aae ], [ %.02962, %bb.cy ], [ %.02962, %bb.cz ], [ %.02962, %bb.dc ], [ %.02962, %bb.fp ], [ %.02962, %bb.ft ], [ %.02962, %bb.hp ], [ %.02962, %.thread4727 ], [ %.02962, %bb.kc ], [ %.02962, %bb.kg ], [ %.02962, %bb.kj ], [ %.02962, %bb.lu ], [ %.02962, %bb.lx ], [ %.02962, %bb.ma ], [ %.02962, %bb.mb ], [ %.02962, %sqlite3VdbeMemSetNull.exit4217.thread ], [ %.02962, %bb.pc ], [ %.02962, %bb.aag ], [ %.02962, %bb.aov ], [ %.02962, %bb.asu ], [ %.02962, %bb.asv ], [ %.02962, %bb.asw ], [ %.02962, %sqlite3VdbeMemIntegerify.exit4439.thread ], [ %.02962, %bb.axz ], [ %.02962, %bb.ce ], [ %.02962, %bb.ayg ], [ %.02962, %sqlite3VtabCallDestroy.exit.thread ], [ %.02962, %bb.bea ], [ %.02962, %bb.bed ], [ %.02962, %bb.dz ], [ %.02962, %bb.aew ], [ %.02962, %bb.aez ], [ %.02962, %bb.aey ], [ %.02962, %bb.aex ], [ %.02962, %bb.afy ], [ %.02962, %bb.aga ], [ %.02962, %bb.agq ], [ %.02962, %bb.aha ], [ %.02962, %bb.amt ], [ %.02962, %bb.anm ], [ %.02962, %.thread5207 ], [ %.02962, %.loopexit5485 ], [ %.02962, %bb.avr ], [ %.02962, %bb.avs ], [ %.02962, %bb.ayf ], [ %.02962, %bb.is ], [ %.02962, %bb.alg ], [ %.02962, %.lr.ph6266 ], [ %.02962, %bb.pr ], [ %.02962, %sqlite3VdbeRealValue.exit.i4206 ], [ %.02962, %bb.lc ], [ %.1, %bb.i ], [ %.02962, %bb.aya ]
  %i.ive = getelementptr inbounds nuw i8, ptr %.9, i64 24
  br label %bb.h

sqlite3VdbeSorterRowkey.exit.loopexit12587:       ; preds = %bb.uo, %.thread4799, %sqlite3Strlen30.exit4248, %bb.xj, %bb.xv, %bb.agw, %sqlite3FaultSim.exit.i.i.i.i, %sqlite3FaultSim.exit.thread.i.i.i.i, %bb.akg, %bb.ahg, %sqlite3VdbeSorterRewind.exit, %.thread5134, %bb.amd, %sqlite3VdbeChangeEncoding.exit4484, %bb.bcg, %sqlite3VdbeChangeEncoding.exit4570, %sqlite3BtreeIsEmpty.exit, %bb.hm, %.thread4714, %bb.xb, %bb.abd, %bb.aoh, %bb.axc, %sqlite3VtabCallDestroy.exit, %bb.hh, %bb.wq, %sqlite3VdbeSorterNext.exit, %bb.wm, %sqlite3BtreeTransferRow.exit, %bb.ank, %bb.azq, %sqlite3VdbeMemRelease.exit4543, %bb.xx, %bb.aev, %sqlite3VdbeMemClearAndResize.exit.i, %bb.afx, %bb.amu, %bb.ann, %sqlite3VdbeMemRelease.exit4452, %sqlite3BtreeIncrVacuum.exit, %._crit_edge6248, %bb.bca, %sqlite3VdbeDeleteAuxData.exit, %sqlite3VdbeChangeEncoding.exit4414.thread
  %.110.ph = phi i32 [ %.106, %sqlite3VdbeDeleteAuxData.exit ], [ %i.ifz, %bb.bca ], [ %i.idp, %._crit_edge6248 ], [ %.2.i4495, %sqlite3BtreeIncrVacuum.exit ], [ %.84, %sqlite3VdbeMemRelease.exit4452 ], [ %i.fug, %bb.ann ], [ %i.fqf, %bb.amu ], [ %i.ehl, %bb.afx ], [ 7, %sqlite3VdbeMemClearAndResize.exit.i ], [ %i.ebi, %bb.aev ], [ %i.cun, %bb.xx ], [ %.96, %sqlite3VdbeMemRelease.exit4543 ], [ %.1.i45265292, %bb.azq ], [ %i.ftj, %bb.ank ], [ %i.dxk, %sqlite3BtreeTransferRow.exit ], [ %i.ckw, %bb.wm ], [ %.67, %sqlite3VdbeSorterNext.exit ], [ 516, %bb.wq ], [ 20, %bb.hh ], [ %i.hxo, %sqlite3VtabCallDestroy.exit ], [ %i.hjt, %bb.axc ], [ %i.fxj, %bb.aoh ], [ %i.dhw, %bb.abd ], [ %.40, %bb.xb ], [ %i.amb, %.thread4714 ], [ %i.alx, %bb.hm ], [ %.10.i, %sqlite3BtreeIsEmpty.exit ], [ %i.iha, %bb.bcg ], [ %.91, %sqlite3VdbeChangeEncoding.exit4484 ], [ %i.fnf, %.thread5134 ], [ %.66, %sqlite3VdbeSorterRewind.exit ], [ %i.eni, %bb.ahg ], [ %i.fbp, %bb.akg ], [ 7, %sqlite3FaultSim.exit.thread.i.i.i.i ], [ 7, %sqlite3FaultSim.exit.i.i.i.i ], [ %i.elb, %bb.agw ], [ %i.cua, %bb.xv ], [ %i.crt, %bb.xj ], [ %i.caf, %sqlite3Strlen30.exit4248 ], [ %.26.lcssa, %.thread4799 ], [ %i.cew, %bb.uo ], [ %i.fnd, %bb.amd ], [ 9, %sqlite3VdbeChangeEncoding.exit4414.thread ], [ %i.igu, %sqlite3VdbeChangeEncoding.exit4570 ]
  %.10.ph = phi ptr [ %.02963, %sqlite3VdbeDeleteAuxData.exit ], [ %.02963, %bb.bca ], [ %.02963, %._crit_edge6248 ], [ %.02963, %sqlite3BtreeIncrVacuum.exit ], [ %.02963, %sqlite3VdbeMemRelease.exit4452 ], [ %.02963, %bb.ann ], [ %.02963, %bb.amu ], [ %.02963, %bb.afx ], [ %.02963, %sqlite3VdbeMemClearAndResize.exit.i ], [ %.02963, %bb.aev ], [ %.02963, %bb.xx ], [ %.02963, %sqlite3VdbeMemRelease.exit4543 ], [ %.02963, %bb.azq ], [ %.02963, %bb.ank ], [ %.02963, %sqlite3BtreeTransferRow.exit ], [ %.02963, %bb.wm ], [ %.02963, %sqlite3VdbeSorterNext.exit ], [ %.02963, %bb.wq ], [ %.02963, %bb.hh ], [ %.02963, %sqlite3VtabCallDestroy.exit ], [ %.02963, %bb.axc ], [ %.02963, %bb.aoh ], [ %.02963, %bb.abd ], [ %.02963, %bb.xb ], [ %.02963, %.thread4714 ], [ %.02963, %bb.hm ], [ %.02963, %sqlite3BtreeIsEmpty.exit ], [ %.02963, %bb.bcg ], [ %.02963, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.02963, %.thread5134 ], [ %.02963, %sqlite3VdbeSorterRewind.exit ], [ %.02963, %bb.ahg ], [ %.02963, %bb.akg ], [ %.02963, %sqlite3FaultSim.exit.thread.i.i.i.i ], [ %.02963, %sqlite3FaultSim.exit.i.i.i.i ], [ %.02963, %bb.agw ], [ %.02963, %bb.xv ], [ %.02963, %bb.xj ], [ %.02963, %sqlite3Strlen30.exit4248 ], [ %.02963, %.thread4799 ], [ %.02963, %bb.uo ], [ %.02963, %bb.amd ], [ %.12964, %sqlite3VdbeChangeEncoding.exit4414.thread ], [ %.02963, %sqlite3VdbeChangeEncoding.exit4570 ]
  %.5.ph = phi ptr [ %.02962, %sqlite3VdbeDeleteAuxData.exit ], [ %.02962, %bb.bca ], [ %.02962, %._crit_edge6248 ], [ %.02962, %sqlite3BtreeIncrVacuum.exit ], [ %.02962, %sqlite3VdbeMemRelease.exit4452 ], [ %.02962, %bb.ann ], [ %.02962, %bb.amu ], [ %.02962, %bb.afx ], [ %.02962, %sqlite3VdbeMemClearAndResize.exit.i ], [ %.02962, %bb.aev ], [ %.02962, %bb.xx ], [ %.02962, %sqlite3VdbeMemRelease.exit4543 ], [ %.02962, %bb.azq ], [ %.02962, %bb.ank ], [ %.02962, %sqlite3BtreeTransferRow.exit ], [ %.02962, %bb.wm ], [ %.02962, %sqlite3VdbeSorterNext.exit ], [ %.02962, %bb.wq ], [ %.02962, %bb.hh ], [ %.02962, %sqlite3VtabCallDestroy.exit ], [ %.02962, %bb.axc ], [ %.02962, %bb.aoh ], [ %.02962, %bb.abd ], [ %.02962, %bb.xb ], [ %.02962, %.thread4714 ], [ %.02962, %bb.hm ], [ %.02962, %sqlite3BtreeIsEmpty.exit ], [ %.02962, %bb.bcg ], [ %.02962, %sqlite3VdbeChangeEncoding.exit4484 ], [ %.02962, %.thread5134 ], [ %.02962, %sqlite3VdbeSorterRewind.exit ], [ %.02962, %bb.ahg ], [ %.02962, %bb.akg ], [ %.02962, %sqlite3FaultSim.exit.thread.i.i.i.i ], [ %.02962, %sqlite3FaultSim.exit.i.i.i.i ], [ %.02962, %bb.agw ], [ %.02962, %bb.xv ], [ %.02962, %bb.xj ], [ %.02962, %sqlite3Strlen30.exit4248 ], [ %.02962, %.thread4799 ], [ %.02962, %bb.uo ], [ %.02962, %bb.amd ], [ %.1, %sqlite3VdbeChangeEncoding.exit4414.thread ], [ %.02962, %sqlite3VdbeChangeEncoding.exit4570 ]
  br label %sqlite3VdbeSorterRowkey.exit

sqlite3VdbeSorterRowkey.exit:                     ; preds = %bb.akm, %bb.agz, %bb.ty, %.lr.ph6302, %bb.j, %bb.bgs, %sqlite3VdbeSorterRowkey.exit.loopexit12587, %bb.f, %.thread7677, %sqlite3BtreeTransferRow.exit.thread7683, %sqlite3BtreeTransferRow.exit.thread7686, %sqlite3VtabCallDestroy.exit.thread7697, %bb.ayx, %bb.ayw, %bb.awt, %bb.ajw, %bb.akv, %sqlite3_mutex_enter.exit.i.i74.i.i, %bb.aky, %bb.akz, %bb.ajv, %sqlite3_mutex_enter.exit.i.i75.i.i.i, %._crit_edge.i.i.i, %bb.xu, %.thread4803, %bb.tc, %.critedge3913, %bb.tp, %bb.anx, %.loopexit5490, %.thread5015, %.thread4898, %sqlite3VdbeMemSetNull.exit4217, %sqlite3VdbeMemSetNull.exit4562, %bb.bbe, %bb.bax, %bb.awe, %sqlite3VdbeChangeEncoding.exit4460, %.critedge46, %sqlite3VdbeChangeEncoding.exit4414, %bb.aog, %bb.anr, %.loopexit5493, %.loopexit5494, %sqlite3VdbeMemSetNull.exit4363, %.loopexit5495, %bb.amb, %bb.agv, %bb.agl, %bb.acu, %.split.loop.exit6322, %bb.aax, %.loopexit5476, %.loopexit5498, %bb.va, %bb.sz, %bb.ps, %sqlite3VdbeCheckFkImmediate.exit, %sqlite3OomFault.exit4647, %sqlite3VdbeMemSetNull.exit4132
  %.43015 = phi i64 [ %.73018, %sqlite3OomFault.exit4647 ], [ %.13012, %.loopexit5493 ], [ %.13012, %sqlite3VdbeSorterRowkey.exit.loopexit12587 ], [ %.13012, %sqlite3VdbeMemSetNull.exit4562 ], [ %.13012, %sqlite3VdbeMemSetNull.exit4132 ], [ %.13012, %sqlite3VdbeCheckFkImmediate.exit ], [ %.13012, %bb.ty ], [ %.13012, %bb.anx ], [ %.13012, %bb.anr ], [ %.13012, %sqlite3VdbeMemSetNull.exit4217 ], [ %.13012, %bb.ps ], [ %.13012, %bb.sz ], [ %.13012, %._crit_edge.i.i.i ], [ %.13012, %bb.va ], [ %.13012, %.loopexit5498 ], [ %.13012, %.thread7677 ], [ %.13012, %bb.aog ], [ %.13012, %bb.ayx ], [ %.13012, %.thread4803 ], [ %.13012, %sqlite3VdbeChangeEncoding.exit4414 ], [ %.13012, %.thread4898 ], [ %.13012, %.loopexit5476 ], [ %.13012, %bb.aax ], [ %.13012, %.critedge46 ], [ %.13012, %.split.loop.exit6322 ], [ %.13012, %bb.acu ], [ %.13012, %bb.bax ], [ %.13012, %sqlite3VdbeChangeEncoding.exit4460 ], [ %.13012, %.thread5015 ], [ %.13012, %bb.awe ], [ %.13012, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.13012, %bb.agl ], [ %.13012, %bb.agv ], [ %.13012, %bb.xu ], [ %.13012, %.lr.ph6302 ], [ %.13012, %bb.bbe ], [ %.13012, %.loopexit5490 ], [ %.13012, %bb.amb ], [ %.13012, %bb.ajw ], [ %.13012, %.loopexit5495 ], [ %.13012, %sqlite3VdbeMemSetNull.exit4363 ], [ %.13012, %bb.awt ], [ %.13012, %.loopexit5494 ], [ %.13012, %bb.ajv ], [ %.13012, %bb.akz ], [ %.13012, %bb.aky ], [ -1, %bb.j ], [ -1, %bb.bgs ], [ %.13012, %bb.tp ], [ %.13012, %.critedge3913 ], [ %.13012, %bb.tc ], [ %.13012, %sqlite3_mutex_enter.exit.i.i74.i.i ], [ %.13012, %bb.akv ], [ %.13012, %sqlite3VtabCallDestroy.exit.thread7697 ], [ %.13012, %sqlite3BtreeTransferRow.exit.thread7686 ], [ %.13012, %bb.ayw ], [ %.13012, %sqlite3BtreeTransferRow.exit.thread7683 ], [ %.03011, %bb.f ], [ %.13012, %bb.agz ], [ %.13012, %bb.akm ] ; 4 uses
  %.13006 = phi i64 [ %.33008, %sqlite3OomFault.exit4647 ], [ %i.hn, %.loopexit5493 ], [ %i.hn, %sqlite3VdbeSorterRowkey.exit.loopexit12587 ], [ %i.hn, %sqlite3VdbeMemSetNull.exit4562 ], [ %i.hn, %sqlite3VdbeMemSetNull.exit4132 ], [ %i.hn, %sqlite3VdbeCheckFkImmediate.exit ], [ %i.hn, %bb.ty ], [ %i.hn, %bb.anx ], [ %i.hn, %bb.anr ], [ %i.hn, %sqlite3VdbeMemSetNull.exit4217 ], [ %i.hn, %bb.ps ], [ %i.hn, %bb.sz ], [ %i.hn, %._crit_edge.i.i.i ], [ %i.hn, %bb.va ], [ %i.hn, %.loopexit5498 ], [ %i.hn, %.thread7677 ], [ %i.hn, %bb.aog ], [ %i.hn, %bb.ayx ], [ %i.hn, %.thread4803 ], [ %i.hn, %sqlite3VdbeChangeEncoding.exit4414 ], [ %i.hn, %.thread4898 ], [ %i.hn, %.loopexit5476 ], [ %i.hn, %bb.aax ], [ %i.hn, %.critedge46 ], [ %i.hn, %.split.loop.exit6322 ], [ %i.hn, %bb.acu ], [ %i.hn, %bb.bax ], [ %i.hn, %sqlite3VdbeChangeEncoding.exit4460 ], [ %i.hn, %.thread5015 ], [ %i.hn, %bb.awe ], [ %i.hn, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %i.hn, %bb.agl ], [ %i.hn, %bb.agv ], [ %i.hn, %bb.xu ], [ %i.hn, %.lr.ph6302 ], [ %i.hn, %bb.bbe ], [ %i.hn, %.loopexit5490 ], [ %i.hn, %bb.amb ], [ %i.hn, %bb.ajw ], [ %i.hn, %.loopexit5495 ], [ %i.hn, %sqlite3VdbeMemSetNull.exit4363 ], [ %i.hn, %bb.awt ], [ %i.hn, %.loopexit5494 ], [ %i.hn, %bb.ajv ], [ %i.hn, %bb.akz ], [ %i.hn, %bb.aky ], [ %i.hn, %bb.j ], [ %.23007, %bb.bgs ], [ %i.hn, %bb.tp ], [ %i.hn, %.critedge3913 ], [ %i.hn, %bb.tc ], [ %i.hn, %sqlite3_mutex_enter.exit.i.i74.i.i ], [ %i.hn, %bb.akv ], [ %i.hn, %sqlite3VtabCallDestroy.exit.thread7697 ], [ %i.hn, %sqlite3BtreeTransferRow.exit.thread7686 ], [ %i.hn, %bb.ayw ], [ %i.hn, %sqlite3BtreeTransferRow.exit.thread7683 ], [ 0, %bb.f ], [ %i.hn, %bb.agz ], [ %i.hn, %bb.akm ] ; 4 uses
  %.42992 = phi i8 [ %.62994, %sqlite3OomFault.exit4647 ], [ %.02988, %.loopexit5493 ], [ %.02988, %sqlite3VdbeSorterRowkey.exit.loopexit12587 ], [ %.02988, %sqlite3VdbeMemSetNull.exit4562 ], [ %.02988, %sqlite3VdbeMemSetNull.exit4132 ], [ %.02988, %sqlite3VdbeCheckFkImmediate.exit ], [ %.02988, %bb.ty ], [ %.02988, %bb.anx ], [ %.02988, %bb.anr ], [ %.02988, %sqlite3VdbeMemSetNull.exit4217 ], [ %.02988, %bb.ps ], [ %.02988, %bb.sz ], [ %.02988, %._crit_edge.i.i.i ], [ %.02988, %bb.va ], [ %.02988, %.loopexit5498 ], [ %.02988, %.thread7677 ], [ %.02988, %bb.aog ], [ %.02988, %bb.ayx ], [ %.02988, %.thread4803 ], [ %.02988, %sqlite3VdbeChangeEncoding.exit4414 ], [ %.02988, %.thread4898 ], [ %.02988, %.loopexit5476 ], [ %.02988, %bb.aax ], [ %.02988, %.critedge46 ], [ %.02988, %.split.loop.exit6322 ], [ %.02988, %bb.acu ], [ %.02988, %bb.bax ], [ %.02988, %sqlite3VdbeChangeEncoding.exit4460 ], [ %.02988, %.thread5015 ], [ %.02988, %bb.awe ], [ %.02988, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.02988, %bb.agl ], [ %.02988, %bb.agv ], [ %.02988, %bb.xu ], [ %.02988, %.lr.ph6302 ], [ %.02988, %bb.bbe ], [ %.02988, %.loopexit5490 ], [ %.02988, %bb.amb ], [ %.02988, %bb.ajw ], [ %.02988, %.loopexit5495 ], [ %.02988, %sqlite3VdbeMemSetNull.exit4363 ], [ %.02988, %bb.awt ], [ %.02988, %.loopexit5494 ], [ %.02988, %bb.ajv ], [ %.02988, %bb.akz ], [ %.02988, %bb.aky ], [ %.02988, %bb.j ], [ %.52993, %bb.bgs ], [ %.02988, %bb.tp ], [ %.02988, %.critedge3913 ], [ %.02988, %bb.tc ], [ %.02988, %sqlite3_mutex_enter.exit.i.i74.i.i ], [ %.02988, %bb.akv ], [ %.02988, %sqlite3VtabCallDestroy.exit.thread7697 ], [ %.02988, %sqlite3BtreeTransferRow.exit.thread7686 ], [ %.02988, %bb.ayw ], [ %.02988, %sqlite3BtreeTransferRow.exit.thread7683 ], [ 0, %bb.f ], [ %.02988, %bb.agz ], [ %.02988, %bb.akm ] ; 5 uses
  %.110 = phi i32 [ 7, %sqlite3OomFault.exit4647 ], [ %.77, %.loopexit5493 ], [ %.110.ph, %sqlite3VdbeSorterRowkey.exit.loopexit12587 ], [ %.99, %sqlite3VdbeMemSetNull.exit4562 ], [ 18, %sqlite3VdbeMemSetNull.exit4132 ], [ %i.zg, %sqlite3VdbeCheckFkImmediate.exit ], [ %i.ccv, %bb.ty ], [ %i.fvn, %bb.anx ], [ %i.fux, %bb.anr ], [ %.20, %sqlite3VdbeMemSetNull.exit4217 ], [ 3091, %bb.ps ], [ %i.bzi, %bb.sz ], [ %.7.i.i.i, %._crit_edge.i.i.i ], [ %.34, %bb.va ], [ %.39, %.loopexit5498 ], [ 11, %.thread7677 ], [ %.82, %bb.aog ], [ %.0.i4511, %bb.ayx ], [ %i.cce, %.thread4803 ], [ %i.glf, %sqlite3VdbeChangeEncoding.exit4414 ], [ %.51, %.thread4898 ], [ %.53, %.loopexit5476 ], [ %.54, %bb.aax ], [ 1, %.critedge46 ], [ %.59, %.split.loop.exit6322 ], [ %i.dnz, %bb.acu ], [ %.97, %bb.bax ], [ %.87, %sqlite3VdbeChangeEncoding.exit4460 ], [ 7, %.thread5015 ], [ %.120.i, %bb.awe ], [ %.7.i.i.i, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.64, %bb.agl ], [ %i.ekj, %bb.agv ], [ %.43, %bb.xu ], [ %i.cdf, %.lr.ph6302 ], [ %i.ibf, %bb.bbe ], [ %.105, %.loopexit5490 ], [ %.68, %bb.amb ], [ %.7.i.i.i, %bb.ajw ], [ %.71, %.loopexit5495 ], [ %.73, %sqlite3VdbeMemSetNull.exit4363 ], [ 1, %bb.awt ], [ %.76, %.loopexit5494 ], [ %.7.i.i.i, %bb.ajv ], [ 7, %bb.akz ], [ 7, %bb.aky ], [ 9, %bb.j ], [ 9, %bb.bgs ], [ 5, %bb.tp ], [ 1, %.critedge3913 ], [ 5, %bb.tc ], [ 7, %sqlite3_mutex_enter.exit.i.i74.i.i ], [ 7, %bb.akv ], [ 6, %sqlite3VtabCallDestroy.exit.thread7697 ], [ 11, %sqlite3BtreeTransferRow.exit.thread7686 ], [ %.0.i4511, %bb.ayw ], [ 11, %sqlite3BtreeTransferRow.exit.thread7683 ], [ 9, %bb.f ], [ %i.emd, %bb.agz ], [ %i.fda, %bb.akm ] ; 2 uses
  %.10 = phi ptr [ %.13, %sqlite3OomFault.exit4647 ], [ %.02963, %.loopexit5493 ], [ %.10.ph, %sqlite3VdbeSorterRowkey.exit.loopexit12587 ], [ %.02963, %sqlite3VdbeMemSetNull.exit4562 ], [ %.02963, %sqlite3VdbeMemSetNull.exit4132 ], [ %.02963, %sqlite3VdbeCheckFkImmediate.exit ], [ %.02963, %bb.ty ], [ %.02963, %bb.anx ], [ %.02963, %bb.anr ], [ %.02963, %sqlite3VdbeMemSetNull.exit4217 ], [ %.02963, %bb.ps ], [ %.02963, %bb.sz ], [ %.02963, %._crit_edge.i.i.i ], [ %.02963, %bb.va ], [ %.02963, %.loopexit5498 ], [ %.02963, %.thread7677 ], [ %.02963, %bb.aog ], [ %.02963, %bb.ayx ], [ %.02963, %.thread4803 ], [ %.02963, %sqlite3VdbeChangeEncoding.exit4414 ], [ %.02963, %.thread4898 ], [ %.02963, %.loopexit5476 ], [ %.02963, %bb.aax ], [ %.02963, %.critedge46 ], [ %.02963, %.split.loop.exit6322 ], [ %.02963, %bb.acu ], [ %.02963, %bb.bax ], [ %.02963, %sqlite3VdbeChangeEncoding.exit4460 ], [ %.02963, %.thread5015 ], [ %.02963, %bb.awe ], [ %.02963, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.02963, %bb.agl ], [ %.02963, %bb.agv ], [ %.02963, %bb.xu ], [ %.02963, %.lr.ph6302 ], [ %.02963, %bb.bbe ], [ %.02963, %.loopexit5490 ], [ %.02963, %bb.amb ], [ %.02963, %bb.ajw ], [ %.02963, %.loopexit5495 ], [ %.02963, %sqlite3VdbeMemSetNull.exit4363 ], [ %.02963, %bb.awt ], [ %.02963, %.loopexit5494 ], [ %.02963, %bb.ajv ], [ %.02963, %bb.akz ], [ %.02963, %bb.aky ], [ %.12964, %bb.j ], [ %.11, %bb.bgs ], [ %.02963, %bb.tp ], [ %.02963, %.critedge3913 ], [ %.02963, %bb.tc ], [ %.02963, %sqlite3_mutex_enter.exit.i.i74.i.i ], [ %.02963, %bb.akv ], [ %.02963, %sqlite3VtabCallDestroy.exit.thread7697 ], [ %.02963, %sqlite3BtreeTransferRow.exit.thread7686 ], [ %.02963, %bb.ayw ], [ %.02963, %sqlite3BtreeTransferRow.exit.thread7683 ], [ %i.am, %bb.f ], [ %.02963, %bb.agz ], [ %.02963, %bb.akm ] ; 5 uses
  %.5 = phi ptr [ %.7, %sqlite3OomFault.exit4647 ], [ %.02962, %.loopexit5493 ], [ %.5.ph, %sqlite3VdbeSorterRowkey.exit.loopexit12587 ], [ %.02962, %sqlite3VdbeMemSetNull.exit4562 ], [ %.02962, %sqlite3VdbeMemSetNull.exit4132 ], [ %.02962, %sqlite3VdbeCheckFkImmediate.exit ], [ %.02962, %bb.ty ], [ %.02962, %bb.anx ], [ %.02962, %bb.anr ], [ %.02962, %sqlite3VdbeMemSetNull.exit4217 ], [ %.02962, %bb.ps ], [ %.02962, %bb.sz ], [ %.02962, %._crit_edge.i.i.i ], [ %.02962, %bb.va ], [ %.02962, %.loopexit5498 ], [ %.02962, %.thread7677 ], [ %.02962, %bb.aog ], [ %.02962, %bb.ayx ], [ %.02962, %.thread4803 ], [ %.02962, %sqlite3VdbeChangeEncoding.exit4414 ], [ %.02962, %.thread4898 ], [ %.02962, %.loopexit5476 ], [ %.02962, %bb.aax ], [ %.02962, %.critedge46 ], [ %.02962, %.split.loop.exit6322 ], [ %.02962, %bb.acu ], [ %.02962, %bb.bax ], [ %.02962, %sqlite3VdbeChangeEncoding.exit4460 ], [ %.02962, %.thread5015 ], [ %.02962, %bb.awe ], [ %.02962, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.02962, %bb.agl ], [ %.02962, %bb.agv ], [ %.02962, %bb.xu ], [ %.02962, %.lr.ph6302 ], [ %.02962, %bb.bbe ], [ %.02962, %.loopexit5490 ], [ %.02962, %bb.amb ], [ %.02962, %bb.ajw ], [ %.02962, %.loopexit5495 ], [ %.02962, %sqlite3VdbeMemSetNull.exit4363 ], [ %.02962, %bb.awt ], [ %.02962, %.loopexit5494 ], [ %.02962, %bb.ajv ], [ %.02962, %bb.akz ], [ %.02962, %bb.aky ], [ %.1, %bb.j ], [ %.6, %bb.bgs ], [ %.02962, %bb.tp ], [ %.02962, %.critedge3913 ], [ %.02962, %bb.tc ], [ %.02962, %sqlite3_mutex_enter.exit.i.i74.i.i ], [ %.02962, %bb.akv ], [ %.02962, %sqlite3VtabCallDestroy.exit.thread7697 ], [ %.02962, %sqlite3BtreeTransferRow.exit.thread7686 ], [ %.02962, %bb.ayw ], [ %.02962, %sqlite3BtreeTransferRow.exit.thread7683 ], [ %i.am, %bb.f ], [ %.02962, %bb.agz ], [ %.02962, %bb.akm ] ; 5 uses
  %i.ivf = getelementptr inbounds nuw i8, ptr %i.an, i64 103 ; 3 uses
  %i.ivg = load i8, ptr %i.ivf, align 1, !tbaa !552
  %.not3885 = icmp eq i8 %i.ivg, 0
  br i1 %.not3885, label %bb.bfr, label %bb.bft

bb.bfr:                                           ; preds = %sqlite3VdbeSorterRowkey.exit
  %i.ivh = icmp eq i32 %.110, 8458
  br i1 %i.ivh, label %bb.bfs, label %bb.bft

bb.bfs:                                           ; preds = %bb.bfr
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 104882, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %bb.bft

bb.bft:                                           ; preds = %sqlite3VdbeSorterRowkey.exit, %bb.bfr, %bb.bfs
  %.111 = phi i32 [ %.110, %bb.bfr ], [ 11, %bb.bfs ], [ 7, %sqlite3VdbeSorterRowkey.exit ] ; 7 uses
  %i.ivi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ivj = load ptr, ptr %i.ivi, align 8, !tbaa !609
  %i.ivk = icmp eq ptr %i.ivj, null
  %i.ivl = icmp ne i32 %.111, 3082                ; 2 uses
  %or.cond50 = select i1 %i.ivk, i1 %i.ivl, i1 false
  br i1 %or.cond50, label %bb.bfu, label %bb.bga

bb.bfu:                                           ; preds = %bb.bft
  switch i32 %.111, label %bb.bfx [
    i32 516, label %sqlite3ErrStr.exit
    i32 100, label %bb.bfv
    i32 101, label %bb.bfw
  ]

bb.bfv:                                           ; preds = %bb.bfu
  br label %sqlite3ErrStr.exit

bb.bfw:                                           ; preds = %bb.bfu
  br label %sqlite3ErrStr.exit

bb.bfx:                                           ; preds = %bb.bfu
  %i.ivm = and i32 %.111, 255                     ; 2 uses
  %i.ivn = icmp samesign ult i32 %i.ivm, 29
  br i1 %i.ivn, label %bb.bfy, label %sqlite3ErrStr.exit

bb.bfy:                                           ; preds = %bb.bfx
  %i.ivo = zext nneg i32 %i.ivm to i64            ; 2 uses
  %i.ivp = shl nuw nsw i64 1, %i.ivo
  %i.ivq = and i64 %i.ivp, 21037060
  %.not.not.i = icmp eq i64 %i.ivq, 0
  br i1 %.not.not.i, label %bb.bfz, label %sqlite3ErrStr.exit

bb.bfz:                                           ; preds = %bb.bfy
  %i.ivr = getelementptr inbounds nuw [8 x i8], ptr @sqlite3ErrStr.aMsg, i64 %i.ivo
  %i.ivs = load ptr, ptr %i.ivr, align 8, !tbaa !253
  br label %sqlite3ErrStr.exit

sqlite3ErrStr.exit:                               ; preds = %bb.bfu, %bb.bfv, %bb.bfw, %bb.bfx, %bb.bfy, %bb.bfz
  %.0.i4622 = phi ptr [ %i.ivs, %bb.bfz ], [ @.str.1388, %bb.bfy ], [ @.str.1388, %bb.bfx ], [ @.str.1391, %bb.bfw ], [ @.str.1390, %bb.bfv ], [ @.str.1389, %bb.bfu ]
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %.0.i4622)
  br label %bb.bga

bb.bga:                                           ; preds = %sqlite3ErrStr.exit, %bb.bft
  store i32 %.111, ptr %i.bd, align 4, !tbaa !532
  %i.ivt = and i32 %.111, 251
  %or.cond.i4623 = icmp eq i32 %i.ivt, 10
  %or.cond6.i = and i1 %i.ivl, %or.cond.i4623
  br i1 %or.cond6.i, label %bb.bgb, label %sqlite3SystemError.exit

bb.bgb:                                           ; preds = %bb.bga
  %i.ivu = load ptr, ptr %i.an, align 8, !tbaa !538 ; 2 uses
  %i.ivv = getelementptr inbounds nuw i8, ptr %i.ivu, i64 128
  %i.ivw = load ptr, ptr %i.ivv, align 8, !tbaa !650 ; 2 uses
  %.not.i.i4624 = icmp eq ptr %i.ivw, null
  br i1 %.not.i.i4624, label %sqlite3OsGetLastError.exit.i, label %bb.bgc

bb.bgc:                                           ; preds = %bb.bgb
  %i.ivx = call i32 %i.ivw(ptr noundef nonnull %i.ivu, i32 noundef 0, ptr noundef null) #59, !inline_history !651
  br label %sqlite3OsGetLastError.exit.i

sqlite3OsGetLastError.exit.i:                     ; preds = %bb.bgc, %bb.bgb
  %i.ivy = phi i32 [ %i.ivx, %bb.bgc ], [ 0, %bb.bgb ]
  %i.ivz = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  store i32 %i.ivy, ptr %i.ivz, align 4, !tbaa !652
  br label %sqlite3SystemError.exit

sqlite3SystemError.exit:                          ; preds = %bb.bga, %sqlite3OsGetLastError.exit.i
  call fastcc void @sqlite3VdbeLogAbort(ptr noundef nonnull %0, i32 noundef %.111, ptr noundef %.10, ptr noundef %.5)
  %i.iwa = getelementptr inbounds nuw i8, ptr %0, i64 199
  %i.iwb = load i8, ptr %i.iwa, align 1, !tbaa !172
  %i.iwc = icmp eq i8 %i.iwb, 2
  br i1 %i.iwc, label %bb.bgd, label %bb.bge

bb.bgd:                                           ; preds = %sqlite3SystemError.exit
  %i.iwd = call fastcc i32 @sqlite3VdbeHalt(ptr noundef nonnull %0) ; 0 uses
  br label %bb.bge

bb.bge:                                           ; preds = %bb.bgd, %sqlite3SystemError.exit
  switch i32 %.111, label %sqlite3OomFault.exit [
    i32 3082, label %bb.bgf
    i32 11, label %bb.bgl
  ]

bb.bgf:                                           ; preds = %bb.bge
  %i.iwe = load i8, ptr %i.ivf, align 1, !tbaa !552
  %i.iwf = icmp eq i8 %i.iwe, 0
  br i1 %i.iwf, label %bb.bgg, label %sqlite3OomFault.exit

bb.bgg:                                           ; preds = %bb.bgf
  %i.iwg = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.iwh = load i8, ptr %i.iwg, align 8, !tbaa !553
  %i.iwi = icmp eq i8 %i.iwh, 0
  br i1 %i.iwi, label %bb.bgh, label %sqlite3OomFault.exit

bb.bgh:                                           ; preds = %bb.bgg
  store i8 1, ptr %i.ivf, align 1, !tbaa !552
  %i.iwj = getelementptr inbounds nuw i8, ptr %i.an, i64 220
  %i.iwk = load i32, ptr %i.iwj, align 4, !tbaa !554
  %i.iwl = icmp sgt i32 %i.iwk, 0
  br i1 %i.iwl, label %bb.bgi, label %bb.bgj

bb.bgi:                                           ; preds = %bb.bgh
  %i.iwm = getelementptr inbounds nuw i8, ptr %i.an, i64 424
  store atomic volatile i32 1, ptr %i.iwm monotonic, align 8
  br label %bb.bgj

bb.bgj:                                           ; preds = %bb.bgi, %bb.bgh
  %i.iwn = getelementptr inbounds nuw i8, ptr %i.an, i64 432 ; 2 uses
  %i.iwo = load i32, ptr %i.iwn, align 8, !tbaa !555
  %i.iwp = add i32 %i.iwo, 1
  store i32 %i.iwp, ptr %i.iwn, align 8, !tbaa !555
  %i.iwq = getelementptr inbounds nuw i8, ptr %i.an, i64 436
  store i16 0, ptr %i.iwq, align 4, !tbaa !556
  %i.iwr = getelementptr inbounds nuw i8, ptr %i.an, i64 344 ; 2 uses
  %i.iws = load ptr, ptr %i.iwr, align 8, !tbaa !303 ; 2 uses
  %.not.i4626 = icmp eq ptr %i.iws, null
  br i1 %.not.i4626, label %sqlite3OomFault.exit, label %bb.bgk

bb.bgk:                                           ; preds = %bb.bgj
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.iws, ptr noundef nonnull @.str.133), !inline_history !557
  %i.iwt = load ptr, ptr %i.iwr, align 8, !tbaa !303 ; 2 uses
  %i.iwu = getelementptr inbounds nuw i8, ptr %i.iwt, i64 24
  store i32 7, ptr %i.iwu, align 8, !tbaa !304
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.iwt, i64 216
  %.018.i4627 = load ptr, ptr %.0.in17.i, align 8, !tbaa !558 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i4627, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i4628

.lr.ph.i4628:                                     ; preds = %bb.bgk, %.lr.ph.i4628
  %.020.i = phi ptr [ %.0.i4629, %.lr.ph.i4628 ], [ %.018.i4627, %bb.bgk ] ; 3 uses
  %i.iwv = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.iww = load i32, ptr %i.iwv, align 4, !tbaa !315
  %i.iwx = add nsw i32 %i.iww, 1
  store i32 %i.iwx, ptr %i.iwv, align 4, !tbaa !315
  %i.iwy = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.iwy, align 8, !tbaa !304
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i4629 = load ptr, ptr %.0.in.i, align 8, !tbaa !558 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i4629, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i4628, !llvm.loop !559

bb.bgl:                                           ; preds = %bb.bge
  %i.iwz = getelementptr inbounds nuw i8, ptr %i.an, i64 101
  %i.ixa = load i8, ptr %i.iwz, align 1, !tbaa !593
  %i.ixb = icmp eq i8 %i.ixa, 0
  br i1 %i.ixb, label %bb.bgm, label %sqlite3OomFault.exit

bb.bgm:                                           ; preds = %bb.bgl
  %i.ixc = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.ixd = load i64, ptr %i.ixc, align 8, !tbaa !547
  %i.ixe = or i64 %i.ixd, 8589934592
  store i64 %i.ixe, ptr %i.ixc, align 8, !tbaa !547
  br label %sqlite3OomFault.exit

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i4628, %bb.bgk, %bb.bgj, %bb.bgg, %bb.bgf, %bb.bge, %bb.bgm, %bb.bgl
  %.not3886 = icmp eq i8 %.42992, 0
  br i1 %.not3886, label %sqlite3ResetOneSchema.exit, label %bb.bgn

bb.bgn:                                           ; preds = %sqlite3OomFault.exit
  %i.ixf = zext i8 %.42992 to i64
  %i.ixg = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ixh = load ptr, ptr %i.ixg, align 8, !tbaa !63 ; 2 uses
  %i.ixi = getelementptr [32 x i8], ptr %i.ixh, i64 %i.ixf
  %i.ixj = getelementptr i8, ptr %i.ixi, i64 -8
  %i.ixk = load ptr, ptr %i.ixj, align 8, !tbaa !103
  %i.ixl = getelementptr inbounds nuw i8, ptr %i.ixk, i64 114 ; 2 uses
  %i.ixm = load i16, ptr %i.ixl, align 2, !tbaa !695
  %i.ixn = or i16 %i.ixm, 8
  store i16 %i.ixn, ptr %i.ixl, align 2, !tbaa !695
  %i.ixo = getelementptr inbounds nuw i8, ptr %i.ixh, i64 56
  %i.ixp = load ptr, ptr %i.ixo, align 8, !tbaa !103
  %i.ixq = getelementptr inbounds nuw i8, ptr %i.ixp, i64 114 ; 2 uses
  %i.ixr = load i16, ptr %i.ixq, align 2, !tbaa !695
  %i.ixs = or i16 %i.ixr, 8
  store i16 %i.ixs, ptr %i.ixq, align 2, !tbaa !695
  %i.ixt = getelementptr inbounds nuw i8, ptr %i.an, i64 44 ; 2 uses
  %i.ixu = load i32, ptr %i.ixt, align 4, !tbaa !697
  %i.ixv = and i32 %i.ixu, -17
  store i32 %i.ixv, ptr %i.ixt, align 4, !tbaa !697
  %i.ixw = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ixx = load i32, ptr %i.ixw, align 8, !tbaa !694
  %i.ixy = icmp eq i32 %i.ixx, 0
  br i1 %i.ixy, label %.preheader.i4631, label %sqlite3ResetOneSchema.exit

.preheader.i4631:                                 ; preds = %bb.bgn
  %i.ixz = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.iya = load i32, ptr %i.ixz, align 8, !tbaa !62 ; 2 uses
  %i.iyb = icmp sgt i32 %i.iya, 0
  br i1 %i.iyb, label %.lr.ph.i4632, label %sqlite3ResetOneSchema.exit

.lr.ph.i4632:                                     ; preds = %.preheader.i4631, %bb.bgp
  %i.iyc = phi i32 [ %i.iyk, %bb.bgp ], [ %i.iya, %.preheader.i4631 ]
  %indvars.iv.i4633 = phi i64 [ %indvars.iv.next.i4636, %bb.bgp ], [ 0, %.preheader.i4631 ] ; 2 uses
  %i.iyd = load ptr, ptr %i.ixg, align 8, !tbaa !63
  %i.iye = getelementptr inbounds nuw [32 x i8], ptr %i.iyd, i64 %indvars.iv.i4633
  %i.iyf = getelementptr inbounds nuw i8, ptr %i.iye, i64 24
  %i.iyg = load ptr, ptr %i.iyf, align 8, !tbaa !103 ; 2 uses
  %i.iyh = getelementptr inbounds nuw i8, ptr %i.iyg, i64 114
  %i.iyi = load i16, ptr %i.iyh, align 2, !tbaa !695
  %i.iyj = and i16 %i.iyi, 8
  %.not.i4634 = icmp eq i16 %i.iyj, 0
  br i1 %.not.i4634, label %bb.bgp, label %bb.bgo

bb.bgo:                                           ; preds = %.lr.ph.i4632
  call void @sqlite3SchemaClear(ptr noundef nonnull %i.iyg)
  %.pre.i4635 = load i32, ptr %i.ixz, align 8, !tbaa !62
  br label %bb.bgp

bb.bgp:                                           ; preds = %bb.bgo, %.lr.ph.i4632
  %i.iyk = phi i32 [ %i.iyc, %.lr.ph.i4632 ], [ %.pre.i4635, %bb.bgo ] ; 2 uses
  %indvars.iv.next.i4636 = add nuw nsw i64 %indvars.iv.i4633, 1 ; 2 uses
  %i.iyl = sext i32 %i.iyk to i64
  %i.iym = icmp slt i64 %indvars.iv.next.i4636, %i.iyl
  br i1 %i.iym, label %.lr.ph.i4632, label %sqlite3ResetOneSchema.exit, !llvm.loop !1061

sqlite3ResetOneSchema.exit:                       ; preds = %.thread4816, %bb.bgp, %sqlite3VdbeCheckFkDeferred.exit, %bb.tu, %sqlite3VdbeCheckFkDeferred.exit4262, %bb.uy, %bb.ux, %bb.ae, %bb.af, %.preheader.i4631, %bb.bgn, %.thread4850, %sqlite3OomFault.exit, %bb.di
  %.53016 = phi i64 [ %.13012, %bb.ae ], [ %.43015, %sqlite3OomFault.exit ], [ %.13012, %sqlite3VdbeCheckFkDeferred.exit ], [ %.13012, %bb.di ], [ %.13012, %sqlite3VdbeCheckFkDeferred.exit4262 ], [ %.43015, %bb.bgp ], [ %.13012, %.thread4850 ], [ %.43015, %bb.bgn ], [ %.43015, %.preheader.i4631 ], [ %.13012, %bb.af ], [ %.13012, %bb.ux ], [ %.13012, %bb.uy ], [ %.13012, %bb.tu ], [ %.13012, %.thread4816 ]
  %.23007 = phi i64 [ %i.hn, %bb.ae ], [ %.13006, %sqlite3OomFault.exit ], [ %i.hn, %sqlite3VdbeCheckFkDeferred.exit ], [ %i.hn, %bb.di ], [ %i.hn, %sqlite3VdbeCheckFkDeferred.exit4262 ], [ %.13006, %bb.bgp ], [ %i.hn, %.thread4850 ], [ %.13006, %bb.bgn ], [ %.13006, %.preheader.i4631 ], [ %i.hn, %bb.af ], [ %i.hn, %bb.ux ], [ %i.hn, %bb.uy ], [ %i.hn, %bb.tu ], [ %i.hn, %.thread4816 ] ; 3 uses
  %.52993 = phi i8 [ %.02988, %bb.ae ], [ 0, %sqlite3OomFault.exit ], [ %.02988, %sqlite3VdbeCheckFkDeferred.exit ], [ %.02988, %bb.di ], [ %.02988, %sqlite3VdbeCheckFkDeferred.exit4262 ], [ %.42992, %bb.bgp ], [ %.02988, %.thread4850 ], [ %.42992, %bb.bgn ], [ %.42992, %.preheader.i4631 ], [ %.02988, %bb.af ], [ %.02988, %bb.ux ], [ %.02988, %bb.uy ], [ %.02988, %bb.tu ], [ %.02988, %.thread4816 ]
  %.112 = phi i32 [ 5, %bb.ae ], [ 1, %sqlite3OomFault.exit ], [ %i.cbw, %sqlite3VdbeCheckFkDeferred.exit ], [ 100, %bb.di ], [ %i.cfo, %sqlite3VdbeCheckFkDeferred.exit4262 ], [ 1, %bb.bgp ], [ %i.cgp, %.thread4850 ], [ 1, %bb.bgn ], [ 1, %.preheader.i4631 ], [ %i.mw, %bb.af ], [ 5, %bb.ux ], [ %.3916, %bb.uy ], [ 5, %bb.tu ], [ 101, %.thread4816 ]
  %.11 = phi ptr [ %.02963, %bb.ae ], [ %.10, %sqlite3OomFault.exit ], [ %.02963, %sqlite3VdbeCheckFkDeferred.exit ], [ %.02963, %bb.di ], [ %.02963, %sqlite3VdbeCheckFkDeferred.exit4262 ], [ %.10, %bb.bgp ], [ %.02963, %.thread4850 ], [ %.10, %bb.bgn ], [ %.10, %.preheader.i4631 ], [ %.02963, %bb.af ], [ %.02963, %bb.ux ], [ %.02963, %bb.uy ], [ %.02963, %bb.tu ], [ %.02963, %.thread4816 ]
  %.6 = phi ptr [ %.02962, %bb.ae ], [ %.5, %sqlite3OomFault.exit ], [ %.02962, %sqlite3VdbeCheckFkDeferred.exit ], [ %.02962, %bb.di ], [ %.02962, %sqlite3VdbeCheckFkDeferred.exit4262 ], [ %.5, %bb.bgp ], [ %.02962, %.thread4850 ], [ %.5, %bb.bgn ], [ %.5, %.preheader.i4631 ], [ %.02962, %bb.af ], [ %.02962, %bb.ux ], [ %.02962, %bb.uy ], [ %.02962, %bb.tu ], [ %.02962, %.thread4816 ]
  %i.iyn = getelementptr inbounds nuw i8, ptr %i.an, i64 560
  %i.iyo = getelementptr inbounds nuw i8, ptr %i.an, i64 552
  br label %bb.bgq

bb.bgq:                                           ; preds = %bb.bgs, %sqlite3ResetOneSchema.exit
  %.63017 = phi i64 [ %.53016, %sqlite3ResetOneSchema.exit ], [ %i.iys, %bb.bgs ] ; 2 uses
  %.not3887 = icmp ult i64 %.23007, %.63017
  br i1 %.not3887, label %.critedge52, label %bb.bgr

bb.bgr:                                           ; preds = %bb.bgq
  %i.iyp = load ptr, ptr %i.au, align 8, !tbaa !1255 ; 2 uses
  %.not3888 = icmp eq ptr %i.iyp, null
  br i1 %.not3888, label %.critedge52, label %bb.bgs

bb.bgs:                                           ; preds = %bb.bgr
  %i.iyq = load i32, ptr %i.iyn, align 8, !tbaa !1256
  %i.iyr = zext i32 %i.iyq to i64
  %i.iys = add i64 %.63017, %i.iyr
  %i.iyt = load ptr, ptr %i.iyo, align 8, !tbaa !1257
  %i.iyu = call i32 %i.iyp(ptr noundef %i.iyt) #59
  %.not3890 = icmp eq i32 %i.iyu, 0
  br i1 %.not3890, label %bb.bgq, label %sqlite3VdbeSorterRowkey.exit, !llvm.loop !2874

.critedge52:                                      ; preds = %bb.bgq, %bb.bgr
  %i.iyv = trunc i64 %.23007 to i32
  %i.iyw = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.iyx = load i32, ptr %i.iyw, align 4, !tbaa !24
  %i.iyy = add i32 %i.iyx, %i.iyv
  store i32 %i.iyy, ptr %i.iyw, align 4, !tbaa !24
  %i.iyz = load i32, ptr %i.as, align 8, !tbaa !947
  %.not3889 = icmp eq i32 %i.iyz, 0
  br i1 %.not3889, label %bb.bgy, label %sqlite3VdbeLeave.exit

sqlite3VdbeLeave.exit:                            ; preds = %.critedge52
  call fastcc void @vdbeLeave(ptr noundef nonnull readonly %0)
  br label %bb.bgy

sqlite3VdbeMemSetNull.exit4132.sink.split:        ; preds = %sqlite3VdbeSerialTypeLen.exit4231.thread, %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %sqlite3VdbeMemSetNull.exit4132

sqlite3VdbeMemSetNull.exit4132:                   ; preds = %out2Prerelease.exit4329, %bb.ru, %bb.dv, %sqlite3VdbeMemTooBig.exit, %bb.az, %bb.at, %sqlite3VdbeMemSetNull.exit4132.sink.split
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.21)
  br label %sqlite3VdbeSorterRowkey.exit

sqlite3VdbeMemSetNull.exit4132.thread:            ; preds = %sqlite3DbMallocRaw.exit.i8639, %bb.bbf, %sqlite3_malloc64.exit, %bb.aga, %bb.xw, %bb.xi, %bb.rv, %bb.ds, %bb.du, %bb.dq, %bb.do, %bb.dw, %bb.aum, %bb.asf, %bb.agn, %bb.xz, %bb.xc, %bb.aru, %bb.wz, %bb.bm, %sqlite3VdbeChangeEncoding.exit, %bb.rb, %bb.co, %bb.cr, %bb.ca, %bb.cd, %bb.anx, %sqlite3VdbeMemSetNull.exit4217.thread5380, %.thread5349, %.thread5307, %.thread5199, %.thread4959, %sqlite3VdbeMemSetNull.exit4217.thread4775, %bb.df, %bb.e
  %.73018 = phi i64 [ %.03011, %bb.e ], [ %.13012, %.thread5199 ], [ %.13012, %bb.co ], [ %.13012, %.thread4959 ], [ %.13012, %.thread5307 ], [ %.13012, %bb.df ], [ %.13012, %.thread5349 ], [ %.13012, %sqlite3VdbeMemSetNull.exit4217.thread5380 ], [ %.13012, %bb.anx ], [ %.13012, %bb.ca ], [ %.13012, %sqlite3VdbeMemSetNull.exit4217.thread4775 ], [ %.13012, %bb.rb ], [ %.13012, %bb.cd ], [ %.13012, %bb.cr ], [ %.13012, %sqlite3VdbeChangeEncoding.exit ], [ %.13012, %bb.bm ], [ %.13012, %bb.wz ], [ %.13012, %bb.aru ], [ %.13012, %bb.xc ], [ %.13012, %bb.xz ], [ %.13012, %bb.agn ], [ %.13012, %bb.asf ], [ %.13012, %bb.aum ], [ %.13012, %bb.dw ], [ %.13012, %bb.do ], [ %.13012, %bb.dq ], [ %.13012, %bb.du ], [ %.13012, %bb.ds ], [ %.13012, %bb.rv ], [ %.13012, %bb.xi ], [ %.13012, %bb.xw ], [ %.13012, %bb.aga ], [ %.13012, %sqlite3_malloc64.exit ], [ %.13012, %bb.bbf ], [ %.13012, %sqlite3DbMallocRaw.exit.i8639 ]
  %.33008 = phi i64 [ 0, %bb.e ], [ %i.hn, %.thread5199 ], [ %i.hn, %bb.co ], [ %i.hn, %.thread4959 ], [ %i.hn, %.thread5307 ], [ %i.hn, %bb.df ], [ %i.hn, %.thread5349 ], [ %i.hn, %sqlite3VdbeMemSetNull.exit4217.thread5380 ], [ %i.hn, %bb.anx ], [ %i.hn, %bb.ca ], [ %i.hn, %sqlite3VdbeMemSetNull.exit4217.thread4775 ], [ %i.hn, %bb.rb ], [ %i.hn, %bb.cd ], [ %i.hn, %bb.cr ], [ %i.hn, %sqlite3VdbeChangeEncoding.exit ], [ %i.hn, %bb.bm ], [ %i.hn, %bb.wz ], [ %i.hn, %bb.aru ], [ %i.hn, %bb.xc ], [ %i.hn, %bb.xz ], [ %i.hn, %bb.agn ], [ %i.hn, %bb.asf ], [ %i.hn, %bb.aum ], [ %i.hn, %bb.dw ], [ %i.hn, %bb.do ], [ %i.hn, %bb.dq ], [ %i.hn, %bb.du ], [ %i.hn, %bb.ds ], [ %i.hn, %bb.rv ], [ %i.hn, %bb.xi ], [ %i.hn, %bb.xw ], [ %i.hn, %bb.aga ], [ %i.hn, %sqlite3_malloc64.exit ], [ %i.hn, %bb.bbf ], [ %i.hn, %sqlite3DbMallocRaw.exit.i8639 ]
  %.62994 = phi i8 [ 0, %bb.e ], [ %.02988, %.thread5199 ], [ %.02988, %bb.co ], [ %.02988, %.thread4959 ], [ %.02988, %.thread5307 ], [ %.02988, %bb.df ], [ %.02988, %.thread5349 ], [ %.02988, %sqlite3VdbeMemSetNull.exit4217.thread5380 ], [ %.02988, %bb.anx ], [ %.02988, %bb.ca ], [ %.02988, %sqlite3VdbeMemSetNull.exit4217.thread4775 ], [ %.02988, %bb.rb ], [ %.02988, %bb.cd ], [ %.02988, %bb.cr ], [ %.02988, %sqlite3VdbeChangeEncoding.exit ], [ %.02988, %bb.bm ], [ %.02988, %bb.wz ], [ %.02988, %bb.aru ], [ %.02988, %bb.xc ], [ %.02988, %bb.xz ], [ %.02988, %bb.agn ], [ %.02988, %bb.asf ], [ %.02988, %bb.aum ], [ %.02988, %bb.dw ], [ %.02988, %bb.do ], [ %.02988, %bb.dq ], [ %.02988, %bb.du ], [ %.02988, %bb.ds ], [ %.02988, %bb.rv ], [ %.02988, %bb.xi ], [ %.02988, %bb.xw ], [ %.02988, %bb.aga ], [ %.02988, %sqlite3_malloc64.exit ], [ %.02988, %bb.bbf ], [ %.02988, %sqlite3DbMallocRaw.exit.i8639 ]
  %.13 = phi ptr [ %i.am, %bb.e ], [ %.02963, %.thread5199 ], [ %.02963, %bb.co ], [ %.02963, %.thread4959 ], [ %.02963, %.thread5307 ], [ %.02963, %bb.df ], [ %.02963, %.thread5349 ], [ %.02963, %sqlite3VdbeMemSetNull.exit4217.thread5380 ], [ %.02963, %bb.anx ], [ %.02963, %bb.ca ], [ %.02963, %sqlite3VdbeMemSetNull.exit4217.thread4775 ], [ %.02963, %bb.rb ], [ %.02963, %bb.cd ], [ %.02963, %bb.cr ], [ %.02963, %sqlite3VdbeChangeEncoding.exit ], [ %.02963, %bb.bm ], [ %.02963, %bb.wz ], [ %.02963, %bb.aru ], [ %.02963, %bb.xc ], [ %.02963, %bb.xz ], [ %.02963, %bb.agn ], [ %.02963, %bb.asf ], [ %.02963, %bb.aum ], [ %.02963, %bb.dw ], [ %.02963, %bb.do ], [ %.02963, %bb.dq ], [ %.02963, %bb.du ], [ %.02963, %bb.ds ], [ %.02963, %bb.rv ], [ %.02963, %bb.xi ], [ %.02963, %bb.xw ], [ %.02963, %bb.aga ], [ %.02963, %sqlite3_malloc64.exit ], [ %.02963, %bb.bbf ], [ %.02963, %sqlite3DbMallocRaw.exit.i8639 ]
  %.7 = phi ptr [ %i.am, %bb.e ], [ %.02962, %.thread5199 ], [ %.02962, %bb.co ], [ %.02962, %.thread4959 ], [ %.02962, %.thread5307 ], [ %.02962, %bb.df ], [ %.02962, %.thread5349 ], [ %.02962, %sqlite3VdbeMemSetNull.exit4217.thread5380 ], [ %.02962, %bb.anx ], [ %.02962, %bb.ca ], [ %.02962, %sqlite3VdbeMemSetNull.exit4217.thread4775 ], [ %.02962, %bb.rb ], [ %.02962, %bb.cd ], [ %.02962, %bb.cr ], [ %.02962, %sqlite3VdbeChangeEncoding.exit ], [ %.02962, %bb.bm ], [ %.02962, %bb.wz ], [ %.02962, %bb.aru ], [ %.02962, %bb.xc ], [ %.02962, %bb.xz ], [ %.02962, %bb.agn ], [ %.02962, %bb.asf ], [ %.02962, %bb.aum ], [ %.02962, %bb.dw ], [ %.02962, %bb.do ], [ %.02962, %bb.dq ], [ %.02962, %bb.du ], [ %.02962, %bb.ds ], [ %.02962, %bb.rv ], [ %.02962, %bb.xi ], [ %.02962, %bb.xw ], [ %.02962, %bb.aga ], [ %.02962, %sqlite3_malloc64.exit ], [ %.02962, %bb.bbf ], [ %.02962, %sqlite3DbMallocRaw.exit.i8639 ]
  %i.iza = getelementptr inbounds nuw i8, ptr %i.an, i64 103 ; 2 uses
  %i.izb = load i8, ptr %i.iza, align 1, !tbaa !552
  %i.izc = icmp eq i8 %i.izb, 0
  br i1 %i.izc, label %bb.bgt, label %sqlite3OomFault.exit4647

bb.bgt:                                           ; preds = %sqlite3VdbeMemSetNull.exit4132.thread
  %i.izd = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ize = load i8, ptr %i.izd, align 8, !tbaa !553
  %i.izf = icmp eq i8 %i.ize, 0
  br i1 %i.izf, label %bb.bgu, label %sqlite3OomFault.exit4647

bb.bgu:                                           ; preds = %bb.bgt
  store i8 1, ptr %i.iza, align 1, !tbaa !552
  %i.izg = getelementptr inbounds nuw i8, ptr %i.an, i64 220
  %i.izh = load i32, ptr %i.izg, align 4, !tbaa !554
  %i.izi = icmp sgt i32 %i.izh, 0
  br i1 %i.izi, label %bb.bgv, label %bb.bgw

bb.bgv:                                           ; preds = %bb.bgu
  %i.izj = getelementptr inbounds nuw i8, ptr %i.an, i64 424
  store atomic volatile i32 1, ptr %i.izj monotonic, align 8
  br label %bb.bgw

bb.bgw:                                           ; preds = %bb.bgv, %bb.bgu
  %i.izk = getelementptr inbounds nuw i8, ptr %i.an, i64 432 ; 2 uses
  %i.izl = load i32, ptr %i.izk, align 8, !tbaa !555
  %i.izm = add i32 %i.izl, 1
  store i32 %i.izm, ptr %i.izk, align 8, !tbaa !555
  %i.izn = getelementptr inbounds nuw i8, ptr %i.an, i64 436
  store i16 0, ptr %i.izn, align 4, !tbaa !556
  %i.izo = getelementptr inbounds nuw i8, ptr %i.an, i64 344 ; 2 uses
  %i.izp = load ptr, ptr %i.izo, align 8, !tbaa !303 ; 2 uses
  %.not.i4638 = icmp eq ptr %i.izp, null
  br i1 %.not.i4638, label %sqlite3OomFault.exit4647, label %bb.bgx

bb.bgx:                                           ; preds = %bb.bgw
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.izp, ptr noundef nonnull @.str.133), !inline_history !557
  %i.izq = load ptr, ptr %i.izo, align 8, !tbaa !303 ; 2 uses
  %i.izr = getelementptr inbounds nuw i8, ptr %i.izq, i64 24
  store i32 7, ptr %i.izr, align 8, !tbaa !304
  %.0.in17.i4639 = getelementptr inbounds nuw i8, ptr %i.izq, i64 216
  %.018.i4640 = load ptr, ptr %.0.in17.i4639, align 8, !tbaa !558 ; 2 uses
  %.not1619.i4641 = icmp eq ptr %.018.i4640, null
  br i1 %.not1619.i4641, label %sqlite3OomFault.exit4647, label %.lr.ph.i4642

.lr.ph.i4642:                                     ; preds = %bb.bgx, %.lr.ph.i4642
  %.020.i4643 = phi ptr [ %.0.i4645, %.lr.ph.i4642 ], [ %.018.i4640, %bb.bgx ] ; 3 uses
  %i.izs = getelementptr inbounds nuw i8, ptr %.020.i4643, i64 52 ; 2 uses
  %i.izt = load i32, ptr %i.izs, align 4, !tbaa !315
  %i.izu = add nsw i32 %i.izt, 1
  store i32 %i.izu, ptr %i.izs, align 4, !tbaa !315
  %i.izv = getelementptr inbounds nuw i8, ptr %.020.i4643, i64 24
  store i32 7, ptr %i.izv, align 8, !tbaa !304
  %.0.in.i4644 = getelementptr inbounds nuw i8, ptr %.020.i4643, i64 216
  %.0.i4645 = load ptr, ptr %.0.in.i4644, align 8, !tbaa !558 ; 2 uses
  %.not16.i4646 = icmp eq ptr %.0.i4645, null
  br i1 %.not16.i4646, label %sqlite3OomFault.exit4647, label %.lr.ph.i4642, !llvm.loop !559

sqlite3OomFault.exit4647:                         ; preds = %.lr.ph.i4642, %sqlite3VdbeMemSetNull.exit4132.thread, %bb.bgt, %bb.bgw, %bb.bgx
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.133)
  br label %sqlite3VdbeSorterRowkey.exit

bb.bgy:                                           ; preds = %.critedge52, %sqlite3VdbeLeave.exit
  ret i32 %.112
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sqlite3VdbeLogAbort(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2397
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !229  ; 2 uses
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.i = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.373, ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ %i.a, %bb.c ], [ @.str.4, %bb.a ], [ @.str.374, %bb.b ]
end_hunk_4
begin_hunk_5_@sqlite3GetInt32:bb.a
  %i.j = load i8, ptr %i.i, align 1, !tbaa !229
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %thread-pre-split, label %.preheader62

.preheader62:                                     ; preds = %bb.f, %.preheader62
  %.048 = phi ptr [ %i.n, %.preheader62 ], [ %i.f, %bb.f ] ; 9 uses
  %i.l = load i8, ptr %.048, align 1, !tbaa !229  ; 4 uses
  %i.m = icmp eq i8 %i.l, 48
  %i.n = getelementptr inbounds nuw i8, ptr %.048, i64 1 ; 2 uses
  br i1 %i.m, label %.preheader62, label %.preheader61, !llvm.loop !3249

.preheader61:                                     ; preds = %.preheader62
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !229
  %i.r = and i8 %i.q, 8
  %.not53 = icmp eq i8 %i.r, 0
  br i1 %.not53, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.preheader61
  %i.s = and i8 %i.l, 64
  %.not.i = icmp eq i8 %i.s, 0
  %i.t = select i1 %.not.i, i8 0, i8 9
  %i.u = add i8 %i.t, %i.l
  %i.v = and i8 %i.u, 15
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = load i8, ptr %i.n, align 1, !tbaa !229   ; 3 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !229
  %i.ab = and i8 %i.aa, 8
  %.not53.1 = icmp eq i8 %i.ab, 0
  br i1 %.not53.1, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = shl nuw nsw i32 %i.w, 4
  %i.ad = and i8 %i.x, 64
  %.not.i.1 = icmp eq i8 %i.ad, 0
  %i.ae = select i1 %.not.i.1, i8 0, i8 9
  %i.af = add i8 %i.ae, %i.x
  %i.ag = and i8 %i.af, 15
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ac, %i.ah            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.048, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !229 ; 3 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !229
  %i.ao = and i8 %i.an, 8
  %.not53.2 = icmp eq i8 %i.ao, 0
  br i1 %.not53.2, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = shl nuw nsw i32 %i.ai, 4
  %i.aq = and i8 %i.ak, 64
  %.not.i.2 = icmp eq i8 %i.aq, 0
  %i.ar = select i1 %.not.i.2, i8 0, i8 9
  %i.as = add i8 %i.ar, %i.ak
  %i.at = and i8 %i.as, 15
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.ap, %i.au            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.048, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !229 ; 3 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !229
  %i.bb = and i8 %i.ba, 8
  %.not53.3 = icmp eq i8 %i.bb, 0
  br i1 %.not53.3, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = shl nuw nsw i32 %i.av, 4
  %i.bd = and i8 %i.ax, 64
  %.not.i.3 = icmp eq i8 %i.bd, 0
  %i.be = select i1 %.not.i.3, i8 0, i8 9
  %i.bf = add i8 %i.be, %i.ax
  %i.bg = and i8 %i.bf, 15
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bc, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.048, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !229 ; 3 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !229
  %i.bo = and i8 %i.bn, 8
  %.not53.4 = icmp eq i8 %i.bo, 0
  br i1 %.not53.4, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = shl nuw nsw i32 %i.bi, 4
  %i.bq = and i8 %i.bk, 64
  %.not.i.4 = icmp eq i8 %i.bq, 0
  %i.br = select i1 %.not.i.4, i8 0, i8 9
  %i.bs = add i8 %i.br, %i.bk
  %i.bt = and i8 %i.bs, 15
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bp, %i.bu            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.048, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !229 ; 3 uses
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !229
  %i.cb = and i8 %i.ca, 8
  %.not53.5 = icmp eq i8 %i.cb, 0
  br i1 %.not53.5, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = shl nuw nsw i32 %i.bv, 4
  %i.cd = and i8 %i.bx, 64
  %.not.i.5 = icmp eq i8 %i.cd, 0
  %i.ce = select i1 %.not.i.5, i8 0, i8 9
  %i.cf = add i8 %i.ce, %i.bx
  %i.cg = and i8 %i.cf, 15
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cc, %i.ch            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.048, i64 6
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !229 ; 3 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !229
  %i.co = and i8 %i.cn, 8
  %.not53.6 = icmp eq i8 %i.co, 0
  br i1 %.not53.6, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = shl nuw nsw i32 %i.ci, 4
  %i.cq = and i8 %i.ck, 64
  %.not.i.6 = icmp eq i8 %i.cq, 0
  %i.cr = select i1 %.not.i.6, i8 0, i8 9
  %i.cs = add i8 %i.cr, %i.ck
  %i.ct = and i8 %i.cs, 15
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cp, %i.cu            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !229 ; 3 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !229
  %i.db = and i8 %i.da, 8
  %.not53.7 = icmp eq i8 %i.db, 0
  br i1 %.not53.7, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.m
  %i.dc = shl nuw i32 %i.cv, 4                    ; 2 uses
  %i.dd = and i8 %i.cx, 64
  %.not.i.7 = icmp eq i8 %i.dd, 0
  %i.de = select i1 %.not.i.7, i8 0, i8 9
  %i.df = add i8 %i.de, %i.cx
  %i.dg = and i8 %i.df, 15
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.dc, %i.dh
  %i.dj = icmp sgt i32 %i.dc, -1
  br i1 %i.dj, label %.critedge.thread, label %.critedge2.thread

.critedge.thread:                                 ; preds = %bb.j, %bb.l, %bb.i, %bb.k, %bb.h, %bb.m, %bb.g, %.preheader61, %.critedge
  %.0.lcssa77 = phi i32 [ %i.di, %.critedge ], [ %i.bi, %bb.j ], [ %i.ci, %bb.l ], [ %i.av, %bb.i ], [ %i.bv, %bb.k ], [ %i.ai, %bb.h ], [ %i.cv, %bb.m ], [ %i.w, %bb.g ], [ 0, %.preheader61 ]
  %.044.lcssa76 = phi i64 [ 8, %.critedge ], [ 4, %bb.j ], [ 6, %bb.l ], [ 3, %bb.i ], [ 5, %bb.k ], [ 2, %bb.h ], [ 7, %bb.m ], [ 1, %bb.g ], [ 0, %.preheader61 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.048, i64 %.044.lcssa76
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !229
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !229
  %i.dp = and i8 %i.do, 8
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %.critedge2.thread.sink.split, label %.critedge2.thread

thread-pre-split:                                 ; preds = %bb.b, %bb.f, %bb.d, %bb.e
  %.149.ph = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %i.c, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.042.neg.ph = phi i64 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.d ], [ -1, %bb.b ]
  %.pr78 = load i8, ptr %.149.ph, align 1, !tbaa !229
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.c
  %i.dr = phi i8 [ %.pr78, %thread-pre-split ], [ %i.a, %bb.c ] ; 3 uses
  %.149 = phi ptr [ %.149.ph, %thread-pre-split ], [ %0, %bb.c ] ; 2 uses
  %.042.neg = phi i64 [ %.042.neg.ph, %thread-pre-split ], [ 0, %bb.c ]
  %i.ds = add i8 %i.dr, -58
  %.not54 = icmp ult i8 %i.ds, -10
  br i1 %.not54, label %.critedge2.thread, label %.preheader60

.preheader60:                                     ; preds = %bb.n
  %i.dt = icmp eq i8 %i.dr, 48
  br i1 %i.dt, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader60
  %i.du = phi i8 [ %i.dr, %.preheader60 ], [ %.pr, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %.149, %.preheader60 ], [ %i.dw, %.lr.ph ] ; 10 uses
  %i.dv = add i8 %i.du, -48
  %or.cond = icmp ult i8 %i.dv, 10
  br i1 %or.cond, label %bb.o, label %.critedge2

.lr.ph:                                           ; preds = %.preheader60, %.lr.ph
  %.266 = phi ptr [ %i.dw, %.lr.ph ], [ %.149, %.preheader60 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.266, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.dw, align 1, !tbaa !229  ; 2 uses
  %i.dx = icmp eq i8 %.pr, 48
  br i1 %i.dx, label %.lr.ph, label %.preheader, !llvm.loop !3250

bb.o:                                             ; preds = %.preheader
  %2 = zext nneg i8 %i.du to i64
  %3 = add nsw i64 %2, -48                        ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !229 ; 2 uses
  %i.ea = add i8 %i.dz, -48
  %or.cond.1 = icmp ult i8 %i.ea, 10
  br i1 %or.cond.1, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %bb.o
  %4 = zext nneg i8 %i.dz to i64
  %5 = mul nuw nsw i64 %3, 10
  %6 = add nsw i64 %5, -48
  %i.eb = add nsw i64 %6, %4                      ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !229 ; 2 uses
  %i.ee = add i8 %i.ed, -48
  %or.cond.2 = icmp ult i8 %i.ee, 10
  br i1 %or.cond.2, label %bb.q, label %.critedge2

bb.q:                                             ; preds = %bb.p
  %7 = zext nneg i8 %i.ed to i64
  %8 = mul nuw nsw i64 %i.eb, 10
  %9 = add nsw i64 %8, -48
  %i.ef = add nuw nsw i64 %9, %7                  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !229 ; 2 uses
  %i.ei = add i8 %i.eh, -48
  %or.cond.3 = icmp ult i8 %i.ei, 10
  br i1 %or.cond.3, label %bb.r, label %.critedge2

bb.r:                                             ; preds = %bb.q
  %10 = zext nneg i8 %i.eh to i64
  %11 = mul nuw nsw i64 %i.ef, 10
  %12 = add nsw i64 %11, -48
  %i.ej = add nuw nsw i64 %12, %10                ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 4
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !229 ; 2 uses
  %i.em = add i8 %i.el, -48
  %or.cond.4 = icmp ult i8 %i.em, 10
  br i1 %or.cond.4, label %bb.s, label %.critedge2

bb.s:                                             ; preds = %bb.r
  %13 = zext nneg i8 %i.el to i64
  %14 = mul nuw nsw i64 %i.ej, 10
  %15 = add nsw i64 %14, -48
  %i.en = add nuw nsw i64 %15, %13                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 5
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !229 ; 2 uses
  %i.eq = add i8 %i.ep, -48
  %or.cond.5 = icmp ult i8 %i.eq, 10
  br i1 %or.cond.5, label %bb.t, label %.critedge2

bb.t:                                             ; preds = %bb.s
  %16 = zext nneg i8 %i.ep to i64
  %17 = mul nuw nsw i64 %i.en, 10
  %18 = add nsw i64 %17, -48
  %i.er = add nuw nsw i64 %18, %16                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 6
  %i.et = load i8, ptr %i.es, align 1, !tbaa !229 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %or.cond.6 = icmp ult i8 %i.eu, 10
  br i1 %or.cond.6, label %bb.u, label %.critedge2

bb.u:                                             ; preds = %bb.t
  %19 = zext nneg i8 %i.et to i64
  %20 = mul nuw nsw i64 %i.er, 10
  %21 = add nsw i64 %20, -48
  %i.ev = add nuw nsw i64 %21, %19                ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 7
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !229 ; 2 uses
  %i.ey = add i8 %i.ex, -48
  %or.cond.7 = icmp ult i8 %i.ey, 10
  br i1 %or.cond.7, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %bb.u
  %22 = zext nneg i8 %i.ex to i64
  %23 = mul nuw nsw i64 %i.ev, 10
  %24 = add nsw i64 %23, -48
  %i.ez = add nuw nsw i64 %24, %22                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !229 ; 2 uses
  %i.fc = add i8 %i.fb, -48
  %or.cond.8 = icmp ult i8 %i.fc, 10
  br i1 %or.cond.8, label %bb.w, label %.critedge2

bb.w:                                             ; preds = %bb.v
  %25 = zext nneg i8 %i.fb to i64
  %26 = mul nuw nsw i64 %i.ez, 10
  %27 = add nsw i64 %26, -48
  %i.fd = add nuw nsw i64 %27, %25                ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 9
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !229 ; 2 uses
  %i.fg = add i8 %i.ff, -48
  %or.cond.9 = icmp ult i8 %i.fg, 10
  br i1 %or.cond.9, label %bb.x, label %.critedge2

bb.x:                                             ; preds = %bb.w
  %28 = zext nneg i8 %i.ff to i64
  %29 = mul nuw nsw i64 %i.fd, 10
  %30 = add nsw i64 %29, -48
  %i.fh = add nuw nsw i64 %30, %28
  %i.fi = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 10
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !229
  %i.fk = add i8 %i.fj, -48
  %or.cond.10 = icmp ult i8 %i.fk, 10
  br i1 %or.cond.10, label %.critedge2.thread, label %.critedge2

.critedge2:                                       ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.preheader
  %.04667.lcssa = phi i64 [ 0, %.preheader ], [ %3, %bb.o ], [ %i.eb, %bb.p ], [ %i.ef, %bb.q ], [ %i.ej, %bb.r ], [ %i.en, %bb.s ], [ %i.er, %bb.t ], [ %i.ev, %bb.u ], [ %i.ez, %bb.v ], [ %i.fd, %bb.w ], [ %i.fh, %bb.x ] ; 3 uses
  %i.fl = add nsw i64 %.04667.lcssa, %.042.neg
  %i.fm = icmp sgt i64 %i.fl, 2147483647
  br i1 %i.fm, label %.critedge2.thread, label %bb.y

bb.y:                                             ; preds = %.critedge2
  %i.fn = sub nsw i64 0, %.04667.lcssa
  %spec.select = select i1 %.not56, i64 %i.fn, i64 %.04667.lcssa
  %i.fo = trunc i64 %spec.select to i32
  br label %.critedge2.thread.sink.split

.critedge2.thread.sink.split:                     ; preds = %.critedge.thread, %bb.y
  %.0.lcssa77.sink = phi i32 [ %i.fo, %bb.y ], [ %.0.lcssa77, %.critedge.thread ]
  store i32 %.0.lcssa77.sink, ptr %1, align 4
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.sink.split, %bb.x, %.critedge2, %bb.n, %.critedge.thread, %.critedge
  %.1 = phi i32 [ 0, %bb.n ], [ 0, %.critedge2 ], [ 0, %.critedge.thread ], [ 0, %.critedge ], [ 0, %bb.x ], [ 1, %.critedge2.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkList(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2820
  %.not91 = icmp eq i32 %2, 0
  br i1 %.not91, label %.critedge, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not58 = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph96, %sqlite3PagerUnref.exit
  %.093 = phi i32 [ %2, %.lr.ph96 ], [ %i.en, %sqlite3PagerUnref.exit ] ; 11 uses
  %.04992 = phi i32 [ %3, %.lr.ph96 ], [ %.2, %sqlite3PagerUnref.exit ] ; 5 uses
  %i.o = load i32, ptr %i.j, align 4, !tbaa !2816
  %.not55 = icmp eq i32 %i.o, 0
  br i1 %.not55, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %i.p = load i32, ptr %i.k, align 8, !tbaa !2815
  %i.q = add i32 %.093, -1
  %or.cond.not.i = icmp ult i32 %i.q, %i.p
  br i1 %or.cond.not.i, label %bb.d, label %sqlite3PagerUnref.exit.thread

bb.d:                                             ; preds = %bb.c
  %.val13.i = load ptr, ptr %i.l, align 8, !tbaa !2818
  %i.r = lshr i32 %.093, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !229   ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = and i32 %.093, 7
  %i.x = shl nuw nsw i32 1, %i.w                  ; 2 uses
  %i.y = and i32 %i.x, %i.v
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.e, label %sqlite3PagerUnref.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = trunc nuw i32 %i.x to i8
  %i.aa = or i8 %i.u, %i.z
  store i8 %i.aa, ptr %i.t, align 1, !tbaa !229
  %i.ab = add i32 %.04992, -1                     ; 5 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !2814 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !516
  %i.af = call i32 %i.ae(ptr noundef %i.ac, i32 noundef %.093, ptr noundef nonnull %i.g, i32 noundef 0) #59, !inline_history !517
  %.not57 = icmp eq i32 %i.af, 0
  br i1 %.not57, label %bb.f, label %sqlite3PagerUnref.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !515
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !518 ; 10 uses
  br i1 %.not58, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !229
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw i32 %i.ak, 24                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !229
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16               ; 2 uses
  %i.aq = or disjoint i32 %i.ap, %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 6
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !229
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8                ; 2 uses
  %i.av = or disjoint i32 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 7
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !229
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = or disjoint i32 %i.av, %i.ay            ; 3 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !2813  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !744
  %.not59 = icmp eq i8 %i.bc, 0
  br i1 %.not59, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.bd = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.ba, i32 noundef %.093, ptr noundef %i.e, ptr noundef nonnull %i.f)
  switch i32 %i.bd, label %checkOom.exit.i [
    i32 0, label %bb.k
    i32 3082, label %bb.i
    i32 7, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  store i32 7, ptr %i.n, align 4, !tbaa !2819
  store i32 0, ptr %i.j, align 4, !tbaa !2816
  %i.be = load i32, ptr %i.h, align 8, !tbaa !2820
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.j, label %checkOom.exit.i

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.h, align 8, !tbaa !2820
  br label %checkOom.exit.i

checkOom.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.423, i32 noundef %.093)
  br label %checkPtrmap.exit

bb.k:                                             ; preds = %bb.h
  %i.bg = load i8, ptr %i.e, align 1, !tbaa !229  ; 2 uses
  %.not14.i = icmp eq i8 %i.bg, 2
  %i.bh = load i32, ptr %i.f, align 4             ; 2 uses
  %.not15.i = icmp eq i32 %i.bh, 0
  %or.cond.i = select i1 %.not14.i, i1 %.not15.i, i1 false
  br i1 %or.cond.i, label %checkPtrmap.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = zext i8 %i.bg to i32
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.424, i32 noundef %.093, i32 noundef 2, i32 noundef 0, i32 noundef %i.bi, i32 noundef %i.bh)
  br label %checkPtrmap.exit

checkPtrmap.exit:                                 ; preds = %checkOom.exit.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  %.pre = load ptr, ptr %0, align 8, !tbaa !2813
  br label %bb.m

bb.m:                                             ; preds = %checkPtrmap.exit, %bb.g
  %i.bj = phi ptr [ %.pre, %checkPtrmap.exit ], [ %i.ba, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !751
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = icmp ugt i32 %i.az, %i.bn
  br i1 %i.bo, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.bp = icmp sgt i32 %i.az, 0
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bq = or disjoint i32 %i.al, %i.ap
  %i.br = or disjoint i32 %i.bq, %i.au
  %i.bs = or disjoint i32 %i.br, %i.ay
  %wide.trip.count = zext i32 %i.bs to i64
  br label %.lr.ph

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.416, i32 noundef %.093)
  %i.bt = add i32 %.04992, -2
  br label %bb.ae

.lr.ph:                                           ; preds = %.lr.ph.preheader, %checkRef.exit72
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %checkRef.exit72 ] ; 2 uses
  %i.bu = shl nuw nsw i64 %indvars.iv, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bu ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !229
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw i32 %i.by, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
end_hunk_5
begin_hunk_6_@vtabCallConstructor:bb.a
sqlite3DeleteTable.exit:                          ; preds = %bb.o, %bb.p
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !3270
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !1089
  switch i32 %i.bm, label %sqlite3OomFault.exit149 [
    i32 7, label %bb.q
    i32 0, label %bb.ad
  ]

bb.q:                                             ; preds = %sqlite3DeleteTable.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !552
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %sqlite3OomFault.exit149

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !553
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.s, label %sqlite3OomFault.exit149

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.bt, align 1, !tbaa !552
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !554
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.cc monotonic, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !555
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !555
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.cg, align 4, !tbaa !556
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !303 ; 2 uses
  %.not.i140 = icmp eq ptr %i.ci, null
  br i1 %.not.i140, label %sqlite3OomFault.exit149, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.133), !inline_history !557
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !303 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i32 7, ptr %i.ck, align 8, !tbaa !304
  %.0.in17.i141 = getelementptr inbounds nuw i8, ptr %i.cj, i64 216
  %.018.i142 = load ptr, ptr %.0.in17.i141, align 8, !tbaa !558 ; 2 uses
  %.not1619.i143 = icmp eq ptr %.018.i142, null
  br i1 %.not1619.i143, label %sqlite3OomFault.exit149, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.v, %.lr.ph.i144
  %.020.i145 = phi ptr [ %.0.i147, %.lr.ph.i144 ], [ %.018.i142, %bb.v ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.020.i145, i64 52 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !315
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !315
  %i.co = getelementptr inbounds nuw i8, ptr %.020.i145, i64 24
  store i32 7, ptr %i.co, align 8, !tbaa !304
  %.0.in.i146 = getelementptr inbounds nuw i8, ptr %.020.i145, i64 216
  %.0.i147 = load ptr, ptr %.0.in.i146, align 8, !tbaa !558 ; 2 uses
  %.not16.i148 = icmp eq ptr %.0.i147, null
  br i1 %.not16.i148, label %sqlite3OomFault.exit149, label %.lr.ph.i144, !llvm.loop !559

sqlite3OomFault.exit149:                          ; preds = %.lr.ph.i144, %bb.v, %bb.u, %bb.r, %bb.q, %sqlite3DeleteTable.exit
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %sqlite3OomFault.exit149
  %i.cr = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.460, ptr noundef nonnull %.0.i.i)
  store ptr %i.cr, ptr %4, align 8, !tbaa !253
  br label %sqlite3DbFree.exit153

bb.x:                                             ; preds = %sqlite3OomFault.exit149
  %i.cs = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.cp)
  store ptr %i.cs, ptr %4, align 8, !tbaa !253
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !253 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %sqlite3DbFree.exit153, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i150 = icmp eq i32 %i.cv, 0
  br i1 %.not.i150, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i151, label %sqlite3_mutex_enter.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.cx(ptr noundef nonnull %i.cw) #59, !inline_history !270
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.aa, %bb.z
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.cz = call i32 %i.cy(ptr noundef nonnull %i.ct) #59, !inline_history !271
  %i.da = sext i32 %i.cz to i64
  %i.db = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.dc = sub nsw i64 %i.db, %i.da
  store i64 %i.dc, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.de = add nsw i64 %i.dd, -1
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.df(ptr noundef nonnull %i.ct) #59, !inline_history !272
  %i.dg = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.dg, null
  br i1 %.not.i4.i, label %sqlite3DbFree.exit153, label %bb.ab

bb.ab:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.dh(ptr noundef nonnull %i.dg) #59, !inline_history !273
  br label %sqlite3DbFree.exit153

bb.ac:                                            ; preds = %bb.y
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.di(ptr noundef nonnull %i.ct) #59, !inline_history !272
  br label %sqlite3DbFree.exit153

sqlite3DbFree.exit153:                            ; preds = %bb.ac, %bb.ab, %sqlite3_mutex_enter.exit.i, %bb.x, %bb.w
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  br label %sqlite3DbFree.exit161

bb.ad:                                            ; preds = %sqlite3DeleteTable.exit
  %i.dj = load ptr, ptr %i.bl, align 8, !tbaa !576 ; 2 uses
  %.not131 = icmp eq ptr %i.dj, null
  br i1 %.not131, label %sqlite3DbFree.exit161, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %2, align 8, !tbaa !966
  %i.dl = load ptr, ptr %i.bl, align 8, !tbaa !576
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !702
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !709
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !709
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 1, ptr %i.dp, align 8, !tbaa !701
  %i.dq = load i32, ptr %i.bf, align 8, !tbaa !1090
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.461, ptr noundef nonnull %.0.i.i)
  store ptr %i.ds, ptr %4, align 8, !tbaa !253
  call fastcc void @sqlite3VtabUnlock(ptr noundef nonnull %i.s)
  br label %sqlite3DbFree.exit161

bb.ag:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !229
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !699
  store ptr %i.s, ptr %i.dt, align 8, !tbaa !229
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !883 ; 2 uses
  %i.dy = icmp sgt i16 %i.dx, 0
  br i1 %i.dy, label %.lr.ph191, label %sqlite3DbFree.exit161

.lr.ph191:                                        ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.pre216 = load ptr, ptr %i.dz, align 8, !tbaa !884
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph191, %bb.ap
  %i.eb = phi i16 [ %i.dx, %.lr.ph191 ], [ %i.iv, %bb.ap ]
  %i.ec = phi ptr [ %.pre216, %.lr.ph191 ], [ %i.iw, %bb.ap ] ; 2 uses
  %indvars.iv214 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next215, %bb.ap ] ; 3 uses
  %.0116189 = phi i16 [ 0, %.lr.ph191 ], [ %.1, %bb.ap ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv214 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 14
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !885
  %i.eg = and i16 %i.ef, 4
  %.not.i154 = icmp eq i16 %i.eg, 0
  br i1 %.not.i154, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !931 ; 2 uses
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eh) #60
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %sqlite3Strlen30.exit

bb.aj:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.em = load i8, ptr %i.el, align 8
  %i.en = lshr i8 %i.em, 4                        ; 2 uses
  %.not8.i = icmp eq i8 %i.en, 0
  br i1 %.not8.i, label %sqlite3Strlen30.exit, label %sqlite3ColumnType.exit

sqlite3ColumnType.exit:                           ; preds = %bb.aj
  %i.eo = zext nneg i8 %i.en to i64
  %6 = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.eo
  %7 = getelementptr i8, ptr %6, i64 -8
  %i.ep = load ptr, ptr %7, align 8, !tbaa !253   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.critedge, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %sqlite3ColumnType.exit, %bb.ai, %bb.aj
  %.0.i155166 = phi ptr [ %i.ep, %sqlite3ColumnType.exit ], [ @.str.4, %bb.aj ], [ %i.ek, %bb.ai ] ; 18 uses
  %i.er = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i155166) #60 ; 2 uses
  %i.es = trunc i64 %i.er to i32
  %i.et = and i32 %i.es, 1073741823               ; 3 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %sqlite3Strlen30.exit
  %scevgep = getelementptr i8, ptr %.0.i155166, i64 6
  %wide.trip.count = and i64 %i.er, 1073741823    ; 3 uses
  %i.ev = load i8, ptr %.0.i155166, align 1, !tbaa !229
  %i.ew = and i8 %i.ev, -33
  %i.ex = icmp eq i8 %i.ew, 72
  br i1 %i.ex, label %.lr.ph.i158.1.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.1.peel:                               ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 1 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !229
  %i.fa = and i8 %i.ez, -33
  %i.fb = icmp eq i8 %i.fa, 73
  br i1 %i.fb, label %.lr.ph.i158.2.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.2.peel:                               ; preds = %.lr.ph.i158.1.peel
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 2 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !229
  %i.fe = and i8 %i.fd, -33
  %i.ff = icmp eq i8 %i.fe, 68
  br i1 %i.ff, label %.lr.ph.i158.3.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.3.peel:                               ; preds = %.lr.ph.i158.2.peel
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 3 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !229
  %i.fi = and i8 %i.fh, -33
  %i.fj = icmp eq i8 %i.fi, 68
  br i1 %i.fj, label %.lr.ph.i158.4.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.4.peel:                               ; preds = %.lr.ph.i158.3.peel
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 4 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !229
  %i.fm = and i8 %i.fl, -33
  %i.fn = icmp eq i8 %i.fm, 69
  br i1 %i.fn, label %.lr.ph.i158.5.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.5.peel:                               ; preds = %.lr.ph.i158.4.peel
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 5 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !229
  %i.fq = and i8 %i.fp, -33
  %i.fr = icmp eq i8 %i.fq, 78
  br i1 %i.fr, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.peel

sqlite3_strnicmp.exit.peel:                       ; preds = %bb.ak, %.lr.ph.i158.1.peel, %.lr.ph.i158.2.peel, %.lr.ph.i158.3.peel, %.lr.ph.i158.4.peel, %.lr.ph.i158.5.peel
  %.lcssa.peel = phi i32 [ 104, %bb.ak ], [ 105, %.lr.ph.i158.1.peel ], [ 100, %.lr.ph.i158.2.peel ], [ 100, %.lr.ph.i158.3.peel ], [ 101, %.lr.ph.i158.4.peel ], [ 110, %.lr.ph.i158.5.peel ]
  %.023.i.lcssa193.peel = phi ptr [ %.0.i155166, %bb.ak ], [ %i.ey, %.lr.ph.i158.1.peel ], [ %i.fc, %.lr.ph.i158.2.peel ], [ %i.fg, %.lr.ph.i158.3.peel ], [ %i.fk, %.lr.ph.i158.4.peel ], [ %i.fo, %.lr.ph.i158.5.peel ]
  %i.fs = load i8, ptr %.023.i.lcssa193.peel, align 1, !tbaa !229
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !229
  %i.fw = zext i8 %i.fv to i32
  %i.fx = icmp eq i32 %.lcssa.peel, %i.fw
  br i1 %i.fx, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.thread169.peel

sqlite3_strnicmp.exit.thread.peel:                ; preds = %sqlite3_strnicmp.exit.peel, %.lr.ph.i158.5.peel
  %i.fy = load i8, ptr %scevgep, align 1, !tbaa !229 ; 3 uses
  switch i8 %i.fy, label %sqlite3_strnicmp.exit.thread169.peel [
    i8 0, label %bb.am
    i8 32, label %bb.am
  ]

sqlite3_strnicmp.exit.thread169.peel:             ; preds = %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.peel
  %exitcond.peel.not = icmp eq i32 %i.et, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next

.lr.ph.i158.preheader.peel.next:                  ; preds = %sqlite3_strnicmp.exit.thread169.peel, %sqlite3_strnicmp.exit.thread169
  %indvars.iv202 = phi i64 [ %indvars.iv.next, %sqlite3_strnicmp.exit.thread169 ], [ 1, %sqlite3_strnicmp.exit.thread169.peel ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv202 ; 10 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !229
  %i.gb = and i8 %i.ga, -33
  %i.gc = icmp eq i8 %i.gb, 72
  br i1 %i.gc, label %.lr.ph.i158.1, label %sqlite3_strnicmp.exit

.lr.ph.i158.1:                                    ; preds = %.lr.ph.i158.preheader.peel.next
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !229
  %i.gf = and i8 %i.ge, -33
  %i.gg = icmp eq i8 %i.gf, 73
  br i1 %i.gg, label %.lr.ph.i158.2, label %sqlite3_strnicmp.exit

.lr.ph.i158.2:                                    ; preds = %.lr.ph.i158.1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 2 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !229
  %i.gj = and i8 %i.gi, -33
  %i.gk = icmp eq i8 %i.gj, 68
  br i1 %i.gk, label %.lr.ph.i158.3, label %sqlite3_strnicmp.exit

.lr.ph.i158.3:                                    ; preds = %.lr.ph.i158.2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 3 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !229
  %i.gn = and i8 %i.gm, -33
  %i.go = icmp eq i8 %i.gn, 68
  br i1 %i.go, label %.lr.ph.i158.4, label %sqlite3_strnicmp.exit

.lr.ph.i158.4:                                    ; preds = %.lr.ph.i158.3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !229
  %i.gr = and i8 %i.gq, -33
  %i.gs = icmp eq i8 %i.gr, 69
  br i1 %i.gs, label %.lr.ph.i158.5, label %sqlite3_strnicmp.exit

.lr.ph.i158.5:                                    ; preds = %.lr.ph.i158.4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fz, i64 5 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !229
  %i.gv = and i8 %i.gu, -33
  %i.gw = icmp eq i8 %i.gv, 78
  br i1 %i.gw, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i158.preheader.peel.next, %.lr.ph.i158.1, %.lr.ph.i158.2, %.lr.ph.i158.3, %.lr.ph.i158.4, %.lr.ph.i158.5
  %.lcssa = phi i32 [ 104, %.lr.ph.i158.preheader.peel.next ], [ 105, %.lr.ph.i158.1 ], [ 100, %.lr.ph.i158.2 ], [ 100, %.lr.ph.i158.3 ], [ 101, %.lr.ph.i158.4 ], [ 110, %.lr.ph.i158.5 ]
  %.023.i.lcssa193 = phi ptr [ %i.fz, %.lr.ph.i158.preheader.peel.next ], [ %i.gd, %.lr.ph.i158.1 ], [ %i.gh, %.lr.ph.i158.2 ], [ %i.gl, %.lr.ph.i158.3 ], [ %i.gp, %.lr.ph.i158.4 ], [ %i.gt, %.lr.ph.i158.5 ]
  %i.gx = load i8, ptr %.023.i.lcssa193, align 1, !tbaa !229
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !229
  %i.hb = zext i8 %i.ha to i32
  %i.hc = icmp eq i32 %.lcssa, %i.hb
  br i1 %i.hc, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit.thread169

sqlite3_strnicmp.exit.thread:                     ; preds = %sqlite3_strnicmp.exit, %.lr.ph.i158.5
  %i.hd = getelementptr i8, ptr %i.fz, i64 -1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !229
  %i.hf = icmp eq i8 %i.he, 32
  br i1 %i.hf, label %bb.al, label %sqlite3_strnicmp.exit.thread169

bb.al:                                            ; preds = %sqlite3_strnicmp.exit.thread
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fz, i64 6
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !229 ; 2 uses
  switch i8 %i.hh, label %sqlite3_strnicmp.exit.thread169 [
    i8 0, label %.loopexit
    i8 32, label %.loopexit
  ]

sqlite3_strnicmp.exit.thread169:                  ; preds = %bb.al, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next, !llvm.loop !3271

.loopexit:                                        ; preds = %bb.al, %bb.al
  %i.hi = trunc nuw nsw i64 %indvars.iv202 to i32
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.thread.peel
  %.0113181.lcssa = phi i32 [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hi, %.loopexit ] ; 3 uses
  %.lcssa198 = phi ptr [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %i.fz, %.loopexit ] ; 2 uses
  %.lcssa197 = phi i8 [ %i.fy, %sqlite3_strnicmp.exit.thread.peel ], [ %i.fy, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hh, %.loopexit ]
  %.not132.not = icmp eq i8 %.lcssa197, 0
  %i.hj = select i1 %.not132.not, i32 6, i32 7    ; 2 uses
  %i.hk = add nuw nsw i32 %.0113181.lcssa, %i.hj
  %.not133183 = icmp samesign ugt i32 %i.hk, %i.et
  br i1 %.not133183, label %._crit_edge187, label %iter.check

iter.check:                                       ; preds = %bb.am
  %i.hl = zext nneg i32 %i.hj to i64              ; 3 uses
  %i.hm = zext i32 %.0113181.lcssa to i64         ; 7 uses
  %i.hn = add nuw nsw i64 %i.hl, %i.hm            ; 5 uses
  %i.ho = add nuw nsw i64 %wide.trip.count, 1
  %i.hp = add nuw nsw i64 %i.hl, %i.hm
  %i.hq = sub nsw i64 %i.ho, %i.hp                ; 7 uses
  %min.iters.check = icmp ult i64 %i.hq, 8
  br i1 %min.iters.check, label %.lr.ph186.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check248 = icmp ult i64 %i.hq, 32
  br i1 %min.iters.check248, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.hq, 24
  %n.vec = and i64 %i.hq, -32                     ; 5 uses
  %i.hr = add nsw i64 %n.vec, %i.hm
  %i.hs = add nsw i64 %i.hn, %n.vec
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %i.hn
  %invariant.gep = getelementptr i8, ptr %.0.i155166, i64 %i.hm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %wide.load = load <16 x i8>, ptr %i.hu, align 1, !tbaa !229
  %wide.load249 = load <16 x i8>, ptr %i.hv, align 1, !tbaa !229
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !229
  store <16 x i8> %wide.load249, ptr %i.hw, align 1, !tbaa !229
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !3272

end_hunk_6
begin_hunk_7_@tokenExpr:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %2, i64 %i.b, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b
  store i8 0, ptr %i.o, align 1, !tbaa !229
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.u, ptr %i.v, align 4, !tbaa !229
  %i.w = load i8, ptr %i.m, align 8, !tbaa !229   ; 4 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !229
  %.not28 = icmp sgt i8 %i.z, -1
  br i1 %.not28, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i8 %i.w, 34
  %i.ab = select i1 %i.aa, i32 75497600, i32 75497472
  store i32 %i.ab, ptr %i.g, align 4, !tbaa !369
  %i.ac = icmp eq i8 %i.w, 91
  %spec.store.select.i.i = select i1 %i.ac, i8 93, i8 %i.w ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.020.i.i = phi i32 [ %i.an, %bb.f ], [ 1, %bb.c ] ; 3 uses
  %i.ad = sext i32 %.020.i.i to i64
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !229 ; 2 uses
  %i.ag = icmp eq i8 %i.af, %spec.store.select.i.i
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i32 %.020.i.i, 1                ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.m, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !229
  %i.al = icmp eq i8 %i.ak, %spec.store.select.i.i
  br i1 %i.al, label %bb.f, label %sqlite3DequoteExpr.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %spec.store.select.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.e ], [ %i.af, %bb.d ]
  %.121.i.i = phi i32 [ %i.ah, %bb.e ], [ %.020.i.i, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.i
  store i8 %spec.store.select.sink.i.i, ptr %i.am, align 1, !tbaa !229
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.an = add nsw i32 %.121.i.i, 1
  br label %bb.d

sqlite3DequoteExpr.exit:                          ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.i
  store i8 0, ptr %i.ao, align 1, !tbaa !229
  br label %bb.g

bb.g:                                             ; preds = %sqlite3DequoteExpr.exit, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 1, ptr %i.ap, align 8, !tbaa !3498
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !1093
  switch i8 %i.ar, label %bb.h [
    i8 3, label %sqlite3RenameTokenMap.exit
    i8 1, label %sqlite3RenameTokenMap.exit
    i8 0, label %sqlite3RenameTokenMap.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %0, align 8, !tbaa !653   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.as, i64 noundef 32), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.at, %bb.i ], [ %i.au, %bb.j ] ; 7 uses
  %.not.i.i29 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i29, label %sqlite3RenameTokenMap.exit, label %bb.k

bb.k:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aw, i8 0, i64 12, i1 false)
  store ptr %i.d, ptr %.0.i.i.i, align 8, !tbaa !3502
  store ptr %2, ptr %i.av, align 8, !tbaa !253
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !3552
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !3553
  store ptr %.0.i.i.i, ptr %i.ax, align 8, !tbaa !3552
  br label %sqlite3RenameTokenMap.exit

sqlite3RenameTokenMap.exit:                       ; preds = %bb.g, %bb.g, %bb.g, %bb.k, %sqlite3DbMallocRaw.exit.i.i, %bb.a
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3ExprIdToTrueFalse(ptr nofree noundef captures(none) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !369  ; 2 uses
  %i.c = and i32 %i.b, 67110912
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %sqlite3IsTrueOrFalse.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.013.i.i = phi ptr [ @.str.618, %bb.b ], [ %i.q, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.p, %bb.f ] ; 2 uses
  %i.f = load i8, ptr %.0.i.i, align 1, !tbaa !229 ; 3 uses
  %i.g = load i8, ptr %.013.i.i, align 1, !tbaa !229 ; 2 uses
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.f, 0
  br i1 %i.i, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !229
  %i.m = zext i8 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !229
  %.not.i.i = icmp eq i8 %i.l, %i.o
  br i1 %.not.i.i, label %bb.f, label %sqlite3StrICmp.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %bb.c

sqlite3StrICmp.exit.i:                            ; preds = %bb.e, %bb.i
  %.013.i2.i = phi ptr [ %i.ac, %bb.i ], [ @.str.619, %bb.e ] ; 2 uses
  %.0.i3.i = phi ptr [ %i.ab, %bb.i ], [ %i.e, %bb.e ] ; 2 uses
  %i.r = load i8, ptr %.0.i3.i, align 1, !tbaa !229 ; 3 uses
  %i.s = load i8, ptr %.013.i2.i, align 1, !tbaa !229 ; 2 uses
  %i.t = icmp eq i8 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.u = icmp eq i8 %i.r, 0
  br i1 %i.u, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.v = zext i8 %i.r to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !229
  %i.y = zext i8 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !229
  %.not.i4.i = icmp eq i8 %i.x, %i.aa
  br i1 %.not.i4.i, label %bb.i, label %sqlite3IsTrueOrFalse.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i2.i, i64 1
  br label %sqlite3StrICmp.exit.i

.loopexit:                                        ; preds = %bb.d, %bb.g
  %.0.i.ph = phi i32 [ 536870912, %bb.g ], [ 268435456, %bb.d ]
  store i8 -85, ptr %0, align 8, !tbaa !3023
  %i.ad = or i32 %.0.i.ph, %i.b
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !369
  br label %sqlite3IsTrueOrFalse.exit

sqlite3IsTrueOrFalse.exit:                        ; preds = %bb.h, %bb.a, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3AddNotNull(ptr nofree captures(address_is_null) %.344.val, i32 noundef %0) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %.344.val, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.344.val, i64 54 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !883  ; 2 uses
  %i.d = icmp slt i16 %i.c, 1
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i16 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.344.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !884
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = trunc i32 %0 to i8
  %i.j = getelementptr i8, ptr %i.h, i64 -8       ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.i, 15
  %i.m = and i8 %i.k, -16
  %i.n = or disjoint i8 %i.m, %i.l
  store i8 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.344.val, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !790
  %i.q = or i32 %i.p, 2048
  store i32 %i.q, ptr %i.o, align 8, !tbaa !790
  %i.r = getelementptr i8, ptr %i.h, i64 -2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !885
  %i.t = and i16 %i.s, 8
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.344.val, i64 16
  %.01 = load ptr, ptr %i.u, align 8, !tbaa !937  ; 2 uses
  %.not162 = icmp eq ptr %.01, null
  br i1 %.not162, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.03 = phi ptr [ %.0, %bb.f ], [ %.01, %bb.d ]  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !880
  %i.x = load i16, ptr %i.w, align 2, !tbaa !332
  %i.y = sext i16 %i.x to i32
  %i.z = load i16, ptr %i.b, align 2, !tbaa !883
  %i.aa = sext i16 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = icmp eq i32 %i.ab, %i.y
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.03, i64 99 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = or i16 %i.ae, 8
  store i16 %i.af, ptr %i.ad, align 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.03, i64 40
  %.0 = load ptr, ptr %i.ag, align 8, !tbaa !937  ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %.loopexit, label %.lr.ph, !llvm.loop !3584

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3AddPrimaryKey(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1095 ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !790  ; 2 uses
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !949
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.811, ptr noundef %i.g)
  br label %.split

bb.d:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %i.e, 4
  store i32 %i.h, ptr %i.d, align 8, !tbaa !790
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.k = load i16, ptr %i.j, align 2, !tbaa !883
  %i.l = sext i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !884
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 14 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !885  ; 2 uses
  %i.t = or i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 2, !tbaa !885
  %i.u = and i16 %i.s, 96
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %makeColumnPartOfPrimaryKey.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.813)
  br label %makeColumnPartOfPrimaryKey.exit

bb.g:                                             ; preds = %bb.d
  %i.v = load i32, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %makeColumnPartOfPrimaryKey.exit.thread

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %makeColumnPartOfPrimaryKey.exit78
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %makeColumnPartOfPrimaryKey.exit78 ] ; 2 uses
  %.060113 = phi ptr [ null, %.lr.ph ], [ %.1, %makeColumnPartOfPrimaryKey.exit78 ] ; 3 uses
  %.063111 = phi i32 [ -1, %.lr.ph ], [ %.164, %makeColumnPartOfPrimaryKey.exit78 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.h
  %.06.i.in = phi ptr [ %i.af, %.lr.ph.i ], [ %i.ab, %bb.h ]
  %.06.i = load ptr, ptr %.06.i.in, align 8, !tbaa !368, !nonnull !1098, !noundef !1098 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !369
  %i.ae = and i32 %i.ad, 8192
  %.not4.i = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
  br i1 %.not4.i, label %sqlite3ExprSkipCollate.exit, label %.lr.ph.i

sqlite3ExprSkipCollate.exit:                      ; preds = %.lr.ph.i
  %i.ag = load i8, ptr %.06.i, align 8, !tbaa !3023 ; 2 uses
  switch i8 %i.ag, label %sqlite3StringToId.exit [
    i8 118, label %.sink.split.i
    i8 114, label %bb.i
  ]

bb.i:                                             ; preds = %sqlite3ExprSkipCollate.exit
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !373 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !3023
  %i.aj = icmp eq i8 %i.ai, 118
  br i1 %i.aj, label %.sink.split.i, label %makeColumnPartOfPrimaryKey.exit78

.sink.split.i:                                    ; preds = %bb.i, %sqlite3ExprSkipCollate.exit
  %.sink.i = phi ptr [ %.06.i, %sqlite3ExprSkipCollate.exit ], [ %i.ah, %bb.i ]
  store i8 60, ptr %.sink.i, align 8, !tbaa !3023
  %.pr.pre = load i8, ptr %.06.i, align 8, !tbaa !3023
  br label %sqlite3StringToId.exit

sqlite3StringToId.exit:                           ; preds = %.sink.split.i, %sqlite3ExprSkipCollate.exit
  %i.ak = phi i8 [ %i.ag, %sqlite3ExprSkipCollate.exit ], [ %.pr.pre, %.sink.split.i ]
  %i.al = icmp eq i8 %i.ak, 60
  br i1 %i.al, label %bb.j, label %makeColumnPartOfPrimaryKey.exit78

bb.j:                                             ; preds = %sqlite3StringToId.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !229 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %sqlite3StrIHash.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !229 ; 2 uses
  %.not10.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not10.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.aq = phi i8 [ %i.aw, %.lr.ph.i.i ], [ %i.ap, %.preheader.i.i ]
  %.012.i.i = phi i8 [ %i.au, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.0611.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.an, %.preheader.i.i ]
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !229
  %i.au = add i8 %i.at, %.012.i.i                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !229 ; 2 uses
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i, !llvm.loop !929

sqlite3StrIHash.exit.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i, %bb.j
  %.07.i.i = phi i8 [ 0, %bb.j ], [ 0, %.preheader.i.i ], [ %i.au, %.lr.ph.i.i ] ; 3 uses
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !884 ; 3 uses
  %i.ay = load i16, ptr %i.z, align 2, !tbaa !883
  %i.az = and i8 %.07.i.i, 15
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !229 ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !930
  %i.bi = icmp eq i8 %i.bh, %.07.i.i
  br i1 %i.bi, label %bb.k, label %sqlite3StrICmp.exit.i

bb.k:                                             ; preds = %sqlite3StrIHash.exit.i
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !931
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %.013.i.i = phi ptr [ %i.an, %bb.k ], [ %i.bv, %bb.o ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bj, %bb.k ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bk = load i8, ptr %.0.i.i, align 1, !tbaa !229 ; 3 uses
  %i.bl = load i8, ptr %.013.i.i, align 1, !tbaa !229 ; 2 uses
  %i.bm = icmp eq i8 %i.bk, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp eq i8 %i.bk, 0
  br i1 %i.bn, label %sqlite3ColumnIndex.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bo = zext i8 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bo
end_hunk_7
begin_hunk_8_@sqlite3CreateIndex:bb.a
  store ptr %i.xj, ptr %.1400744, align 8, !tbaa !937
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 40 ; 3 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !2797
  store ptr %i.xn, ptr %i.xh, align 8, !tbaa !2797
  store ptr %.lcssa, ptr %i.xm, align 8, !tbaa !2797
  %i.xo = load ptr, ptr %i.xh, align 8, !tbaa !2797 ; 2 uses
  %.not506 = icmp eq ptr %i.xo, null
  br i1 %.not506, label %.critedge.thread, label %.lr.ph745, !llvm.loop !3612

.critedge:                                        ; preds = %.lr.ph742.preheader, %.lr.ph742
  %i.xp = phi ptr [ %i.xr, %.lr.ph742 ], [ %i.xb, %.lr.ph742.preheader ] ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 40
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !937 ; 4 uses
  %.not504 = icmp eq ptr %i.xr, null
  br i1 %.not504, label %.critedge.thread, label %.lr.ph742, !llvm.loop !3611

.critedge.thread:                                 ; preds = %.critedge, %bb.ek, %.lr.ph745, %bb.r, %bb.p, %.thread616.thread, %.preheader, %sqlite3HasExplicitNulls.exit, %sqlite3FixSrcList.exit, %bb.a, %bb.b, %sqlite3ReadSchema.exit, %bb.ab
  %.1412623660 = phi ptr [ null, %sqlite3FixSrcList.exit ], [ %.1412623659, %.preheader ], [ null, %sqlite3HasExplicitNulls.exit ], [ %.1412623659, %bb.ek ], [ null, %bb.ab ], [ null, %sqlite3ReadSchema.exit ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.p ], [ %.1412623659, %.thread616.thread ], [ null, %bb.r ], [ %.1412623659, %.lr.ph745 ], [ %.1412623659, %.critedge ] ; 2 uses
  %.1398625657 = phi ptr [ %7, %sqlite3FixSrcList.exit ], [ %.1398625656, %.preheader ], [ %7, %sqlite3HasExplicitNulls.exit ], [ %.1398625656, %bb.ek ], [ %7, %bb.ab ], [ %7, %sqlite3ReadSchema.exit ], [ %7, %bb.b ], [ %7, %bb.a ], [ %7, %bb.p ], [ %.1398625656, %.thread616.thread ], [ %7, %bb.r ], [ %.1398625656, %.lr.ph745 ], [ %.1398625656, %.critedge ] ; 2 uses
  %.6626655 = phi ptr [ %4, %sqlite3FixSrcList.exit ], [ %.6626654, %.preheader ], [ %4, %sqlite3HasExplicitNulls.exit ], [ %.6626654, %bb.ek ], [ %4, %bb.ab ], [ %4, %sqlite3ReadSchema.exit ], [ %4, %bb.b ], [ %4, %bb.a ], [ %4, %bb.p ], [ %.6626654, %.thread616.thread ], [ %4, %bb.r ], [ %.6626654, %.lr.ph745 ], [ %.6626654, %.critedge ] ; 2 uses
  %.not.i553 = icmp eq ptr %.1398625657, null
  br i1 %.not.i553, label %sqlite3ExprDelete.exit, label %bb.el

bb.el:                                            ; preds = %.critedge.thread
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.b, ptr noundef %.1398625657), !inline_history !146
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %.critedge.thread, %bb.el
  %.not.i554 = icmp eq ptr %.6626655, null
  br i1 %.not.i554, label %sqlite3ExprListDelete.exit, label %bb.em

bb.em:                                            ; preds = %sqlite3ExprDelete.exit
  call fastcc void @exprListDeleteNN(ptr noundef %i.b, ptr noundef %.6626655), !inline_history !1011
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %sqlite3ExprDelete.exit, %bb.em
  call fastcc void @sqlite3SrcListDelete(ptr noundef %i.b, ptr noundef %3)
  %.not.i555 = icmp eq ptr %.1412623660, null
  br i1 %.not.i555, label %sqlite3DbFree.exit556, label %bb.en

bb.en:                                            ; preds = %sqlite3ExprListDelete.exit
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.b, ptr noundef nonnull %.1412623660)
  br label %sqlite3DbFree.exit556

sqlite3DbFree.exit556:                            ; preds = %sqlite3ExprListDelete.exit, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3AddCheckConstraint(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Token, align 8              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1095 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !653    ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.e = load i8, ptr %i.d, align 4, !tbaa !1093
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.j = load i8, ptr %i.i, align 4, !tbaa !634
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr i8, ptr %.val, i64 40
  %.val.val = load i16, ptr %i.p, align 8, !tbaa !719
  %i.q = and i16 %.val.val, 1
  %.not27 = icmp eq i16 %i.q, 0
  br i1 %.not27, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3473 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef nonnull %i.c, ptr noundef %1)
  br label %sqlite3ExprListAppend.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24
  %i.x = load i32, ptr %i.s, align 8, !tbaa !24   ; 3 uses
  %.not.i = icmp sgt i32 %i.w, %i.x
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef nonnull %i.c, ptr noundef %i.s, ptr noundef %1)
  br label %sqlite3ExprListAppend.exit

bb.h:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.z, ptr %i.s, align 8, !tbaa !24
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.ac, align 8, !tbaa !904
  br label %sqlite3ExprListAppend.exit

sqlite3ExprListAppend.exit:                       ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.u, %bb.e ], [ %i.y, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !3473
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !229
  %.not28 = icmp eq i32 %i.af, 0
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3ExprListAppend.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call fastcc void @sqlite3ExprListSetName(ptr noundef nonnull %0, ptr noundef %.0.i, ptr noundef nonnull %i.ag, i32 noundef 1)
  br label %sqlite3ExprDelete.exit

bb.j:                                             ; preds = %sqlite3ExprListAppend.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.pn = phi ptr [ %2, %bb.j ], [ %.0, %bb.k ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 4 uses
  %i.ah = load i8, ptr %.0, align 1, !tbaa !229
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !229
  %i.al = and i8 %i.ak, 1
  %.not29 = icmp eq i8 %i.al, 0
  br i1 %.not29, label %.preheader, label %bb.k, !llvm.loop !3613

.preheader:                                       ; preds = %bb.k, %.preheader
  %.025 = phi ptr [ %i.am, %.preheader ], [ %3, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.025, i64 -1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !229
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !229
  %i.ar = and i8 %i.aq, 1
  %.not30 = icmp eq i8 %i.ar, 0
  br i1 %.not30, label %bb.l, label %.preheader, !llvm.loop !3614

bb.l:                                             ; preds = %.preheader
  store ptr %.0, ptr %4, align 8, !tbaa !379
  %i.as = ptrtoint ptr %.025 to i64
  %i.at = ptrtoint ptr %.0 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !378
  call fastcc void @sqlite3ExprListSetName(ptr noundef nonnull %0, ptr noundef %.0.i, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %sqlite3ExprDelete.exit

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not.i31 = icmp eq ptr %1, null
  br i1 %.not.i31, label %sqlite3ExprDelete.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.c, ptr noundef %1), !inline_history !146
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.n, %bb.m, %bb.i, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CreateForeignKey(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !653    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1095 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %sqlite3DbFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 4 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !1093
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %sqlite3DbFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  %i.j = load i16, ptr %i.i, align 2, !tbaa !883  ; 2 uses
  %5 = sext i16 %i.j to i64
  %i.k = icmp slt i16 %i.j, 1
  br i1 %i.k, label %sqlite3ExprListDelete.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not146 = icmp eq ptr %3, null
  br i1 %.not146, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %3, align 8, !tbaa !24
  %.not147 = icmp eq i32 %i.l, 1
  br i1 %.not147, label %.preheader196, label %sqlite3ExprListDelete.exit.thread

sqlite3ExprListDelete.exit.thread:                ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !884
  %6 = getelementptr [16 x i8], ptr %i.n, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -16
  %i.o = load ptr, ptr %7, align 8, !tbaa !931
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.835, ptr noundef %i.o, ptr noundef %2)
  br label %bb.as

bb.g:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  %.pre = load i32, ptr %1, align 8, !tbaa !24    ; 3 uses
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %3, align 8, !tbaa !24
  %.not145 = icmp eq i32 %i.p, %.pre
  br i1 %.not145, label %.preheader196, label %sqlite3DbFree.exit.thread189

sqlite3DbFree.exit.thread189:                     ; preds = %bb.h
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.836)
  br label %sqlite3DbFree.exit.thread

.thread:                                          ; preds = %bb.g, %bb.e
  %.1132 = phi i32 [ 1, %bb.e ], [ %.pre, %bb.g ] ; 2 uses
  %i.q = sext i32 %.1132 to i64                   ; 2 uses
  %i.r = shl nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !378
  %i.u = zext i32 %i.t to i64
  %i.v = add nsw i64 %i.r, 65
  %i.w = add nsw i64 %i.v, %i.u
  br label %.loopexit197

.preheader196:                                    ; preds = %bb.h, %bb.f
  %.1132.ph = phi i32 [ %.pre, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.x = sext i32 %.1132.ph to i64                ; 3 uses
  %i.y = shl nsw i64 %i.x, 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !378
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.y, 65
  %i.ad = add nsw i64 %i.ac, %i.ab                ; 2 uses
  %i.ae = load i32, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.preheader, label %.loopexit197

.lr.ph.preheader:                                 ; preds = %.preheader196
  %wide.trip.count = zext nneg i32 %i.ae to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sqlite3Strlen30.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %sqlite3Strlen30.exit ] ; 2 uses
  %.0128203 = phi i64 [ %i.ad, %.lr.ph.preheader ], [ %i.an, %sqlite3Strlen30.exit ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3487 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %sqlite3Strlen30.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ak = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ai) #60
  %i.al = and i64 %i.ak, 1073741823
  %i.am = add nuw nsw i64 %i.al, 1
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %.lr.ph, %bb.i
  %.0.i = phi i64 [ %i.am, %bb.i ], [ 1, %.lr.ph ]
  %i.an = add nsw i64 %.0.i, %.0128203            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit197, label %.lr.ph, !llvm.loop !3615

.loopexit197:                                     ; preds = %sqlite3Strlen30.exit, %.thread, %.preheader196
  %.not148251 = phi i1 [ false, %.thread ], [ true, %.preheader196 ], [ true, %sqlite3Strlen30.exit ]
  %i.ao = phi ptr [ %i.s, %.thread ], [ %i.z, %.preheader196 ], [ %i.z, %sqlite3Strlen30.exit ] ; 3 uses
  %i.ap = phi i64 [ %i.q, %.thread ], [ %i.x, %.preheader196 ], [ %i.x, %sqlite3Strlen30.exit ]
  %.1132249 = phi i32 [ %.1132, %.thread ], [ %.1132.ph, %.preheader196 ], [ %.1132.ph, %sqlite3Strlen30.exit ] ; 5 uses
  %.1129 = phi i64 [ %i.w, %.thread ], [ %i.ad, %.preheader196 ], [ %i.an, %sqlite3Strlen30.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit197
  %i.aq = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %.1129), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i

bb.k:                                             ; preds = %.loopexit197
  %i.ar = tail call fastcc ptr @sqlite3Malloc(i64 noundef %.1129), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.ar, %bb.k ] ; 15 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %sqlite3DbFree.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i, i8 0, i64 %.1129, i1 false)
  store ptr %i.c, ptr %.0.i.i, align 8, !tbaa !3527
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !229
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !3464
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64 ; 4 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.ap ; 10 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !253
  %i.ay = load i8, ptr %i.e, align 4, !tbaa !1093
  switch i8 %i.ay, label %bb.m [
    i8 3, label %sqlite3RenameTokenMap.exit
    i8 1, label %sqlite3RenameTokenMap.exit
    i8 0, label %sqlite3RenameTokenMap.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %0, align 8, !tbaa !653   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.az, i64 noundef 32), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bb = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.ba, %bb.n ], [ %i.bb, %bb.o ] ; 5 uses
  %.not.i.i152 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i152, label %sqlite3RenameTokenMap.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store ptr %i.aw, ptr %.0.i.i.i, align 8, !tbaa !3502
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3494
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3552
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !3553
  store ptr %.0.i.i.i, ptr %i.bd, align 8, !tbaa !3552
  br label %sqlite3RenameTokenMap.exit

sqlite3RenameTokenMap.exit:                       ; preds = %bb.l, %bb.l, %bb.l, %bb.p, %sqlite3DbMallocRaw.exit.i.i
  %i.bg = load ptr, ptr %2, align 8, !tbaa !379
  %i.bh = load i32, ptr %i.ao, align 8, !tbaa !378
  %i.bi = zext i32 %i.bh to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.bg, i64 %i.bi, i1 false)
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !378
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bk
  store i8 0, ptr %i.bl, align 1, !tbaa !229
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !229 ; 3 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !229
  %.not.i153 = icmp sgt i8 %i.bp, -1
  br i1 %.not.i153, label %sqlite3Dequote.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3RenameTokenMap.exit
  %i.bq = icmp eq i8 %i.bm, 91
  %spec.store.select.i = select i1 %i.bq, i8 93, i8 %i.bm ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %.020.i = phi i32 [ %i.cb, %bb.t ], [ 1, %bb.q ] ; 3 uses
  %i.br = sext i32 %.020.i to i64
  %i.bs = getelementptr inbounds i8, ptr %i.aw, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !229 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, %spec.store.select.i
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = add nsw i32 %.020.i, 1                  ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.aw, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !229
  %i.bz = icmp eq i8 %i.by, %spec.store.select.i
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %spec.store.select.sink.i = phi i8 [ %spec.store.select.i, %bb.s ], [ %i.bt, %bb.r ]
  %.121.i = phi i32 [ %i.bv, %bb.s ], [ %.020.i, %bb.r ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.i
  store i8 %spec.store.select.sink.i, ptr %i.ca, align 1, !tbaa !229
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.cb = add nsw i32 %.121.i, 1
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.i
  store i8 0, ptr %i.cc, align 1, !tbaa !229
  br label %sqlite3Dequote.exit

sqlite3Dequote.exit:                              ; preds = %sqlite3RenameTokenMap.exit, %bb.u
  %i.cd = load i32, ptr %i.ao, align 8, !tbaa !378
  %i.ce = add i32 %i.cd, 1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  store i32 %.1132249, ptr %i.ch, align 8, !tbaa !24
  br i1 %i.h, label %bb.ad, label %.preheader194

.preheader194:                                    ; preds = %sqlite3Dequote.exit
  %i.ci = icmp sgt i32 %.1132249, 0
end_hunk_8
begin_hunk_9_@sqlite3Select:bb.a
  %i.bqf = load i8, ptr %i.bqe, align 1, !tbaa !3710 ; 2 uses
  %i.bqg = icmp eq i8 %i.bqf, 0
  br i1 %i.bqg, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %._crit_edge1224
  %i.bqh = load i32, ptr %i.bnb, align 4, !tbaa !952
  %i.bqi = add nsw i32 %i.bqh, 1                  ; 2 uses
  store i32 %i.bqi, ptr %i.bnb, align 4, !tbaa !952
  br label %sqlite3GetTempReg.exit

bb.pz:                                            ; preds = %._crit_edge1224
  %i.bqj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bqk = add i8 %i.bqf, -1                      ; 2 uses
  store i8 %i.bqk, ptr %i.bqe, align 1, !tbaa !3710
  %i.bql = zext i8 %i.bqk to i64
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %i.bqj, i64 %i.bql
  %i.bqn = load i32, ptr %i.bqm, align 4, !tbaa !24
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.py, %bb.pz
  %.0.i1086 = phi i32 [ %i.bqi, %bb.py ], [ %i.bqn, %bb.pz ] ; 4 uses
  %i.bqo = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %.0.i, i32 noundef 98, i32 noundef %i.bpo, i32 noundef %.0857.lcssa, i32 noundef %.0.i1086) ; 0 uses
  %i.bqp = load i32, ptr %i.bmv, align 8, !tbaa !3756
  %i.bqq = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 140, i32 noundef %i.bqp, i32 noundef %.0.i1086) ; 0 uses
  %.not.i1087 = icmp eq i32 %.0.i1086, 0
  br i1 %.not.i1087, label %sqlite3ReleaseTempReg.exit, label %bb.qa

bb.qa:                                            ; preds = %sqlite3GetTempReg.exit
  %i.bqr = load i8, ptr %i.bqe, align 1, !tbaa !3710 ; 3 uses
  %i.bqs = icmp ult i8 %i.bqr, 8
  br i1 %i.bqs, label %bb.qb, label %sqlite3ReleaseTempReg.exit

bb.qb:                                            ; preds = %bb.qa
  %i.bqt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bqu = add nuw nsw i8 %i.bqr, 1
  store i8 %i.bqu, ptr %i.bqe, align 1, !tbaa !3710
  %i.bqv = zext nneg i8 %i.bqr to i64
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %i.bqt, i64 %i.bqv
  store i32 %.0.i1086, ptr %i.bqw, align 4, !tbaa !24
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %sqlite3GetTempReg.exit, %bb.qa, %bb.qb
  %i.bqx = icmp eq i32 %.0857.lcssa, 1
  br i1 %i.bqx, label %bb.qc, label %bb.qf

bb.qc:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %.not.i.i1088 = icmp eq i32 %i.bpo, 0
  br i1 %.not.i.i1088, label %sqlite3ReleaseTempRange.exit, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.bqy = load i8, ptr %i.bqe, align 1, !tbaa !3710 ; 3 uses
  %i.bqz = icmp ult i8 %i.bqy, 8
  br i1 %i.bqz, label %bb.qe, label %sqlite3ReleaseTempRange.exit

bb.qe:                                            ; preds = %bb.qd
  %i.bra = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.brb = add nuw nsw i8 %i.bqy, 1
  store i8 %i.brb, ptr %i.bqe, align 1, !tbaa !3710
  %i.brc = zext nneg i8 %i.bqy to i64
  %i.brd = getelementptr inbounds nuw [4 x i8], ptr %i.bra, i64 %i.brc
  store i32 %i.bpo, ptr %i.brd, align 4, !tbaa !24
  br label %sqlite3ReleaseTempRange.exit

bb.qf:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.bre = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.brf = load i32, ptr %i.bre, align 4, !tbaa !3711
  %i.brg = icmp sgt i32 %.0857.lcssa, %i.brf
  br i1 %i.brg, label %bb.qg, label %sqlite3ReleaseTempRange.exit

bb.qg:                                            ; preds = %bb.qf
  store i32 %.0857.lcssa, ptr %i.bre, align 4, !tbaa !3711
  %i.brh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bpo, ptr %i.brh, align 8, !tbaa !3766
  br label %sqlite3ReleaseTempRange.exit

sqlite3ReleaseTempRange.exit:                     ; preds = %bb.qc, %bb.qd, %bb.qe, %bb.qf, %bb.qg
  call fastcc void @sqlite3WhereEnd(ptr noundef nonnull %i.boc)
  %i.bri = load i32, ptr %i.np, align 8, !tbaa !953 ; 4 uses
  %i.brj = add nsw i32 %i.bri, 1
  store i32 %i.brj, ptr %i.np, align 8, !tbaa !953
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 12
  store i32 %i.bri, ptr %i.brk, align 4, !tbaa !3767
  %i.brl = load i8, ptr %i.bqe, align 1, !tbaa !3710 ; 2 uses
  %i.brm = icmp eq i8 %i.brl, 0
  br i1 %i.brm, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %sqlite3ReleaseTempRange.exit
  %i.brn = load i32, ptr %i.bnb, align 4, !tbaa !952
  %i.bro = add nsw i32 %i.brn, 1                  ; 2 uses
  store i32 %i.bro, ptr %i.bnb, align 4, !tbaa !952
  br label %sqlite3GetTempReg.exit1090

bb.qi:                                            ; preds = %sqlite3ReleaseTempRange.exit
  %i.brp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.brq = add i8 %i.brl, -1                      ; 2 uses
  store i8 %i.brq, ptr %i.bqe, align 1, !tbaa !3710
  %i.brr = zext i8 %i.brq to i64
  %i.brs = getelementptr inbounds nuw [4 x i8], ptr %i.brp, i64 %i.brr
  %i.brt = load i32, ptr %i.brs, align 4, !tbaa !24
  br label %sqlite3GetTempReg.exit1090

sqlite3GetTempReg.exit1090:                       ; preds = %bb.qh, %bb.qi
  %.0.i1089 = phi i32 [ %i.bro, %bb.qh ], [ %i.brt, %bb.qi ] ; 2 uses
  %i.bru = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %.0.i, i32 noundef 122, i32 noundef %i.bri, i32 noundef %.0.i1089, i32 noundef %.0857.lcssa) ; 0 uses
  %i.brv = load i32, ptr %i.bmv, align 8, !tbaa !3756
  %i.brw = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 34, i32 noundef %i.brv, i32 noundef %i.bki) ; 0 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %i.bkj, i64 1
  store i8 1, ptr %i.brx, align 1, !tbaa !3768
  br label %bb.qj

bb.qj:                                            ; preds = %bb.pq, %sqlite3GetTempReg.exit1090
  %.0877 = phi i32 [ %.0.i1089, %sqlite3GetTempReg.exit1090 ], [ 0, %bb.pq ]
  %.0876 = phi i32 [ %i.bri, %sqlite3GetTempReg.exit1090 ], [ 0, %bb.pq ] ; 2 uses
  %i.bry = load ptr, ptr %i.bod, align 8, !tbaa !3757
  %.not984 = icmp eq ptr %i.bry, null
  br i1 %.not984, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  call fastcc void @aggregateConvertIndexedExprRefToColumn(ptr noundef nonnull %i.bkj)
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  br i1 %.1879, label %bb.qq, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.brz = load i32, ptr %i.ni, align 8, !tbaa !1330
  %i.bsa = and i32 %i.brz, 4
  %i.bsb = icmp eq i32 %i.bsa, 0
  br i1 %i.bsb, label %bb.qn, label %bb.qq

bb.qn:                                            ; preds = %bb.qm
  br i1 %i.boq, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %i.bsc = getelementptr i8, ptr %i.boc, i64 68
  %.val1037 = load i8, ptr %i.bsc, align 4
  %i.bsd = and i8 %.val1037, 8
  %.not986 = icmp eq i8 %i.bsd, 0
  br i1 %.not986, label %.thread1144, label %bb.qp

.thread1144:                                      ; preds = %bb.qo
  %i.bse = getelementptr i8, ptr %.0.i, i64 144   ; 2 uses
  %.val10221145 = load i32, ptr %i.bse, align 8, !tbaa !187
  br label %bb.qs

bb.qp:                                            ; preds = %bb.qo, %bb.qn
  store ptr null, ptr %17, align 8, !tbaa !3653
  %i.bsf = load i32, ptr %i.bbn, align 8, !tbaa !3724
  call fastcc void @sqlite3VdbeChangeToNoop(ptr noundef %.0.i, i32 noundef %i.bsf)
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qm, %bb.ql
  %i.bsg = getelementptr i8, ptr %.0.i, i64 144   ; 3 uses
  %.val1022 = load i32, ptr %i.bsg, align 8, !tbaa !187 ; 2 uses
  br i1 %i.boq, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.bsh = load i32, ptr %i.bmv, align 8, !tbaa !3756
  %i.bsi = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i, i32 noundef 134, i32 noundef %i.bsh, i32 noundef %.0877, i32 noundef %.0876) ; 0 uses
  br label %bb.qs

bb.qs:                                            ; preds = %.thread1144, %bb.qr, %bb.qq
  %.val10221146 = phi i32 [ %.val10221145, %.thread1144 ], [ %.val1022, %bb.qr ], [ %.val1022, %bb.qq ]
  %i.bsj = phi ptr [ %i.bse, %.thread1144 ], [ %i.bsg, %bb.qr ], [ %i.bsg, %bb.qq ] ; 4 uses
  %i.bsk = load i32, ptr %.08561162, align 8, !tbaa !24 ; 2 uses
  %i.bsl = icmp sgt i32 %i.bsk, 0
  br i1 %i.bsl, label %.lr.ph1235, label %._crit_edge1236

.lr.ph1235:                                       ; preds = %bb.qs
  %i.bsm = getelementptr inbounds nuw i8, ptr %.08561162, i64 8
  br label %bb.qt

bb.qt:                                            ; preds = %.lr.ph1235, %.critedge1018
  %indvars.iv1290 = phi i64 [ 0, %.lr.ph1235 ], [ %indvars.iv.next1291, %.critedge1018 ] ; 5 uses
  %i.bsn = getelementptr inbounds nuw [24 x i8], ptr %i.bsm, i64 %indvars.iv1290 ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 20
  %i.bsp = load i16, ptr %i.bso, align 4, !tbaa !229 ; 2 uses
  %i.bsq = zext i16 %i.bsp to i64
  br i1 %i.boq, label %bb.qv, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %indvars1292 = trunc i64 %indvars.iv1290 to i32 ; 2 uses
  %i.bsr = add nsw i32 %i.bnn, %indvars1292
  %i.bss = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %.0.i, i32 noundef 95, i32 noundef %.0876, i32 noundef %indvars1292, i32 noundef %i.bsr) ; 0 uses
  br label %bb.qw

bb.qv:                                            ; preds = %bb.qt
  store i8 1, ptr %i.bkj, align 8, !tbaa !3763
  %i.bst = load ptr, ptr %i.bsn, align 8, !tbaa !904
  %i.bsu = trunc i64 %indvars.iv1290 to i32
  %i.bsv = add i32 %i.bnn, %i.bsu
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.bst, i32 noundef %i.bsv)
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %.not988 = icmp eq i16 %i.bsp, 0
  br i1 %.not988, label %.critedge1018, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.bsw = load ptr, ptr %i.axo, align 8, !tbaa !3037
  %i.bsx = getelementptr i8, ptr %i.bsw, i64 -16
  %i.bsy = getelementptr [24 x i8], ptr %i.bsx, i64 %i.bsq
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !904 ; 2 uses
  %i.bta = call fastcc ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %i.bsz) ; 2 uses
  %.not9891225 = icmp eq ptr %i.bta, null
  br i1 %.not9891225, label %.critedge1018, label %.lr.ph1229

.lr.ph1229:                                       ; preds = %bb.qx, %bb.qy
  %.08521227 = phi ptr [ %i.bte, %bb.qy ], [ %i.bta, %bb.qx ] ; 2 uses
  %.08531226 = phi ptr [ %i.btd, %bb.qy ], [ %i.bsz, %bb.qx ]
  %i.btb = load i8, ptr %.08521227, align 8, !tbaa !3023
  switch i8 %i.btb, label %bb.qz [
    i8 -77, label %bb.qy
    i8 -86, label %.critedge1018
    i8 -80, label %.critedge1018
  ]

bb.qy:                                            ; preds = %.lr.ph1229
  %i.btc = getelementptr inbounds nuw i8, ptr %.08521227, i64 16
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !373 ; 2 uses
  %i.bte = call fastcc ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %i.btd) ; 2 uses
  %.not989 = icmp eq ptr %i.bte, null
  br i1 %.not989, label %.critedge1018, label %.lr.ph1229, !llvm.loop !3769

bb.qz:                                            ; preds = %.lr.ph1229
  %i.btf = trunc i64 %indvars.iv1290 to i32
  %i.btg = add i32 %i.bnk, %i.btf
  call fastcc void @sqlite3ExprToRegister(ptr noundef %.08531226, i32 noundef %i.btg)
  br label %.critedge1018

.critedge1018:                                    ; preds = %bb.qy, %.lr.ph1229, %.lr.ph1229, %bb.qx, %bb.qz, %bb.qw
  %indvars.iv.next1291 = add nuw nsw i64 %indvars.iv1290, 1 ; 2 uses
  %i.bth = load i32, ptr %.08561162, align 8, !tbaa !24 ; 2 uses
  %i.bti = sext i32 %i.bth to i64
  %i.btj = icmp slt i64 %indvars.iv.next1291, %i.bti
  br i1 %i.btj, label %bb.qt, label %._crit_edge1236, !llvm.loop !3770

._crit_edge1236:                                  ; preds = %.critedge1018, %bb.qs
  %.lcssa1175 = phi i32 [ %i.bsk, %bb.qs ], [ %i.bth, %.critedge1018 ]
  %.not.i1091 = icmp eq ptr %i.bmx, null
  br i1 %.not.i1091, label %sqlite3KeyInfoRef.exit, label %bb.ra

bb.ra:                                            ; preds = %._crit_edge1236
  %i.btk = load i32, ptr %i.bmx, align 8, !tbaa !24
  %i.btl = add i32 %i.btk, 1
  store i32 %i.btl, ptr %i.bmx, align 8, !tbaa !24
  br label %sqlite3KeyInfoRef.exit

sqlite3KeyInfoRef.exit:                           ; preds = %._crit_edge1236, %bb.ra
  %i.btm = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i, i32 noundef 91, i32 noundef %i.bnk, i32 noundef %i.bnn, i32 noundef %.lcssa1175, ptr noundef %i.bmx, i32 noundef -8) ; 0 uses
  %.val1021 = load i32, ptr %i.bsj, align 8, !tbaa !187 ; 2 uses
  %i.btn = add nsw i32 %.val1021, 1               ; 2 uses
  %i.bto = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %.0.i, i32 noundef 14, i32 noundef %i.btn, i32 noundef 0, i32 noundef %i.btn) ; 0 uses
  %i.btp = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 10, i32 noundef %i.bnf, i32 noundef %i.bnh) ; 0 uses
  %i.btq = load i32, ptr %.08561162, align 8, !tbaa !24
  %.val1024 = load ptr, ptr %i.f, align 8, !tbaa !978
  call fastcc void @sqlite3ExprCodeMove(ptr %.val1024, i32 noundef %i.bnn, i32 noundef %i.bnk, i32 noundef %i.btq)
  %i.btr = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 60, i32 noundef %i.bne, i32 noundef %i.bki) ; 0 uses
  %i.bts = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 10, i32 noundef %i.bni, i32 noundef %i.bnj) ; 0 uses
  %i.btt = load i32, ptr %i.bsj, align 8, !tbaa !187
  %i.btu = load ptr, ptr %.0.i, align 8, !tbaa !148
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 103
  %i.btw = load i8, ptr %i.btv, align 1, !tbaa !552
  %.not.i.i.i1092 = icmp eq i8 %i.btw, 0
  br i1 %.not.i.i.i1092, label %bb.rb, label %sqlite3VdbeJumpHere.exit1094

bb.rb:                                            ; preds = %sqlite3KeyInfoRef.exit
  %i.btx = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !186
  %i.btz = sext i32 %.val1021 to i64
  %i.bua = getelementptr inbounds [24 x i8], ptr %i.bty, i64 %i.btz
  br label %sqlite3VdbeJumpHere.exit1094

sqlite3VdbeJumpHere.exit1094:                     ; preds = %sqlite3KeyInfoRef.exit, %bb.rb
  %.0.i.i.i1093 = phi ptr [ %i.bua, %bb.rb ], [ @sqlite3VdbeGetOp.dummy, %sqlite3KeyInfoRef.exit ]
  %i.bub = getelementptr inbounds nuw i8, ptr %.0.i.i.i1093, i64 8
  store i32 %i.btt, ptr %i.bub, align 8, !tbaa !587
  call fastcc void @updateAccumulator(ptr noundef nonnull %0, i32 noundef %i.bnd, ptr noundef %i.bkj, i32 noundef %i.bon)
  %i.buc = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i, i32 noundef 72, i32 noundef 1, i32 noundef %i.bnd) ; 0 uses
  br i1 %i.boq, label %bb.rd, label %bb.rc

bb.rc:                                            ; preds = %sqlite3VdbeJumpHere.exit1094
  %i.bud = load i32, ptr %i.bmv, align 8, !tbaa !3756
  %i.bue = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i, i32 noundef 38, i32 noundef %i.bud, i32 noundef %.val10221146) ; 0 uses
  br label %bb.re

bb.rd:                                            ; preds = %sqlite3VdbeJumpHere.exit1094
  call fastcc void @sqlite3WhereEnd(ptr noundef nonnull %i.boc)
  call fastcc void @sqlite3VdbeChangeToNoop(ptr noundef nonnull %.0.i, i32 noundef %i.bna)
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %bb.rc
  %.not.i1095 = icmp eq ptr %.0870, null
  br i1 %.not.i1095, label %sqlite3ExprListDelete.exit1096, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  call fastcc void @exprListDeleteNN(ptr noundef %i.e, ptr noundef %.0870), !inline_history !1011
  br label %sqlite3ExprListDelete.exit1096

sqlite3ExprListDelete.exit1096:                   ; preds = %bb.re, %bb.rf
  %i.buf = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i, i32 noundef 10, i32 noundef %i.bnf, i32 noundef %i.bnh) ; 0 uses
  call fastcc void @sqlite3VdbeGoto(ptr noundef nonnull %.0.i, i32 noundef %i.bki)
  %.val1020 = load i32, ptr %i.bsj, align 8, !tbaa !187
  %i.bug = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i, i32 noundef 72, i32 noundef 1, i32 noundef %i.bne) ; 0 uses
  %i.buh = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i, i32 noundef 68, i32 noundef %i.bnf) ; 0 uses
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef nonnull %.0.i, i32 noundef %i.bnh)
  %.val = load i32, ptr %i.bsj, align 8, !tbaa !187 ; 2 uses
  %i.bui = add nsw i32 %.val, 2
  %i.buj = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i, i32 noundef 60, i32 noundef %i.bnd, i32 noundef %i.bui) ; 0 uses
  %i.buk = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i, i32 noundef 68, i32 noundef %i.bnf) ; 0 uses
  call fastcc void @finalizeAggFunctions(ptr noundef nonnull %0, ptr noundef %i.bkj)
  %i.bul = add nsw i32 %.val, 1                   ; 2 uses
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %i.axu, i32 noundef %i.bul, i32 noundef 16)
  call fastcc void @selectInnerLoop(ptr noundef nonnull %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef %2, i32 noundef %i.bul, i32 noundef %.val1020)
  %i.bum = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i, i32 noundef 68, i32 noundef %i.bnf) ; 0 uses
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef nonnull %.0.i, i32 noundef %i.bnj)
  call fastcc void @resetAccumulator(ptr noundef nonnull %0, ptr noundef %i.bkj)
  %i.bun = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i, i32 noundef 72, i32 noundef 0, i32 noundef %i.bnd) ; 0 uses
  %i.buo = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i, i32 noundef 68, i32 noundef %i.bni) ; 0 uses
  %i.bup = icmp ne i32 %.0869, 0
  %i.buq = icmp ne i8 %.val1031, 0
  %or.cond17 = select i1 %i.bup, i1 %i.buq, i1 false
  br i1 %or.cond17, label %bb.rg, label %sqlite3ExprListDelete.exit

bb.rg:                                            ; preds = %sqlite3ExprListDelete.exit1096
  %i.bur = getelementptr inbounds nuw i8, ptr %i.bkj, i64 48
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !3752 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 16
  %i.buu = load i32, ptr %i.but, align 8, !tbaa !3755
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bus, i64 20
  %i.buw = load i32, ptr %i.buv, align 4, !tbaa !3771
  call fastcc void @fixDistinctOpenEph(ptr noundef nonnull %0, i32 noundef %i.bon, i32 noundef %i.buu, i32 noundef %i.buw)
  br label %sqlite3ExprListDelete.exit

bb.rh:                                            ; preds = %bb.pd
  %i.bux = call fastcc ptr @isSimpleCount(ptr noundef %1, ptr noundef nonnull %i.bkj) ; 9 uses
  %.not961 = icmp eq ptr %i.bux, null
  br i1 %.not961, label %bb.rx, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 96
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !925 ; 2 uses
  %.not.i1097 = icmp eq ptr %i.buz, null
  br i1 %.not.i1097, label %sqlite3SchemaToIndex.exit1103, label %.preheader.i1098

.preheader.i1098:                                 ; preds = %bb.ri
  %i.bva = load ptr, ptr %0, align 8, !tbaa !653
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 32
  %i.bvc = load ptr, ptr %i.bvb, align 8, !tbaa !63
  br label %bb.rj

bb.rj:                                            ; preds = %bb.rj, %.preheader.i1098
  %indvars.iv.i1099 = phi i64 [ %indvars.iv.next.i1100, %bb.rj ], [ 0, %.preheader.i1098 ] ; 3 uses
  %i.bvd = getelementptr inbounds nuw [32 x i8], ptr %i.bvc, i64 %indvars.iv.i1099
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 24
  %i.bvf = load ptr, ptr %i.bve, align 8, !tbaa !103
  %i.bvg = icmp eq ptr %i.bvf, %i.buz
  %indvars.iv.next.i1100 = add nuw nsw i64 %indvars.iv.i1099, 1
  br i1 %i.bvg, label %.loopexit.loopexit.i1101, label %bb.rj

.loopexit.loopexit.i1101:                         ; preds = %bb.rj
  %i.bvh = trunc nuw nsw i64 %indvars.iv.i1099 to i32
  br label %sqlite3SchemaToIndex.exit1103

sqlite3SchemaToIndex.exit1103:                    ; preds = %bb.ri, %.loopexit.loopexit.i1101
  %.1.i1102 = phi i32 [ -32768, %bb.ri ], [ %i.bvh, %.loopexit.loopexit.i1101 ] ; 4 uses
  %i.bvi = load i32, ptr %i.np, align 8, !tbaa !953 ; 5 uses
  %i.bvj = add nsw i32 %i.bvi, 1
  store i32 %i.bvj, ptr %i.np, align 8, !tbaa !953
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bux, i64 40 ; 2 uses
  %i.bvl = load i32, ptr %i.bvk, align 8, !tbaa !948
  call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %.1.i1102)
  %i.bvm = load i32, ptr %i.bvk, align 8, !tbaa !948
  %i.bvn = load ptr, ptr %i.bux, align 8, !tbaa !949
  call fastcc void @sqlite3TableLock(ptr noundef nonnull %0, i32 noundef %.1.i1102, i32 noundef %i.bvm, i8 noundef zeroext 0, ptr noundef %i.bvn)
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bux, i64 48
  %i.bvp = load i32, ptr %i.bvo, align 8, !tbaa !790
  %i.bvq = and i32 %i.bvp, 128
  %i.bvr = icmp eq i32 %i.bvq, 0
  br i1 %i.bvr, label %sqlite3PrimaryKeyIndex.exit, label %bb.rk

bb.rk:                                            ; preds = %sqlite3SchemaToIndex.exit1103
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bux, i64 16
  %.06.i = load ptr, ptr %i.bvs, align 8, !tbaa !937 ; 2 uses
  %.not7.i1104 = icmp eq ptr %.06.i, null
  br i1 %.not7.i1104, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i1105

.lr.ph.i1105:                                     ; preds = %bb.rk, %bb.rl
  %.08.i = phi ptr [ %.0.i1106, %bb.rl ], [ %.06.i, %bb.rk ] ; 3 uses
  %i.bvt = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.bvu = load i16, ptr %i.bvt, align 1
  %i.bvv = and i16 %i.bvu, 3
  %.not5.i = icmp eq i16 %i.bvv, 2
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %bb.rl

bb.rl:                                            ; preds = %.lr.ph.i1105
  %i.bvw = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %.0.i1106 = load ptr, ptr %i.bvw, align 8, !tbaa !937 ; 2 uses
  %.not.i1107 = icmp eq ptr %.0.i1106, null
  br i1 %.not.i1107, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i1105, !llvm.loop !2951

sqlite3PrimaryKeyIndex.exit:                      ; preds = %bb.rl, %.lr.ph.i1105, %bb.rk, %sqlite3SchemaToIndex.exit1103
end_hunk_9
begin_hunk_10_@sqlite3ExprCodeTarget:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.0512873, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !369
  %i.v = and i32 %i.u, 8388608
  %.not560 = icmp eq i32 %i.v, 0
  br i1 %.not560, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc i32 @sqlite3IndexedExprLookup(ptr noundef nonnull %0, ptr noundef %.0512873, i32 noundef %2) ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.c, %bb.d
  %i.y = phi i32 [ %i.s, %.lr.ph.split ], [ %i.s, %bb.c ], [ %i.w, %bb.d ] ; 26 uses
  %i.z = load i8, ptr %.0512873, align 8, !tbaa !3023 ; 25 uses
  switch i8 %i.z, label %.thread [
    i8 -86, label %.split.us
    i8 -88, label %.thread719.loopexit
    i8 -100, label %.split881.us
    i8 -85, label %.split885.us
    i8 -102, label %.split889.us
    i8 118, label %.split893.us
    i8 83, label %.split897.us
    i8 -101, label %.split901.us
    i8 -99, label %.split905.us
    i8 -80, label %.split909.us
    i8 36, label %.split913.us
    i8 45, label %.split917.us
    i8 46, label %.split917.us
    i8 57, label %.loopexit
    i8 56, label %.loopexit
    i8 55, label %.loopexit
    i8 58, label %.loopexit
    i8 53, label %.loopexit
    i8 54, label %.loopexit
    i8 44, label %.split925.us
    i8 43, label %.split925.us
    i8 107, label %.split929.us
    i8 109, label %.split929.us
    i8 108, label %.split929.us
    i8 111, label %.split929.us
    i8 103, label %.split929.us
    i8 104, label %.split929.us
    i8 110, label %.split929.us
    i8 105, label %.split929.us
    i8 106, label %.split929.us
    i8 112, label %.split929.us
    i8 -82, label %.split935.us
    i8 115, label %.split939.us
    i8 19, label %.split939.us
    i8 -81, label %.split945.us
    i8 51, label %.split949.us
    i8 52, label %.split949.us
    i8 -87, label %.split955.us
    i8 -84, label %.split959.us
    i8 20, label %.split963.us
    i8 -117, label %.split963.us
    i8 -78, label %.split968.us
    i8 50, label %.split972.us
    i8 49, label %.split976.us
    i8 114, label %bb.fy
    i8 -75, label %.backedge
    i8 -83, label %.backedge
    i8 78, label %.split980.us
    i8 -79, label %.split984.us
    i8 -77, label %.split987.us
    i8 -98, label %.split991.us
    i8 72, label %.split995.us
  ]

.split.us:                                        ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi876 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi877 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ] ; 6 uses
  store i32 %.us-phi876, ptr %i.e, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3975 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 50
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !3497 ; 2 uses
  %i.ae = sext i16 %i.ad to i32                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !3749
  %.not592 = icmp sgt i32 %i.ag, %i.ae
  br i1 %.not592, label %bb.f, label %bb.o

bb.f:                                             ; preds = %.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3759
  %i.aj = sext i16 %i.ad to i64
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = load i8, ptr %i.ab, align 8, !tbaa !3763
  %.not593 = icmp eq i8 %i.al, 0
  br i1 %.not593, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !3758
  %i.ao = add nsw i32 %i.an, %i.ae
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !3768
  %.not594 = icmp eq i8 %i.aq, 0
  br i1 %.not594, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !3976 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3767
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !3760
  %i.aw = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 95, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %2) ; 0 uses
  %i.ax = icmp eq ptr %i.ar, null
  br i1 %i.ax, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3977 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !884
  %i.bd = zext nneg i32 %i.az to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !907
  %i.bh = icmp eq i8 %i.bg, 69
  br i1 %i.bh, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bi = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 88, i32 noundef %2) ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !229
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.n, label %.thread719

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3583
  %i.bo = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 48
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !3489
  %i.bq = sext i16 %i.bp to i32
  %i.br = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 95, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %2) ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %.split.us
  %i.bs = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 76, i32 noundef 0, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

.thread719.loopexit:                              ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi878 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi879 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  store i32 %.us-phi878, ptr %i.e, align 4
  br label %.thread719

.thread719:                                       ; preds = %.thread719.loopexit, %bb.m
  %.0512774 = phi ptr [ %.us-phi879, %.thread719.loopexit ], [ %.us-phi877, %bb.m ] ; 11 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0512774, i64 44
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3583 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0512774, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !369
  %i.bx = and i32 %i.bw, 32
  %.not595 = icmp eq i32 %i.bx, 0
  br i1 %.not595, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread719
  %i.by = getelementptr inbounds nuw i8, ptr %.0512774, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !373
  %i.ca = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.bz, i32 noundef %2) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0512774, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !229 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0512774, i64 48
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !3489 ; 3 uses
  %i.cf = sext i16 %i.ce to i64
  %i.cg = icmp slt i16 %i.ce, 0
  br i1 %i.cg, label %sqlite3TableColumnAffinity.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 54
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !883
  %.not.i = icmp slt i16 %i.ce, %i.ci
  br i1 %.not.i, label %sqlite3TableColumnAffinity.exit, label %sqlite3TableColumnAffinity.exit.thread

sqlite3TableColumnAffinity.exit:                  ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !884
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !907 ; 2 uses
  %i.co = icmp sgt i8 %i.cn, 65
  br i1 %i.co, label %sqlite3TableColumnAffinity.exit.thread, label %.critedge

sqlite3TableColumnAffinity.exit.thread:           ; preds = %bb.p, %bb.q, %sqlite3TableColumnAffinity.exit
  %.0.i723 = phi i8 [ %i.cn, %sqlite3TableColumnAffinity.exit ], [ 68, %bb.q ], [ 68, %bb.p ]
  %i.cp = shl nuw i8 %.0.i723, 1
  %i.cq = zext i8 %i.cp to i64
  %7 = getelementptr i8, ptr @sqlite3ExprCodeTarget.zAff, i64 %i.cq
  %i.cr = getelementptr i8, ptr %7, i64 -132
  %i.cs = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.h, i32 noundef 97, i32 noundef %i.ca, i32 noundef 1, i32 noundef 0, ptr noundef %i.cr, i32 noundef -1) ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %.thread719
  %i.ct = icmp slt i32 %i.bu, 0
  br i1 %i.ct, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3890 ; 4 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %.0512774, i64 48
  %i.cy = load i16, ptr %i.cx, align 8, !tbaa !3489 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0512774, i64 64
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !229 ; 3 uses
  %i.db = icmp slt i16 %i.cy, 0
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dc = xor i32 %i.cv, -1
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.dd = zext nneg i16 %i.cy to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !884
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dd ; 4 uses
  %i.dh = tail call fastcc signext i16 @sqlite3TableColumnToStorage(ptr noundef %i.da, i16 noundef signext %i.cy)
  %i.di = sext i16 %i.dh to i32
  %i.dj = sub nsw i32 %i.di, %i.cv                ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 14 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !885 ; 3 uses
  %i.dm = zext i16 %i.dl to i32                   ; 2 uses
  %i.dn = and i32 %i.dm, 96
  %.not598 = icmp eq i32 %i.dn, 0
  br i1 %.not598, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = and i32 %i.dm, 256
  %.not599 = icmp eq i32 %i.do, 0
  br i1 %.not599, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !931
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.669, ptr noundef %i.dp)
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.dq = or i16 %i.dl, 256                       ; 2 uses
  store i16 %i.dq, ptr %i.dk, align 2, !tbaa !885
  %i.dr = and i16 %i.dl, 128
  %.not600 = icmp eq i16 %i.dr, 0
  br i1 %.not600, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef nonnull %0, ptr noundef nonnull %i.da, ptr noundef nonnull %i.dg, i32 noundef %i.dj)
  %.pre1215 = load i16, ptr %i.dk, align 2, !tbaa !885
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ds = phi i16 [ %.pre1215, %bb.z ], [ %i.dq, %bb.y ]
  %i.dt = and i16 %i.ds, -385
  store i16 %i.dt, ptr %i.dk, align 2, !tbaa !885
  br label %.critedge

bb.ab:                                            ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 9
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !907
  %i.dw = icmp eq i8 %i.dv, 69
  br i1 %i.dw, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.dx = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 82, i32 noundef %i.dj, i32 noundef %2) ; 0 uses
  %i.dy = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 88, i32 noundef %2) ; 0 uses
  br label %.critedge

bb.ad:                                            ; preds = %bb.s
  %i.dz = add nsw i32 %i.cv, -1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !3978
  %.not596 = icmp eq ptr %i.eb, null
  br i1 %.not596, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = tail call fastcc i32 @exprPartidxExprLookup(ptr noundef nonnull %0, ptr noundef nonnull %.0512774, i32 noundef %2) ; 2 uses
  %.not597 = icmp eq i32 %i.ec, 0
  br i1 %.not597, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.0524 = phi i32 [ %i.dz, %bb.ad ], [ %i.bu, %bb.af ], [ %i.bu, %bb.ae ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0512774, i64 64
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !229
  %i.ef = getelementptr inbounds nuw i8, ptr %.0512774, i64 48
  %i.eg = load i16, ptr %i.ef, align 8, !tbaa !3489
  %i.eh = sext i16 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0512774, i64 2
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !3277
  %i.ek = tail call fastcc i32 @sqlite3ExprCodeGetColumn(ptr noundef nonnull %0, ptr noundef %i.ee, i32 noundef %i.eh, i32 noundef %.0524, i32 noundef %2, i8 noundef zeroext %i.ej) ; 0 uses
  br label %.critedge

.split881.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi883 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  tail call fastcc void @codeInteger(ptr noundef nonnull %0, ptr noundef nonnull %.us-phi883, i32 noundef 0, i32 noundef %2)
  br label %.critedge

.split885.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi887 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.el = tail call fastcc i32 @sqlite3ExprTruthValue(ptr noundef nonnull %.us-phi887)
  %i.em = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 72, i32 noundef %i.el, i32 noundef %2) ; 0 uses
  br label %.critedge

.split889.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi891 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.en = getelementptr inbounds nuw i8, ptr %.us-phi891, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !229
  tail call fastcc void @codeReal(ptr noundef %i.h, ptr noundef %i.eo, i32 noundef 0, i32 noundef %2)
  br label %.critedge

.split893.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi895 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.us-phi895, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !229
  tail call fastcc void @sqlite3VdbeLoadString(ptr noundef %i.h, i32 noundef %2, ptr noundef %i.eq)
  br label %.critedge

.split897.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi899 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.er = getelementptr inbounds nuw i8, ptr %.us-phi899, i64 64
  %i.es = load i32, ptr %i.er, align 8, !tbaa !229
  %i.et = add i32 %2, -1
  %i.eu = add i32 %i.et, %i.es
  %i.ev = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 76, i32 noundef 0, i32 noundef %2, i32 noundef %i.eu) ; 0 uses
  br label %.critedge

.thread:                                          ; preds = %bb.e, %.backedge, %.lr.ph.split.us, %.backedge.us, %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !187 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !945
  %.not.i.i1489 = icmp sgt i32 %i.ez, %i.ex
  br i1 %.not.i.i1489, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.fa = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.h, i32 noundef 76, i32 noundef 0, i32 noundef %2, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %.critedge

bb.ai:                                            ; preds = %.thread
  %i.fb = add nsw i32 %i.ex, 1
  store i32 %i.fb, ptr %i.ew, align 8, !tbaa !187
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !186
  %i.fe = sext i32 %i.ex to i64
  %i.ff = getelementptr inbounds [24 x i8], ptr %i.fd, i64 %i.fe ; 7 uses
  store i8 76, ptr %i.ff, align 8, !tbaa !565
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 0, ptr %i.fg, align 2, !tbaa !589
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 0, ptr %i.fh, align 4, !tbaa !586
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 %2, ptr %i.fi, align 8, !tbaa !587
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !588
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr null, ptr %i.fk, align 8, !tbaa !229
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store i8 0, ptr %i.fl, align 1, !tbaa !568
  br label %.critedge

.split901.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi903 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.us-phi903, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !229
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2 ; 2 uses
  %i.fp = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fo) #60
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = and i32 %i.fq, 1073741823
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  %.val603 = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.ft = tail call fastcc ptr @sqlite3HexToBlob(ptr noundef %.val603, ptr noundef nonnull %i.fo, i32 noundef %i.fs)
  %i.fu = sdiv i32 %i.fs, 2
  %i.fv = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.h, i32 noundef 78, i32 noundef %i.fu, i32 noundef %2, i32 noundef 0, ptr noundef %i.ft, i32 noundef -6) ; 0 uses
  br label %.critedge

.split905.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi907 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.us-phi907, i64 48
  %i.fx = load i16, ptr %i.fw, align 8, !tbaa !3489
  %i.fy = sext i16 %i.fx to i32
  %i.fz = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 79, i32 noundef %i.fy, i32 noundef %2) ; 0 uses
  br label %.critedge

.split909.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi911 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.us-phi911, i64 44
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3583
end_hunk_10
begin_hunk_11_@exprCodeInlineFunction:bb.a
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %setDoNotMergeFlagOnCopy.exit
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.aw, ptr noundef nonnull readonly %i.b, i32 noundef %i.ax)
  br label %sqlite3VdbeResolveLabel.exit

bb.j:                                             ; preds = %setDoNotMergeFlagOnCopy.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !187
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1009
  %i.bi = sext i32 %i.ax to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bi
  store i32 %i.bf, ptr %i.bj, align 4, !tbaa !24
  br label %sqlite3VdbeResolveLabel.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  store i8 -98, ptr %4, align 8, !tbaa !3023
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %1, ptr %i.bk, align 8, !tbaa !229
  %i.bl = call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %sqlite3VdbeResolveLabel.exit

bb.l:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !904
  %i.bo = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.bn, i32 noundef %3)
  br label %sqlite3VdbeResolveLabel.exit

bb.m:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !904
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !904
  %i.bt = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %i.bq, ptr noundef %i.bs, i32 noundef -1) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !187 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !945
  %.not.i.i52 = icmp sgt i32 %i.bx, %i.bv
  br i1 %.not.i.i52, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 72, i32 noundef %i.bt, i32 noundef %3, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeResolveLabel.exit

bb.o:                                             ; preds = %bb.m
  %i.bz = add nsw i32 %i.bv, 1
  store i32 %i.bz, ptr %i.bu, align 8, !tbaa !187
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !186
  %i.cc = sext i32 %i.bv to i64
  %i.cd = getelementptr inbounds [24 x i8], ptr %i.cb, i64 %i.cc ; 7 uses
  store i8 72, ptr %i.cd, align 8, !tbaa !565
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i16 0, ptr %i.ce, align 2, !tbaa !589
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.bt, ptr %i.cf, align 4, !tbaa !586
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %3, ptr %i.cg, align 8, !tbaa !587
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !588
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr null, ptr %i.ci, align 8, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 0, ptr %i.cj, align 1, !tbaa !568
  br label %sqlite3VdbeResolveLabel.exit

bb.p:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !904
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !904
  %i.co = tail call fastcc i32 @sqlite3ExprImpliesExpr(ptr noundef nonnull %0, ptr noundef %i.cl, ptr noundef %i.cn, i32 noundef -1) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !187 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !945
  %.not.i.i55 = icmp sgt i32 %i.cs, %i.cq
  br i1 %.not.i.i55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 72, i32 noundef %i.co, i32 noundef %3, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeResolveLabel.exit

bb.r:                                             ; preds = %bb.p
  %i.cu = add nsw i32 %i.cq, 1
  store i32 %i.cu, ptr %i.cp, align 8, !tbaa !187
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !186
  %i.cx = sext i32 %i.cq to i64
  %i.cy = getelementptr inbounds [24 x i8], ptr %i.cw, i64 %i.cx ; 7 uses
  store i8 72, ptr %i.cy, align 8, !tbaa !565
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  store i16 0, ptr %i.cz, align 2, !tbaa !589
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.co, ptr %i.da, align 4, !tbaa !586
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %3, ptr %i.db, align 8, !tbaa !587
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !588
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr null, ptr %i.dd, align 8, !tbaa !229
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store i8 0, ptr %i.de, align 1, !tbaa !568
  br label %sqlite3VdbeResolveLabel.exit

bb.s:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !904 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !3023
  %i.di = icmp eq i8 %i.dh, -88
  br i1 %i.di, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !904
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3583
  %i.dn = tail call fastcc i32 @sqlite3ExprImpliesNonNullRow(ptr noundef %i.dk, i32 noundef %i.dm, i32 noundef 1) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !187 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !945
  %.not.i.i58 = icmp sgt i32 %i.dr, %i.dp
  br i1 %.not.i.i58, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 72, i32 noundef %i.dn, i32 noundef %3, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeResolveLabel.exit

bb.v:                                             ; preds = %bb.t
  %i.dt = add nsw i32 %i.dp, 1
  store i32 %i.dt, ptr %i.do, align 8, !tbaa !187
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.dw = sext i32 %i.dp to i64
  %i.dx = getelementptr inbounds [24 x i8], ptr %i.dv, i64 %i.dw ; 7 uses
  store i8 72, ptr %i.dx, align 8, !tbaa !565
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i16 0, ptr %i.dy, align 2, !tbaa !589
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store i32 %i.dn, ptr %i.dz, align 4, !tbaa !586
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i32 %3, ptr %i.ea, align 8, !tbaa !587
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !588
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr null, ptr %i.ec, align 8, !tbaa !229
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store i8 0, ptr %i.ed, align 1, !tbaa !568
  br label %sqlite3VdbeResolveLabel.exit

bb.w:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !187 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !945
  %.not.i.i61 = icmp sgt i32 %i.eh, %i.ef
  br i1 %.not.i.i61, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 76, i32 noundef 0, i32 noundef %3, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeResolveLabel.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = add nsw i32 %i.ef, 1
  store i32 %i.ej, ptr %i.ee, align 8, !tbaa !187
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !186
  %i.em = sext i32 %i.ef to i64
  %i.en = getelementptr inbounds [24 x i8], ptr %i.el, i64 %i.em ; 7 uses
  store i8 76, ptr %i.en, align 8, !tbaa !565
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i16 0, ptr %i.eo, align 2, !tbaa !589
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 0, ptr %i.ep, align 4, !tbaa !586
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %3, ptr %i.eq, align 8, !tbaa !587
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !588
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr null, ptr %i.es, align 8, !tbaa !229
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 0, ptr %i.et, align 1, !tbaa !568
  br label %sqlite3VdbeResolveLabel.exit

bb.z:                                             ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !904
  %i.ew = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef %i.ev) ; 2 uses
  %i.ex = icmp slt i8 %i.ew, 65
  br i1 %i.ex, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = zext nneg i8 %i.ew to i64
  %5 = getelementptr [8 x i8], ptr @__const.exprCodeInlineFunction.azAff, i64 %i.ey
  %6 = getelementptr i8, ptr %5, i64 -520
  %i.ez = load ptr, ptr %6, align 8, !tbaa !253
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.fa = phi ptr [ %i.ez, %bb.aa ], [ @.str.680, %bb.z ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !187 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !945
  %.not.i.i.i64 = icmp sgt i32 %i.fe, %i.fc
  br i1 %.not.i.i.i64, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ff = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 118, i32 noundef 0, i32 noundef %3, i32 noundef 0), !inline_history !979
  br label %sqlite3VdbeAddOp3.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fg = add nsw i32 %i.fc, 1
  store i32 %i.fg, ptr %i.fb, align 8, !tbaa !187
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !186
  %i.fj = sext i32 %i.fc to i64
  %i.fk = getelementptr inbounds [24 x i8], ptr %i.fi, i64 %i.fj ; 7 uses
  store i8 118, ptr %i.fk, align 8, !tbaa !565
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store i16 0, ptr %i.fl, align 2, !tbaa !589
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 0, ptr %i.fm, align 4, !tbaa !586
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i32 %3, ptr %i.fn, align 8, !tbaa !587
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !588
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr null, ptr %i.fp, align 8, !tbaa !229
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store i8 0, ptr %i.fq, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit.i.i

sqlite3VdbeAddOp3.exit.i.i:                       ; preds = %bb.ad, %bb.ac
  %.0.i.i.i65 = phi i32 [ %i.ff, %bb.ac ], [ %i.fc, %bb.ad ] ; 2 uses
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 103
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !552
  %.not.i9.i.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i9.i.i, label %bb.ae, label %sqlite3VdbeResolveLabel.exit

bb.ae:                                            ; preds = %sqlite3VdbeAddOp3.exit.i.i
  %i.fu = icmp slt i32 %.0.i.i.i65, 0
  br i1 %i.fu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fv = load i32, ptr %i.fb, align 8, !tbaa !187
  %i.fw = add nsw i32 %i.fv, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i10.i.i = phi i32 [ %i.fw, %bb.af ], [ %.0.i.i.i65, %bb.ae ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !186
  %i.fz = sext i32 %.0.i10.i.i to i64
  %i.ga = getelementptr inbounds [24 x i8], ptr %i.fy, i64 %i.fz
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %i.b, ptr noundef %i.ga, ptr noundef %i.fa, i32 noundef 0), !inline_history !950
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.ag, %sqlite3VdbeAddOp3.exit.i.i, %bb.y, %bb.x, %bb.v, %bb.u, %bb.r, %bb.q, %bb.o, %bb.n, %bb.j, %bb.i, %bb.l, %bb.k
  %.0 = phi i32 [ %i.bl, %bb.k ], [ %i.bo, %bb.l ], [ %3, %bb.r ], [ %3, %bb.j ], [ %3, %bb.o ], [ %3, %bb.y ], [ %3, %bb.v ], [ %3, %bb.i ], [ %3, %bb.n ], [ %3, %bb.q ], [ %3, %bb.u ], [ %3, %bb.x ], [ %3, %sqlite3VdbeAddOp3.exit.i.i ], [ %3, %bb.ag ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprFunctionUsable(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !369
  %i.c = and i32 %i.b, 1073741824
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.e = load i8, ptr %i.d, align 2, !tbaa !959
  %i.f = and i8 %i.e, 32
  %.not6 = icmp eq i8 %i.f, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1264
  %i.i = and i32 %i.h, 524288
  %.not7 = icmp eq i32 %i.i, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !653
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !547
  %i.m = and i64 %i.l, 128
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.681, ptr noundef nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @sqlite3GetTempRange(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !3710  ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !952
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !952
  br label %sqlite3GetTempReg.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = add i8 %i.c, -1                          ; 2 uses
  store i8 %i.i, ptr %i.b, align 1, !tbaa !3710
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  br label %sqlite3GetTempReg.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3711 ; 2 uses
  %.not = icmp sgt i32 %1, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3766 ; 2 uses
  %i.q = add nsw i32 %i.p, %1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !3766
  %i.r = sub nsw i32 %i.n, %1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !3711
  br label %sqlite3GetTempReg.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !952  ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  %i.v = add nsw i32 %i.t, %1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !952
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.d, %bb.c, %bb.f, %bb.g
  %.0 = phi i32 [ %i.u, %bb.g ], [ %i.p, %bb.f ], [ %i.g, %bb.c ], [ %i.l, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprCodeExprList(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Walker, align 8             ; 7 uses
  %i.a = and i8 %4, 1                             ; 2 uses
  %i.b = sub nuw nsw i8 82, %i.a                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !978  ; 6 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, 128
  %.not = icmp eq i16 %i.j, 0
  %i.k = and i8 %4, -3
  %spec.select = select i1 %.not, i8 %i.k, i8 %4
  %i.l = zext i8 %spec.select to i32              ; 3 uses
  %i.m = and i32 %i.l, 4
  %.not59 = icmp eq i32 %i.m, 0
  %i.n = and i32 %i.l, 8
  %.not65 = icmp eq i32 %i.n, 0
  %i.o = add i32 %3, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 2 uses
  %i.r = zext nneg i8 %i.b to i32                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  %i.t = and i32 %i.l, 2
  %.not61 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not64 = icmp eq i8 %i.a, 0
  br label %bb.b

end_hunk_11
begin_hunk_12_@sqlite3ExprDataType:bb.a

tailrecurse:                                      ; preds = %._crit_edge
  %i.r = sext i32 %.lcssa to i64
  %i.s = getelementptr [24 x i8], ptr %i.f, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !904  ; 2 uses
  %i.v = or i32 %.019.lcssa, %accumulator.tr54    ; 2 uses
  %.not40 = icmp eq ptr %i.u, null
  br i1 %.not40, label %.loopexit26, label %.lr.ph

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.02141, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !373  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.loopexit26.loopexit100, label %bb.b, !llvm.loop !4191

.loopexit:                                        ; preds = %bb.b
  br label %.loopexit26

.loopexit26.loopexit:                             ; preds = %bb.b
  br label %.loopexit26

.loopexit26.loopexit81:                           ; preds = %bb.b
  br label %.loopexit26

.loopexit26.loopexit100:                          ; preds = %bb.b, %bb.f
  br label %.loopexit26

.loopexit26.loopexit118:                          ; preds = %bb.b, %bb.b, %bb.b
  br label %.loopexit26

.loopexit26:                                      ; preds = %._crit_edge, %tailrecurse, %bb.b, %.loopexit26.loopexit118, %.loopexit26.loopexit100, %.loopexit26.loopexit81, %.loopexit26.loopexit, %bb.a, %.loopexit, %bb.c
  %accumulator.tr39 = phi i32 [ %accumulator.tr54, %bb.b ], [ %accumulator.tr54, %.loopexit26.loopexit100 ], [ %accumulator.tr54, %.loopexit ], [ %accumulator.tr54, %.loopexit26.loopexit ], [ 0, %bb.a ], [ %accumulator.tr54, %bb.c ], [ %accumulator.tr54, %.loopexit26.loopexit118 ], [ %accumulator.tr54, %.loopexit26.loopexit81 ], [ %i.v, %tailrecurse ], [ %accumulator.tr54, %._crit_edge ]
  %.1 = phi i32 [ 1, %bb.b ], [ 0, %.loopexit26.loopexit100 ], [ 2, %.loopexit ], [ 4, %.loopexit26.loopexit ], [ 0, %bb.a ], [ %.0, %bb.c ], [ 7, %.loopexit26.loopexit118 ], [ 6, %.loopexit26.loopexit81 ], [ 0, %tailrecurse ], [ %.019.lcssa, %._crit_edge ]
  %accumulator.ret.tr = or i32 %.1, %accumulator.tr39
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @columnTypeImpl(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #39 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %struct.NameContext, align 8        ; 6 uses
  %6 = alloca %struct.NameContext, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr null, ptr %i.b, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store ptr null, ptr %i.c, align 8, !tbaa !253
  %i.d = load i8, ptr %1, align 8, !tbaa !3023
  switch i8 %i.d, label %bb.u [
    i8 -88, label %bb.b
    i8 -117, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i16, ptr %i.e, align 8, !tbaa !3489 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.h
  %.083 = phi ptr [ %0, %bb.b ], [ %.1, %bb.h ]   ; 4 uses
  %.06181 = phi ptr [ null, %bb.b ], [ %.162, %bb.h ]
  %i.h = getelementptr inbounds nuw i8, ptr %.083, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3560 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.c
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3583
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3556
  %.not73 = icmp eq i32 %i.o, %i.l
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.d, !llvm.loop !4192

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3018 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  %i.u = load i16, ptr %i.t, align 1
  %i.v = and i16 %i.u, 4
  %.not74 = icmp eq i16 %i.v, 0
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !229
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !387
  br label %bb.h

.critedge2:                                       ; preds = %bb.e, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.083, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !4084
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.critedge2
  %.162 = phi ptr [ %i.y, %bb.g ], [ %.06181, %.critedge2 ], [ null, %bb.f ] ; 4 uses
  %.160 = phi ptr [ %i.s, %bb.g ], [ null, %.critedge2 ], [ %i.s, %bb.f ] ; 5 uses
  %.1 = phi ptr [ %.083, %bb.g ], [ %i.aa, %.critedge2 ], [ %.083, %bb.f ] ; 5 uses
  %.not = icmp ne ptr %.1, null
  %.not69 = icmp eq ptr %.160, null               ; 2 uses
  %or.cond = select i1 %.not, i1 %.not69, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge, !llvm.loop !4193

.critedge:                                        ; preds = %bb.h
  %i.ab = sext i16 %i.f to i32                    ; 2 uses
  br i1 %.not69, label %bb.u, label %bb.i

bb.i:                                             ; preds = %.critedge
  %.not70 = icmp eq ptr %.162, null
  br i1 %.not70, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.162, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3037
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp sgt i32 %i.ae, %i.ab
  br i1 %i.af, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !3037
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = sext i16 %i.f to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !904
  %i.al = getelementptr inbounds nuw i8, ptr %.162, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !3038
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !3560
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.1, ptr %i.ao, align 8, !tbaa !4084
  %i.ap = load ptr, ptr %.1, align 8, !tbaa !3557
  store ptr %i.ap, ptr %5, align 8, !tbaa !3557
  %i.aq = call fastcc ptr @columnTypeImpl(ptr noundef %5, ptr noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %i.ar = icmp slt i16 %i.f, 0
  br i1 %i.ar, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %.160, i64 52
  %i.at = load i16, ptr %i.as, align 4, !tbaa !893 ; 2 uses
  %i.au = zext nneg i16 %i.at to i32
  %i.av = icmp slt i16 %i.at, 0
  br i1 %i.av, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  store ptr @.str.597, ptr %i.c, align 8, !tbaa !253
  br label %sqlite3ColumnType.exit

.thread:                                          ; preds = %bb.l, %bb.m
  %.06378 = phi i32 [ %i.au, %bb.m ], [ %i.ab, %bb.l ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.160, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !884
  %i.ay = zext nneg i32 %.06378 to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !931 ; 3 uses
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !253
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 14
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !885
  %i.bd = and i16 %i.bc, 4
  %.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #60
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  br label %sqlite3ColumnType.exit

bb.p:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = lshr i8 %i.bi, 4                        ; 2 uses
  %.not8.i = icmp eq i8 %i.bj, 0
  br i1 %.not8.i, label %sqlite3ColumnType.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = zext nneg i8 %i.bj to i64
  %7 = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.bk
  %8 = getelementptr i8, ptr %7, i64 -8
  %i.bl = load ptr, ptr %8, align 8, !tbaa !253
  br label %sqlite3ColumnType.exit

sqlite3ColumnType.exit:                           ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.056 = phi ptr [ @.str.40, %bb.n ], [ %i.bg, %bb.o ], [ %i.bl, %bb.q ], [ null, %bb.p ] ; 3 uses
  %i.bm = load ptr, ptr %.160, align 8, !tbaa !949
  store ptr %i.bm, ptr %i.b, align 8, !tbaa !253
  %i.bn = load ptr, ptr %.1, align 8, !tbaa !3557 ; 2 uses
  %.not71 = icmp eq ptr %i.bn, null
  br i1 %.not71, label %bb.u, label %bb.r

bb.r:                                             ; preds = %sqlite3ColumnType.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.160, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !925 ; 2 uses
  %.not72 = icmp eq ptr %i.bp, null
  br i1 %.not72, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !653
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !63
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %.preheader.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %indvars.iv.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !103
  %i.bw = icmp eq ptr %i.bv, %i.bp
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bw, label %sqlite3SchemaToIndex.exit, label %bb.s

sqlite3SchemaToIndex.exit:                        ; preds = %bb.s
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !496
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !253
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !229 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !3037
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !904
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !3038
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !3560
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.ch, align 8, !tbaa !4084
  %i.ci = load ptr, ptr %0, align 8, !tbaa !3557
  store ptr %i.ci, ptr %6, align 8, !tbaa !3557
  %i.cj = call fastcc ptr @columnTypeImpl(ptr noundef %6, ptr noundef %i.cd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %sqlite3ColumnType.exit, %bb.r, %sqlite3SchemaToIndex.exit, %bb.j, %bb.k, %bb.t, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ %i.cj, %bb.t ], [ null, %.critedge ], [ %i.aq, %bb.k ], [ null, %bb.j ], [ %.056, %sqlite3SchemaToIndex.exit ], [ %.056, %bb.r ], [ %.056, %sqlite3ColumnType.exit ]
  %.not75 = icmp eq ptr %2, null
  br i1 %.not75, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !253
  store ptr %i.ck, ptr %2, align 8, !tbaa !253
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !253
  store ptr %i.cl, ptr %3, align 8, !tbaa !253
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !253
  store ptr %i.cm, ptr %4, align 8, !tbaa !253
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ColumnSetColl(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !931    ; 9 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %sqlite3Strlen30.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #60
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1073741823
  %i.f = add nuw nsw i32 %i.e, 1
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]   ; 2 uses
  %i.g = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !885
  %i.j = and i16 %i.i, 4
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %sqlite3Strlen30.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #60
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 1073741823
  %i.o = add nuw nsw i32 %.0.i, 1
  %narrow = add nuw i32 %i.o, %i.n
  %i.p = zext i32 %narrow to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3Strlen30.exit
  %.0 = phi i64 [ %i.p, %bb.c ], [ %i.g, %sqlite3Strlen30.exit ] ; 2 uses
  %i.q = icmp eq ptr %2, null
  br i1 %i.q, label %sqlite3Strlen30.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #60
  %i.s = and i64 %i.r, 1073741823
  %i.t = add nuw nsw i64 %i.s, 1
  br label %sqlite3Strlen30.exit21

sqlite3Strlen30.exit21:                           ; preds = %bb.d, %bb.e
  %.0.i20 = phi i64 [ %i.t, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.u = add nuw nsw i64 %.0.i20, %.0             ; 4 uses
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3Strlen30.exit21
  %i.v = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.u), !inline_history !396
  br label %sqlite3DbRealloc.exit

bb.g:                                             ; preds = %sqlite3Strlen30.exit21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102
  %i.y = icmp ult ptr %i.a, %i.x
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !176
  %.not.i = icmp ult ptr %i.a, %i.aa
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp samesign ult i64 %i.u, 129
  br i1 %i.ab, label %sqlite3DbRealloc.exit.thread, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %.not19.i = icmp ult ptr %i.a, %i.ad
  br i1 %.not19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 438
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !355
  %i.ag = zext i16 %i.af to i64
  %.not20.i = icmp samesign ugt i64 %i.u, %i.ag
  br i1 %.not20.i, label %bb.l, label %sqlite3DbRealloc.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.ah = tail call fastcc ptr @dbReallocFinish(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.u), !inline_history !396
  br label %sqlite3DbRealloc.exit

sqlite3DbRealloc.exit:                            ; preds = %bb.f, %bb.l
  %.0.i22 = phi ptr [ %i.v, %bb.f ], [ %i.ah, %bb.l ] ; 2 uses
  %.not18 = icmp eq ptr %.0.i22, null
  br i1 %.not18, label %bb.m, label %sqlite3DbRealloc.exit.thread

sqlite3DbRealloc.exit.thread:                     ; preds = %bb.k, %bb.i, %sqlite3DbRealloc.exit
  %.0.i2225 = phi ptr [ %.0.i22, %sqlite3DbRealloc.exit ], [ %i.a, %bb.i ], [ %i.a, %bb.k ] ; 2 uses
  store ptr %.0.i2225, ptr %1, align 8, !tbaa !931
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i2225, i64 %.0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %.0.i20, i1 false)
  %i.aj = load i16, ptr %i.h, align 2, !tbaa !885
  %i.ak = or i16 %i.aj, 512
  store i16 %i.ak, ptr %i.h, align 2, !tbaa !885
  br label %bb.m

bb.m:                                             ; preds = %sqlite3DbRealloc.exit.thread, %sqlite3DbRealloc.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tableAndColumnIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef range(i32 -2147483648, 2147483646) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #16 {
bb.a:
  %.not31 = icmp sgt i32 %1, %2
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i32 %6, 0
  %i.d = sext i32 %1 to i64
  %i.e = add nsw i32 %2, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3ColumnIndex.exit.thread26
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %sqlite3ColumnIndex.exit.thread26 ] ; 3 uses
  %i.f = getelementptr inbounds [72 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
end_hunk_12
begin_hunk_13_@selectInnerLoop:bb.a

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !187  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.t = load i32, ptr %i.s, align 4, !tbaa !945
  %.not.i.i = icmp sgt i32 %i.t, %i.r
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 60, i32 noundef %i.o, i32 noundef %6, i32 noundef 1), !inline_history !979 ; 0 uses
  br label %codeOffset.exit

bb.i:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.r, 1
  store i32 %i.v, ptr %i.q, align 8, !tbaa !187
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.y ; 7 uses
  store i8 60, ptr %i.z, align 8, !tbaa !565
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 0, ptr %i.aa, align 2, !tbaa !589
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !586
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %6, ptr %i.ac, align 8, !tbaa !587
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 1, ptr %i.ad, align 4, !tbaa !588
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr null, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !568
  br label %codeOffset.exit

codeOffset.exit:                                  ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3037 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !24 ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3573 ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %codeOffset.exit
  br i1 %i.l, label %bb.k, label %._crit_edge434

._crit_edge434:                                   ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !952
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %.0, align 8, !tbaa !3653
  %i.an = load i32, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !3727
  %i.aq = and i8 %i.ap, 1
  %i.ar = xor i8 %i.aq, 1
  %i.as = zext nneg i8 %i.ar to i32
  %spec.select = add nsw i32 %i.an, %i.as         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !952
  %i.av = add nsw i32 %spec.select, %i.au
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge434, %bb.k
  %i.aw = phi i32 [ %i.av, %bb.k ], [ %.pre, %._crit_edge434 ] ; 2 uses
  %.1298 = phi i32 [ %spec.select, %bb.k ], [ 0, %._crit_edge434 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ay = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.aj, align 4, !tbaa !3573
  %i.az = add nsw i32 %i.aw, %i.ai
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !952
  br label %bb.o

bb.m:                                             ; preds = %codeOffset.exit
  %i.ba = add nsw i32 %i.ak, %i.ai
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !952 ; 2 uses
  %i.bd = icmp sgt i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = add nsw i32 %i.bc, %i.ai
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !952
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.bf = phi i32 [ %i.ay, %bb.l ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ] ; 38 uses
  %.2299 = phi i32 [ %.1298, %bb.l ], [ 0, %bb.n ], [ 0, %bb.m ] ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ai, ptr %i.bg, align 8, !tbaa !3574
  %i.bh = icmp sgt i32 %2, -1
  br i1 %i.bh, label %.preheader, label %bb.s

.preheader:                                       ; preds = %bb.o
  %i.bi = icmp sgt i32 %i.ai, 0
  br i1 %i.bi, label %.lr.ph420, label %.loopexit

.lr.ph420:                                        ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph420, %sqlite3VdbeAddOp3.exit
  %.0292419 = phi i32 [ 0, %.lr.ph420 ], [ %i.ca, %sqlite3VdbeAddOp3.exit ] ; 4 uses
  %i.bm = add nsw i32 %.0292419, %i.bf            ; 2 uses
  %i.bn = load i32, ptr %i.bj, align 8, !tbaa !187 ; 3 uses
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !945
  %.not.i = icmp sgt i32 %i.bo, %i.bn
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 95, i32 noundef %2, i32 noundef %.0292419, i32 noundef %i.bm), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bn, 1
  store i32 %i.bq, ptr %i.bj, align 8, !tbaa !187
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !186
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.br, i64 %i.bs ; 7 uses
  store i8 95, ptr %i.bt, align 8, !tbaa !565
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 0, ptr %i.bu, align 2, !tbaa !589
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %2, ptr %i.bv, align 4, !tbaa !586
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %.0292419, ptr %i.bw, align 8, !tbaa !587
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 %i.bm, ptr %i.bx, align 4, !tbaa !588
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr null, ptr %i.by, align 8, !tbaa !229
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 0, ptr %i.bz, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.q, %bb.r
  %i.ca = add nuw nsw i32 %.0292419, 1            ; 2 uses
  %exitcond428.not = icmp eq i32 %i.ca, %i.ai
  br i1 %exitcond428.not, label %.loopexit, label %bb.p, !llvm.loop !4354

bb.s:                                             ; preds = %bb.o
  switch i8 %i.c, label %bb.t [
    i8 1, label %.loopexit
    i8 11, label %bb.u
    i8 8, label %bb.u
    i8 7, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.t
  %.0304 = phi i8 [ 0, %bb.t ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ] ; 2 uses
  %i.cb = icmp eq i32 %i.i, 0
  %or.cond7 = select i1 %i.l, i1 %i.cb, i1 false
  %i.cc = icmp ne i8 %i.c, 10
  %i.cd = icmp ne i8 %i.c, 12
  %i.ce = and i1 %i.cc, %i.cd
  %or.cond11 = select i1 %or.cond7, i1 %i.ce, i1 false
  br i1 %or.cond11, label %bb.v, label %.loopexit411

bb.v:                                             ; preds = %bb.u
  %i.cf = or disjoint i8 %.0304, 12               ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3731 ; 2 uses
  %i.ci = load ptr, ptr %.0, align 8, !tbaa !3653 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.ck = icmp slt i32 %i.ch, %i.cj
  br i1 %i.ck, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.cl = sext i32 %i.ch to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %i.cm = phi i32 [ %i.cj, %.lr.ph.preheader ], [ %i.da, %bb.x ]
  %i.cn = phi ptr [ %i.ci, %.lr.ph.preheader ], [ %i.db, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ %i.cl, %.lr.ph.preheader ], [ %indvars.iv.next.pre-phi, %bb.x ] ; 3 uses
  %i.co = getelementptr [24 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = getelementptr i8, ptr %i.co, i64 28
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !229 ; 2 uses
  %.not325 = icmp eq i16 %i.cq, 0
  br i1 %.not325, label %.lr.ph._crit_edge, label %bb.w

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre438 = add nsw i64 %indvars.iv, 1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.cr = zext i16 %i.cq to i64
  %i.cs = add nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ct = load i32, ptr %i.cg, align 8, !tbaa !3731
  %i.cu = trunc nsw i64 %i.cs to i32
  %i.cv = sub i32 %i.cu, %i.ct
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = load ptr, ptr %i.ag, align 8, !tbaa !3037
  %i.cy = getelementptr [24 x i8], ptr %i.cx, i64 %i.cr
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  store i16 %i.cw, ptr %i.cz, align 4, !tbaa !229
  %.pre435 = load ptr, ptr %.0, align 8, !tbaa !3653 ; 2 uses
  %.pre436 = load i32, ptr %.pre435, align 8, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph._crit_edge, %bb.w
  %indvars.iv.next.pre-phi = phi i64 [ %.pre438, %.lr.ph._crit_edge ], [ %i.cs, %bb.w ] ; 2 uses
  %i.da = phi i32 [ %i.cm, %.lr.ph._crit_edge ], [ %.pre436, %bb.w ] ; 2 uses
  %i.db = phi ptr [ %i.cn, %.lr.ph._crit_edge ], [ %.pre435, %bb.w ]
  %i.dc = sext i32 %i.da to i64
  %i.dd = icmp slt i64 %indvars.iv.next.pre-phi, %i.dc
  br i1 %i.dd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !4355

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre437 = load ptr, ptr %i.ag, align 8, !tbaa !3037
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.de = phi ptr [ %.pre437, %._crit_edge.loopexit ], [ %i.ah, %bb.v ] ; 13 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !24 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph417.preheader, label %.loopexit411

.lr.ph417.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.df to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.df, 8
  br i1 %min.iters.check, label %.lr.ph417.preheader507, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph417.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.dh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ai, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.dh, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi501 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ev, %vector.body ]
  %vec.phi502 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi503 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %index
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 100
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 124
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 148
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 172
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 196
  %i.dy = load i16, ptr %i.dq, align 4, !tbaa !229
  %i.dz = load i16, ptr %i.dr, align 4, !tbaa !229
  %i.ea = load i16, ptr %i.ds, align 4, !tbaa !229
  %i.eb = load i16, ptr %i.dt, align 4, !tbaa !229
  %i.ec = insertelement <4 x i16> poison, i16 %i.dy, i64 0
  %i.ed = insertelement <4 x i16> %i.ec, i16 %i.dz, i64 1
  %i.ee = insertelement <4 x i16> %i.ed, i16 %i.ea, i64 2
  %i.ef = insertelement <4 x i16> %i.ee, i16 %i.eb, i64 3
  %i.eg = load i16, ptr %i.du, align 4, !tbaa !229
  %i.eh = load i16, ptr %i.dv, align 4, !tbaa !229
  %i.ei = load i16, ptr %i.dw, align 4, !tbaa !229
  %i.ej = load i16, ptr %i.dx, align 4, !tbaa !229
  %i.ek = insertelement <4 x i16> poison, i16 %i.eg, i64 0
  %i.el = insertelement <4 x i16> %i.ek, i16 %i.eh, i64 1
  %i.em = insertelement <4 x i16> %i.el, i16 %i.ei, i64 2
  %i.en = insertelement <4 x i16> %i.em, i16 %i.ej, i64 3
  %i.eo = icmp ne <4 x i16> %i.ef, zeroinitializer ; 2 uses
  %i.ep = icmp ne <4 x i16> %i.en, zeroinitializer ; 2 uses
  %i.eq = or <4 x i1> %vec.phi502, %i.eo          ; 2 uses
  %i.er = or <4 x i1> %vec.phi503, %i.ep          ; 2 uses
  %i.es = sext <4 x i1> %i.eo to <4 x i32>
  %i.et = sext <4 x i1> %i.ep to <4 x i32>
  %i.eu = add <4 x i32> %vec.phi, %i.es           ; 2 uses
  %i.ev = add <4 x i32> %vec.phi501, %i.et        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !4356

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ev, %i.eu
  %i.ex = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx504 = or <4 x i1> %i.er, %i.eq
  %bin.rdx504.fr = freeze <4 x i1> %bin.rdx504
  %i.ey = bitcast <4 x i1> %bin.rdx504.fr to i4
  %.not506 = icmp eq i4 %i.ey, 0
  %rdx.select = select i1 %.not506, i32 %i.bf, i32 0 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit411, label %.lr.ph417.preheader507

.lr.ph417.preheader507:                           ; preds = %.lr.ph417.preheader, %middle.block
  %indvars.iv425.ph = phi i64 [ 0, %.lr.ph417.preheader ], [ %n.vec, %middle.block ]
  %.0293414.ph = phi i32 [ %i.ai, %.lr.ph417.preheader ], [ %i.ex, %middle.block ]
  %.0300413.ph = phi i32 [ %i.bf, %.lr.ph417.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph417

.lr.ph417:                                        ; preds = %.lr.ph417.preheader507, %.lr.ph417
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %.lr.ph417 ], [ %indvars.iv425.ph, %.lr.ph417.preheader507 ] ; 2 uses
  %.0293414 = phi i32 [ %spec.select331, %.lr.ph417 ], [ %.0293414.ph, %.lr.ph417.preheader507 ]
  %.0300413 = phi i32 [ %spec.select330, %.lr.ph417 ], [ %.0300413.ph, %.lr.ph417.preheader507 ]
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %indvars.iv425
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 28
  %i.fb = load i16, ptr %i.fa, align 4, !tbaa !229
  %.not324 = icmp ne i16 %i.fb, 0                 ; 2 uses
  %spec.select330 = select i1 %.not324, i32 0, i32 %.0300413 ; 2 uses
  %i.fc = sext i1 %.not324 to i32
  %spec.select331 = add nsw i32 %.0293414, %i.fc  ; 2 uses
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit411, label %.lr.ph417, !llvm.loop !4357

.loopexit411:                                     ; preds = %.lr.ph417, %middle.block, %._crit_edge, %bb.u
  %i.fd = phi ptr [ %i.ah, %bb.u ], [ %i.de, %._crit_edge ], [ %i.de, %middle.block ], [ %i.de, %.lr.ph417 ]
  %.1305 = phi i8 [ %.0304, %bb.u ], [ %i.cf, %._crit_edge ], [ %i.cf, %middle.block ], [ %i.cf, %.lr.ph417 ] ; 3 uses
  %.2302 = phi i32 [ %i.bf, %bb.u ], [ %i.bf, %._crit_edge ], [ %rdx.select, %middle.block ], [ %spec.select330, %.lr.ph417 ]
  %.2295 = phi i32 [ %i.ai, %bb.u ], [ %i.ai, %._crit_edge ], [ %i.ex, %middle.block ], [ %spec.select331, %.lr.ph417 ] ; 2 uses
  store i32 %i.bf, ptr %8, align 4, !tbaa !4358
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 %.1305, ptr %i.fe, align 4, !tbaa !4360
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !3690
  %.not323 = icmp eq i32 %i.fg, 0
  br i1 %.not323, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.loopexit411
  %i.fh = and i8 %.1305, 8
  %i.fi = icmp ne i8 %i.fh, 0
  %i.fj = icmp sgt i32 %.2299, 0
  %or.cond13 = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond13, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store ptr %8, ptr %i.fk, align 8, !tbaa !4361
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y, %.loopexit411
  tail call fastcc void @sqlite3ExprCodeExprList(ptr noundef %0, ptr noundef nonnull %i.fd, i32 noundef %i.bf, i32 noundef 0, i8 noundef zeroext %.1305)
  br label %.loopexit

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit, %.preheader, %bb.s, %bb.z, %bb.aa
  %.4 = phi i32 [ %.2302, %bb.aa ], [ %i.bf, %bb.s ], [ 0, %bb.z ], [ %i.bf, %.preheader ], [ %i.bf, %sqlite3VdbeAddOp3.exit ] ; 5 uses
  %.3296 = phi i32 [ %.2295, %bb.aa ], [ %i.ai, %bb.s ], [ %.2295, %bb.z ], [ %i.ai, %.preheader ], [ %i.ai, %sqlite3VdbeAddOp3.exit ] ; 21 uses
  br i1 %i.m, label %bb.ab, label %codeOffset.exit333

bb.ab:                                            ; preds = %.loopexit
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !3730
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3728
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !3037
  %i.fr = call fastcc i32 @codeDistinct(ptr noundef %0, i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %6, ptr noundef %i.fq, i32 noundef %i.bf)
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3729
  call fastcc void @fixDistinctOpenEph(ptr noundef %0, i32 noundef %i.fn, i32 noundef %i.fr, i32 noundef %i.ft)
  %i.fu = icmp eq ptr %.0, null
  br i1 %i.fu, label %bb.ac, label %codeOffset.exit333

bb.ac:                                            ; preds = %bb.ab
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3691 ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %bb.ad, label %codeOffset.exit333

bb.ad:                                            ; preds = %bb.ac
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !187 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !945
  %.not.i.i332 = icmp sgt i32 %i.gb, %i.fz
  br i1 %.not.i.i332, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gc = call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 60, i32 noundef %i.fw, i32 noundef %6, i32 noundef 1), !inline_history !979 ; 0 uses
  br label %codeOffset.exit333

bb.af:                                            ; preds = %bb.ad
  %i.gd = add nsw i32 %i.fz, 1
  store i32 %i.gd, ptr %i.fy, align 8, !tbaa !187
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !186
  %i.gg = sext i32 %i.fz to i64
  %i.gh = getelementptr inbounds [24 x i8], ptr %i.gf, i64 %i.gg ; 7 uses
  store i8 60, ptr %i.gh, align 8, !tbaa !565
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  store i16 0, ptr %i.gi, align 2, !tbaa !589
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.fw, ptr %i.gj, align 4, !tbaa !586
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %6, ptr %i.gk, align 8, !tbaa !587
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 1, ptr %i.gl, align 4, !tbaa !588
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr null, ptr %i.gm, align 8, !tbaa !229
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
end_hunk_13
begin_hunk_14_@selectInnerLoop:bb.a
  %i.wm = getelementptr inbounds [24 x i8], ptr %i.wk, i64 %i.wl ; 7 uses
  store i8 98, ptr %i.wm, align 8, !tbaa !565
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 2
  store i16 0, ptr %i.wn, align 2, !tbaa !589
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  store i32 %.0.i377, ptr %i.wo, align 4, !tbaa !586
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store i32 %i.sl, ptr %i.wp, align 8, !tbaa !587
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 %.0.i374496, ptr %i.wq, align 4, !tbaa !588
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store ptr null, ptr %i.wr, align 8, !tbaa !229
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  store i8 0, ptr %i.ws, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit397

sqlite3VdbeAddOp3.exit397:                        ; preds = %bb.dq, %bb.dr
  %i.wt = load i32, ptr %i.tg, align 8, !tbaa !187 ; 3 uses
  %i.wu = load i32, ptr %i.ti, align 4, !tbaa !945
  %.not.i398 = icmp sgt i32 %i.wu, %i.wt
  br i1 %.not.i398, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %sqlite3VdbeAddOp3.exit397
  %i.wv = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.b, i32 noundef 139, i32 noundef %i.e, i32 noundef %.0.i374496, i32 noundef %.0.i377, i32 noundef %i.sl) ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit400

bb.dt:                                            ; preds = %sqlite3VdbeAddOp3.exit397
  %i.ww = add nsw i32 %i.wt, 1
  store i32 %i.ww, ptr %i.tg, align 8, !tbaa !187
  %i.wx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !186
  %i.wz = sext i32 %i.wt to i64
  %i.xa = getelementptr inbounds [24 x i8], ptr %i.wy, i64 %i.wz ; 7 uses
  store i8 -117, ptr %i.xa, align 8, !tbaa !565
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 2
  store i16 0, ptr %i.xb, align 2, !tbaa !589
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  store i32 %i.e, ptr %i.xc, align 4, !tbaa !586
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  store i32 %.0.i374496, ptr %i.xd, align 8, !tbaa !587
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 12
  store i32 %.0.i377, ptr %i.xe, align 4, !tbaa !588
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  store i32 %i.sl, ptr %i.xf, align 8, !tbaa !229
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  store i8 -3, ptr %i.xg, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp4Int.exit400

sqlite3VdbeAddOp4Int.exit400:                     ; preds = %bb.ds, %bb.dt
  %.not326 = icmp eq i32 %.0291, 0
  br i1 %.not326, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %sqlite3VdbeAddOp4Int.exit400
  %i.xh = load i32, ptr %i.tg, align 8, !tbaa !187
  %i.xi = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 103
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !552
  %.not.i.i.i = icmp eq i8 %i.xk, 0
  br i1 %.not.i.i.i, label %bb.dv, label %sqlite3VdbeJumpHere.exit

bb.dv:                                            ; preds = %bb.du
  %i.xl = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !186
  %i.xn = sext i32 %.0291 to i64
  %i.xo = getelementptr inbounds [24 x i8], ptr %i.xm, i64 %i.xn
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %bb.du, %bb.dv
  %.0.i.i.i = phi ptr [ %i.xo, %bb.dv ], [ @sqlite3VdbeGetOp.dummy, %bb.du ]
  %i.xp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.xh, ptr %i.xp, align 8, !tbaa !587
  br label %bb.dw

bb.dw:                                            ; preds = %sqlite3VdbeJumpHere.exit, %sqlite3VdbeAddOp4Int.exit400
  %.not.i401 = icmp eq i32 %.0.i374496, 0
  br i1 %.not.i401, label %sqlite3ReleaseTempReg.exit402, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xq = load i8, ptr %i.rb, align 1, !tbaa !3710 ; 3 uses
  %i.xr = icmp ult i8 %i.xq, 8
  br i1 %i.xr, label %bb.dy, label %sqlite3ReleaseTempReg.exit402

bb.dy:                                            ; preds = %bb.dx
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.xt = add nuw nsw i8 %i.xq, 1
  store i8 %i.xt, ptr %i.rb, align 1, !tbaa !3710
  %i.xu = zext nneg i8 %i.xq to i64
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.xu
  store i32 %.0.i374496, ptr %i.xv, align 4, !tbaa !24
  br label %sqlite3ReleaseTempReg.exit402

sqlite3ReleaseTempReg.exit402:                    ; preds = %bb.dw, %bb.dx, %bb.dy
  br i1 %i.sk, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %sqlite3ReleaseTempReg.exit402
  %.not.i.i403 = icmp eq i32 %.0.i377, 0
  br i1 %.not.i.i403, label %sqlite3ReleaseTempRange.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xw = load i8, ptr %i.rb, align 1, !tbaa !3710 ; 3 uses
  %i.xx = icmp ult i8 %i.xw, 8
  br i1 %i.xx, label %bb.eb, label %sqlite3ReleaseTempRange.exit

bb.eb:                                            ; preds = %bb.ea
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.xz = add nuw nsw i8 %i.xw, 1
  store i8 %i.xz, ptr %i.rb, align 1, !tbaa !3710
  %i.ya = zext nneg i8 %i.xw to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.ya
  store i32 %.0.i377, ptr %i.yb, align 4, !tbaa !24
  br label %sqlite3ReleaseTempRange.exit

bb.ec:                                            ; preds = %sqlite3ReleaseTempReg.exit402
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !3711
  %i.ye = icmp sgt i32 %i.sl, %i.yd
  br i1 %i.ye, label %bb.ed, label %sqlite3ReleaseTempRange.exit

bb.ed:                                            ; preds = %bb.ec
  store i32 %i.sl, ptr %i.yc, align 4, !tbaa !3711
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.0.i377, ptr %i.yf, align 8, !tbaa !3766
  br label %sqlite3ReleaseTempRange.exit

sqlite3ReleaseTempRange.exit:                     ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.ci, %bb.ch, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %codeOffset.exit333
  %i.yg = icmp eq ptr %.0, null
  br i1 %i.yg, label %sqlite3ReleaseTempRange.exit.thread, label %sqlite3VdbeAddOp2.exit407

sqlite3ReleaseTempRange.exit.thread:              ; preds = %bb.cl, %bb.cm, %bb.bu, %bb.bt, %bb.cd, %bb.ce, %bb.cf, %bb.cr, %bb.cs, %bb.cu, %bb.cv, %sqlite3ReleaseTempRange.exit
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !3690 ; 3 uses
  %.not329 = icmp eq i32 %i.yi, 0
  br i1 %.not329, label %sqlite3VdbeAddOp2.exit407, label %bb.ee

bb.ee:                                            ; preds = %sqlite3ReleaseTempRange.exit.thread
  %i.yj = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !187 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !945
  %.not.i.i405 = icmp sgt i32 %i.ym, %i.yk
  br i1 %.not.i.i405, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.yn = call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 62, i32 noundef %i.yi, i32 noundef %7, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit407

bb.eg:                                            ; preds = %bb.ee
  %i.yo = add nsw i32 %i.yk, 1
  store i32 %i.yo, ptr %i.yj, align 8, !tbaa !187
  %i.yp = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !186
  %i.yr = sext i32 %i.yk to i64
  %i.ys = getelementptr inbounds [24 x i8], ptr %i.yq, i64 %i.yr ; 7 uses
  store i8 62, ptr %i.ys, align 8, !tbaa !565
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 2
  store i16 0, ptr %i.yt, align 2, !tbaa !589
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  store i32 %i.yi, ptr %i.yu, align 4, !tbaa !586
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store i32 %7, ptr %i.yv, align 8, !tbaa !587
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 12
  store i32 0, ptr %i.yw, align 4, !tbaa !588
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store ptr null, ptr %i.yx, align 8, !tbaa !229
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  store i8 0, ptr %i.yy, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit407

sqlite3VdbeAddOp2.exit407:                        ; preds = %bb.bl, %bb.bw, %bb.ck, %bb.co, %bb.eg, %bb.ef, %sqlite3ReleaseTempRange.exit.thread, %sqlite3ReleaseTempRange.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3WhereEnd(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !822    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !978  ; 39 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4156 ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !653  ; 3 uses
  %i.g = getelementptr i8, ptr %i.c, i64 144      ; 51 uses
  %.val320 = load i32, ptr %i.g, align 8, !tbaa !187 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !229   ; 3 uses
  %.not452 = icmp eq i8 %i.i, 0
  br i1 %.not452, label %._crit_edge451, label %.lr.ph439

.lr.ph439:                                        ; preds = %bb.a
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 148 ; 20 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 27 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.t = zext i8 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph439, %bb.cz
  %indvars.iv462 = phi i64 [ %i.t, %.lr.ph439 ], [ %indvars.iv.next463, %bb.cz ] ; 6 uses
  %indvars.iv460.a = phi i64 [ %i.j, %.lr.ph439 ], [ %indvars.iv460, %bb.cz ]
  %.0265435 = phi i8 [ 0, %.lr.ph439 ], [ %.1266, %bb.cz ] ; 2 uses
  %.0269434 = phi i32 [ 0, %.lr.ph439 ], [ %.3, %bb.cz ] ; 7 uses
  %indvars.iv460 = add nsw i64 %indvars.iv460.a, -1 ; 3 uses
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, -1 ; 2 uses
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv.next463 ; 34 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3732 ; 4 uses
  %.not295 = icmp eq ptr %i.w, null
  br i1 %.not295, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4333
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !977  ; 4 uses
  %i.aa = xor i32 %i.y, -1                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3878
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !3297
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.z, ptr noundef nonnull readonly %i.c, i32 noundef %i.aa)
  %.val319.pre = load i32, ptr %i.g, align 8, !tbaa !187
  br label %sqlite3VdbeResolveLabel.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !187 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1009
  %i.ak = sext i32 %i.aa to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  store i32 %i.ah, ptr %i.al, align 4, !tbaa !24
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.d, %bb.e
  %.val319 = phi i32 [ %.val319.pre, %bb.d ], [ %i.ah, %bb.e ] ; 4 uses
  %i.am = load i32, ptr %i.m, align 8, !tbaa !3297
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.m, align 8, !tbaa !3297
  store i32 %i.an, ptr %i.x, align 4, !tbaa !4333
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %.val319, ptr %i.ao, align 4, !tbaa !4363
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4330 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4364 ; 2 uses
  %i.at = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i = icmp sgt i32 %i.at, %.val319
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeResolveLabel.exit
  %i.au = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 68, i32 noundef %i.aq, i32 noundef %i.as, i32 noundef 1), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.g:                                             ; preds = %sqlite3VdbeResolveLabel.exit
  %i.av = add nsw i32 %.val319, 1
  store i32 %i.av, ptr %i.g, align 8, !tbaa !187
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.ax = sext i32 %.val319 to i64
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.aw, i64 %i.ax ; 7 uses
  store i8 68, ptr %i.ay, align 8, !tbaa !565
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 0, ptr %i.az, align 2, !tbaa !589
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.aq, ptr %i.ba, align 4, !tbaa !586
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.as, ptr %i.bb, align 8, !tbaa !587
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 1, ptr %i.bc, align 4, !tbaa !588
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr null, ptr %i.bd, align 8, !tbaa !229
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 0, ptr %i.be, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.f, %bb.g
  %i.bf = add i8 %.0265435, 1
  br label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeAddOp3.exit, %bb.b
  %.1266 = phi i8 [ %i.bf, %sqlite3VdbeAddOp3.exit ], [ %.0265435, %bb.b ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4307 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 73 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !4365
  %.not296 = icmp eq i8 %i.bj, -68
  br i1 %.not296, label %sqlite3VdbeAddOp2.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load i8, ptr %i.p, align 1, !tbaa !229
  %i.bl = icmp eq i8 %i.bk, 2
  br i1 %i.bl, label %bb.j, label %sqlite3VdbeAddOp2.exit

bb.j:                                             ; preds = %bb.i
  %i.bm = load i8, ptr %i.h, align 8, !tbaa !229
  %i.bn = zext i8 %i.bm to i64
  %i.bo = icmp eq i64 %indvars.iv462, %i.bn
  br i1 %i.bo, label %bb.k, label %sqlite3VdbeAddOp2.exit

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !4274
  %i.br = and i32 %i.bq, 512
  %.not297 = icmp eq i32 %i.br, 0
  br i1 %.not297, label %sqlite3VdbeAddOp2.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !229 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 99
  %i.bv = load i16, ptr %i.bu, align 1
  %i.bw = and i16 %i.bv, 128
  %.not298 = icmp eq i16 %i.bw, 0
  br i1 %.not298, label %sqlite3VdbeAddOp2.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 30
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !229 ; 3 uses
  %i.bz = zext i16 %i.by to i32                   ; 4 uses
  %.not299 = icmp eq i16 %i.by, 0
  br i1 %.not299, label %sqlite3VdbeAddOp2.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2989
  %i.cc = zext i16 %i.by to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !332
  %i.cf = icmp sgt i16 %i.ce, 35
  br i1 %i.cf, label %bb.o, label %sqlite3VdbeAddOp2.exit

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %i.q, align 4, !tbaa !952
  %i.ch = add nsw i32 %i.cg, 1                    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %sqlite3VdbeAddOp3.exit323
  %.0271424 = phi i32 [ 0, %bb.o ], [ %i.cy, %sqlite3VdbeAddOp3.exit323 ] ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !4320 ; 2 uses
  %i.ck = add nsw i32 %.0271424, %i.ch            ; 2 uses
  %i.cl = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.cm = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i321 = icmp sgt i32 %i.cm, %i.cl
  br i1 %.not.i321, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 95, i32 noundef %i.cj, i32 noundef %.0271424, i32 noundef %i.ck), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit323

bb.r:                                             ; preds = %bb.p
  %i.co = add nsw i32 %i.cl, 1
  store i32 %i.co, ptr %i.g, align 8, !tbaa !187
  %i.cp = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.cq = sext i32 %i.cl to i64
  %i.cr = getelementptr inbounds [24 x i8], ptr %i.cp, i64 %i.cq ; 7 uses
  store i8 95, ptr %i.cr, align 8, !tbaa !565
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i16 0, ptr %i.cs, align 2, !tbaa !589
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.cj, ptr %i.ct, align 4, !tbaa !586
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %.0271424, ptr %i.cu, align 8, !tbaa !587
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %i.ck, ptr %i.cv, align 4, !tbaa !588
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr null, ptr %i.cw, align 8, !tbaa !229
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 0, ptr %i.cx, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit323

sqlite3VdbeAddOp3.exit323:                        ; preds = %bb.q, %bb.r
  %i.cy = add nuw nsw i32 %.0271424, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %i.bz
  br i1 %exitcond.not, label %bb.s, label %bb.p, !llvm.loop !4366

bb.s:                                             ; preds = %sqlite3VdbeAddOp3.exit323
  %i.cz = add nuw nsw i32 %i.bz, 1
  %i.da = load i32, ptr %i.q, align 4, !tbaa !952
  %i.db = add nsw i32 %i.cz, %i.da
  store i32 %i.db, ptr %i.q, align 4, !tbaa !952
  %i.dc = load i8, ptr %i.bi, align 1, !tbaa !4365
  %i.dd = icmp eq i8 %i.dc, 39
  %i.de = select i1 %i.dd, i32 21, i32 24         ; 2 uses
  %i.df = load i32, ptr %i.ci, align 8, !tbaa !4320 ; 2 uses
  %i.dg = load i32, ptr %i.g, align 8, !tbaa !187 ; 4 uses
  %i.dh = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i324 = icmp sgt i32 %i.dh, %i.dg
  br i1 %.not.i324, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.c, i32 noundef range(i32 0, 256) %i.de, i32 noundef %i.df, i32 noundef 0, i32 noundef %i.ch, i32 noundef %i.bz)
  br label %sqlite3VdbeAddOp4Int.exit

bb.u:                                             ; preds = %bb.s
  %i.dj = add nsw i32 %i.dg, 1
  store i32 %i.dj, ptr %i.g, align 8, !tbaa !187
  %i.dk = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.dl = sext i32 %i.dg to i64
  %i.dm = getelementptr inbounds [24 x i8], ptr %i.dk, i64 %i.dl ; 7 uses
  %i.dn = trunc nuw nsw i32 %i.de to i8
  store i8 %i.dn, ptr %i.dm, align 8, !tbaa !565
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i16 0, ptr %i.do, align 2, !tbaa !589
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 %i.df, ptr %i.dp, align 4, !tbaa !586
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 0, ptr %i.dq, align 8, !tbaa !587
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 %i.ch, ptr %i.dr, align 4, !tbaa !588
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 %i.bz, ptr %i.ds, align 8, !tbaa !229
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 -3, ptr %i.dt, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.t, %bb.u
  %.0.i325 = phi i32 [ %i.di, %bb.t ], [ %i.dg, %bb.u ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !4367 ; 2 uses
  %i.dw = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.dx = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i.i = icmp sgt i32 %i.dx, %i.dw
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.dy = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 9, i32 noundef 1, i32 noundef %i.dv, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.w:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.dz = add nsw i32 %i.dw, 1
  store i32 %i.dz, ptr %i.g, align 8, !tbaa !187
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.eb = sext i32 %i.dw to i64
  %i.ec = getelementptr inbounds [24 x i8], ptr %i.ea, i64 %i.eb ; 7 uses
  store i8 9, ptr %i.ec, align 8, !tbaa !565
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  store i16 0, ptr %i.ed, align 2, !tbaa !589
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 1, ptr %i.ee, align 4, !tbaa !586
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i32 %i.dv, ptr %i.ef, align 8, !tbaa !587
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !588
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr null, ptr %i.eh, align 8, !tbaa !229
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store i8 0, ptr %i.ei, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.w, %bb.v, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.h
  %.2 = phi i32 [ %.0269434, %bb.h ], [ %.0269434, %bb.i ], [ %.0269434, %bb.n ], [ %.0269434, %bb.m ], [ %.0269434, %bb.l ], [ %.0269434, %bb.k ], [ %.0269434, %bb.j ], [ %.0.i325, %bb.v ], [ %.0.i325, %bb.w ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !4317
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 27
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = and i8 %i.eo, 4
  %.not300 = icmp eq i8 %i.ep, 0
  br i1 %.not300, label %sqlite3VdbeAddOp2.exit328, label %bb.x

bb.x:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.eq = load i8, ptr %i.h, align 8, !tbaa !229
  %i.er = zext i8 %i.eq to i64
  %i.es = icmp eq i64 %indvars.iv462, %i.er
  br i1 %i.es, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv462
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !4317
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 27
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = and i8 %i.ez, 4
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.z, label %sqlite3VdbeAddOp2.exit328

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fc = icmp samesign ugt i64 %indvars.iv462, 1
  br i1 %i.fc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.fd = xor i64 %indvars.iv, -1
  %i.fe = getelementptr inbounds [120 x i8], ptr %i.u, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !4317
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 27
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = and i8 %i.fk, 4
  %.not301 = icmp eq i8 %i.fl, 0
  br i1 %.not301, label %._crit_edge.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next, %indvars.iv460
  br i1 %exitcond459.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4368

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.aa
  %.0272.lcssa.ph.in = phi i64 [ %indvars.iv460, %bb.aa ], [ %indvars.iv, %.lr.ph ]
  %.neg = mul i64 %.0272.lcssa.ph.in, -4294967296
  %i.fm = ashr exact i64 %.neg, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %.0272.lcssa.neg = phi i64 [ 0, %bb.z ], [ %i.fm, %._crit_edge.loopexit ]
  %i.fn = getelementptr inbounds [120 x i8], ptr %i.u, i64 %.0272.lcssa.neg
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4318 ; 2 uses
  %i.fq = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.fr = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i.i326 = icmp sgt i32 %i.fr, %i.fq
  br i1 %.not.i.i326, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.fs = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 9, i32 noundef 0, i32 noundef %i.fp, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit328

bb.ac:                                            ; preds = %._crit_edge
  %i.ft = add nsw i32 %i.fq, 1
  store i32 %i.ft, ptr %i.g, align 8, !tbaa !187
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.fv = sext i32 %i.fq to i64
  %i.fw = getelementptr inbounds [24 x i8], ptr %i.fu, i64 %i.fv ; 7 uses
  store i8 9, ptr %i.fw, align 8, !tbaa !565
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  store i16 0, ptr %i.fx, align 2, !tbaa !589
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i32 0, ptr %i.fy, align 4, !tbaa !586
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i32 %i.fp, ptr %i.fz, align 8, !tbaa !587
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.ga, align 4, !tbaa !588
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store ptr null, ptr %i.gb, align 8, !tbaa !229
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store i8 0, ptr %i.gc, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit328

sqlite3VdbeAddOp2.exit328:                        ; preds = %bb.ac, %bb.ab, %bb.y, %sqlite3VdbeAddOp2.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4333
  %i.gf = load ptr, ptr %i.l, align 8, !tbaa !977 ; 4 uses
  %i.gg = xor i32 %i.ge, -1                       ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 76
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3878
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !3297
  %i.gl = add nsw i32 %i.gk, %i.gi
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %sqlite3VdbeAddOp2.exit328
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.gf, ptr noundef nonnull readonly %i.c, i32 noundef %i.gg)
  br label %sqlite3VdbeResolveLabel.exit329

bb.ae:                                            ; preds = %sqlite3VdbeAddOp2.exit328
  %i.gn = load i32, ptr %i.g, align 8, !tbaa !187
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !1009
  %i.gq = sext i32 %i.gg to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gq
  store i32 %i.gn, ptr %i.gr, align 4, !tbaa !24
  br label %sqlite3VdbeResolveLabel.exit329

sqlite3VdbeResolveLabel.exit329:                  ; preds = %bb.ad, %bb.ae
  %i.gs = load i8, ptr %i.bi, align 1, !tbaa !4365 ; 3 uses
  %.not302 = icmp eq i8 %i.gs, -68
  br i1 %.not302, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %sqlite3VdbeResolveLabel.exit329
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 76
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4369 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !4367 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 74
  %i.gy = load i8, ptr %i.gx, align 2, !tbaa !4370
  %i.gz = zext i8 %i.gy to i32                    ; 2 uses
  %i.ha = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.hb = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i330 = icmp sgt i32 %i.hb, %i.ha
  br i1 %.not.i330, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = zext i8 %i.gs to i32
  %i.hd = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef %i.hc, i32 noundef %i.gu, i32 noundef %i.gw, i32 noundef %i.gz), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit332

bb.ah:                                            ; preds = %bb.af
  %i.he = add nsw i32 %i.ha, 1
  store i32 %i.he, ptr %i.g, align 8, !tbaa !187
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.hg = sext i32 %i.ha to i64
  %i.hh = getelementptr inbounds [24 x i8], ptr %i.hf, i64 %i.hg ; 7 uses
  store i8 %i.gs, ptr %i.hh, align 8, !tbaa !565
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  store i16 0, ptr %i.hi, align 2, !tbaa !589
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i32 %i.gu, ptr %i.hj, align 4, !tbaa !586
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i32 %i.gw, ptr %i.hk, align 8, !tbaa !587
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 %i.gz, ptr %i.hl, align 4, !tbaa !588
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store ptr null, ptr %i.hm, align 8, !tbaa !229
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  store i8 0, ptr %i.hn, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit332

sqlite3VdbeAddOp3.exit332:                        ; preds = %bb.ag, %bb.ah
  %i.ho = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %bb.ai, label %sqlite3VdbeChangeP5.exit

bb.ai:                                            ; preds = %sqlite3VdbeAddOp3.exit332
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 75
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !4371
  %i.hs = zext i8 %i.hr to i16
  %i.ht = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.hu = zext nneg i32 %i.ho to i64
  %i.hv = getelementptr [24 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 -22
  store i16 %i.hs, ptr %i.hw, align 2, !tbaa !589
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %sqlite3VdbeAddOp3.exit332, %bb.ai
  %i.hx = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !4372
  %.not303 = icmp eq i32 %i.hy, 0
  br i1 %.not303, label %sqlite3VdbeAddOp2.exit336, label %bb.aj

bb.aj:                                            ; preds = %sqlite3VdbeChangeP5.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !4373
  %i.ib = load ptr, ptr %i.l, align 8, !tbaa !977 ; 4 uses
  %i.ic = xor i32 %i.ia, -1                       ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 76
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3878
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !3297
  %i.ih = add nsw i32 %i.ig, %i.ie
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.ib, ptr noundef nonnull readonly %i.c, i32 noundef %i.ic)
  br label %sqlite3VdbeResolveLabel.exit333

bb.al:                                            ; preds = %bb.aj
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 80
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !1009
  %i.il = sext i32 %i.ic to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.il
  store i32 %i.ho, ptr %i.im, align 4, !tbaa !24
  br label %sqlite3VdbeResolveLabel.exit333

sqlite3VdbeResolveLabel.exit333:                  ; preds = %bb.ak, %bb.al
  %i.in = load i32, ptr %i.hx, align 8, !tbaa !4372 ; 2 uses
  %i.io = load i32, ptr %i.gv, align 8, !tbaa !4367
  %i.ip = add nsw i32 %i.io, -1                   ; 2 uses
  %i.iq = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.ir = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i.i334 = icmp sgt i32 %i.ir, %i.iq
  br i1 %.not.i.i334, label %bb.an, label %bb.am

bb.am:                                            ; preds = %sqlite3VdbeResolveLabel.exit333
  %i.is = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 62, i32 noundef %i.in, i32 noundef %i.ip, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit336

bb.an:                                            ; preds = %sqlite3VdbeResolveLabel.exit333
  %i.it = add nsw i32 %i.iq, 1
  store i32 %i.it, ptr %i.g, align 8, !tbaa !187
  %i.iu = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.iv = sext i32 %i.iq to i64
  %i.iw = getelementptr inbounds [24 x i8], ptr %i.iu, i64 %i.iv ; 7 uses
  store i8 62, ptr %i.iw, align 8, !tbaa !565
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  store i16 0, ptr %i.ix, align 2, !tbaa !589
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store i32 %i.in, ptr %i.iy, align 4, !tbaa !586
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i32 %i.ip, ptr %i.iz, align 8, !tbaa !587
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !588
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store ptr null, ptr %i.jb, align 8, !tbaa !229
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store i8 0, ptr %i.jc, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit336

sqlite3VdbeAddOp2.exit336:                        ; preds = %bb.an, %bb.am, %sqlite3VdbeChangeP5.exit
  %.not304 = icmp eq i32 %.2, 0
  br i1 %.not304, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %sqlite3VdbeAddOp2.exit336
  %i.jd = load i32, ptr %i.g, align 8, !tbaa !187
  %i.je = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 103
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !552
  %.not.i.i.i = icmp eq i8 %i.jg, 0
end_hunk_14
begin_hunk_15_@sqlite3WhereEnd:bb.a
.loopexit.loopexit.i:                             ; preds = %bb.cj
  %i.to = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %.thread, %.loopexit.loopexit.i
  %.1.i = phi i32 [ -32768, %.thread ], [ %i.to, %.loopexit.loopexit.i ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !4320 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tg, i64 88
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !2973 ; 2 uses
  %i.tt = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.tu = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i380 = icmp sgt i32 %i.tu, %i.tt
  br i1 %.not.i380, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %sqlite3SchemaToIndex.exit
  %i.tv = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 102, i32 noundef %i.tq, i32 noundef %i.ts, i32 noundef %.1.i), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit382

bb.cl:                                            ; preds = %sqlite3SchemaToIndex.exit
  %i.tw = add nsw i32 %i.tt, 1
  store i32 %i.tw, ptr %i.g, align 8, !tbaa !187
  %i.tx = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.ty = sext i32 %i.tt to i64
  %i.tz = getelementptr inbounds [24 x i8], ptr %i.tx, i64 %i.ty ; 7 uses
  store i8 102, ptr %i.tz, align 8, !tbaa !565
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 2
  store i16 0, ptr %i.ua, align 2, !tbaa !589
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store i32 %i.tq, ptr %i.ub, align 4, !tbaa !586
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i32 %i.ts, ptr %i.uc, align 8, !tbaa !587
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  store i32 %.1.i, ptr %i.ud, align 4, !tbaa !588
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store ptr null, ptr %i.ue, align 8, !tbaa !229
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 1
  store i8 0, ptr %i.uf, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit382

sqlite3VdbeAddOp3.exit382:                        ; preds = %bb.ck, %bb.cl
  %i.ug = load ptr, ptr %i.b, align 8, !tbaa !978 ; 3 uses
  %i.uh = tail call fastcc ptr @sqlite3KeyInfoOfIndex(ptr noundef nonnull %i.a, ptr noundef nonnull %i.tg) ; 3 uses
  %.not.i383 = icmp eq ptr %i.uh, null
  br i1 %.not.i383, label %sqlite3VdbeSetP4KeyInfo.exit, label %bb.cm

bb.cm:                                            ; preds = %sqlite3VdbeAddOp3.exit382
  %i.ui = load ptr, ptr %i.ug, align 8, !tbaa !148 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 103
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !552
  %.not.i.i384 = icmp eq i8 %i.uk, 0
  br i1 %.not.i.i384, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 792
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !100
  %i.un = icmp eq ptr %i.um, null
  br i1 %i.un, label %bb.co, label %sqlite3VdbeSetP4KeyInfo.exit

bb.co:                                            ; preds = %bb.cn
  tail call fastcc void @sqlite3KeyInfoUnref(ptr noundef nonnull %i.uh)
  br label %sqlite3VdbeSetP4KeyInfo.exit

bb.cp:                                            ; preds = %bb.cm
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ug, i64 136
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !186
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ug, i64 144
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !187
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr [24 x i8], ptr %i.up, i64 %i.us ; 2 uses
  %i.uu = getelementptr i8, ptr %i.ut, i64 -23
  store i8 -8, ptr %i.uu, align 1, !tbaa !568
  %i.uv = getelementptr i8, ptr %i.ut, i64 -8
  store ptr %i.uh, ptr %i.uv, align 8, !tbaa !229
  br label %sqlite3VdbeSetP4KeyInfo.exit

sqlite3VdbeSetP4KeyInfo.exit:                     ; preds = %bb.cp, %bb.co, %bb.cn, %sqlite3VdbeAddOp3.exit382, %bb.ci
  %i.uw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !4320 ; 2 uses
  %i.uy = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.uz = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i.i385 = icmp sgt i32 %i.uz, %i.uy
  br i1 %.not.i.i385, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %sqlite3VdbeSetP4KeyInfo.exit
  %i.va = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 137, i32 noundef %i.ux, i32 noundef 0, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit387

bb.cr:                                            ; preds = %sqlite3VdbeSetP4KeyInfo.exit
  %i.vb = add nsw i32 %i.uy, 1
  store i32 %i.vb, ptr %i.g, align 8, !tbaa !187
  %i.vc = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.vd = sext i32 %i.uy to i64
  %i.ve = getelementptr inbounds [24 x i8], ptr %i.vc, i64 %i.vd ; 5 uses
  store i8 -119, ptr %i.ve, align 8, !tbaa !565
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 2
  store i16 0, ptr %i.vf, align 2, !tbaa !589
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  store i32 %i.ux, ptr %i.vg, align 4, !tbaa !586
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  store i8 0, ptr %i.vi, align 1, !tbaa !568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vh, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp1.exit387

sqlite3VdbeAddOp1.exit387:                        ; preds = %bb.cr, %bb.cq, %bb.ch, %bb.cg
  %i.vj = load i8, ptr %i.bi, align 1, !tbaa !4365
  %i.vk = icmp eq i8 %i.vj, 68
  br i1 %i.vk, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %sqlite3VdbeAddOp1.exit387
  %i.vl = getelementptr inbounds nuw i8, ptr %i.u, i64 76
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !4369 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !4386 ; 2 uses
  %i.vp = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.vq = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i.i388 = icmp sgt i32 %i.vq, %i.vp
  br i1 %.not.i.i388, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vr = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 10, i32 noundef %i.vm, i32 noundef %i.vo, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit390

bb.cu:                                            ; preds = %bb.cs
  %i.vs = add nsw i32 %i.vp, 1
  store i32 %i.vs, ptr %i.g, align 8, !tbaa !187
  %i.vt = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.vu = sext i32 %i.vp to i64
  %i.vv = getelementptr inbounds [24 x i8], ptr %i.vt, i64 %i.vu ; 7 uses
  store i8 10, ptr %i.vv, align 8, !tbaa !565
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  store i16 0, ptr %i.vw, align 2, !tbaa !589
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store i32 %i.vm, ptr %i.vx, align 4, !tbaa !586
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store i32 %i.vo, ptr %i.vy, align 8, !tbaa !587
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 12
  store i32 0, ptr %i.vz, align 4, !tbaa !588
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store ptr null, ptr %i.wa, align 8, !tbaa !229
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  store i8 0, ptr %i.wb, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit390

bb.cv:                                            ; preds = %sqlite3VdbeAddOp1.exit387
  %i.wc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !4386 ; 2 uses
  %i.we = load i32, ptr %i.g, align 8, !tbaa !187 ; 3 uses
  %i.wf = load i32, ptr %i.n, align 4, !tbaa !945
  %.not.i.i391 = icmp sgt i32 %i.wf, %i.we
  br i1 %.not.i.i391, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wg = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 9, i32 noundef 0, i32 noundef %i.wd, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit390

bb.cx:                                            ; preds = %bb.cv
  %i.wh = add nsw i32 %i.we, 1
  store i32 %i.wh, ptr %i.g, align 8, !tbaa !187
  %i.wi = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.wj = sext i32 %i.we to i64
  %i.wk = getelementptr inbounds [24 x i8], ptr %i.wi, i64 %i.wj ; 7 uses
  store i8 9, ptr %i.wk, align 8, !tbaa !565
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i16 0, ptr %i.wl, align 2, !tbaa !589
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  store i32 0, ptr %i.wm, align 4, !tbaa !586
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  store i32 %i.wd, ptr %i.wn, align 8, !tbaa !587
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 12
  store i32 0, ptr %i.wo, align 4, !tbaa !588
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store ptr null, ptr %i.wp, align 8, !tbaa !229
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store i8 0, ptr %i.wq, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit390

sqlite3VdbeAddOp2.exit390:                        ; preds = %bb.cx, %bb.cw, %bb.cu, %bb.ct
  %i.wr = load i32, ptr %i.g, align 8, !tbaa !187
  %i.ws = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 103
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !552
  %.not.i.i.i394 = icmp eq i8 %i.wu, 0
  br i1 %.not.i.i.i394, label %bb.cy, label %sqlite3VdbeJumpHere.exit396

bb.cy:                                            ; preds = %sqlite3VdbeAddOp2.exit390
  %i.wv = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.ww = sext i32 %.0.i.i372 to i64
  %i.wx = getelementptr inbounds [24 x i8], ptr %i.wv, i64 %i.ww
  br label %sqlite3VdbeJumpHere.exit396

sqlite3VdbeJumpHere.exit396:                      ; preds = %sqlite3VdbeAddOp2.exit390, %bb.cy
  %.0.i.i.i395 = phi ptr [ %i.wx, %bb.cy ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAddOp2.exit390 ]
  %i.wy = getelementptr inbounds nuw i8, ptr %.0.i.i.i395, i64 8
  store i32 %i.wr, ptr %i.wy, align 8, !tbaa !587
  br label %bb.cz

bb.cz:                                            ; preds = %sqlite3VdbeJumpHere.exit396, %sqlite3VdbeAddOp2.exit370
  %i.wz = icmp sgt i64 %indvars.iv462, 1
  br i1 %i.wz, label %bb.b, label %._crit_edge440, !llvm.loop !4387

._crit_edge440:                                   ; preds = %bb.cz
  %.pre468 = load i8, ptr %i.h, align 8, !tbaa !229
  %i.xa = icmp eq i8 %.pre468, 0
  br i1 %i.xa, label %._crit_edge451, label %.lr.ph450

.lr.ph450:                                        ; preds = %._crit_edge440
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.xc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.f, i64 103
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.xg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.xh = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.xi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph450, %translateColumnToCopy.exit
  %.1448 = phi i32 [ 0, %.lr.ph450 ], [ %i.acp, %translateColumnToCopy.exit ] ; 2 uses
  %.0263447 = phi ptr [ %i.xb, %.lr.ph450 ], [ %i.acq, %translateColumnToCopy.exit ] ; 13 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0263447, i64 72
  %i.xl = load i8, ptr %i.xk, align 8, !tbaa !4317
  %i.xm = zext i8 %i.xl to i64
  %i.xn = getelementptr inbounds nuw [72 x i8], ptr %i.xc, i64 %i.xm ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !3018 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.0263447, i64 104
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !4307 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.0263447, i64 64
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !3732
  %.not = icmp eq ptr %i.xt, null
  br i1 %.not, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call fastcc void @sqlite3WhereRightJoinLoop(ptr noundef nonnull %0, i32 noundef %.1448, ptr noundef nonnull %.0263447)
  br label %translateColumnToCopy.exit

bb.dc:                                            ; preds = %bb.da
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xn, i64 25
  %i.xv = load i16, ptr %i.xu, align 1
  %i.xw = and i16 %i.xv, 64
  %.not285 = icmp eq i16 %i.xw, 0
  br i1 %.not285, label %bb.dj, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xx = getelementptr inbounds nuw i8, ptr %.0263447, i64 36
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !4332 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.0263447, i64 4
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !4309
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xn, i64 64
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !229
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !3709
  %i.yf = load ptr, ptr %i.b, align 8, !tbaa !978 ; 3 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !148
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 103
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !552
  %.not.i.i397 = icmp eq i8 %i.yi, 0
  br i1 %.not.i.i397, label %bb.de, label %sqlite3VdbeGetOp.exit.i

bb.de:                                            ; preds = %bb.dd
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 136
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !186
  %i.yl = sext i32 %i.xy to i64
  %i.ym = getelementptr inbounds [24 x i8], ptr %i.yk, i64 %i.yl
  br label %sqlite3VdbeGetOp.exit.i

sqlite3VdbeGetOp.exit.i:                          ; preds = %bb.de, %bb.dd
  %.0.i.i398 = phi ptr [ %i.ym, %bb.de ], [ @sqlite3VdbeGetOp.dummy, %bb.dd ]
  %i.yn = getelementptr i8, ptr %i.yf, i64 144
  %.val.i = load i32, ptr %i.yn, align 8, !tbaa !187 ; 2 uses
  %i.yo = load ptr, ptr %i.a, align 8, !tbaa !653
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 103
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !552
  %.not.i399 = icmp eq i8 %i.yq, 0
  %i.yr = icmp slt i32 %i.xy, %.val.i
  %or.cond.i = select i1 %.not.i399, i1 %i.yr, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %translateColumnToCopy.exit

.lr.ph.i:                                         ; preds = %sqlite3VdbeGetOp.exit.i, %bb.di
  %.027.i = phi i32 [ %i.zb, %bb.di ], [ %i.xy, %sqlite3VdbeGetOp.exit.i ]
  %.02326.i = phi ptr [ %i.zc, %bb.di ], [ %.0.i.i398, %sqlite3VdbeGetOp.exit.i ] ; 8 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.02326.i, i64 4 ; 3 uses
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !586
  %.not25.i = icmp eq i32 %i.yt, %i.ya
  br i1 %.not25.i, label %bb.df, label %bb.di

bb.df:                                            ; preds = %.lr.ph.i
  %i.yu = load i8, ptr %.02326.i, align 8, !tbaa !565
  switch i8 %i.yu, label %bb.di [
    i8 95, label %bb.dg
    i8 -120, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  store i8 81, ptr %.02326.i, align 8, !tbaa !565
  %i.yv = getelementptr inbounds nuw i8, ptr %.02326.i, i64 8 ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !587
  %i.yx = add nsw i32 %i.yw, %i.ye
  store i32 %i.yx, ptr %i.ys, align 4, !tbaa !586
  %i.yy = getelementptr inbounds nuw i8, ptr %.02326.i, i64 12 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !588
  store i32 %i.yz, ptr %i.yv, align 8, !tbaa !587
  store i32 0, ptr %i.yy, align 4, !tbaa !588
  %i.za = getelementptr inbounds nuw i8, ptr %.02326.i, i64 2
  store i16 2, ptr %i.za, align 2, !tbaa !589
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  store i8 127, ptr %.02326.i, align 8, !tbaa !565
  store i32 0, ptr %i.ys, align 4, !tbaa !586
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %.lr.ph.i
  %i.zb = add nsw i32 %.027.i, 1                  ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.02326.i, i64 24
  %exitcond.not.i = icmp eq i32 %i.zb, %.val.i
  br i1 %exitcond.not.i, label %translateColumnToCopy.exit, label %.lr.ph.i, !llvm.loop !4388

bb.dj:                                            ; preds = %bb.dc
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xr, i64 48 ; 3 uses
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !4274 ; 2 uses
  %i.zf = and i32 %i.ze, 576
  %.not286 = icmp eq i32 %i.zf, 0
  br i1 %.not286, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xr, i64 32
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %i.zh = and i32 %i.ze, 8192
  %.not287 = icmp eq i32 %i.zh, 0
  br i1 %.not287, label %translateColumnToCopy.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.zi = getelementptr inbounds nuw i8, ptr %.0263447, i64 88
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dk
  %.0264.in = phi ptr [ %i.zg, %bb.dk ], [ %i.zi, %bb.dm ]
  %.0264 = load ptr, ptr %.0264.in, align 8, !tbaa !229 ; 5 uses
  %.not288 = icmp eq ptr %.0264, null
  br i1 %.not288, label %translateColumnToCopy.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zj = load i8, ptr %i.xd, align 1, !tbaa !552
  %.not289 = icmp eq i8 %i.zj, 0
  br i1 %.not289, label %bb.dp, label %translateColumnToCopy.exit

bb.dp:                                            ; preds = %bb.do
  %i.zk = load i8, ptr %i.xe, align 2, !tbaa !229
  %i.zl = icmp eq i8 %i.zk, 0
  br i1 %i.zl, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.zm = getelementptr inbounds nuw i8, ptr %.0264, i64 24
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !1100
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 48
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !790
  %i.zq = and i32 %i.zp, 128
  %i.zr = icmp eq i32 %i.zq, 0
  br i1 %i.zr, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.zs = load i32, ptr %i.xf, align 4, !tbaa !24
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dp, %bb.dq, %bb.dr
  %.0268 = phi i32 [ %i.zs, %bb.dr ], [ %.val320, %bb.dq ], [ %.val320, %bb.dp ]
  %i.zt = getelementptr inbounds nuw i8, ptr %.0264, i64 99
  %i.zu = load i16, ptr %i.zt, align 1
  %i.zv = and i16 %i.zu, 2048
  %.not290 = icmp eq i16 %i.zv, 0
  br i1 %.not290, label %.loopexit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.0262442 = load ptr, ptr %i.xg, align 8, !tbaa !3987 ; 2 uses
  %.not291443 = icmp eq ptr %.0262442, null
  br i1 %.not291443, label %.loopexit, label %.lr.ph446

.lr.ph446:                                        ; preds = %bb.dt
  %i.zw = getelementptr inbounds nuw i8, ptr %.0263447, i64 8
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !4320
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph446, %bb.dw
  %.0262444 = phi ptr [ %.0262442, %.lr.ph446 ], [ %.0262, %bb.dw ] ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.0262444, i64 12 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !3993
  %i.aaa = icmp eq i32 %i.zz, %i.zx
  br i1 %i.aaa, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aab = getelementptr inbounds nuw i8, ptr %.0262444, i64 8
  store i32 -1, ptr %i.aab, align 8, !tbaa !3988
  store i32 -1, ptr %i.zy, align 4, !tbaa !3993
  br label %bb.dw
end_hunk_15
begin_hunk_16_@whereLoopAddVirtual:bb.a

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %.399 = phi i32 [ %.197151, %bb.bn ], [ 1, %bb.bp ], [ %.197151, %bb.bo ]
  %.393 = phi i32 [ %.191152, %bb.bn ], [ %spec.select110, %bb.bp ], [ %.191152, %bb.bo ]
  %.3 = phi i32 [ 0, %bb.bn ], [ %i.lp, %bb.bp ], [ %i.lp, %bb.bo ] ; 2 uses
  %i.lu = icmp eq i32 %.3, 0
  br i1 %i.lu, label %.preheader, label %.thread134

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.lv = icmp eq i32 %.197151, 0
  br i1 %i.lv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge.thread
  %i.lw = call fastcc i32 @whereLoopAddVirtualOne(ptr noundef %0, i64 noundef %1, i64 noundef %1, i16 noundef zeroext 0, ptr noundef %.0.i.i221.i, i16 noundef zeroext %.0184.lcssa.i, ptr noundef %i.a, ptr noundef null)
  %i.lx = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ly = icmp eq i32 %i.lx, 0
  %spec.select111 = select i1 %i.ly, i32 1, i32 %.191152
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.thread
  %.595 = phi i32 [ %.191152, %._crit_edge.thread ], [ %spec.select111, %bb.br ]
  %.5 = phi i32 [ 0, %._crit_edge.thread ], [ %i.lw, %bb.br ] ; 2 uses
  %i.lz = icmp eq i32 %.5, 0
  %i.ma = icmp eq i32 %.595, 0
  %or.cond5 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond5, label %bb.bt, label %.thread134

bb.bt:                                            ; preds = %bb.bs
  %i.mb = call fastcc i32 @whereLoopAddVirtualOne(ptr noundef %0, i64 noundef %1, i64 noundef %1, i16 noundef zeroext 1, ptr noundef %.0.i.i221.i, i16 noundef zeroext %.0184.lcssa.i, ptr noundef %i.a, ptr noundef null)
  br label %.thread134

.thread134:                                       ; preds = %bb.bq, %bb.bl, %bb.bs, %bb.bt, %bb.bj, %bb.bi
  %.7 = phi i32 [ %.084, %bb.bi ], [ 0, %bb.bj ], [ %i.mb, %bb.bt ], [ %.5, %bb.bs ], [ %i.ki, %bb.bl ], [ %.3, %bb.bq ]
  %i.mc = load ptr, ptr %i.d, align 8, !tbaa !653
  call fastcc void @freeIndexInfo(ptr noundef %i.mc, ptr noundef %.0.i.i221.i)
  br label %bb.bu

bb.bu:                                            ; preds = %allocateIndexInfo.exit.thread, %.thread134, %whereLoopResize.exit
  %.0 = phi i32 [ %.7, %.thread134 ], [ 7, %whereLoopResize.exit ], [ 7, %allocateIndexInfo.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddBtree(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Walker, align 8             ; 8 uses
  %3 = alloca %struct.IdxCover, align 8           ; 6 uses
  %4 = alloca %struct.Index, align 8              ; 14 uses
  %i.a = alloca [2 x i16], align 2                ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i16 -1, ptr %i.b, align 2, !tbaa !332
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4268 ; 28 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4264   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4156
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !4311
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.l ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3018 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4267 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 25 ; 4 uses
  %i.t = load i16, ptr %i.s, align 1              ; 3 uses
  %i.u = and i16 %i.t, 2
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !229
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !790
  %i.z = and i32 %i.y, 128
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1099
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 94
  store i16 1, ptr %i.ad, align 2, !tbaa !938
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i16 1, ptr %i.ae, align 8, !tbaa !877
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.af, align 8, !tbaa !880
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !2989
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 98
  store i8 5, ptr %i.ah, align 2, !tbaa !2992
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.o, ptr %i.ai, align 8, !tbaa !1100
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 92
  store i16 3, ptr %i.aj, align 4, !tbaa !3245
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 99
  store i16 3, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.am = load i16, ptr %i.al, align 2, !tbaa !2990
  store i16 %i.am, ptr %i.a, align 2, !tbaa !332
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.an, align 2, !tbaa !332
  %i.ao = and i16 %i.t, 1
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1099
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2797
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0194 = phi ptr [ %i.w, %bb.b ], [ %i.ac, %bb.d ], [ %4, %bb.f ], [ %4, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.au = load i16, ptr %i.at, align 2, !tbaa !2990 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4601
  %.not211 = icmp eq ptr %i.aw, null
  br i1 %.not211, label %bb.h, label %.loopexit278

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !332
  %i.az = and i16 %i.ay, 4128
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.i, label %.loopexit278

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !822
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !653
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !547
  %i.bf = and i64 %i.be, 32768
  %.not212 = icmp ne i64 %i.bf, 0
  %i.bg = and i16 %i.t, 147
  %or.cond246 = icmp eq i16 %i.bg, 0
  %or.cond344 = and i1 %.not212, %or.cond246
  br i1 %or.cond344, label %bb.j, label %.loopexit278

bb.j:                                             ; preds = %bb.i
  %i.bh = load i8, ptr %i.r, align 8, !tbaa !3499
  %i.bi = and i8 %i.bh, 16
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %.loopexit278

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1156 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1152 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %.idx = mul nsw i64 %i.bo, 56
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %.idx
  %i.bq = call fastcc signext i16 @estLog(i16 noundef signext %i.au) ; 10 uses
  %i.br = icmp sgt i32 %i.bn, 0
  br i1 %i.br, label %.lr.ph, label %.loopexit278

.lr.ph:                                           ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bz = add i16 %i.bq, %i.au                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 63
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.cd = add i16 %i.bz, 28
  %i.ce = add i16 %i.bz, -25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.not.i248 = icmp slt i16 %i.bq, 43
  %i.cg = icmp ult i16 %i.bq, 93
  %i.ch = icmp ugt i16 %i.bq, 74
  %i.ci = zext nneg i16 %i.bq to i64
  %i.cj = getelementptr i8, ptr @sqlite3LogEstAdd.x, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -43
  %i.cl = icmp slt i16 %i.bq, -6
  %i.cm = icmp slt i16 %i.bq, 12
  %narrow = sub nsw i16 43, %i.bq
  %i.cn = sext i16 %narrow to i64
  %i.co = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cr = zext i1 %i.cg to i16
  %.mux302 = add nuw nsw i16 %i.bq, %i.cr
  %.mux = select i1 %i.cl, i16 43, i16 44
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %termCanDriveIndex.exit.thread
  %.0204283 = phi ptr [ %i.bl, %.lr.ph ], [ %i.ep, %termCanDriveIndex.exit.thread ] ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0204283, i64 40 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !4297
  %i.cu = load i64, ptr %i.bs, align 8, !tbaa !4308
  %i.cv = and i64 %i.cu, %i.ct
  %.not217 = icmp eq i64 %i.cv, 0
  br i1 %.not217, label %bb.m, label %termCanDriveIndex.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %.0204283, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4450 ; 2 uses
  %i.cy = load i32, ptr %i.bt, align 4, !tbaa !3556
  %.not.i = icmp eq i32 %i.cx, %i.cy
  br i1 %.not.i, label %bb.n, label %termCanDriveIndex.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %.0204283, i64 20
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !4494
  %i.db = and i16 %i.da, 130
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %termCanDriveIndex.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = load i8, ptr %i.r, align 8, !tbaa !3499 ; 2 uses
  %i.de = and i8 %i.dd, 88
  %.not17.i = icmp eq i8 %i.de, 0
  br i1 %.not17.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i = load ptr, ptr %.0204283, align 8, !tbaa !1157 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !369 ; 2 uses
  %i.dh = and i32 %i.dg, 3
  %.not.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i, label %termCanDriveIndex.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !229
  %.not5.i.i = icmp eq i32 %i.dj, %i.cx
  br i1 %.not5.i.i, label %constraintCompatibleWithOuterJoin.exit.i, label %termCanDriveIndex.exit.thread

constraintCompatibleWithOuterJoin.exit.i:         ; preds = %bb.q
  %i.dk = and i8 %i.dd, 24
  %.not6.i.i = icmp ne i8 %i.dk, 0
  %i.dl = and i32 %i.dg, 2
  %.not7.i.i = icmp ne i32 %i.dl, 0
  %or.cond.i.not.i = and i1 %.not6.i.i, %.not7.i.i
  br i1 %or.cond.i.not.i, label %termCanDriveIndex.exit.thread, label %bb.r

bb.r:                                             ; preds = %constraintCompatibleWithOuterJoin.exit.i, %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %.0204283, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !229 ; 3 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %termCanDriveIndex.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !3018
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !884
  %i.ds = zext nneg i32 %i.dn to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 9
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !907
  %i.dw = load ptr, ptr %.0204283, align 8, !tbaa !1157
  %i.dx = call fastcc i32 @sqlite3IndexAffinityOk(ptr noundef %i.dw, i8 noundef signext %i.dv)
  %.not20.i = icmp eq i32 %i.dx, 0
  br i1 %.not20.i, label %termCanDriveIndex.exit.thread, label %termCanDriveIndex.exit

termCanDriveIndex.exit:                           ; preds = %bb.s
  %i.dy = load ptr, ptr %i.n, align 8, !tbaa !3018
  %i.dz = call fastcc i32 @columnIsGoodIndexCandidate(ptr noundef %i.dy, i32 noundef %i.dn)
  %.not218 = icmp eq i32 %i.dz, 0
  br i1 %.not218, label %termCanDriveIndex.exit.thread, label %bb.t

bb.t:                                             ; preds = %termCanDriveIndex.exit
  store i16 1, ptr %i.bu, align 8, !tbaa !229
  store i16 0, ptr %i.bv, align 2, !tbaa !4288
  store ptr null, ptr %i.bw, align 8, !tbaa !229
  store i16 1, ptr %i.bx, align 4, !tbaa !4272
  %i.ea = load ptr, ptr %i.by, align 8, !tbaa !4269
  store ptr %.0204283, ptr %i.ea, align 8, !tbaa !4299
  %i.eb = load i8, ptr %i.cb, align 1, !tbaa !924
  %i.ec = icmp eq i8 %i.eb, 2
  br i1 %i.ec, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = load i32, ptr %i.cc, align 8, !tbaa !790
  %i.ee = and i32 %i.ed, 16384
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %storemerge = phi i16 [ %i.ce, %bb.v ], [ %i.cd, %bb.u ]
  %spec.select = call i16 @llvm.smax.i16(i16 %storemerge, i16 0)
  store i16 %spec.select, ptr %i.ca, align 2, !tbaa !4473
  store i16 43, ptr %i.cf, align 2, !tbaa !4306
  br i1 %.not.i248, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ch, label %sqlite3LogEstAdd.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = load i8, ptr %i.ck, align 1, !tbaa !229
  %i.eh = zext i8 %i.eg to i16
  %i.ei = add nuw nsw i16 %i.bq, %i.eh
  br label %sqlite3LogEstAdd.exit

bb.z:                                             ; preds = %bb.w
  br i1 %i.cm, label %sqlite3LogEstAdd.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i8, ptr %i.co, align 1, !tbaa !229
  %i.ek = zext i8 %i.ej to i16
  %i.el = add nuw nsw i16 %i.ek, 43
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.x, %bb.z, %bb.y, %bb.aa
  %.0.i249 = phi i16 [ %i.el, %bb.aa ], [ %.mux, %bb.z ], [ %i.ei, %bb.y ], [ %.mux302, %bb.x ]
  store i16 %.0.i249, ptr %i.cp, align 4, !tbaa !4305
  store i32 16384, ptr %i.cq, align 8, !tbaa !4274
  %i.em = load i64, ptr %i.cs, align 8, !tbaa !4297
  %i.en = or i64 %i.em, %1
  store i64 %i.en, ptr %i.e, align 8, !tbaa !4461
  %i.eo = call fastcc i32 @whereLoopInsert(ptr noundef %0, ptr noundef nonnull %i.e)
  br label %termCanDriveIndex.exit.thread

termCanDriveIndex.exit.thread:                    ; preds = %bb.p, %bb.s, %bb.r, %bb.q, %constraintCompatibleWithOuterJoin.exit.i, %bb.m, %bb.n, %termCanDriveIndex.exit, %sqlite3LogEstAdd.exit, %bb.l
  %.1197 = phi i32 [ 0, %bb.l ], [ %i.eo, %sqlite3LogEstAdd.exit ], [ 0, %termCanDriveIndex.exit ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %constraintCompatibleWithOuterJoin.exit.i ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0204283, i64 56 ; 2 uses
  %i.eq = icmp eq i32 %.1197, 0
  %i.er = icmp ult ptr %i.ep, %i.bp
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %bb.l, label %.loopexit278, !llvm.loop !4602

.loopexit278:                                     ; preds = %termCanDriveIndex.exit.thread, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.2 = phi i32 [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.1197, %termCanDriveIndex.exit.thread ] ; 2 uses
  %i.et = icmp eq i32 %.2, 0
  %i.eu = icmp ne ptr %.0194, null
  %i.ev = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %i.ev, label %.lr.ph297, label %.loopexit

.lr.ph297:                                        ; preds = %.loopexit278
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 17 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  %i.fi = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 60 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 124 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 27 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph297, %bb.cu
  %.1195291 = phi ptr [ %.0194, %.lr.ph297 ], [ %i.od, %bb.cu ] ; 16 uses
  %.0198289 = phi i32 [ 1, %.lr.ph297 ], [ %i.oe, %bb.cu ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1195291, i64 72 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !2799 ; 2 uses
  %.not220 = icmp eq ptr %i.fv, null
  br i1 %.not220, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = load i32, ptr %i.ew, align 4, !tbaa !3556
  %i.fx = load i8, ptr %i.r, align 8, !tbaa !3499
  %i.fy = call fastcc i32 @whereUsablePartialIndex(i32 noundef %i.fw, i8 noundef zeroext %i.fx, ptr noundef %i.q, ptr noundef nonnull %i.fv)
  %.not221 = icmp eq i32 %i.fy, 0
  br i1 %.not221, label %bb.ct, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %.1195291, i64 99 ; 5 uses
  %i.ga = load i16, ptr %i.fz, align 1
  %i.gb = and i16 %i.ga, 256
end_hunk_16
begin_hunk_17_@fts3SegmentMerge:bb.a
bb.cq:                                            ; preds = %bb.cp
  %i.qq = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i11.i, label %sqlite3_mutex_enter.exit.i12.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.qr(ptr noundef nonnull %i.qq) #59, !inline_history !5959
  br label %sqlite3_mutex_enter.exit.i12.i

sqlite3_mutex_enter.exit.i12.i:                   ; preds = %bb.cr, %bb.cq
  %i.qs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.qt = call i32 %i.qs(ptr noundef nonnull %.093179) #59, !inline_history !5960
  %i.qu = sext i32 %i.qt to i64
  %i.qv = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.qw = sub nsw i64 %i.qv, %i.qu
  store i64 %i.qw, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.qx = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.qy = add nsw i64 %i.qx, -1
  store i64 %i.qy, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.qz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.qz(ptr noundef nonnull %.093179) #59, !inline_history !5961
  %i.ra = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i13.i = icmp eq ptr %i.ra, null
  br i1 %.not.i4.i13.i, label %fts3SegWriterFree.exit, label %bb.cs

bb.cs:                                            ; preds = %sqlite3_mutex_enter.exit.i12.i
  %i.rb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.rb(ptr noundef nonnull %i.ra) #59, !inline_history !5962
  br label %fts3SegWriterFree.exit

bb.ct:                                            ; preds = %bb.cp
  %i.rc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.rc(ptr noundef nonnull %.093179) #59, !inline_history !5961
  br label %fts3SegWriterFree.exit

fts3SegWriterFree.exit:                           ; preds = %.thread115, %.thread127, %fts3SegmentMaxLevel.exit.thread, %fts3SegmentMaxLevel.exit, %bb.x, %bb.bt, %bb.p, %bb.a, %.thread138, %sqlite3_mutex_enter.exit.i12.i, %bb.cs, %bb.ct
  %.4149 = phi i32 [ %.4157, %bb.ct ], [ %.4, %.thread138 ], [ %.4157, %sqlite3_mutex_enter.exit.i12.i ], [ %.4157, %bb.cs ], [ %.116.i.ph, %.thread127 ], [ %i.k, %fts3SegmentMaxLevel.exit.thread ], [ 101, %bb.p ], [ %i.cq, %bb.x ], [ 0, %bb.bt ], [ %i.ay, %fts3SegmentMaxLevel.exit ], [ %i.e, %bb.a ], [ %i.cw, %.thread115 ]
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret i32 %.4149
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3PromoteSegments(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.d = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 37, ptr noundef %i.a, ptr noundef null) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 %1, 1024
  %i.g = shl nsw i64 %i.f, 10
  %i.h = or disjoint i64 %i.g, 1023               ; 2 uses
  %i.i = mul nsw i64 %2, 3
  %i.j = sdiv i64 %i.i, 2
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !513  ; 20 uses
  %i.l = add nsw i64 %1, 1                        ; 2 uses
  %i.m = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 0)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %sqlite3_bind_int64.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !164
  %i.s = and i16 %i.r, -28672
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.p, i64 noundef %i.l)
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.e:                                             ; preds = %bb.c
  store i64 %i.l, ptr %i.p, align 8, !tbaa !229
  store i16 4, ptr %i.q, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.e, %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.w(ptr noundef nonnull %i.v) #59, !inline_history !857
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.b, %sqlite3VdbeMemSetInt64.exit.i, %bb.f
  %i.x = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 1)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %sqlite3_bind_int64.exit34

bb.g:                                             ; preds = %sqlite3_bind_int64.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 76 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !164
  %i.ae = and i16 %i.ad, -28672
  %.not.i.i31 = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ab, i64 noundef %i.h)
  br label %sqlite3VdbeMemSetInt64.exit.i32

bb.i:                                             ; preds = %bb.g
  store i64 %i.h, ptr %i.ab, align 8, !tbaa !229
  store i16 4, ptr %i.ac, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i32

sqlite3VdbeMemSetInt64.exit.i32:                  ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !148
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i33 = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i33, label %sqlite3_bind_int64.exit34, label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i32
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.ai(ptr noundef nonnull %i.ah) #59, !inline_history !857
  br label %sqlite3_bind_int64.exit34

sqlite3_bind_int64.exit34:                        ; preds = %sqlite3_bind_int64.exit, %sqlite3VdbeMemSetInt64.exit.i32, %bb.j
  %i.aj = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.ak = icmp eq i32 %i.aj, 100
  br i1 %i.ak, label %.lr.ph, label %fts3ReadEndBlockField.exit._crit_edge.thread

bb.k:                                             ; preds = %fts3ReadEndBlockField.exit
  %i.al = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.am = icmp eq i32 %i.al, 100
  br i1 %i.am, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %sqlite3_bind_int64.exit34, %bb.k
  %i.an = tail call ptr @sqlite3_column_text(ptr noundef %i.k, i32 noundef 2) ; 6 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !229
  %i.ap = add i8 %i.ao, -48
  %or.cond40.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond40.i, label %.lr.ph.i, label %.critedge.i.preheader

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !229
  %i.as = add i8 %i.ar, -48
  %or.cond.i = icmp ult i8 %i.as, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.preheader, !llvm.loop !5963

.critedge.i.preheader:                            ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv52.i.ph = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.l
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %bb.l ], [ %indvars.iv52.i.ph, %.critedge.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv52.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !229 ; 2 uses
  switch i8 %i.au, label %.loopexit.i [
    i8 32, label %bb.l
    i8 45, label %bb.m
  ]

bb.l:                                             ; preds = %.critedge.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  br label %.critedge.i, !llvm.loop !5964

bb.m:                                             ; preds = %.critedge.i
  %i.av = shl i64 %indvars.iv52.i, 32
  %sext.i = add i64 %i.av, 4294967296
  %.phi.trans.insert.i = ashr exact i64 %sext.i, 32 ; 2 uses
  %.phi.trans.insert57.i = getelementptr inbounds i8, ptr %i.an, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert57.i, align 1, !tbaa !229
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge.i, %bb.m
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %bb.m ], [ %indvars.iv52.i, %.critedge.i ]
  %i.aw = phi i8 [ %.pre.i, %bb.m ], [ %i.au, %.critedge.i ] ; 2 uses
  %.031.i = phi i64 [ -1, %bb.m ], [ 1, %.critedge.i ]
  %i.ax = add i8 %i.aw, -48
  %or.cond3844.i = icmp ult i8 %i.ax, 10
  br i1 %or.cond3844.i, label %.lr.ph47.i, label %.thread

.lr.ph47.i:                                       ; preds = %.loopexit.i, %.lr.ph47.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph47.i ], [ %.pre-phi.i, %.loopexit.i ]
  %i.ay = phi i8 [ %i.bb, %.lr.ph47.i ], [ %i.aw, %.loopexit.i ]
  %.146.i = phi i64 [ %i.az, %.lr.ph47.i ], [ 0, %.loopexit.i ]
  %3 = zext nneg i8 %i.ay to i64
  %4 = mul i64 %.146.i, 10
  %5 = add nsw i64 %3, -48
  %i.az = add i64 %5, %4                          ; 2 uses
  %indvars.iv.next56.i = add nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 %indvars.iv.next56.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !229 ; 2 uses
  %i.bc = add i8 %i.bb, -48
  %or.cond38.i = icmp ult i8 %i.bc, 10
  br i1 %or.cond38.i, label %.lr.ph47.i, label %fts3ReadEndBlockField.exit, !llvm.loop !5965

.thread:                                          ; preds = %.loopexit.i, %.lr.ph
  %i.bd = tail call i32 @sqlite3_reset(ptr noundef %i.k)
  br label %bb.aq

fts3ReadEndBlockField.exit:                       ; preds = %.lr.ph47.i
  %i.be = mul nsw i64 %i.az, %.031.i              ; 2 uses
  %i.bf = icmp slt i64 %i.be, 1
  %i.bg = icmp sgt i64 %i.be, %i.j
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond, label %fts3ReadEndBlockField.exit._crit_edge.thread, label %bb.k

fts3ReadEndBlockField.exit._crit_edge.thread:     ; preds = %fts3ReadEndBlockField.exit, %sqlite3_bind_int64.exit34
  %i.bh = tail call i32 @sqlite3_reset(ptr noundef %i.k)
  br label %bb.aq

bb.n:                                             ; preds = %bb.k
  %i.bi = tail call i32 @sqlite3_reset(ptr noundef %i.k) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr null, ptr %i.b, align 8, !tbaa !513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store ptr null, ptr %i.c, align 8, !tbaa !513
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %.thread64

bb.o:                                             ; preds = %bb.n
  %i.bk = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 38, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %.thread64

bb.p:                                             ; preds = %bb.o
  %i.bm = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 39, ptr noundef %i.c, ptr noundef null) ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %.thread64

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 0)
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %sqlite3_bind_int64.exit38

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !173 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !164
  %i.bu = and i16 %i.bt, -28672
  %.not.i.i35 = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i35, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.br, i64 noundef %1)
  br label %sqlite3VdbeMemSetInt64.exit.i36

bb.t:                                             ; preds = %bb.r
  store i64 %1, ptr %i.br, align 8, !tbaa !229
  store i16 4, ptr %i.bs, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i36

sqlite3VdbeMemSetInt64.exit.i36:                  ; preds = %bb.t, %bb.s
  %i.bv = load ptr, ptr %i.k, align 8, !tbaa !148
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i37 = icmp eq ptr %i.bx, null
  br i1 %.not.i8.i37, label %sqlite3_bind_int64.exit38, label %bb.u

bb.u:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i36
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.by(ptr noundef nonnull %i.bx) #59, !inline_history !857
  br label %sqlite3_bind_int64.exit38

sqlite3_bind_int64.exit38:                        ; preds = %bb.q, %sqlite3VdbeMemSetInt64.exit.i36, %bb.u
  %i.bz = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %sqlite3_bind_int.exit46, %sqlite3_bind_int64.exit38
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3_bind_int.exit46 ], [ 0, %sqlite3_bind_int64.exit38 ] ; 3 uses
  %i.cb = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.cc = icmp eq i32 %i.cb, 100
  br i1 %i.cc, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cd = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.bz, i32 noundef 0)
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %sqlite3_bind_int.exit

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !173 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20 ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !164
  %i.ci = and i16 %i.ch, -28672
  %.not.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cf, i64 noundef %indvars.iv)
  br label %sqlite3VdbeMemSetInt64.exit.i.i

bb.z:                                             ; preds = %bb.x
  store i64 %indvars.iv, ptr %i.cf, align 8, !tbaa !229
  store i16 4, ptr %i.cg, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i.i

sqlite3VdbeMemSetInt64.exit.i.i:                  ; preds = %bb.z, %bb.y
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !148
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i8.i.i, label %sqlite3_bind_int.exit, label %bb.aa

bb.aa:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.cm(ptr noundef nonnull %i.cl) #59, !inline_history !5828
  br label %sqlite3_bind_int.exit

sqlite3_bind_int.exit:                            ; preds = %bb.w, %sqlite3VdbeMemSetInt64.exit.i.i, %bb.aa
  %i.cn = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 0)
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.bz, i32 noundef 1)
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ab, label %sqlite3_bind_int.exit42

bb.ab:                                            ; preds = %sqlite3_bind_int.exit
  %i.cr = load ptr, ptr %i.ca, align 8, !tbaa !173 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 76 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !164
  %i.cv = and i16 %i.cu, -28672
  %.not.i.i.i39 = icmp eq i16 %i.cv, 0
  br i1 %.not.i.i.i39, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cs, i64 noundef %i.co)
  br label %sqlite3VdbeMemSetInt64.exit.i.i40

bb.ad:                                            ; preds = %bb.ab
  store i64 %i.co, ptr %i.cs, align 8, !tbaa !229
  store i16 4, ptr %i.ct, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i.i40

sqlite3VdbeMemSetInt64.exit.i.i40:                ; preds = %bb.ad, %bb.ac
  %i.cw = load ptr, ptr %i.bz, align 8, !tbaa !148
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i.i41 = icmp eq ptr %i.cy, null
  br i1 %.not.i8.i.i41, label %sqlite3_bind_int.exit42, label %bb.ae

bb.ae:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i40
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.cz(ptr noundef nonnull %i.cy) #59, !inline_history !5828
  br label %sqlite3_bind_int.exit42

sqlite3_bind_int.exit42:                          ; preds = %sqlite3_bind_int.exit, %sqlite3VdbeMemSetInt64.exit.i.i40, %bb.ae
  %i.da = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 1)
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.bz, i32 noundef 2)
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.af, label %sqlite3_bind_int.exit46

bb.af:                                            ; preds = %sqlite3_bind_int.exit42
  %i.de = load ptr, ptr %i.ca, align 8, !tbaa !173 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 112 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 132 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !164
  %i.di = and i16 %i.dh, -28672
  %.not.i.i.i43 = icmp eq i16 %i.di, 0
  br i1 %.not.i.i.i43, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.df, i64 noundef %i.db)
  br label %sqlite3VdbeMemSetInt64.exit.i.i44

bb.ah:                                            ; preds = %bb.af
  store i64 %i.db, ptr %i.df, align 8, !tbaa !229
  store i16 4, ptr %i.dg, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i.i44

sqlite3VdbeMemSetInt64.exit.i.i44:                ; preds = %bb.ah, %bb.ag
  %i.dj = load ptr, ptr %i.bz, align 8, !tbaa !148
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i.i45 = icmp eq ptr %i.dl, null
  br i1 %.not.i8.i.i45, label %sqlite3_bind_int.exit46, label %bb.ai

bb.ai:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i44
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.dm(ptr noundef nonnull %i.dl) #59, !inline_history !5828
  br label %sqlite3_bind_int.exit46

sqlite3_bind_int.exit46:                          ; preds = %sqlite3_bind_int.exit42, %sqlite3VdbeMemSetInt64.exit.i.i44, %bb.ai
  %i.dn = tail call i32 @sqlite3_step(ptr noundef %i.bz) ; 0 uses
  %i.do = tail call i32 @sqlite3_reset(ptr noundef %i.bz) ; 2 uses
  %.not30 = icmp eq i32 %i.do, 0
end_hunk_17
begin_hunk_18_@sqlite3Fts3Incrmerge:bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store i64 %i.kw, ptr %i.lk, align 8, !tbaa !5387
  %.not36.i.i = icmp eq i32 %.0.i22.i, 0
  br i1 %.not36.i.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 136 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !5363
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 5
  store i8 1, ptr %i.ln, align 1, !tbaa !5362
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  store i32 %i.ky, ptr %i.lo, align 8, !tbaa !5388
  %.not37.i.i = icmp eq i32 %i.ky, 0
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lp = sext i32 %i.ky to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ll, ptr readonly align 1 %i.kx, i64 %i.lp, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bt, %bb.bs
  %.pre-phi.i.i = phi i64 [ %i.lp, %bb.bt ], [ 0, %bb.bs ]
  %i.lq = getelementptr inbounds i8, ptr %i.ll, i64 %.pre-phi.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.lq, i8 0, i64 20, i1 false)
  br label %sqlite3Fts3SegReaderNew.exit.i

bb.bu:                                            ; preds = %bb.br
  %i.lr = add nsw i64 %i.ku, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !5389
  br label %sqlite3Fts3SegReaderNew.exit.i

sqlite3Fts3SegReaderNew.exit.i:                   ; preds = %bb.bu, %._crit_edge.i.i
  store ptr %i.lg, ptr %i.la, align 8, !tbaa !5355
  %i.lt = load i32, ptr %i.bc, align 8, !tbaa !5353
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.bc, align 8, !tbaa !5353
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i353, 1 ; 2 uses
  %i.lv = call i32 @sqlite3_step(ptr noundef %i.kh), !inline_history !6018
  %i.lw = icmp ne i32 %i.lv, 100
  %i.lx = icmp samesign uge i64 %indvars.iv.next.i, %i.ka
  %or.cond.not.i = select i1 %i.lw, i1 true, i1 %i.lx
  br i1 %or.cond.not.i, label %thread-pre-split, label %.lr.ph, !llvm.loop !6021

.critedge.i144:                                   ; preds = %bb.bo, %bb.bq, %sqlite3_malloc64.exit.i.i
  %.032.i.ph.i = phi i32 [ 7, %bb.bq ], [ 7, %sqlite3_malloc64.exit.i.i ], [ 267, %bb.bo ]
  %i.ly = load i32, ptr %i.bc, align 8, !tbaa !5353
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bc, align 8, !tbaa !5353
  %i.ma = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !6018 ; 0 uses
  br label %thread-pre-split.thread562

thread-pre-split.thread562:                       ; preds = %sqlite3_malloc64.exit.thread.i, %bb.bi, %sqlite3_malloc64.exit.i, %.critedge.i144
  %.3.i.ph = phi i32 [ %.032.i.ph.i, %.critedge.i144 ], [ 7, %sqlite3_malloc64.exit.i ], [ %i.kf, %bb.bi ], [ 7, %sqlite3_malloc64.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #59
  store i32 %.3.i.ph, ptr %i.n, align 4, !tbaa !24
  br label %.thread276

thread-pre-split:                                 ; preds = %sqlite3Fts3SegReaderNew.exit.i, %sqlite3_bind_int64.exit.i143
  %i.mb = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !6018 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #59
  store i32 %i.mb, ptr %i.n, align 4, !tbaa !24
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.bv, label %.thread276

bb.bv:                                            ; preds = %thread-pre-split
  %i.md = load i32, ptr %i.bc, align 8, !tbaa !5353
  %i.me = icmp eq i32 %i.md, %i.gl
  br i1 %i.me, label %bb.bw, label %.thread276

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.t, ptr %i.bd, align 8, !tbaa !5326
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !5327
  %i.mg = load i32, ptr %i.be, align 8, !tbaa !5328
  %i.mh = call fastcc i32 @fts3SegReaderStart(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.mf, i32 noundef %i.mg), !inline_history !5329 ; 3 uses
  store i32 %i.mh, ptr %i.n, align 4, !tbaa !24
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.bx, label %.thread276

bb.bx:                                            ; preds = %bb.bw
  %i.mj = call fastcc i32 @sqlite3Fts3SegReaderStep(ptr noundef %0, ptr noundef nonnull %i.u) ; 4 uses
  store i32 %i.mj, ptr %i.n, align 4, !tbaa !24
  %.not118 = icmp eq i32 %i.mj, 0
  switch i32 %i.mj, label %bb.iy [
    i32 100, label %bb.by
    i32 0, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.mk = icmp sgt i32 %.0231, 0
  %or.cond6 = select i1 %.197, i1 %i.mk, i1 false
  br i1 %or.cond6, label %bb.bz, label %bb.el

bb.bz:                                            ; preds = %bb.by
  %i.ml = load ptr, ptr %i.bz, align 8, !tbaa !5426 ; 2 uses
  %i.mm = load i32, ptr %i.ca, align 8, !tbaa !5425 ; 3 uses
  %i.mn = add nsw i32 %.0231, -1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  store ptr null, ptr %i.e, align 8, !tbaa !513
  %i.mo = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 32, ptr noundef %i.e, ptr noundef null), !inline_history !6022 ; 2 uses
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.ca, label %fts3IncrmergeLoad.exit

bb.ca:                                            ; preds = %bb.bz
  %i.mq = load ptr, ptr %i.e, align 8, !tbaa !513 ; 18 uses
  %i.mr = add nuw nsw i64 %.395, 1                ; 2 uses
  %i.ms = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 0), !inline_history !6022
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.cb, label %sqlite3_bind_int64.exit.i150

bb.cb:                                            ; preds = %bb.ca
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !173 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 20 ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 4, !tbaa !164
  %i.my = and i16 %i.mx, -28672
  %.not.i.i.i169 = icmp eq i16 %i.my, 0
  br i1 %.not.i.i.i169, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.mv, i64 noundef %i.mr), !inline_history !6022
  br label %sqlite3VdbeMemSetInt64.exit.i.i170

bb.cd:                                            ; preds = %bb.cb
  store i64 %i.mr, ptr %i.mv, align 8, !tbaa !229
  store i16 4, ptr %i.mw, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i.i170

sqlite3VdbeMemSetInt64.exit.i.i170:               ; preds = %bb.cd, %bb.cc
  %i.mz = load ptr, ptr %i.mq, align 8, !tbaa !148
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i.i171 = icmp eq ptr %i.nb, null
  br i1 %.not.i8.i.i171, label %sqlite3_bind_int64.exit.i150, label %bb.ce

bb.ce:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i170
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.nc(ptr noundef nonnull %i.nb) #59, !inline_history !6023
  br label %sqlite3_bind_int64.exit.i150

sqlite3_bind_int64.exit.i150:                     ; preds = %bb.ce, %sqlite3VdbeMemSetInt64.exit.i.i170, %bb.ca
  %i.nd = zext nneg i32 %i.mn to i64              ; 2 uses
  %i.ne = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 1), !inline_history !6022
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.cf, label %sqlite3_bind_int.exit.i151

bb.cf:                                            ; preds = %sqlite3_bind_int64.exit.i150
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !173 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 56 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 76 ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 4, !tbaa !164
  %i.nl = and i16 %i.nk, -28672
  %.not.i.i.i.i166 = icmp eq i16 %i.nl, 0
  br i1 %.not.i.i.i.i166, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ni, i64 noundef %i.nd), !inline_history !6022
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i167

bb.ch:                                            ; preds = %bb.cf
  store i64 %i.nd, ptr %i.ni, align 8, !tbaa !229
  store i16 4, ptr %i.nj, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i167

sqlite3VdbeMemSetInt64.exit.i.i.i167:             ; preds = %bb.ch, %bb.cg
  %i.nm = load ptr, ptr %i.mq, align 8, !tbaa !148
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i.i.i168 = icmp eq ptr %i.no, null
  br i1 %.not.i8.i.i.i168, label %sqlite3_bind_int.exit.i151, label %bb.ci

bb.ci:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i.i167
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.np(ptr noundef nonnull %i.no) #59, !inline_history !6024
  br label %sqlite3_bind_int.exit.i151

sqlite3_bind_int.exit.i151:                       ; preds = %bb.ci, %sqlite3VdbeMemSetInt64.exit.i.i.i167, %sqlite3_bind_int64.exit.i150
  %i.nq = call i32 @sqlite3_step(ptr noundef %i.mq), !inline_history !6022
  %i.nr = icmp eq i32 %i.nq, 100
  br i1 %i.nr, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %sqlite3_bind_int.exit.i151
  %i.ns = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 1), !inline_history !6022 ; 8 uses
  %i.nt = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 2), !inline_history !6022
  %i.nu = call ptr @sqlite3_column_text(ptr noundef %i.mq, i32 noundef 3), !inline_history !6022 ; 6 uses
  %.not.i.i152 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i152, label %fts3ReadEndBlockField.exitthread-pre-split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cj
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !229 ; 2 uses
  %i.nw = add i8 %i.nv, -48
  %or.cond40.i.i = icmp ult i8 %i.nw, 10
  br i1 %or.cond40.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.nx = phi i8 [ %i.oa, %.lr.ph.i.i ], [ %i.nv, %.preheader.i.i ]
  %.042.i.i = phi i64 [ %i.ny, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %6 = zext nneg i8 %i.nx to i64
  %7 = mul i64 %.042.i.i, 10
  %8 = add nsw i64 %6, -48
  %i.ny = add i64 %8, %7                          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv.next.i.i
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !229 ; 2 uses
  %i.ob = add i8 %i.oa, -48
  %or.cond.i.i = icmp ult i8 %i.ob, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !5963

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.032.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ny, %.lr.ph.i.i ]
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.critedge.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %bb.cl ], [ %.032.lcssa.i.i, %.critedge.i.i ] ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv52.i.i
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !229 ; 2 uses
  switch i8 %i.od, label %.loopexit.i.i [
    i8 32, label %bb.cl
    i8 45, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1
  br label %bb.ck, !llvm.loop !5964

bb.cm:                                            ; preds = %bb.ck
  %i.oe = shl i64 %indvars.iv52.i.i, 32
  %sext.i.i = add i64 %i.oe, 4294967296
  %.phi.trans.insert.i.i = ashr exact i64 %sext.i.i, 32 ; 2 uses
  %.phi.trans.insert57.i.i = getelementptr inbounds i8, ptr %i.nu, i64 %.phi.trans.insert.i.i
  %.pre.i.i = load i8, ptr %.phi.trans.insert57.i.i, align 1, !tbaa !229
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ck, %bb.cm
  %.pre-phi.i.i153 = phi i64 [ %.phi.trans.insert.i.i, %bb.cm ], [ %indvars.iv52.i.i, %bb.ck ]
  %i.of = phi i8 [ %.pre.i.i, %bb.cm ], [ %i.od, %bb.ck ] ; 2 uses
  %.031.i.i = phi i64 [ -1, %bb.cm ], [ 1, %bb.ck ]
  %i.og = add i8 %i.of, -48
  %or.cond3844.i.i = icmp ult i8 %i.og, 10
  br i1 %or.cond3844.i.i, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph47.i.i
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph47.i.i ], [ %.pre-phi.i.i153, %.loopexit.i.i ]
  %i.oh = phi i8 [ %i.ok, %.lr.ph47.i.i ], [ %i.of, %.loopexit.i.i ]
  %.146.i.i = phi i64 [ %i.oi, %.lr.ph47.i.i ], [ 0, %.loopexit.i.i ]
  %9 = zext nneg i8 %i.oh to i64
  %10 = mul i64 %.146.i.i, 10
  %11 = add nsw i64 %9, -48
  %i.oi = add i64 %11, %10                        ; 2 uses
  %indvars.iv.next56.i.i = add nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.oj = getelementptr inbounds i8, ptr %i.nu, i64 %indvars.iv.next56.i.i
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !229 ; 2 uses
  %i.ol = add i8 %i.ok, -48
  %or.cond38.i.i = icmp ult i8 %i.ol, 10
  br i1 %or.cond38.i.i, label %.lr.ph47.i.i, label %.critedge2.loopexit.i.i, !llvm.loop !5965

.critedge2.loopexit.i.i:                          ; preds = %.lr.ph47.i.i
  %i.om = mul nsw i64 %i.oi, %.031.i.i
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.loopexit.i.i, %.loopexit.i.i
  %.1.lcssa.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.om, %.critedge2.loopexit.i.i ] ; 2 uses
  store i64 %.1.lcssa.i.i, ptr %i.cb, align 8, !tbaa !19
  br label %fts3ReadEndBlockField.exit.i

fts3ReadEndBlockField.exitthread-pre-split.i:     ; preds = %bb.cj
  %.pr.i = load i64, ptr %i.cb, align 8, !tbaa !6025
  br label %fts3ReadEndBlockField.exit.i

fts3ReadEndBlockField.exit.i:                     ; preds = %fts3ReadEndBlockField.exitthread-pre-split.i, %.critedge2.i.i
  %i.on = phi i64 [ %.pr.i, %fts3ReadEndBlockField.exitthread-pre-split.i ], [ %.1.lcssa.i.i, %.critedge2.i.i ] ; 3 uses
  %.0155.i = phi i64 [ 0, %fts3ReadEndBlockField.exitthread-pre-split.i ], [ %.0.lcssa.i.i, %.critedge2.i.i ] ; 4 uses
  %i.oo = icmp slt i64 %i.on, 0
  br i1 %i.oo, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %fts3ReadEndBlockField.exit.i
  %i.op = sub nsw i64 0, %i.on
  store i64 %i.op, ptr %i.cb, align 8, !tbaa !6025
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %fts3ReadEndBlockField.exit.i
  %i.oq = phi i64 [ 1, %bb.cn ], [ %i.on, %fts3ReadEndBlockField.exit.i ]
  %i.or = icmp eq i64 %i.oq, 0
  %i.os = zext i1 %i.or to i8
  store i8 %i.os, ptr %i.cc, align 8, !tbaa !6027
  %i.ot = call i32 @sqlite3_column_bytes(ptr noundef %i.mq, i32 noundef 4), !inline_history !6022 ; 4 uses
  %i.ou = call ptr @sqlite3_column_blob(ptr noundef %i.mq, i32 noundef 4), !inline_history !6022 ; 3 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.ow = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6022 ; 0 uses
  %.not98.i = icmp eq i32 %i.ot, 0
  %i.ox = select i1 %.not98.i, i32 267, i32 7
  br label %fts3IncrmergeLoad.exit

bb.cq:                                            ; preds = %sqlite3_bind_int.exit.i151
  %i.oy = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6022
  br label %fts3IncrmergeLoad.exit

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store ptr null, ptr %i.d, align 8, !tbaa !513
  %i.oz = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 34, ptr noundef %i.d, ptr noundef null), !inline_history !6028 ; 2 uses
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.cs, label %.thread173.i

.thread173.i:                                     ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %i.pb = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6022 ; 0 uses
  br label %fts3IncrmergeLoad.exit

bb.cs:                                            ; preds = %bb.cr
  %i.pc = load ptr, ptr %i.d, align 8, !tbaa !513 ; 5 uses
  %i.pd = call fastcc i32 @vdbeUnbind(ptr noundef %i.pc, i32 noundef 0), !inline_history !6028
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.ct, label %fts3IsAppendable.exit.i

bb.ct:                                            ; preds = %bb.cs
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 128
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !173 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 20 ; 2 uses
  %i.pi = load i16, ptr %i.ph, align 4, !tbaa !164
  %i.pj = and i16 %i.pi, -28672
  %.not.i.i.i101.i = icmp eq i16 %i.pj, 0
  br i1 %.not.i.i.i101.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.pg, i64 noundef %.0155.i), !inline_history !6028
  br label %sqlite3VdbeMemSetInt64.exit.i.i102.i

bb.cv:                                            ; preds = %bb.ct
  store i64 %.0155.i, ptr %i.pg, align 8, !tbaa !229
  store i16 4, ptr %i.ph, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i.i102.i

sqlite3VdbeMemSetInt64.exit.i.i102.i:             ; preds = %bb.cv, %bb.cu
  %i.pk = load ptr, ptr %i.pc, align 8, !tbaa !148
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i.i103.i = icmp eq ptr %i.pm, null
  br i1 %.not.i8.i.i103.i, label %fts3IsAppendable.exit.i, label %bb.cw

bb.cw:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i102.i
  %i.pn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.pn(ptr noundef nonnull %i.pm) #59, !inline_history !6029
  br label %fts3IsAppendable.exit.i

fts3IsAppendable.exit.i:                          ; preds = %bb.cw, %sqlite3VdbeMemSetInt64.exit.i.i102.i, %bb.cs
  %i.po = call i32 @sqlite3_step(ptr noundef %i.pc), !inline_history !6028
  %i.pp = icmp eq i32 %i.po, 100                  ; 2 uses
  %i.pq = call i32 @sqlite3_reset(ptr noundef %i.pc), !inline_history !6028 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %i.pr = icmp eq i32 %i.pq, 0
  %or.cond.i = select i1 %i.pr, i1 %i.pp, i1 false
  br i1 %or.cond.i, label %bb.cx, label %bb.dl

bb.cx:                                            ; preds = %fts3IsAppendable.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.ps = call fastcc i32 @sqlite3Fts3ReadBlock(ptr noundef %0, i64 noundef %i.nt, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g), !inline_history !6022 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 0
  %.pre208.i = load ptr, ptr %i.f, align 8, !tbaa !253 ; 8 uses
  br i1 %i.pt, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.pu = load i32, ptr %i.g, align 4, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false)
  store ptr %.pre208.i, ptr %3, align 8, !tbaa !6030
  store i32 %i.pu, ptr %i.cd, align 8, !tbaa !6032
  %.not.i104.i = icmp eq ptr %.pre208.i, null
  br i1 %.not.i104.i, label %._crit_edge.i163, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pv = load i8, ptr %.pre208.i, align 1, !tbaa !229
  %.not12.i.i = icmp eq i8 %i.pv, 0
  br i1 %.not12.i.i, label %nodeReaderInit.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cz
  %i.pw = getelementptr inbounds nuw i8, ptr %.pre208.i, i64 1
  %i.px = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.pw, ptr noundef nonnull %i.ce), !inline_history !6033
  %i.py = add nsw i32 %i.px, 1
  br label %nodeReaderInit.exit.i

nodeReaderInit.exit.i:                            ; preds = %.thread.i.i, %bb.cz
  %.sink.i.i = phi i32 [ %i.py, %.thread.i.i ], [ 1, %bb.cz ]
  store i32 %.sink.i.i, ptr %i.cf, align 4, !tbaa !6034
  %i.pz = call fastcc i32 @nodeReaderNext(ptr noundef nonnull %3), !inline_history !6033 ; 2 uses
  %.pre.i162 = load ptr, ptr %3, align 8
  %i.qa = icmp ne ptr %.pre.i162, null
  %i.qb = icmp eq i32 %i.pz, 0
  %i.qc = select i1 %i.qb, i1 %i.qa, i1 false
  br i1 %i.qc, label %.lr.ph.i165, label %._crit_edge.i163thread-pre-split

.lr.ph.i165:                                      ; preds = %nodeReaderInit.exit.i, %.lr.ph.i165
  %i.qd = call fastcc i32 @nodeReaderNext(ptr noundef %3), !inline_history !6022 ; 2 uses
  %i.qe = icmp eq i32 %i.qd, 0
  %i.qf = load ptr, ptr %3, align 8
  %i.qg = icmp ne ptr %i.qf, null
  %i.qh = select i1 %i.qe, i1 %i.qg, i1 false
  br i1 %i.qh, label %.lr.ph.i165, label %._crit_edge.i163thread-pre-split, !llvm.loop !6035

._crit_edge.i163thread-pre-split:                 ; preds = %.lr.ph.i165, %nodeReaderInit.exit.i
  %storemerge.lcssa.i.ph = phi i32 [ %i.pz, %nodeReaderInit.exit.i ], [ %i.qd, %.lr.ph.i165 ]
  %.pr = load ptr, ptr %i.cg, align 8, !tbaa !6036
  br label %._crit_edge.i163

._crit_edge.i163:                                 ; preds = %._crit_edge.i163thread-pre-split, %bb.cy
  %i.qi = phi ptr [ %.pr, %._crit_edge.i163thread-pre-split ], [ null, %bb.cy ] ; 6 uses
  %storemerge.lcssa.i = phi i32 [ %storemerge.lcssa.i.ph, %._crit_edge.i163thread-pre-split ], [ 0, %bb.cy ]
  %i.qj = load i32, ptr %i.ch, align 8, !tbaa !6037 ; 3 uses
  %i.qk = call i32 @llvm.smin.i32(i32 %i.mm, i32 %i.qj) ; 2 uses
  %i.ql = icmp ne i32 %i.qk, 0
  %i.qm = icmp ne ptr %i.ml, null
  %or.cond.i105.i = and i1 %i.qm, %i.ql
  %i.qn = icmp ne ptr %i.qi, null
  %or.cond3.i.i = and i1 %i.qn, %or.cond.i105.i
  br i1 %or.cond3.i.i, label %fts3TermCmp.exit.thread.i, label %fts3TermCmp.exit.i

fts3TermCmp.exit.thread.i:                        ; preds = %._crit_edge.i163
  %i.qo = sext i32 %i.qk to i64
  %i.qp = call i32 @memcmp(ptr noundef nonnull readonly %i.ml, ptr noundef nonnull readonly %i.qi, i64 noundef %i.qo) #60, !inline_history !6022
  %.fr.i.i = freeze i32 %i.qp                     ; 2 uses
  %i.qq = icmp eq i32 %.fr.i.i, 0
  %i.qr = sub nsw i32 %i.mm, %i.qj
  %spec.select.i107.i = select i1 %i.qq, i32 %i.qr, i32 %.fr.i.i
  %.inv243.i = icmp sgt i32 %spec.select.i107.i, 0
  br label %bb.da

fts3TermCmp.exit.i:                               ; preds = %._crit_edge.i163
  %.inv.i = icmp sgt i32 %i.mm, %i.qj             ; 2 uses
  %i.qs = icmp eq ptr %i.qi, null
  br i1 %i.qs, label %nodeReaderRelease.exit.i, label %bb.da

bb.da:                                            ; preds = %fts3TermCmp.exit.i, %fts3TermCmp.exit.thread.i
  %.inv244.i = phi i1 [ %.inv243.i, %fts3TermCmp.exit.thread.i ], [ %.inv.i, %fts3TermCmp.exit.i ] ; 3 uses
  %i.qt = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i.i108.i = icmp eq i32 %i.qt, 0
  br i1 %.not.i.i108.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qu = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i109.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i.i109.i, label %sqlite3_mutex_enter.exit.i.i.i164, label %bb.dc

bb.dc:                                            ; preds = %bb.db
end_hunk_18
