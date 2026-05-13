inline.NumInlined: 56
inline.NumDeleted: 4
begin_hunk_0_@listTypePush:bb.a
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !59
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !60
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.aj, %bb.i ], [ %i.y, %bb.e ], [ %i.ab, %bb.f ], [ %i.ae, %bb.g ], [ %i.ah, %bb.h ], [ 0, %bb.d ]
  tail call void @quicklistPush(ptr noundef %i.s, ptr noundef nonnull %i.u, i64 noundef %.0.i, i32 noundef %i.g) #8
  br label %bb.ad

bb.j:                                             ; preds = %bb.a
  %i.ak = load i64, ptr %1, align 8
  %i.al = and i64 %i.ak, 240
  %i.am = icmp eq i64 %i.al, 16
  %i.an = icmp eq i32 %2, 0                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14 ; 12 uses
  br i1 %i.am, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = tail call ptr @lpPrependInteger(ptr noundef %i.ap, i64 noundef %i.as) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = tail call ptr @lpAppendInteger(ptr noundef %i.ap, i64 noundef %i.as) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = phi ptr [ %i.at, %bb.l ], [ %i.au, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !14
  br label %bb.ad

bb.o:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.ar, i64 -1
  %.val.i25 = load i8, ptr %i.ax, align 1, !tbaa !59 ; 3 uses
  %i.ay = and i8 %.val.i25, 7                     ; 2 uses
  br i1 %i.an, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  switch i8 %i.ay, label %sdslen.exit27 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.az = lshr i8 %.val.i25, 3
  %i.ba = zext nneg i8 %i.az to i64
  br label %sdslen.exit27

bb.r:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.bd = zext i8 %i.bc to i64
  br label %sdslen.exit27

bb.s:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -5
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !60
  %i.bg = zext i16 %i.bf to i64
  br label %sdslen.exit27

bb.t:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds i8, ptr %i.ar, i64 -9
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !9
  %i.bj = zext i32 %i.bi to i64
  br label %sdslen.exit27

bb.u:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds i8, ptr %i.ar, i64 -17
  %i.bl = load i64, ptr %i.bk, align 1, !tbaa !17
  br label %sdslen.exit27

sdslen.exit27:                                    ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i26 = phi i64 [ %i.bl, %bb.u ], [ %i.ba, %bb.q ], [ %i.bd, %bb.r ], [ %i.bg, %bb.s ], [ %i.bj, %bb.t ], [ 0, %bb.p ]
  %i.bm = trunc i64 %.0.i26 to i32
  %i.bn = tail call ptr @lpPrepend(ptr noundef %i.ap, ptr noundef nonnull %i.ar, i32 noundef %i.bm) #8
  br label %bb.ab

bb.v:                                             ; preds = %bb.o
  switch i8 %i.ay, label %sdslen.exit30 [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.bo = lshr i8 %.val.i25, 3
  %i.bp = zext nneg i8 %i.bo to i64
  br label %sdslen.exit30

bb.x:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !59
  %i.bs = zext i8 %i.br to i64
  br label %sdslen.exit30

bb.y:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds i8, ptr %i.ar, i64 -5
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !60
  %i.bv = zext i16 %i.bu to i64
  br label %sdslen.exit30

bb.z:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds i8, ptr %i.ar, i64 -9
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !9
  %i.by = zext i32 %i.bx to i64
  br label %sdslen.exit30

bb.aa:                                            ; preds = %bb.v
  %i.bz = getelementptr inbounds i8, ptr %i.ar, i64 -17
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !17
  br label %sdslen.exit30

sdslen.exit30:                                    ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i29 = phi i64 [ %i.ca, %bb.aa ], [ %i.bp, %bb.w ], [ %i.bs, %bb.x ], [ %i.bv, %bb.y ], [ %i.by, %bb.z ], [ 0, %bb.v ]
  %i.cb = trunc i64 %.0.i29 to i32
  %i.cc = tail call ptr @lpAppend(ptr noundef %i.ap, ptr noundef nonnull %i.ar, i32 noundef %i.cb) #8
  br label %bb.ab

bb.ab:                                            ; preds = %sdslen.exit30, %sdslen.exit27
  %i.cd = phi ptr [ %i.bn, %sdslen.exit27 ], [ %i.cc, %sdslen.exit30 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !14
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.ad:                                            ; preds = %bb.c, %sdslen.exit, %bb.ab, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @quicklistPush(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lpPrependInteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpAppendInteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpPrepend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lpAppend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @listPopSaver(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @createStringObject(ptr noundef %0, i64 noundef %1) #8
  ret ptr %i.a
}

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @listTypePop(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [21 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !57
  %i.e = load i64, ptr %0, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i32 %i.f, 4
  %i.h = and i32 %i.g, 15
  switch i32 %i.h, label %bb.k [
    i32 9, label %bb.b
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.i = icmp ne i32 %1, 0
  %i.j = sext i1 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = call i32 @quicklistPopCustom(ptr noundef %i.l, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull @listPopSaver) #8
  %i.n = icmp eq i32 %i.m, 0
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = icmp ne ptr %i.o, null
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.b, align 8, !tbaa !66
  %i.r = call ptr @createStringObjectFromLongLong(i64 noundef %i.q) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.t = icmp eq i32 %1, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr @lpFirst(ptr noundef %i.v) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = tail call ptr @lpLast(ptr noundef %i.v) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call ptr @lpGet(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ab = call ptr @createStringObject(ptr noundef %i.z, i64 noundef %i.aa) #8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = call ptr @lpDelete(ptr noundef %i.ad, ptr noundef nonnull %i.y, ptr noundef null) #8
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !14
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %.pre.pre, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.d
  %i.ag = phi ptr [ %i.af, %bb.j ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %i.ag
}

declare i32 @quicklistPopCustom(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @createStringObjectFromLongLong(i64 noundef) local_unnamed_addr #2

declare ptr @lpFirst(ptr noundef) local_unnamed_addr #2

declare ptr @lpLast(ptr noundef) local_unnamed_addr #2

declare ptr @lpGet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lpDelete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @listTypeLength(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15
  switch i32 %i.d, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call i64 @quicklistCount(ptr noundef %i.f) #8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call i64 @lpLength(ptr noundef %i.i) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  ret i64 %.0
}

declare i64 @quicklistCount(ptr noundef) local_unnamed_addr #2

declare i64 @lpLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @listTypeAllocSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 216) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.f [
    i32 9, label %bb.d
    i32 11, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call i64 @quicklistAllocSize(ptr noundef %i.h) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = tail call i64 @lpBytes(ptr noundef %i.k) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 223, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.l, %bb.e ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @quicklistAllocSize(ptr noundef) local_unnamed_addr #2

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeInitIterator(ptr noundef initializes((0, 10)) %0, ptr noundef %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !67
  %i.a = load i64, ptr %1, align 8
  %i.b = trunc i64 %i.a to i8
  %i.c = lshr i8 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %3, ptr %i.e, align 1, !tbaa !72
  switch i8 %i.c, label %bb.d [
    i8 9, label %bb.b
    i8 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %3, 0
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = tail call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %i.h, ptr noundef %i.j, i32 noundef %i.g, i64 noundef %2) #8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = tail call ptr @lpSeek(ptr noundef %i.m, i64 noundef %2) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !73
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @quicklistInitIteratorAtIdx(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpSeek(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeSetIteratorDirection(ptr noundef %0, ptr noundef readonly captures(none) %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !72
  %i.c = icmp eq i8 %i.b, %2
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %2, ptr %i.a, align 1, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !71
  switch i8 %i.e, label %bb.h [
    i8 9, label %bb.c
    i8 11, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i8 %2, 0
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @quicklistSetDirection(ptr noundef nonnull %i.h, i32 noundef %i.g) #8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = icmp eq i8 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @lpNext(ptr noundef %i.k, ptr noundef %i.n) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lpPrev(ptr noundef %i.k, ptr noundef %i.n) #8
end_hunk_0
begin_hunk_1_@listTypeEqual:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = tail call i32 @quicklistCompare(ptr noundef nonnull %i.h, ptr noundef %i.j, i64 noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = trunc i64 %2 to i32
  %i.q = tail call i32 @lpCompare(ptr noundef %i.m, ptr noundef %i.o, i32 noundef %i.p, ptr noundef %3, ptr noundef %4) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 413, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.q, %bb.e ]
  ret i32 %.0
}

declare i32 @quicklistCompare(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lpCompare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !71
  switch i8 %i.d, label %bb.i [
    i8 9, label %bb.b
    i8 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @quicklistDelEntry(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !81
  %i.i = load ptr, ptr %0, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = call ptr @lpDelete(ptr noundef %i.k, ptr noundef %i.h, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !72
  %i.q = icmp eq i8 %i.p, 1
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !73
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call ptr @lpPrev(ptr noundef %i.l, ptr noundef nonnull %i.r) #8
  store ptr %i.u, ptr %i.t, align 8, !tbaa !73
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = call ptr @lpLast(ptr noundef %i.l) #8
  store ptr %i.v, ptr %i.t, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.b
  ret void
}

declare void @quicklistDelEntry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @listTypeDup(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 450) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.f [
    i32 11, label %bb.d
    i32 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call ptr @lpDup(ptr noundef %i.h) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = tail call ptr @quicklistDup(ptr noundef %i.k) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 460, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.l, %bb.e ], [ %i.i, %bb.d ]
  %i.m = tail call ptr @createObject(i32 noundef 1, ptr noundef %.sink) #8 ; 3 uses
  %i.n = load i64, ptr %0, align 8
  %i.o = and i64 %i.n, 240
  %i.p = load i64, ptr %i.m, align 8
  %i.q = and i64 %i.p, -241
  %i.r = or disjoint i64 %i.q, %i.o
  store i64 %i.r, ptr %i.m, align 8
  ret ptr %i.m
}

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lpDup(ptr noundef) local_unnamed_addr #2

declare ptr @quicklistDup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeDelRange(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15
  switch i32 %i.d, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call i32 @quicklistDelRange(ptr noundef %i.f, i64 noundef %1, i64 noundef %2) #8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call ptr @lpDeleteRange(ptr noundef %i.i, i64 noundef %1, i64 noundef %2) #8
  store ptr %i.j, ptr %i.h, align 8, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @quicklistDelRange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpDeleteRange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pushGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = call ptr @lookupKeyWriteWithLink(ptr noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a) #8 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !57
  %i.j = call i32 @checkType(ptr noundef %0, ptr noundef %i.i, i32 noundef 1) #8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %3 = load ptr, ptr %i.b, align 8, !tbaa !57     ; 2 uses
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !98
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.k) #8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.l = call ptr @createListListpackObject() #8
  store ptr %i.l, ptr %i.b, align 8, !tbaa !57
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = call ptr @dbAddByLink(ptr noundef %i.m, ptr noundef %i.p, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8 ; 0 uses
  %.pre38.pre = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pre38 = phi ptr [ %.pre38.pre, %bb.e ], [ %3, %bb.b ] ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @kvobjAllocSize(ptr noundef %.pre38) #8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = phi ptr [ %.pre, %bb.g ], [ %.pre38, %bb.f ]
  %.031 = phi i64 [ %i.s, %bb.g ], [ 0, %bb.f ]
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !101
  %i.x = add nsw i32 %i.w, -1
  call fastcc void @listTypeTryConversionRaw(ptr noundef %i.t, i32 noundef 1, ptr noundef readonly %i.u, i32 noundef 2, i32 noundef %i.x, ptr noundef null, ptr noundef null)
  %i.y = load i32, ptr %i.v, align 8, !tbaa !101
  %i.z = icmp sgt i32 %i.y, 2
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 2, %bb.h ] ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  call void @listTypePush(ptr noundef %i.aa, ptr noundef %i.ad, i32 noundef %1)
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.v, align 8, !tbaa !101
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !57  ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 4
  %i.an = and i32 %i.am, 15
  switch i32 %i.an, label %bb.k [
    i32 9, label %bb.i
    i32 11, label %bb.j
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = call i64 @quicklistCount(ptr noundef %i.ap) #8
  br label %listTypeLength.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.at = call i64 @lpLength(ptr noundef %i.as) #8
  br label %listTypeLength.exit

bb.k:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.aq, %bb.i ], [ %i.at, %bb.j ] ; 3 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i) #8
  %i.au = icmp eq i32 %1, 0
  %i.av = select i1 %i.au, ptr @.str.5, ptr @.str.6
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !57
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.aw, ptr noundef %i.az, ptr noundef %i.ba, i32 noundef 1) #8
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull %i.av, ptr noundef %i.bd, i32 noundef %i.bg) #8
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !14
  %i.bn = call i32 @getKeySlot(ptr noundef %i.bm) #8
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !101
  %i.bp = add nsw i32 %i.bo, -2
  %i.bq = sext i32 %i.bp to i64
  %i.br = sub i64 %.0.i, %i.bq
  call void @updateKeysizesHist(ptr noundef %i.bh, i32 noundef %i.bn, i32 noundef 1, i64 noundef %i.br, i64 noundef %.0.i) #8
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not35 = icmp eq i32 %i.bs, 0
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %listTypeLength.exit
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !14
  %i.bz = call i32 @getKeySlot(ptr noundef %i.by) #8
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %i.cb = call i64 @kvobjAllocSize(ptr noundef %i.ca) #8
  call void @updateSlotAllocSize(ptr noundef %i.bt, i32 noundef %i.bz, ptr noundef %i.ca, i64 noundef %.031, i64 noundef %i.cb) #8
  br label %bb.m

bb.m:                                             ; preds = %listTypeLength.exit, %bb.l, %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @createListListpackObject() local_unnamed_addr #2

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #2

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @updateKeysizesHist(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #2

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lpushCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rpushCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lpushxCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rpushxCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linsertCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listTypeIterator, align 8   ; 9 uses
  %2 = alloca %struct.listTypeEntry, align 8      ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.7) #10
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.8) #10
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.m) #8
  br label %bb.ad

bb.d:                                             ; preds = %bb.b, %bb.a
end_hunk_1
