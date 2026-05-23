inline.NumInlined: 93
inline.NumDeleted: 12
begin_hunk_0_@xorStringObjectDigest:bb.a
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
  %i.ae = load i64, ptr %3, align 8               ; 2 uses
  %i.af = trunc i64 %i.ae to i32
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
  %33 = trunc i64 %i.ae to i8
  %trunc = and i8 %33, -16
  switch i8 %trunc, label %bb.z [
    i8 -80, label %bb.k
    i8 112, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  %i.be = call ptr @lpSeek(ptr noundef %i.bd, i64 noundef 0) #24 ; 4 uses
  store ptr %i.be, ptr %i.n, align 8, !tbaa !24
  %.not78 = icmp eq ptr %i.be, null
  br i1 %.not78, label %bb.l, label %bb.m, !prof !26

bb.l:                                             ; preds = %bb.k
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 174)
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bf = call ptr @lpNext(ptr noundef %i.bd, ptr noundef nonnull %i.be) #24 ; 2 uses
  store ptr %i.bf, ptr %i.o, align 8, !tbaa !24
  %.not79 = icmp eq ptr %i.bf, null
  br i1 %.not79, label %bb.n, label %.lr.ph109, !prof !26

.lr.ph109:                                        ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 176)
  unreachable

bb.o:                                             ; preds = %.lr.ph109, %bb.r
  %i.bk = phi ptr [ %i.be, %.lr.ph109 ], [ %i.cq, %bb.r ]
  %i.bl = call ptr @lpGetValue(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #24 ; 2 uses
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.bn = call double @zzlGetScore(ptr noundef %i.bm) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  %.not81 = icmp eq ptr %i.bl, null
  br i1 %.not81, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.p, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  call void @SHA1Init(ptr noundef nonnull %12) #24
  call void @SHA1Update(ptr noundef nonnull %12, ptr noundef nonnull %i.bl, i32 noundef %i.bo) #24
  call void @SHA1Final(ptr noundef nonnull %i.i, ptr noundef nonnull %12) #24
  %i.bp = load <16 x i8>, ptr %i.i, align 16, !tbaa !13
  %i.bq = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.br = xor <16 x i8> %i.bq, %i.bp
  store <16 x i8> %i.br, ptr %i.m, align 16, !tbaa !13
  %i.bs = load <4 x i8>, ptr %i.bg, align 16, !tbaa !13
  %i.bt = load <4 x i8>, ptr %i.bh, align 16, !tbaa !13
  %i.bu = xor <4 x i8> %i.bt, %i.bs
  store <4 x i8> %i.bu, ptr %i.bh, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @SHA1Init(ptr noundef nonnull %23) #24
  call void @SHA1Update(ptr noundef nonnull %23, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bv = load i64, ptr %i.q, align 8, !tbaa !27
  %i.bw = call i32 @ll2string(ptr noundef nonnull %i.l, i64 noundef 128, i64 noundef %i.bv) #24 ; 0 uses
  %i.bx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  call void @SHA1Init(ptr noundef nonnull %11) #24
  %i.by = trunc i64 %i.bx to i32
  call void @SHA1Update(ptr noundef nonnull %11, ptr noundef nonnull %i.l, i32 noundef %i.by) #24
  call void @SHA1Final(ptr noundef nonnull %i.h, ptr noundef nonnull %11) #24
  %i.bz = load <16 x i8>, ptr %i.h, align 16, !tbaa !13
  %i.ca = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.cb = xor <16 x i8> %i.ca, %i.bz
  store <16 x i8> %i.cb, ptr %i.m, align 16, !tbaa !13
  %i.cc = load <4 x i8>, ptr %i.bi, align 16, !tbaa !13
  %i.cd = load <4 x i8>, ptr %i.bh, align 16, !tbaa !13
  %i.ce = xor <4 x i8> %i.cd, %i.cc
  store <4 x i8> %i.ce, ptr %i.bh, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @SHA1Init(ptr noundef nonnull %22) #24
  call void @SHA1Update(ptr noundef nonnull %22, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cf = call i32 @fpconv_dtoa(double noundef %i.bn, ptr noundef nonnull %i.l) #24
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.l, i64 %i.cg
  store i8 0, ptr %i.ch, align 1, !tbaa !13
  %i.ci = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @SHA1Init(ptr noundef nonnull %10) #24
  %i.cj = trunc i64 %i.ci to i32
  call void @SHA1Update(ptr noundef nonnull %10, ptr noundef nonnull %i.l, i32 noundef %i.cj) #24
  call void @SHA1Final(ptr noundef nonnull %i.g, ptr noundef nonnull %10) #24
  %i.ck = load <16 x i8>, ptr %i.g, align 16, !tbaa !13
  %i.cl = load <16 x i8>, ptr %i.m, align 16, !tbaa !13
  %i.cm = xor <16 x i8> %i.cl, %i.ck
  store <16 x i8> %i.cm, ptr %i.m, align 16, !tbaa !13
  %i.cn = load <4 x i8>, ptr %i.bj, align 16, !tbaa !13
  %i.co = load <4 x i8>, ptr %i.bh, align 16, !tbaa !13
  %i.cp = xor <4 x i8> %i.co, %i.cn
  store <4 x i8> %i.cp, ptr %i.bh, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @SHA1Init(ptr noundef nonnull %21) #24
  call void @SHA1Update(ptr noundef nonnull %21, ptr noundef nonnull %i.m, i32 noundef 20) #24
  call void @SHA1Final(ptr noundef nonnull %i.m, ptr noundef nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @xorDigest(ptr noundef %2, ptr noundef nonnull %i.m, i64 noundef 20)
  call void @zzlNext(ptr noundef %i.bd, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #24
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !24  ; 2 uses
  %.not80 = icmp eq ptr %i.cq, null
  br i1 %.not80, label %._crit_edge110, label %bb.o, !llvm.loop !29

._crit_edge110:                                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  br label %bb.aa

bb.s:                                             ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30
  call void @dictInitIterator(ptr noundef nonnull %28, ptr noundef %i.ct) #24
  %i.cu = call ptr @dictNext(ptr noundef nonnull %28) #24 ; 2 uses
  %.not77104 = icmp eq ptr %i.cu, null
  br i1 %.not77104, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph106, %sdslen.exit87
  %i.cy = phi ptr [ %i.cu, %.lr.ph106 ], [ %i.ej, %sdslen.exit87 ]
  %i.cz = call ptr @dictGetKey(ptr noundef nonnull %i.cy) #24 ; 2 uses
  %i.da = call ptr @zslGetNodeElement(ptr noundef %i.cz) #24 ; 6 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !34
  %i.dc = call i32 @fpconv_dtoa(double noundef %i.db, ptr noundef nonnull %i.l) #24
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.l, i64 %i.dd
  store i8 0, ptr %i.de, align 1, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  %i.df = getelementptr i8, ptr %i.da, i64 -1
  %.val.i85 = load i8, ptr %i.df, align 1, !tbaa !13 ; 2 uses
  %i.dg = and i8 %.val.i85, 7
  switch i8 %i.dg, label %sdslen.exit87 [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.dh = lshr i8 %.val.i85, 3
  %i.di = zext nneg i8 %i.dh to i64
  br label %sdslen.exit87

bb.v:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = zext i8 %i.dk to i64
  br label %sdslen.exit87

bb.w:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds i8, ptr %i.da, i64 -5
  %i.dn = load i16, ptr %i.dm, align 1, !tbaa !17
  %i.do = zext i16 %i.dn to i64
  br label %sdslen.exit87

bb.x:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds i8, ptr %i.da, i64 -9
  %i.dq = load i32, ptr %i.dp, align 1, !tbaa !9
  %i.dr = zext i32 %i.dq to i64
  br label %sdslen.exit87

bb.y:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds i8, ptr %i.da, i64 -17
  %i.dt = load i64, ptr %i.ds, align 1, !tbaa !19
  br label %sdslen.exit87

end_hunk_0
begin_hunk_1_@debugCommand:bb.a
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6872), align 8, !tbaa !128
  %i.dm = tail call i32 @loadAppendOnlyFiles(ptr noundef %i.dl) #24
  tail call void @unprotectClient(ptr noundef nonnull %0) #24
  %i.dn = and i32 %i.dm, -3
  %or.cond.not = icmp eq i32 %i.dn, 0
  br i1 %or.cond.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.158) #24
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  tail call void @applyAppendOnlyConfig() #24
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !129
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.dp = icmp sgt i32 %i.do, 2
  br i1 %i.dp, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.159) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.dq = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dq) #24
  br label %.loopexit

bb.bd:                                            ; preds = %bb.at
  %i.dr = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.160) #25
  %.not595 = icmp eq i32 %i.dr, 0
  %or.cond720 = and i1 %i.ay, %.not595
  br i1 %or.cond720, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !103
  %i.du = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.dt, ptr noundef nonnull %i.e, ptr noundef null) #24
  %.not596 = icmp eq i32 %i.du, 0
  br i1 %.not596, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dv = load i64, ptr %i.e, align 8, !tbaa !19
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8320), align 8, !tbaa !130
  %i.dx = load ptr, ptr @shared, align 8, !tbaa !104
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dx) #24
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.loopexit

