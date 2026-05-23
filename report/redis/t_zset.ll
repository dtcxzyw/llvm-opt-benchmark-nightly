inline.NumInlined: 280
inline.NumDeleted: 31
begin_hunk_0_@zzlInsert:bb.a
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !98

.thread:                                          ; preds = %bb.o, %zzlCompareElements.exit, %zzlGetScore.exit, %bb.a
  %.02841.lcssa51.sink = phi ptr [ null, %bb.a ], [ %.02841, %zzlCompareElements.exit ], [ %.02841, %zzlGetScore.exit ], [ null, %bb.o ]
  %i.at = call fastcc ptr @zzlInsertAt(ptr noundef %0, ptr noundef %.02841.lcssa51.sink, ptr noundef %1, double noundef %2)
  ret ptr %i.at
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zzlInsertAt(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca [2 x %struct.listpackEntry], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = call i32 @double2ll(double noundef %3, ptr noundef nonnull %i.b) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @d2string(ptr noundef nonnull %i.a, i64 noundef 128, double noundef %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %2, ptr %4, align 16, !tbaa !99
  %i.e = getelementptr i8, ptr %2, i64 -1
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !36 ; 2 uses
  %i.f = and i8 %.val.i, 7
  switch i8 %i.f, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i8 %.val.i, 3
  %i.h = zext nneg i8 %i.g to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %2, i64 -3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36
  %i.k = zext i8 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %2, i64 -5
  %i.m = load i16, ptr %i.l, align 1, !tbaa !37
  %i.n = zext i16 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %2, i64 -9
  %i.p = load i32, ptr %i.o, align 1, !tbaa !9
  %i.q = zext i32 %i.p to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %2, i64 -17
  %i.s = load i64, ptr %i.r, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.s, %bb.g ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ 0, %bb.b ]
  %i.t = trunc i64 %.0.i to i32
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.a, ptr %i.v, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.d, ptr %i.w, align 16, !tbaa !101
  br label %bb.m

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %2, ptr %4, align 16, !tbaa !99
  %i.x = getelementptr i8, ptr %2, i64 -1
  %.val.i13 = load i8, ptr %i.x, align 1, !tbaa !36 ; 2 uses
  %i.y = and i8 %.val.i13, 7
  switch i8 %i.y, label %sdslen.exit15 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %.critedge
  %i.z = lshr i8 %.val.i13, 3
  %i.aa = zext nneg i8 %i.z to i64
  br label %sdslen.exit15

bb.i:                                             ; preds = %.critedge
  %i.ab = getelementptr inbounds i8, ptr %2, i64 -3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !36
  %i.ad = zext i8 %i.ac to i64
  br label %sdslen.exit15

bb.j:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -5
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !37
  %i.ag = zext i16 %i.af to i64
  br label %sdslen.exit15

bb.k:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds i8, ptr %2, i64 -9
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i32 %i.ai to i64
  br label %sdslen.exit15

bb.l:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds i8, ptr %2, i64 -17
  %i.al = load i64, ptr %i.ak, align 1, !tbaa !24
  br label %sdslen.exit15

sdslen.exit15:                                    ; preds = %.critedge, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i14 = phi i64 [ %i.al, %bb.l ], [ %i.aa, %bb.h ], [ %i.ad, %bb.i ], [ %i.ag, %bb.j ], [ %i.aj, %bb.k ], [ 0, %.critedge ]
  %i.am = trunc i64 %.0.i14 to i32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.ao, align 8, !tbaa !99
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !102
  br label %bb.m

bb.m:                                             ; preds = %sdslen.exit, %sdslen.exit15
  %i.ar = icmp eq ptr %1, null
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = call ptr @lpBatchAppend(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 2) #17
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.at = call ptr @lpBatchInsert(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 2, ptr noundef null) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.as, %bb.n ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !36   ; 2 uses
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !36
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !37
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zsetLength(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.d [
    i32 11, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = tail call i64 @lpLength(ptr noundef %i.c) #17
  %i.e = lshr i64 %i.d, 1
  %i.f = and i64 %i.e, 4294967295
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.l, %bb.c ]
  ret i64 %.0
}

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i64 @zsetAllocSize(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1393) #17
  tail call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.f [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = tail call i64 @lpBytes(ptr noundef %i.e) #17
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25
  %i.n = add i64 %i.m, 72
  %i.o = tail call i64 @dictMemUsage(ptr noundef %i.i) #17
  %i.p = add i64 %i.n, %i.o
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1403, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ %i.p, %bb.e ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #0

declare i64 @dictMemUsage(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local ptr @zsetTypeCreate(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8, !tbaa !108
  %.not = icmp ugt i64 %0, %i.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7984), align 8
  %.not6 = icmp ugt i64 %1, %i.b
  %or.cond = select i1 %.not, i1 true, i1 %.not6
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @createZsetListpackObject() #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @createZsetObject() #17    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.h = tail call i32 @dictExpand(ptr noundef %i.g, i64 noundef %0) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

declare ptr @createZsetListpackObject() local_unnamed_addr #0

declare ptr @createZsetObject() local_unnamed_addr #0

declare i32 @dictExpand(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zsetTypeMaybeConvert(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 176
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8
  %i.e = icmp ugt i64 %1, %i.d
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef 7, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zsetConvertAndExpand(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = load i64, ptr %0, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i32 %i.j, 4
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.l, label %bb.u [
    i32 11, label %bb.c
    i32 7, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %.not50 = icmp eq i32 %1, 7
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1462, ptr noundef nonnull @.str.9) #17
  tail call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #20 ; 4 uses
  %i.q = tail call ptr @dictCreate(ptr noundef nonnull @zsetDictType) #17 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.r = call ptr @zmalloc_usable(i64 noundef 40, ptr noundef nonnull %i.f) #17 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.t, align 8, !tbaa !23
  %i.u = load i64, ptr %i.f, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.w = call ptr @zmalloc_usable(i64 noundef 528, ptr noundef nonnull %i.e) #17 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.w, i8 0, i64 528, i1 false)
  store i64 2162687, ptr %i.x, align 8, !tbaa !26
  %i.y = load i64, ptr %i.e, align 8, !tbaa !24
  %i.z = load i64, ptr %i.v, align 8, !tbaa !25
  %i.aa = add i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  store ptr %i.w, ptr %i.r, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.ad, align 8, !tbaa !103
  %i.ae = call i32 @dictExpand(ptr noundef %i.q, i64 noundef %2) #17 ; 0 uses
  %i.af = call ptr @lpSeek(ptr noundef %i.o, i64 noundef 0) #17 ; 3 uses
  %.not51 = icmp eq ptr %i.af, null
  br i1 %.not51, label %._crit_edge70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = call ptr @lpNext(ptr noundef %i.o, ptr noundef nonnull %i.af) #17 ; 2 uses
  %.not52 = icmp eq ptr %i.ag, null
  br i1 %.not52, label %bb.g, label %.lr.ph69.preheader, !prof !91

bb.g:                                             ; preds = %bb.f
  call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1474) #17
  call void @abort() #18
  unreachable

.lr.ph69.preheader:                               ; preds = %bb.f, %bb.p
  %.167 = phi ptr [ %i.bg, %bb.p ], [ %i.ag, %bb.f ] ; 2 uses
  %.06166 = phi ptr [ %i.bf, %bb.p ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.ah = call ptr @lpGetValue(ptr noundef nonnull %.167, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.ah, null
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph69.preheader
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.ai, i32 127)
  %i.aj = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull readonly align 1 %i.ah, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  store i8 0, ptr %i.ak, align 1, !tbaa !36
  %i.al = call double @fast_float_strtod(ptr noundef nonnull %i.b, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %zzlGetScore.exit

bb.i:                                             ; preds = %.lr.ph69.preheader
  %i.am = load i64, ptr %i.d, align 8, !tbaa !92
  %i.an = sitofp i64 %i.am to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.h, %bb.i
  %.0.i = phi double [ %i.al, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.ao = call ptr @lpGetValue(ptr noundef nonnull %.06166, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #17 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %zzlGetScore.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !92
  %i.ar = call ptr @sdsfromlonglong(i64 noundef %i.aq) #17
  br label %bb.l

bb.k:                                             ; preds = %zzlGetScore.exit
  %i.as = load i32, ptr %i.g, align 4, !tbaa !9
  %i.at = zext i32 %i.as to i64
  %i.au = call ptr @sdsnewlen(ptr noundef nonnull %i.ao, i64 noundef %i.at) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.044 = phi ptr [ %i.ar, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 2 uses
  %i.aw = fcmp ord double %.0.i, 0.000000e+00
  br i1 %i.aw, label %.preheader.i, label %bb.m, !prof !34

bb.m:                                             ; preds = %bb.l
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 329) #17
  call void @abort() #18
  unreachable

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  %.0.i.i = phi i32 [ %i.az, %.preheader.i ], [ 1, %bb.l ] ; 2 uses
  %i.ax = call i64 @random() #17
  %i.ay = icmp slt i64 %i.ax, 536870911
  %i.az = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.ay, label %.preheader.i, label %zslInsert.exit, !llvm.loop !35

zslInsert.exit:                                   ; preds = %.preheader.i
  %i.ba = call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i.i, i32 32)
  %i.bb = call fastcc ptr @zslCreateNode(ptr noundef %i.av, i32 noundef %i.ba, double noundef %.0.i, ptr noundef %.044) ; 2 uses
  call fastcc void @zslInsertNode(ptr noundef %i.av, ptr noundef %i.bb)
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.bd = call i32 @dictAdd(ptr noundef %i.bc, ptr noundef %i.bb, ptr noundef null) #17
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.n, !prof !34

bb.n:                                             ; preds = %zslInsert.exit
  call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1486) #17
  call void @abort() #18
  unreachable

bb.o:                                             ; preds = %zslInsert.exit
  call void @sdsfree(ptr noundef %.044) #17
  %i.bf = call ptr @lpNext(ptr noundef %i.o, ptr noundef nonnull %.167) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.bf, null
  br i1 %.not14.i, label %._crit_edge70, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = call ptr @lpNext(ptr noundef %i.o, ptr noundef nonnull %i.bf) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.bg, null
  br i1 %.not15.i, label %bb.q, label %.lr.ph69.preheader, !prof !91, !llvm.loop !136

bb.q:                                             ; preds = %bb.p
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

._crit_edge70:                                    ; preds = %bb.o, %bb.e
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !75
  call void @zfree(ptr noundef %i.bh) #17
  store ptr %i.p, ptr %i.n, align 8, !tbaa !75
  %i.bi = load i64, ptr %0, align 8
  %i.bj = and i64 %i.bi, -241
  %i.bk = or disjoint i64 %i.bj, 112
  store i64 %i.bk, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.v

bb.r:                                             ; preds = %bb.b
  %i.bl = tail call ptr @lpNew(i64 noundef 0) #17 ; 2 uses
  %.not = icmp eq i32 %1, 11
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1498, ptr noundef nonnull @.str.9) #17
  tail call void @abort() #18
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !75 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !107
  tail call void @dictRelease(ptr noundef %i.bo) #17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !103
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  tail call void @zfree(ptr noundef %i.br) #17
  %.not4962 = icmp eq ptr %i.bt, null
  br i1 %.not4962, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.lr.ph
  %.064 = phi ptr [ %i.bz, %.lr.ph ], [ %i.bl, %bb.t ]
  %.04363 = phi ptr [ %i.cb, %.lr.ph ], [ %i.bt, %bb.t ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04363, i64 24
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !13
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.04363, i64 %i.bw
  %i.by = load double, ptr %.04363, align 8, !tbaa !16
  %i.bz = call fastcc ptr @zzlInsertAt(ptr noundef %.064, ptr noundef null, ptr noundef nonnull %i.bx, double noundef %i.by) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04363, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.04363, ptr noundef nonnull %i.a) #17
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !25
  %i.cg = sub i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not49 = icmp eq ptr %i.cb, null
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %bb.t
  %.0.lcssa = phi ptr [ %i.bl, %bb.t ], [ %i.bz, %.lr.ph ]
  %i.ch = load ptr, ptr %i.bp, align 8, !tbaa !103
  call void @zfree(ptr noundef %i.ch) #17
  call void @zfree(ptr noundef nonnull %i.bn) #17
  store ptr %.0.lcssa, ptr %i.bm, align 8, !tbaa !75
  %i.ci = load i64, ptr %0, align 8
  %i.cj = and i64 %i.ci, -241
  %i.ck = or disjoint i64 %i.cj, 176
  store i64 %i.ck, ptr %0, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1519, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.v:                                             ; preds = %._crit_edge70, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zsetConvert(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %2 = trunc i64 %i.a to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.d [
    i32 11, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = tail call i64 @lpLength(ptr noundef %i.c) #17
  %i.e = lshr i64 %i.d, 1
  %i.f = and i64 %i.e, 4294967295
  br label %zsetLength.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  br label %zsetLength.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.l, %bb.c ]
  tail call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %.0.i)
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #8

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #0

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @lpNew(i64 noundef) local_unnamed_addr #0

declare void @dictRelease(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zsetConvertToListpackIfNeeded(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 176
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8, !tbaa !108
  %.not = icmp ugt i64 %i.i, %i.j
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7984), align 8
  %.not5 = icmp ugt i64 %1, %i.k
  %or.cond = select i1 %.not, i1 true, i1 %.not5
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @lpSafeToAdd(ptr noundef null, i64 noundef %2) #17
  %.not6 = icmp eq i32 %i.l, 0
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %0, align 8
  %3 = trunc i64 %i.m to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.g [
    i32 11, label %bb.e
    i32 7, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.o = tail call i64 @lpLength(ptr noundef %i.n) #17
  %i.p = lshr i64 %i.o, 1
  %i.q = and i64 %i.p, 4294967295
  br label %zsetConvert.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23
  br label %zsetConvert.exit

bb.g:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetConvert.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.q, %bb.e ], [ %i.v, %bb.f ]
  tail call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef 11, i64 noundef %.0.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %zsetConvert.exit, %bb.a
  ret void
}

declare i32 @lpSafeToAdd(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zsetScore(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %3 = trunc i64 %i.c to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.e [
    i32 11, label %bb.c
    i32 7, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = tail call fastcc ptr @zzlFind(ptr noundef %i.e, ptr noundef nonnull %1, ptr noundef %2)
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = tail call ptr @dictFind(ptr noundef %i.j, ptr noundef nonnull %1) #17 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.d
  %i.m = tail call ptr @dictGetKey(ptr noundef nonnull %i.k) #17
  %i.n = load double, ptr %i.m, align 8, !tbaa !16
  store double %i.n, ptr %2, align 8, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1554, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.f:                                             ; preds = %.thread, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.f
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %bb.f ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zzlFind(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = tail call ptr @lpFirst(ptr noundef %0) #17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !36 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %1, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !37
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %1, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %1, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.t, %bb.g ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ 0, %bb.b ]
  %i.u = trunc i64 %.0.i to i32
  %i.v = tail call ptr @lpFind(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %1, i32 noundef %i.u, i32 noundef 1) #17 ; 4 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %sdslen.exit
  %i.w = tail call ptr @lpNext(ptr noundef %0, ptr noundef nonnull %i.v) #17 ; 2 uses
  %.not18 = icmp eq ptr %i.w, null
  br i1 %.not18, label %bb.i, label %bb.j, !prof !91

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1237) #17
  tail call void @abort() #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.x = call ptr @lpGetValue(ptr noundef nonnull %i.w, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null
  br i1 %.not7.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.y, i32 127)
  %i.z = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !36
  %i.ab = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !92
  %i.ad = sitofp i64 %i.ac to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.l, %bb.m
  %.0.i20 = phi double [ %i.ab, %bb.l ], [ %i.ad, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  store double %.0.i20, ptr %2, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %sdslen.exit, %bb.j, %zzlGetScore.exit, %bb.a
  %.0 = phi ptr [ %i.v, %bb.j ], [ null, %bb.a ], [ %i.v, %zzlGetScore.exit ], [ null, %sdslen.exit ]
  ret ptr %.0
}

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zsetAdd(ptr noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef captures(none) initializes((0, 4)) %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = and i32 %3, 1
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.f = and i32 %3, 2
  %.not99 = icmp eq i32 %i.f, 0                   ; 2 uses
  %i.g = and i32 %3, 4
  %.not100 = icmp eq i32 %i.g, 0                  ; 2 uses
  %i.h = and i32 %3, 8
  %.not101 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = and i32 %3, 16
  %.not102 = icmp eq i32 %i.i, 0                  ; 2 uses
  store i32 0, ptr %4, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.j = fcmp uno double %1, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = and i64 %i.k, 240
  %i.m = icmp eq i64 %i.l, 176
  br i1 %i.m, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = call fastcc ptr @zzlFind(ptr noundef %i.o, ptr noundef %2, ptr noundef nonnull %i.c) ; 2 uses
  %.not103 = icmp eq ptr %i.p, null
  br i1 %.not103, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not99, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %4, align 4, !tbaa !9
  %i.r = or i32 %i.q, 1
  store i32 %i.r, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %.pre = load double, ptr %i.c, align 8          ; 4 uses
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = fadd double %1, %.pre                    ; 2 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %4, align 4, !tbaa !9
  %i.v = or i32 %i.u, 2
  store i32 %i.v, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %.089 = phi double [ %i.s, %bb.h ], [ %1, %bb.g ] ; 5 uses
  %i.w = fcmp ult double %.089, %.pre
  %or.cond = select i1 %.not102, i1 true, i1 %i.w
  %i.x = fcmp ugt double %.089, %.pre
  %or.cond112 = select i1 %.not101, i1 true, i1 %i.x
  %or.cond126 = select i1 %or.cond, i1 %or.cond112, i1 false
  br i1 %or.cond126, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i32, ptr %4, align 4, !tbaa !9
  %i.z = or i32 %i.y, 1
  store i32 %i.z, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %.not106 = icmp eq ptr %5, null
  br i1 %.not106, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store double %.089, ptr %5, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = fcmp une double %.089, %.pre
  br i1 %i.aa, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !78
  %i.ac = call ptr @lpDeleteRangeWithEntry(ptr noundef %i.ab, ptr noundef nonnull %i.b, i64 noundef 2) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !75
  %i.ad = call ptr @zzlInsert(ptr noundef %i.ac, ptr noundef %2, double noundef %.089)
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !75
  %i.ae = load i32, ptr %4, align 4, !tbaa !9
  %i.af = or i32 %i.ae, 8
  store i32 %i.af, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.p:                                             ; preds = %bb.d
  br i1 %.not100, label %bb.q, label %bb.aj

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.ah = call i64 @lpLength(ptr noundef %i.ag) #17
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8, !tbaa !108
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr i8, ptr %2, i64 -1
  %.val.i = load i8, ptr %i.an, align 1, !tbaa !36 ; 3 uses
  %i.ao = and i8 %.val.i, 7                       ; 2 uses
  switch i8 %i.ao, label %sdslen.exit.thread [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.ap = lshr i8 %.val.i, 3
  %i.aq = zext nneg i8 %i.ap to i64
  br label %sdslen.exit

bb.t:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds i8, ptr %2, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %i.at = zext i8 %i.as to i64
  br label %sdslen.exit

bb.u:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds i8, ptr %2, i64 -5
  %i.av = load i16, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i16 %i.av to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds i8, ptr %2, i64 -9
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i32 %i.ay to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds i8, ptr %2, i64 -17
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i = phi i64 [ %i.bb, %bb.w ], [ %i.aq, %bb.s ], [ %i.at, %bb.t ], [ %i.aw, %bb.u ], [ %i.az, %bb.v ]
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7984), align 8, !tbaa !138
  %i.bd = icmp ugt i64 %.0.i, %i.bc
  br i1 %i.bd, label %bb.ac, label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.r, %sdslen.exit
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !75
  switch i8 %i.ao, label %sdslen.exit119 [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
  ]

bb.x:                                             ; preds = %sdslen.exit.thread
  %i.bf = lshr i8 %.val.i, 3
  %i.bg = zext nneg i8 %i.bf to i64
  br label %sdslen.exit119

bb.y:                                             ; preds = %sdslen.exit.thread
  %i.bh = getelementptr inbounds i8, ptr %2, i64 -3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !36
  %i.bj = zext i8 %i.bi to i64
  br label %sdslen.exit119

bb.z:                                             ; preds = %sdslen.exit.thread
  %i.bk = getelementptr inbounds i8, ptr %2, i64 -5
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !37
  %i.bm = zext i16 %i.bl to i64
  br label %sdslen.exit119

bb.aa:                                            ; preds = %sdslen.exit.thread
  %i.bn = getelementptr inbounds i8, ptr %2, i64 -9
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !9
  %i.bp = zext i32 %i.bo to i64
  br label %sdslen.exit119

bb.ab:                                            ; preds = %sdslen.exit.thread
  %i.bq = getelementptr inbounds i8, ptr %2, i64 -17
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !24
  br label %sdslen.exit119

sdslen.exit119:                                   ; preds = %sdslen.exit.thread, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.0.i118 = phi i64 [ %i.br, %bb.ab ], [ %i.bg, %bb.x ], [ %i.bj, %bb.y ], [ %i.bm, %bb.z ], [ %i.bp, %bb.aa ], [ 0, %sdslen.exit.thread ]
  %i.bs = call i32 @lpSafeToAdd(ptr noundef %i.be, i64 noundef %.0.i118) #17
  %.not104 = icmp eq i32 %i.bs, 0
  br i1 %.not104, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %sdslen.exit119, %sdslen.exit, %bb.q
  %i.bt = load i64, ptr %0, align 8
  %6 = trunc i64 %i.bt to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.af [
    i32 11, label %bb.ad
    i32 7, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.bv = call i64 @lpLength(ptr noundef %i.bu) #17
  %i.bw = lshr i64 %i.bv, 1
  %i.bx = and i64 %i.bw, 4294967295
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !103
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !23
  br label %bb.ak

bb.af:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

bb.ag:                                            ; preds = %sdslen.exit119
  %i.cd = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.ce = call ptr @zzlInsert(ptr noundef %i.cd, ptr noundef nonnull %2, double noundef %1)
  store ptr %i.ce, ptr %i.n, align 8, !tbaa !75
  %.not105 = icmp eq ptr %5, null
  br i1 %.not105, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store double %1, ptr %5, align 8, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cf = load i32, ptr %4, align 4, !tbaa !9
  %i.cg = or i32 %i.cf, 4
  store i32 %i.cg, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.aj:                                            ; preds = %bb.p
  %i.ch = load i32, ptr %4, align 4, !tbaa !9
  %i.ci = or i32 %i.ch, 1
  store i32 %i.ci, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.ak:                                            ; preds = %bb.ae, %bb.ad
  %.0.i120 = phi i64 [ %i.bx, %bb.ad ], [ %i.cc, %bb.ae ]
  %i.cj = add i64 %.0.i120, 1
  call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef 7, i64 noundef %i.cj)
  %.pre131 = load i64, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.c
  %i.ck = phi i64 [ %.pre131, %bb.ak ], [ %i.k, %bb.c ]
  %i.cl = and i64 %i.ck, 240
  %i.cm = icmp eq i64 %i.cl, 112
  br i1 %i.cm, label %bb.am, label %bb.bn

bb.am:                                            ; preds = %bb.al
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !75 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !107
  %i.cq = call ptr @dictFindLink(ptr noundef %i.cp, ptr noundef %2, ptr noundef nonnull %i.d) #17 ; 2 uses
  %.not107 = icmp eq ptr %i.cq, null
  br i1 %.not107, label %bb.bi, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not99, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = load i32, ptr %4, align 4, !tbaa !9
  %i.cs = or i32 %i.cr, 1
  store i32 %i.cs, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.ap:                                            ; preds = %bb.an
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !139
  %i.cu = call ptr @dictGetKey(ptr noundef %i.ct) #17 ; 15 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !16 ; 5 uses
  store double %i.cv, ptr %i.c, align 8, !tbaa !16
  br i1 %.not, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cw = fadd double %1, %i.cv                   ; 2 uses
  %i.cx = fcmp uno double %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cy = load i32, ptr %4, align 4, !tbaa !9
  %i.cz = or i32 %i.cy, 2
  store i32 %i.cz, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.3 = phi double [ %i.cw, %bb.aq ], [ %1, %bb.ap ] ; 8 uses
  %i.da = fcmp ult double %.3, %i.cv
  %or.cond114 = select i1 %.not102, i1 true, i1 %i.da
  %i.db = fcmp ugt double %.3, %i.cv
  %or.cond116 = select i1 %.not101, i1 true, i1 %i.db
  %or.cond127 = select i1 %or.cond114, i1 %or.cond116, i1 false
  br i1 %or.cond127, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dc = load i32, ptr %4, align 4, !tbaa !9
  %i.dd = or i32 %i.dc, 1
  store i32 %i.dd, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.au:                                            ; preds = %bb.as
  %.not109 = icmp eq ptr %5, null
  br i1 %.not109, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store double %.3, ptr %5, align 8, !tbaa !16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.de = fcmp une double %.3, %i.cv
  br i1 %i.de, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !103 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dk = load double, ptr %i.di, align 8, !tbaa !16
  %i.dl = fcmp olt double %i.dk, %.3
  br i1 %i.dl, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !31 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !16
  %i.dq = fcmp ogt double %i.dp, %.3
  br i1 %i.dq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store double %.3, ptr %i.cu, align 8, !tbaa !16
  br label %zslUpdateScore.exit

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.dr = load double, ptr %i.cu, align 8, !tbaa !16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !13
  %i.du = zext i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.du
  %i.dw = load ptr, ptr %i.dg, align 8, !tbaa !28 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !18 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.bc
  %i.ea = zext nneg i32 %i.dy to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %zslCompareWithNode.exit.thread.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.ea, %.preheader.preheader.i ], [ %indvars.iv.next.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %.046.i = phi ptr [ %i.dw, %.preheader.preheader.i ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.eb = getelementptr [16 x i8], ptr %.046.i, i64 %indvars.iv.i ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !31 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %zslCompareWithNode.exit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !16 ; 2 uses
  %i.ef = fcmp olt double %i.dr, %i.ee
  br i1 %i.ef, label %zslCompareWithNode.exit.thread.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %zslCompareWithNode.exit.thread34.i
  %i.eg = load double, ptr %i.eu, align 8, !tbaa !16 ; 2 uses
  %i.eh = fcmp olt double %i.dr, %i.eg
  br i1 %i.eh, label %zslCompareWithNode.exit.thread.i, label %.lr.ph, !llvm.loop !141

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ei = phi double [ %i.eg, %.lr.ph.i ], [ %i.ee, %.lr.ph.i.preheader ]
  %.138.i128 = phi ptr [ %i.es, %.lr.ph.i ], [ %.046.i, %.lr.ph.i.preheader ]
  %i.ej = phi ptr [ %i.et, %.lr.ph.i ], [ %i.eb, %.lr.ph.i.preheader ]
  %i.ek = phi ptr [ %i.eu, %.lr.ph.i ], [ %i.ec, %.lr.ph.i.preheader ] ; 3 uses
  %i.el = fcmp ogt double %i.dr, %i.ei
  br i1 %i.el, label %zslCompareWithNode.exit.thread34.i, label %zslCompareWithNode.exit.i

zslCompareWithNode.exit.i:                        ; preds = %.lr.ph
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.en = load i16, ptr %i.em, align 2, !tbaa !13
  %i.eo = zext i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eo
  %i.eq = call i32 @sdscmp(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.ep) #17
  %i.er = icmp sgt i32 %i.eq, 0
end_hunk_0
begin_hunk_1_@zsetAdd:bb.a
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !141

zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge: ; preds = %zslCompareWithNode.exit.thread34.i
  br label %zslCompareWithNode.exit.thread.i, !llvm.loop !141

zslCompareWithNode.exit.thread.i:                 ; preds = %.lr.ph.i, %zslCompareWithNode.exit.i, %.lr.ph.i.preheader, %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.046.i, %.preheader.i ], [ %.046.i, %.lr.ph.i.preheader ], [ %i.es, %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge ], [ %i.es, %.lr.ph.i ], [ %.138.i128, %zslCompareWithNode.exit.i ] ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store ptr %.1.lcssa.i, ptr %i.ew, align 8, !tbaa !29
  %i.ex = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ex, label %.preheader.i, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %zslCompareWithNode.exit.thread.i, %bb.bc
  %.0.lcssa.i = phi ptr [ %i.dw, %bb.bc ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !31
  %i.fa = icmp eq ptr %i.ez, %i.cu
  br i1 %i.fa, label %bb.be, label %bb.bd, !prof !34

bb.bd:                                            ; preds = %._crit_edge.i
  call void @_serverAssert(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 423) #17
  call void @abort() #18
  unreachable

bb.be:                                            ; preds = %._crit_edge.i
  %i.fb = load i32, ptr %i.dx, align 8, !tbaa !18 ; 4 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i.i, label %._crit_edge.i.thread.i

.lr.ph.i.i:                                       ; preds = %bb.be
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fb to i64
  %i.fe = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !31
  %i.fh = icmp eq ptr %i.fg, %i.cu
  br i1 %i.fh, label %zslIncrNodeSpanAtLevel.exit.peel.i.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslIncrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %.lr.ph.i.i
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !31
  store ptr %i.fi, ptr %i.ff, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslDecrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i.i, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i32 %i.fb, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.thread.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %zslDecrNodeSpanAtLevel.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %zslDecrNodeSpanAtLevel.exit.i.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i.i ] ; 7 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !29 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %indvars.iv.i.i ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !31
  %i.fo = icmp eq ptr %i.fn, %i.cu
  br i1 %i.fo, label %zslIncrNodeSpanAtLevel.exit.i.i, label %bb.bf

zslIncrNodeSpanAtLevel.exit.i.i:                  ; preds = %.peel.next.i.i
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !26
  %i.fs = add i64 %i.fr, -1
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !26
  %i.fw = add i64 %i.fs, %i.fv
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !26
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %indvars.iv.i.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !31
  store ptr %i.fy, ptr %i.fm, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i.i

bb.bf:                                            ; preds = %.peel.next.i.i
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !26
  %i.gc = add i64 %i.gb, -1
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i.i

zslDecrNodeSpanAtLevel.exit.i.i:                  ; preds = %bb.bf, %zslIncrNodeSpanAtLevel.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !143

._crit_edge.i.thread.i:                           ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %bb.be
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !31 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.ge, null
  %i.gf = load ptr, ptr %i.dh, align 8, !tbaa !29
  %..i37.i = select i1 %.not.i36.i, ptr %i.dg, ptr %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %..i37.i, i64 8
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !29
  br label %zslUnlinkNode.exit.i

._crit_edge.i.i:                                  ; preds = %zslDecrNodeSpanAtLevel.exit.i.i
  %i.gh = load ptr, ptr %i.fd, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gh, null
  %i.gi = load ptr, ptr %i.dh, align 8, !tbaa !29
  %..i.i = select i1 %.not.i.i, ptr %i.dg, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !29
  %i.gk = load ptr, ptr %i.dg, align 8, !tbaa !28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %._crit_edge.i.i
  %i.gl = phi i32 [ %i.fb, %._crit_edge.i.i ], [ %i.gr, %bb.bh ] ; 3 uses
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr [16 x i8], ptr %i.gk, i64 %i.gm ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !31
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.bh, label %zslUnlinkNode.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 0, ptr %i.gq, align 8, !tbaa !26
  %i.gr = add nsw i32 %i.gl, -1                   ; 2 uses
  store i32 %i.gr, ptr %i.dx, align 8, !tbaa !18
  %i.gs = icmp sgt i32 %i.gl, 2
  br i1 %i.gs, label %bb.bg, label %zslUnlinkNode.exit.i, !llvm.loop !144

zslUnlinkNode.exit.i:                             ; preds = %bb.bh, %bb.bg, %._crit_edge.i.thread.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !23
  %i.gv = add i64 %i.gu, -1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !23
  store double %.3, ptr %i.cu, align 8, !tbaa !16
  call fastcc void @zslInsertNode(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zslUpdateScore.exit

zslUpdateScore.exit:                              ; preds = %bb.bb, %zslUnlinkNode.exit.i
  %i.gw = load i32, ptr %4, align 4, !tbaa !9
  %i.gx = or i32 %i.gw, 8
  store i32 %i.gx, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.bi:                                            ; preds = %bb.am
  br i1 %.not100, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.gy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !103 ; 2 uses
  br label %.preheader.i121

.preheader.i121:                                  ; preds = %bb.bj, %.preheader.i121
  %.0.i.i = phi i32 [ %i.hc, %.preheader.i121 ], [ 1, %bb.bj ] ; 2 uses
  %i.ha = call i64 @random() #17
  %i.hb = icmp slt i64 %i.ha, 536870911
  %i.hc = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.hb, label %.preheader.i121, label %zslInsert.exit, !llvm.loop !35

zslInsert.exit:                                   ; preds = %.preheader.i121
  %i.hd = call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i.i, i32 32)
  %i.he = call fastcc ptr @zslCreateNode(ptr noundef %i.gz, i32 noundef %i.hd, double noundef %1, ptr noundef %2) ; 2 uses
  call fastcc void @zslInsertNode(ptr noundef %i.gz, ptr noundef %i.he)
  %i.hf = load ptr, ptr %i.co, align 8, !tbaa !107
  call void @dictSetKeyAtLink(ptr noundef %i.hf, ptr noundef %i.he, ptr noundef nonnull %i.d, i32 noundef 1) #17
  %i.hg = load i32, ptr %4, align 4, !tbaa !9
  %i.hh = or i32 %i.hg, 4
  store i32 %i.hh, ptr %4, align 4, !tbaa !9
  %.not108 = icmp eq ptr %5, null
  br i1 %.not108, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %zslInsert.exit
  store double %1, ptr %5, align 8, !tbaa !16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.hi = load i32, ptr %4, align 4, !tbaa !9
  %i.hj = or i32 %i.hi, 1
  store i32 %i.hj, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.bm:                                            ; preds = %zslInsert.exit, %bb.bk, %bb.aw, %zslUpdateScore.exit, %bb.bl, %bb.at, %bb.ar, %bb.ao
  %.1 = phi i32 [ 1, %bb.ao ], [ 0, %bb.ar ], [ 1, %bb.at ], [ 1, %bb.aw ], [ 1, %bb.bl ], [ 1, %zslUpdateScore.exit ], [ 1, %bb.bk ], [ 1, %zslInsert.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.thread

bb.bn:                                            ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1742, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %bb.aj, %bb.ai, %bb.k, %bb.i, %bb.f, %bb.bm, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %.1, %bb.bm ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 1, %bb.k ], [ 0, %bb.i ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret i32 %.2
}

declare ptr @dictFindLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @dictSetKeyAtLink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zsetDel(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %2 = trunc i64 %i.b to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.e [
    i32 11, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = tail call fastcc ptr @zzlFind(ptr noundef %i.d, ptr noundef %1, ptr noundef null) ; 2 uses
  %.not15.not = icmp eq ptr %i.e, null
  br i1 %.not15.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !tbaa !78
  %i.g = call ptr @lpDeleteRangeWithEntry(ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.c, align 8, !tbaa !75
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = tail call fastcc i32 @zsetRemoveFromSkiplist(ptr noundef %i.i, ptr noundef %1)
  %.not.not = icmp eq i32 %i.j, 0
  br i1 %.not.not, label %.thread, label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1791, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

.thread:                                          ; preds = %bb.b, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @zsetRemoveFromSkiplist(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107
  %i.d = tail call ptr @dictUnlink(ptr noundef %i.c, ptr noundef %1) #17 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dictGetKey(ptr noundef nonnull %i.d) #17 ; 12 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !107
  tail call void @dictFreeUnlinkedEntry(ptr noundef %i.f, ptr noundef nonnull %i.d) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.i = load double, ptr %i.e, align 8, !tbaa !16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i16, ptr %i.j, align 8, !tbaa !13
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.r = zext nneg i32 %i.p to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %zslCompareWithNode.exit.thread.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.r, %.preheader.preheader.i ], [ %indvars.iv.next.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %.034.i = phi ptr [ %i.n, %.preheader.preheader.i ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %.034.i, i64 %indvars.iv.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %zslCompareWithNode.exit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.v = load double, ptr %i.t, align 8, !tbaa !16 ; 2 uses
  %i.w = fcmp olt double %i.i, %i.v
  br i1 %i.w, label %zslCompareWithNode.exit.thread.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %zslCompareWithNode.exit.thread22.i
  %i.x = load double, ptr %i.al, align 8, !tbaa !16 ; 2 uses
  %i.y = fcmp olt double %i.i, %i.x
  br i1 %i.y, label %zslCompareWithNode.exit.thread.i, label %.lr.ph, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.z = phi double [ %i.x, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.126.i9 = phi ptr [ %i.aj, %.lr.ph.i ], [ %.034.i, %.lr.ph.i.preheader ]
  %i.aa = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ]
  %i.ab = phi ptr [ %i.al, %.lr.ph.i ], [ %i.t, %.lr.ph.i.preheader ] ; 3 uses
  %i.ac = fcmp ogt double %i.i, %i.z
  br i1 %i.ac, label %zslCompareWithNode.exit.thread22.i, label %zslCompareWithNode.exit.i

zslCompareWithNode.exit.i:                        ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !13
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = tail call i32 @sdscmp(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ag) #17
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i, label %zslCompareWithNode.exit.thread.i

zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i: ; preds = %zslCompareWithNode.exit.i
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread22.i

zslCompareWithNode.exit.thread22.i:               ; preds = %zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i, %.lr.ph
  %i.aj = phi ptr [ %.pre.i, %zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.ak = getelementptr [16 x i8], ptr %i.aj, i64 %indvars.iv.i ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !145

zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge: ; preds = %zslCompareWithNode.exit.thread22.i
  br label %zslCompareWithNode.exit.thread.i, !llvm.loop !145

zslCompareWithNode.exit.thread.i:                 ; preds = %.lr.ph.i, %zslCompareWithNode.exit.i, %.lr.ph.i.preheader, %zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.034.i, %.preheader.i ], [ %.034.i, %.lr.ph.i.preheader ], [ %i.aj, %zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge ], [ %i.aj, %.lr.ph.i ], [ %.126.i9, %zslCompareWithNode.exit.i ] ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store ptr %.1.lcssa.i, ptr %i.an, align 8, !tbaa !29
  %i.ao = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ao, label %.preheader.i, label %._crit_edge.i, !llvm.loop !146

._crit_edge.i:                                    ; preds = %zslCompareWithNode.exit.thread.i, %bb.b
  %.0.lcssa.i = phi ptr [ %i.n, %bb.b ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %bb.d, label %bb.c, !prof !34

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 386) #17
  tail call void @abort() #18
  unreachable

bb.d:                                             ; preds = %._crit_edge.i
  %i.as = load i32, ptr %i.o, align 8, !tbaa !18  ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i, label %._crit_edge.i.thread.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.as to i64
  %i.av = load ptr, ptr %i.b, align 16, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = icmp eq ptr %i.ax, %i.e
  br i1 %i.ay, label %zslIncrNodeSpanAtLevel.exit.peel.i.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslIncrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %.lr.ph.i.i
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !31
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslDecrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i.i, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i32 %i.as, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.thread.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %zslDecrNodeSpanAtLevel.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %zslDecrNodeSpanAtLevel.exit.i.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv.i.i ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %zslIncrNodeSpanAtLevel.exit.i.i, label %bb.e

zslIncrNodeSpanAtLevel.exit.i.i:                  ; preds = %.peel.next.i.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = add i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26
  %i.bn = add i64 %i.bj, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  store ptr %i.bp, ptr %i.bd, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i.i

bb.e:                                             ; preds = %.peel.next.i.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26
  %i.bt = add i64 %i.bs, -1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i.i

zslDecrNodeSpanAtLevel.exit.i.i:                  ; preds = %bb.e, %zslIncrNodeSpanAtLevel.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !143

._crit_edge.i.thread.i:                           ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %.not.i24.i = icmp eq ptr %i.bv, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29
  %..i25.i = select i1 %.not.i24.i, ptr %i.h, ptr %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %..i25.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !29
  br label %zslDelete.exit

._crit_edge.i.i:                                  ; preds = %zslDecrNodeSpanAtLevel.exit.i.i
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29
  %..i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !29
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ce = phi i32 [ %i.as, %._crit_edge.i.i ], [ %i.ck, %bb.g ] ; 3 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr [16 x i8], ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.g, label %zslDelete.exit

bb.g:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !26
  %i.ck = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.o, align 8, !tbaa !18
  %i.cl = icmp sgt i32 %i.ce, 2
  br i1 %i.cl, label %bb.f, label %zslDelete.exit, !llvm.loop !144

zslDelete.exit:                                   ; preds = %bb.f, %bb.g, %._crit_edge.i.thread.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25
  %i.cs = sub i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %zslDelete.exit
  %.0 = phi i32 [ 1, %zslDelete.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zsetRank(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load i64, ptr %0, align 8
  %4 = trunc i64 %i.f to i32
  %5 = lshr i32 %4, 4                             ; 2 uses
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.d [
    i32 11, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = tail call i64 @lpLength(ptr noundef %i.h) #17
  %i.j = lshr i64 %i.i, 1
  %i.k = and i64 %i.j, 4294967295
  %.pre = load i64, ptr %0, align 8
  %.pre77 = trunc i64 %.pre to i32
  %.pre78 = lshr i32 %.pre77, 4
  br label %zsetLength.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23
  br label %zsetLength.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.b, %bb.c
  %.pre-phi79 = phi i32 [ %.pre78, %bb.b ], [ %5, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %7 = and i32 %.pre-phi79, 15
  switch i32 %7, label %bb.ag [
    i32 11, label %bb.e
    i32 7, label %bb.y
  ]

bb.e:                                             ; preds = %zsetLength.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 4 uses
  %i.t = tail call ptr @lpSeek(ptr noundef %i.s, i64 noundef 0) #17 ; 3 uses
  %.not44 = icmp eq ptr %i.t, null
  br i1 %.not44, label %bb.f, label %bb.g, !prof !91

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1818) #17
  tail call void @abort() #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = tail call ptr @lpNext(ptr noundef %i.s, ptr noundef nonnull %i.t) #17 ; 2 uses
  %.not45 = icmp eq ptr %i.u, null
  br i1 %.not45, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1820) #17
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.v, align 1, !tbaa !36 ; 2 uses
  %i.w = and i8 %.val.i, 7
  switch i8 %i.w, label %sdslen.exit [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.x = lshr i8 %.val.i, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds i8, ptr %1, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !36
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds i8, ptr %1, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !37
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds i8, ptr %1, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds i8, ptr %1, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i51 = phi i64 [ %i.aj, %bb.n ], [ %i.y, %bb.j ], [ %i.ab, %bb.k ], [ %i.ae, %bb.l ], [ %i.ah, %bb.m ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 0, ptr %i.d, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.ak = trunc i64 %.0.i51 to i32
  br label %zzlNext.exit

zzlNext.exit:                                     ; preds = %bb.p, %sdslen.exit
  %.03370 = phi i64 [ 1, %sdslen.exit ], [ %i.an, %bb.p ] ; 3 uses
  %.06069 = phi ptr [ %i.u, %sdslen.exit ], [ %i.ao, %bb.p ] ; 2 uses
  %.06168 = phi ptr [ %i.t, %sdslen.exit ], [ %i.am, %bb.p ]
  %i.al = call i32 @lpCompare(ptr noundef nonnull %.06168, ptr noundef %1, i32 noundef %i.ak, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  %.not47 = icmp eq i32 %i.al, 0
  br i1 %.not47, label %bb.o, label %bb.r

bb.o:                                             ; preds = %zzlNext.exit
  %i.am = call ptr @lpNext(ptr noundef %i.s, ptr noundef nonnull %.06069) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.am, null
  br i1 %.not14.i, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add i64 %.03370, 1
  %i.ao = call ptr @lpNext(ptr noundef %i.s, ptr noundef nonnull %i.am) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.ao, null
  br i1 %.not15.i, label %bb.q, label %zzlNext.exit, !prof !91, !llvm.loop !147

bb.q:                                             ; preds = %bb.p
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

bb.r:                                             ; preds = %zzlNext.exit
  %.not49 = icmp eq ptr %3, null
  br i1 %.not49, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ap = call ptr @lpGetValue(ptr noundef nonnull %.06069, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.ap, null
  br i1 %.not7.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.aq, i32 127)
  %i.ar = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.ap, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !36
  %i.at = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.u:                                             ; preds = %bb.s
  %i.au = load i64, ptr %i.c, align 8, !tbaa !92
  %i.av = sitofp i64 %i.au to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.t, %bb.u
  %.0.i54 = phi double [ %i.at, %bb.t ], [ %i.av, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  store double %.0.i54, ptr %3, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %zzlGetScore.exit, %bb.r
  %.not50 = icmp eq i32 %2, 0
  br i1 %.not50, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = sub i64 %.0.i, %.03370
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.ax = add i64 %.03370, -1
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.x, %bb.w
  %.0 = phi i64 [ %i.aw, %bb.w ], [ %i.ax, %bb.x ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.ah

bb.y:                                             ; preds = %zsetLength.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !103
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !107
  %i.bd = tail call ptr @dictFind(ptr noundef %i.bc, ptr noundef %1) #17 ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = tail call ptr @dictGetKey(ptr noundef nonnull %i.bd) #17 ; 3 uses
  %.not9.i = icmp eq ptr %i.be, null
  br i1 %.not9.i, label %zslGetRankByNode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %zslGetNodeSpanAtLevel.exit.i
  %.011.i = phi ptr [ %i.bv, %zslGetNodeSpanAtLevel.exit.i ], [ %i.be, %bb.z ] ; 4 uses
  %.0810.i = phi i64 [ %i.br, %zslGetNodeSpanAtLevel.exit.i ], [ 0, %bb.z ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i, i64 26
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !38  ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  %i.bj = icmp ugt i8 %i.bg, 1
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.011.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !26
  br label %zslGetNodeSpanAtLevel.exit.i

bb.ab:                                            ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %.not.i.i = icmp ne ptr %i.bp, null
  %i.bq = zext i1 %.not.i.i to i64
  br label %zslGetNodeSpanAtLevel.exit.i

zslGetNodeSpanAtLevel.exit.i:                     ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi i64 [ %i.bn, %bb.aa ], [ %i.bq, %bb.ab ]
  %i.br = add i64 %.0.i.i, %.0810.i               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.bt = sext i32 %i.bi to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bv, null
  br i1 %.not.i55, label %zslGetRankByNode.exit, label %.lr.ph.i, !llvm.loop !66

zslGetRankByNode.exit:                            ; preds = %zslGetNodeSpanAtLevel.exit.i, %bb.z
  %.08.lcssa.i = phi i64 [ 0, %bb.z ], [ %i.br, %zslGetNodeSpanAtLevel.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !23 ; 2 uses
  %i.by = sub i64 %i.bx, %.08.lcssa.i             ; 2 uses
  %.not41 = icmp eq i64 %i.bx, %.08.lcssa.i
  br i1 %.not41, label %bb.ac, label %bb.ad, !prof !91

bb.ac:                                            ; preds = %zslGetRankByNode.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1852) #17
  tail call void @abort() #18
  unreachable

bb.ad:                                            ; preds = %zslGetRankByNode.exit
  %.not42 = icmp eq ptr %3, null
  br i1 %.not42, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = load double, ptr %i.be, align 8, !tbaa !16
  store double %i.bz, ptr %3, align 8, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not43 = icmp eq i32 %2, 0
  %i.ca = sub i64 %.0.i, %i.by
  %i.cb = add i64 %i.by, -1
  %.1 = select i1 %.not43, i64 %i.cb, i64 %i.ca
  br label %bb.ah

bb.ag:                                            ; preds = %zsetLength.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1863, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.y, %.thread
  %.3 = phi i64 [ %.0, %.thread ], [ %.1, %bb.af ], [ -1, %bb.y ]
  ret i64 %.3
}

declare i32 @lpCompare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local ptr @zsetDup(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1877) #17
  tail call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.k [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = tail call i64 @lpBytes(ptr noundef %i.e) #17 ; 2 uses
  %i.g = tail call noalias ptr @zmalloc(i64 noundef %i.f) #20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.e, i64 %i.f, i1 false)
  %i.h = tail call ptr @createObject(i32 noundef 3, ptr noundef %i.g) #17 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -241
  %i.k = or disjoint i64 %i.j, 176
  store i64 %i.k, ptr %i.h, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call ptr @createZsetObject() #17    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75   ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = add i64 %i.v, %i.t
  %i.x = tail call i32 @dictExpand(ptr noundef %i.q, i64 noundef %i.w) #17 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103
  %i.aa = load i64, ptr %0, align 8
  %4 = trunc i64 %i.aa to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.h [
    i32 11, label %bb.f
    i32 7, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.ac = tail call i64 @lpLength(ptr noundef %i.ab) #17
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = and i64 %i.ad, 4294967295
  br label %zsetLength.exit

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  br label %zsetLength.exit

bb.h:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ae, %bb.f ], [ %i.aj, %bb.g ] ; 2 uses
  %.not30 = icmp eq i64 %.0.i, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %zsetLength.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %zslInsert.exit
  %.02732 = phi i64 [ %.0.i, %.lr.ph ], [ %i.al, %zslInsert.exit ]
  %.pn31 = phi ptr [ %i.z, %.lr.ph ], [ %.028, %zslInsert.exit ]
  %.028.in = getelementptr inbounds nuw i8, ptr %.pn31, i64 8
  %i.al = add nsw i64 %.02732, -1                 ; 2 uses
  %.028 = load ptr, ptr %.028.in, align 8, !tbaa !29 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.028, i64 24
  %i.an = load i16, ptr %i.am, align 2, !tbaa !13
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.028, i64 %i.ao
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !103 ; 2 uses
  %i.ar = load double, ptr %.028, align 8, !tbaa !16 ; 2 uses
  %i.as = fcmp ord double %i.ar, 0.000000e+00
  br i1 %i.as, label %.preheader.i, label %bb.j, !prof !34

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 329) #17
  tail call void @abort() #18
  unreachable

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.0.i.i = phi i32 [ %i.av, %.preheader.i ], [ 1, %bb.i ] ; 2 uses
  %i.at = tail call i64 @random() #17
  %i.au = icmp slt i64 %i.at, 536870911
  %i.av = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.au, label %.preheader.i, label %zslInsert.exit, !llvm.loop !35

zslInsert.exit:                                   ; preds = %.preheader.i
  %i.aw = tail call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i.i, i32 32)
  %i.ax = tail call fastcc ptr @zslCreateNode(ptr noundef %i.aq, i32 noundef %i.aw, double noundef %i.ar, ptr noundef nonnull %i.ap) ; 2 uses
  tail call fastcc void @zslInsertNode(ptr noundef %i.aq, ptr noundef %i.ax)
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.az = tail call i32 @dictAdd(ptr noundef %i.ay, ptr noundef %i.ax, ptr noundef null) #17 ; 0 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %.loopexit, label %bb.i, !llvm.loop !148

bb.k:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1911, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

.loopexit:                                        ; preds = %zslInsert.exit, %zsetLength.exit, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ %i.l, %zsetLength.exit ], [ %i.l, %zslInsert.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local ptr @zsetSdsFromListpackEntry(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @sdsnewlen(ptr noundef nonnull %i.a, i64 noundef %i.d) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102
  %i.h = tail call ptr @sdsfromlonglong(i64 noundef %i.g) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define dso_local void @zsetReplyFromListpackEntry(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !99     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101
  %i.d = zext i32 %i.c to i64
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.d) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102
  tail call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.f) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @addReplyBulkLongLong(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zsetTypeRandomElement(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %4 = alloca %struct.listpackEntry, align 8      ; 6 uses
  %i.b = load i64, ptr %0, align 8
  %5 = trunc i64 %i.b to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.n [
    i32 7, label %bb.b
    i32 11, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = tail call ptr @dictGetFairRandomKey(ptr noundef %i.e) #17
  %i.g = tail call ptr @dictGetKey(ptr noundef %i.f) #17 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i16, ptr %i.h, align 2, !tbaa !13
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j ; 6 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !99
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %.val.i = load i8, ptr %i.l, align 1, !tbaa !36 ; 2 uses
  %i.m = and i8 %.val.i, 7
  switch i8 %i.m, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = lshr i8 %.val.i, 3
  %i.o = zext nneg i8 %i.n to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36
  %i.r = zext i8 %i.q to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -5
  %i.t = load i16, ptr %i.s, align 1, !tbaa !37
  %i.u = zext i16 %i.t to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 -9
  %i.w = load i32, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i32 %i.w to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 -17
  %i.z = load i64, ptr %i.y, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.z, %bb.g ], [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ 0, %bb.b ]
  %i.aa = trunc i64 %.0.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !101
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.o, label %bb.h

bb.h:                                             ; preds = %sdslen.exit
  %i.ac = load double, ptr %i.g, align 8, !tbaa !16
  store double %i.ac, ptr %3, align 8, !tbaa !16
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  call void @lpRandomPair(ptr noundef %i.ae, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 2) #17
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %4, align 8, !tbaa !99    ; 2 uses
  %.not20 = icmp eq ptr %i.af, null
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.ah, i32 127)
  %i.ai = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.af, i64 %i.ai, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !36
  %i.ak = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !102
  %i.an = sitofp i64 %i.am to double
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k
  %.sink = phi double [ %i.ak, %bb.k ], [ %i.an, %bb.l ]
  store double %.sink, ptr %3, align 8, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1956, ptr noundef nonnull @.str.13) #17
  tail call void @abort() #18
  unreachable

bb.o:                                             ; preds = %sdslen.exit, %bb.h, %bb.m
  ret void
}

declare ptr @dictGetFairRandomKey(ptr noundef) local_unnamed_addr #0

declare void @lpRandomPair(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zaddGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !163  ; 5 uses
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0243 = phi i32 [ %1, %.lr.ph.preheader ], [ %.1, %bb.l ] ; 7 uses
  %.0153242 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1154, %bb.l ] ; 6 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75   ; 6 uses
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.15) #19
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = or i32 %.0243, 2
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %i.q = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.16) #19
  %.not177 = icmp eq i32 %i.q, 0
  br i1 %.not177, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = or i32 %.0243, 4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.s = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.17) #19
  %.not178 = icmp eq i32 %i.s, 0
  br i1 %.not178, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.18) #19
  %.not179 = icmp eq i32 %i.t, 0
  br i1 %.not179, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = or i32 %.0243, 1
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.v = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.19) #19
  %.not180 = icmp eq i32 %i.v, 0
  br i1 %.not180, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = or i32 %.0243, 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.x = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.20) #19
  %.not181 = icmp eq i32 %i.x, 0
  br i1 %.not181, label %bb.k, label %.thread.loopexit.split.loop.exit

bb.k:                                             ; preds = %bb.j
  %i.y = or i32 %.0243, 16
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.i, %bb.k, %bb.g, %bb.d, %bb.e
  %.1154 = phi i32 [ %.0153242, %bb.k ], [ %.0153242, %bb.i ], [ %.0153242, %bb.g ], [ %.0153242, %bb.b ], [ %.0153242, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.y, %bb.k ], [ %i.w, %bb.i ], [ %i.u, %bb.g ], [ %i.p, %bb.b ], [ %i.r, %bb.d ], [ %.0243, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_1
begin_hunk_2_@zaddGenericCommand:bb.a
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !162
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !75
  %i.co = call i32 @zsetAdd(ptr noundef %.0140207, double noundef %i.ch, ptr noundef %i.cn, i32 noundef %.0.lcssa, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #17
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not191 = icmp eq i32 %i.cq, 0
  br i1 %.not191, label %.thread208, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load ptr, ptr %i.az, align 8, !tbaa !166
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !75
  %i.cu = call i32 @getKeySlot(ptr noundef %i.ct) #17
  %i.cv = call i64 @kvobjAllocSize(ptr noundef %.0140207) #17
  call void @updateSlotAllocSize(ptr noundef %i.cr, i32 noundef %i.cu, ptr noundef %.0140207, i64 noundef %.2145, i64 noundef %i.cv) #17
  br label %.thread208

.thread208:                                       ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

bb.ai:                                            ; preds = %bb.af
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !9   ; 3 uses
  %i.cx = lshr i32 %i.cw, 2
  %i.cy = and i32 %i.cx, 1
  %spec.select = add nuw nsw i32 %i.cy, %.0165254 ; 2 uses
  %i.cz = lshr i32 %i.cw, 3
  %i.da = and i32 %i.cz, 1
  %.1162 = add nuw nsw i32 %i.da, %.0161255       ; 2 uses
  %i.db = and i32 %i.cw, 1
  %i.dc = xor i32 %i.db, 1
  %.1158 = add nuw nsw i32 %i.dc, %.0157256       ; 2 uses
  %i.dd = load double, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge259.loopexit, label %bb.af, !llvm.loop !168

._crit_edge259.loopexit:                          ; preds = %bb.ai
  %i.de = icmp eq i32 %.1158, 0
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %._crit_edge259.loopexit, %.thread203
  %.0165.lcssa = phi i32 [ 0, %.thread203 ], [ %spec.select, %._crit_edge259.loopexit ] ; 5 uses
  %.0161.lcssa = phi i32 [ 0, %.thread203 ], [ %.1162, %._crit_edge259.loopexit ] ; 4 uses
  %.0157.lcssa = phi i1 [ true, %.thread203 ], [ %i.de, %._crit_edge259.loopexit ]
  %.0146.lcssa = phi double [ 0.000000e+00, %.thread203 ], [ %i.dd, %._crit_edge259.loopexit ]
  %i.df = add nuw nsw i32 %.0161.lcssa, %.0165.lcssa
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.di = add nsw i64 %i.dh, %i.dg
  store i64 %i.di, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not187 = icmp eq i32 %i.dj, 0
  br i1 %.not187, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge259
  %i.dk = load ptr, ptr %i.az, align 8, !tbaa !166
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !75
  %i.dn = call i32 @getKeySlot(ptr noundef %i.dm) #17
  %i.do = call i64 @kvobjAllocSize(ptr noundef %.0140207) #17
  call void @updateSlotAllocSize(ptr noundef %i.dk, i32 noundef %i.dn, ptr noundef %.0140207, i64 noundef %.2145, i64 noundef %i.do) #17
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge259, %bb.aj
  %i.dp = load ptr, ptr %i.az, align 8, !tbaa !166
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !75
  %i.ds = call i32 @getKeySlot(ptr noundef %i.dr) #17
  %i.dt = zext nneg i32 %.0165.lcssa to i64
  %i.du = add i64 %i.cd, %i.dt
  call void @updateKeysizesHist(ptr noundef %i.dp, i32 noundef %i.ds, i32 noundef 3, i64 noundef %i.cd, i64 noundef %i.du) #17
  br i1 %i.ab, label %bb.al, label %bb.an

.thread214:                                       ; preds = %bb.w
  br i1 %i.ab, label %.thread228, label %bb.an

bb.al:                                            ; preds = %bb.ak
  br i1 %.0157.lcssa, label %.thread228, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %.0146.lcssa) #17
  br label %.loopexit

.thread228:                                       ; preds = %.thread214, %bb.al
  %.3168221236 = phi i32 [ %.0165.lcssa, %bb.al ], [ 0, %.thread214 ]
  %.3164223235 = phi i32 [ %.0161.lcssa, %bb.al ], [ 0, %.thread214 ]
  %.1141226234 = phi ptr [ %.0140207, %bb.al ], [ null, %.thread214 ]
  call void @addReplyNull(ptr noundef nonnull %0) #17
  br label %.loopexit

bb.an:                                            ; preds = %.thread214, %bb.ak
  %.1141227 = phi ptr [ null, %.thread214 ], [ %.0140207, %bb.ak ]
  %.3164222 = phi i32 [ 0, %.thread214 ], [ %.0161.lcssa, %bb.ak ] ; 2 uses
  %.3168220 = phi i32 [ 0, %.thread214 ], [ %.0165.lcssa, %bb.ak ] ; 2 uses
  %i.dv = select i1 %.0153.lcssa, i32 0, i32 %.3164222
  %i.dw = add nsw i32 %.3168220, %i.dv
  %i.dx = sext i32 %i.dw to i64
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.dx) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph253, %.thread208, %bb.an, %.thread228, %bb.am, %._crit_edge
  %.4169 = phi i32 [ %.0165254, %.thread208 ], [ 0, %._crit_edge ], [ %.0165.lcssa, %bb.am ], [ %.3168221236, %.thread228 ], [ %.3168220, %bb.an ], [ 0, %.lr.ph253 ]
  %.4 = phi i32 [ %.0161255, %.thread208 ], [ 0, %._crit_edge ], [ %.0161.lcssa, %bb.am ], [ %.3164223235, %.thread228 ], [ %.3164222, %bb.an ], [ 0, %.lr.ph253 ]
  %.2142 = phi ptr [ %.0140207, %.thread208 ], [ %i.bb, %._crit_edge ], [ %.0140207, %bb.am ], [ %.1141226234, %.thread228 ], [ %.1141227, %bb.an ], [ undef, %.lr.ph253 ]
  call void @zfree(ptr noundef %i.aq) #17
  %i.dy = icmp ne i32 %.4169, 0
  %i.dz = icmp ne i32 %.4, 0
  %or.cond13 = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond13, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.loopexit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !166
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.eb, ptr noundef %i.g, ptr noundef %.2142, i32 noundef 1) #17
  %i.ec = select i1 %i.ab, ptr @.str.24, ptr @.str.25
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !166
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !170
  call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef nonnull %i.ec, ptr noundef %i.g, i32 noundef %i.ef) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit, %bb.s, %bb.q, %bb.o, %bb.m
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @getDoubleFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @lookupKeyWrite(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @dbAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #0

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #0

declare void @updateKeysizesHist(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare void @addReplyDouble(ptr noundef, double noundef) local_unnamed_addr #0

declare void @addReplyNull(ptr noundef) local_unnamed_addr #0

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zaddCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zaddGenericCommand(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zincrbyCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zaddGenericCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zremCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 8 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  %i.f = tail call ptr @lookupKeyWriteOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #17 ; 14 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 3) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8
  %1 = trunc i64 %i.i to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.f [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = tail call i64 @lpLength(ptr noundef %i.k) #17
  %i.m = lshr i64 %i.l, 1
  %i.n = and i64 %i.m, 4294967295
  br label %zsetLength.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  br label %zsetLength.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.n, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %zsetLength.exit
  %i.v = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %zsetLength.exit
  %.051 = phi i64 [ %i.v, %bb.g ], [ 0, %zsetLength.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !163
  %i.y = icmp sgt i32 %i.x, 2
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %zsetLength.exit59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !163
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.j, label %._crit_edge, !llvm.loop !174

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.04969 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.i ]
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = tail call i32 @zsetDel(ptr noundef nonnull %i.f, ptr noundef %i.ah)
  %spec.select = add nuw nsw i32 %i.ai, %.04969   ; 3 uses
  %i.aj = load i64, ptr %i.f, align 8
  %4 = trunc i64 %i.aj to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.m [
    i32 11, label %bb.k
    i32 7, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.al = tail call i64 @lpLength(ptr noundef %i.ak) #17
  %i.am = lshr i64 %i.al, 1
  %i.an = and i64 %i.am, 4294967295
  br label %zsetLength.exit59

bb.l:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !23
  br label %zsetLength.exit59

bb.m:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit59:                                ; preds = %bb.k, %bb.l
  %.0.i58 = phi i64 [ %i.an, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i64 %.0.i58, 0
  br i1 %i.at, label %bb.n, label %bb.i

bb.n:                                             ; preds = %zsetLength.exit59
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not56 = icmp eq i32 %i.au, 0
  br i1 %.not56, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.az = tail call i32 @getKeySlot(ptr noundef %i.ay) #17
  %i.ba = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #17
  tail call void @updateSlotAllocSize(ptr noundef %i.aw, i32 noundef %i.az, ptr noundef nonnull %i.f, i64 noundef %.051, i64 noundef %i.ba) #17
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !166
  %i.bd = tail call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.bc, ptr noundef %i.d) #17 ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %.049.lcssa = phi i32 [ 0, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !166
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !75
  %i.bk = tail call i32 @getKeySlot(ptr noundef %i.bj) #17
  %i.bl = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #17
  tail call void @updateSlotAllocSize(ptr noundef %i.bh, i32 noundef %i.bk, ptr noundef nonnull %i.f, i64 noundef %.051, i64 noundef %i.bl) #17
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p, %._crit_edge
  %i.bm = phi i1 [ true, %.thread ], [ false, %bb.p ], [ false, %._crit_edge ]
  %.262 = phi i32 [ %spec.select, %.thread ], [ %.049.lcssa, %bb.p ], [ %.049.lcssa, %._crit_edge ] ; 2 uses
  %.not57 = icmp eq i32 %.262, 0
  br i1 %.not57, label %._crit_edge74, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = sext i32 %.262 to i64                   ; 3 uses
  %i.bo = sub nsw i64 %.0.i, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !166
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !170
  tail call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef nonnull @.str.26, ptr noundef %i.d, i32 noundef %i.bs) #17
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !166
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !170
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef %i.d, i32 noundef %i.bv) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bw = phi ptr [ null, %bb.s ], [ %i.f, %bb.r ]
  %.0 = phi i64 [ -1, %bb.s ], [ %i.bo, %bb.r ]
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !166
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !75
  %i.ca = tail call i32 @getKeySlot(ptr noundef %i.bz) #17
  tail call void @updateKeysizesHist(ptr noundef %i.bx, i32 noundef %i.ca, i32 noundef 3, i64 noundef %.0.i, i64 noundef %.0) #17
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !166
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.cb, ptr noundef %i.d, ptr noundef %i.bw, i32 noundef 1) #17
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.cd = add nsw i64 %i.cc, %i.bn
  store i64 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.q, %bb.t
  %.pre-phi = phi i64 [ %i.bn, %bb.t ], [ 0, %bb.q ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.pre-phi) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %._crit_edge74
  ret void
}

declare ptr @lookupKeyWriteOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @dbDeleteSkipKeysizesUpdate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zremrangeGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %2 = alloca %struct.zrangespec, align 8         ; 5 uses
  %3 = alloca %struct.zlexrangespec, align 8      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.h = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef null) #17
  %.not102 = icmp eq i32 %i.k, 0
  br i1 %.not102, label %bb.c, label %zslFreeLexRange.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !162
  %i.o = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.c, ptr noundef null) #17
  %.not103 = icmp eq i32 %i.o, 0
  br i1 %.not103, label %bb.j, label %zslFreeLexRange.exit

bb.d:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 2, label %bb.e
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162
  %i.t = call fastcc i32 @zslParseRange(ptr noundef %i.q, ptr noundef %i.s, ptr noundef %2)
  %.not101 = icmp eq i32 %i.t, 0
  br i1 %.not101, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #17
  br label %zslFreeLexRange.exit

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = call i32 @zslParseLexRange(ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #17
  br label %zslFreeLexRange.exit

bb.i:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2187, ptr noundef nonnull @.str.33, i32 noundef %1) #17
  tail call void @abort() #18
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.c
  %.091 = phi ptr [ @.str.28, %bb.c ], [ @.str.29, %bb.e ], [ @.str.31, %bb.g ]
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  %i.aa = call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.z) #17 ; 16 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.ba, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i32 noundef 3) #17
  %.not104 = icmp eq i32 %i.ac, 0
  br i1 %.not104, label %bb.l, label %bb.ba

bb.l:                                             ; preds = %bb.k
  br i1 %i.h, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.ad = load i64, ptr %i.aa, align 8
  %4 = trunc i64 %i.ad to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.p [
    i32 11, label %bb.n
    i32 7, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.ag = call i64 @lpLength(ptr noundef %i.af) #17
  %i.ah = lshr i64 %i.ag, 1
  %i.ai = and i64 %i.ah, 4294967295
  br label %zsetLength.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !103
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23
  br label %zsetLength.exit

bb.p:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i = phi i64 [ %i.ai, %bb.n ], [ %i.ao, %bb.o ] ; 5 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !24  ; 3 uses
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %zsetLength.exit
  %i.ar = add nsw i64 %i.ap, %.0.i                ; 2 uses
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %zsetLength.exit
  %i.as = phi i64 [ %i.ar, %bb.q ], [ %i.ap, %zsetLength.exit ] ; 2 uses
  %i.at = load i64, ptr %i.c, align 8, !tbaa !24  ; 3 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = add nsw i64 %i.at, %.0.i                ; 2 uses
  store i64 %i.av, ptr %i.c, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = phi i64 [ %i.av, %bb.s ], [ %i.at, %bb.r ] ; 2 uses
  %i.ax = icmp slt i64 %i.as, 0
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.b, align 8, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ay = phi i64 [ 0, %bb.u ], [ %i.as, %bb.t ]  ; 2 uses
  %i.az = icmp sle i64 %i.ay, %i.aw
  %.not105 = icmp slt i64 %i.ay, %.0.i
  %or.cond111 = select i1 %i.az, i1 %.not105, i1 false
  br i1 %or.cond111, label %bb.w, label %.thread115

.thread115:                                       ; preds = %bb.v
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ba) #17
  br label %zslFreeLexRange.exit

bb.w:                                             ; preds = %bb.v
  %.not106 = icmp samesign ult i64 %i.aw, %.0.i
  br i1 %.not106, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = add nsw i64 %.0.i, -1
  store i64 %i.bb, ptr %i.c, align 8, !tbaa !24
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.l
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not107 = icmp eq i32 %i.bc, 0
  br i1 %.not107, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = call i64 @kvobjAllocSize(ptr noundef nonnull %i.aa) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.092 = phi i64 [ %i.bd, %bb.z ], [ 0, %bb.y ]  ; 3 uses
  %i.be = load i64, ptr %i.aa, align 8
  %7 = trunc i64 %i.be to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.as [
    i32 11, label %bb.ab
    i32 7, label %bb.aj
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75 ; 3 uses
  switch i32 %1, label %default.unreachable [
    i32 3, label %bb.ae
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = sub i32 %i.bk, %i.bi
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !24
  %i.bo = shl i64 %i.bh, 1
  %i.bp = and i64 %i.bo, 4294967294
  %i.bq = shl i32 %i.bm, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = call ptr @lpDeleteRange(ptr noundef %i.bg, i64 noundef %i.bp, i64 noundef %i.br) #17
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.bt = call fastcc ptr @zzlDeleteRangeByScore(ptr noundef %i.bg, ptr noundef %2, ptr noundef %i.a)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.bu = call fastcc ptr @zzlDeleteRangeByLex(ptr noundef %i.bg, ptr noundef %3, ptr noundef %i.a)
  br label %bb.af

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sink = phi ptr [ %i.bu, %bb.ae ], [ %i.bt, %bb.ad ], [ %i.bs, %bb.ac ] ; 2 uses
  store ptr %.sink, ptr %i.bf, align 8, !tbaa !75
  %i.bv = call i64 @lpLength(ptr noundef %.sink) #17
  %i.bw = and i64 %i.bv, 8589934590
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not109 = icmp eq i32 %i.by, 0
  br i1 %.not109, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !166
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !75
  %i.cd = call i32 @getKeySlot(ptr noundef %i.cc) #17
  %i.ce = call i64 @kvobjAllocSize(ptr noundef nonnull %i.aa) #17
  call void @updateSlotAllocSize(ptr noundef %i.ca, i32 noundef %i.cd, ptr noundef nonnull %i.aa, i64 noundef %.092, i64 noundef %i.ce) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !166
  %i.ch = call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.cg, ptr noundef %i.g) #17 ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !75 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !107 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 54 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !37
  %i.cn = add i16 %i.cm, 1
  store i16 %i.cn, ptr %i.cl, align 2, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !103 ; 3 uses
  switch i32 %1, label %default.unreachable116 [
    i32 3, label %bb.am
    i32 1, label %bb.ak
    i32 2, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !24
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = add i32 %i.cr, 1
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !24
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = add i32 %i.cu, 1
  %i.cw = call fastcc i64 @zslDeleteRangeByRank(ptr noundef %i.cp, i32 noundef %i.cs, i32 noundef %i.cv, ptr noundef nonnull %i.ck)
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.cx = call fastcc i64 @zslDeleteRangeByScore(ptr noundef %i.cp, ptr noundef %2, ptr noundef nonnull %i.ck)
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.cy = call fastcc i64 @zslDeleteRangeByLex(ptr noundef %i.cp, ptr noundef %3, ptr noundef nonnull %i.ck)
  br label %bb.an

default.unreachable116:                           ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.sink127 = phi i64 [ %i.cy, %bb.am ], [ %i.cx, %bb.al ], [ %i.cw, %bb.ak ]
  store i64 %.sink127, ptr %i.a, align 8, !tbaa !24
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !107 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 54 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !37
  %i.dc = add i16 %i.db, -1
  store i16 %i.dc, ptr %i.da, align 2, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !24
  %i.dh = sub i64 0, %i.dg
  %i.di = icmp eq i64 %i.de, %i.dh
  br i1 %i.di, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not108 = icmp eq i32 %i.dj, 0
  br i1 %.not108, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !166
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !75
  %i.do = call i32 @getKeySlot(ptr noundef %i.dn) #17
  %i.dp = call i64 @kvobjAllocSize(ptr noundef nonnull %i.aa) #17
  call void @updateSlotAllocSize(ptr noundef %i.dl, i32 noundef %i.do, ptr noundef nonnull %i.aa, i64 noundef %.092, i64 noundef %i.dp) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !166
  %i.ds = call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.dr, ptr noundef %i.g) #17 ; 0 uses
  br label %.thread

bb.ar:                                            ; preds = %bb.an
  %i.dt = call i32 @dictShrinkIfNeeded(ptr noundef nonnull %i.cz) #17 ; 0 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2257, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

bb.at:                                            ; preds = %bb.ar, %bb.af
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !166
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !75
  %i.ea = call i32 @getKeySlot(ptr noundef %i.dz) #17
  %i.eb = call i64 @kvobjAllocSize(ptr noundef nonnull %i.aa) #17
  call void @updateSlotAllocSize(ptr noundef %i.dx, i32 noundef %i.ea, ptr noundef nonnull %i.aa, i64 noundef %.092, i64 noundef %i.eb) #17
  br label %.thread

.thread:                                          ; preds = %bb.aq, %bb.ai, %bb.au, %bb.at
  %.1114 = phi i1 [ false, %bb.at ], [ false, %bb.au ], [ true, %bb.ai ], [ true, %bb.aq ]
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !24  ; 5 uses
  %.not110 = icmp eq i64 %i.ec, 0
  br i1 %.not110, label %bb.az, label %bb.av

bb.av:                                            ; preds = %.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !166
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ee, ptr noundef %i.g, ptr noundef null, i32 noundef 1) #17
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !166
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !170
  call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef nonnull %.091, ptr noundef %i.g, i32 noundef %i.eh) #17
  br i1 %.1114, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !166
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !170
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef %i.g, i32 noundef %i.ek) #17
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.el = call i64 @zsetLength(ptr noundef nonnull %i.aa) ; 2 uses
  %i.em = add i64 %i.el, %i.ec
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.089 = phi i64 [ %i.ec, %bb.aw ], [ %i.em, %bb.ax ]
  %.0 = phi i64 [ -1, %bb.aw ], [ %i.el, %bb.ax ]
  %i.en = load ptr, ptr %i.ed, align 8, !tbaa !166
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !75
  %i.eq = call i32 @getKeySlot(ptr noundef %i.ep) #17
end_hunk_2
begin_hunk_3_@zdiff:bb.a
  %i.hk = load i32, ptr %i.hj, align 1, !tbaa !9
  %i.hl = zext i32 %i.hk to i64
  br label %sdslen.exit.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i
  %i.hm = getelementptr inbounds i8, ptr %i.gy, i64 -17
  %i.hn = load i64, ptr %i.hm, align 1, !tbaa !24
  br label %sdslen.exit.i.i

sdslen.exit.i.i:                                  ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.0.i.i32.i = phi i64 [ %i.hn, %bb.bc ], [ %i.hc, %bb.ay ], [ %i.hf, %bb.az ], [ %i.hi, %bb.ba ], [ %i.hl, %bb.bb ]
  %i.ho = icmp ugt i64 %.0.i.i32.i, %.035.i.i
  br i1 %i.ho, label %bb.bd, label %sdslen.exit13.i.i

bb.bd:                                            ; preds = %sdslen.exit.i.i
  switch i8 %i.ha, label %default.unreachable.i.i [
    i8 0, label %sdslen.exit13.thread.i.i
    i8 1, label %sdslen.exit13.thread21.i.i
    i8 2, label %sdslen.exit13.thread24.i.i
    i8 3, label %sdslen.exit13.thread27.i.i
    i8 4, label %sdslen.exit13.thread30.i.i
  ]

sdslen.exit13.thread.i.i:                         ; preds = %bb.bd
  %i.hp = lshr i8 %.val.i.i.i, 3
  %i.hq = zext nneg i8 %i.hp to i64               ; 2 uses
  br label %sdslen.exit16.i.i

sdslen.exit13.thread21.i.i:                       ; preds = %bb.bd
  %i.hr = getelementptr inbounds i8, ptr %i.gy, i64 -3
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !36
  %i.ht = zext i8 %i.hs to i64                    ; 2 uses
  br label %sdslen.exit16.i.i

sdslen.exit13.thread24.i.i:                       ; preds = %bb.bd
  %i.hu = getelementptr inbounds i8, ptr %i.gy, i64 -5
  %i.hv = load i16, ptr %i.hu, align 1, !tbaa !37
  %i.hw = zext i16 %i.hv to i64                   ; 2 uses
  br label %sdslen.exit16.i.i

sdslen.exit13.thread27.i.i:                       ; preds = %bb.bd
  %i.hx = getelementptr inbounds i8, ptr %i.gy, i64 -9
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !9
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  br label %sdslen.exit16.i.i

sdslen.exit13.thread30.i.i:                       ; preds = %bb.bd
  %i.ia = getelementptr inbounds i8, ptr %i.gy, i64 -17
  %i.ib = load i64, ptr %i.ia, align 1, !tbaa !24 ; 2 uses
  br label %sdslen.exit16.i.i

default.unreachable.i.i:                          ; preds = %bb.bd
  unreachable

sdslen.exit13.i.i:                                ; preds = %sdslen.exit.i.i
  switch i8 %i.ha, label %default.unreachable56.i.i [
    i8 0, label %sdslen.exit13._crit_edge50.i.i
    i8 1, label %sdslen.exit13._crit_edge42.i.i
    i8 2, label %sdslen.exit13._crit_edge39.i.i
    i8 3, label %sdslen.exit13._crit_edge36.i.i
    i8 4, label %sdslen.exit13._crit_edge.i.i
  ]

sdslen.exit13._crit_edge50.i.i:                   ; preds = %sdslen.exit13.i.i
  %.pre51.i.i = lshr i8 %.val.i.i.i, 3
  %.pre53.i.i = zext nneg i8 %.pre51.i.i to i64
  br label %sdslen.exit16.i.i

sdslen.exit13._crit_edge42.i.i:                   ; preds = %sdslen.exit13.i.i
  %.phi.trans.insert43.i.i = getelementptr inbounds i8, ptr %i.gy, i64 -3
  %.pre44.i.i = load i8, ptr %.phi.trans.insert43.i.i, align 1, !tbaa !36
  %.pre45.i.i = zext i8 %.pre44.i.i to i64
  br label %sdslen.exit16.i.i

sdslen.exit13._crit_edge39.i.i:                   ; preds = %sdslen.exit13.i.i
  %.phi.trans.insert40.i.i = getelementptr inbounds i8, ptr %i.gy, i64 -5
  %.pre41.i.i = load i16, ptr %.phi.trans.insert40.i.i, align 1, !tbaa !37
  %.pre46.i.i = zext i16 %.pre41.i.i to i64
  br label %sdslen.exit16.i.i

sdslen.exit13._crit_edge36.i.i:                   ; preds = %sdslen.exit13.i.i
  %.phi.trans.insert37.i.i = getelementptr inbounds i8, ptr %i.gy, i64 -9
  %.pre38.i.i = load i32, ptr %.phi.trans.insert37.i.i, align 1, !tbaa !9
  %.pre48.i.i = zext i32 %.pre38.i.i to i64
  br label %sdslen.exit16.i.i

sdslen.exit13._crit_edge.i.i:                     ; preds = %sdslen.exit13.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %i.gy, i64 -17
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 1, !tbaa !24
  br label %sdslen.exit16.i.i

default.unreachable56.i.i:                        ; preds = %sdslen.exit13.i.i
  unreachable

sdslen.exit16.i.i:                                ; preds = %sdslen.exit13._crit_edge.i.i, %sdslen.exit13._crit_edge36.i.i, %sdslen.exit13._crit_edge39.i.i, %sdslen.exit13._crit_edge42.i.i, %sdslen.exit13._crit_edge50.i.i, %sdslen.exit13.thread30.i.i, %sdslen.exit13.thread27.i.i, %sdslen.exit13.thread24.i.i, %sdslen.exit13.thread21.i.i, %sdslen.exit13.thread.i.i, %.lr.ph.i.i
  %.120.i.i = phi i64 [ %i.hz, %sdslen.exit13.thread27.i.i ], [ %.035.i.i, %.lr.ph.i.i ], [ %i.hq, %sdslen.exit13.thread.i.i ], [ %i.ht, %sdslen.exit13.thread21.i.i ], [ %i.hw, %sdslen.exit13.thread24.i.i ], [ %.035.i.i, %sdslen.exit13._crit_edge.i.i ], [ %.035.i.i, %sdslen.exit13._crit_edge50.i.i ], [ %.035.i.i, %sdslen.exit13._crit_edge42.i.i ], [ %.035.i.i, %sdslen.exit13._crit_edge39.i.i ], [ %.035.i.i, %sdslen.exit13._crit_edge36.i.i ], [ %i.ib, %sdslen.exit13.thread30.i.i ] ; 2 uses
  %.0.i15.i.i = phi i64 [ %i.hz, %sdslen.exit13.thread27.i.i ], [ 0, %.lr.ph.i.i ], [ %i.hq, %sdslen.exit13.thread.i.i ], [ %i.ht, %sdslen.exit13.thread21.i.i ], [ %i.hw, %sdslen.exit13.thread24.i.i ], [ %.pre.i.i, %sdslen.exit13._crit_edge.i.i ], [ %.pre53.i.i, %sdslen.exit13._crit_edge50.i.i ], [ %.pre45.i.i, %sdslen.exit13._crit_edge42.i.i ], [ %.pre46.i.i, %sdslen.exit13._crit_edge39.i.i ], [ %.pre48.i.i, %sdslen.exit13._crit_edge36.i.i ], [ %i.ib, %sdslen.exit13.thread30.i.i ]
  %i.ic = load i64, ptr %4, align 8, !tbaa !24
  %i.id = add i64 %i.ic, %.0.i15.i.i
  store i64 %i.id, ptr %4, align 8, !tbaa !24
  %i.ie = call ptr @dictNext(ptr noundef nonnull %5) #17 ; 2 uses
  %.not.i33.i = icmp eq ptr %i.ie, null
  br i1 %.not.i33.i, label %zdiffAlgorithm2.exit, label %.lr.ph.i.i, !llvm.loop !223

zdiffAlgorithm2.exit:                             ; preds = %sdslen.exit16.i.i, %.loopexit.i19
  %.0.lcssa.i.i = phi i64 [ 0, %.loopexit.i19 ], [ %.120.i.i, %sdslen.exit16.i.i ]
  call void @dictResetIterator(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  store i64 %.0.lcssa.i.i, ptr %3, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %zsetChooseDiffAlgorithm.exit

zsetChooseDiffAlgorithm.exit:                     ; preds = %.lr.ph.peel.next.i, %zdiffAlgorithm1.exit, %zdiffAlgorithm2.exit, %bb.a
  ret void
}

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #0

declare void @setKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @decrRefCount(ptr noundef) local_unnamed_addr #0

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @freeObjAsync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zunionstoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  tail call void @zunionInterDiffGenericCommand(ptr noundef %0, ptr noundef %i.d, i32 noundef 2, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zinterstoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  tail call void @zunionInterDiffGenericCommand(ptr noundef %0, ptr noundef %i.d, i32 noundef 2, i32 noundef 2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zdiffstoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  tail call void @zunionInterDiffGenericCommand(ptr noundef %0, ptr noundef %i.d, i32 noundef 2, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zunionCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zunionInterDiffGenericCommand(ptr noundef %0, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zinterCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zunionInterDiffGenericCommand(ptr noundef %0, ptr noundef null, i32 noundef 1, i32 noundef 2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zinterCardCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zunionInterDiffGenericCommand(ptr noundef %0, ptr noundef null, i32 noundef 1, i32 noundef 2, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zdiffCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zunionInterDiffGenericCommand(ptr noundef %0, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @genericZrangebyrankCommand(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !224  ; 3 uses
  %i.h = load i64, ptr %1, align 8
  %6 = trunc i64 %i.h to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.d [
    i32 11, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = tail call i64 @lpLength(ptr noundef %i.j) #17
  %i.l = lshr i64 %i.k, 1
  %i.m = and i64 %i.l, 4294967295
  br label %zsetLength.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  br label %zsetLength.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.m, %bb.b ], [ %i.s, %bb.c ] ; 6 uses
  %i.t = icmp slt i64 %2, 0
  %i.u = select i1 %i.t, i64 %.0.i, i64 0
  %spec.select = add nsw i64 %i.u, %2             ; 3 uses
  %i.v = icmp slt i64 %3, 0
  %i.w = select i1 %i.v, i64 %.0.i, i64 0
  %.080 = add nsw i64 %i.w, %3                    ; 3 uses
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 0) ; 7 uses
  %i.x = icmp sle i64 %spec.store.select, %.080
  %.not = icmp slt i64 %spec.store.select, %.0.i
  %or.cond = select i1 %i.x, i1 %.not, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %zsetLength.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !226
  tail call void %i.z(ptr noundef nonnull %0, i64 noundef 0) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !227
  tail call void %i.ab(ptr noundef nonnull %0, i64 noundef 0) #17
  br label %bb.ap

bb.f:                                             ; preds = %zsetLength.exit
  %.not95 = icmp samesign ult i64 %.080, %.0.i
  %i.ac = add nsw i64 %.0.i, -1
  %spec.select105 = select i1 %.not95, i64 %.080, i64 %i.ac
  %i.ad = sub nsw i64 %spec.select105, %spec.store.select ; 3 uses
  %i.ae = add nsw i64 %i.ad, 1                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !226
  tail call void %i.ag(ptr noundef nonnull %0, i64 noundef %i.ae) #17
  %i.ah = load i64, ptr %1, align 8
  %9 = trunc i64 %i.ah to i32
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 15
  switch i32 %11, label %bb.ao [
    i32 11, label %bb.g
    i32 7, label %bb.z
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !75 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %.not101 = icmp eq i32 %5, 0                    ; 2 uses
  %i.ak = shl nuw nsw i64 %spec.store.select, 1   ; 2 uses
  %i.al = sub nuw nsw i64 -2, %i.ak
  %.sink = select i1 %.not101, i64 %i.ak, i64 %i.al
  %i.am = tail call ptr @lpSeek(ptr noundef %i.aj, i64 noundef %.sink) #17 ; 3 uses
  %.not102 = icmp eq ptr %i.am, null
  br i1 %.not102, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 3431) #17
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = tail call ptr @lpNext(ptr noundef %i.aj, ptr noundef nonnull %i.am) #17
  %.not103181 = icmp eq i64 %i.ae, 0
  br i1 %.not103181, label %._crit_edge, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.i
  %.not104 = icmp eq i32 %4, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph185, %zzlPrev.exit
  %i.aq = phi i64 [ %i.ad, %.lr.ph185 ], [ %i.bm, %zzlPrev.exit ] ; 2 uses
  %.084184 = phi double [ 0.000000e+00, %.lr.ph185 ], [ %.185, %zzlPrev.exit ]
  %.0183 = phi ptr [ %i.an, %.lr.ph185 ], [ %.1160, %zzlPrev.exit ] ; 3 uses
  %.0161182 = phi ptr [ %i.am, %.lr.ph185 ], [ %.1162, %zzlPrev.exit ] ; 3 uses
  %i.ar = icmp ne ptr %.0161182, null
  %i.as = icmp ne ptr %.0183, null
  %i.at = select i1 %i.ar, i1 %i.as, i1 false, !prof !34
  br i1 %i.at, label %bb.l, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 3435) #17
  call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.au = call ptr @lpGetValue(ptr noundef nonnull %.0161182, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  br i1 %.not104, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.av = call ptr @lpGetValue(ptr noundef nonnull %.0183, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.av, null
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.aw, i32 127)
  %i.ax = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.av, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !36
  %i.az = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !92
  %i.bb = sitofp i64 %i.ba to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.n, %bb.o
  %.0.i106 = phi double [ %i.az, %bb.n ], [ %i.bb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.p

bb.p:                                             ; preds = %zzlGetScore.exit, %bb.l
  %.185 = phi double [ %.0.i106, %zzlGetScore.exit ], [ %.084184, %bb.l ] ; 3 uses
  %i.bc = icmp eq ptr %i.au, null
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !228
  %i.be = load i64, ptr %i.e, align 8, !tbaa !92
  call void %i.bd(ptr noundef nonnull %0, i64 noundef %i.be, double noundef %.185) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.ao, align 8, !tbaa !229
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bh = zext i32 %i.bg to i64
  call void %i.bf(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i64 noundef %i.bh, double noundef %.185) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not101, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = call ptr @lpPrev(ptr noundef %i.aj, ptr noundef nonnull %.0161182) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.bi, null
  br i1 %.not14.i, label %zzlPrev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = call ptr @lpPrev(ptr noundef %i.aj, ptr noundef nonnull %i.bi) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.bj, null
  br i1 %.not15.i, label %bb.v, label %zzlPrev.exit, !prof !91

bb.v:                                             ; preds = %bb.u
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1043) #17
  call void @abort() #18
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.bk = call ptr @lpNext(ptr noundef %i.aj, ptr noundef nonnull %.0183) #17 ; 3 uses
  %.not14.i111 = icmp eq ptr %i.bk, null
  br i1 %.not14.i111, label %zzlPrev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = call ptr @lpNext(ptr noundef %i.aj, ptr noundef nonnull %i.bk) #17 ; 2 uses
  %.not15.i112 = icmp eq ptr %i.bl, null
  br i1 %.not15.i112, label %bb.y, label %zzlPrev.exit, !prof !91

bb.y:                                             ; preds = %bb.x
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

zzlPrev.exit:                                     ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.1162 = phi ptr [ null, %bb.t ], [ %i.bj, %bb.u ], [ null, %bb.w ], [ %i.bk, %bb.x ]
  %.1160 = phi ptr [ null, %bb.t ], [ %i.bi, %bb.u ], [ null, %bb.w ], [ %i.bl, %bb.x ]
  %i.bm = add nsw i64 %i.aq, -1
  %.not103 = icmp eq i64 %i.aq, 0
  br i1 %.not103, label %._crit_edge, label %bb.j, !llvm.loop !230

._crit_edge:                                      ; preds = %zzlPrev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.loopexit

bb.z:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !75
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !103 ; 5 uses
  %.not96 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not96, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30
  %.not98 = icmp slt i64 %spec.select, 1
  br i1 %.not98, label %zslGetElementByRank.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = sub nsw i64 %.0.i, %spec.store.select   ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !18 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader.preheader.i.i, label %zslGetElementByRank.exit

.preheader.preheader.i.i:                         ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bv, -1
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !28
  %i.bz = zext nneg i32 %i.bx to i64
  br label %.preheader.i.i

bb.ac:                                            ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ca = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.ca, label %.preheader.i.i, label %zslGetElementByRank.exit, !llvm.loop !55

.preheader.i.i:                                   ; preds = %bb.ac, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bz, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 6 uses
  %.01845.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.1.lcssa.i.i, %bb.ac ] ; 4 uses
  %.01944.i.i = phi ptr [ %i.by, %.preheader.preheader.i.i ], [ %.120.lcssa.i.i, %bb.ac ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01944.i.i, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.i.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31 ; 4 uses
  %.not29.i.i = icmp eq ptr %i.cd, null
  br i1 %.not29.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.not28.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not28.i.i, label %.lr.ph.split.us.i.i, label %zslGetNodeSpanAtLevel.exit.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !31
  %.not.i.us40.i.i = icmp ne ptr %i.ce, null
  %i.cf = zext i1 %.not.i.us40.i.i to i64
  %i.cg = add i64 %.01845.i.i, %i.cf              ; 4 uses
  %.not2227.us41.i.i = icmp ugt i64 %i.cg, %i.bt
  br i1 %.not2227.us41.i.i, label %.critedge.thread.i.i, label %.thread.us.i.preheader.i

.thread.us.i.preheader.i:                         ; preds = %.lr.ph.split.us.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31 ; 2 uses
end_hunk_3
begin_hunk_4_@zrangeGenericCommand:bb.a

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.cc, align 8, !tbaa !234
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !224
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !215
  %i.cg = icmp sgt i32 %i.cf, 2
  %i.ch = zext i1 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !235
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !166
  %i.cl = call ptr @lookupKeyRead(ptr noundef %i.ck, ptr noundef %i.k) #17 ; 8 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not140, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !226
  call void %i.co(ptr noundef %0, i64 noundef -1) #17
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !227
  call void %i.cq(ptr noundef %0, i64 noundef 0) #17
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  call void @addReply(ptr noundef nonnull %i.f, ptr noundef %i.cr) #17
  br label %bb.aj

bb.aa:                                            ; preds = %bb.w
  %i.cs = call i32 @checkType(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cl, i32 noundef 3) #17
  %.not141 = icmp eq i32 %i.cs, 0
  br i1 %.not141, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not142 = icmp eq i32 %i.ct, 0
  br i1 %.not142, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = call i64 @kvobjAllocSize(ptr noundef nonnull %i.cl) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0125 = phi i64 [ %i.cu, %bb.ac ], [ 0, %bb.ab ]
  switch i32 %spec.store.select11201208, label %bb.ah [
    i32 3, label %bb.ag
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !24
  %i.cx = zext i1 %or.cond10 to i32
  %i.cy = zext i1 %i.az to i32
  call void @genericZrangebyrankCommand(ptr noundef %0, ptr noundef nonnull %i.cl, i64 noundef %i.cv, i64 noundef %i.cw, i32 noundef %i.cx, i32 noundef %i.cy)
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.cz = load i64, ptr %i.c, align 8, !tbaa !24
  %i.da = load i64, ptr %i.d, align 8, !tbaa !24
  %i.db = zext i1 %i.az to i32
  call void @genericZrangebyscoreCommand(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %i.cl, i64 noundef %i.cz, i64 noundef %i.da, i32 noundef %i.db)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.dc = zext i1 %or.cond10 to i32
  %i.dd = load i64, ptr %i.c, align 8, !tbaa !24
  %i.de = load i64, ptr %i.d, align 8, !tbaa !24
  %i.df = zext i1 %i.az to i32
  call void @genericZrangebylexCommand(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.cl, i32 noundef %i.dc, i64 noundef %i.dd, i64 noundef %i.de, i32 noundef %i.df)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not143 = icmp eq i32 %i.dg, 0
  br i1 %.not143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load ptr, ptr %i.cj, align 8, !tbaa !166
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !75
  %i.dk = call i32 @getKeySlot(ptr noundef %i.dj) #17
  %i.dl = call i64 @kvobjAllocSize(ptr noundef nonnull %i.cl) #17
  call void @updateSlotAllocSize(ptr noundef %i.dh, i32 noundef %i.dk, ptr noundef nonnull %i.cl, i64 noundef %.0125, i64 noundef %i.dl) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.aa, %bb.y, %bb.z
  br i1 %i.ay, label %bb.ak, label %zslFreeLexRange.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %.not.i = icmp eq ptr %i.dm, %i.dn
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.dm, %i.do
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @sdsfree(ptr noundef %i.dm) #17
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71
  %.pre11.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dp = phi ptr [ %.pre11.i, %bb.al ], [ %i.do, %bb.ak ]
  %i.dq = phi ptr [ %.pre.i, %bb.al ], [ %i.dn, %bb.ak ]
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !74 ; 3 uses
  %.not8.i = icmp eq ptr %i.ds, %i.dq
  %.not9.i = icmp eq ptr %i.ds, %i.dp
  %or.cond10.i = select i1 %.not8.i, i1 true, i1 %.not9.i
  br i1 %or.cond10.i, label %zslFreeLexRange.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @sdsfree(ptr noundef %i.ds) #17
  br label %zslFreeLexRange.exit

zslFreeLexRange.exit:                             ; preds = %bb.d, %bb.j, %.critedge, %bb.an, %bb.am, %bb.aj, %bb.o, %bb.p, %bb.t, %bb.r, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangeCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrevrangeCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @genericZrangebyscoreCommand(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226
  tail call void %i.g(ptr noundef %0, i64 noundef -1) #17
  %i.h = icmp slt i64 %3, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0                       ; 2 uses
  %.pre210 = load i64, ptr %2, align 8            ; 2 uses
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %6 = trunc i64 %.pre210 to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.f [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = tail call i64 @lpLength(ptr noundef %i.j) #17
  %i.l = lshr i64 %i.k, 1
  %i.m = and i64 %i.l, 4294967295
  br label %zsetLength.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  br label %zsetLength.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.m, %bb.d ], [ %i.s, %bb.e ]
  %.not83 = icmp slt i64 %3, %.0.i
  br i1 %.not83, label %zsetLength.exit._crit_edge, label %bb.g

zsetLength.exit._crit_edge:                       ; preds = %zsetLength.exit
  %.pre = load i64, ptr %2, align 8
  br label %bb.h

bb.g:                                             ; preds = %zsetLength.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !227
  tail call void %i.u(ptr noundef nonnull %0, i64 noundef 0) #17
  br label %bb.au

bb.h:                                             ; preds = %zsetLength.exit._crit_edge, %bb.b
  %i.v = phi i64 [ %.pre, %zsetLength.exit._crit_edge ], [ %.pre210, %bb.b ]
  %9 = trunc i64 %i.v to i32
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 15
  switch i32 %11, label %bb.at [
    i32 11, label %bb.i
    i32 7, label %bb.af
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %.not89 = icmp eq i32 %5, 0                     ; 3 uses
  br i1 %.not89, label %bb.j, label %.thread223

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @zzlFirstInRange(ptr noundef %i.x, ptr noundef %1) ; 3 uses
  %.not90 = icmp eq ptr %i.y, null
  br i1 %.not90, label %.critedge2, label %.lr.ph179.split.us

.thread223:                                       ; preds = %bb.i
  %i.z = tail call ptr @zzlLastInRange(ptr noundef %i.x, ptr noundef %1) ; 4 uses
  %.not90225 = icmp eq ptr %i.z, null
  br i1 %.not90225, label %.critedge2, label %.lr.ph179.split.preheader

.lr.ph179.split.preheader:                        ; preds = %.thread223
  %i.aa = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.z) #17 ; 2 uses
  %.not92292 = icmp eq i64 %3, 0
  br i1 %.not92292, label %.lr.ph199, label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph179.split.preheader
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  br i1 %i.ab, label %.critedge.i, label %bb.k, !prof !91

bb.k:                                             ; preds = %.lr.ph295
  %i.ad = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %i.z) #17 ; 3 uses
  %.not14.i.peel = icmp eq ptr %i.ad, null
  br i1 %.not14.i.peel, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %i.ad) #17 ; 3 uses
  %.not15.i.peel = icmp eq ptr %i.ae, null
  br i1 %.not15.i.peel, label %.loopexit, label %.lr.ph179.split.peel, !prof !91, !llvm.loop !237

.lr.ph179.split.peel:                             ; preds = %bb.l
  %.not92.peel = icmp eq i64 %i.ac, 0
  br i1 %.not92.peel, label %.lr.ph199, label %.lr.ph295.peel.newph

.lr.ph179.split.us:                               ; preds = %bb.j
  %i.af = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.y) #17 ; 2 uses
  br i1 %.not, label %.lr.ph199, label %.lr.ph191

zzlPrev.exit.us:                                  ; preds = %bb.n
  %.not92.us = icmp eq i64 %i.ag, 0
  br i1 %.not92.us, label %.lr.ph199, label %.lr.ph191, !llvm.loop !237

.lr.ph191:                                        ; preds = %.lr.ph179.split.us, %zzlPrev.exit.us
  %.in = phi i64 [ %i.ag, %zzlPrev.exit.us ], [ %3, %.lr.ph179.split.us ]
  %.1140177.us190 = phi ptr [ %i.ai, %zzlPrev.exit.us ], [ %i.af, %.lr.ph179.split.us ] ; 2 uses
  %i.ag = add nsw i64 %.in, -1                    ; 2 uses
  %.not16.i99.us = icmp eq ptr %.1140177.us190, null
  br i1 %.not16.i99.us, label %.critedge.i103, label %bb.m, !prof !91

bb.m:                                             ; preds = %.lr.ph191
  %i.ah = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %.1140177.us190) #17 ; 3 uses
  %.not14.i100.us = icmp eq ptr %i.ah, null
  br i1 %.not14.i100.us, label %.critedge2, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.ah) #17 ; 3 uses
  %.not15.i101.us = icmp eq ptr %i.ai, null
  br i1 %.not15.i101.us, label %.split.us, label %zzlPrev.exit.us, !prof !91

.lr.ph179.split:                                  ; preds = %bb.o
  %.not92 = icmp eq i64 %i.aj, 0
  br i1 %.not92, label %.lr.ph199, label %.lr.ph295.peel.newph, !llvm.loop !238

.lr.ph295.peel.newph:                             ; preds = %.lr.ph179.split.peel, %.lr.ph179.split
  %.in314 = phi i64 [ %i.aj, %.lr.ph179.split ], [ %i.ac, %.lr.ph179.split.peel ]
  %.0144176294 = phi ptr [ %i.al, %.lr.ph179.split ], [ %i.ae, %.lr.ph179.split.peel ]
  %i.aj = add nsw i64 %.in314, -1                 ; 2 uses
  %i.ak = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %.0144176294) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.ak, null
  br i1 %.not14.i, label %.critedge2, label %bb.o

.critedge.i:                                      ; preds = %.lr.ph295
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1038) #17
  tail call void @abort() #18
  unreachable

bb.o:                                             ; preds = %.lr.ph295.peel.newph
  %i.al = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %i.ak) #17 ; 3 uses
  %.not15.i = icmp eq ptr %i.al, null
  br i1 %.not15.i, label %.loopexit, label %.lr.ph179.split, !prof !91, !llvm.loop !237

.loopexit:                                        ; preds = %bb.o, %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1043) #17
  tail call void @abort() #18
  unreachable

.critedge.i103:                                   ; preds = %.lr.ph191
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1019) #17
  tail call void @abort() #18
  unreachable

.split.us:                                        ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  tail call void @abort() #18
  unreachable

.lr.ph199:                                        ; preds = %.lr.ph179.split.peel, %.lr.ph179.split, %zzlPrev.exit.us, %.lr.ph179.split.preheader, %.lr.ph179.split.us
  %.0144.lcssa = phi ptr [ %i.ah, %zzlPrev.exit.us ], [ %i.y, %.lr.ph179.split.us ], [ %i.z, %.lr.ph179.split.preheader ], [ %i.ae, %.lr.ph179.split.peel ], [ %i.al, %.lr.ph179.split ]
  %.1140.lcssa = phi ptr [ %i.ai, %zzlPrev.exit.us ], [ %i.af, %.lr.ph179.split.us ], [ %i.aa, %.lr.ph179.split.preheader ], [ %i.ad, %.lr.ph179.split.peel ], [ %i.ak, %.lr.ph179.split ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not94298 = icmp eq i64 %4, 0
  br i1 %.not94298, label %.critedge2, label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph199, %zzlPrev.exit115
  %.in315 = phi i64 [ %i.ar, %zzlPrev.exit115 ], [ %4, %.lr.ph199 ]
  %.2146195301 = phi ptr [ %.3147, %zzlPrev.exit115 ], [ %.0144.lcssa, %.lr.ph199 ] ; 2 uses
  %.3142196300 = phi ptr [ %.4143, %zzlPrev.exit115 ], [ %.1140.lcssa, %.lr.ph199 ] ; 3 uses
  %.075197299 = phi i64 [ %i.bi, %zzlPrev.exit115 ], [ 0, %.lr.ph199 ] ; 3 uses
  %i.ar = add nsw i64 %.in315, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %.not.i104 = icmp eq ptr %.3142196300, null
  br i1 %.not.i104, label %bb.p, label %bb.q, !prof !91

bb.p:                                             ; preds = %.lr.ph302
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 962) #17
  call void @abort() #18
  unreachable

bb.q:                                             ; preds = %.lr.ph302
  %i.as = call ptr @lpGetValue(ptr noundef nonnull %.3142196300, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.as, null
  br i1 %.not7.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.at, i32 127)
  %i.au = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.as, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !36
  %i.aw = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !92
  %i.ay = sitofp i64 %i.ax to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.r, %bb.s
  %.0.i105 = phi double [ %i.aw, %bb.r ], [ %i.ay, %bb.s ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %.not89, label %bb.u, label %bb.t

bb.t:                                             ; preds = %zzlGetScore.exit
  %i.az = load i32, ptr %i.am, align 8, !tbaa !45
  %.not.i106 = icmp eq i32 %i.az, 0
  %i.ba = load double, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.bb = fcmp ule double %.0.i105, %i.ba
  %i.bc = fcmp ult double %.0.i105, %i.ba
  %.in.i = select i1 %.not.i106, i1 %i.bc, i1 %i.bb
  br i1 %.in.i, label %.critedge2, label %bb.v

bb.u:                                             ; preds = %zzlGetScore.exit
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !48
  %.not.i107 = icmp eq i32 %i.bd, 0
  %i.be = load double, ptr %i.ao, align 8, !tbaa !49 ; 2 uses
  %i.bf = fcmp uge double %.0.i105, %i.be
  %i.bg = fcmp ugt double %.0.i105, %i.be
  %.in.i108 = select i1 %.not.i107, i1 %i.bg, i1 %i.bf
  br i1 %.in.i108, label %.critedge2, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = call ptr @lpGetValue(ptr noundef nonnull %.2146195301, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bi = add i64 %.075197299, 1                  ; 3 uses
  %i.bj = icmp eq ptr %i.bh, null
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !228
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !92
  call void %i.bk(ptr noundef %0, i64 noundef %i.bl, double noundef %.0.i105) #17
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !229
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bo = zext i32 %i.bn to i64
  call void %i.bm(ptr noundef %0, ptr noundef nonnull %i.bh, i64 noundef %i.bo, double noundef %.0.i105) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not89, label %bb.ac, label %bb.z
end_hunk_4
begin_hunk_5_@genericZrangebyscoreCommand:bb.a
  %i.cz = load i16, ptr %i.cy, align 1, !tbaa !37
  %i.da = zext i16 %i.cz to i64
  br label %sdslen.exit.us

bb.al:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds i8, ptr %i.cp, i64 -3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !36
  %i.dd = zext i8 %i.dc to i64
  br label %sdslen.exit.us

bb.am:                                            ; preds = %bb.ah
  %i.de = lshr i8 %.val.i.us, 3
  %i.df = zext nneg i8 %i.de to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0.i127.us = phi i64 [ %i.cu, %bb.ai ], [ %i.df, %bb.am ], [ %i.dd, %bb.al ], [ %i.da, %bb.ak ], [ %i.cx, %bb.aj ], [ 0, %bb.ah ]
  tail call void %i.cq(ptr noundef nonnull %0, ptr noundef nonnull %i.cp, i64 noundef %.0.i127.us, double noundef %i.cg) #17
  %.2.in.us = getelementptr inbounds nuw i8, ptr %.1166.us286, i64 16
  %.2.us = load ptr, ptr %.2.in.us, align 8, !tbaa !29 ; 2 uses
  %.not85.us = icmp eq ptr %.2.us, null
  br i1 %.not85.us, label %sdslen.exit.us..critedge4.loopexit_crit_edge, label %.lr.ph.split.us, !llvm.loop !239

.lr.ph.split:                                     ; preds = %sdslen.exit
  %.not86 = icmp eq i64 %i.dg, 0
  br i1 %.not86, label %.critedge4, label %.lr.ph, !llvm.loop !239

.lr.ph:                                           ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.in312 = phi i64 [ %i.dg, %.lr.ph.split ], [ %4, %.lr.ph.split.preheader ]
  %.3164282 = phi i64 [ %i.dm, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %.1166281 = phi ptr [ %.2, %.lr.ph.split ], [ %i.bz, %.lr.ph.split.preheader ] ; 4 uses
  %i.dg = add nsw i64 %.in312, -1                 ; 2 uses
  %i.dh = load double, ptr %.1166281, align 8, !tbaa !16 ; 3 uses
  %i.di = load i32, ptr %i.ca, align 8, !tbaa !45
  %.not.i123 = icmp eq i32 %i.di, 0
  %i.dj = load double, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.dk = fcmp ule double %i.dh, %i.dj
  %i.dl = fcmp ult double %i.dh, %i.dj
  %.in.i124 = select i1 %.not.i123, i1 %i.dl, i1 %i.dk
  br i1 %.in.i124, label %.critedge4, label %bb.an

bb.an:                                            ; preds = %.lr.ph
  %i.dm = add i64 %.3164282, 1                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1166281, i64 24
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !13
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.1166281, i64 %i.dp ; 6 uses
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !229
  %i.ds = getelementptr i8, ptr %i.dq, i64 -1
  %.val.i = load i8, ptr %i.ds, align 1, !tbaa !36 ; 2 uses
  %i.dt = and i8 %.val.i, 7
  switch i8 %i.dt, label %sdslen.exit [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
  ]

bb.ao:                                            ; preds = %bb.an
  %i.du = lshr i8 %.val.i, 3
  %i.dv = zext nneg i8 %i.du to i64
  br label %sdslen.exit

bb.ap:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds i8, ptr %i.dq, i64 -3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !36
  %i.dy = zext i8 %i.dx to i64
  br label %sdslen.exit

bb.aq:                                            ; preds = %bb.an
  %i.dz = getelementptr inbounds i8, ptr %i.dq, i64 -5
  %i.ea = load i16, ptr %i.dz, align 1, !tbaa !37
  %i.eb = zext i16 %i.ea to i64
  br label %sdslen.exit

bb.ar:                                            ; preds = %bb.an
  %i.ec = getelementptr inbounds i8, ptr %i.dq, i64 -9
  %i.ed = load i32, ptr %i.ec, align 1, !tbaa !9
  %i.ee = zext i32 %i.ed to i64
  br label %sdslen.exit

bb.as:                                            ; preds = %bb.an
  %i.ef = getelementptr inbounds i8, ptr %i.dq, i64 -17
  %i.eg = load i64, ptr %i.ef, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i127 = phi i64 [ %i.eg, %bb.as ], [ %i.dv, %bb.ao ], [ %i.dy, %bb.ap ], [ %i.eb, %bb.aq ], [ %i.ee, %bb.ar ], [ 0, %bb.an ]
  tail call void %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %i.dq, i64 noundef %.0.i127, double noundef %i.dh) #17
  %.2.in = getelementptr inbounds nuw i8, ptr %.1166281, i64 8
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !29  ; 2 uses
  %.not85 = icmp eq ptr %.2, null
  br i1 %.not85, label %sdslen.exit..critedge4.loopexit268_crit_edge, label %.lr.ph.split, !llvm.loop !239

bb.at:                                            ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3604, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

sdslen.exit.us..critedge4.loopexit_crit_edge:     ; preds = %sdslen.exit.us
  br label %.critedge4, !llvm.loop !239

sdslen.exit..critedge4.loopexit268_crit_edge:     ; preds = %sdslen.exit
  br label %.critedge4, !llvm.loop !239

.critedge4:                                       ; preds = %.lr.ph.split, %.lr.ph, %.lr.ph.split.us, %.lr.ph288, %.lr.ph.split.preheader, %sdslen.exit..critedge4.loopexit268_crit_edge, %.lr.ph.split.us.preheader, %sdslen.exit.us..critedge4.loopexit_crit_edge, %.thread242, %bb.ag, %.critedge2
  %.4 = phi i64 [ %.075.lcssa, %.critedge2 ], [ 0, %bb.ag ], [ 0, %.thread242 ], [ %i.dm, %sdslen.exit..critedge4.loopexit268_crit_edge ], [ %4, %.lr.ph.split.us.preheader ], [ %i.cl, %sdslen.exit.us..critedge4.loopexit_crit_edge ], [ %4, %.lr.ph.split.preheader ], [ %.3164.us287, %.lr.ph288 ], [ %4, %.lr.ph.split.us ], [ %4, %.lr.ph.split ], [ %.3164282, %.lr.ph ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !227
  call void %i.ei(ptr noundef %0, i64 noundef %.4) #17
  br label %bb.au

bb.au:                                            ; preds = %.critedge4, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangebyscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 2, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrevrangebyscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 2, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zcountCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.zrangespec, align 8         ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.p = call fastcc i32 @zslParseRange(ptr noundef %i.m, ptr noundef %i.o, ptr noundef %1)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #17
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  %i.r = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef %i.q) #17 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef 3) #17
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.r, align 8
  %2 = trunc i64 %i.u to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.v [
    i32 11, label %bb.f
    i32 7, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 4 uses
  %i.x = call ptr @zzlFirstInRange(ptr noundef %i.w, ptr noundef nonnull %1) ; 2 uses
  %.not41 = icmp eq ptr %i.x, null
  br i1 %.not41, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.y) #17
  br label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @lpNext(ptr noundef %i.w, ptr noundef nonnull %i.x) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 962) #17
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = call ptr @lpGetValue(ptr noundef nonnull %i.z, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, null
  br i1 %.not7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.ab, i32 127)
  %i.ac = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull readonly align 1 %i.aa, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  store i8 0, ptr %i.ad, align 1, !tbaa !36
  %i.ae = call double @fast_float_strtod(ptr noundef nonnull %i.d, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %zzlGetScore.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.f, align 8, !tbaa !92
  %i.ag = sitofp i64 %i.af to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.j, %bb.k
  %.0.i = phi double [ %i.ae, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48
  %.not.i42 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = fcmp uge double %.0.i, %i.ak
  %i.am = fcmp ugt double %.0.i, %i.ak
  %.in.i = select i1 %.not.i42, i1 %i.am, i1 %i.al
  br i1 %.in.i, label %bb.l, label %.preheader.preheader, !prof !91

.preheader.preheader:                             ; preds = %zzlGetScore.exit
  %i.an = load i32, ptr %i.ah, align 4
  %.not.i48 = icmp eq i32 %i.an, 0
  %i.ao = load double, ptr %i.aj, align 8         ; 2 uses
  br label %zzlNext.exit

bb.l:                                             ; preds = %zzlGetScore.exit
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 3657) #17
  call void @abort() #18
  unreachable

zzlNext.exit:                                     ; preds = %bb.p, %.preheader.preheader
  %.061 = phi i64 [ 0, %.preheader.preheader ], [ %i.ay, %bb.p ] ; 2 uses
  %.05560 = phi ptr [ %i.z, %.preheader.preheader ], [ %i.ba, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ap = call ptr @lpGetValue(ptr noundef nonnull %.05560, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i44 = icmp eq ptr %i.ap, null
  br i1 %.not7.i44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %zzlNext.exit
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i45 = call i32 @llvm.umin.i32(i32 %i.aq, i32 127)
  %i.ar = zext nneg i32 %spec.store.select.i.i45 to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.ap, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !36
  %i.at = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit47

bb.n:                                             ; preds = %zzlNext.exit
  %i.au = load i64, ptr %i.c, align 8, !tbaa !92
  %i.av = sitofp i64 %i.au to double
  br label %zzlGetScore.exit47

zzlGetScore.exit47:                               ; preds = %bb.m, %bb.n
  %.0.i46 = phi double [ %i.at, %bb.m ], [ %i.av, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.aw = fcmp uge double %.0.i46, %i.ao
  %i.ax = fcmp ugt double %.0.i46, %i.ao
  %.in.i49 = select i1 %.not.i48, i1 %i.ax, i1 %i.aw
  br i1 %.in.i49, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %zzlGetScore.exit47
  %i.ay = add i64 %.061, 1                        ; 2 uses
  %i.az = call ptr @lpNext(ptr noundef %i.w, ptr noundef nonnull %.05560) #17 ; 2 uses
  %.not14.i = icmp eq ptr %i.az, null
  br i1 %.not14.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = call ptr @lpNext(ptr noundef %i.w, ptr noundef nonnull %i.az) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.ba, null
  br i1 %.not15.i, label %bb.q, label %zzlNext.exit, !prof !91, !llvm.loop !240

bb.q:                                             ; preds = %bb.p
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

bb.r:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !103 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.bf = call ptr @zslNthInRange(ptr noundef %i.be, ptr noundef nonnull %1, i64 noundef 0, ptr noundef nonnull %i.g)
  %.not36 = icmp eq ptr %i.bf, null
  br i1 %.not36, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !24
  %i.bj = add i64 %i.bi, -1                       ; 2 uses
  %i.bk = sub i64 %i.bh, %i.bj
  %i.bl = call ptr @zslNthInRange(ptr noundef %i.be, ptr noundef nonnull %1, i64 noundef -1, ptr noundef nonnull %i.g)
  %.not37 = icmp eq ptr %i.bl, null
  br i1 %.not37, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !24
  %i.bn = sub i64 %i.bm, %i.bj
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %.2 = phi i64 [ %i.bn, %bb.t ], [ %i.bk, %bb.s ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %.loopexit

bb.v:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3693, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

.loopexit:                                        ; preds = %bb.o, %zzlGetScore.exit47, %bb.u
  %.3 = phi i64 [ %.2, %bb.u ], [ %i.ay, %bb.o ], [ %.061, %zzlGetScore.exit47 ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.3) #17
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.c, %bb.d, %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zlexcountCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zlexrangespec, align 8      ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = call i32 @zslParseLexRange(ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %1)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #17
  br label %zslFreeLexRange.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  %i.l = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef %i.k) #17 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 3) #17
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !68     ; 3 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.p
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.o, %i.q
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @sdsfree(ptr noundef %i.o) #17
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71
  %.pre11.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi ptr [ %.pre11.i, %bb.f ], [ %i.q, %bb.e ]
  %i.s = phi ptr [ %.pre.i, %bb.f ], [ %i.p, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not8.i = icmp eq ptr %i.u, %i.s
  %.not9.i = icmp eq ptr %i.u, %i.r
  %or.cond10.i = select i1 %.not8.i, i1 true, i1 %.not9.i
  br i1 %or.cond10.i, label %zslFreeLexRange.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @sdsfree(ptr noundef %i.u) #17
  br label %zslFreeLexRange.exit

bb.i:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8
  %2 = trunc i64 %i.v to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.u [
    i32 11, label %bb.j
    i32 7, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75   ; 4 uses
  %i.y = call ptr @zzlFirstInLexRange(ptr noundef %i.x, ptr noundef nonnull %1) ; 4 uses
  %.not40 = icmp eq ptr %i.y, null
  br i1 %.not40, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  call void @zslFreeLexRange(ptr noundef nonnull %1)
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.z) #17
  br label %zslFreeLexRange.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.y) #17
  %i.ab = call i32 @zzlLexValueLteMax(ptr noundef nonnull %i.y, ptr noundef nonnull %1)
  %.not37 = icmp eq i32 %i.ab, 0
  br i1 %.not37, label %bb.l, label %.preheader, !prof !91

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 3735) #17
  tail call void @abort() #18
  unreachable

.preheader:                                       ; preds = %bb.k, %bb.o
  %.064 = phi i64 [ %i.ad, %bb.o ], [ 0, %bb.k ]  ; 2 uses
  %.05463 = phi ptr [ %i.af, %bb.o ], [ %i.aa, %bb.k ] ; 2 uses
  %.05562 = phi ptr [ %i.ae, %bb.o ], [ %i.y, %bb.k ]
  %i.ac = call i32 @zzlLexValueLteMax(ptr noundef nonnull %.05562, ptr noundef nonnull %1)
  %.not39 = icmp eq i32 %i.ac, 0
  br i1 %.not39, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.ad = add i64 %.064, 1                        ; 2 uses
  %.not16.i = icmp eq ptr %.05463, null
  br i1 %.not16.i, label %.critedge.i, label %bb.n, !prof !91

.critedge.i:                                      ; preds = %bb.m
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1019) #17
  tail call void @abort() #18
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %.05463) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.ae, null
  br i1 %.not14.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.ae) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.af, null
  br i1 %.not15.i, label %bb.p, label %.preheader, !prof !91, !llvm.loop !241

bb.p:                                             ; preds = %bb.o
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  tail call void @abort() #18
  unreachable

bb.q:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ak = call ptr @zslNthInLexRange(ptr noundef %i.aj, ptr noundef nonnull %1, i64 noundef 0, ptr noundef nonnull %i.a)
  %.not35 = icmp eq ptr %i.ak, null
  br i1 %.not35, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23
  %i.an = load i64, ptr %i.a, align 8, !tbaa !24
  %.neg58 = add i64 %i.am, 1
  %i.ao = sub i64 %.neg58, %i.an                  ; 2 uses
  %i.ap = call ptr @zslNthInLexRange(ptr noundef %i.aj, ptr noundef nonnull %1, i64 noundef -1, ptr noundef nonnull %i.a)
  %.not36 = icmp eq ptr %i.ap, null
  br i1 %.not36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !23
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !24
  %.neg = sub i64 %i.ao, %i.aq
  %i.as = add i64 %.neg, %i.ar
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.2 = phi i64 [ %i.as, %bb.s ], [ %i.ao, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

bb.u:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3769, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

.loopexit:                                        ; preds = %bb.n, %.preheader, %bb.t
  %.3 = phi i64 [ %.2, %bb.t ], [ %i.ad, %bb.n ], [ %.064, %.preheader ]
  %i.at = load ptr, ptr %1, align 8, !tbaa !68    ; 3 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %.not.i42 = icmp eq ptr %i.at, %i.au
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8 ; 2 uses
  %.not7.i43 = icmp eq ptr %i.at, %i.av
  %or.cond.i44 = select i1 %.not.i42, i1 true, i1 %.not7.i43
  br i1 %or.cond.i44, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  call void @sdsfree(ptr noundef %i.at) #17
  %.pre.i45 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71
  %.pre11.i46 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  %i.aw = phi ptr [ %.pre11.i46, %bb.v ], [ %i.av, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i45, %bb.v ], [ %i.au, %.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74 ; 3 uses
  %.not8.i47 = icmp eq ptr %i.az, %i.ax
  %.not9.i48 = icmp eq ptr %i.az, %i.aw
  %or.cond10.i49 = select i1 %.not8.i47, i1 true, i1 %.not9.i48
  br i1 %or.cond10.i49, label %zslFreeLexRange.exit50, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @sdsfree(ptr noundef %i.az) #17
  br label %zslFreeLexRange.exit50

zslFreeLexRange.exit50:                           ; preds = %bb.w, %bb.x
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.3) #17
  br label %zslFreeLexRange.exit

zslFreeLexRange.exit:                             ; preds = %.thread, %bb.h, %bb.g, %zslFreeLexRange.exit50, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @genericZrangebylexCommand(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226
  tail call void %i.g(ptr noundef %0, i64 noundef -1) #17
  %i.h = icmp slt i64 %4, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0                       ; 2 uses
  %.pre240 = load i64, ptr %2, align 8            ; 2 uses
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %7 = trunc i64 %.pre240 to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.f [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = tail call i64 @lpLength(ptr noundef %i.j) #17
  %i.l = lshr i64 %i.k, 1
  %i.m = and i64 %i.l, 4294967295
  br label %zsetLength.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  br label %zsetLength.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.m, %bb.d ], [ %i.s, %bb.e ]
  %.not83 = icmp slt i64 %4, %.0.i
  br i1 %.not83, label %zsetLength.exit._crit_edge, label %bb.g

zsetLength.exit._crit_edge:                       ; preds = %zsetLength.exit
  %.pre = load i64, ptr %2, align 8
  br label %bb.h

bb.g:                                             ; preds = %zsetLength.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !227
  tail call void %i.u(ptr noundef nonnull %0, i64 noundef 0) #17
  br label %bb.bn

bb.h:                                             ; preds = %zsetLength.exit._crit_edge, %bb.b
  %i.v = phi i64 [ %.pre, %zsetLength.exit._crit_edge ], [ %.pre240, %bb.b ]
  %10 = trunc i64 %i.v to i32
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 15
  switch i32 %12, label %bb.bm [
    i32 11, label %bb.i
    i32 7, label %bb.aj
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %.not89 = icmp eq i32 %6, 0                     ; 3 uses
  br i1 %.not89, label %bb.j, label %.thread273

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @zzlFirstInLexRange(ptr noundef %i.x, ptr noundef %1) ; 3 uses
  %.not90 = icmp eq ptr %i.y, null
  br i1 %.not90, label %.critedge2, label %.lr.ph209.split.us

.thread273:                                       ; preds = %bb.i
  %i.z = tail call ptr @zzlLastInLexRange(ptr noundef %i.x, ptr noundef %1) ; 4 uses
  %.not90275 = icmp eq ptr %i.z, null
  br i1 %.not90275, label %.critedge2, label %.lr.ph209.split.preheader

.lr.ph209.split.preheader:                        ; preds = %.thread273
  %i.aa = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.z) #17 ; 2 uses
  %.not92359 = icmp eq i64 %4, 0
  br i1 %.not92359, label %.lr.ph229, label %.lr.ph362

.lr.ph362:                                        ; preds = %.lr.ph209.split.preheader
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = add nsw i64 %4, -1                      ; 2 uses
  br i1 %i.ab, label %.critedge.i, label %bb.k, !prof !91

bb.k:                                             ; preds = %.lr.ph362
  %i.ad = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %i.z) #17 ; 3 uses
  %.not14.i.peel = icmp eq ptr %i.ad, null
  br i1 %.not14.i.peel, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %i.ad) #17 ; 3 uses
  %.not15.i.peel = icmp eq ptr %i.ae, null
  br i1 %.not15.i.peel, label %.loopexit, label %.lr.ph209.split.peel, !prof !91, !llvm.loop !242

.lr.ph209.split.peel:                             ; preds = %bb.l
  %.not92.peel = icmp eq i64 %i.ac, 0
  br i1 %.not92.peel, label %.lr.ph229, label %.lr.ph362.peel.newph

.lr.ph209.split.us:                               ; preds = %bb.j
  %i.af = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.y) #17 ; 2 uses
  br i1 %.not, label %.lr.ph229, label %.lr.ph221

zzlPrev.exit.us:                                  ; preds = %bb.n
  %.not92.us = icmp eq i64 %i.ag, 0
  br i1 %.not92.us, label %.lr.ph229, label %.lr.ph221, !llvm.loop !242

.lr.ph221:                                        ; preds = %.lr.ph209.split.us, %zzlPrev.exit.us
  %.in = phi i64 [ %i.ag, %zzlPrev.exit.us ], [ %4, %.lr.ph209.split.us ]
  %.1140207.us220 = phi ptr [ %i.ai, %zzlPrev.exit.us ], [ %i.af, %.lr.ph209.split.us ] ; 2 uses
  %i.ag = add nsw i64 %.in, -1                    ; 2 uses
  %.not16.i100.us = icmp eq ptr %.1140207.us220, null
  br i1 %.not16.i100.us, label %.critedge.i104, label %bb.m, !prof !91

bb.m:                                             ; preds = %.lr.ph221
  %i.ah = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %.1140207.us220) #17 ; 3 uses
  %.not14.i101.us = icmp eq ptr %i.ah, null
  br i1 %.not14.i101.us, label %.critedge2, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call ptr @lpNext(ptr noundef %i.x, ptr noundef nonnull %i.ah) #17 ; 3 uses
  %.not15.i102.us = icmp eq ptr %i.ai, null
  br i1 %.not15.i102.us, label %.split.us, label %zzlPrev.exit.us, !prof !91

.lr.ph209.split:                                  ; preds = %bb.o
  %.not92 = icmp eq i64 %i.aj, 0
  br i1 %.not92, label %.lr.ph229, label %.lr.ph362.peel.newph, !llvm.loop !243

.lr.ph362.peel.newph:                             ; preds = %.lr.ph209.split.peel, %.lr.ph209.split
  %.in381 = phi i64 [ %i.aj, %.lr.ph209.split ], [ %i.ac, %.lr.ph209.split.peel ]
  %.0144206361 = phi ptr [ %i.al, %.lr.ph209.split ], [ %i.ae, %.lr.ph209.split.peel ]
  %i.aj = add nsw i64 %.in381, -1                 ; 2 uses
  %i.ak = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %.0144206361) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.ak, null
  br i1 %.not14.i, label %.critedge2, label %bb.o

.critedge.i:                                      ; preds = %.lr.ph362
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1038) #17
  tail call void @abort() #18
  unreachable

bb.o:                                             ; preds = %.lr.ph362.peel.newph
  %i.al = tail call ptr @lpPrev(ptr noundef %i.x, ptr noundef nonnull %i.ak) #17 ; 3 uses
  %.not15.i = icmp eq ptr %i.al, null
  br i1 %.not15.i, label %.loopexit, label %.lr.ph209.split, !prof !91, !llvm.loop !242

.loopexit:                                        ; preds = %bb.o, %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1043) #17
  tail call void @abort() #18
  unreachable

.critedge.i104:                                   ; preds = %.lr.ph221
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1019) #17
  tail call void @abort() #18
  unreachable

