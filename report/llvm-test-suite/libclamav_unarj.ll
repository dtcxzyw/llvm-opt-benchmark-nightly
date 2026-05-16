inline.NumInlined: 28
inline.NumDeleted: 13
begin_hunk_0_@cli_unarj_prepare_file:bb.a
  %i.al = zext i8 %i.ak to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25, i32 noundef %i.al) #11
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = zext i8 %i.an to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.ao) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !30
  %i.ar = zext i8 %i.aq to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.ar) #11
  %i.as = load i32, ptr %i.t, align 1, !tbaa !31
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %i.as) #11
  %i.at = load i32, ptr %i.u, align 1, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %i.at) #11
  %i.au = load i8, ptr %3, align 1, !tbaa !22     ; 3 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = icmp ult i8 %i.au, 30
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #11
  br label %arj_read_file_header.exit

bb.m:                                             ; preds = %bb.k
  %.not39.i = icmp eq i8 %i.au, 30
  br i1 %.not39.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = add nuw nsw i64 %i.av, 4294967266
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef %i.ay, i32 noundef 1) #11
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %arj_read_file_header.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = load i16, ptr %i.a, align 2, !tbaa !8
  %i.bc = zext i16 %i.bb to i64
  %i.bd = call ptr @cli_malloc(i64 noundef %i.bc) #11 ; 10 uses
  %.not40.i = icmp eq ptr %i.bd, null
  br i1 %.not40.i, label %arj_read_file_header.exit, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.o
  %i.be = load i16, ptr %i.a, align 2, !tbaa !8
  %.not56.i = icmp eq i16 %i.be, 0
  br i1 %.not56.i, label %._crit_edge.thread.i, label %.lr.ph.i

bb.p:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bf = zext i16 %.pre.pre.i to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !33

.lr.ph.i:                                         ; preds = %.preheader49.i, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader49.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bi = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.bh, i32 noundef 1) #11
  %.not41.i = icmp eq i32 %i.bi, 1
  br i1 %.not41.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.bd) #11
  br label %arj_read_file_header.exit

bb.r:                                             ; preds = %.lr.ph.i
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bk = icmp eq i8 %i.bj, 0
  %.pre.pre.i = load i16, ptr %i.a, align 2, !tbaa !8 ; 3 uses
  br i1 %i.bk, label %._crit_edge.i, label %bb.p

._crit_edge.i:                                    ; preds = %bb.r, %bb.p
  %.in = phi i64 [ %indvars.iv, %bb.r ], [ %indvars.iv.next, %bb.p ]
  %i.bl = trunc nuw i64 %.in to i16
  %i.bm = icmp eq i16 %.pre.pre.i, %i.bl
  br i1 %i.bm, label %._crit_edge.thread.i, label %bb.s

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader49.i
  call void @free(ptr noundef nonnull %i.bd) #11
  br label %arj_read_file_header.exit

bb.s:                                             ; preds = %._crit_edge.i
  %i.bn = zext i16 %.pre.pre.i to i64
  %i.bo = call ptr @cli_malloc(i64 noundef %i.bn) #11 ; 6 uses
  %.not42.i = icmp eq ptr %i.bo, null
  br i1 %.not42.i, label %bb.t, label %.preheader48.i

.preheader48.i:                                   ; preds = %bb.s
  store i16 0, ptr %i.b, align 2, !tbaa !8
  %i.bp = load i16, ptr %i.a, align 2, !tbaa !8
  %.not57.i = icmp eq i16 %i.bp, 0
  br i1 %.not57.i, label %._crit_edge54.thread.i, label %.lr.ph53.i

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bd) #11
  br label %arj_read_file_header.exit

bb.u:                                             ; preds = %bb.w
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 3 uses
  %indvars19 = trunc nuw i64 %indvars.iv.next18 to i16 ; 2 uses
  store i16 %indvars19, ptr %i.b, align 2, !tbaa !8
  %i.bq = zext i16 %.pre58.pre.i to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next18, %i.bq
  br i1 %i.br, label %.lr.ph53.i, label %._crit_edge54.i, !llvm.loop !34

.lr.ph53.i:                                       ; preds = %.preheader48.i, %bb.u
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %bb.u ], [ 0, %.preheader48.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv17 ; 2 uses
  %i.bt = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.bs, i32 noundef 1) #11
  %.not44.i = icmp eq i32 %i.bt, 1
  br i1 %.not44.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph53.i
  call void @free(ptr noundef %i.bd) #11
  call void @free(ptr noundef nonnull %i.bo) #11
  br label %arj_read_file_header.exit