bb.bh:                                            ; preds = %bb.bd
  %i.dy = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.161) #25
  %.not597 = icmp eq i32 %i.dy, 0
  %or.cond721 = and i1 %i.ay, %.not597
  br i1 %or.cond721, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !131
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !103
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.ef = tail call ptr @dbFind(ptr noundef %i.ea, ptr noundef %i.ee) #24 ; 9 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.eh) #24
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bi
  %i.ei = load i64, ptr %i.ef, align 8
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = lshr i32 %i.ej, 4
  %i.el = and i32 %i.ek, 15
  %i.em = tail call ptr @strEncoding(i32 noundef %i.el) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(138) %i.f, i8 0, i64 138, i1 false)
  %i.en = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.eo = and i64 %i.en, 240
  %i.ep = icmp eq i64 %i.eo, 144
  br i1 %i.ep, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !14 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !19
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 138, ptr noundef nonnull @.str.162, i64 noundef %i.et) #24 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.f, i64 %i.ev ; 2 uses
  %i.ex = sub nsw i32 138, %i.eu                  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !19
  %i.fa = uitofp i64 %i.ez to double
  %i.fb = load i64, ptr %i.es, align 8, !tbaa !19
  %i.fc = uitofp i64 %i.fb to double
  %i.fd = fdiv double %i.fa, %i.fc
  %i.fe = sext i32 %i.ex to i64
  %i.ff = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ew, i64 noundef %i.fe, ptr noundef nonnull @.str.163, double noundef %i.fd) #24 ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.ew, i64 %i.fg ; 2 uses
  %i.fi = sub nsw i32 %i.ex, %i.ff                ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 40 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = shl i64 %i.fl, 48
  %i.fn = ashr exact i64 %i.fm, 48
  %i.fo = trunc nsw i64 %i.fn to i32
  %i.fp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fh, i64 noundef %i.fj, ptr noundef nonnull @.str.164, i32 noundef %i.fo) #24 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fh, i64 %i.fq ; 2 uses
  %i.fs = sub nsw i32 %i.fi, %i.fp                ; 2 uses
  %i.ft = load i64, ptr %i.fk, align 8
  %i.fu = and i64 %i.ft, 4294901760
  %i.fv = icmp ne i64 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %i.fx = sext i32 %i.fs to i64
  %i.fy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fr, i64 noundef %i.fx, ptr noundef nonnull @.str.165, i32 noundef %i.fw) #24 ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fr, i64 %i.fz
  %i.gb = sub nsw i32 %i.fs, %i.fy
  %.0534780 = load ptr, ptr %i.er, align 8, !tbaa !133 ; 2 uses
  %.not598781 = icmp eq ptr %.0534780, null
  br i1 %.not598781, label %._crit_edge786, label %.lr.ph785

._crit_edge786:                                   ; preds = %.lr.ph785, %bb.bl
  %.0533.lcssa = phi i64 [ 0, %bb.bl ], [ %i.gg, %.lr.ph785 ]
  %i.gc = sext i32 %i.gb to i64
  %i.gd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ga, i64 noundef %i.gc, ptr noundef nonnull @.str.166, i64 noundef %.0533.lcssa) #24 ; 0 uses
  %.pre847 = load i64, ptr %i.ef, align 8
  br label %bb.bm

.lr.ph785:                                        ; preds = %bb.bl, %.lr.ph785
  %.0534783 = phi ptr [ %.0534, %.lr.ph785 ], [ %.0534780, %bb.bl ] ; 2 uses
  %.0533782 = phi i64 [ %i.gg, %.lr.ph785 ], [ 0, %bb.bl ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0534783, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !135
  %i.gg = add i64 %i.gf, %.0533782                ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0534783, i64 8
  %.0534 = load ptr, ptr %i.gh, align 8, !tbaa !133 ; 2 uses
  %.not598 = icmp eq ptr %.0534, null
  br i1 %.not598, label %._crit_edge786, label %.lr.ph785, !llvm.loop !137

bb.bm:                                            ; preds = %._crit_edge786, %bb.bk
  %i.gi = phi i64 [ %.pre847, %._crit_edge786 ], [ %i.en, %bb.bk ]
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = lshr i32 %i.gj, 8
  %i.gl = and i32 %i.gk, 8388607
  %i.gm = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !103
  %i.gp = load ptr, ptr %i.dz, align 8, !tbaa !131
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 72
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !50
  %i.gs = tail call i64 @rdbSavedObjectLen(ptr noundef nonnull %i.ef, ptr noundef %i.go, i32 noundef %i.gr) #24
  %i.gt = load i64, ptr %i.ef, align 8
  %i.gu = lshr i64 %i.gt, 40
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  %i.gw = tail call i64 @estimateObjectIdleTime(ptr noundef nonnull %i.ef) #24
  %i.gx = udiv i64 %i.gw, 1000
  call void (ptr, ptr, ...) @addReplyStatusFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, ptr noundef nonnull %i.ef, i32 noundef %i.gl, ptr noundef %i.em, i64 noundef %i.gs, i32 noundef %i.gv, i64 noundef %i.gx, ptr noundef nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bh
  %i.gy = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.168) #25
  %.not599 = icmp eq i32 %i.gy, 0
  %or.cond722 = and i1 %i.ay, %.not599
  br i1 %or.cond722, label %bb.bo, label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !131
  %i.hb = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !103
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !14
  %i.hf = tail call ptr @dbFind(ptr noundef %i.ha, ptr noundef %i.he) #24 ; 6 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.hh) #24
  br label %.loopexit

