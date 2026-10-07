Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/aof?download=true
inline.NumInlined: 96
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rewriteSortedSetObject:bb.a
  br i1 %.not78, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not79 = icmp eq i32 %i.z, 0
  br i1 %.not79, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.h, %.lr.ph96
  %i.aa = call i64 @rioWriteBulkDouble(ptr noundef %0, double noundef %i.q) #17
  %.not80 = icmp eq i64 %i.aa, 0
  br i1 %.not80, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.critedge
  %.not81 = icmp eq ptr %i.o, null
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !15
  %i.ac = zext i32 %i.ab to i64
  %i.ad = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.o, i64 noundef %i.ac) #17
  %.not83 = icmp eq i64 %i.ad, 0
  br i1 %.not83, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !24
  %i.af = call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.ae) #17
  %.not82 = icmp eq i64 %i.af, 0
  br i1 %.not82, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @zzlNext(ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.ag = add nsw i64 %.05694, 1                  ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 64
  %spec.store.select = select i1 %i.ah, i64 0, i64 %i.ag
  %i.ai = add nsw i64 %.05395, -1
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %.not76 = icmp eq ptr %i.aj, null
  br i1 %.not76, label %.critedge85, label %.lr.ph96, !llvm.loop !214

bb.m:                                             ; preds = %bb.k, %bb.j, %.critedge, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aa

bb.n:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !218
  call void @dictInitIterator(ptr noundef nonnull %3, ptr noundef %i.am) #17
  %i.an = call ptr @dictNext(ptr noundef nonnull %3) #17 ; 2 uses
  %.not90 = icmp eq ptr %i.an, null
  br i1 %.not90, label %.critedge89, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.y
  %i.ao = phi ptr [ %i.bv, %bb.y ], [ %i.an, %bb.n ]
  %.15492 = phi i64 [ %i.bu, %bb.y ], [ %i.e, %bb.n ] ; 2 uses
  %.15791 = phi i64 [ %spec.store.select5, %bb.y ], [ 0, %bb.n ] ; 2 uses
  %i.ap = call ptr @dictGetKey(ptr noundef nonnull %i.ao) #17 ; 2 uses
  %i.aq = call ptr @zslGetNodeElement(ptr noundef %i.ap) #17 ; 6 uses
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !219
  %i.as = icmp eq i64 %.15791, 0
  br i1 %i.as, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph
  %i.at = call i64 @llvm.smin.i64(i64 %.15492, i64 64)
  %i.au = trunc i64 %i.at to i32
  %i.av = shl nsw i32 %i.au, 1
  %i.aw = add nsw i32 %i.av, 2
  %i.ax = sext i32 %i.aw to i64
  %i.ay = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef %i.ax) #17
  %.not69 = icmp eq i64 %i.ay, 0
  br i1 %.not69, label %.critedge89.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.123, i64 noundef 4) #17
  %.not70 = icmp eq i64 %i.az, 0
  br i1 %.not70, label %.critedge89.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not71 = icmp eq i32 %i.ba, 0
  br i1 %.not71, label %.critedge89.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %i.bb = call i64 @rioWriteBulkDouble(ptr noundef %0, double noundef %i.ar) #17
  %.not72 = icmp eq i64 %i.bb, 0
  br i1 %.not72, label %.critedge89.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %i.aq, i64 -1
  %.val.i = load i8, ptr %i.bc, align 1, !tbaa !25 ; 2 uses
  %i.bd = and i8 %.val.i, 7
  switch i8 %i.bd, label %sdslen.exit [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.be = lshr i8 %.val.i, 3
  %i.bf = zext nneg i8 %i.be to i64
  br label %sdslen.exit

bb.u:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds i8, ptr %i.aq, i64 -3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !25
  %i.bi = zext i8 %i.bh to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds i8, ptr %i.aq, i64 -5
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !27
  %i.bl = zext i16 %i.bk to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds i8, ptr %i.aq, i64 -9
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !15
  %i.bo = zext i32 %i.bn to i64
  br label %sdslen.exit

bb.x:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds i8, ptr %i.aq, i64 -17
  %i.bq = load i64, ptr %i.bp, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i = phi i64 [ %i.bq, %bb.x ], [ %i.bf, %bb.t ], [ %i.bi, %bb.u ], [ %i.bl, %bb.v ], [ %i.bo, %bb.w ], [ 0, %bb.s ]
  %i.br = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.aq, i64 noundef %.0.i) #17
  %.not73 = icmp eq i64 %i.br, 0
  br i1 %.not73, label %.critedge89.thread, label %bb.y