.split.us:                                        ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  tail call void @abort() #18
  unreachable

.lr.ph229:                                        ; preds = %.lr.ph209.split.peel, %.lr.ph209.split, %zzlPrev.exit.us, %.lr.ph209.split.preheader, %.lr.ph209.split.us
  %.0144.lcssa = phi ptr [ %i.ah, %zzlPrev.exit.us ], [ %i.y, %.lr.ph209.split.us ], [ %i.z, %.lr.ph209.split.preheader ], [ %i.ae, %.lr.ph209.split.peel ], [ %i.al, %.lr.ph209.split ]
  %.1140.lcssa = phi ptr [ %i.ai, %zzlPrev.exit.us ], [ %i.af, %.lr.ph209.split.us ], [ %i.aa, %.lr.ph209.split.preheader ], [ %i.ad, %.lr.ph209.split.peel ], [ %i.ak, %.lr.ph209.split ]
  %.not95 = icmp eq i32 %3, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not94365 = icmp eq i64 %5, 0
  br i1 %.not94365, label %.critedge2, label %.lr.ph369

.lr.ph369:                                        ; preds = %.lr.ph229, %zzlPrev.exit113
  %.in382 = phi i64 [ %i.ao, %zzlPrev.exit113 ], [ %5, %.lr.ph229 ]
  %.2146225368 = phi ptr [ %.3147, %zzlPrev.exit113 ], [ %.0144.lcssa, %.lr.ph229 ] ; 4 uses
  %.3142226367 = phi ptr [ %.4143, %zzlPrev.exit113 ], [ %.1140.lcssa, %.lr.ph229 ] ; 4 uses
  %.074227366 = phi i64 [ %i.az, %zzlPrev.exit113 ], [ 0, %.lr.ph229 ] ; 3 uses
  %i.ao = add nsw i64 %.in382, -1                 ; 2 uses
  br i1 %.not95, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.lr.ph369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %.not.i105 = icmp eq ptr %.3142226367, null
  br i1 %.not.i105, label %bb.q, label %bb.r, !prof !91