bb.bq:                                            ; preds = %bb.bo
  %i.hi = tail call ptr @kvobjGetKey(ptr noundef nonnull %i.hf) #24 ; 2 uses
  %i.hj = load i64, ptr %i.hf, align 8            ; 2 uses
  %i.hk = and i64 %i.hj, 15
  %.not600 = icmp eq i64 %i.hk, 0
  br i1 %.not600, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %4 = trunc i64 %i.hj to i8
  switch i8 %4, label %bb.bs [
    i8 0, label %bb.bt
    i8 -128, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br, %bb.bq
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #24
  br label %.loopexit

bb.bt:                                            ; preds = %bb.br, %bb.br
  %i.hl = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.hf) #24
  %i.hm = load i64, ptr %i.hf, align 8
  %i.hn = and i64 %i.hm, 240
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !14 ; 3 uses
  br i1 %i.ho, label %bb.bu, label %._crit_edge844

bb.bu:                                            ; preds = %bb.bt
  %i.hr = tail call fastcc i64 @sdsAllocSize(ptr noundef %i.hq)
  br label %._crit_edge844

._crit_edge844:                                   ; preds = %bb.bt, %bb.bu
  %i.hs = phi i64 [ %i.hr, %bb.bu ], [ 0, %bb.bt ]
  %i.ht = tail call fastcc i64 @sdslen(ptr noundef %i.hi)
  %i.hu = tail call fastcc i64 @sdsavail(ptr noundef %i.hi)
  %i.hv = tail call fastcc i64 @sdslen(ptr noundef %i.hq)
  %i.hw = tail call fastcc i64 @sdsavail(ptr noundef %i.hq)
  tail call void (ptr, ptr, ...) @addReplyStatusFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.170, i64 noundef %i.ht, i64 noundef %i.hu, i64 noundef %i.hl, i64 noundef %i.hv, i64 noundef %i.hw, i64 noundef %i.hs) #24
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bn
  %i.hx = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.171) #25
  %.not601 = icmp eq i32 %i.hx, 0
  %or.cond723 = and i1 %i.ay, %.not601
  br i1 %or.cond723, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.hy = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !103
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  %i.ib = tail call ptr @kvobjCommandLookupOrReply(ptr noundef nonnull %0, ptr noundef %i.hz, ptr noundef %i.ia) #24 ; 3 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.id = load i64, ptr %i.ib, align 8
  %i.ie = trunc i64 %i.id to i32
  %i.if = lshr i32 %i.ie, 4
  %i.ig = and i32 %i.if, 15                       ; 2 uses
  %.off = add nsw i32 %i.ig, -11
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.172) #24
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bx
  %i.ih = icmp eq i32 %i.ig, 11
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ih, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !138
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.sink = phi ptr [ %i.il, %bb.ca ], [ %i.ij, %bb.bz ]
  tail call void @lpRepr(ptr noundef %.sink) #24
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef nonnull @.str.173) #24
  br label %.loopexit

bb.cc:                                            ; preds = %bb.bv
  %i.im = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.174) #25
  %.not604 = icmp eq i32 %i.im, 0
  %.off687 = add i32 %i.s, -3                     ; 2 uses
  %switch688 = icmp ult i32 %.off687, 2
  %or.cond724 = and i1 %switch688, %.not604
  br i1 %or.cond724, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.in = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !103
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  %i.iq = tail call ptr @kvobjCommandLookupOrReply(ptr noundef nonnull %0, ptr noundef %i.io, ptr noundef %i.ip) #24 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %.loopexit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.is = load i32, ptr %i.r, align 8, !tbaa !106
  %i.it = icmp eq i32 %i.is, 4
  br i1 %i.it, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.iu = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !103
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !14
  %i.iz = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.iy, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.ja = trunc i64 %i.iz to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.0535 = phi i32 [ %i.ja, %bb.cf ], [ 0, %bb.ce ]
  %i.jb = load i64, ptr %i.iq, align 8
  %i.jc = and i64 %i.jb, 240
  %.not605 = icmp eq i64 %i.jc, 144
  br i1 %.not605, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.175) #24
  br label %.loopexit

bb.ci:                                            ; preds = %bb.cg
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !14
  tail call void @quicklistRepr(ptr noundef %i.je, i32 noundef %.0535) #24
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef nonnull @.str.176) #24
  br label %.loopexit

bb.cj:                                            ; preds = %bb.cc
  %i.jf = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.177) #25
  %.not606 = icmp eq i32 %i.jf, 0
  %or.cond = icmp ult i32 %.off687, 3
  %or.cond756.a = and i1 %or.cond, %.not606
  br i1 %or.cond756.a, label %bb.ck, label %bb.dc

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !103
  %i.ji = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.jh, ptr noundef nonnull %i.g, ptr noundef null) #24
  %.not607 = icmp eq i32 %i.ji, 0
  br i1 %.not607, label %bb.cl, label %bb.db

bb.cl:                                            ; preds = %bb.ck
  %i.jj = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !142
  %.not608 = icmp eq i32 %i.jj, 0
  br i1 %.not608, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.jk = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2480), align 8, !tbaa !143
  %.not609 = icmp eq i32 %i.jk, 0
  br i1 %.not609, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.jl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 248), align 8, !tbaa !144
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.jl) #24
  br label %bb.db

bb.co:                                            ; preds = %bb.cm
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !131
  %i.jo = load i64, ptr %i.g, align 8, !tbaa !19
  %i.jp = call i32 @dbExpand(ptr noundef %i.jn, i64 noundef %i.jo, i32 noundef 1) #24
  %i.jq = icmp eq i32 %i.jp, -1
  br i1 %i.jq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.178) #24
  br label %bb.db

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i64 0, ptr %i.j, align 8, !tbaa !19
  %i.jr = load i32, ptr %i.r, align 8, !tbaa !106
  %i.js = icmp eq i32 %i.jr, 5
  br i1 %i.js, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jt = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !103
  %i.jw = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.jv, ptr noundef nonnull %i.j, ptr noundef null) #24
  %.not610 = icmp eq i32 %i.jw, 0
  br i1 %.not610, label %bb.cs, label %bb.da

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.jx = load i64, ptr %i.g, align 8, !tbaa !19
  %i.jy = icmp sgt i64 %i.jx, 0
  br i1 %i.jy, label %.lr.ph778, label %._crit_edge779

.lr.ph778:                                        ; preds = %bb.cs, %bb.cz
  %.0536776 = phi i64 [ %i.la, %bb.cz ], [ 0, %bb.cs ] ; 3 uses
  %i.jz = load i32, ptr %i.r, align 8, !tbaa !106
  %i.ka = icmp eq i32 %i.jz, 3
  br i1 %i.ka, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph778
  %i.kb = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !103
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !14
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph778, %bb.ct
end_hunk_1
begin_hunk_2_@debugCommand:bb.a
bb.ff:                                            ; preds = %bb.ez
  %i.vb = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.217) #25
  %.not639 = icmp eq i32 %i.vb, 0
  %or.cond732 = and i1 %i.ay, %.not639
  br i1 %or.cond732, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.vc = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !103
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !14
  %i.vg = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.vf, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.vh = trunc i64 %i.vg to i32
  store i32 %i.vh, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6456), align 8, !tbaa !154
  %i.vi = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.vi) #24
  br label %.loopexit

