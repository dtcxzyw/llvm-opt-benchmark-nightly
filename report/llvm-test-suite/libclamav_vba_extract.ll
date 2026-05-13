inline.NumInlined: 49
inline.NumDeleted: 18
begin_hunk_0_@vba_decompress:bb.a
  br i1 %.not81, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %bb.ad

bb.aa:                                            ; preds = %._crit_edge.thread
  %.not80 = icmp eq ptr %2, null
  br i1 %.not80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = trunc i64 %i.dx to i32
  store i32 %i.ea, ptr %2, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eb = call ptr @blobGetData(ptr noundef nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %i.eb, i64 %i.dx, i1 false)
  call void @blobDestroy(ptr noundef nonnull %i.d) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.z, %bb.r, %bb.s, %bb.e, %bb.f, %bb.a, %bb.ac, %bb.x
  %.0 = phi ptr [ %i.dy, %bb.ac ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.x ], [ null, %bb.r ], [ null, %bb.f ], [ null, %bb.s ], [ null, %bb.z ], [ null, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

declare ptr @blobCreate() local_unnamed_addr #2

declare void @blobDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @blobAddData(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @blobGetDataSize(ptr noundef) local_unnamed_addr #2

declare ptr @blobGetData(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @cli_decode_ole_object(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [257 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #11
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) #11
  %.not = icmp eq i32 %i.g, 4
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = zext i32 %i.h to i64
  %i.l = sub nsw i64 %i.j, %i.k
  %i.m = icmp sgt i64 %i.l, 3
  br i1 %i.m, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = call i64 @lseek(i32 noundef %0, i64 noundef 2, i32 noundef 1) #11
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %.loopexit, label %.preheader24

.preheader24:                                     ; preds = %bb.d, %bb.e
  %i.p = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 1) #11
  %.not15 = icmp eq i32 %i.p, 1
  br i1 %.not15, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader24
  %i.q = load i8, ptr %i.b, align 1, !tbaa !8
  %.not16 = icmp eq i8 %i.q, 0
  br i1 %.not16, label %.preheader22, label %.preheader24, !llvm.loop !44

.preheader22:                                     ; preds = %bb.e, %bb.f
  %i.r = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 1) #11
  %.not17 = icmp eq i32 %i.r, 1
  br i1 %.not17, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader22
  %i.s = load i8, ptr %i.b, align 1, !tbaa !8
  %.not18 = icmp eq i8 %i.s, 0
  br i1 %.not18, label %bb.g, label %.preheader22, !llvm.loop !45

bb.g:                                             ; preds = %bb.f
  %i.t = call i64 @lseek(i32 noundef %0, i64 noundef 8, i32 noundef 1) #11
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.h
  %i.v = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 1) #11
  %.not19 = icmp eq i32 %i.v, 1
  br i1 %.not19, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.preheader
  %i.w = load i8, ptr %i.b, align 1, !tbaa !8
  %.not20 = icmp eq i8 %i.w, 0
  br i1 %.not20, label %bb.i, label %.preheader, !llvm.loop !46

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) #11
  %.not21 = icmp eq i32 %i.x, 4
  br i1 %.not21, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.16, ptr noundef %1) #11 ; 0 uses
  %i.z = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.d, i32 noundef 578, i32 noundef 384) #11 ; 4 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not34.i = icmp eq i32 %i.ab, 0
  br i1 %.not34.i, label %ole_copy_file_data.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.02235.i = phi i32 [ %i.af, %bb.l ], [ %i.ab, %bb.k ] ; 2 uses
  %i.ac = call i32 @llvm.umin.i32(i32 %.02235.i, i32 8192) ; 5 uses
  %i.ad = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.ac) #11
  %.not25.i = icmp eq i32 %i.ad, %i.ac
  br i1 %.not25.i, label %bb.l, label %ole_copy_file_data.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = call i32 @cli_writen(i32 noundef range(i32 0, -2147483648) %i.z, ptr noundef nonnull %i.a, i32 noundef %i.ac) #11
  %.not26.i = icmp ne i32 %i.ae, %i.ac
  %i.af = sub i32 %.02235.i, %i.ac                ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  %or.cond = or i1 %.not.i, %.not26.i
  br i1 %or.cond, label %ole_copy_file_data.exit, label %.lr.ph.i, !llvm.loop !47