bb.q:                                             ; preds = %bb.p
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 962) #17
  call void @abort() #18
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ap = call ptr @lpGetValue(ptr noundef nonnull %.3142226367, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.ap, null
  br i1 %.not7.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.aq, i32 127)
  %i.ar = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.ap, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !36
  %i.at = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.t:                                             ; preds = %bb.r
  %i.au = load i64, ptr %i.c, align 8, !tbaa !92
  %i.av = sitofp i64 %i.au to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.s, %bb.t
  %.0.i106 = phi double [ %i.at, %bb.s ], [ %i.av, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.u

bb.u:                                             ; preds = %zzlGetScore.exit, %.lr.ph369
  %.077 = phi double [ %.0.i106, %zzlGetScore.exit ], [ 0.000000e+00, %.lr.ph369 ] ; 2 uses
  br i1 %.not89, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = call i32 @zzlLexValueGteMin(ptr noundef nonnull %.2146225368, ptr noundef %1)
  %.not97 = icmp eq i32 %i.aw, 0
  br i1 %.not97, label %.critedge2, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ax = call i32 @zzlLexValueLteMax(ptr noundef nonnull %.2146225368, ptr noundef %1)
  %.not96 = icmp eq i32 %i.ax, 0
  br i1 %.not96, label %.critedge2, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ay = call ptr @lpGetValue(ptr noundef nonnull %.2146225368, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.az = add i64 %.074227366, 1                  ; 3 uses
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !228
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !92
  call void %i.bb(ptr noundef %0, i64 noundef %i.bc, double noundef %.077) #17
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !229
  %i.be = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bf = zext i32 %i.be to i64
  call void %i.bd(ptr noundef %0, ptr noundef nonnull %i.ay, i64 noundef %i.bf, double noundef %.077) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not16.i115 = icmp eq ptr %.3142226367, null   ; 2 uses
  br i1 %.not89, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_5
begin_hunk_6_@genericZrangebylexCommand:bb.a
.lr.ph:                                           ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.in379 = phi i64 [ %i.dn, %.lr.ph.split ], [ %5, %.lr.ph.split.preheader ]
  %.3177332 = phi i64 [ %i.ei, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 7 uses
  %.1179331 = phi ptr [ %.2, %.lr.ph.split ], [ %i.bq, %.lr.ph.split.preheader ] ; 5 uses
  %i.dn = add nsw i64 %.in379, -1                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1179331, i64 24 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !13
  %i.dq = zext i16 %i.dp to i64                   ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1179331, i64 %i.dq ; 6 uses
  %i.ds = load i32, ptr %i.br, align 8, !tbaa !79
  %.not.i121 = icmp eq i32 %i.ds, 0
  %i.dt = load ptr, ptr %1, align 8, !tbaa !68    ; 6 uses
  %i.du = icmp eq ptr %i.dr, %i.dt                ; 2 uses
  br i1 %.not.i121, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %.lr.ph
  br i1 %i.du, label %.critedge4, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.dw = icmp eq ptr %i.dr, %i.dv
  br i1 %i.dw, label %.critedge4, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.dy = icmp eq ptr %i.dt, %i.dx
  br i1 %i.dy, label %.critedge4, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dz = icmp eq ptr %i.dr, %i.dx
  %i.ea = icmp eq ptr %i.dt, %i.dv
  %or.cond.i.i = or i1 %i.ea, %i.dz
  br i1 %or.cond.i.i, label %zslLexValueGteMin.exit.thread155, label %zslLexValueGteMin.exit

bb.bd:                                            ; preds = %.lr.ph
  br i1 %i.du, label %zslLexValueGteMin.exit.thread155, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.ec = icmp eq ptr %i.dr, %i.eb
  br i1 %i.ec, label %.critedge4, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.ee = icmp eq ptr %i.dt, %i.ed
  br i1 %i.ee, label %.critedge4, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ef = icmp eq ptr %i.dr, %i.ed
  %i.eg = icmp eq ptr %i.dt, %i.eb
  %or.cond.i5.i = or i1 %i.eg, %i.ef
  br i1 %or.cond.i5.i, label %zslLexValueGteMin.exit.thread155, label %zslLexValueGteMin.exit

zslLexValueGteMin.exit:                           ; preds = %bb.bc, %bb.bg
  %.sink14.i = phi i32 [ 0, %bb.bc ], [ -1, %bb.bg ]
  %i.eh = tail call i32 @sdscmp(ptr noundef nonnull %i.dr, ptr noundef %i.dt) #17
  %.not162 = icmp sgt i32 %i.eh, %.sink14.i
  br i1 %.not162, label %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread155_crit_edge, label %.critedge4

zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread155_crit_edge: ; preds = %zslLexValueGteMin.exit
  %.pre241 = load i16, ptr %i.do, align 2, !tbaa !13
  %.pre244 = zext i16 %.pre241 to i64
  br label %zslLexValueGteMin.exit.thread155

zslLexValueGteMin.exit.thread155:                 ; preds = %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread155_crit_edge, %bb.bd, %bb.bg, %bb.bc
  %.pre-phi245 = phi i64 [ %.pre244, %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread155_crit_edge ], [ %i.dq, %bb.bd ], [ %i.dq, %bb.bg ], [ %i.dq, %bb.bc ]
  %i.ei = add i64 %.3177332, 1                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1179331, i64 %.pre-phi245 ; 6 uses
  %i.ek = load ptr, ptr %i.bs, align 8, !tbaa !229
  %i.el = getelementptr i8, ptr %i.ej, i64 -1
  %.val.i = load i8, ptr %i.el, align 1, !tbaa !36 ; 2 uses
  %i.em = and i8 %.val.i, 7
  switch i8 %i.em, label %sdslen.exit [
    i8 0, label %bb.bh
    i8 1, label %bb.bi
    i8 2, label %bb.bj
    i8 3, label %bb.bk
    i8 4, label %bb.bl
  ]

bb.bh:                                            ; preds = %zslLexValueGteMin.exit.thread155
  %i.en = lshr i8 %.val.i, 3
  %i.eo = zext nneg i8 %i.en to i64
  br label %sdslen.exit

bb.bi:                                            ; preds = %zslLexValueGteMin.exit.thread155
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 -3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !36
  %i.er = zext i8 %i.eq to i64
  br label %sdslen.exit

bb.bj:                                            ; preds = %zslLexValueGteMin.exit.thread155
  %i.es = getelementptr inbounds i8, ptr %i.ej, i64 -5
  %i.et = load i16, ptr %i.es, align 1, !tbaa !37
  %i.eu = zext i16 %i.et to i64
  br label %sdslen.exit

bb.bk:                                            ; preds = %zslLexValueGteMin.exit.thread155
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 -9
  %i.ew = load i32, ptr %i.ev, align 1, !tbaa !9
  %i.ex = zext i32 %i.ew to i64
  br label %sdslen.exit

bb.bl:                                            ; preds = %zslLexValueGteMin.exit.thread155
  %i.ey = getelementptr inbounds i8, ptr %i.ej, i64 -17
  %i.ez = load i64, ptr %i.ey, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %zslLexValueGteMin.exit.thread155, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %.0.i125 = phi i64 [ %i.ez, %bb.bl ], [ %i.eo, %bb.bh ], [ %i.er, %bb.bi ], [ %i.eu, %bb.bj ], [ %i.ex, %bb.bk ], [ 0, %zslLexValueGteMin.exit.thread155 ]
  %i.fa = load double, ptr %.1179331, align 8, !tbaa !16
  tail call void %i.ek(ptr noundef nonnull %0, ptr noundef nonnull %i.ej, i64 noundef %.0.i125, double noundef %i.fa) #17
  %.2.in = getelementptr inbounds nuw i8, ptr %.1179331, i64 8
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !29  ; 2 uses
  %.not85 = icmp eq ptr %.2, null
  br i1 %.not85, label %sdslen.exit..critedge4.loopexit318_crit_edge, label %.lr.ph.split, !llvm.loop !244

bb.bm:                                            ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3878, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

sdslen.exit.us..critedge4.loopexit_crit_edge:     ; preds = %sdslen.exit.us
  br label %.critedge4, !llvm.loop !244

sdslen.exit..critedge4.loopexit318_crit_edge:     ; preds = %sdslen.exit
  br label %.critedge4, !llvm.loop !244

.critedge4:                                       ; preds = %bb.be, %bb.bb, %bb.ba, %bb.az, %bb.bf, %.lr.ph.split, %zslLexValueGteMin.exit, %bb.at, %bb.as, %bb.al, %bb.ao, %.lr.ph.split.us, %zslLexValueLteMax.exit.us, %.lr.ph.split.preheader, %sdslen.exit..critedge4.loopexit318_crit_edge, %.lr.ph.split.us.preheader, %sdslen.exit.us..critedge4.loopexit_crit_edge, %.thread292, %bb.ak, %.critedge2
  %.4 = phi i64 [ %.074.lcssa, %.critedge2 ], [ 0, %bb.ak ], [ 0, %.thread292 ], [ %i.ei, %sdslen.exit..critedge4.loopexit318_crit_edge ], [ %.3177.us346, %zslLexValueLteMax.exit.us ], [ %5, %.lr.ph.split.us.preheader ], [ %i.cu, %sdslen.exit.us..critedge4.loopexit_crit_edge ], [ %5, %.lr.ph.split.preheader ], [ %5, %.lr.ph.split.us ], [ %.3177.us346, %bb.al ], [ %.3177.us346, %bb.as ], [ %.3177.us346, %bb.ao ], [ %.3177.us346, %bb.at ], [ %.3177332, %bb.ba ], [ %.3177332, %bb.bb ], [ %.3177332, %bb.be ], [ %.3177332, %zslLexValueGteMin.exit ], [ %5, %.lr.ph.split ], [ %.3177332, %bb.bf ], [ %.3177332, %bb.az ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !227
  call void %i.fc(ptr noundef %0, i64 noundef %.4) #17
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge4, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangebylexCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrevrangebylexCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zcardCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  %i.f = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #17 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 3) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8
  %1 = trunc i64 %i.i to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.f [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = tail call i64 @lpLength(ptr noundef %i.k) #17
  %i.m = lshr i64 %i.l, 1
  %i.n = and i64 %i.m, 4294967295
  br label %zsetLength.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  br label %zsetLength.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.n, %bb.d ], [ %i.t, %bb.e ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %zsetLength.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !215
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef %i.j) #17 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef 3) #17
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.k) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 3 uses
  %.not19 = icmp eq ptr %i.t, null
  br i1 %.not19, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.k, align 8
  %1 = trunc i64 %i.u to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.i [
    i32 11, label %bb.g
    i32 7, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = call fastcc ptr @zzlFind(ptr noundef %i.w, ptr noundef nonnull %i.t, ptr noundef nonnull %i.a)
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %zsetScore.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.ac = tail call ptr @dictFind(ptr noundef %i.ab, ptr noundef nonnull %i.t) #17 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  %i.ae = tail call ptr @dictGetKey(ptr noundef nonnull %i.ac) #17
  br label %zsetScore.exit

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1554, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.h
  call void @addReplyNull(ptr noundef nonnull %0) #17
  br label %bb.k

zsetScore.exit:                                   ; preds = %bb.g, %.thread.i
  %.sink = phi ptr [ %i.ae, %.thread.i ], [ %i.a, %bb.g ]
  %.pre = load double, ptr %.sink, align 8, !tbaa !16
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %.pre) #17
  br label %bb.k

bb.k:                                             ; preds = %zsetScore.exit, %bb.j
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not17 = icmp eq i32 %i.af, 0
  br i1 %.not17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !166
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !75
  %i.ak = call i32 @getKeySlot(ptr noundef %i.aj) #17
  %i.al = call i64 @kvobjAllocSize(ptr noundef nonnull %i.k) #17
  call void @updateSlotAllocSize(ptr noundef %i.ah, i32 noundef %i.ak, ptr noundef nonnull %i.k, i64 noundef %.0, i64 noundef %i.al) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zmscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.h = tail call ptr @lookupKeyRead(ptr noundef %i.g, ptr noundef %i.e) #17 ; 8 uses
  %i.i = tail call i32 @checkType(ptr noundef %0, ptr noundef %i.h, i32 noundef 3) #17
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp ne ptr %i.h, null                   ; 2 uses
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.h) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !163
  %i.p = add nsw i32 %i.o, -2
  %i.q = sext i32 %i.p to i64
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.q) #17
  %i.r = load i32, ptr %i.n, align 8, !tbaa !163
  %i.s = icmp sgt i32 %i.r, 2
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.t = icmp eq ptr %i.h, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.t, label %zsetScore.exit.thread.us, label %.lr.ph.split

zsetScore.exit.thread.us:                         ; preds = %.lr.ph, %zsetScore.exit.thread.us
  %.030.us = phi i32 [ %i.v, %zsetScore.exit.thread.us ], [ 2, %.lr.ph ]
  tail call void @addReplyNull(ptr noundef nonnull %0) #17
  %i.v = add nuw nsw i32 %.030.us, 1              ; 2 uses
  %i.w = load i32, ptr %i.n, align 8, !tbaa !163
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %zsetScore.exit.thread.us, label %._crit_edge.thread, !llvm.loop !245

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %i.z = icmp ne i32 %i.y, 0
  %or.cond3 = and i1 %i.l, %i.z
  br i1 %or.cond3, label %bb.j, label %._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 2, %.lr.ph ] ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !162
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75 ; 3 uses
  %.not29 = icmp eq ptr %i.ae, null
  br i1 %.not29, label %zsetScore.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.af = load i64, ptr %i.h, align 8
  %1 = trunc i64 %i.af to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.h [
    i32 11, label %bb.f
    i32 7, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.ah = call fastcc ptr @zzlFind(ptr noundef %i.ag, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a)
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %zsetScore.exit.thread, label %.zsetScore.exit_crit_edge

.zsetScore.exit_crit_edge:                        ; preds = %bb.f
  %.pre = load double, ptr %i.a, align 8, !tbaa !16
  br label %zsetScore.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !107
  %i.al = call ptr @dictFind(ptr noundef %i.ak, ptr noundef nonnull %i.ae) #17 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %zsetScore.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.an = call ptr @dictGetKey(ptr noundef nonnull %i.al) #17
  %i.ao = load double, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  store double %i.ao, ptr %i.a, align 8, !tbaa !16
  br label %zsetScore.exit

bb.h:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1554, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

zsetScore.exit.thread:                            ; preds = %bb.g, %bb.f, %.lr.ph.split
  call void @addReplyNull(ptr noundef nonnull %0) #17
  br label %bb.i

zsetScore.exit:                                   ; preds = %.zsetScore.exit_crit_edge, %.thread.i
  %i.ap = phi double [ %.pre, %.zsetScore.exit_crit_edge ], [ %i.ao, %.thread.i ]
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.ap) #17
  br label %bb.i

