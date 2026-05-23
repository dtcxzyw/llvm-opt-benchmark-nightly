inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@dictCStrKeyCompare:bb.a

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.a, 32
  %i.e = ashr exact i64 %sext, 32
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %2, i64 %i.e)
  %i.f = icmp eq i32 %bcmp, 0
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @dictCStrKeyCaseCompare(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #16 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef %2) #42
  %i.b = icmp eq i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dictEncObjKeyCompare(ptr readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8
  %i.e = and i64 %i.d, 240
  %i.f = icmp eq i64 %i.e, 16
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = icmp eq ptr %i.h, %i.j
  %i.l = zext i1 %i.k to i32
  br label %bb.w

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = and i64 %i.a, 2147483392
  %.not = icmp eq i64 %i.m, 2147483136
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @getDecodedObject(ptr noundef nonnull %1) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.019 = phi ptr [ %i.n, %bb.e ], [ %1, %bb.d ]  ; 3 uses
  %i.o = load i64, ptr %2, align 8
  %i.p = and i64 %i.o, 2147483392
  %.not20 = icmp eq i64 %i.p, 2147483136
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @getDecodedObject(ptr noundef nonnull %2) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018 = phi ptr [ %i.q, %bb.g ], [ %2, %bb.f ]  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 6 uses
  %i.v = getelementptr i8, ptr %i.s, i64 -1
  %.val.i.i = load i8, ptr %i.v, align 1, !tbaa !47 ; 2 uses
  %i.w = and i8 %.val.i.i, 7
  switch i8 %i.w, label %sdslen.exit.i [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = lshr i8 %.val.i.i, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit.i

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit.i

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds i8, ptr %i.s, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !60
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit.i

bb.l:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.s, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit.i

bb.m:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds i8, ptr %i.s, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !62
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.aj, %bb.m ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ], [ %i.ae, %bb.k ], [ %i.ah, %bb.l ], [ 0, %bb.h ] ; 2 uses
  %i.ak = trunc i64 %.0.i.i to i32
  %i.al = getelementptr i8, ptr %i.u, i64 -1
  %.val.i8.i = load i8, ptr %i.al, align 1, !tbaa !47 ; 2 uses
  %i.am = and i8 %.val.i8.i, 7
  switch i8 %i.am, label %sdslen.exit10.i [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %sdslen.exit.i
  %i.an = lshr i8 %.val.i8.i, 3
  %i.ao = zext nneg i8 %i.an to i64
  br label %sdslen.exit10.i

bb.o:                                             ; preds = %sdslen.exit.i
  %i.ap = getelementptr inbounds i8, ptr %i.u, i64 -3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !47
  %i.ar = zext i8 %i.aq to i64
  br label %sdslen.exit10.i

bb.p:                                             ; preds = %sdslen.exit.i
  %i.as = getelementptr inbounds i8, ptr %i.u, i64 -5
  %i.at = load i16, ptr %i.as, align 1, !tbaa !60
  %i.au = zext i16 %i.at to i64
  br label %sdslen.exit10.i

bb.q:                                             ; preds = %sdslen.exit.i
  %i.av = getelementptr inbounds i8, ptr %i.u, i64 -9
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !9
  %i.ax = zext i32 %i.aw to i64
  br label %sdslen.exit10.i

bb.r:                                             ; preds = %sdslen.exit.i
  %i.ay = getelementptr inbounds i8, ptr %i.u, i64 -17
  %i.az = load i64, ptr %i.ay, align 1, !tbaa !62
  br label %sdslen.exit10.i

sdslen.exit10.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %sdslen.exit.i
  %.0.i9.i = phi i64 [ %i.az, %bb.r ], [ %i.ao, %bb.n ], [ %i.ar, %bb.o ], [ %i.au, %bb.p ], [ %i.ax, %bb.q ], [ 0, %sdslen.exit.i ]
  %i.ba = trunc i64 %.0.i9.i to i32
  %.not.i = icmp eq i32 %i.ak, %i.ba
  br i1 %.not.i, label %bb.s, label %dictSdsKeyCompare.exit

bb.s:                                             ; preds = %sdslen.exit10.i
  %sext.i = shl i64 %.0.i.i, 32
  %i.bb = ashr exact i64 %sext.i, 32
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.s, ptr nonnull readonly %i.u, i64 %i.bb)
  %i.bc = icmp eq i32 %bcmp.i, 0
  %i.bd = zext i1 %i.bc to i32
  br label %dictSdsKeyCompare.exit

dictSdsKeyCompare.exit:                           ; preds = %sdslen.exit10.i, %bb.s
  %.0.i = phi i32 [ %i.bd, %bb.s ], [ 0, %sdslen.exit10.i ] ; 2 uses
  %i.be = load i64, ptr %.019, align 8
  %i.bf = and i64 %i.be, 2147483392
  %.not21 = icmp eq i64 %i.bf, 2147483136
  br i1 %.not21, label %bb.u, label %bb.t

bb.t:                                             ; preds = %dictSdsKeyCompare.exit
  tail call void @decrRefCount(ptr noundef nonnull %.019) #41
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %dictSdsKeyCompare.exit
  %i.bg = load i64, ptr %.018, align 8
  %i.bh = and i64 %i.bg, 2147483392
  %.not22 = icmp eq i64 %i.bh, 2147483136
  br i1 %.not22, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @decrRefCount(ptr noundef nonnull %.018) #41
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ %.0.i, %bb.v ], [ %.0.i, %bb.u ]
  ret i32 %.0
}

