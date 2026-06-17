inline.NumInlined: 96
inline.NumDeleted: 8
begin_hunk_0_@rewriteStreamObject:bb.a
.lr.ph:                                           ; preds = %.preheader, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @streamIteratorGetField(ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ar = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef %i.ap, i64 noundef %i.aq) #17
  %.not104 = icmp eq i64 %i.ar, 0
  br i1 %.not104, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.at = load i64, ptr %i.e, align 8, !tbaa !25
  %i.au = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef %i.as, i64 noundef %i.at) #17
  %.not105 = icmp eq i64 %i.au, 0
  br i1 %.not105, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.l, %.lr.ph
  call void @streamIteratorStop(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.ay

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.av = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.aw = add nsw i64 %i.av, -1
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !25
  %.not103 = icmp eq i64 %i.av, 0
  br i1 %.not103, label %.loopexit119, label %.lr.ph, !llvm.loop !210

bb.n:                                             ; preds = %bb.a
  store i64 0, ptr %4, align 8, !tbaa !197
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.ax, align 8, !tbaa !199
  %i.ay = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef 7) #17
  %.not69 = icmp eq i64 %i.ay, 0
  br i1 %.not69, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.137, i64 noundef 4) #17
  %.not70 = icmp eq i64 %i.az, 0
  br i1 %.not70, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not71 = icmp eq i32 %i.ba, 0
  br i1 %.not71, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.138, i64 noundef 6) #17
  %.not72 = icmp eq i64 %i.bb, 0
  br i1 %.not72, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.130, i64 noundef 1) #17
  %.not73 = icmp eq i64 %i.bc, 0
  br i1 %.not73, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = call ptr @sdsempty() #17
  %i.be = load i64, ptr %4, align 8, !tbaa !197
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !199
  %i.bg = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.bd, ptr noundef nonnull @.str.128, i64 noundef %i.be, i64 noundef %i.bf) #17 ; 7 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %.val.i.i110 = load i8, ptr %i.bh, align 1, !tbaa !22 ; 2 uses
  %i.bi = and i8 %.val.i.i110, 7
  switch i8 %i.bi, label %rioWriteBulkStreamID.exit112 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.bj = lshr i8 %.val.i.i110, 3
  %i.bk = zext nneg i8 %i.bj to i64
  br label %rioWriteBulkStreamID.exit112

bb.u:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22
  %i.bn = zext i8 %i.bm to i64
  br label %rioWriteBulkStreamID.exit112

bb.v:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds i8, ptr %i.bg, i64 -5
  %i.bp = load i16, ptr %i.bo, align 1, !tbaa !23
  %i.bq = zext i16 %i.bp to i64
  br label %rioWriteBulkStreamID.exit112

bb.w:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds i8, ptr %i.bg, i64 -9
  %i.bs = load i32, ptr %i.br, align 1, !tbaa !9
  %i.bt = zext i32 %i.bs to i64
  br label %rioWriteBulkStreamID.exit112

bb.x:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds i8, ptr %i.bg, i64 -17
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !25
  br label %rioWriteBulkStreamID.exit112

rioWriteBulkStreamID.exit112:                     ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i.i111 = phi i64 [ %i.bv, %bb.x ], [ %i.bk, %bb.t ], [ %i.bn, %bb.u ], [ %i.bq, %bb.v ], [ %i.bt, %bb.w ], [ 0, %bb.s ]
  %i.bw = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.bg, i64 noundef %.0.i.i111) #17
  call void @sdsfree(ptr noundef nonnull %i.bg) #17
  %i.bx = and i64 %i.bw, 4294967295
  %.not74 = icmp eq i64 %i.bx, 0
  br i1 %.not74, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %rioWriteBulkStreamID.exit112
  %i.by = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.139, i64 noundef 1) #17
  %.not75 = icmp eq i64 %i.by, 0
  br i1 %.not75, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.140, i64 noundef 1) #17
  %.not76 = icmp eq i64 %i.bz, 0
  br i1 %.not76, label %bb.aa, label %.loopexit121

bb.aa:                                            ; preds = %bb.z, %bb.y, %rioWriteBulkStreamID.exit112, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  call void @streamIteratorStop(ptr noundef nonnull %3) #17
  br label %bb.ay