bb.w:                                             ; preds = %.lr.ph53.i
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !20
  %i.bv = icmp eq i8 %i.bu, 0
  %.pre58.pre.i = load i16, ptr %i.a, align 2, !tbaa !8 ; 2 uses
  br i1 %i.bv, label %._crit_edge54.i.split.loop.exit, label %bb.u

._crit_edge54.i.split.loop.exit:                  ; preds = %bb.w
  %i.bw = trunc nuw i64 %indvars.iv17 to i16
  br label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %bb.u, %._crit_edge54.i.split.loop.exit
  %i.bx = phi i16 [ %i.bw, %._crit_edge54.i.split.loop.exit ], [ %indvars19, %bb.u ]
  %i.by = icmp eq i16 %i.bx, %.pre58.pre.i
  br i1 %i.by, label %._crit_edge54.thread.i, label %bb.x

._crit_edge54.thread.i:                           ; preds = %._crit_edge54.i, %.preheader48.i
  call void @free(ptr noundef %i.bd) #11
  call void @free(ptr noundef nonnull %i.bo) #11
  br label %arj_read_file_header.exit

bb.x:                                             ; preds = %._crit_edge54.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.bd) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bo) #11
  %i.bz = call ptr @cli_strdup(ptr noundef nonnull %i.bd) #11
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !35
  call void @free(ptr noundef %i.bd) #11
  call void @free(ptr noundef nonnull %i.bo) #11
  %i.cb = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef 4, i32 noundef 1) #11
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %arj_read_file_header.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x, %bb.z
  %i.cd = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not45.i = icmp eq i32 %i.cd, 2
  br i1 %.not45.i, label %bb.y, label %arj_read_file_header.exit

bb.y:                                             ; preds = %.preheader.i
  %i.ce = load i16, ptr %i.b, align 2, !tbaa !8
  %i.cf = zext i16 %i.ce to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.cf) #11
  %i.cg = load i16, ptr %i.b, align 2, !tbaa !8   ; 2 uses
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = zext i16 %i.cg to i64
  %i.cj = add nuw nsw i64 %i.ci, 4
  %i.ck = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef %i.cj, i32 noundef 1) #11
  %i.cl = icmp eq i64 %i.ck, -1
  br i1 %i.cl, label %arj_read_file_header.exit, label %.preheader.i

bb.aa:                                            ; preds = %bb.y
  %i.cm = load <2 x i32>, ptr %i.t, align 1, !tbaa !4
  store <2 x i32> %i.cm, ptr %2, align 8, !tbaa !4
  %i.cn = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !39
  %i.cp = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.cq = and i8 %i.cp, 1
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !40
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -1, ptr %i.ct, align 4, !tbaa !41
  %i.cu = load ptr, ptr %i.ca, align 8, !tbaa !35
  %.not47.i = icmp eq ptr %i.cu, null
  %..i = select i1 %.not47.i, i32 -114, i32 0
  br label %arj_read_file_header.exit