ole_copy_file_data.exit:                          ; preds = %bb.l, %.lr.ph.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ag = call i64 @lseek(i32 noundef %i.z, i64 noundef 0, i32 noundef 0) #11 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader24, %.preheader22, %.preheader, %bb.j, %bb.i, %bb.g, %bb.d, %bb.b, %bb.a, %ole_copy_file_data.exit
  %.0 = phi i32 [ %i.z, %ole_copy_file_data.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %.preheader ], [ -1, %.preheader22 ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %.preheader24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ppt_vba_read(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 7 uses
  %i.b = alloca [8192 x i8], align 16             ; 7 uses
  %1 = alloca %struct.z_stream_s, align 8         ; 15 uses
  %i.c = alloca [257 x i8], align 16              ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.atom_header_tag, align 8    ; 9 uses
  %i.e = alloca [257 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.17, ptr noundef %0) #11 ; 0 uses
  %i.g = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.e, i32 noundef 0) #11 ; 14 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #11
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.i = tail call ptr @cli_gentemp(ptr noundef null) #11 ; 12 uses
  %i.j = tail call i32 @mkdir(ptr noundef %i.i, i32 noundef 448) #11
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.k = tail call i64 @lseek(i32 noundef range(i32 0, -1) %i.g, i64 noundef 0, i32 noundef 1) #11
  store i64 %i.k, ptr %2, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.l, i32 noundef 2) #11
  %.not.i38.i = icmp eq i32 %i.m, 2
  br i1 %.not.i38.i, label %.lr.ph.i, label %ppt_read_atom_header.exit.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.48, ptr noundef %i.i) #11
  tail call void @free(ptr noundef %i.i) #11
  br label %ppt_stream_iter.exit

bb.e:                                             ; preds = %bb.ad, %.lr.ph.i
  %i.v = load i16, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.w = trunc i16 %i.v to i8
  %i.x = and i8 %i.w, 15
  store i8 %i.x, ptr %i.n, align 2, !tbaa !51
  %i.y = lshr i16 %i.v, 4
  store i16 %i.y, ptr %i.o, align 4, !tbaa !52
  %i.z = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.p, i32 noundef 2) #11
  %.not18.i.i = icmp eq i32 %i.z, 2
  br i1 %.not18.i.i, label %bb.f, label %ppt_read_atom_header.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.q, i32 noundef 4) #11
  %.not19.i.i = icmp eq i32 %i.aa, 4
  br i1 %.not19.i.i, label %ppt_read_atom_header.exit.i, label %ppt_read_atom_header.exit.thread.i

ppt_read_atom_header.exit.thread.i:               ; preds = %bb.ad, %bb.f, %bb.e, %.preheader.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52) #11
  br label %ppt_stream_iter.exit

ppt_read_atom_header.exit.i:                      ; preds = %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.53) #11
  %i.ab = load i8, ptr %i.n, align 2, !tbaa !51
  %i.ac = zext i8 %i.ab to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.ac) #11
  %i.ad = load i16, ptr %i.o, align 4, !tbaa !52
  %i.ae = zext i16 %i.ad to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55, i32 noundef %i.ae) #11
  %i.af = load i16, ptr %i.p, align 2, !tbaa !53
  %i.ag = zext i16 %i.af to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.56, i32 noundef %i.ag) #11
  %i.ah = load i32, ptr %i.q, align 8, !tbaa !54
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57, i32 noundef %i.ah) #11
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !54
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ppt_read_atom_header.exit.i
  %i.ak = call i32 @cli_rmdirs(ptr noundef %i.i) #11 ; 0 uses
  call void @free(ptr noundef %i.i) #11
  br label %ppt_stream_iter.exit

bb.h:                                             ; preds = %ppt_read_atom_header.exit.i
  %i.al = load i16, ptr %i.p, align 2, !tbaa !53
  %i.am = icmp eq i16 %i.al, 4113
  br i1 %i.am, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.d, i32 noundef 4) #11
  %.not23.i = icmp eq i32 %i.an, 4
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #11
  %i.ao = call i32 @cli_rmdirs(ptr noundef %i.i) #11 ; 0 uses
  call void @free(ptr noundef %i.i) #11
  br label %ppt_stream_iter.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !4
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !54
  %i.ar = add nsw i32 %i.aq, -4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50, i32 noundef %i.ap, i32 noundef %i.ar) #11
  %i.as = load i32, ptr %i.q, align 8, !tbaa !54
  %i.at = add i32 %i.as, -4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.au = call i64 @lseek(i32 noundef range(i32 0, -1) %i.g, i64 noundef 0, i32 noundef 1) #11
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 256, ptr noundef nonnull @.str.58, ptr noundef %i.i, i64 noundef %i.au) #11 ; 0 uses
  %i.aw = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.c, i32 noundef 577, i32 noundef 384) #11 ; 8 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59) #11
  br label %ppt_unlzw.exit.thread.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %1, align 8, !tbaa !55
  %i.ay = call i32 @llvm.umin.i32(i32 %i.at, i32 8192) ; 5 uses
  store i32 %i.ay, ptr %i.s, align 8, !tbaa !58
  %i.az = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.a, i32 noundef %i.ay) #11
  %.not.i26.i = icmp eq i32 %i.az, %i.ay
  br i1 %.not.i26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = call i32 @close(i32 noundef %i.aw) #11  ; 0 uses
  %i.bb = call i32 @unlink(ptr noundef nonnull %i.c) #11 ; 0 uses
  br label %ppt_unlzw.exit.thread.i