bb.i:                                             ; preds = %zsetScore.exit.thread, %zsetScore.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.n, align 8, !tbaa !163
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph.split, label %._crit_edge, !llvm.loop !245

bb.j:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75
  %i.aw = call i32 @getKeySlot(ptr noundef %i.av) #17
  %i.ax = call i64 @kvobjAllocSize(ptr noundef nonnull %i.h) #17
  call void @updateSlotAllocSize(ptr noundef %i.at, i32 noundef %i.aw, ptr noundef nonnull %i.h, i64 noundef %.026, i64 noundef %i.ax) #17
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %zsetScore.exit.thread.us, %._crit_edge, %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrankGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !163  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyErrorArity(ptr noundef nonnull %0) #17
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq i32 %i.i, 4                   ; 4 uses
  br i1 %.not44, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.61) #19
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.p) #17
  br label %bb.s

.critedge:                                        ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @shared, i64 96), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @shared, i64 64), %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !215
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162
  %i.v = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef %i.u) #17 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.x = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i32 noundef 3) #17
  %.not45 = icmp eq i32 %i.x, 0
  br i1 %.not45, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not46 = icmp eq i32 %i.y, 0
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.v) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  %i.aa = load i64, ptr %i.g, align 8
  %2 = trunc i64 %i.aa to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.j [
    i32 8, label %bb.k
    i32 0, label %bb.k
  ], !prof !246

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 4140) #17
  tail call void @abort() #18
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75
  %. = select i1 %.not44, ptr %i.a, ptr null
  %i.ad = call i64 @zsetRank(ptr noundef nonnull %i.v, ptr noundef %i.ac, i32 noundef %1, ptr noundef %.) ; 3 uses
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not47 = icmp eq i32 %i.ae, 0
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %i.aj = call i32 @getKeySlot(ptr noundef %i.ai) #17
  %i.ak = call i64 @kvobjAllocSize(ptr noundef nonnull %i.v) #17
  call void @updateSlotAllocSize(ptr noundef %i.ag, i32 noundef %i.aj, ptr noundef nonnull %i.v, i64 noundef %.0, i64 noundef %i.ak) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = icmp sgt i64 %i.ad, -1
  br i1 %i.al, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %.not44, label %bb.o, label %.critedge49