bb.fh:                                            ; preds = %bb.ff
  %i.vj = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.218) #25
  %.not640 = icmp eq i32 %i.vj, 0
  %or.cond733 = and i1 %i.ay, %.not640
  br i1 %or.cond733, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.vk = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !103
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !14
  %i.vo = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.vn, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.vp = trunc i64 %i.vo to i32
  store i32 %i.vp, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6744), align 8, !tbaa !155
  %i.vq = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.vq) #24
  br label %.loopexit

bb.fj:                                            ; preds = %bb.fh
  %i.vr = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.219) #25
  %.not641 = icmp eq i32 %i.vr, 0
  %i.vs = icmp sgt i32 %i.s, 2                    ; 6 uses
  %or.cond734 = and i1 %i.vs, %.not641
  br i1 %or.cond734, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.vt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !156
  %i.vu = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.vv = add nsw i32 %i.s, -2
  tail call void @replicationFeedSlaves(ptr noundef %i.vt, i32 noundef -1, ptr noundef nonnull %i.vu, i32 noundef %i.vv) #24
  %i.vw = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.vw) #24
  br label %.loopexit

bb.fl:                                            ; preds = %bb.fj
  %i.vx = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.220) #25
  %.not642 = icmp eq i32 %i.vx, 0
  %or.cond735 = and i1 %i.ay, %.not642
  br i1 %or.cond735, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.vy = tail call ptr @sdsnewlen(ptr noundef nonnull @.str.221, i64 noundef 1) #24
  %i.vz = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !103
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !14
  %i.we = tail call ptr @sdscatsds(ptr noundef %i.vy, ptr noundef %i.wd) #24
  %i.wf = tail call ptr @sdsmapchars(ptr noundef %i.we, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223, i64 noundef 2) #24
  %i.wg = tail call ptr @sdscatlen(ptr noundef %i.wf, ptr noundef nonnull @.str.224, i64 noundef 2) #24
  tail call void @addReplySds(ptr noundef nonnull %0, ptr noundef %i.wg) #24
  br label %.loopexit

bb.fn:                                            ; preds = %bb.fl
  %i.wh = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.225) #25
  %.not643 = icmp ne i32 %i.wh, 0
  %brmerge737 = or i1 %i.t, %.not643
  br i1 %brmerge737, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.wi = tail call ptr @sdsempty() #24
  %i.wj = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wi, ptr noundef nonnull @.str.226, i32 noundef 64) #24
  %i.wk = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wj, ptr noundef nonnull @.str.227, i32 noundef 16) #24
  %i.wl = tail call i64 @dictEntryMemUsage(i32 noundef 0) #24
  %i.wm = trunc i64 %i.wl to i32
  %i.wn = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wk, ptr noundef nonnull @.str.228, i32 noundef %i.wm) #24
  %i.wo = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wn, ptr noundef nonnull @.str.229, i32 noundef 1) #24
  %i.wp = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wo, ptr noundef nonnull @.str.230, i32 noundef 3) #24
  %i.wq = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wp, ptr noundef nonnull @.str.231, i32 noundef 5) #24
  %i.wr = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wq, ptr noundef nonnull @.str.232, i32 noundef 9) #24
  %i.ws = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wr, ptr noundef nonnull @.str.233, i32 noundef 17) #24
  tail call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %i.ws) #24
  br label %.loopexit

bb.fp:                                            ; preds = %bb.fn
  %i.wt = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.234) #25
  %.not644 = icmp eq i32 %i.wt, 0
  %or.cond738 = and i1 %i.vs, %.not644
  br i1 %or.cond738, label %bb.fq, label %bb.fy

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  %i.wu = tail call ptr @sdsempty() #24           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  %i.wv = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !103
  %i.wy = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.wx, ptr noundef nonnull %i.o, ptr noundef null) #24
  %.not645 = icmp eq i32 %i.wy, 0
  br i1 %.not645, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @sdsfree(ptr noundef %i.wu) #24
  br label %bb.fx

bb.fs:                                            ; preds = %bb.fq
  %i.wz = load i64, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.xa = icmp sgt i64 %i.wz, -1
  %i.xb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %i.xc = sext i32 %i.xb to i64
  %.not646 = icmp slt i64 %i.wz, %i.xc
  %or.cond685 = select i1 %i.xa, i1 %.not646, i1 false
  br i1 %or.cond685, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @sdsfree(ptr noundef %i.wu) #24
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.235) #24
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fs
  %i.xd = load i32, ptr %i.r, align 8, !tbaa !106
  %i.xe = icmp sgt i32 %i.xd, 3
  br i1 %i.xe, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.xf = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !103
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !14
  %i.xk = call i32 @strcasecmp(ptr noundef %i.xj, ptr noundef nonnull @.str.236) #25
  %.not647 = icmp eq i32 %i.xk, 0
  %spec.select = zext i1 %.not647 to i32
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.0532 = phi i32 [ %spec.select, %bb.fv ], [ 0, %bb.fu ] ; 2 uses
  %i.xl = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.wu, ptr noundef nonnull @.str.237) #24
  %i.xm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !99
  %i.xn = load i64, ptr %i.o, align 8, !tbaa !19
  %i.xo = getelementptr inbounds [96 x i8], ptr %i.xm, i64 %i.xn
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !100
  call void @kvstoreGetStats(ptr noundef %i.xp, ptr noundef nonnull %i.p, i64 noundef 4096, i32 noundef %.0532) #24
  %i.xq = call ptr @sdscat(ptr noundef %i.xl, ptr noundef nonnull %i.p) #24
  %i.xr = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.xq, ptr noundef nonnull @.str.238) #24
  %i.xs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !99
  %i.xt = load i64, ptr %i.o, align 8, !tbaa !19
  %i.xu = getelementptr inbounds [96 x i8], ptr %i.xs, i64 %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !157
  call void @kvstoreGetStats(ptr noundef %i.xw, ptr noundef nonnull %i.p, i64 noundef 4096, i32 noundef %.0532) #24
  %i.xx = call ptr @sdscat(ptr noundef %i.xr, ptr noundef nonnull %i.p) #24 ; 3 uses
  %i.xy = call fastcc i64 @sdslen(ptr noundef %i.xx)
  call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef %i.xx, i64 noundef %i.xy, ptr noundef nonnull @.str.210) #24
  call void @sdsfree(ptr noundef %i.xx) #24
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.ft, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  br label %.loopexit

bb.fy:                                            ; preds = %bb.fp
  %i.xz = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.239) #25
  %.not648 = icmp eq i32 %i.xz, 0
  %or.cond739 = and i1 %i.vs, %.not648
  br i1 %or.cond739, label %bb.fz, label %bb.gh

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.ay, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ya = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !103
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !14
  %i.ye = tail call i32 @strcasecmp(ptr noundef %i.yd, ptr noundef nonnull @.str.236) #25
  %.not650 = icmp eq i32 %i.ye, 0
  %spec.select686 = zext i1 %.not650 to i32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.0530 = phi i32 [ %spec.select686, %bb.ga ], [ 0, %bb.fz ]
  %i.yf = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !103
  %i.yh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  %i.yi = tail call ptr @kvobjCommandLookupOrReply(ptr noundef nonnull %0, ptr noundef %i.yg, ptr noundef %i.yh) #24 ; 4 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %.loopexit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.yk = load i64, ptr %i.yi, align 8
  %5 = trunc i64 %i.yk to i8
  %trunc = and i8 %5, -16
  switch i8 %trunc, label %.thread703 [
    i8 112, label %bb.gd
    i8 32, label %bb.ge
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !14
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.0531.in = phi ptr [ %i.yn, %bb.ge ], [ %i.ym, %bb.gd ]
  %.0531 = load ptr, ptr %.0531.in, align 8, !tbaa !158 ; 2 uses
  %i.yo = icmp eq ptr %.0531, null
  br i1 %i.yo, label %.thread703, label %bb.gg

.thread703:                                       ; preds = %bb.gc, %bb.gf
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.240) #24
  br label %.loopexit

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  call void @dictGetStats(ptr noundef nonnull %i.q, i64 noundef 4096, ptr noundef nonnull %.0531, i32 noundef %.0530) #24
  %i.yp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #25
  call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i64 noundef %i.yp, ptr noundef nonnull @.str.210) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  br label %.loopexit