arj_read_file_header.exit:                        ; preds = %.preheader.i, %bb.z, %bb.f, %bb.g, %bb.i, %bb.j, %bb.l, %bb.n, %bb.o, %bb.q, %._crit_edge.thread.i, %bb.t, %bb.v, %._crit_edge54.thread.i, %bb.x, %bb.aa
  %.0.i13 = phi i32 [ -124, %bb.n ], [ -124, %bb.f ], [ -124, %bb.i ], [ 2, %bb.g ], [ -124, %bb.l ], [ -124, %bb.j ], [ -124, %bb.q ], [ -124, %._crit_edge.thread.i ], [ -124, %bb.v ], [ -124, %._crit_edge54.thread.i ], [ -114, %bb.o ], [ -124, %bb.x ], [ -124, %bb.t ], [ %..i, %bb.aa ], [ -124, %bb.z ], [ -124, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %arj_read_file_header.exit, %bb.e
  %.0 = phi i32 [ -124, %bb.e ], [ %.0.i13, %arj_read_file_header.exit ], [ -111, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -127, 1) i32 @cli_unarj_extract_file(i32 noundef %0, ptr noundef %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.arj_decode_tag, align 8     ; 28 uses
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #11
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %1, null
  %or.cond.not31 = or i1 %i.c, %i.b
  %i.d = icmp slt i32 %0, 0
  %or.cond3 = or i1 %i.d, %or.cond.not31
  br i1 %or.cond3, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #11
  %i.g = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #11
  %i.h = load i32, ptr %2, align 8, !tbaa !42
  %i.i = zext i32 %i.h to i64
  %i.j = add nsw i64 %i.g, %i.i                   ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i64 noundef %i.j) #11
  %i.k = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.j, i32 noundef 0) #11
  %.not33 = icmp eq i64 %i.k, %i.j
  %. = select i1 %.not33, i32 0, i32 -127
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #11 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a) #11
  %i.m = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 578, i32 noundef 384) #11 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !41
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !39
  switch i8 %i.q, label %bb.ak [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 4, label %bb.aj
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %2, align 8, !tbaa !42
  %i.s = call fastcc i32 @arj_unstore(i32 noundef %0, i32 noundef %i.m, i32 noundef %i.r)
  %i.t = load i32, ptr %2, align 8, !tbaa !42
  %.not32 = icmp eq i32 %i.s, %i.t
  %.34 = select i1 %.not32, i32 0, i32 -123
  br label %bb.ak

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.u = call ptr @cli_malloc(i64 noundef 26624) #11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %decode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %0, ptr %3, align 8, !tbaa !45
  %i.w = load i32, ptr %2, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.w, ptr %i.x, align 4, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i16 0, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 9 uses
  store i16 0, ptr %i.z, align 2, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.aa, align 4, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ab, align 8, !tbaa !50
  %i.ac = call fastcc range(i32 -123, 1) i32 @fill_buf(ptr noundef nonnull %3, i32 noundef 16)
  %.not57.i = icmp eq i32 %i.ac, 0
  br i1 %.not57.i, label %.preheader82.i, label %decode.exit

.preheader82.i:                                   ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51
  %.not97.i = icmp eq i32 %i.ae, 0
  br i1 %.not97.i, label %.loopexit83.thread.i, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.preheader82.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4112 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12834 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12814 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4622 ; 6 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.lr.ph95.i
  %.04694.i = phi i32 [ 0, %.lr.ph95.i ], [ %.4.i, %.loopexit.i ] ; 8 uses
  %.04993.i = phi i32 [ 0, %.lr.ph95.i ], [ %.150.i, %.loopexit.i ] ; 2 uses
  %i.aj = load i16, ptr %i.y, align 8, !tbaa !47  ; 2 uses
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.al = load i16, ptr %i.z, align 2, !tbaa !48
  %i.am = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef 16) ; 0 uses
  store i16 %i.al, ptr %i.y, align 8, !tbaa !47
  call fastcc void @read_pt_len(ptr noundef nonnull %3, i32 noundef 3)
  %i.an = load i16, ptr %i.z, align 2, !tbaa !48
  %i.ao = lshr i16 %i.an, 7                       ; 2 uses
  %i.ap = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef 9) ; 0 uses
  %i.aq = icmp eq i16 %i.ao, 0
  br i1 %i.aq, label %.preheader.i.i.i, label %.preheader63.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j
  %i.ar = load i16, ptr %i.z, align 2, !tbaa !48
  %i.as = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef 9) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(510) %i.af, i8 0, i64 510, i1 false), !tbaa !20
  %i.at = lshr i16 %i.ar, 7
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i.i.i
  %index = phi i64 [ 0, %.preheader.i.i.i ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.au, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !tbaa !8
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store <8 x i16> %broadcast.splat, ptr %i.ax, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ay, align 2, !tbaa !8
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  store <8 x i16> %broadcast.splat, ptr %i.ba, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.bb, align 2, !tbaa !8
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  store <8 x i16> %broadcast.splat, ptr %i.bd, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.be, align 2, !tbaa !8
  %index.next.3 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.bf = icmp eq i64 %index.next.3, 4096
  br i1 %i.bf, label %read_c_len.exit.i.i, label %vector.body, !llvm.loop !52

.preheader59.i.i.i:                               ; preds = %.loopexit60.i.i.i
  %i.bg = icmp slt i16 %.454.i.i.i, 510
  br i1 %i.bg, label %.lr.ph71.i.i.i, label %._crit_edge.i.i.i

.lr.ph71.i.i.i:                                   ; preds = %.preheader59.i.i.i
  %i.bh = zext nneg i16 %.454.i.i.i to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.af, i64 %i.bh
  %narrow.i.i.i = sub nuw nsw i16 510, %.454.i.i.i
  %i.bi = zext nneg i16 %narrow.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i, i8 0, i64 %i.bi, i1 false), !tbaa !20
  br label %._crit_edge.i.i.i