bb.y:                                             ; preds = %sdslen.exit
  %i.bs = add nsw i64 %.15791, 1                  ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 64
  %spec.store.select5 = select i1 %i.bt, i64 0, i64 %i.bs
  %i.bu = add nsw i64 %.15492, -1
  %i.bv = call ptr @dictNext(ptr noundef nonnull %3) #17 ; 2 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.critedge89, label %.lr.ph, !llvm.loop !215

.critedge89.thread:                               ; preds = %bb.r, %sdslen.exit, %bb.o, %bb.p, %bb.q
  call void @dictResetIterator(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.aa

.critedge89:                                      ; preds = %bb.y, %bb.n
  call void @dictResetIterator(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2072, ptr noundef nonnull @.str.124) #17
  tail call void @abort() #18
  unreachable

.critedge85:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge85, %.critedge89, %.critedge89.thread, %bb.m
  %.9 = phi i32 [ 0, %.critedge89.thread ], [ 0, %bb.m ], [ 1, %.critedge89 ], [ 1, %.critedge85 ]
  ret i32 %.9
}

declare i64 @zsetLength(ptr noundef) local_unnamed_addr #3

declare ptr @lpSeek(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @lpNext(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lpGetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @zzlGetScore(ptr noundef) local_unnamed_addr #3

declare i64 @rioWriteBulkDouble(ptr noundef, double noundef) local_unnamed_addr #3

declare void @zzlNext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dictNext(ptr noundef) local_unnamed_addr #3

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #3

declare ptr @zslGetNodeElement(ptr noundef) local_unnamed_addr #3

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rewriteHashObject(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.hashTypeIterator, align 8   ; 13 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [22 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.c = tail call i64 @hashTypeLength(ptr noundef %2, i32 noundef 0) #17
  %i.d = tail call i64 @hashTypeGetMinExpire(ptr noundef %2, i32 noundef 0) #17
  %.not = icmp eq i64 %i.d, 281474976710656
  call void @hashTypeInitIterator(ptr noundef nonnull %3, ptr noundef %2) #17
  br i1 %.not, label %.preheader, label %.preheader79

.preheader79:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %4

.preheader:                                       ; preds = %bb.a
  %i.k = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0) #17
  %.not3685 = icmp eq i32 %i.k, -1
  br i1 %.not3685, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.03287 = phi i64 [ %i.y, %bb.g ], [ %i.c, %.preheader ] ; 2 uses
  %.03386 = phi i64 [ %spec.store.select, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %i.l = icmp eq i64 %.03386, 0
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.m = call i64 @llvm.smin.i64(i64 %.03287, i64 64)
  %i.n = trunc i64 %i.m to i32
  %i.o = shl nsw i32 %i.n, 1
  %i.p = add nsw i32 %i.o, 2
  %i.q = sext i32 %i.p to i64
  %i.r = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef %i.q) #17
  %.not37 = icmp eq i64 %i.r, 0
  br i1 %.not37, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.125, i64 noundef 5) #17
  %.not38 = icmp eq i64 %i.s, 0
  br i1 %.not38, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %.not39 = icmp eq i32 %i.t, 0
  br i1 %.not39, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = call fastcc i32 @rioWriteHashIteratorCursor(ptr noundef %0, ptr noundef %3, i32 noundef 1)
  %.not40 = icmp eq i32 %i.u, 0
  br i1 %.not40, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call fastcc i32 @rioWriteHashIteratorCursor(ptr noundef %0, ptr noundef %3, i32 noundef 2)
  %.not41 = icmp eq i32 %i.v, 0
  br i1 %.not41, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i64 %.03386, 1                   ; 2 uses
  %i.x = icmp eq i64 %i.w, 64
  %spec.store.select = select i1 %i.x, i64 0, i64 %i.w
  %i.y = add nsw i64 %.03287, -1
  %i.z = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0) #17
  %.not36 = icmp eq i32 %i.z, -1
  br i1 %.not36, label %.thread, label %.lr.ph, !llvm.loop !220

4:                                                ; preds = %.critedge, %.preheader79
  %5 = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0) #17
  %.not42 = icmp eq i32 %5, -1
  br i1 %.not42, label %.thread, label %bb.h

bb.h:                                             ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.rewriteHashObject.hmsetCmd, i64 16, i1 false)
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !127
  %i.ab = and i64 %i.aa, 2
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.preheader.i, label %.thread.sink.split