bb.gh:                                            ; preds = %bb.fy
  %i.yq = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.241) #25
  %.not651 = icmp eq i32 %i.yq, 0
  br i1 %.not651, label %bb.gi, label %bb.gm

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.t, label %.thread707, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.yr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.ys = icmp sgt i32 %i.yr, 2
  br i1 %i.ys, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.242) #24
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  tail call void @changeReplicationId() #24
  tail call void @clearReplicationId2() #24
  %i.yt = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.yt) #24
  br label %.loopexit

bb.gm:                                            ; preds = %bb.gh
  %i.yu = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.243) #25
  %.not652 = icmp ne i32 %i.yu, 0
  %brmerge741 = or i1 %i.t, %.not652
  br i1 %brmerge741, label %.thread707, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.yv = tail call i32 @stringmatchlen_fuzz_test() #24 ; 0 uses
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef nonnull @.str.244) #24
  br label %.loopexit

.thread707:                                       ; preds = %bb.gm, %bb.gi
  %i.yw = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.245) #25
  %.not653 = icmp eq i32 %i.yw, 0
  %or.cond742 = and i1 %i.ay, %.not653
  br i1 %or.cond742, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.thread707
  %i.yx = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !103
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !14
  %i.zb = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.za, ptr noundef null, i32 noundef 10) #24, !inline_history !141
  %i.zc = trunc i64 %i.zb to i32
  store i32 %i.zc, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8348), align 4, !tbaa !159
  %i.zd = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.zd) #24
  br label %.loopexit

bb.gp:                                            ; preds = %.thread707
  %i.ze = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.246) #25
  %.not654 = icmp eq i32 %i.ze, 0
  br i1 %.not654, label %bb.gq, label %bb.gu

bb.gq:                                            ; preds = %bb.gp
  br i1 %i.t, label %.thread710, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.zf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !160
  %i.zg = tail call i32 @rewriteConfig(ptr noundef %i.zf, i32 noundef 1) #24
  %i.zh = icmp eq i32 %i.zg, -1
  br i1 %i.zh, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.zi = tail call ptr @__errno_location() #28
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !9
  %i.zk = tail call ptr @strerror(i32 noundef %i.zj) #24
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.247, ptr noundef %i.zk) #24
  br label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.zl = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.zl) #24
  br label %.loopexit

bb.gu:                                            ; preds = %bb.gp
  %i.zm = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.248) #25
  %.not655 = icmp ne i32 %i.zm, 0
  %brmerge744 = or i1 %i.t, %.not655
  br i1 %brmerge744, label %.thread710, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.zn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161
  %.not656 = icmp eq ptr %i.zn, null
  br i1 %.not656, label %bb.gw, label %.peel.next

bb.gw:                                            ; preds = %bb.gv
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.249) #24
  br label %.loopexit

.peel.next:                                       ; preds = %bb.gv
  %i.zo = tail call ptr @sdsempty() #24
  %i.zp = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zo, ptr noundef nonnull @.str.250) #24
  %i.zq = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zp, ptr noundef nonnull @.str.253, i64 noundef 32767) #24
  %.pre836 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161 ; 2 uses
  %.pre839 = load ptr, ptr %.pre836, align 8, !tbaa !162
  %.phi.trans.insert840 = getelementptr inbounds nuw i8, ptr %.pre839, i64 40
  %.pre841 = load i64, ptr %.phi.trans.insert840, align 8, !tbaa !164
  %.phi.trans.insert837 = getelementptr inbounds nuw i8, ptr %.pre836, i64 8
  %.pre838 = load i64, ptr %.phi.trans.insert837, align 8, !tbaa !166
  %i.zr = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zq, ptr noundef nonnull @.str.254, i64 noundef %.pre838, i64 noundef %.pre841) #24
  br label %bb.gx

.loopexit806.peel.begin:                          ; preds = %bb.gx
  %i.zs = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aao, ptr noundef nonnull @.str.251, i64 noundef 4294967296) #24
  %i.zt = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zs, ptr noundef nonnull @.str.252) #24
  %i.zu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161
  %i.zv = getelementptr inbounds nuw [16 x i8], ptr %i.zu, i64 %indvars.iv.next ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !166
  %i.zy = load ptr, ptr %i.zv, align 8, !tbaa !162
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 40
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !164
  %i.aab = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.zt, ptr noundef nonnull @.str.254, i64 noundef %i.zx, i64 noundef %i.aaa) #24 ; 3 uses
  %i.aac = tail call fastcc i64 @sdslen(ptr noundef %i.aab)
  tail call void @addReplyVerbatim(ptr noundef %0, ptr noundef %i.aab, i64 noundef %i.aac, ptr noundef nonnull @.str.210) #24
  tail call void @sdsfree(ptr noundef %i.aab) #24
  br label %.loopexit

bb.gx:                                            ; preds = %bb.gx, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.gx ] ; 4 uses
  %.0527765 = phi ptr [ %i.zr, %.peel.next ], [ %i.aao, %bb.gx ]
  %i.aad = shl nuw nsw i64 16384, %indvars.iv
  %i.aae = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0527765, ptr noundef nonnull @.str.251, i64 noundef %i.aad) #24
  %notmask = shl nsw i64 -32768, %indvars.iv
  %i.aaf = xor i64 %notmask, -1
  %i.aag = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aae, ptr noundef nonnull @.str.253, i64 noundef %i.aaf) #24
  %i.aah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1512), align 8, !tbaa !161
  %i.aai = getelementptr inbounds nuw [16 x i8], ptr %i.aah, i64 %indvars.iv ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !166
  %i.aal = load ptr, ptr %i.aai, align 8, !tbaa !162
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 40
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !164
  %i.aao = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aag, ptr noundef nonnull @.str.254, i64 noundef %i.aak, i64 noundef %i.aan) #24 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %.loopexit806.peel.begin, label %bb.gx, !llvm.loop !167

.thread710:                                       ; preds = %bb.gu, %bb.gq
  %i.aap = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.255) #25
  %.not657 = icmp eq i32 %i.aap, 0
  %or.cond745 = and i1 %i.vs, %.not657
  br i1 %or.cond745, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.thread710
  %i.aaq = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aar = add nsw i32 %i.s, -2
  tail call void @mallctl_int(ptr noundef nonnull %0, ptr noundef nonnull %i.aaq, i32 noundef %i.aar)
  br label %.loopexit