.preheader63.i.i.i:                               ; preds = %bb.j, %.loopexit60.i.i.i
  %.25269.i.i.i = phi i16 [ %.454.i.i.i, %.loopexit60.i.i.i ], [ 0, %bb.j ] ; 4 uses
  %4 = load i16, ptr %i.z, align 2, !tbaa !48     ; 2 uses
  %5 = lshr i16 %4, 8
  %i.bj = zext nneg i16 %5 to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !8  ; 3 uses
  %i.bm = icmp sgt i16 %i.bl, 18
  br i1 %i.bm, label %.preheader61.i.i.i.a, label %.loopexit62.i.i.i

.preheader61.i.i.i.a:                             ; preds = %.preheader63.i.i.i
  %i.bn = zext i16 %4 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader61.i.i.i.a
  %.049.i.i.i = phi i16 [ %.1.i.i.i, %bb.m ], [ %i.bl, %.preheader61.i.i.i.a ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.br, %bb.m ], [ 128, %.preheader61.i.i.i.a ] ; 2 uses
  %i.bo = icmp samesign ugt i16 %.049.i.i.i, 1018
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %read_c_len.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bp = and i32 %.0.i.i.i, %i.bn
  %.not.i.i.i = icmp eq i32 %i.bp, 0
  %i.bq = zext nneg i16 %.049.i.i.i to i64
  %.1.in.v.v.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i, i64 36, i64 2074
  %.1.in.v.v.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.1.in.v.v.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.1.in.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %.1.in.v.v.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.bq
  %.1.i.i.i = load i16, ptr %.1.in.i.i.i, align 2, !tbaa !8 ; 3 uses
  %i.br = lshr i32 %.0.i.i.i, 1
  %i.bs = icmp sgt i16 %.1.i.i.i, 18
  br i1 %i.bs, label %bb.k, label %.loopexit62.i.i.i, !llvm.loop !55

.loopexit62.i.i.i:                                ; preds = %bb.m, %.preheader63.i.i.i
  %.2.i.i.i = phi i16 [ %i.bl, %.preheader63.i.i.i ], [ %.1.i.i.i, %bb.m ] ; 4 uses
  %i.bt = sext i16 %.2.i.i.i to i64
  %i.bu = getelementptr inbounds i8, ptr %i.ah, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bw = zext i8 %i.bv to i32
  %i.bx = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef %i.bw) ; 0 uses
  %i.by = icmp slt i16 %.2.i.i.i, 3
  br i1 %i.by, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.loopexit62.i.i.i
  switch i16 %.2.i.i.i, label %bb.o [
    i16 0, label %.lr.ph.preheader.i.i.i
    i16 1, label %.lr.ph.preheader.sink.split.i.i.i
  ]

bb.o:                                             ; preds = %bb.n
  br label %.lr.ph.preheader.sink.split.i.i.i