bb.o:                                             ; preds = %bb.m
  %i.bc = sub i32 %i.at, %i.ay
  %i.bd = call i32 @inflateInit_(ptr noundef nonnull %1, ptr noundef nonnull @.str.60, i32 noundef 112) #11 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not28.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %i.bd) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.b, ptr %i.t, align 8, !tbaa !59
  store i32 8192, ptr %i.u, align 8, !tbaa !60
  br label %bb.r

thread-pre-split.i.i:                             ; preds = %bb.z
  %.pr.i.i = load i32, ptr %i.u, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i.i, %bb.q
  %i.be = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ 8192, %bb.q ]
  %.024.i.i = phi i32 [ %.125.i.i, %thread-pre-split.i.i ], [ %i.bc, %bb.q ] ; 3 uses
  %.0.i27.i = phi i32 [ %.1.i.i, %thread-pre-split.i.i ], [ %i.ay, %bb.q ]
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bg = call i32 @cli_writen(i32 noundef %i.aw, ptr noundef nonnull %i.b, i32 noundef 8192) #11
  %.not29.i.i = icmp eq i32 %i.bg, 8192
  br i1 %.not29.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = call i32 @close(i32 noundef %i.aw) #11  ; 0 uses
  %i.bi = call i32 @inflateEnd(ptr noundef nonnull %1) #11 ; 0 uses
  br label %ppt_unlzw.exit.thread.i

bb.u:                                             ; preds = %bb.s
  store ptr %i.b, ptr %i.t, align 8, !tbaa !59
  store i32 8192, ptr %i.u, align 8, !tbaa !60
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !58
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  store ptr %i.a, ptr %1, align 8, !tbaa !55
  %i.bl = call i32 @llvm.umin.i32(i32 %.024.i.i, i32 8192) ; 3 uses
  store i32 %i.bl, ptr %i.s, align 8, !tbaa !58
  %i.bm = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.a, i32 noundef %i.bl) #11
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.not30.i.i = icmp eq i64 %i.bn, %i.bp
  br i1 %.not30.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = call i32 @close(i32 noundef %i.aw) #11  ; 0 uses
  %i.br = call i32 @inflateEnd(ptr noundef nonnull %1) #11 ; 0 uses
  br label %ppt_unlzw.exit.thread.i

bb.y:                                             ; preds = %bb.w
  %i.bs = sub i32 %.024.i.i, %i.bo
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.125.i.i = phi i32 [ %i.bs, %bb.y ], [ %.024.i.i, %bb.v ]
  %.1.i.i = phi i32 [ %i.bl, %bb.y ], [ %.0.i27.i, %bb.v ] ; 3 uses
  %i.bt = call i32 @inflate(ptr noundef nonnull %1, i32 noundef 0) #11
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %thread-pre-split.i.i, label %bb.aa, !llvm.loop !61

bb.aa:                                            ; preds = %bb.z
  %i.bv = call i32 @cli_writen(i32 noundef %i.aw, ptr noundef nonnull %i.b, i32 noundef %.1.i.i) #11
  %.not31.i.i = icmp eq i32 %i.bv, %.1.i.i
  br i1 %.not31.i.i, label %ppt_unlzw.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = call i32 @close(i32 noundef %i.aw) #11  ; 0 uses
  %i.bx = call i32 @inflateEnd(ptr noundef nonnull %1) #11 ; 0 uses
  br label %ppt_unlzw.exit.thread.i

ppt_unlzw.exit.thread.i:                          ; preds = %bb.ab, %bb.x, %bb.t, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit32.i