bb.gz:                                            ; preds = %.thread710
  %i.aas = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.256) #25
  %.not658 = icmp eq i32 %i.aas, 0
  %or.cond746 = and i1 %i.vs, %.not658
  br i1 %or.cond746, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aat = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aau = add nsw i32 %i.s, -2
  tail call void @mallctl_string(ptr noundef nonnull %0, ptr noundef nonnull %i.aat, i32 noundef %i.aau)
  br label %.loopexit

bb.hb:                                            ; preds = %bb.gz
  %i.aav = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.257) #25
  %.not659 = icmp eq i32 %i.aav, 0
  %or.cond747 = and i1 %i.ay, %.not659
end_hunk_2
begin_hunk_3_@removeSigSegvHandlers:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 -1073741824, ptr %i.c, align 8, !tbaa !91
  store ptr null, ptr %0, align 8, !tbaa !13
  %i.d = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.e = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.f = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.g = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  %i.h = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef null) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bugReportEnd(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sigaction, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @serverLogRawFromHandler(i32 noundef 1027, ptr noundef nonnull @.str.341) #24
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6528), align 8, !tbaa !94
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6520), align 8
  %i.d = icmp eq i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 144), align 8 ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %or.cond3 = select i1 %or.cond, i1 %i.f, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @unlink(ptr noundef nonnull %i.e) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7132), align 4, !tbaa !95
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !96
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  tail call void @_exit(i32 noundef 1) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @abort() #26
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = call i32 @sigemptyset(ptr noundef nonnull %i.k) #24 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 0, ptr %i.m, align 8, !tbaa !91
  store ptr null, ptr %2, align 8, !tbaa !13
  %i.n = call i32 @sigaction(i32 noundef %1, ptr noundef nonnull %2, ptr noundef null) #24 ; 0 uses
  %i.o = call i32 @getpid() #24
  %i.p = call i32 @kill(i32 noundef %i.o, i32 noundef %1) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_serverAssertPrintClientInfo(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %1 = alloca %struct.cmdToken, align 8           ; 7 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %1, i8 0, i64 1032, i1 false)
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @bug_report_start_mutex) #24 ; 0 uses
  %.b.i = load i1, ptr @bug_report_start, align 4
  br i1 %.b.i, label %bugReportStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @bug_report_start, align 4
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.298) #24
  br label %bugReportStart.exit

bugReportStart.exit:                              ; preds = %bb.a, %bb.b
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bug_report_start_mutex) #24 ; 0 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %.thread46, label %bb.c

bb.c:                                             ; preds = %bugReportStart.exit
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.284) #24
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.g = icmp sgt i32 %.pr, 3
  br i1 %i.g, label %.thread46, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !148
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.285, i64 noundef %i.i) #24
  %.pr43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.j = icmp sgt i32 %.pr43, 3
  br i1 %i.j, label %.thread46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread44, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !185
  br label %.thread44

.thread44:                                        ; preds = %bb.f, %bb.e
  %i.p = phi i32 [ %i.o, %bb.f ], [ -1, %bb.e ]
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 31, ptr noundef nonnull @.str.348, i32 noundef %i.p) #24 ; 0 uses
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.286, ptr noundef nonnull %i.a) #24
  %.pr45.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.r = icmp sgt i32 %.pr45.pr, 3
  br i1 %i.r, label %.thread46, label %bb.g

bb.g:                                             ; preds = %.thread44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !106
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.287, i32 noundef %i.t) #24
  br label %.thread46

.thread46:                                        ; preds = %bb.c, %bugReportStart.exit, %bb.d, %.thread44, %bb.g
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !175
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.thread46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !106
  %i.z = call ptr @lookupCommand(ptr noundef %i.w, i32 noundef %i.y) #24 ; 4 uses
  %.not39 = icmp eq ptr %i.z, null
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.z, i64 152
  %.val = load i32, ptr %i.aa, align 8, !tbaa !187
  %i.ab = getelementptr i8, ptr %i.z, i64 168
  %.val42 = load ptr, ptr %i.ab, align 8, !tbaa !193
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store i32 0, ptr %i.ac, align 8, !tbaa !194
  call fastcc void @cmdTokenCollect(ptr noundef nonnull %1, ptr noundef readonly %.val42, i32 noundef %.val)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.thread46
  %.035 = phi ptr [ %i.z, %bb.i ], [ null, %bb.h ], [ null, %.thread46 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !106
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.ag = icmp ne ptr %.035, null
  %i.ah = getelementptr inbounds nuw i8, ptr %.035, i64 296
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !175
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = icmp ne i64 %indvars.iv, 0
  %or.cond = and i1 %i.ao, %i.an
  br i1 %or.cond, label %bb.l, label %cmdTokenCheck.exit

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i64 %indvars.iv, 1
  %or.cond3 = and i1 %i.ag, %i.ap
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !196
  %.not40 = icmp eq ptr %i.aq, null
  br i1 %.not40, label %bb.n, label %cmdTokenCheck.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = and i64 %i.au, 15
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %2 = trunc i64 %i.au to i8
  switch i8 %2, label %.loopexit [
    i8 0, label %bb.p
    i8 -128, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  br i1 %i.al, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.r, !llvm.loop !197

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.ba = call i32 @strcasecmp(ptr noundef %i.az, ptr noundef %i.ax) #25
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %cmdTokenCheck.exit, label %bb.q

.loopexit:                                        ; preds = %bb.q, %bb.o, %bb.n, %bb.p
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.bd = icmp sgt i32 %i.bc, 3
  br i1 %i.bd, label %bb.x, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.288, i32 noundef %i.be) #24
  br label %bb.x

cmdTokenCheck.exit:                               ; preds = %bb.r, %bb.m, %bb.k
  %i.bf = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = and i64 %i.bi, 15
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %cmdTokenCheck.exit._crit_edge

bb.t:                                             ; preds = %cmdTokenCheck.exit
  %3 = trunc i64 %i.bi to i8
  switch i8 %3, label %cmdTokenCheck.exit._crit_edge [
    i8 0, label %bb.u
    i8 -128, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !14
  br label %bb.v

cmdTokenCheck.exit._crit_edge:                    ; preds = %bb.t, %cmdTokenCheck.exit
  %4 = trunc i64 %i.bi to i32                     ; 2 uses
  %5 = and i32 %4, 15
  %6 = lshr i32 %4, 4
  %i.bn = and i32 %6, 15
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.289, i32 noundef %5, i32 noundef %i.bn) #24 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %cmdTokenCheck.exit._crit_edge
  %.0 = phi ptr [ %i.bm, %bb.u ], [ %i.b, %cmdTokenCheck.exit._crit_edge ]
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.bq = icmp sgt i32 %i.bp, 3
  br i1 %i.bq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !103
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = and i32 %i.bw, 8388607
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.290, i32 noundef %i.by, ptr noundef %.0, i32 noundef %i.bx) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.ad, align 8, !tbaa !106
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %bb.k, label %._crit_edge, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.x, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare ptr @lookupCommand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @serverLogObjectDebugInfo(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.b = icmp sgt i32 %i.a, 3
  br i1 %i.b, label %.thread4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 15
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.291, i32 noundef %i.e) #24
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.f = icmp sgt i32 %.pr, 3
  br i1 %i.f, label %.thread4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.i, 15
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.292, i32 noundef %i.j) #24
  %.pr3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.k = icmp sgt i32 %.pr3, 3
  br i1 %i.k, label %.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 8
  %i.o = and i32 %i.n, 8388607
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.293, i32 noundef %i.o) #24
  br label %.thread4