.lr.ph.preheader.sink.split.i.i.i:                ; preds = %bb.o, %bb.n
  %.sink94.i.i.i = phi i16 [ 7, %bb.o ], [ 12, %bb.n ]
  %.sink92.i.i.i = phi i32 [ 9, %bb.o ], [ 4, %bb.n ]
  %.sink91.i.i.i = phi i16 [ 20, %bb.o ], [ 3, %bb.n ]
  %i.bz = load i16, ptr %i.z, align 2, !tbaa !48
  %i.ca = lshr i16 %i.bz, %.sink94.i.i.i
  %i.cb = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef %.sink92.i.i.i) ; 0 uses
  %.fr = freeze i16 %i.ca
  %i.cc = add i16 %.fr, %.sink91.i.i.i
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.sink.split.i.i.i, %bb.n
  %.3.i.i.i = phi i16 [ 1, %bb.n ], [ %i.cc, %.lr.ph.preheader.sink.split.i.i.i ] ; 3 uses
  %i.cd = sext i16 %.25269.i.i.i to i64           ; 4 uses
  %i.ce = add i16 %.3.i.i.i, -1
  %i.cf = zext i16 %i.ce to i64
  %i.cg = sub nsw i64 510, %i.cd
  %umin = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cg) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 32
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.preheader.i.i.i
  %i.ch = add nuw nsw i64 %umin, 1                ; 2 uses
  %n.mod.vf = and i64 %i.ch, 31                   ; 2 uses
  %i.ci = icmp eq i64 %n.mod.vf, 0
  %i.cj = select i1 %i.ci, i64 32, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.ch, %i.cj               ; 3 uses
  %i.ck = add nsw i64 %n.vec, %i.cd
  %i.cl = trunc i64 %n.vec to i16
  %i.cm = sub i16 %.3.i.i.i, %i.cl
  %invariant.gep = getelementptr i8, ptr %i.af, i64 %i.cd
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph61
  %index63 = phi i64 [ 0, %vector.ph61 ], [ %index.next64, %vector.body62 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index63 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> zeroinitializer, ptr %gep, align 1, !tbaa !20
  store <16 x i8> zeroinitializer, ptr %i.cn, align 1, !tbaa !20
  %index.next64 = add nuw i64 %index63, 32        ; 2 uses
  %i.co = icmp eq i64 %index.next64, %n.vec
  br i1 %i.co, label %.lr.ph.i.i.i.preheader, label %vector.body62, !llvm.loop !56

.lr.ph.i.i.i.preheader:                           ; preds = %vector.body62, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.ph = phi i64 [ %i.cd, %.lr.ph.preheader.i.i.i ], [ %i.ck, %vector.body62 ]
  %.in.i.i.i.ph = phi i16 [ %.3.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.cm, %vector.body62 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.q
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.q ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.in.i.i.i = phi i16 [ %i.cp, %bb.q ], [ %.in.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %exitcond.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 510
  br i1 %exitcond.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %read_c_len.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = add nsw i16 %.in.i.i.i, -1
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.af, i64 %indvars.iv.i.i.i
  store i8 0, ptr %i.cq, align 1, !tbaa !20
  %i.cr = icmp sgt i16 %.in.i.i.i, 1
  br i1 %i.cr, label %.lr.ph.i.i.i, label %.loopexit60.loopexit.i.i.i, !llvm.loop !57

bb.r:                                             ; preds = %.loopexit62.i.i.i
  %i.cs = icmp sgt i16 %.25269.i.i.i, 509
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %read_c_len.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.ct = trunc nuw nsw i16 %.2.i.i.i to i8
  %i.cu = add nsw i8 %i.ct, -2
  %i.cv = add nsw i16 %.25269.i.i.i, 1
  %i.cw = sext i16 %.25269.i.i.i to i64
  %i.cx = getelementptr inbounds i8, ptr %i.af, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !20
  br label %.loopexit60.i.i.i

.loopexit60.loopexit.i.i.i:                       ; preds = %bb.q
  %i.cy = trunc nsw i64 %indvars.iv.next.i.i.i to i16
  br label %.loopexit60.i.i.i

.loopexit60.i.i.i:                                ; preds = %.loopexit60.loopexit.i.i.i, %bb.t
  %.454.i.i.i = phi i16 [ %i.cv, %bb.t ], [ %i.cy, %.loopexit60.loopexit.i.i.i ] ; 5 uses
  %i.cz = icmp slt i16 %.454.i.i.i, %i.ao
  br i1 %i.cz, label %.preheader63.i.i.i, label %.preheader59.i.i.i, !llvm.loop !58

._crit_edge.i.i.i:                                ; preds = %.lr.ph71.i.i.i, %.preheader59.i.i.i
  call fastcc void @make_table(ptr noundef nonnull %3, i32 noundef 510, ptr noundef %i.af, i32 noundef 12, ptr noundef %i.ai, i32 noundef 4096)
  br label %read_c_len.exit.i.i

read_c_len.exit.i.i:                              ; preds = %vector.body, %._crit_edge.i.i.i, %bb.s, %bb.p, %bb.l
  call fastcc void @read_pt_len(ptr noundef nonnull %3, i32 noundef -1)
  %.pre.i.i = load i16, ptr %i.y, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %read_c_len.exit.i.i, %bb.i
  %i.da = phi i16 [ %.pre.i.i, %read_c_len.exit.i.i ], [ %i.aj, %bb.i ]
  %i.db = add i16 %i.da, -1
  store i16 %i.db, ptr %i.y, align 8, !tbaa !47
  %i.dc = load i16, ptr %i.z, align 2, !tbaa !48  ; 2 uses
  %i.dd = lshr i16 %i.dc, 4
  %i.de = zext nneg i16 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !8  ; 3 uses
  %i.dh = icmp ugt i16 %i.dg, 509
  br i1 %i.dh, label %.preheader.i.i, label %decode_c.exit.i

.preheader.i.i:                                   ; preds = %bb.u
  %i.di = zext i16 %i.dc to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.preheader.i.i
  %.023.i.i = phi i16 [ %.1.i.i, %bb.w ], [ %i.dg, %.preheader.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ %i.dm, %bb.w ], [ 8, %.preheader.i.i ] ; 2 uses
  %i.dj = icmp ugt i16 %.023.i.i, 1018
  br i1 %i.dj, label %decode_c.exit.thread.i, label %bb.w

decode_c.exit.thread.i:                           ; preds = %bb.v
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = and i32 %.0.i.i, %i.di
  %.not.i.i = icmp eq i32 %i.dk, 0
  %i.dl = zext nneg i16 %.023.i.i to i64
  %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i, i64 36, i64 2074
  %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.1.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.dl
  %.1.i.i = load i16, ptr %.1.in.i.i, align 2, !tbaa !8 ; 3 uses
  %i.dm = lshr i32 %.0.i.i, 1
  %i.dn = icmp ugt i16 %.1.i.i, 509
  br i1 %i.dn, label %bb.v, label %decode_c.exit.i, !llvm.loop !59

decode_c.exit.i:                                  ; preds = %bb.w, %bb.u
  %.2.i.i = phi i16 [ %i.dg, %bb.u ], [ %.1.i.i, %bb.w ] ; 5 uses
  %i.do = zext nneg i16 %.2.i.i to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = zext i8 %i.dq to i32
  %i.ds = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef %i.dr) ; 0 uses
  %i.dt = icmp samesign ult i16 %.2.i.i, 256
  br i1 %i.dt, label %bb.x, label %bb.z

bb.x:                                             ; preds = %decode_c.exit.i, %decode_c.exit.thread.i
  %.024.i79.i = phi i16 [ 0, %decode_c.exit.thread.i ], [ %.2.i.i, %decode_c.exit.i ]
  %i.du = trunc nuw i16 %.024.i79.i to i8
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.dw = zext i32 %.04694.i to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store i8 %i.du, ptr %i.dx, align 1, !tbaa !20
  %i.dy = add i32 %.04993.i, 1                    ; 2 uses
  %i.dz = add i32 %.04694.i, 1                    ; 2 uses
  %i.ea = icmp ugt i32 %i.dz, 26623
  br i1 %i.ea, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %bb.x
  %i.eb = load i32, ptr %i.n, align 4, !tbaa !41
  %i.ec = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.ed = call i32 @cli_writen(i32 noundef %i.eb, ptr noundef %i.ec, i32 noundef 26624) #11 ; 0 uses
  br label %.loopexit.i

bb.z:                                             ; preds = %decode_c.exit.i
  %i.ee = add nsw i16 %.2.i.i, -253
  %i.ef = zext nneg i16 %i.ee to i32
  %i.eg = add i32 %.04993.i, %i.ef                ; 2 uses
  %6 = load i16, ptr %i.z, align 2, !tbaa !48     ; 2 uses
  %7 = lshr i16 %6, 8
  %i.eh = zext nneg i16 %7 to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !8  ; 3 uses
  %i.ek = icmp ugt i16 %i.ej, 16
  br i1 %i.ek, label %.preheader.i62.i.a, label %.loopexit.i60.i

.preheader.i62.i.a:                               ; preds = %bb.z
  %i.el = zext i16 %6 to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.preheader.i62.i.a
  %.021.i.i = phi i16 [ %.1.i68.i, %bb.ac ], [ %i.ej, %.preheader.i62.i.a ] ; 2 uses
  %.0.i63.i = phi i32 [ %i.ep, %bb.ac ], [ 128, %.preheader.i62.i.a ] ; 2 uses
  %i.em = icmp ugt i16 %.021.i.i, 1018
  br i1 %i.em, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.30) #11
  br label %decode_p.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.en = and i32 %.0.i63.i, %i.el
  %.not.i64.i = icmp eq i32 %i.en, 0
  %i.eo = zext nneg i16 %.021.i.i to i64
  %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i64.i, i64 36, i64 2074
  %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.1.in.i67.i = getelementptr inbounds nuw [2 x i8], ptr %.1.in.v.v.i65.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.eo
  %.1.i68.i = load i16, ptr %.1.in.i67.i, align 2, !tbaa !8 ; 3 uses
  %i.ep = lshr i32 %.0.i63.i, 1
  %i.eq = icmp ugt i16 %.1.i68.i, 16
  br i1 %i.eq, label %bb.aa, label %.loopexit.i60.i, !llvm.loop !60

.loopexit.i60.i:                                  ; preds = %bb.ac, %bb.z
  %.2.i61.i = phi i16 [ %i.ej, %bb.z ], [ %.1.i68.i, %bb.ac ] ; 3 uses
  %i.er = zext nneg i16 %.2.i61.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !20
  %i.eu = zext i8 %i.et to i32
  %i.ev = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef %i.eu) ; 0 uses
  %.not23.i.i = icmp eq i16 %.2.i61.i, 0
  br i1 %.not23.i.i, label %decode_p.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i60.i
  %i.ew = add nsw i16 %.2.i61.i, -1
  %i.ex = zext nneg i16 %i.ew to i32              ; 3 uses
  %i.ey = shl nuw nsw i32 1, %i.ex
  %i.ez = load i16, ptr %i.z, align 2, !tbaa !48
  %i.fa = zext i16 %i.ez to i32
  %i.fb = sub nuw nsw i32 16, %i.ex
  %i.fc = lshr i32 %i.fa, %i.fb
  %i.fd = trunc nuw nsw i32 %i.fc to i16
  %i.fe = call fastcc i32 @fill_buf(ptr noundef nonnull %3, i32 noundef range(i32 0, 65536) %i.ex) ; 0 uses
  %i.ff = trunc nuw i32 %i.ey to i16
  %i.fg = add nuw i16 %i.fd, %i.ff
  %i.fh = xor i16 %i.fg, -1
  br label %decode_p.exit.i