declare ptr @getDecodedObject(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @dictEncObjHash(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %1 = trunc i64 %i.b to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.i [
    i32 0, label %bb.b
    i32 8, label %bb.b
    i32 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !47 ; 2 uses
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
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47
  %i.k = zext i8 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.m = load i16, ptr %i.l, align 1, !tbaa !60
  %i.n = zext i16 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.p = load i32, ptr %i.o, align 1, !tbaa !9
  %i.q = zext i32 %i.p to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.s = load i64, ptr %i.r, align 1, !tbaa !62
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.s, %bb.g ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ 0, %bb.b ]
  %i.t = tail call i64 @dictGenHashFunction(ptr noundef nonnull %i.d, i64 noundef %.0.i) #41
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.w) #41
  %i.y = sext i32 %i.x to i64
  %i.z = call i64 @dictGenHashFunction(ptr noundef nonnull %i.a, i64 noundef %i.y) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.9, i32 noundef 498, ptr noundef nonnull @.str.10) #41
  tail call void @abort() #43
  unreachable

bb.j:                                             ; preds = %bb.h, %sdslen.exit
  %.0 = phi i64 [ %i.t, %sdslen.exit ], [ %i.z, %bb.h ]
  ret i64 %.0
}

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dictResizeAllowed(i64 noundef %0, double noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6620), align 4, !tbaa !83
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %1, 1.618000e+00
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @overMaxmemoryAfterAlloc(i64 noundef %0) #41
  %.not2 = icmp eq i32 %i.c, 0
  %i.d = zext i1 %.not2 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

declare i32 @overMaxmemoryAfterAlloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @dictDestructorKV(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !84
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.f = tail call ptr @kvstoreGetMetadata(ptr noundef %i.e) #41 ; 2 uses
  %i.g = tail call i64 @kvobjAllocSize(ptr noundef nonnull %1) #41 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !89
  %i.j = sub i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !89
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2400
  %i.l = load i64, ptr %1, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 15
  tail call void @updateSlotHist(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef %i.n, i64 noundef %i.g, i64 noundef -1) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  tail call void @decrRefCount(ptr noundef nonnull %1) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @kvGetKey(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @kvobjGetKey(ptr noundef %0) #41
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @kvstoreMetadataBytes(ptr readnone captures(none) %0) #18 {
bb.a:
  ret i64 4800
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @kvstoreDictMetaBytes(ptr readnone captures(none) %0) #18 {
bb.a:
  ret i64 2440
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kvstoreCanFreeDict(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @kvstoreGetDictMeta(ptr noundef %0, i32 noundef %1, i32 noundef 0) #41 ; 3 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !92
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8324), align 4, !tbaa !93 ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !94
  %i.g = icmp ne i64 %i.f, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i1 [ false, %bb.b ], [ %i.g, %bb.c ]
  %i.i = and i32 %i.c, 2
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !95
  %.not11 = icmp eq i64 %i.k, 0
  br i1 %.not11, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = icmp ne i64 %i.m, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.o = phi i1 [ false, %bb.d ], [ %i.n, %bb.f ]
  %or.cond = select i1 %i.h, i1 true, i1 %i.o
  br i1 %or.cond, label %.thread, label %bb.h
end_hunk_0