.thread4:                                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_serverAssertPrintObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @bug_report_start_mutex) #24 ; 0 uses
  %.b.i = load i1, ptr @bug_report_start, align 4
  br i1 %.b.i, label %bugReportStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @bug_report_start, align 4
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.298) #24
  br label %bugReportStart.exit

bugReportStart.exit:                              ; preds = %bb.a, %bb.b
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bug_report_start_mutex) #24 ; 0 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %serverLogObjectDebugInfo.exit, label %bb.c

bb.c:                                             ; preds = %bugReportStart.exit
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.294) #24
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.e = icmp sgt i32 %.pr, 3
  br i1 %i.e, label %serverLogObjectDebugInfo.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %0, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 15
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.291, i32 noundef %i.h) #24
  %.pr.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.i = icmp sgt i32 %.pr.i, 3
  br i1 %i.i, label %serverLogObjectDebugInfo.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %0, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 4
  %i.m = and i32 %i.l, 15
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.292, i32 noundef %i.m) #24
  %.pr3.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.n = icmp sgt i32 %.pr3.i, 3
  br i1 %i.n, label %serverLogObjectDebugInfo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %0, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.q, 8388607
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.293, i32 noundef %i.r) #24
  br label %serverLogObjectDebugInfo.exit

serverLogObjectDebugInfo.exit:                    ; preds = %bugReportStart.exit, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

declare void @serverLogRaw(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @logStackContent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !175
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 16 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %.loopexit, label %.preheader.split.1

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.f = icmp sgt i32 %i.e, 2
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.299) #24
  br label %.loopexit

.preheader.split.1:                               ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.b, 15
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.300, i64 noundef %i.j, i64 noundef %i.i) #24
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.k = icmp sgt i32 %.pre, 3
  br i1 %i.k, label %.loopexit, label %.preheader.split.2

.preheader.split.2:                               ; preds = %.preheader.split.1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.b, 14
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.300, i64 noundef %i.o, i64 noundef %i.n) #24
  %.pre10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.p = icmp sgt i32 %.pre10, 3
  br i1 %i.p, label %.loopexit, label %.preheader.split.3

.preheader.split.3:                               ; preds = %.preheader.split.2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.b, 13
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.300, i64 noundef %i.t, i64 noundef %i.s) #24
  %.pre11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.u = icmp sgt i32 %.pre11, 3
  br i1 %i.u, label %.loopexit, label %.preheader.split.4

.preheader.split.4:                               ; preds = %.preheader.split.3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_3
begin_hunk_4_@genClusterDebugString:bb.a
  ret ptr %i.f
}

declare ptr @genClusterInfoString() local_unnamed_addr #2

declare ptr @clusterGenNodesDescription(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @logServerInfo() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [1 x ptr], align 8                ; 5 uses
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.308) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = tail call ptr @createStringObject(ptr noundef nonnull @.str.309, i64 noundef 3) #24
  store ptr %i.d, ptr %i.c, align 8, !tbaa !103
  %i.e = call ptr @genInfoSectionDict(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24 ; 2 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !9
  %i.g = load i32, ptr %i.b, align 4, !tbaa !9
  %i.h = call ptr @genRedisInfoString(ptr noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #24 ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !209
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @genClusterInfoString() #24     ; 2 uses
  %i.k = call ptr @clusterGenNodesDescription(ptr noundef null, i32 noundef 0, i32 noundef 0) #24 ; 2 uses
  %i.l = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.h, ptr noundef nonnull @.str.306) #24
  %i.m = call ptr @sdscatsds(ptr noundef %i.l, ptr noundef %i.j) #24
  %i.n = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.m, ptr noundef nonnull @.str.307) #24
  %i.o = call ptr @sdscatsds(ptr noundef %i.n, ptr noundef %i.k) #24
  call void @sdsfree(ptr noundef %i.j) #24
  call void @sdsfree(ptr noundef %i.k) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.o, %bb.b ], [ %i.h, %bb.a ]  ; 2 uses
  call void @serverLogRaw(i32 noundef 1027, ptr noundef %.0) #24
  call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.310) #24
  %i.p = call ptr @getAllClientsInfoString(i32 noundef -1) #24 ; 2 uses
  call void @serverLogRaw(i32 noundef 1027, ptr noundef %i.p) #24
  call void @sdsfree(ptr noundef %.0) #24
  call void @sdsfree(ptr noundef %i.p) #24
  call void @releaseInfoSectionDict(ptr noundef %i.e) #24
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !103
  call void @decrRefCount(ptr noundef %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare ptr @genInfoSectionDict(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @genRedisInfoString(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @getAllClientsInfoString(i32 noundef) local_unnamed_addr #2

declare void @releaseInfoSectionDict(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @logConfigDebugInfo() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getConfigDebugInfo() #24  ; 2 uses
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.311) #24
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef %i.a) #24
  tail call void @sdsfree(ptr noundef %i.a) #24
  ret void
}

declare ptr @getConfigDebugInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @logModulesInfo() local_unnamed_addr #0 {
bb.a:
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef nonnull @.str.312) #24
  %i.a = tail call ptr @sdsempty() #24
  %i.b = tail call ptr @modulesCollectInfo(ptr noundef %i.a, ptr noundef null, i32 noundef 1, i32 noundef 0) #24 ; 2 uses
  tail call void @serverLogRaw(i32 noundef 1027, ptr noundef %i.b) #24
  tail call void @sdsfree(ptr noundef %i.b) #24
  ret void
}