decode_p.exit.i:                                  ; preds = %bb.ad, %.loopexit.i60.i, %bb.ab
  %.022.i.i = phi i16 [ -1, %bb.ab ], [ %i.fh, %bb.ad ], [ -1, %.loopexit.i60.i ]
  %i.fi = trunc i32 %.04694.i to i16
  %i.fj = add i16 %.022.i.i, %i.fi                ; 3 uses
  %i.fk = icmp slt i16 %i.fj, 0
  %narrow.i = add nsw i16 %i.fj, 26624
  %spec.select.i = select i1 %i.fk, i16 %narrow.i, i16 %i.fj ; 4 uses
  %or.cond.i = icmp ugt i16 %spec.select.i, 26623
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %decode_p.exit.i
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.29) #11
  br label %.loopexit83.i

bb.af:                                            ; preds = %decode_p.exit.i
  %i.fl = zext nneg i16 %spec.select.i to i32
  %i.fm = icmp ugt i32 %.04694.i, %i.fl
  %i.fn = icmp ult i32 %.04694.i, 26367
  %or.cond4.i = and i1 %i.fn, %i.fm
  %i.fo = add nsw i16 %.2.i.i, -254               ; 2 uses
  br i1 %or.cond4.i, label %.lr.ph91.preheader.i, label %.lr.ph.i