ppt_unlzw.exit.i:                                 ; preds = %bb.aa
  %i.by = call i32 @inflateEnd(ptr noundef nonnull %1) #11 ; 0 uses
  %i.bz = call i32 @close(i32 noundef %i.aw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not24.i = icmp eq i32 %i.bz, 0
  br i1 %.not24.i, label %.loopexit32.i, label %bb.ad

.loopexit32.i:                                    ; preds = %ppt_unlzw.exit.i, %ppt_unlzw.exit.thread.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51) #11
  %i.ca = call i32 @cli_rmdirs(ptr noundef %i.i) #11 ; 0 uses
  call void @free(ptr noundef %i.i) #11
  br label %ppt_stream_iter.exit

bb.ac:                                            ; preds = %bb.h
  %i.cb = call i64 @lseek(i32 noundef range(i32 0, -1) %i.g, i64 noundef 0, i32 noundef 1) #11
  %i.cc = load i32, ptr %i.q, align 8, !tbaa !54
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nsw i64 %i.cb, %i.cd                ; 2 uses
  %i.cf = call i64 @lseek(i32 noundef range(i32 0, -1) %i.g, i64 noundef %i.ce, i32 noundef 0) #11
  %.not22.i = icmp eq i64 %i.cf, %i.ce
  br i1 %.not22.i, label %bb.ad, label %ppt_stream_iter.exit

bb.ad:                                            ; preds = %bb.ac, %ppt_unlzw.exit.i
  %i.cg = call i64 @lseek(i32 noundef range(i32 0, -1) %i.g, i64 noundef 0, i32 noundef 1) #11
  store i64 %i.cg, ptr %2, align 8, !tbaa !48
  %i.ch = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.l, i32 noundef 2) #11
  %.not.i.i = icmp eq i32 %i.ch, 2
  br i1 %.not.i.i, label %bb.e, label %ppt_read_atom_header.exit.thread.i, !llvm.loop !62

ppt_stream_iter.exit:                             ; preds = %bb.ac, %bb.d, %ppt_read_atom_header.exit.thread.i, %bb.g, %bb.j, %.loopexit32.i
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.j ], [ null, %.loopexit32.i ], [ %i.i, %ppt_read_atom_header.exit.thread.i ], [ %i.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.ci = call i32 @close(i32 noundef %i.g) #11   ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %ppt_stream_iter.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.0.i, %ppt_stream_iter.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @wm_dir_read(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i16, align 2                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 9 uses
  %i.e = alloca i16, align 2                      ; 6 uses
  %i.f = alloca i8, align 1                       ; 13 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %1 = alloca %struct.mso_fib_tag, align 4        ; 4 uses
  %i.h = alloca [257 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 256, ptr noundef nonnull @.str.19, ptr noundef %0) #11 ; 0 uses
  %i.j = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.h, i32 noundef 0) #11 ; 48 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #11
  br label %bb.bt

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef 280, i32 noundef 0) #11
  %.not.i = icmp eq i64 %i.l, 280
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.n = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.j, ptr noundef nonnull %i.m, i32 noundef 4) #11
  %.not9.i = icmp eq i32 %i.n, 4
  br i1 %.not9.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.p = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.j, ptr noundef nonnull %i.o, i32 noundef 4) #11
  %.not10.i = icmp eq i32 %i.p, 4
  br i1 %.not10.i, label %wm_read_fib.exit, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.str.63.sink.i = phi ptr [ @.str.63, %bb.d ], [ @.str.62, %bb.c ], [ @.str.63, %bb.e ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.63.sink.i) #11
  %i.q = call i32 @close(i32 noundef %i.j) #11    ; 0 uses
  br label %bb.bt

wm_read_fib.exit:                                 ; preds = %bb.e
  %i.r = load i32, ptr %i.o, align 4, !tbaa !63
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %wm_read_fib.exit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21) #11
  %i.t = call i32 @close(i32 noundef %i.j) #11    ; 0 uses
  br label %bb.bt

bb.h:                                             ; preds = %wm_read_fib.exit
  %i.u = load i32, ptr %i.m, align 4, !tbaa !65
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64, i32 noundef %i.u) #11
  %i.v = load i32, ptr %i.o, align 4, !tbaa !63
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65, i32 noundef %i.v) #11
  %i.w = load i32, ptr %i.m, align 4, !tbaa !65
  %i.x = add i32 %i.w, 1
  %i.y = zext i32 %i.x to i64
  %i.z = call i64 @lseek(i32 noundef %i.j, i64 noundef %i.y, i32 noundef 0) #11
  %i.aa = load i32, ptr %i.m, align 4, !tbaa !65  ; 2 uses
end_hunk_0