.loopexit121:                                     ; preds = %.loopexit119, %.preheader120, %bb.z
  %i.ca = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef 7) #17
  %.not78 = icmp eq i64 %i.ca, 0
  br i1 %.not78, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %.loopexit121
  %i.cb = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.141, i64 noundef 6) #17
  %.not79 = icmp eq i64 %i.cb, 0
  br i1 %.not79, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not80 = icmp eq i32 %i.cc, 0
  br i1 %.not80, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = call i32 @rioWriteBulkStreamID(ptr noundef %0, ptr noundef nonnull %i.cd)
  %.not81 = icmp eq i32 %i.ce, 0
  br i1 %.not81, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.142, i64 noundef 12) #17
  %.not82 = icmp eq i64 %i.cf, 0
  br i1 %.not82, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !211
  %i.ci = call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.ch) #17
  %.not83 = icmp eq i64 %i.ci, 0
  br i1 %.not83, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.143, i64 noundef 12) #17
  %.not84 = icmp eq i64 %i.cj, 0
  br i1 %.not84, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.cl = call i32 @rioWriteBulkStreamID(ptr noundef %0, ptr noundef nonnull %i.ck)
  %.not85 = icmp eq i32 %i.cl, 0
  br i1 %.not85, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.loopexit121
  call void @streamIteratorStop(ptr noundef nonnull %3) #17
  br label %bb.ay

bb.aj:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !212 ; 2 uses
  %.not86 = icmp eq ptr %i.cn, null
  br i1 %.not86, label %bb.ax, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @raxStart(ptr noundef nonnull %5, ptr noundef nonnull %i.cn) #17
  %i.co = call i32 @raxSeek(ptr noundef nonnull %5, ptr noundef nonnull @.str.144, ptr noundef null, i64 noundef 0) #17 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = call i32 @raxNext(ptr noundef nonnull %5) #17
  %.not87132 = icmp eq i32 %i.cv, 0
  br i1 %.not87132, label %.thread116, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.ak, %.loopexit
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !213 ; 3 uses
  %i.cx = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef 7) #17
  %.not88 = icmp eq i64 %i.cx, 0
  br i1 %.not88, label %.thread117, label %bb.al

bb.al:                                            ; preds = %.lr.ph134
  %i.cy = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.135, i64 noundef 6) #17
  %.not89 = icmp eq i64 %i.cy, 0
  br i1 %.not89, label %.thread117, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.145, i64 noundef 6) #17
  %.not90 = icmp eq i64 %i.cz, 0
  br i1 %.not90, label %.thread117, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not91 = icmp eq i32 %i.da, 0
  br i1 %.not91, label %.thread117, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !217
  %i.dc = load i64, ptr %i.cr, align 8, !tbaa !218
  %i.dd = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef %i.db, i64 noundef %i.dc) #17
  %.not92 = icmp eq i64 %i.dd, 0
  br i1 %.not92, label %.thread117, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.de = call i32 @rioWriteBulkStreamID(ptr noundef %0, ptr noundef %i.cw)
  %.not93 = icmp eq i32 %i.de, 0
  br i1 %.not93, label %.thread117, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.df = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.146, i64 noundef 11) #17
  %.not94 = icmp eq i64 %i.df, 0
  br i1 %.not94, label %.thread117, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !219
  %i.di = call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.dh) #17
  %.not95 = icmp eq i64 %i.di, 0
  br i1 %.not95, label %.thread117, label %bb.as