.preheader.i:                                     ; preds = %bb.h, %bb.k
  %.02438.i = phi i64 [ %i.am, %bb.k ], [ 15, %bb.h ] ; 3 uses
  %.02537.i = phi ptr [ %i.al, %bb.k ], [ %i.a, %bb.h ] ; 3 uses
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !128 ; 2 uses
  %.not32.not.i = icmp eq i64 %i.ac, 0
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ac, i64 %.02438.i)
  %i.ae = select i1 %.not32.not.i, i64 %.02438.i, i64 %i.ad ; 5 uses
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !129 ; 2 uses
  %.not33.i = icmp eq ptr %i.af, null
  br i1 %.not33.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  call void %i.af(ptr noundef nonnull %0, ptr noundef %.02537.i, i64 noundef %i.ae) #17, !inline_history !2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.i
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.ah = call i64 %i.ag(ptr noundef nonnull %0, ptr noundef %.02537.i, i64 noundef %i.ae) #17, !inline_history !2
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !127
  %i.ak = or i64 %i.aj, 2
  store i64 %i.ak, ptr %i.e, align 8, !tbaa !127
  br label %.thread.sink.split

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.02537.i, i64 %i.ae
  %i.am = sub i64 %.02438.i, %i.ae                ; 2 uses
  %i.an = load i64, ptr %i.i, align 8, !tbaa !131
  %i.ao = add i64 %i.an, %i.ae
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !131
  %.not31.i = icmp eq i64 %i.am, 0
  br i1 %.not31.i, label %rioWrite.exit, label %.preheader.i

rioWrite.exit:                                    ; preds = %bb.k
  %i.ap = call i32 @rioWriteBulkObject(ptr noundef nonnull %0, ptr noundef %1)
  %.not44 = icmp eq i32 %i.ap, 0
  br i1 %.not44, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %rioWrite.exit
  %i.aq = call fastcc i32 @rioWriteHashIteratorCursor(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1)
  %.not45 = icmp eq i32 %i.aq, 0
  br i1 %.not45, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = call fastcc i32 @rioWriteHashIteratorCursor(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 2)
  %.not46 = icmp eq i32 %i.ar, 0
  br i1 %.not46, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr %i.j, align 8, !tbaa !221
  %.not47 = icmp eq i64 %i.as, 281474976710656
  br i1 %.not47, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.b, ptr noundef nonnull align 16 dereferenceable(22) @__const.rewriteHashObject.cmd, i64 22, i1 false)
  %i.at = load i64, ptr %i.e, align 8, !tbaa !127
  %i.au = and i64 %i.at, 2
  %.not.i57 = icmp eq i64 %i.au, 0
  br i1 %.not.i57, label %.preheader.i59, label %.thread73

.preheader.i59:                                   ; preds = %bb.o, %bb.r
  %.02438.i60 = phi i64 [ %i.bf, %bb.r ], [ 21, %bb.o ] ; 3 uses
  %.02537.i61 = phi ptr [ %i.be, %bb.r ], [ %i.b, %bb.o ] ; 3 uses
  %i.av = load i64, ptr %i.f, align 8, !tbaa !128 ; 2 uses
  %.not32.not.i62 = icmp eq i64 %i.av, 0
  %i.aw = call i64 @llvm.umin.i64(i64 %i.av, i64 %.02438.i60)
  %i.ax = select i1 %.not32.not.i62, i64 %.02438.i60, i64 %i.aw ; 5 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !129 ; 2 uses
  %.not33.i63 = icmp eq ptr %i.ay, null
  br i1 %.not33.i63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i59
  call void %i.ay(ptr noundef nonnull %0, ptr noundef %.02537.i61, i64 noundef %i.ax) #17, !inline_history !2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.i59
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.ba = call i64 %i.az(ptr noundef nonnull %0, ptr noundef %.02537.i61, i64 noundef %i.ax) #17, !inline_history !2
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.thread.i65, label %bb.r

.thread.i65:                                      ; preds = %bb.q
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !127
  %i.bd = or i64 %i.bc, 2
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !127
  br label %.thread73

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.02537.i61, i64 %i.ax
  %i.bf = sub i64 %.02438.i60, %i.ax              ; 2 uses
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !131
  %i.bh = add i64 %i.bg, %i.ax
  store i64 %i.bh, ptr %i.i, align 8, !tbaa !131
  %.not31.i64 = icmp eq i64 %i.bf, 0
  br i1 %.not31.i64, label %rioWrite.exit66, label %.preheader.i59