bb.o:                                             ; preds = %bb.n
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ad) #17
  %i.am = load double, ptr %i.a, align 8, !tbaa !16
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.am) #17
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @addReplyNullArray(ptr noundef nonnull %0) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @addReplyNull(ptr noundef nonnull %0) #17
  br label %bb.s

.critedge49:                                      ; preds = %bb.n
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ad) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q, %.critedge49, %.critedge, %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @addReplyErrorArity(ptr noundef) local_unnamed_addr #0

declare void @addReplyNullArray(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zrankCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zrankGenericCommand(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrevrankCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zrankGenericCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zscanCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.f = call i32 @parseScanCursorOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a) #17
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 480), align 8, !tbaa !247
  %i.l = call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef %i.k) #17 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 3) #17
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.p, %bb.e ], [ 0, %bb.d ]
  %i.q = load i64, ptr %i.a, align 8, !tbaa !92
  call void @scanGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.q) #17
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !166
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.z = call i32 @getKeySlot(ptr noundef %i.y) #17
  %i.aa = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #17
  call void @updateSlotAllocSize(ptr noundef %i.t, i32 noundef %i.z, ptr noundef nonnull %i.l, i64 noundef %.0, i64 noundef %i.aa) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare i32 @parseScanCursorOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @scanGenericCommand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @genericZpopCommand(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef writeonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 10 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %.not = icmp eq ptr %8, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %8, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not197 = icmp slt i32 %2, 1
  br i1 %exitcond.not197, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv198 = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv198
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162  ; 10 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.j = tail call ptr @lookupKeyWrite(ptr noundef %i.i, ptr noundef %i.h) #17 ; 19 uses
  %.not151 = icmp eq ptr %i.j, null
  br i1 %.not151, label %bb.d, label %bb.e, !llvm.loop !248

bb.e:                                             ; preds = %.lr.ph
  %i.k = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 3) #17
  %.not152 = icmp eq i32 %i.k, 0
  br i1 %.not152, label %bb.h, label %bb.by

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.not154 = icmp eq i32 %7, 0
  br i1 %.not154, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @addReplyNullArray(ptr noundef %0) #17
  br label %bb.by