.thread117:                                       ; preds = %.lr.ph134, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  call void @raxStop(ptr noundef nonnull %5) #17
  call void @streamIteratorStop(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ay

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !221
  call void @raxStart(ptr noundef nonnull %6, ptr noundef %i.dk) #17
  %i.dl = call i32 @raxSeek(ptr noundef nonnull %6, ptr noundef nonnull @.str.144, ptr noundef null, i64 noundef 0) #17 ; 0 uses
  %i.dm = call i32 @raxNext(ptr noundef nonnull %6) #17
  %.not96125 = icmp eq i32 %i.dm, 0
  br i1 %.not96125, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.as, %._crit_edge.a
  %i.dn = load ptr, ptr %i.cs, align 8, !tbaa !213 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !222
  %i.dq = call i64 @raxSize(ptr noundef %i.dp) #17
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph126
  %i.ds = load ptr, ptr %i.cq, align 8, !tbaa !217
  %i.dt = load i64, ptr %i.cr, align 8, !tbaa !218
  %i.du = call i32 @rioWriteStreamEmptyConsumer(ptr noundef %0, ptr noundef %1, ptr noundef %i.ds, i64 noundef %i.dt, ptr noundef nonnull %i.dn)
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.thread114, label %._crit_edge.a, !llvm.loop !223

.thread114:                                       ; preds = %bb.at
  call void @raxStop(ptr noundef nonnull %6) #17
  call void @raxStop(ptr noundef nonnull %5) #17
  call void @streamIteratorStop(ptr noundef nonnull %3) #17
  br label %.loopexit118

bb.au:                                            ; preds = %.lr.ph126
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.dw = load ptr, ptr %i.do, align 8, !tbaa !222
  call void @raxStart(ptr noundef nonnull %7, ptr noundef %i.dw) #17
  %i.dx = call i32 @raxSeek(ptr noundef nonnull %7, ptr noundef nonnull @.str.144, ptr noundef null, i64 noundef 0) #17 ; 0 uses
  br label %.critedge107

.critedge107:                                     ; preds = %bb.av, %bb.au
  %i.dy = call i32 @raxNext(ptr noundef nonnull %7) #17
  %.not97 = icmp eq i32 %i.dy, 0
  br i1 %.not97, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge107
  %i.dz = load ptr, ptr %i.ct, align 8, !tbaa !213
  %i.ea = load ptr, ptr %i.cq, align 8, !tbaa !217
  %i.eb = load i64, ptr %i.cr, align 8, !tbaa !218
  %i.ec = load ptr, ptr %i.cu, align 8, !tbaa !217
  %i.ed = call i32 @rioWriteStreamPendingEntry(ptr noundef %0, ptr noundef %1, ptr noundef %i.ea, i64 noundef %i.eb, ptr noundef %i.dn, ptr noundef %i.ec, ptr noundef %i.dz)
  %.not98 = icmp eq i32 %i.ed, 0
  br i1 %.not98, label %.backedge.a, label %.critedge107

bb.aw:                                            ; preds = %.critedge107
  call void @raxStop(ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %._crit_edge.a

.backedge.a:                                      ; preds = %bb.av
  call void @raxStop(ptr noundef nonnull %7) #17
  call void @raxStop(ptr noundef nonnull %6) #17
  call void @raxStop(ptr noundef nonnull %5) #17
  call void @streamIteratorStop(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit118, !llvm.loop !224

._crit_edge.a:                                    ; preds = %bb.at, %bb.aw
  %i.ee = call i32 @raxNext(ptr noundef nonnull %6) #17
  %.not87.a = icmp eq i32 %i.ee, 0
  br i1 %.not87.a, label %.loopexit, label %.lr.ph126, !llvm.loop !223

.loopexit:                                        ; preds = %._crit_edge.a, %bb.as
  call void @raxStop(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %8 = call i32 @raxNext(ptr noundef nonnull %5) #17
  %.not87 = icmp eq i32 %8, 0
  br i1 %.not87, label %.thread116, label %.lr.ph134, !llvm.loop !224

.thread116:                                       ; preds = %.loopexit, %bb.ak
  call void @raxStop(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ax

.loopexit118:                                     ; preds = %.backedge.a, %.thread114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ay

bb.ax:                                            ; preds = %.thread116, %bb.aj
  call void @streamIteratorStop(ptr noundef nonnull %3) #17
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit118, %.thread117, %.critedge, %bb.ax, %bb.ai, %bb.aa, %bb.k
  %.13 = phi i32 [ 0, %.critedge ], [ 0, %bb.k ], [ 1, %bb.ax ], [ 0, %.loopexit118 ], [ 0, %bb.ai ], [ 0, %bb.aa ], [ 0, %.thread117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.13
}

declare void @streamIteratorStart(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @streamIteratorGetID(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @streamIteratorStop(ptr noundef) local_unnamed_addr #3

declare void @streamIteratorGetField(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @raxStart(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @raxSeek(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @raxNext(ptr noundef) local_unnamed_addr #3

declare void @raxStop(ptr noundef) local_unnamed_addr #3

declare i64 @raxSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rewriteModuleObject(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.RedisModuleIO, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !228
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !233
  store i64 0, ptr %4, align 8, !tbaa !234
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !236
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %3, ptr %i.h, align 8, !tbaa !237
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !238
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.j, align 8, !tbaa !239
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !244
  call void %i.l(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %i.n) #17
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !238  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @moduleFreeContext(ptr noundef nonnull %i.o) #17
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !238
  call void @zfree(ptr noundef %i.p) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load i32, ptr %i.f, align 8, !tbaa !235
  %.not8 = icmp eq i32 %i.q, 0
  %i.r = zext i1 %.not8 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.r
}

declare void @moduleFreeContext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rewriteObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.RedisModuleIO, align 8      ; 11 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 15
  switch i32 %i.c, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 6, label %bb.l
    i32 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !186
  %i.f = and i64 %i.e, 2
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.preheader.i, label %rioWrite.exit.thread

.preheader.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.preheader.i
  %.02538.i = phi i64 [ 13, %.preheader.i ], [ %i.u, %bb.f ] ; 3 uses
  %.02737.i = phi ptr [ @rewriteObject.cmd, %.preheader.i ], [ %i.t, %bb.f ] ; 3 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !188  ; 2 uses
  %.not32.not.i = icmp eq i64 %i.k, 0
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.02538.i)
  %i.m = select i1 %.not32.not.i, i64 %.02538.i, i64 %i.l ; 5 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !189  ; 2 uses
  %.not33.i = icmp eq ptr %i.n, null
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.n(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.m) #17, !inline_history !190
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !191
  %i.p = tail call i64 %i.o(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.m) #17, !inline_history !190
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.r = load i64, ptr %i.d, align 8, !tbaa !186
  %i.s = or i64 %i.r, 2
  store i64 %i.s, ptr %i.d, align 8, !tbaa !186
  br label %rioWrite.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02737.i, i64 %i.m
  %i.u = sub i64 %.02538.i, %i.m                  ; 2 uses
  %i.v = load i64, ptr %i.j, align 8, !tbaa !192
  %i.w = add i64 %i.v, %i.m
  store i64 %i.w, ptr %i.j, align 8, !tbaa !192
  %.not31.i = icmp eq i64 %i.u, 0
  br i1 %.not31.i, label %rioWrite.exit, label %bb.c

rioWrite.exit:                                    ; preds = %bb.f
  %i.x = tail call i32 @rioWriteBulkObject(ptr noundef nonnull %0, ptr noundef %1)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %rioWrite.exit.thread, label %bb.g

bb.g:                                             ; preds = %rioWrite.exit
  %i.z = tail call i32 @rioWriteBulkObject(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %rioWrite.exit.thread, label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.ab = tail call i32 @rewriteListObject(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %rioWrite.exit.thread, label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.ad = tail call i32 @rewriteSetObject(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %rioWrite.exit.thread, label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.af = tail call i32 @rewriteSortedSetObject(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %rioWrite.exit.thread, label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ah = tail call i32 @rewriteHashObject(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %rioWrite.exit.thread, label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = tail call i32 @rewriteStreamObject(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %rioWrite.exit.thread, label %bb.p

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !124 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !225 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.ao, align 8, !tbaa !228
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !233
  store i64 0, ptr %5, align 8, !tbaa !234
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !235
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %1, ptr %i.ar, align 8, !tbaa !236
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %3, ptr %i.as, align 8, !tbaa !237
end_hunk_0
begin_hunk_1_@rewriteAppendOnlyFileRio:bb.a
  %.not31.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not31.i.i, label %rioWrite.exit.i, label %.preheader.i.i

rioWrite.exit.i:                                  ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.a, ptr noundef nonnull align 16 dereferenceable(25) @__const.rewriteFunctions.function_load, i64 25, i1 false)
  %i.ca = load i64, ptr %i.be, align 8, !tbaa !186
  %i.cb = and i64 %i.ca, 2
  %.not.i11.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i11.i, label %.preheader.i13.i, label %.thread24.i

.preheader.i13.i:                                 ; preds = %rioWrite.exit.i, %bb.x
  %.02538.i14.i = phi i64 [ %i.cm, %bb.x ], [ 24, %rioWrite.exit.i ] ; 3 uses
  %.02737.i15.i = phi ptr [ %i.cl, %bb.x ], [ %i.a, %rioWrite.exit.i ] ; 3 uses
  %i.cc = load i64, ptr %i.bf, align 8, !tbaa !188 ; 2 uses
  %.not32.not.i16.i = icmp eq i64 %i.cc, 0
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cc, i64 %.02538.i14.i)
  %i.ce = select i1 %.not32.not.i16.i, i64 %.02538.i14.i, i64 %i.cd ; 5 uses
  %i.cf = load ptr, ptr %i.bg, align 8, !tbaa !189 ; 2 uses
  %.not33.i17.i = icmp eq ptr %i.cf, null
  br i1 %.not33.i17.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.i13.i
  call void %i.cf(ptr noundef nonnull %0, ptr noundef %.02737.i15.i, i64 noundef %i.ce) #17, !inline_history !246
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.i13.i
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !191
  %i.ch = call i64 %i.cg(ptr noundef nonnull %0, ptr noundef %.02737.i15.i, i64 noundef %i.ce) #17, !inline_history !246
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.thread.i19.i, label %bb.x

.thread.i19.i:                                    ; preds = %bb.w
  %i.cj = load i64, ptr %i.be, align 8, !tbaa !186
  %i.ck = or i64 %i.cj, 2
  store i64 %i.ck, ptr %i.be, align 8, !tbaa !186
  br label %.thread24.i

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.02737.i15.i, i64 %i.ce
  %i.cm = sub i64 %.02538.i14.i, %i.ce            ; 2 uses
  %i.cn = load i64, ptr %i.bi, align 8, !tbaa !192
  %i.co = add i64 %i.cn, %i.ce
  store i64 %i.co, ptr %i.bi, align 8, !tbaa !192
  %.not31.i18.i = icmp eq i64 %i.cm, 0
  br i1 %.not31.i18.i, label %rioWrite.exit20.i, label %.preheader.i13.i

rioWrite.exit20.i:                                ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !247 ; 6 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %.val.i.i65 = load i8, ptr %i.cr, align 1, !tbaa !22 ; 2 uses
  %i.cs = and i8 %.val.i.i65, 7
  switch i8 %i.cs, label %sdslen.exit.i66 [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %rioWrite.exit20.i
  %i.ct = lshr i8 %.val.i.i65, 3
  %i.cu = zext nneg i8 %i.ct to i64
  br label %sdslen.exit.i66

bb.z:                                             ; preds = %rioWrite.exit20.i
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 -3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !22
  %i.cx = zext i8 %i.cw to i64
  br label %sdslen.exit.i66

bb.aa:                                            ; preds = %rioWrite.exit20.i
  %i.cy = getelementptr inbounds i8, ptr %i.cq, i64 -5
  %i.cz = load i16, ptr %i.cy, align 1, !tbaa !23
  %i.da = zext i16 %i.cz to i64
  br label %sdslen.exit.i66

bb.ab:                                            ; preds = %rioWrite.exit20.i
  %i.db = getelementptr inbounds i8, ptr %i.cq, i64 -9
  %i.dc = load i32, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i32 %i.dc to i64
  br label %sdslen.exit.i66

bb.ac:                                            ; preds = %rioWrite.exit20.i
  %i.de = getelementptr inbounds i8, ptr %i.cq, i64 -17
  %i.df = load i64, ptr %i.de, align 1, !tbaa !25
  br label %sdslen.exit.i66

sdslen.exit.i66:                                  ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %rioWrite.exit20.i
  %.0.i.i67 = phi i64 [ %i.df, %bb.ac ], [ %i.cu, %bb.y ], [ %i.cx, %bb.z ], [ %i.da, %bb.aa ], [ %i.dd, %bb.ab ], [ 0, %rioWrite.exit20.i ]
  %i.dg = call i64 @rioWriteBulkString(ptr noundef nonnull %0, ptr noundef nonnull %i.cq, i64 noundef %.0.i.i67) #17
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %.thread24.i, label %bb.ad

.thread24.i:                                      ; preds = %sdslen.exit.i66, %rioWrite.exit.i, %.thread.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %rewriteFunctions.exit.thread

bb.ad:                                            ; preds = %sdslen.exit.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.di = call ptr @dictNext(ptr noundef nonnull %1) #17 ; 2 uses
  %.not.i68 = icmp eq ptr %i.di, null
  br i1 %.not.i68, label %rewriteFunctions.exit, label %bb.r

rewriteFunctions.exit.thread:                     ; preds = %bb.r, %.thread.i.i, %.thread24.i
  call void @dictResetIterator(ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.au

rewriteFunctions.exit:                            ; preds = %bb.ad, %bb.q
  call void @dictResetIterator(ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !250
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %rewriteFunctions.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph124, %.thread95
  %indvars.iv = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next, %.thread95 ] ; 4 uses
  %.040122 = phi i64 [ 0, %.lr.ph124 ], [ %.4.ph, %.thread95 ] ; 3 uses
  %.041121 = phi i64 [ 0, %.lr.ph124 ], [ %.6.ph, %.thread95 ] ; 3 uses
  %.046120 = phi i64 [ 0, %.lr.ph124 ], [ %.551.ph, %.thread95 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.b, ptr noundef nonnull align 16 dereferenceable(17) @__const.rewriteAppendOnlyFileRio.selectcmd, i64 17, i1 false)
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !251
  %i.ds = getelementptr inbounds nuw [96 x i8], ptr %i.dr, i64 %indvars.iv ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !252
  %i.du = call i64 @kvstoreSize(ptr noundef %i.dt) #17
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.thread95, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = load i64, ptr %i.dl, align 8, !tbaa !186
  %i.dx = and i64 %i.dw, 2
  %.not.i69 = icmp eq i64 %i.dx, 0
  br i1 %.not.i69, label %.preheader.i71, label %.thread89

.preheader.i71:                                   ; preds = %bb.af, %bb.ai
  %.02538.i73 = phi i64 [ %i.ei, %bb.ai ], [ 16, %bb.af ] ; 3 uses
  %.02737.i74 = phi ptr [ %i.eh, %bb.ai ], [ %i.b, %bb.af ] ; 3 uses
  %i.dy = load i64, ptr %i.dm, align 8, !tbaa !188 ; 2 uses
  %.not32.not.i75 = icmp eq i64 %i.dy, 0
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dy, i64 %.02538.i73)
  %i.ea = select i1 %.not32.not.i75, i64 %.02538.i73, i64 %i.dz ; 5 uses
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !189 ; 2 uses
  %.not33.i76 = icmp eq ptr %i.eb, null
  br i1 %.not33.i76, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.preheader.i71
  call void %i.eb(ptr noundef nonnull %0, ptr noundef %.02737.i74, i64 noundef %i.ea) #17, !inline_history !190
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.preheader.i71
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !191
  %i.ed = call i64 %i.ec(ptr noundef nonnull %0, ptr noundef %.02737.i74, i64 noundef %i.ea) #17, !inline_history !190
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %.thread.i78, label %bb.ai

.thread.i78:                                      ; preds = %bb.ah
  %i.ef = load i64, ptr %i.dl, align 8, !tbaa !186
  %i.eg = or i64 %i.ef, 2
  store i64 %i.eg, ptr %i.dl, align 8, !tbaa !186
  br label %.thread89

bb.ai:                                            ; preds = %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %.02737.i74, i64 %i.ea
  %i.ei = sub i64 %.02538.i73, %i.ea              ; 2 uses
  %i.ej = load i64, ptr %i.dp, align 8, !tbaa !192
  %i.ek = add i64 %i.ej, %i.ea
  store i64 %i.ek, ptr %i.dp, align 8, !tbaa !192
  %.not31.i77 = icmp eq i64 %i.ei, 0
  br i1 %.not31.i77, label %rioWrite.exit79, label %.preheader.i71

rioWrite.exit79:                                  ; preds = %bb.ai
  %i.el = call i64 @rioWriteBulkLongLong(ptr noundef nonnull %0, i64 noundef %indvars.iv) #17
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.thread89, label %bb.aj

bb.aj:                                            ; preds = %rioWrite.exit79
  %i.en = load ptr, ptr %i.ds, align 8, !tbaa !252
  call void @kvstoreIteratorInit(ptr noundef nonnull %2, ptr noundef %i.en) #17
  %i.eo = call ptr @kvstoreIteratorNext(ptr noundef nonnull %2) #17 ; 2 uses
  %.not59114 = icmp eq ptr %i.eo, null
  br i1 %.not59114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %i.ep = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.eq = phi ptr [ %i.fl, %.backedge ], [ %i.eo, %.lr.ph.preheader ]
  %.1117 = phi i64 [ %.450151, %.backedge ], [ %.040122, %.lr.ph.preheader ] ; 3 uses
  %.142116 = phi i64 [ %.5152, %.backedge ], [ %.041121, %.lr.ph.preheader ] ; 4 uses
  %.147115 = phi i64 [ %.3153, %.backedge ], [ %.046120, %.lr.ph.preheader ] ; 2 uses
  %i.er = load i64, ptr %i.dp, align 8, !tbaa !192
  %i.es = call ptr @dictGetKey(ptr noundef nonnull %i.eq) #17 ; 4 uses
  %i.et = call i64 @kvobjGetExpire(ptr noundef %i.es) #17
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !255
  %.not60 = icmp eq i32 %i.eu, 0
  br i1 %.not60, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %i.ev = call i32 @kvstoreIteratorGetCurrentDictIndex(ptr noundef nonnull %2) #17
  %i.ew = call i32 @isSlotInTrimJob(i32 noundef %i.ev) #17
  %.not61 = icmp eq i32 %i.ew, 0
  %i.ex = add i64 %.147115, 1
  br i1 %.not61, label %bb.al, label %.backedge

bb.al:                                            ; preds = %bb.ak, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 2147483136, ptr %3, align 8
  %i.ey = call ptr @kvobjGetKey(ptr noundef %i.es) #17
  store ptr %i.ey, ptr %i.dq, align 8, !tbaa !124
  %i.ez = call i32 @rewriteObject(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.es, i32 noundef %i.ep, i64 noundef %i.et)
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %.thread154, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 56), align 8, !tbaa !256
  %.not62 = icmp eq i32 %i.fb, 0
  br i1 %.not62, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = load i64, ptr %i.dp, align 8, !tbaa !192
  %i.fd = sub i64 %i.fc, %i.er
  call void @dismissObject(ptr noundef %i.es, i64 noundef %i.fd) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fe = add nsw i64 %.1117, 1                   ; 2 uses
  %i.ff = and i64 %.1117, 1023
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fh = call i64 @mstime() #17                  ; 2 uses
  %i.fi = sub nsw i64 %i.fh, %.142116
  %i.fj = icmp sgt i64 %i.fi, 999
  br i1 %i.fj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @sendChildInfo(i32 noundef 0, i64 noundef %i.fe, ptr noundef nonnull @.str.149) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %.344 = phi i64 [ %.142116, %bb.ao ], [ %i.fh, %bb.aq ], [ %.142116, %bb.ap ]
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7052), align 4, !tbaa !257 ; 2 uses
  %.not63 = icmp eq i32 %i.fk, 0
  br i1 %.not63, label %bb.as, label %4

4:                                                ; preds = %bb.ar
  call void @debugDelay(i32 noundef %i.fk) #17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.backedge

.thread154:                                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @kvstoreIteratorReset(ptr noundef nonnull %2) #17
  br label %bb.au

.backedge:                                        ; preds = %bb.as, %bb.ak
  %.3153 = phi i64 [ %.147115, %bb.as ], [ %i.ex, %bb.ak ] ; 2 uses
  %.5152 = phi i64 [ %.344, %bb.as ], [ %.142116, %bb.ak ] ; 2 uses
  %.450151 = phi i64 [ %i.fe, %bb.as ], [ %.1117, %bb.ak ] ; 2 uses
  %i.fl = call ptr @kvstoreIteratorNext(ptr noundef nonnull %2) #17 ; 2 uses
  %.not59 = icmp eq ptr %i.fl, null
  br i1 %.not59, label %._crit_edge, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %.backedge, %bb.aj
  %.147.lcssa = phi i64 [ %.046120, %bb.aj ], [ %.3153, %.backedge ]
  %.142.lcssa = phi i64 [ %.041121, %bb.aj ], [ %.5152, %.backedge ]
  %.1.lcssa = phi i64 [ %.040122, %bb.aj ], [ %.450151, %.backedge ]
  call void @kvstoreIteratorReset(ptr noundef nonnull %2) #17
  br label %.thread95

.thread89:                                        ; preds = %rioWrite.exit79, %bb.af, %.thread.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.au

.thread95:                                        ; preds = %._crit_edge, %bb.ae
  %.551.ph = phi i64 [ %.046120, %bb.ae ], [ %.147.lcssa, %._crit_edge ] ; 2 uses
  %.6.ph = phi i64 [ %.041121, %bb.ae ], [ %.142.lcssa, %._crit_edge ]
  %.4.ph = phi i64 [ %.040122, %bb.ae ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !250
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %bb.ae, label %._crit_edge125, !llvm.loop !259

._crit_edge125:                                   ; preds = %.thread95, %rewriteFunctions.exit
  %.046.lcssa = phi i64 [ 0, %rewriteFunctions.exit ], [ %.551.ph, %.thread95 ]
  %.040.lcssa = phi i64 [ 0, %rewriteFunctions.exit ], [ %.4.ph, %.thread95 ]
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !73
  %i.fq = icmp sgt i32 %i.fp, 2
  br i1 %i.fq, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge125
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.150, i64 noundef %.040.lcssa, i64 noundef %.046.lcssa) #17
  br label %bb.au

bb.au:                                            ; preds = %.thread89, %rewriteFunctions.exit.thread, %bb.p, %.thread154, %bb.at, %._crit_edge125
  %.0 = phi i32 [ -1, %bb.p ], [ 0, %bb.at ], [ -1, %.thread89 ], [ 0, %._crit_edge125 ], [ -1, %rewriteFunctions.exit.thread ], [ -1, %.thread154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.0
}

declare i64 @kvstoreSize(ptr noundef) local_unnamed_addr #3

declare void @kvstoreIteratorInit(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @kvstoreIteratorNext(ptr noundef) local_unnamed_addr #3

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #3

declare i32 @kvstoreIteratorGetCurrentDictIndex(ptr noundef) local_unnamed_addr #3

declare i32 @isSlotInTrimJob(i32 noundef) local_unnamed_addr #3

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #3

declare void @dismissObject(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @sendChildInfo(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @kvstoreIteratorReset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #6

declare void @rioSetAutoSync(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @rioSetReclaimCache(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @startSaving(i32 noundef) local_unnamed_addr #3

declare i32 @rdbSaveRio(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @fsync(i32 noundef) local_unnamed_addr #3

declare i32 @reclaimFilePageCache(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #5

declare void @stopSaving(i32 noundef) local_unnamed_addr #3

declare void @bioDrainWorker(i32 noundef) local_unnamed_addr #3

declare i32 @redisFork(i32 noundef) local_unnamed_addr #3

declare i32 @redisSetProcTitle(ptr noundef) local_unnamed_addr #3

declare void @redisSetCpuAffinity(ptr noundef) local_unnamed_addr #3

declare void @sendChildCowInfo(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @exitFromChild(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @bgrewriteaofCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 316), align 4, !tbaa !101
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.162) #17
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @hasActiveChildProcess() #17
  %i.d = icmp ne i32 %i.c, 0
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 220), align 4
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6748), align 4, !tbaa !106
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2744), align 8, !tbaa !99
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.163) #17
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @rewriteAppendOnlyFileBackground()
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @addReplyStatus(ptr noundef %0, ptr noundef nonnull @.str.164) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.165) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  ret void
}

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @addReplyStatus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @backgroundRewriteDoneHandler(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = or i32 %1, %0
  %or.cond = icmp eq i32 %i.c, 0
  br i1 %or.cond, label %bb.b, label %bb.bl

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.d = tail call i64 @ustime() #17
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !73
  %i.f = icmp sgt i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.168) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 312), align 8, !tbaa !102
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 256, ptr noundef nonnull @.str.158, i32 noundef %i.g) #17 ; 0 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6872), align 8, !tbaa !71 ; 2 uses
  %.not62 = icmp eq ptr %i.i, null
  br i1 %.not62, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 2776) #17
  tail call void @abort() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = tail call ptr @aofManifestDup(ptr noundef nonnull %i.i) ; 19 uses
  %i.k = tail call ptr @getNewBaseFileNameAndMarkPreAsHistory(ptr noundef %i.j) ; 4 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.1, i32 noundef 2784) #17
  tail call void @abort() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6688), align 8, !tbaa !72
  %i.m = tail call ptr @makePath(ptr noundef %i.l, ptr noundef nonnull %i.k) #17 ; 8 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !92
  %.not64 = icmp eq i64 %i.n, 0
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i64 @mstime() #17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.057 = phi i64 [ %i.o, %bb.i ], [ 0, %bb.h ]
  %i.p = call i32 @rename(ptr noundef nonnull %i.b, ptr noundef %i.m) #17
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !73
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call ptr @__errno_location() #19
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = tail call ptr @strerror(i32 noundef %i.u) #17
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.170, ptr noundef nonnull %i.b, ptr noundef %i.m, ptr noundef %i.v) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !37   ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.x, null
  br i1 %.not5.i.i, label %aofInfoFree.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @sdsfree(ptr noundef nonnull %i.x) #17
  br label %aofInfoFree.exit.i

aofInfoFree.exit.i:                               ; preds = %bb.o, %bb.n
  call void @zfree(ptr noundef nonnull %i.w) #17
  br label %bb.p

bb.p:                                             ; preds = %aofInfoFree.exit.i, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 2 uses
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %bb.r, label %bb.q
end_hunk_1
