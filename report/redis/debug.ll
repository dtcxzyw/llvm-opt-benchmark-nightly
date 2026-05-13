inline.NumInlined: 93
inline.NumDeleted: 12
begin_hunk_0_@xorStringObjectDigest:bb.a
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !17
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !19
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.a ]
  tail call void @xorDigest(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %.0.i)
  tail call void @decrRefCount(ptr noundef nonnull %i.a) #24
  ret void
}

declare ptr @getDecodedObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !13   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !17
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

declare void @decrRefCount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mixDigest(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @xorDigest(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  call void @SHA1Init(ptr noundef nonnull %3) #24
  call void @SHA1Update(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef %0, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mixStringObjectDigest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  %i.a = tail call ptr @getDecodedObject(ptr noundef %1) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !13 ; 2 uses
  %i.e = and i8 %.val.i, 7
  switch i8 %i.e, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !17
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !19
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @xorDigest(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %.0.i)
  call void @SHA1Init(ptr noundef nonnull %2) #24
  call void @SHA1Update(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef %0, ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @decrRefCount(ptr noundef nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @xorObjectDigest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %5 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  %i.b = alloca [20 x i8], align 16               ; 5 uses
  %6 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 5 uses
  %7 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  %i.d = alloca [20 x i8], align 16               ; 5 uses
  %8 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  %i.e = alloca [20 x i8], align 16               ; 5 uses
  %9 = alloca %struct.SHA1_CTX, align 4           ; 5 uses
  %i.f = alloca [20 x i8], align 16               ; 5 uses
  %10 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %i.g = alloca [20 x i8], align 16               ; 5 uses
  %11 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %i.h = alloca [20 x i8], align 16               ; 5 uses
  %12 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %i.i = alloca [20 x i8], align 16               ; 5 uses
  %13 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %14 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %15 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %16 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %i.j = alloca [20 x i8], align 16               ; 5 uses
  %17 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %18 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %19 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %20 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %21 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %22 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %23 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %24 = alloca %struct.SHA1_CTX, align 4          ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca [128 x i8], align 16              ; 13 uses
  %25 = alloca %struct.listTypeIterator, align 8  ; 6 uses
  %26 = alloca %struct.listTypeEntry, align 8     ; 5 uses
  %27 = alloca %struct.setTypeIterator, align 8   ; 6 uses
  %i.m = alloca [20 x i8], align 16               ; 28 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %28 = alloca %struct.dictIterator, align 8      ; 6 uses
  %29 = alloca %struct.hashTypeIterator, align 8  ; 9 uses
  %i.r = alloca [20 x i8], align 16               ; 15 uses
  %30 = alloca %struct.streamIterator, align 8    ; 7 uses
  %31 = alloca %struct.streamID, align 8          ; 6 uses
  %i.s = alloca i64, align 8                      ; 8 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %32 = alloca %struct.RedisModuleDigest, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  %i.x = load i64, ptr %3, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = shl i32 %i.y, 24
  %i.aa = and i32 %i.z, 251658240
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @xorDigest(ptr noundef %2, ptr noundef nonnull %i.k, i64 noundef 4)
  call void @SHA1Init(ptr noundef nonnull %24) #24
  call void @SHA1Update(ptr noundef nonnull %24, ptr noundef %2, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef %2, ptr noundef nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ad = call i64 @getExpire(ptr noundef %0, ptr noundef %i.ac, ptr noundef null) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  %i.ae = load i64, ptr %3, align 8
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = and i32 %i.af, 15
  switch i32 %i.ag, label %bb.az [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
    i32 4, label %bb.ab
    i32 6, label %bb.ap
    i32 5, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a
  call void @mixStringObjectDigest(ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @listTypeInitIterator(ptr noundef nonnull %25, ptr noundef nonnull %3, i64 noundef 0, i8 noundef zeroext 1) #24
  %i.ah = call i32 @listTypeNext(ptr noundef nonnull %25, ptr noundef nonnull %26) #24
  %.not83115 = icmp eq i32 %i.ah, 0
  br i1 %.not83115, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.c, %.lr.ph117
  %i.ai = call ptr @listTypeGet(ptr noundef nonnull %26) #24 ; 2 uses
  call void @mixStringObjectDigest(ptr noundef %2, ptr noundef %i.ai)
  call void @decrRefCount(ptr noundef %i.ai) #24
  %i.aj = call i32 @listTypeNext(ptr noundef nonnull %25, ptr noundef nonnull %26) #24
  %.not83 = icmp eq i32 %i.aj, 0
  br i1 %.not83, label %._crit_edge118, label %.lr.ph117, !llvm.loop !21

._crit_edge118:                                   ; preds = %.lr.ph117, %bb.c
  call void @listTypeResetIterator(ptr noundef nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.ba

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @setTypeInitIterator(ptr noundef nonnull %27, ptr noundef nonnull %3) #24
  %i.ak = call ptr @setTypeNextObject(ptr noundef nonnull %27) #24 ; 2 uses
  %.not82111 = icmp eq ptr %i.ak, null
  br i1 %.not82111, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.d, %sdslen.exit
  %i.al = phi ptr [ %i.bb, %sdslen.exit ], [ %i.ak, %bb.d ] ; 7 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %.val.i = load i8, ptr %i.am, align 1, !tbaa !13 ; 2 uses
  %i.an = and i8 %.val.i, 7
  switch i8 %i.an, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %.lr.ph113
  %i.ao = lshr i8 %.val.i, 3
  %i.ap = zext nneg i8 %i.ao to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %.lr.ph113
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 -3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = zext i8 %i.ar to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %.lr.ph113
  %i.at = getelementptr inbounds i8, ptr %i.al, i64 -5
  %i.au = load i16, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i16 %i.au to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %.lr.ph113
  %i.aw = getelementptr inbounds i8, ptr %i.al, i64 -9
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i32 %i.ax to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %.lr.ph113
  %i.az = getelementptr inbounds i8, ptr %i.al, i64 -17
  %i.ba = load i64, ptr %i.az, align 1, !tbaa !19
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph113, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ba, %bb.i ], [ %i.ap, %bb.e ], [ %i.as, %bb.f ], [ %i.av, %bb.g ], [ %i.ay, %bb.h ], [ 0, %.lr.ph113 ]
  call void @xorDigest(ptr noundef %2, ptr noundef nonnull %i.al, i64 noundef %.0.i)
  call void @sdsfree(ptr noundef nonnull %i.al) #24
  %i.bb = call ptr @setTypeNextObject(ptr noundef nonnull %27) #24 ; 2 uses
  %.not82 = icmp eq ptr %i.bb, null
  br i1 %.not82, label %._crit_edge114, label %.lr.ph113, !llvm.loop !23

._crit_edge114:                                   ; preds = %sdslen.exit, %bb.d
  call void @setTypeResetIterator(ptr noundef nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.ba

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  %i.bc = lshr i32 %i.af, 4
  %i.bd = and i32 %i.bc, 15
  switch i32 %i.bd, label %bb.z [
    i32 11, label %bb.k
    i32 7, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  %i.bg = call ptr @lpSeek(ptr noundef %i.bf, i64 noundef 0) #24 ; 4 uses
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !24
  %.not78 = icmp eq ptr %i.bg, null
  br i1 %.not78, label %bb.l, label %bb.m, !prof !26

bb.l:                                             ; preds = %bb.k
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 174)
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bh = call ptr @lpNext(ptr noundef %i.bf, ptr noundef nonnull %i.bg) #24 ; 2 uses
  store ptr %i.bh, ptr %i.o, align 8, !tbaa !24
  %.not79 = icmp eq ptr %i.bh, null
  br i1 %.not79, label %bb.n, label %.lr.ph109, !prof !26

.lr.ph109:                                        ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 176)
  unreachable

bb.o:                                             ; preds = %.lr.ph109, %bb.r
  %i.bm = phi ptr [ %i.bg, %.lr.ph109 ], [ %i.cs, %bb.r ]
  %i.bn = call ptr @lpGetValue(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #24 ; 2 uses
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.bp = call double @zzlGetScore(ptr noundef %i.bo) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  %.not81 = icmp eq ptr %i.bn, null
  br i1 %.not81, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load i32, ptr %i.p, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  call void @SHA1Init(ptr noundef nonnull %12) #24
  call void @SHA1Update(ptr noundef nonnull %12, ptr noundef nonnull %i.bn, i32 noundef %i.bq) #24
  call void @SHA1Final(ptr noundef nonnull %i.i, ptr noundef nonnull %12) #24
  %i.br = load <16 x i8>, ptr %i.i, align 16, !tbaa !13
  %i.bs = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.bt = xor <16 x i8> %i.bs, %i.br
  store <16 x i8> %i.bt, ptr %i.m, align 16, !tbaa !13
  %i.bu = load <4 x i8>, ptr %i.bi, align 16, !tbaa !13
  %i.bv = load <4 x i8>, ptr %i.bj, align 16, !tbaa !13
  %i.bw = xor <4 x i8> %i.bv, %i.bu
  store <4 x i8> %i.bw, ptr %i.bj, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @SHA1Init(ptr noundef nonnull %23) #24
  call void @SHA1Update(ptr noundef nonnull %23, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !27
  %i.by = call i32 @ll2string(ptr noundef nonnull %i.l, i64 noundef 128, i64 noundef %i.bx) #24 ; 0 uses
  %i.bz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  call void @SHA1Init(ptr noundef nonnull %11) #24
  %i.ca = trunc i64 %i.bz to i32
  call void @SHA1Update(ptr noundef nonnull %11, ptr noundef nonnull %i.l, i32 noundef %i.ca) #24
  call void @SHA1Final(ptr noundef nonnull %i.h, ptr noundef nonnull %11) #24
  %i.cb = load <16 x i8>, ptr %i.h, align 16, !tbaa !13
  %i.cc = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.cd = xor <16 x i8> %i.cc, %i.cb
  store <16 x i8> %i.cd, ptr %i.m, align 16, !tbaa !13
  %i.ce = load <4 x i8>, ptr %i.bk, align 16, !tbaa !13
  %i.cf = load <4 x i8>, ptr %i.bj, align 16, !tbaa !13
  %i.cg = xor <4 x i8> %i.cf, %i.ce
  store <4 x i8> %i.cg, ptr %i.bj, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @SHA1Init(ptr noundef nonnull %22) #24
  call void @SHA1Update(ptr noundef nonnull %22, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ch = call i32 @fpconv_dtoa(double noundef %i.bp, ptr noundef nonnull %i.l) #24
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.l, i64 %i.ci
  store i8 0, ptr %i.cj, align 1, !tbaa !13
  %i.ck = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @SHA1Init(ptr noundef nonnull %10) #24
  %i.cl = trunc i64 %i.ck to i32
  call void @SHA1Update(ptr noundef nonnull %10, ptr noundef nonnull %i.l, i32 noundef %i.cl) #24
  call void @SHA1Final(ptr noundef nonnull %i.g, ptr noundef nonnull %10) #24
  %i.cm = load <16 x i8>, ptr %i.g, align 16, !tbaa !13
  %i.cn = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.co = xor <16 x i8> %i.cn, %i.cm
  store <16 x i8> %i.co, ptr %i.m, align 16, !tbaa !13
  %i.cp = load <4 x i8>, ptr %i.bl, align 16, !tbaa !13
  %i.cq = load <4 x i8>, ptr %i.bj, align 16, !tbaa !13
  %i.cr = xor <4 x i8> %i.cq, %i.cp
  store <4 x i8> %i.cr, ptr %i.bj, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @SHA1Init(ptr noundef nonnull %21) #24
  call void @SHA1Update(ptr noundef nonnull %21, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @xorDigest(ptr noundef %2, ptr noundef nonnull %i.m, i64 noundef 20)
  call void @zzlNext(ptr noundef %i.bf, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #24
  %i.cs = load ptr, ptr %i.n, align 8, !tbaa !24  ; 2 uses
  %.not80 = icmp eq ptr %i.cs, null
  br i1 %.not80, label %._crit_edge110, label %bb.o, !llvm.loop !29

._crit_edge110:                                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  br label %bb.aa

bb.s:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30
  call void @dictInitIterator(ptr noundef nonnull %28, ptr noundef %i.cv) #24
  %i.cw = call ptr @dictNext(ptr noundef nonnull %28) #24 ; 2 uses
  %.not77104 = icmp eq ptr %i.cw, null
  br i1 %.not77104, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph106, %sdslen.exit87
  %i.da = phi ptr [ %i.cw, %.lr.ph106 ], [ %i.el, %sdslen.exit87 ]
  %i.db = call ptr @dictGetKey(ptr noundef nonnull %i.da) #24 ; 2 uses
  %i.dc = call ptr @zslGetNodeElement(ptr noundef %i.db) #24 ; 6 uses
  %i.dd = load double, ptr %i.db, align 8, !tbaa !34
  %i.de = call i32 @fpconv_dtoa(double noundef %i.dd, ptr noundef nonnull %i.l) #24
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.l, i64 %i.df
  store i8 0, ptr %i.dg, align 1, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  %i.dh = getelementptr i8, ptr %i.dc, i64 -1
  %.val.i85 = load i8, ptr %i.dh, align 1, !tbaa !13 ; 2 uses
  %i.di = and i8 %.val.i85, 7
  switch i8 %i.di, label %sdslen.exit87 [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.dj = lshr i8 %.val.i85, 3
  %i.dk = zext nneg i8 %i.dj to i64
  br label %sdslen.exit87

bb.v:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds i8, ptr %i.dc, i64 -3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = zext i8 %i.dm to i64
  br label %sdslen.exit87

bb.w:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds i8, ptr %i.dc, i64 -5
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !17
  %i.dq = zext i16 %i.dp to i64
  br label %sdslen.exit87

bb.x:                                             ; preds = %bb.t
  %i.dr = getelementptr inbounds i8, ptr %i.dc, i64 -9
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i32 %i.ds to i64
  br label %sdslen.exit87

bb.y:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds i8, ptr %i.dc, i64 -17
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !19
  br label %sdslen.exit87

sdslen.exit87:                                    ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i86 = phi i64 [ %i.dv, %bb.y ], [ %i.dk, %bb.u ], [ %i.dn, %bb.v ], [ %i.dq, %bb.w ], [ %i.dt, %bb.x ], [ 0, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @SHA1Init(ptr noundef nonnull %9) #24
  %i.dw = trunc i64 %.0.i86 to i32
  call void @SHA1Update(ptr noundef nonnull %9, ptr noundef nonnull %i.dc, i32 noundef %i.dw) #24
  call void @SHA1Final(ptr noundef nonnull %i.f, ptr noundef nonnull %9) #24
  %i.dx = load <16 x i8>, ptr %i.f, align 16, !tbaa !13
  %i.dy = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.dz = xor <16 x i8> %i.dy, %i.dx
  store <16 x i8> %i.dz, ptr %i.m, align 16, !tbaa !13
  %i.ea = load <4 x i8>, ptr %i.cx, align 16, !tbaa !13
  %i.eb = load <4 x i8>, ptr %i.cy, align 16, !tbaa !13
  %i.ec = xor <4 x i8> %i.eb, %i.ea
  store <4 x i8> %i.ec, ptr %i.cy, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @SHA1Init(ptr noundef nonnull %20) #24
  call void @SHA1Update(ptr noundef nonnull %20, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.ed = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @SHA1Init(ptr noundef nonnull %8) #24
  %i.ee = trunc i64 %i.ed to i32
  call void @SHA1Update(ptr noundef nonnull %8, ptr noundef nonnull %i.l, i32 noundef %i.ee) #24
  call void @SHA1Final(ptr noundef nonnull %i.e, ptr noundef nonnull %8) #24
  %i.ef = load <16 x i8>, ptr %i.e, align 16, !tbaa !13
  %i.eg = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.eh = xor <16 x i8> %i.eg, %i.ef
  store <16 x i8> %i.eh, ptr %i.m, align 16, !tbaa !13
  %i.ei = load <4 x i8>, ptr %i.cz, align 16, !tbaa !13
  %i.ej = load <4 x i8>, ptr %i.cy, align 16, !tbaa !13
  %i.ek = xor <4 x i8> %i.ej, %i.ei
  store <4 x i8> %i.ek, ptr %i.cy, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @SHA1Init(ptr noundef nonnull %19) #24
  call void @SHA1Update(ptr noundef nonnull %19, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @xorDigest(ptr noundef %2, ptr noundef nonnull %i.m, i64 noundef 20)
  %i.el = call ptr @dictNext(ptr noundef nonnull %28) #24 ; 2 uses
  %.not77 = icmp eq ptr %i.el, null
  br i1 %.not77, label %._crit_edge107, label %bb.t, !llvm.loop !36

._crit_edge107:                                   ; preds = %sdslen.exit87, %bb.s
  call void @dictResetIterator(ptr noundef nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 213, ptr noundef nonnull @.str.3)
  unreachable

bb.aa:                                            ; preds = %._crit_edge107, %._crit_edge110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  br label %bb.ba

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @hashTypeInitIterator(ptr noundef nonnull %29, ptr noundef nonnull %3) #24
  %i.em = call i32 @hashTypeNext(ptr noundef nonnull %29, i32 noundef 0) #24
  %.not75100 = icmp eq i32 %i.em, -1
  br i1 %.not75100, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph102, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.es = call ptr @hashTypeCurrentObjectNewSds(ptr noundef nonnull %29, i32 noundef 1) #24 ; 7 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -1
  %.val.i88 = load i8, ptr %i.et, align 1, !tbaa !13 ; 2 uses
  %i.eu = and i8 %.val.i88, 7
  switch i8 %i.eu, label %sdslen.exit90 [
    i8 0, label %bb.ad
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ev = lshr i8 %.val.i88, 3
  %i.ew = zext nneg i8 %i.ev to i64
  br label %sdslen.exit90

bb.ae:                                            ; preds = %bb.ac
  %i.ex = getelementptr inbounds i8, ptr %i.es, i64 -3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !13
  %i.ez = zext i8 %i.ey to i64
  br label %sdslen.exit90

bb.af:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds i8, ptr %i.es, i64 -5
  %i.fb = load i16, ptr %i.fa, align 1, !tbaa !17
  %i.fc = zext i16 %i.fb to i64
  br label %sdslen.exit90

bb.ag:                                            ; preds = %bb.ac
  %i.fd = getelementptr inbounds i8, ptr %i.es, i64 -9
  %i.fe = load i32, ptr %i.fd, align 1, !tbaa !9
  %i.ff = zext i32 %i.fe to i64
  br label %sdslen.exit90

bb.ah:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds i8, ptr %i.es, i64 -17
  %i.fh = load i64, ptr %i.fg, align 1, !tbaa !19
  br label %sdslen.exit90

sdslen.exit90:                                    ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.0.i89 = phi i64 [ %i.fh, %bb.ah ], [ %i.ew, %bb.ad ], [ %i.ez, %bb.ae ], [ %i.fc, %bb.af ], [ %i.ff, %bb.ag ], [ 0, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @SHA1Init(ptr noundef nonnull %7) #24
  %i.fi = trunc i64 %.0.i89 to i32
  call void @SHA1Update(ptr noundef nonnull %7, ptr noundef nonnull %i.es, i32 noundef %i.fi) #24
end_hunk_0