bb.g:                                             ; preds = %._crit_edge
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  tail call void @addReply(ptr noundef %0, ptr noundef %i.l) #17
  br label %bb.by

bb.h:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %5, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.n) #17
  br label %bb.by

bb.j:                                             ; preds = %bb.h
  %i.o = icmp eq i64 %5, -1
  %spec.store.select = select i1 %i.o, i64 1, i64 %5
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not155 = icmp eq i32 %i.p, 0
  br i1 %.not155, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0137 = phi i64 [ %i.q, %bb.k ], [ 0, %bb.j ]
  %i.r = load i64, ptr %i.j, align 8
  %9 = trunc i64 %i.r to i32
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 15
  switch i32 %11, label %bb.o [
    i32 11, label %bb.m
    i32 7, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = tail call i64 @lpLength(ptr noundef %i.t) #17
  %i.v = lshr i64 %i.u, 1
  %i.w = and i64 %i.v, 4294967295
  br label %zsetLength.exit

bb.n:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  br label %zsetLength.exit

bb.o:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.m, %bb.n
  %.0.i = phi i64 [ %i.w, %bb.m ], [ %i.ac, %bb.n ] ; 3 uses
  %i.ad = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %.0.i) ; 7 uses
  %i.ae = icmp ne i32 %6, 0                       ; 3 uses
  %i.af = icmp ne i32 %4, 0                       ; 3 uses
  %i.ag = or i32 %6, %4
  %or.cond.not = icmp eq i32 %i.ag, 0
  br i1 %or.cond.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %zsetLength.exit
  %i.ah = shl nsw i64 %i.ad, 1
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ah) #17
  br label %.peel.begin