declare ptr @modulesCollectInfo(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @logCurrentClient(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cmdToken, align 8           ; 7 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %2, i8 0, i64 1032, i1 false)
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.c = icmp sgt i32 %i.b, 3
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1027, ptr noundef nonnull @.str.313, ptr noundef %1) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call ptr @sdsempty() #24
  %i.e = tail call ptr @catClientInfoString(ptr noundef %i.d, ptr noundef nonnull %0) #24 ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1027, ptr noundef nonnull @.str.314, ptr noundef %i.e) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @sdsfree(ptr noundef %i.e) #24
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1027, ptr noundef nonnull @.str.315, i32 noundef %i.k) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !175
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !106
  %i.q = tail call ptr @lookupCommand(ptr noundef %i.n, i32 noundef %i.p) #24 ; 4 uses
  %.not49 = icmp eq ptr %i.q, null
  br i1 %.not49, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %i.q, i64 152
  %.val = load i32, ptr %i.r, align 8, !tbaa !187
  %i.s = getelementptr i8, ptr %i.q, i64 168
  %.val55 = load ptr, ptr %i.s, align 8, !tbaa !193
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  store i32 0, ptr %i.t, align 8, !tbaa !194
  call fastcc void @cmdTokenCollect(ptr noundef nonnull %2, ptr noundef readonly %.val55, i32 noundef %.val)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.044 = phi ptr [ %i.q, %bb.j ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !106
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit68.thread

.lr.ph:                                           ; preds = %bb.k
  %i.x = icmp ne ptr %.044, null
  %i.y = getelementptr inbounds nuw i8, ptr %.044, i64 296
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %wide.trip.count.i = zext nneg i32 %i.ab to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 7 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !175
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = icmp ne i64 %indvars.iv, 0
  %or.cond = and i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.m, label %cmdTokenCheck.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq i64 %indvars.iv, 1
  %or.cond3 = and i1 %i.x, %i.ag
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !196
  %.not50 = icmp eq ptr %i.ah, null
  br i1 %.not50, label %bb.o, label %cmdTokenCheck.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !103 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = and i64 %i.al, 15
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %3 = trunc i64 %i.al to i8
  switch i8 %3, label %.loopexit [
    i8 0, label %bb.q
    i8 -128, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  br i1 %i.ac, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.s, !llvm.loop !197

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = tail call i32 @strcasecmp(ptr noundef %i.aq, ptr noundef %i.ao) #25
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %cmdTokenCheck.exit, label %bb.r

.loopexit:                                        ; preds = %bb.r, %bb.p, %bb.o, %bb.q
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1027, ptr noundef nonnull @.str.316, i32 noundef %i.av) #24
  br label %bb.ag

cmdTokenCheck.exit:                               ; preds = %bb.s, %bb.n, %bb.l
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !103
  %i.az = tail call ptr @getDecodedObject(ptr noundef %i.ay) #24 ; 3 uses
  %i.ba = tail call ptr @sdsempty() #24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14 ; 9 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %.val.i = load i8, ptr %i.bd, align 1, !tbaa !13 ; 2 uses
  %i.be = and i8 %.val.i, 7                       ; 2 uses
  switch i8 %i.be, label %sdslen.exit58 [
    i8 4, label %bb.w
    i8 3, label %bb.v
    i8 2, label %bb.u
    i8 0, label %bb.x
    i8 1, label %bb.y
  ]

bb.u:                                             ; preds = %cmdTokenCheck.exit
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -5
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !17
  %i.bh = zext i16 %i.bg to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %cmdTokenCheck.exit
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 -9
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !9
  %i.bk = zext i32 %i.bj to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %cmdTokenCheck.exit
  %i.bl = getelementptr inbounds i8, ptr %i.bc, i64 -17
  %i.bm = load i64, ptr %i.bl, align 1, !tbaa !19
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.u, %bb.v, %bb.w
  %.0.i = phi i64 [ %i.bm, %bb.w ], [ %i.bh, %bb.u ], [ %i.bk, %bb.v ]
  %i.bn = icmp ult i64 %.0.i, 1024
  br i1 %i.bn, label %sdslen.exit.thread, label %sdslen.exit58

sdslen.exit.thread:                               ; preds = %sdslen.exit
  switch i8 %i.be, label %default.unreachable [
    i8 4, label %bb.ab
    i8 3, label %bb.aa
    i8 2, label %bb.z
  ]

bb.x:                                             ; preds = %cmdTokenCheck.exit
  %i.bo = lshr i8 %.val.i, 3
  %i.bp = zext nneg i8 %i.bo to i64
  br label %sdslen.exit58

bb.y:                                             ; preds = %cmdTokenCheck.exit
  %i.bq = getelementptr inbounds i8, ptr %i.bc, i64 -3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = zext i8 %i.br to i64
  br label %sdslen.exit58

bb.z:                                             ; preds = %sdslen.exit.thread
  %i.bt = getelementptr inbounds i8, ptr %i.bc, i64 -5
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !17
  %i.bv = zext i16 %i.bu to i64
  br label %sdslen.exit58

bb.aa:                                            ; preds = %sdslen.exit.thread
  %i.bw = getelementptr inbounds i8, ptr %i.bc, i64 -9
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !9
  %i.by = zext i32 %i.bx to i64
  br label %sdslen.exit58

bb.ab:                                            ; preds = %sdslen.exit.thread
  %i.bz = getelementptr inbounds i8, ptr %i.bc, i64 -17
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !19
  br label %sdslen.exit58

default.unreachable:                              ; preds = %sdslen.exit.thread
  unreachable

sdslen.exit58:                                    ; preds = %cmdTokenCheck.exit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %sdslen.exit
  %i.cb = phi i64 [ 1024, %sdslen.exit ], [ %i.ca, %bb.ab ], [ %i.bp, %bb.x ], [ %i.bs, %bb.y ], [ %i.bv, %bb.z ], [ %i.by, %bb.aa ], [ 0, %cmdTokenCheck.exit ]
  %i.cc = tail call ptr @sdscatrepr(ptr noundef %i.ba, ptr noundef nonnull %i.bc, i64 noundef %i.cb) #24 ; 3 uses
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.ce = icmp sgt i32 %i.cd, 3
  br i1 %i.ce, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %sdslen.exit58
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1027, ptr noundef nonnull @.str.317, i32 noundef %i.cf, ptr noundef %i.cc) #24
  br label %bb.ad

bb.ad:                                            ; preds = %sdslen.exit58, %bb.ac
  %i.cg = load ptr, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.ch = tail call i32 @strcasecmp(ptr noundef %i.cg, ptr noundef nonnull @.str.318) #25
  %.not52 = icmp eq i32 %i.ch, 0
  br i1 %.not52, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = tail call i32 @strcasecmp(ptr noundef %i.cg, ptr noundef nonnull @.str.319) #25
  %.not53 = icmp eq i32 %i.ci, 0
  br i1 %.not53, label %bb.af, label %.thread

.thread:                                          ; preds = %bb.ae
  tail call void @sdsfree(ptr noundef %i.cc) #24
  tail call void @decrRefCount(ptr noundef nonnull %i.az) #24
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ae
  tail call void @sdsfree(ptr noundef %i.cc) #24
  tail call void @decrRefCount(ptr noundef nonnull %i.az) #24
  %.pr = load i32, ptr %i.u, align 8, !tbaa !106
  br label %.loopexit68

bb.ag:                                            ; preds = %.thread, %bb.t, %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %i.u, align 8, !tbaa !106 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %bb.l, label %.loopexit68, !llvm.loop !210

.loopexit68:                                      ; preds = %bb.ag, %bb.af
  %i.cm = phi i32 [ %.pr, %bb.af ], [ %i.cj, %bb.ag ]
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.ah, label %.loopexit68.thread

bb.ah:                                            ; preds = %.loopexit68
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !119
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !103
  %i.cs = tail call ptr @getDecodedObject(ptr noundef %i.cr) #24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !131
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.cx = tail call ptr @dbFind(ptr noundef %i.cu, ptr noundef %i.cw) #24 ; 4 uses
  %.not54 = icmp eq ptr %i.cx, null
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.cz = icmp sgt i32 %i.cy, 3
  %or.cond67 = select i1 %.not54, i1 true, i1 %i.cz
  br i1 %or.cond67, label %serverLogObjectDebugInfo.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !14 ; 2 uses
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !175
  %.not.i59 = icmp eq i32 %i.db, 0
  %.not2.i = icmp eq ptr %i.da, null
  %i.dc = select i1 %.not2.i, ptr @.str.365, ptr %i.da
  %i.dd = select i1 %.not.i59, ptr %i.dc, ptr @.str.364
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.320, ptr noundef nonnull %i.dd) #24
  %.pr64 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.de = icmp sgt i32 %.pr64, 3
  br i1 %i.de, label %serverLogObjectDebugInfo.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = load i64, ptr %i.cx, align 8
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 15
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.291, i32 noundef %i.dh) #24
  %.pr.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.di = icmp sgt i32 %.pr.i, 3
  br i1 %i.di, label %serverLogObjectDebugInfo.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = load i64, ptr %i.cx, align 8
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = lshr i32 %i.dk, 4
end_hunk_4