rioWrite.exit66:                                  ; preds = %bb.r
  %i.bi = call i32 @rioWriteBulkObject(ptr noundef nonnull %0, ptr noundef %1)
  %.not49 = icmp eq i32 %i.bi, 0
  br i1 %.not49, label %.thread73, label %bb.s

bb.s:                                             ; preds = %rioWrite.exit66
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !221
  %i.bk = call i64 @rioWriteBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.bj) #17
  %.not50 = icmp eq i64 %i.bk, 0
  br i1 %.not50, label %.thread73, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = call i64 @rioWriteBulkString(ptr noundef nonnull %0, ptr noundef nonnull @.str.126, i64 noundef 6) #17
  %.not51 = icmp eq i64 %i.bl, 0
  br i1 %.not51, label %.thread73, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = call i64 @rioWriteBulkString(ptr noundef nonnull %0, ptr noundef nonnull @.str.127, i64 noundef 1) #17
  %.not52 = icmp eq i64 %i.bm, 0
  br i1 %.not52, label %.thread73, label %bb.v

.thread73:                                        ; preds = %bb.u, %bb.t, %bb.s, %rioWrite.exit66, %bb.o, %.thread.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.thread.sink.split

bb.v:                                             ; preds = %bb.u
  %i.bn = call fastcc i32 @rioWriteHashIteratorCursor(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1)
  %.not53.not = icmp eq i32 %i.bn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %.not53.not, label %.thread.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %4

.thread.sink.split:                               ; preds = %bb.v, %bb.h, %rioWrite.exit, %bb.l, %bb.m, %.thread.i, %.thread73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread

.thread:                                          ; preds = %4, %bb.f, %bb.e, %bb.g, %bb.b, %bb.c, %bb.d, %.thread.sink.split, %.preheader
  %.034 = phi i32 [ 1, %.preheader ], [ 0, %bb.d ], [ 0, %.thread.sink.split ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ], [ 1, %4 ]
  call void @hashTypeResetIterator(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.034
}

declare i64 @hashTypeLength(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @hashTypeGetMinExpire(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @hashTypeInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hashTypeNext(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rioWriteHashIteratorCursor(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !222
  switch i32 %i.g, label %bb.g [
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 -1, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 9223372036854775807, ptr %i.c, align 8, !tbaa !24
  call void @hashTypeCurrentFromListpack(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #17
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 4, !tbaa !15
  %i.j = zext i32 %i.i to i64
  %i.k = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %i.j) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !tbaa !24
  %i.m = call i64 @rioWriteBulkLongLong(ptr noundef %0, i64 noundef %i.l) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi i64 [ %i.k, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @hashTypeCurrentFromHashTable(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null) #17
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.o = load i64, ptr %i.e, align 8, !tbaa !29
  %i.p = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.o) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2101, ptr noundef nonnull @.str.182) #17
  tail call void @abort() #18
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.in = phi i64 [ %.0.in, %bb.e ], [ %i.p, %bb.f ]
  %.1 = trunc i64 %.1.in to i32
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @hashTypeResetIterator(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rioWriteBulkStreamID(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsempty() #17
  %i.b = load i64, ptr %1, align 8, !tbaa !135
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !136
  %i.e = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.a, ptr noundef nonnull @.str.128, i64 noundef %i.b, i64 noundef %i.d) #17 ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !25 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !27
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !15
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ 0, %bb.a ]
  %i.u = tail call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %.0.i) #17
  %i.v = trunc i64 %i.u to i32
  tail call void @sdsfree(ptr noundef nonnull %i.e) #17
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rioWriteStreamPendingEntry(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.streamID, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @streamDecodeID(ptr noundef %5, ptr noundef nonnull %7) #17
  %i.a = call i64 @rioWriteBulkCount(ptr noundef %0, i8 noundef signext 42, i64 noundef 12) #17
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef nonnull @.str.129, i64 noundef 6) #17
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @rioWriteBulkObject(ptr noundef %0, ptr noundef %1)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i64 @rioWriteBulkString(ptr noundef %0, ptr noundef %2, i64 noundef %3) #17
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !138  ; 6 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %.val.i = load i8, ptr %i.k, align 1, !tbaa !25 ; 2 uses
  %i.l = and i8 %.val.i, 7
  switch i8 %i.l, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = lshr i8 %.val.i, 3
  %i.n = zext nneg i8 %i.m to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !25
  %i.q = zext i8 %i.p to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -5
  %i.s = load i16, ptr %i.r, align 1, !tbaa !27
  %i.t = zext i16 %i.s to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 -9
  %i.v = load i32, ptr %i.u, align 1, !tbaa !15
end_hunk_0