bb.q:                                             ; preds = %zsetLength.exit
  %i.ai = icmp eq i32 %6, 0                       ; 2 uses
  %or.cond3 = or i1 %i.af, %i.ai
  br i1 %or.cond3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ad) #17
  br label %.peel.begin

bb.s:                                             ; preds = %bb.q
  %or.cond5 = and i1 %i.af, %i.ai
  br i1 %or.cond5, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aj = shl nsw i64 %i.ad, 1
  %i.ak = or disjoint i64 %i.aj, 1
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ak) #17
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.h) #17
  br label %.peel.begin

bb.u:                                             ; preds = %bb.s
  %or.cond7 = and i1 %i.af, %i.ae
  br i1 %or.cond7, label %bb.v, label %.peel.begin

bb.v:                                             ; preds = %bb.u
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.h) #17
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ad) #17
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.r, %bb.u, %bb.v, %bb.t, %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %i.am = icmp eq i32 %3, 1                       ; 4 uses
  %i.an = select i1 %i.am, i64 -2, i64 0          ; 2 uses
  %i.ao = sext i32 %3 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr @__const.genericZpopCommand.events, i64 %i.ao
  %i.aq = load i64, ptr %i.j, align 8
  %12 = trunc i64 %i.aq to i32
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 15
  switch i32 %14, label %.loopexit [
    i32 11, label %bb.ab
    i32 7, label %bb.w
  ]

bb.w:                                             ; preds = %.peel.begin
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103 ; 2 uses
  br i1 %i.am, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.in.peel = phi ptr [ %i.aw, %bb.y ], [ %i.av, %bb.x ]
  %i.ax = load ptr, ptr %.in.peel, align 8, !tbaa !29 ; 4 uses
  %.not156.peel = icmp eq ptr %i.ax, null
  br i1 %.not156.peel, label %.loopexit175, label %bb.aa, !prof !91

bb.aa:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !13
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = tail call ptr @sdsdup(ptr noundef nonnull %i.bb) #17
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !16
  br label %bb.aj

bb.ab:                                            ; preds = %.peel.begin
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.bf = tail call ptr @lpSeek(ptr noundef %i.be, i64 noundef %i.an) #17 ; 3 uses
  %.not157.peel = icmp eq ptr %i.bf, null
  br i1 %.not157.peel, label %.loopexit176.a, label %bb.ac, !prof !91

bb.ac:                                            ; preds = %bb.ab
  %i.bg = call ptr @lpGetValue(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call ptr @sdsnewlen(ptr noundef nonnull %i.bg, i64 noundef %i.bj) #17
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !92
  %i.bm = call ptr @sdsfromlonglong(i64 noundef %i.bl) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0134.peel = phi ptr [ %i.bm, %bb.ae ], [ %i.bk, %bb.ad ]
  %i.bn = call ptr @lpNext(ptr noundef %i.be, ptr noundef nonnull %i.bf) #17 ; 2 uses
  %.not158.peel = icmp eq ptr %i.bn, null
  br i1 %.not158.peel, label %.loopexit177, label %bb.ag, !prof !91

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.bo = call ptr @lpGetValue(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i.peel = icmp eq ptr %i.bo, null
  br i1 %.not7.i.peel, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i.peel = call i32 @llvm.umin.i32(i32 %i.bp, i32 127)
  %i.bq = zext nneg i32 %spec.store.select.i.i.peel to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.bo, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  store i8 0, ptr %i.br, align 1, !tbaa !36
  %i.bs = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit.peel

bb.ai:                                            ; preds = %bb.ag
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !92
  %i.bu = sitofp i64 %i.bt to double
  br label %zzlGetScore.exit.peel

zzlGetScore.exit.peel:                            ; preds = %bb.ai, %bb.ah
  %.0.i162.peel = phi double [ %i.bs, %bb.ah ], [ %i.bu, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.aj

bb.aj:                                            ; preds = %zzlGetScore.exit.peel, %bb.aa
  %.0136.peel = phi double [ %.0.i162.peel, %zzlGetScore.exit.peel ], [ %i.bd, %bb.aa ]
  %.1135.peel = phi ptr [ %.0134.peel, %zzlGetScore.exit.peel ], [ %i.bc, %bb.aa ] ; 8 uses
  %i.bv = call i32 @zsetDel(ptr noundef nonnull %i.j, ptr noundef %.1135.peel)
  %.not159.peel = icmp eq i32 %i.bv, 0
  br i1 %.not159.peel, label %.loopexit178, label %bb.ak, !prof !91

bb.ak:                                            ; preds = %bb.aj
  %i.bw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.by = load ptr, ptr %i.ap, align 8, !tbaa !78
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !170
  call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef %i.by, ptr noundef %i.h, i32 noundef %i.cb) #17
  br i1 %i.ae, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cc = getelementptr i8, ptr %.1135.peel, i64 -1
  %.val.i.peel = load i8, ptr %i.cc, align 1, !tbaa !36 ; 2 uses
  %i.cd = and i8 %.val.i.peel, 7
  switch i8 %i.cd, label %sdslen.exit.peel [
    i8 0, label %bb.ar
    i8 1, label %bb.aq
    i8 2, label %bb.ap
    i8 3, label %bb.ao
    i8 4, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.ce = getelementptr inbounds i8, ptr %.1135.peel, i64 -17
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !24
  br label %sdslen.exit.peel

bb.ao:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds i8, ptr %.1135.peel, i64 -9
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i32 %i.ch to i64
  br label %sdslen.exit.peel

bb.ap:                                            ; preds = %bb.am
  %i.cj = getelementptr inbounds i8, ptr %.1135.peel, i64 -5
  %i.ck = load i16, ptr %i.cj, align 1, !tbaa !37
  %i.cl = zext i16 %i.ck to i64
  br label %sdslen.exit.peel

bb.aq:                                            ; preds = %bb.am
  %i.cm = getelementptr inbounds i8, ptr %.1135.peel, i64 -3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !36
  %i.co = zext i8 %i.cn to i64
  br label %sdslen.exit.peel

bb.ar:                                            ; preds = %bb.am
  %i.cp = lshr i8 %.val.i.peel, 3
  %i.cq = zext nneg i8 %i.cp to i64
  br label %sdslen.exit.peel

sdslen.exit.peel:                                 ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.0.i163.peel = phi i64 [ %i.cf, %bb.an ], [ %i.cq, %bb.ar ], [ %i.co, %bb.aq ], [ %i.cl, %bb.ap ], [ %i.ci, %bb.ao ], [ 0, %bb.am ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %.1135.peel, i64 noundef %.0.i163.peel) #17
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %.0136.peel) #17
  call void @sdsfree(ptr noundef nonnull %.1135.peel) #17
  %i.cr = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not160.peel = icmp eq i64 %i.cr, 0
  br i1 %.not160.peel, label %.loopexit179, label %.peel.next

.peel.next:                                       ; preds = %sdslen.exit.peel, %sdslen.exit
  %.0139 = phi i64 [ %i.ep, %sdslen.exit ], [ %i.cr, %sdslen.exit.peel ]
  %i.cs = load i64, ptr %i.j, align 8
  %15 = trunc i64 %i.cs to i32
  %16 = lshr i32 %15, 4
  %17 = and i32 %16, 15
  switch i32 %17, label %.loopexit [
    i32 11, label %bb.as
    i32 7, label %bb.ba
  ]

bb.as:                                            ; preds = %.peel.next
  %i.ct = load ptr, ptr %i.al, align 8, !tbaa !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.cu = call ptr @lpSeek(ptr noundef %i.ct, i64 noundef %i.an) #17 ; 3 uses
  %.not157 = icmp eq ptr %i.cu, null
  br i1 %.not157, label %.loopexit176.a, label %bb.at, !prof !91

.loopexit176.a:                                   ; preds = %bb.as, %bb.ab
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 4280) #17
  call void @abort() #18
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.cv = call ptr @lpGetValue(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cx = load i64, ptr %i.e, align 8, !tbaa !92
  %i.cy = call ptr @sdsfromlonglong(i64 noundef %i.cx) #17
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.cz = load i32, ptr %i.d, align 4, !tbaa !9
  %i.da = zext i32 %i.cz to i64
  %i.db = call ptr @sdsnewlen(ptr noundef nonnull %i.cv, i64 noundef %i.da) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0134 = phi ptr [ %i.cy, %bb.au ], [ %i.db, %bb.av ]
  %i.dc = call ptr @lpNext(ptr noundef %i.ct, ptr noundef nonnull %i.cu) #17 ; 2 uses
  %.not158 = icmp eq ptr %i.dc, null
  br i1 %.not158, label %.loopexit177, label %bb.ax, !prof !91

.loopexit177:                                     ; preds = %bb.aw, %bb.af
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 4289) #17
  call void @abort() #18
  unreachable

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.dd = call ptr @lpGetValue(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.dd, null
  br i1 %.not7.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.de = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.de, i32 127)
  %i.df = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.dd, i64 %i.df, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 0, ptr %i.dg, align 1, !tbaa !36
  %i.dh = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.az:                                            ; preds = %bb.ax
  %i.di = load i64, ptr %i.c, align 8, !tbaa !92
  %i.dj = sitofp i64 %i.di to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.ay, %bb.az
  %.0.i162 = phi double [ %i.dh, %bb.ay ], [ %i.dj, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.bf

bb.ba:                                            ; preds = %.peel.next
  %i.dk = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !103 ; 2 uses
  br i1 %i.am, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.in = phi ptr [ %i.dn, %bb.bb ], [ %i.dp, %bb.bc ]
  %i.dq = load ptr, ptr %.in, align 8, !tbaa !29  ; 4 uses
  %.not156 = icmp eq ptr %i.dq, null
  br i1 %.not156, label %.loopexit175, label %bb.be, !prof !91

.loopexit175:                                     ; preds = %bb.bd, %bb.z
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 4301) #17
  call void @abort() #18
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !13
  %i.dt = zext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dv = call ptr @sdsdup(ptr noundef nonnull %i.du) #17
  %i.dw = load double, ptr %i.dq, align 8, !tbaa !16
  br label %bb.bf

.loopexit:                                        ; preds = %.peel.next, %.peel.begin
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 4305, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

bb.bf:                                            ; preds = %bb.be, %zzlGetScore.exit
  %.0136 = phi double [ %.0.i162, %zzlGetScore.exit ], [ %i.dw, %bb.be ]
  %.1135 = phi ptr [ %.0134, %zzlGetScore.exit ], [ %i.dv, %bb.be ] ; 8 uses
  %i.dx = call i32 @zsetDel(ptr noundef nonnull %i.j, ptr noundef %.1135)
  %.not159 = icmp eq i32 %i.dx, 0
  br i1 %.not159, label %.loopexit178, label %bb.bg, !prof !91

.loopexit178:                                     ; preds = %bb.bf, %bb.aj
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 4308) #17
  call void @abort() #18
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.dy = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  br i1 %i.ae, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ea = getelementptr i8, ptr %.1135, i64 -1
  %.val.i = load i8, ptr %i.ea, align 1, !tbaa !36 ; 2 uses
  %i.eb = and i8 %.val.i, 7
  switch i8 %i.eb, label %sdslen.exit [
    i8 0, label %bb.bj
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
    i8 4, label %bb.bn
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ec = lshr i8 %.val.i, 3
  %i.ed = zext nneg i8 %i.ec to i64
  br label %sdslen.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ee = getelementptr inbounds i8, ptr %.1135, i64 -3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !36
  %i.eg = zext i8 %i.ef to i64
  br label %sdslen.exit

bb.bl:                                            ; preds = %bb.bi
  %i.eh = getelementptr inbounds i8, ptr %.1135, i64 -5
  %i.ei = load i16, ptr %i.eh, align 1, !tbaa !37
  %i.ej = zext i16 %i.ei to i64
  br label %sdslen.exit

bb.bm:                                            ; preds = %bb.bi
  %i.ek = getelementptr inbounds i8, ptr %.1135, i64 -9
  %i.el = load i32, ptr %i.ek, align 1, !tbaa !9
  %i.em = zext i32 %i.el to i64
  br label %sdslen.exit

bb.bn:                                            ; preds = %bb.bi
  %i.en = getelementptr inbounds i8, ptr %.1135, i64 -17
  %i.eo = load i64, ptr %i.en, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.0.i163 = phi i64 [ %i.eo, %bb.bn ], [ %i.ed, %bb.bj ], [ %i.eg, %bb.bk ], [ %i.ej, %bb.bl ], [ %i.em, %bb.bm ], [ 0, %bb.bi ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %.1135, i64 noundef %.0.i163) #17
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %.0136) #17
  call void @sdsfree(ptr noundef nonnull %.1135) #17
  %i.ep = add nsw i64 %.0139, -1                  ; 2 uses
  %.not160 = icmp eq i64 %i.ep, 0
  br i1 %.not160, label %.loopexit179, label %.peel.next, !llvm.loop !249