.lr.ph91.preheader.i:                             ; preds = %bb.af
  %i.fp = zext nneg i16 %spec.select.i to i64
  %i.fq = zext nneg i32 %.04694.i to i64
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i, %.lr.ph91.preheader.i
  %indvars.iv100.i = phi i64 [ %i.fq, %.lr.ph91.preheader.i ], [ %indvars.iv.next101.i, %.lr.ph91.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.fp, %.lr.ph91.preheader.i ], [ %indvars.iv.next.i, %.lr.ph91.i ] ; 3 uses
  %i.fr = phi i16 [ %i.fo, %.lr.ph91.preheader.i ], [ %i.fw, %.lr.ph91.i ]
  %i.fs = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !20
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv100.i
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !20
  %i.fw = add i16 %i.fr, -1                       ; 2 uses
  %i.fx = icmp sgt i16 %i.fw, -1
  %i.fy = trunc nuw i64 %indvars.iv.i to i16
  %i.fz = icmp slt i16 %i.fy, 26623
  %or.cond7.i = and i1 %i.fz, %i.fx
  %i.ga = icmp samesign ult i64 %indvars.iv100.i, 26623
  %i.gb = and i1 %i.ga, %or.cond7.i
  br i1 %i.gb, label %.lr.ph91.i, label %.loopexit.loopexit.i, !llvm.loop !61