.loopexit179:                                     ; preds = %sdslen.exit, %sdslen.exit.peel
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not161 = icmp eq i32 %i.eq, 0
  br i1 %.not161, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.loopexit179
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !75
  %i.eu = call i32 @getKeySlot(ptr noundef %i.et) #17
  %i.ev = call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #17
  call void @updateSlotAllocSize(ptr noundef %i.er, i32 noundef %i.eu, ptr noundef nonnull %i.j, i64 noundef %.0137, i64 noundef %i.ev) #17
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.loopexit179
  %i.ew = sub nsw i64 %.0.i, %i.ad
  %i.ex = load i64, ptr %i.j, align 8
  %18 = trunc i64 %i.ex to i32
  %19 = lshr i32 %18, 4
  %20 = and i32 %19, 15
  switch i32 %20, label %bb.bs [
    i32 11, label %bb.bq
    i32 7, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.ey = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.ez = call i64 @lpLength(ptr noundef %i.ey) #17
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = and i64 %i.fa, 4294967295
  br label %zsetLength.exit165

bb.br:                                            ; preds = %bb.bp
  %i.fc = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !103
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !23
  br label %zsetLength.exit165

bb.bs:                                            ; preds = %bb.bp
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

zsetLength.exit165:                               ; preds = %bb.bq, %bb.br
  %.0.i164 = phi i64 [ %i.fb, %bb.bq ], [ %i.fg, %bb.br ]
  %i.fh = icmp eq i64 %.0.i164, 0
  br i1 %i.fh, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %zsetLength.exit165
  br i1 %.not, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 1, ptr %8, align 4, !tbaa !9
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.fj = call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.fi, ptr noundef %i.h) #17 ; 0 uses
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !170
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef %i.h, i32 noundef %i.fm) #17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %zsetLength.exit165
  %.0 = phi i64 [ -1, %bb.bv ], [ %i.ew, %zsetLength.exit165 ]
  %.0.fr = freeze i64 %.0                         ; 2 uses
  %i.fn = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !75
  %i.fq = call i32 @getKeySlot(ptr noundef %i.fp) #17
  call void @updateKeysizesHist(ptr noundef %i.fn, i32 noundef %i.fq, i32 noundef 3, i64 noundef %.0.i, i64 noundef %.0.fr) #17
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.fs = icmp sgt i64 %.0.fr, 0
  %spec.select = select i1 %i.fs, ptr %i.j, ptr null
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.fr, ptr noundef nonnull %i.h, ptr noundef %spec.select, i32 noundef 1) #17
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !197
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !250
  %i.fx = icmp eq ptr %i.fw, @zmpopCommand
  br i1 %i.fx, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.fy = call ptr @createStringObjectFromLongLong(i64 noundef %i.ad) #17 ; 2 uses
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 472), align 8
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 464), align 8
  %i.gb = select i1 %i.am, ptr %i.fz, ptr %i.ga
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.gb, ptr noundef nonnull %i.h, ptr noundef %i.fy) #17
  call void @decrRefCount(ptr noundef %i.fy) #17
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.f, %bb.g, %bb.e, %bb.i
  ret void
}

declare void @addReplyBulk(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zmpopCommand(ptr noundef %0) #2 {
bb.a:
  tail call void @zmpopGenericCommand(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  ret void
}

declare ptr @createStringObjectFromLongLong(i64 noundef) local_unnamed_addr #0

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zpopMinMaxCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.e) #17
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 -1, ptr %i.a, align 8, !tbaa !24
  %i.f = icmp eq i32 %i.c, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.l = phi i64 [ %.pre, %._crit_edge ], [ -1, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !215
  %i.o = icmp sgt i32 %i.n, 2
  %i.p = icmp ne i64 %i.l, -1
  %i.q = and i1 %i.o, %i.p
  %i.r = zext i1 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @genericZpopCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 1, i32 noundef %1, i32 noundef 0, i64 noundef %i.l, i32 noundef %i.r, i32 noundef 0, ptr noundef null)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zpopminCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.e) #17
  br label %zpopMinMaxCommand.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 -1, ptr %i.a, align 8, !tbaa !24
  %i.f = icmp eq i32 %i.c, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %i.l = phi i64 [ %.pre.i, %._crit_edge.i ], [ -1, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !215
  %i.o = icmp sgt i32 %i.n, 2
  %i.p = icmp ne i64 %i.l, -1
  %i.q = and i1 %i.p, %i.o
  %i.r = zext i1 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @genericZpopCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 1, i32 noundef 0, i32 noundef 0, i64 noundef %i.l, i32 noundef %i.r, i32 noundef 0, ptr noundef null)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zpopMinMaxCommand.exit

zpopMinMaxCommand.exit:                           ; preds = %bb.b, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zpopmaxCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.e) #17
  br label %zpopMinMaxCommand.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 -1, ptr %i.a, align 8, !tbaa !24
  %i.f = icmp eq i32 %i.c, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %i.l = phi i64 [ %.pre.i, %._crit_edge.i ], [ -1, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !215
  %i.o = icmp sgt i32 %i.n, 2
  %i.p = icmp ne i64 %i.l, -1
  %i.q = and i1 %i.p, %i.o
  %i.r = zext i1 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @genericZpopCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 1, i32 noundef 1, i32 noundef 0, i64 noundef %i.l, i32 noundef %i.r, i32 noundef 0, ptr noundef null)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zpopMinMaxCommand.exit

zpopMinMaxCommand.exit:                           ; preds = %bb.b, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blockingGenericZpopCommand(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.e = sext i32 %4 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162
  %i.h = call i32 @getTimeoutFromObjectOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %i.b, i32 noundef 0) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !166
  %i.n = call ptr @lookupKeyWrite(ptr noundef %i.m, ptr noundef %i.l) #17 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i32 noundef 3) #17
  %.not41 = icmp eq i32 %i.p, 0
  br i1 %.not41, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.n, align 8
  %8 = trunc i64 %i.q to i32
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 15
  switch i32 %10, label %bb.g [
    i32 11, label %bb.e
    i32 7, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.t = call i64 @lpLength(ptr noundef %i.s) #17
  %i.u = lshr i64 %i.t, 1
  %i.v = and i64 %i.u, 4294967295
  br label %zsetLength.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  br label %zsetLength.exit

bb.g:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.v, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ac = icmp eq i64 %.0.i, 0
  br i1 %i.ac, label %.critedge, label %bb.h

bb.h:                                             ; preds = %zsetLength.exit
  store ptr %i.l, ptr %i.a, align 8
  call void @genericZpopCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %3, i32 noundef 1, i64 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef null)
  %i.ad = icmp eq i64 %5, -1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i32 %3, 1
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 472), align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 464), align 8
  %i.ah = select i1 %i.ae, ptr %i.af, ptr %i.ag
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.ah, ptr noundef %i.l) #17
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ai = call i64 @llvm.smin.i64(i64 %5, i64 %.0.i)
  %i.aj = call ptr @createStringObjectFromLongLong(i64 noundef %i.ai) #17 ; 2 uses
  %i.ak = icmp eq i32 %3, 1
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 472), align 8
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 464), align 8
  %i.an = select i1 %i.ak, ptr %i.al, ptr %i.am
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.an, ptr noundef %i.l, ptr noundef %i.aj) #17
  call void @decrRefCount(ptr noundef %i.aj) #17
  br label %.loopexit

.critedge:                                        ; preds = %zsetLength.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !251

._crit_edge:                                      ; preds = %.critedge, %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !252
  %i.aq = and i64 %i.ap, 2199023255552
  %.not40 = icmp eq i64 %i.aq, 0
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @addReplyNullArray(ptr noundef nonnull %0) #17
  br label %.loopexit

bb.l:                                             ; preds = %._crit_edge
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !92
  call void @blockForKeys(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %1, i32 noundef %2, i64 noundef %i.ar, i32 noundef 0) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.j, %bb.i, %bb.a, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare i32 @getTimeoutFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @blockForKeys(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @bzpopminCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !163  ; 2 uses
  %i.f = add nsw i32 %i.e, -2
  %i.g = add nsw i32 %i.e, -1
  tail call void @blockingGenericZpopCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, i32 noundef 0, i32 noundef %i.g, i64 noundef -1, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bzpopmaxCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !163  ; 2 uses
  %i.f = add nsw i32 %i.e, -2
  %i.g = add nsw i32 %i.e, -1
  tail call void @blockingGenericZpopCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, i32 noundef 1, i32 noundef %i.g, i64 noundef -1, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrandmemberWithCountCommand(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.zsetopsrc, align 8          ; 12 uses
  %4 = alloca %struct.zsetopval, align 8          ; 22 uses
  %5 = alloca %struct.dictIterator, align 8       ; 7 uses
  %6 = alloca %struct.listpackEntry, align 8      ; 8 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  %i.g = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef %i.f) #17 ; 16 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.cn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef 3) #17
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.cn

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %7 = trunc i64 %i.j to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.f [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = tail call i64 @lpLength(ptr noundef %i.l) #17
  %i.n = lshr i64 %i.m, 1
  %i.o = and i64 %i.n, 4294967295
  br label %zsetLength.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23
  br label %zsetLength.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.d ], [ %i.u, %bb.e ] ; 8 uses
  %i.v = icmp slt i64 %1, 0
  %.0 = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 9 uses
  %i.w = icmp eq i64 %1, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %zsetLength.exit
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.x) #17
  br label %bb.cn

bb.h:                                             ; preds = %zsetLength.exit
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not169 = icmp eq i32 %i.y, 0
  br i1 %.not169, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.g) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0158 = phi i64 [ %i.z, %bb.i ], [ 0, %bb.h ]
  %i.aa = icmp eq i64 %.0, 1
  %or.cond = or i1 %i.v, %i.aa
  br i1 %or.cond, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %.not177 = icmp eq i32 %2, 0                    ; 3 uses
  br i1 %.not177, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !215
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = zext i1 %i.ad to i64
  %spec.select = shl nuw i64 %.0, %i.ae
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.sink = phi i64 [ %.0, %bb.k ], [ %spec.select, %bb.l ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0.sink) #17
  %i.af = load i64, ptr %i.g, align 8
  %10 = trunc i64 %i.af to i32
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 15
  switch i32 %12, label %.loopexit [
    i32 7, label %bb.n
    i32 11, label %bb.ae
  ]

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.ad, %bb.n
  %.in = phi i64 [ %.0, %bb.n ], [ %i.ak, %bb.ad ]
  %i.ak = add i64 %.in, -1                        ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !107
  %i.am = tail call ptr @dictGetFairRandomKey(ptr noundef %i.al) #17
  %i.an = tail call ptr @dictGetKey(ptr noundef %i.am) #17 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !13
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq ; 12 uses
  br i1 %.not177, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !215
  %i.at = icmp sgt i32 %i.as, 2
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = getelementptr i8, ptr %i.ar, i64 -1
  %.val.i = load i8, ptr %i.au, align 1, !tbaa !36 ; 2 uses
  %i.av = and i8 %.val.i, 7
  switch i8 %i.av, label %bb.x [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.aw = lshr i8 %.val.i, 3
  %i.ax = zext nneg i8 %i.aw to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = zext i8 %i.az to i64
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -5
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !37
  %i.bd = zext i16 %i.bc to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -9
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !9
  %i.bg = zext i32 %i.bf to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds i8, ptr %i.ar, i64 -17
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i188 = phi i64 [ %i.bi, %bb.w ], [ %i.ax, %bb.s ], [ %i.ba, %bb.t ], [ %i.bd, %bb.u ], [ %i.bg, %bb.v ], [ 0, %bb.r ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i64 noundef %.0.i188) #17
  %i.bj = load double, ptr %i.an, align 8, !tbaa !16
  tail call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.bj) #17
  br label %bb.ad

.critedge:                                        ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %i.ar, i64 -1
  %.val.i189 = load i8, ptr %i.bk, align 1, !tbaa !36 ; 2 uses
  %i.bl = and i8 %.val.i189, 7
  switch i8 %i.bl, label %sdslen.exit191 [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %.critedge
  %i.bm = lshr i8 %.val.i189, 3
  %i.bn = zext nneg i8 %i.bm to i64
  br label %sdslen.exit191

bb.z:                                             ; preds = %.critedge
  %i.bo = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36
  %i.bq = zext i8 %i.bp to i64
  br label %sdslen.exit191

bb.aa:                                            ; preds = %.critedge
  %i.br = getelementptr inbounds i8, ptr %i.ar, i64 -5
  %i.bs = load i16, ptr %i.br, align 1, !tbaa !37
  %i.bt = zext i16 %i.bs to i64
  br label %sdslen.exit191

bb.ab:                                            ; preds = %.critedge
  %i.bu = getelementptr inbounds i8, ptr %i.ar, i64 -9
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !9
  %i.bw = zext i32 %i.bv to i64
  br label %sdslen.exit191

bb.ac:                                            ; preds = %.critedge
  %i.bx = getelementptr inbounds i8, ptr %i.ar, i64 -17
  %i.by = load i64, ptr %i.bx, align 1, !tbaa !24
  br label %sdslen.exit191

sdslen.exit191:                                   ; preds = %.critedge, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i190 = phi i64 [ %i.by, %bb.ac ], [ %i.bn, %bb.y ], [ %i.bq, %bb.z ], [ %i.bt, %bb.aa ], [ %i.bw, %bb.ab ], [ 0, %.critedge ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i64 noundef %.0.i190) #17
  br label %bb.ad

bb.ad:                                            ; preds = %sdslen.exit191, %bb.x
  %i.bz = load i64, ptr %i.aj, align 8, !tbaa !252
  %i.ca = and i64 %i.bz, 1024
  %.not179 = icmp ne i64 %i.ca, 0
  %.not178 = icmp eq i64 %i.ak, 0
  %or.cond242 = select i1 %.not179, i1 true, i1 %.not178
  br i1 %or.cond242, label %.loopexit, label %bb.o

bb.ae:                                            ; preds = %bb.m
  %i.cb = tail call i64 @llvm.umin.i64(i64 %.0, i64 1000) ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 24               ; 2 uses
  %i.cd = tail call noalias ptr @zmalloc(i64 noundef %i.cc) #20 ; 3 uses
  br i1 %.not177, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = tail call noalias ptr @zmalloc(i64 noundef %i.cc) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0160 = phi ptr [ %i.ce, %bb.af ], [ null, %bb.ae ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ah
  %.2 = phi i64 [ %.0, %bb.ag ], [ %i.ci, %bb.ah ] ; 2 uses
  %i.ch = tail call i64 @llvm.umin.i64(i64 %.2, i64 %i.cb) ; 2 uses
  %i.ci = sub i64 %.2, %i.ch                      ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !75
  %i.ck = trunc nuw nsw i64 %i.ch to i32          ; 2 uses
  tail call void @lpRandomPairs(ptr noundef %i.cj, i32 noundef %i.ck, ptr noundef %i.cd, ptr noundef %.0160, i32 noundef 2) #17
  tail call fastcc void @zrandmemberReplyWithListpack(ptr noundef nonnull %0, i32 noundef %i.ck, ptr noundef %i.cd, ptr noundef %.0160)
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !252
  %i.cm = and i64 %i.cl, 1024
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = icmp ne i64 %i.ci, 0
  %or.cond3 = and i1 %i.co, %i.cn
  br i1 %or.cond3, label %bb.ah, label %bb.ai, !llvm.loop !253

bb.ai:                                            ; preds = %bb.ah
  tail call void @zfree(ptr noundef %i.cd) #17
  tail call void @zfree(ptr noundef %.0160) #17
  br label %.loopexit

bb.aj:                                            ; preds = %bb.j
  store ptr %i.g, ptr %3, align 8, !tbaa !186
  %i.cp = load i64, ptr %i.g, align 8
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = and i32 %i.cq, 15
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !188
  %i.ct = lshr i32 %i.cq, 4
  %i.cu = and i32 %i.ct, 15
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !189
  call void @zuiInitIterator(ptr noundef nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.cw = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i) ; 2 uses
  %.not170 = icmp eq i32 %2, 0                    ; 7 uses
  br i1 %.not170, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !215
  %i.cz = icmp eq i32 %i.cy, 2
  %i.da = zext i1 %i.cz to i64
  %spec.select239 = shl nuw nsw i64 %i.cw, %i.da
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink = phi i64 [ %i.cw, %bb.aj ], [ %spec.select239, %bb.ak ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.sink) #17
  %.not171 = icmp ult i64 %1, %.0.i
  br i1 %.not171, label %bb.bb, label %.preheader207

.preheader207:                                    ; preds = %bb.al
  %i.db = call i32 @zuiNext(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not176208 = icmp eq i32 %i.db, 0
end_hunk_6
begin_hunk_7_@zrandmemberReplyWithListpack:bb.a
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.031.us = phi i64 [ %i.k, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.031.us ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 2 uses
  %.not29.us = icmp eq ptr %i.e, null
  br i1 %.not29.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101
  %i.h = zext i32 %i.g to i64
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.h) #17
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !102
  tail call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.j) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = add nuw nsw i64 %.031.us, 1              ; 2 uses
  %exitcond34.not = icmp eq i64 %i.k, %i.b
  br i1 %exitcond34.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !259

._crit_edge:                                      ; preds = %bb.l, %bb.d, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.031 = phi i64 [ %i.ae, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !215
  %i.m = icmp sgt i32 %i.l, 2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.031 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %.not29 = icmp eq ptr %i.o, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101
  %i.r = zext i32 %i.q to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef %i.r) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.t) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.031 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 2 uses
  %.not30 = icmp eq ptr %i.v, null
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.x, i32 127)
  %i.y = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.v, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !36
  %i.aa = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !102
  %i.ad = sitofp i64 %i.ac to double
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi double [ %i.ad, %bb.k ], [ %i.aa, %bb.j ]
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %.sink) #17
  %i.ae = add nuw nsw i64 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !259
}

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @lpRandomPairsUnique(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @dictAddRaw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @dictSetDoubleVal(ptr noundef, double noundef) local_unnamed_addr #0

declare ptr @dictUnlink(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @dictFreeUnlinkedEntry(ptr noundef, ptr noundef) local_unnamed_addr #0

declare double @dictGetDoubleVal(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zrandmemberCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.listpackEntry, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp sgt i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.h, i64 noundef -9223372036854775807, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not30 = icmp eq i32 %i.i, 0
  br i1 %.not30, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 4
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.j, 4
  br i1 %i.l, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !tbaa !24
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.45) #19
  %.not31 = icmp eq i32 %i.r, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.s) #17
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.u = add i64 %i.t, -4611686018427387904
  %or.cond = icmp ult i64 %i.u, -9223372036854775807
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #17
  br label %bb.u

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.v = phi i64 [ %i.t, %bb.g ], [ %.pre, %._crit_edge ]
  %.025 = phi i32 [ 1, %bb.g ], [ 0, %._crit_edge ]
  call void @zrandmemberWithCountCommand(ptr noundef nonnull %0, i64 noundef %i.v, i32 noundef %.025)
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !215
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !162
  %i.ad = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.x, ptr noundef %i.ac) #17 ; 9 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i32 noundef 3) #17
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not28 = icmp eq i32 %i.ag, 0
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i64 [ %i.ah, %bb.m ], [ 0, %bb.l ]
  %i.ai = load i64, ptr %i.ad, align 8
  %2 = trunc i64 %i.ai to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.q [
    i32 11, label %bb.o
    i32 7, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = tail call i64 @lpLength(ptr noundef %i.ak) #17
  %i.am = lshr i64 %i.al, 1
  %i.an = and i64 %i.am, 4294967295
  br label %zsetLength.exit

bb.p:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  br label %zsetLength.exit

bb.q:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.o, %bb.p
  %.0.i = phi i64 [ %i.an, %bb.o ], [ %i.at, %bb.p ]
  call void @zsetTypeRandomElement(ptr noundef nonnull %i.ad, i64 noundef %.0.i, ptr noundef nonnull %1, ptr noundef null)
  %i.au = load ptr, ptr %1, align 8, !tbaa !99    ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %zsetLength.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !101
  %i.ax = zext i32 %i.aw to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i64 noundef %i.ax) #17
  br label %zsetReplyFromListpackEntry.exit

bb.s:                                             ; preds = %zsetLength.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !102
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.az) #17
  br label %zsetReplyFromListpackEntry.exit

zsetReplyFromListpackEntry.exit:                  ; preds = %bb.r, %bb.s
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not29 = icmp eq i32 %i.ba, 0
  br i1 %.not29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %zsetReplyFromListpackEntry.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !166
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !149
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !162
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = call i32 @getKeySlot(ptr noundef %i.bh) #17
  %i.bj = call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #17
  call void @updateSlotAllocSize(ptr noundef %i.bc, i32 noundef %i.bi, ptr noundef nonnull %i.ad, i64 noundef %.0, i64 noundef %i.bj) #17
  br label %bb.u

bb.u:                                             ; preds = %zsetReplyFromListpackEntry.exit, %bb.t, %bb.j, %bb.k, %bb.b, %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare i32 @getRangeLongFromObjectOrReply(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zmpopGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 -1, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162
  %i.h = call i32 @getRangeLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.g, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.71) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !24
  %i.j = add nsw i64 %i.i, %i.e                   ; 2 uses
  %i.k = add nsw i64 %i.j, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !163
  %i.n = sext i32 %i.m to i64
  %.not40 = icmp slt i64 %i.k, %i.n
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.o) #17
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.k
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75   ; 2 uses
  %i.u = call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.72) #19
  %.not41 = icmp eq i32 %i.u, 0
  br i1 %.not41, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.73) #19
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.w) #17
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.037 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ]      ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.0.in = phi i64 [ %i.j, %bb.g ], [ %.0, %bb.k ]
  %.0 = add nsw i64 %.0.in, 2                     ; 4 uses
  %i.x = load i32, ptr %i.l, align 8, !tbaa !163  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %.0, %i.y
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %i.ab, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.ad = trunc i64 %.0 to i32
  %.neg = add i32 %i.ad, 1
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %.0 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = call i32 @strcasecmp(ptr noundef %i.ah, ptr noundef nonnull @.str.74) #19
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = icmp ne i32 %i.x, %.neg
  %or.cond = and i1 %i.ak, %i.aj
  br i1 %or.cond, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %i.ae, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !162
  %i.an = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.am, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.75) #17
  %.not44 = icmp eq i32 %i.an, 0
  br i1 %.not44, label %bb.h, label %.loopexit, !llvm.loop !260

.critedge:                                        ; preds = %bb.j, %bb.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ao) #17
  br label %.loopexit

bb.l:                                             ; preds = %bb.h
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 1, ptr %i.b, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = phi i64 [ 1, %bb.m ], [ %i.aa, %bb.l ]  ; 2 uses
  %.not43 = icmp eq i32 %2, 0
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !24
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %.not43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @blockingGenericZpopCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef %i.au, i32 noundef %.037, i32 noundef 1, i64 noundef %i.ap, i32 noundef 1, i32 noundef 1)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  call void @genericZpopCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef %i.au, i32 noundef %.037, i32 noundef 1, i64 noundef %i.ap, i32 noundef 1, i32 noundef 1, ptr noundef null)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.c, %bb.f, %.critedge, %bb.p, %bb.o, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bzmpopCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
end_hunk_7