.lr.ph.i:                                         ; preds = %bb.af, %bb.ah
  %i.gc = phi i16 [ %i.gq, %bb.ah ], [ %i.fo, %bb.af ] ; 2 uses
  %.287.i = phi i16 [ %spec.store.select.i, %bb.ah ], [ %spec.select.i, %bb.af ] ; 2 uses
  %.24886.i = phi i32 [ %.3.i, %bb.ah ], [ %.04694.i, %bb.af ] ; 2 uses
  %i.gd = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %i.ge = sext i16 %.287.i to i64
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !20
  %i.gh = zext i32 %.24886.i to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gh
  store i8 %i.gg, ptr %i.gi, align 1, !tbaa !20
  %i.gj = add i32 %.24886.i, 1                    ; 2 uses
  %i.gk = icmp ugt i32 %i.gj, 26623
  br i1 %i.gk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i
  %i.gl = load i32, ptr %i.n, align 4, !tbaa !41
  %i.gm = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.gn = call i32 @cli_writen(i32 noundef %i.gl, ptr noundef %i.gm, i32 noundef 26624) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i
  %.3.i = phi i32 [ 0, %bb.ag ], [ %i.gj, %.lr.ph.i ] ; 2 uses
  %i.go = add i16 %.287.i, 1                      ; 2 uses
  %i.gp = icmp sgt i16 %i.go, 26623
  %spec.store.select.i = select i1 %i.gp, i16 0, i16 %i.go
  %i.gq = add nsw i16 %i.gc, -1
  %i.gr = icmp sgt i16 %i.gc, 0
  br i1 %i.gr, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !62

.loopexit.loopexit.i:                             ; preds = %.lr.ph91.i
  %i.gs = trunc nuw nsw i64 %indvars.iv.next101.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ah, %.loopexit.loopexit.i, %bb.y, %bb.x
  %.150.i = phi i32 [ %i.dy, %bb.y ], [ %i.dy, %bb.x ], [ %i.eg, %.loopexit.loopexit.i ], [ %i.eg, %bb.ah ] ; 2 uses
  %.4.i = phi i32 [ 0, %bb.y ], [ %i.dz, %bb.x ], [ %i.gs, %.loopexit.loopexit.i ], [ %.3.i, %bb.ah ] ; 2 uses
  %i.gt = load i32, ptr %i.ad, align 4, !tbaa !51
  %i.gu = icmp ult i32 %.150.i, %i.gt
  br i1 %i.gu, label %bb.i, label %.loopexit83.i, !llvm.loop !63

.loopexit83.i:                                    ; preds = %.loopexit.i, %bb.ae
  %.04685.i = phi i32 [ %.04694.i, %bb.ae ], [ %.4.i, %.loopexit.i ] ; 2 uses
  %.not58.i = icmp eq i32 %.04685.i, 0
  br i1 %.not58.i, label %.loopexit83.thread.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit83.i
  %i.gv = load i32, ptr %i.n, align 4, !tbaa !41
  %i.gw = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.gx = call i32 @cli_writen(i32 noundef %i.gv, ptr noundef %i.gw, i32 noundef range(i32 1, 0) %.04685.i) #11 ; 0 uses
  br label %.loopexit83.thread.i

.loopexit83.thread.i:                             ; preds = %bb.ai, %.loopexit83.i, %.preheader82.i
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !43
  call void @free(ptr noundef %i.gy) #11
  br label %decode.exit

decode.exit:                                      ; preds = %bb.g, %bb.h, %.loopexit83.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ak

bb.aj:                                            ; preds = %bb.e
  call fastcc void @decode_f(i32 noundef %0, ptr noundef nonnull %2)
  br label %bb.ak

bb.ak:                                            ; preds = %decode.exit, %bb.aj, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.027 = phi i32 [ -115, %bb.d ], [ %., %bb.c ], [ -111, %bb.a ], [ 0, %decode.exit ], [ %.34, %bb.f ], [ 0, %bb.aj ], [ -124, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arj_unstore(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #11
  %.not28 = icmp eq i32 %2, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.02029 = phi i32 [ %i.h, %bb.e ], [ %2, %bb.a ] ; 4 uses
  %i.b = call i32 @llvm.umin.i32(i32 %.02029, i32 8192) ; 6 uses
  %i.c = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.b) #11
  %.not22 = icmp eq i32 %i.c, %i.b
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = sub i32 %2, %.02029
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.e = call i32 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.b) #11
  %.not23 = icmp eq i32 %i.e, %i.b
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.02029, %i.b
  %i.g = sub i32 %2, %i.f
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.h = sub i32 %.02029, %i.b                    ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !64

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ 0, %bb.a ], [ %2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_f(i32 noundef range(i32 0, -2147483648) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.arj_decode_tag, align 8     ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = tail call ptr @cli_malloc(i64 noundef 26624) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !43
end_hunk_0
