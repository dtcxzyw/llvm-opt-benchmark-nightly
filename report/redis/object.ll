inline.NumInlined: 99
inline.NumDeleted: 11
begin_hunk_0_@createStringObjectFromLongLongWithOptions:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.l = add nuw nsw i64 %i.j, 20
  %i.m = call ptr @zmalloc_usable(i64 noundef %i.l, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.a, align 8, !tbaa !18
  %i.p = add i64 %i.o, -16
  %i.q = call ptr @sdsnewplacement(ptr noundef nonnull %i.n, i64 noundef %i.p, i8 noundef signext 1, ptr noundef nonnull %i.b, i64 noundef %i.j) #13
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %createStringObject.exit

bb.g:                                             ; preds = %bb.e
  %i.s = call ptr @sdsnewlen(ptr noundef nonnull %i.b, i64 noundef %i.j) #13
  %i.t = call noalias noundef dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8, !tbaa !20
  store i64 256, ptr %i.t, align 8
  br label %createStringObject.exit

createStringObject.exit:                          ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.f ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %createStringObject.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.d ], [ %.0.i, %createStringObject.exit ]
  ret ptr %.0
}

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @createStringObjectFromLongLong(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond.i = icmp ult i64 %0, 10000
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 896), i64 %0
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %createStringObjectFromLongLongWithOptions.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 272, ptr %i.c, align 8
  %i.e = inttoptr i64 %0 to ptr
  store ptr %i.e, ptr %i.d, align 8, !tbaa !20
  br label %createStringObjectFromLongLongWithOptions.exit

createStringObjectFromLongLongWithOptions.exit:   ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @createStringObjectFromLongLongForValue(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !67
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !23
  %i.d = and i32 %i.c, 11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %or.cond.i = icmp ult i64 %0, 10000
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 896), i64 %0
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  br label %createStringObjectFromLongLongWithOptions.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 272, ptr %i.g, align 8
  %i.i = inttoptr i64 %0 to ptr
  store ptr %i.i, ptr %i.h, align 8, !tbaa !20
  br label %createStringObjectFromLongLongWithOptions.exit

bb.f:                                             ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 272, ptr %i.j, align 8
  %i.l = inttoptr i64 %0 to ptr
  store ptr %i.l, ptr %i.k, align 8, !tbaa !20
  br label %createStringObjectFromLongLongWithOptions.exit

createStringObjectFromLongLongWithOptions.exit:   ; preds = %bb.e, %bb.d, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @createStringObjectFromLongLongWithSds(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [21 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 21, i64 noundef %0) #13 ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp ult i32 %i.c, 45
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.f = add nuw nsw i64 %i.d, 20
  %i.g = call ptr @zmalloc_usable(i64 noundef %i.f, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18
  %i.j = add i64 %i.i, -16
  %i.k = call ptr @sdsnewplacement(ptr noundef nonnull %i.h, i64 noundef %i.j, i8 noundef signext 1, ptr noundef nonnull %i.b, i64 noundef %i.d) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %createStringObjectFromLongLongWithOptions.exit

bb.c:                                             ; preds = %bb.a
  %i.m = call ptr @sdsnewlen(ptr noundef nonnull %i.b, i64 noundef %i.d) #13
  %i.n = call noalias noundef dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !20
  store i64 256, ptr %i.n, align 8
  br label %createStringObjectFromLongLongWithOptions.exit

createStringObjectFromLongLongWithOptions.exit:   ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @createStringObjectFromLongDouble(x86_fp80 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [5120 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.not = icmp ne i32 %1, 0
  %i.c = zext i1 %.not to i32
  %i.d = call i32 @ld2string(ptr noundef nonnull %i.b, i64 noundef 5120, x86_fp80 noundef %0, i32 noundef %i.c) #13 ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = icmp ult i32 %i.d, 45
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.g = add nuw nsw i64 %i.e, 20
  %i.h = call ptr @zmalloc_usable(i64 noundef %i.g, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  %i.k = add i64 %i.j, -16
  %i.l = call ptr @sdsnewplacement(ptr noundef nonnull %i.i, i64 noundef %i.k, i8 noundef signext 1, ptr noundef nonnull %i.b, i64 noundef %i.e) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %createStringObject.exit

bb.c:                                             ; preds = %bb.a
  %i.n = call ptr @sdsnewlen(ptr noundef nonnull %i.b, i64 noundef %i.e) #13
  %i.o = call noalias noundef dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !20
  store i64 256, ptr %i.o, align 8
  br label %createStringObject.exit

createStringObject.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret ptr %.0.i
}

declare i32 @ld2string(ptr noundef, i64 noundef, x86_fp80 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @dupStringObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = and i64 %i.b, 15
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 432) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.b to i32
  %2 = lshr exact i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.q [
    i32 0, label %bb.d
    i32 8, label %bb.j
    i32 1, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !15 ; 2 uses
  %i.h = and i8 %.val.i, 7
  switch i8 %i.h, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = lshr i8 %.val.i, 3
  %i.j = zext nneg i8 %i.i to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.o = load i16, ptr %i.n, align 1, !tbaa !16
  %i.p = zext i16 %i.o to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.r = load i32, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i32 %i.r to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.u, %bb.i ], [ %i.j, %bb.e ], [ %i.m, %bb.f ], [ %i.p, %bb.g ], [ %i.s, %bb.h ], [ 0, %bb.d ]
  %i.v = tail call ptr @sdsnewlen(ptr noundef nonnull %i.f, i64 noundef %.0.i) #13
  %i.w = tail call noalias noundef dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !20
  store i64 256, ptr %i.w, align 8
  br label %bb.r

bb.j:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 6 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %.val.i11 = load i8, ptr %i.aa, align 1, !tbaa !15 ; 2 uses
  %i.ab = and i8 %.val.i11, 7
  switch i8 %i.ab, label %sdslen.exit13 [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = lshr i8 %.val.i11, 3
  %i.ad = zext nneg i8 %i.ac to i64
  br label %sdslen.exit13

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i64
  br label %sdslen.exit13

bb.m:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !16
  %i.aj = zext i16 %i.ai to i64
  br label %sdslen.exit13

bb.n:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds i8, ptr %i.z, i64 -9
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !9
  %i.am = zext i32 %i.al to i64
  br label %sdslen.exit13

bb.o:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds i8, ptr %i.z, i64 -17
  %i.ao = load i64, ptr %i.an, align 1, !tbaa !18
  br label %sdslen.exit13

sdslen.exit13:                                    ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i12 = phi i64 [ %i.ao, %bb.o ], [ %i.ad, %bb.k ], [ %i.ag, %bb.l ], [ %i.aj, %bb.m ], [ %i.am, %bb.n ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.ap = add i64 %.0.i12, 20
  %i.aq = call ptr @zmalloc_usable(i64 noundef %i.ap, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.a, align 8, !tbaa !18
  %i.at = add i64 %i.as, -16
  %i.au = call ptr @sdsnewplacement(ptr noundef nonnull %i.ar, i64 noundef %i.at, i8 noundef signext 1, ptr noundef nonnull %i.z, i64 noundef %.0.i12) #13
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.r

bb.p:                                             ; preds = %bb.c
  %i.aw = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 272, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !20
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @.str.6) #13
  tail call void @abort() #14
  unreachable

bb.r:                                             ; preds = %bb.p, %sdslen.exit13, %sdslen.exit
  %.0 = phi ptr [ %i.w, %sdslen.exit ], [ %i.aq, %sdslen.exit13 ], [ %i.aw, %bb.p ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createQuicklistObject(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @quicklistNew(i32 noundef %0, i32 noundef %1) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 401, ptr %i.b, align 8
  ret ptr %i.b
}

declare ptr @quicklistNew(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createListListpackObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lpNew(i64 noundef 0) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 433, ptr %i.b, align 8
  ret ptr %i.b
}

declare ptr @lpNew(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createSetObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dictCreate(ptr noundef nonnull @setDictType) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 290, ptr %i.b, align 8
  ret ptr %i.b
}

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createIntsetObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @intsetNew() #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 354, ptr %i.b, align 8
  ret ptr %i.b
}

declare ptr @intsetNew() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createSetListpackObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lpNew(i64 noundef 0) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 434, ptr %i.b, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createHashObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lpNew(i64 noundef 0) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 436, ptr %i.b, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createZsetObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.b = tail call ptr @dictCreate(ptr noundef nonnull @zsetDictType) #13
  store ptr %i.b, ptr %i.a, align 8, !tbaa !68
  %i.c = tail call ptr @zslCreate() #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !71
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !20
  store i64 371, ptr %i.e, align 8
  ret ptr %i.e
}

declare ptr @zslCreate() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createZsetListpackObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lpNew(i64 noundef 0) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 435, ptr %i.b, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createStreamObject() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @streamNew() #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 422, ptr %i.b, align 8
  ret ptr %i.b
}

declare ptr @streamNew() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createModuleObject(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.d, align 8, !tbaa !20
  store i64 261, ptr %i.c, align 8
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @freeStringObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  tail call void @sdsfree(ptr noundef %i.e) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @sdsfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeListObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  tail call void @quicklistRelease(ptr noundef %i.c) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  tail call void @lpFree(ptr noundef %i.e) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 536, ptr noundef nonnull @.str.7) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @quicklistRelease(ptr noundef) local_unnamed_addr #2

declare void @lpFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeSetObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.d [
    i32 2, label %bb.b
    i32 6, label %bb.c
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  tail call void @dictRelease(ptr noundef %i.c) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  tail call void @zfree(ptr noundef %i.e) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 554, ptr noundef nonnull @.str.8) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @dictRelease(ptr noundef) local_unnamed_addr #2

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeZsetObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.d [
    i32 7, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  tail call void @dictRelease(ptr noundef %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  tail call void @zslFree(ptr noundef %i.f) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 571, ptr noundef nonnull @.str.9) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.h, %bb.c ], [ %i.c, %bb.b ]
  tail call void @zfree(ptr noundef %.sink) #13
  ret void
}

declare void @zslFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeHashObject(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @hashTypeFree(ptr noundef %0) #13
  ret void
}

declare void @hashTypeFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeModuleObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  tail call void %i.e(ptr noundef %i.g) #13
  tail call void @zfree(ptr noundef nonnull %i.b) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @freeStreamObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @freeStream(ptr noundef %i.b) #13
  ret void
}

declare void @freeStream(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @incrRefCount(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 8388607                    ; 3 uses
  %i.e = icmp samesign ult i32 %i.d, 8388605
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i32 %i.d, 8
  %i.g = add nuw nsw i32 %i.f, 256
  %i.h = zext nneg i32 %i.g to i64
  %i.i = and i64 %i.a, -2147483393
  %i.j = or disjoint i64 %i.i, %i.h
  store i64 %i.j, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.e [
    i32 8388607, label %bb.f
    i32 8388606, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 596, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 598, ptr noundef nonnull @.str.11) #13
  tail call void @abort() #14
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @keyMetaOnFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dismissSds(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsAllocPtr(ptr noundef %0) #13
  %i.b = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !15 ; 2 uses
  %i.c = and i8 %.val.i, 7
  switch i8 %i.c, label %sdsAllocSize.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.d, 2
  %i.e = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 4
  br label %sdsAllocSize.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -3
  %i.k = load i16, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i16 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 6
  br label %sdsAllocSize.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -5
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 10
  br label %sdsAllocSize.exit

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9
  %i.s = load i64, ptr %i.r, align 1, !tbaa !18
  %i.t = add i64 %i.s, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.e, %bb.b ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.e ], [ 0, %bb.a ]
  tail call void @dismissMemory(ptr noundef %i.a, i64 noundef %.0.i) #13
  ret void
}

declare void @dismissMemory(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @sdsAllocPtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dismissStringObject(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 6 uses
  %i.f = tail call ptr @sdsAllocPtr(ptr noundef %i.e) #13
  %i.g = getelementptr i8, ptr %i.e, i64 -1
  %.val.i.i = load i8, ptr %i.g, align 1, !tbaa !15 ; 2 uses
  %i.h = and i8 %.val.i.i, 7
  switch i8 %i.h, label %dismissSds.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i8 %.val.i.i, 3
  %narrow.i.i = add nuw nsw i8 %i.i, 2
  %i.j = zext nneg i8 %narrow.i.i to i64
  br label %dismissSds.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 4
  br label %dismissSds.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.p = load i16, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i16 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 6
  br label %dismissSds.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 10
  br label %dismissSds.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.x = load i64, ptr %i.w, align 1, !tbaa !18
  %i.y = add i64 %i.x, 18
  br label %dismissSds.exit

dismissSds.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.y, %bb.g ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %bb.e ], [ %i.v, %bb.f ], [ 0, %bb.b ]
  tail call void @dismissMemory(ptr noundef %i.f, i64 noundef %.0.i.i) #13
  br label %bb.h

bb.h:                                             ; preds = %dismissSds.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dismissListObject(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %2 = trunc i64 %i.a to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.f [
    i32 9, label %bb.b
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 655) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = udiv i64 %1, %i.e
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 256), align 8, !tbaa !72
  %.not17 = icmp ult i64 %i.f, %i.g
  br i1 %.not17, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.019 = load ptr, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %.not1820 = icmp eq ptr %.019, null
  br i1 %.not1820, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.021 = phi ptr [ %.0, %.lr.ph ], [ %.019, %.preheader ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 196608
  %i.k = icmp eq i32 %i.j, 131072
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.021, i64 24
  %.sink.in = select i1 %i.k, ptr %i.m, ptr %i.n
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !18
  tail call void @dismissMemory(ptr noundef %i.m, i64 noundef %.sink) #13
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.0 = load ptr, ptr %i.o, align 8, !tbaa !73    ; 2 uses
  %.not18 = icmp eq ptr %.0, null
  br i1 %.not18, label %.loopexit, label %.lr.ph, !llvm.loop !77

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.r = tail call i64 @lpBytes(ptr noundef %i.q) #13
  tail call void @dismissMemory(ptr noundef %i.q, i64 noundef %i.r) #13
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 672, ptr noundef nonnull @.str.7) #13
  tail call void @abort() #14
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.d, %bb.e
  ret void
}

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dismissSetObject(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load i64, ptr %0, align 8
  %3 = trunc i64 %i.a to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.n [
    i32 2, label %bb.b
    i32 6, label %bb.l
    i32 11, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 680) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = udiv i64 %1, %i.h
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 256), align 8, !tbaa !72
  %.not24 = icmp ult i64 %i.i, %i.j
  br i1 %.not24, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef nonnull %i.c) #13
  %i.k = call ptr @dictNext(ptr noundef nonnull %2) #13 ; 2 uses
  %.not2526 = icmp eq ptr %i.k, null
  br i1 %.not2526, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %dismissSds.exit
  %i.l = phi ptr [ %i.ah, %dismissSds.exit ], [ %i.k, %bb.e ]
  %i.m = call ptr @dictGetKey(ptr noundef nonnull %i.l) #13 ; 6 uses
  %i.n = call ptr @sdsAllocPtr(ptr noundef %i.m) #13
  %i.o = getelementptr i8, ptr %i.m, i64 -1
  %.val.i.i = load i8, ptr %i.o, align 1, !tbaa !15 ; 2 uses
  %i.p = and i8 %.val.i.i, 7
  switch i8 %i.p, label %dismissSds.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.q = lshr i8 %.val.i.i, 3
  %narrow.i.i = add nuw nsw i8 %i.q, 2
  %i.r = zext nneg i8 %narrow.i.i to i64
  br label %dismissSds.exit

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 -2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  %i.u = zext i8 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 4
  br label %dismissSds.exit

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds i8, ptr %i.m, i64 -3
  %i.x = load i16, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i16 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 6
  br label %dismissSds.exit

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -5
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !9
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 10
  br label %dismissSds.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 -9
  %i.af = load i64, ptr %i.ae, align 1, !tbaa !18
  %i.ag = add i64 %i.af, 18
  br label %dismissSds.exit

dismissSds.exit:                                  ; preds = %.lr.ph, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.ag, %bb.j ], [ %i.r, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ], [ %i.ad, %bb.i ], [ 0, %.lr.ph ]
  call void @dismissMemory(ptr noundef %i.n, i64 noundef %.0.i.i) #13
  %i.ah = call ptr @dictNext(ptr noundef nonnull %2) #13 ; 2 uses
  %.not25 = icmp eq ptr %i.ah, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %dismissSds.exit, %bb.e
  call void @dictResetIterator(ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !15  ; 2 uses
  %i.am = icmp eq i8 %i.al, -1
  %i.an = sext i8 %i.al to i64
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = shl i64 8, %i.ao
  %i.aq = select i1 %i.am, i64 0, i64 %i.ap
  call void @dismissMemory(ptr noundef %i.aj, i64 noundef %i.aq) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15  ; 2 uses
  %i.av = icmp eq i8 %i.au, -1
  %i.aw = sext i8 %i.au to i64
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = shl i64 8, %i.ax
  %i.az = select i1 %i.av, i64 0, i64 %i.ay
  call void @dismissMemory(ptr noundef %i.as, i64 noundef %i.az) #13
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %i.bc = tail call i64 @intsetBlobLen(ptr noundef %i.bb) #13
  tail call void @dismissMemory(ptr noundef %i.bb, i64 noundef %i.bc) #13
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %i.bf = tail call i64 @lpBytes(ptr noundef %i.be) #13
  tail call void @dismissMemory(ptr noundef %i.be, i64 noundef %i.bf) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 701, ptr noundef nonnull @.str.8) #13
  tail call void @abort() #14
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.k
  ret void
}

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictNext(ptr noundef) local_unnamed_addr #2

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #2

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #2

declare i64 @intsetBlobLen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dismissZsetObject(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %2 = trunc i64 %i.a to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.g [
    i32 7, label %bb.b
    i32 11, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 710) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = udiv i64 %1, %i.g
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 256), align 8, !tbaa !72
  %.not24 = icmp ult i64 %i.h, %i.i
  br i1 %.not24, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %.not2526 = icmp eq ptr %i.l, null
  br i1 %.not2526, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.027 = phi ptr [ %i.n, %.lr.ph ], [ %i.l, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.027, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  tail call void @dismissMemory(ptr noundef nonnull %.027, i64 noundef 0) #13
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %.loopexit, label %.lr.ph, !llvm.loop !88

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.d
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !68   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.s = load i8, ptr %i.r, align 4, !tbaa !15    ; 2 uses
  %i.t = icmp eq i8 %i.s, -1
  %i.u = sext i8 %i.s to i64
  %i.v = and i64 %i.u, 4294967295
  %i.w = shl i64 8, %i.v
  %i.x = select i1 %i.t, i64 0, i64 %i.w
  tail call void @dismissMemory(ptr noundef %i.q, i64 noundef %i.x) #13
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, -1
  %i.ad = sext i8 %i.ab to i64
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = shl i64 8, %i.ae
  %i.ag = select i1 %i.ac, i64 0, i64 %i.af
  tail call void @dismissMemory(ptr noundef %i.z, i64 noundef %i.ag) #13
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %i.aj = tail call i64 @lpBytes(ptr noundef %i.ai) #13
  tail call void @dismissMemory(ptr noundef %i.ai, i64 noundef %i.aj) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 729, ptr noundef nonnull @.str.17) #13
  tail call void @abort() #14
  unreachable

bb.h:                                             ; preds = %bb.f, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dismissHashObject(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load i64, ptr %0, align 8
  %3 = trunc i64 %i.a to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.i [
    i32 2, label %bb.b
    i32 11, label %bb.g
    i32 12, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 737) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = udiv i64 %1, %i.h
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 256), align 8, !tbaa !72
  %.not25 = icmp ult i64 %i.i, %i.j
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef nonnull %i.c) #13
  %i.k = call ptr @dictNext(ptr noundef nonnull %2) #13 ; 2 uses
  %.not2627 = icmp eq ptr %i.k, null
  br i1 %.not2627, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.l = phi ptr [ %i.n, %.lr.ph ], [ %i.k, %bb.e ]
  %i.m = call ptr @dictGetKey(ptr noundef nonnull %i.l) #13
  call void @entryDismissMemory(ptr noundef %i.m) #13
  %i.n = call ptr @dictNext(ptr noundef nonnull %2) #13 ; 2 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  call void @dictResetIterator(ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.r = load i8, ptr %i.q, align 4, !tbaa !15    ; 2 uses
  %i.s = icmp eq i8 %i.r, -1
  %i.t = sext i8 %i.r to i64
  %i.u = and i64 %i.t, 4294967295
  %i.v = shl i64 8, %i.u
  %i.w = select i1 %i.s, i64 0, i64 %i.v
  call void @dismissMemory(ptr noundef %i.p, i64 noundef %i.w) #13
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 53
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15   ; 2 uses
  %i.ab = icmp eq i8 %i.aa, -1
  %i.ac = sext i8 %i.aa to i64
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = shl i64 8, %i.ad
  %i.af = select i1 %i.ab, i64 0, i64 %i.ae
  call void @dismissMemory(ptr noundef %i.y, i64 noundef %i.af) #13
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %i.ai = tail call i64 @lpBytes(ptr noundef %i.ah) #13
  tail call void @dismissMemory(ptr noundef %i.ah, i64 noundef %i.ai) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90 ; 2 uses
  %i.an = tail call i64 @lpBytes(ptr noundef %i.am) #13
  tail call void @dismissMemory(ptr noundef %i.am, i64 noundef %i.an) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 759, ptr noundef nonnull @.str.19) #13
  tail call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.f
  ret void
}

declare void @entryDismissMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dismissStreamObject(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.raxIterator, align 8        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %i.d = tail call i64 @raxSize(ptr noundef %i.c) #13
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @raxSize(ptr noundef %i.c) #13
  %i.g = udiv i64 %1, %i.f
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 256), align 8, !tbaa !72
  %.not = icmp ult i64 %i.g, %i.h
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @raxStart(ptr noundef nonnull %2, ptr noundef %i.c) #13
  %i.i = call i32 @raxSeek(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, ptr noundef null, i64 noundef 0) #13 ; 0 uses
  %i.j = call i32 @raxNext(ptr noundef nonnull %2) #13
  %.not56 = icmp eq i32 %i.j, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96   ; 2 uses
  %i.m = call i64 @lpBytes(ptr noundef %i.l) #13
  call void @dismissMemory(ptr noundef %i.l, i64 noundef %i.m) #13
  %i.n = call i32 @raxNext(ptr noundef nonnull %2) #13
  %.not5 = icmp eq i32 %i.n, 0
  br i1 %.not5, label %._crit_edge, label %bb.d, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @raxStop(ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  ret void
}

declare i64 @raxSize(ptr noundef) local_unnamed_addr #2

declare void @raxStart(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @raxSeek(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @raxNext(ptr noundef) local_unnamed_addr #2

declare void @raxStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dismissObject(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 252), align 4, !tbaa !101
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %dismissStringObject.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = and i64 %i.b, 2147483392
  %.not12 = icmp eq i64 %i.c, 256
  br i1 %.not12, label %bb.c, label %dismissStringObject.exit

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %i.b to i32
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %dismissStringObject.exit [
    i32 0, label %bb.d
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 6, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.b, 240
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %dismissStringObject.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 6 uses
  %i.j = tail call ptr @sdsAllocPtr(ptr noundef %i.i) #13
  %i.k = getelementptr i8, ptr %i.i, i64 -1
  %.val.i.i.i = load i8, ptr %i.k, align 1, !tbaa !15 ; 2 uses
  %i.l = and i8 %.val.i.i.i, 7
  switch i8 %i.l, label %dismissSds.exit.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = lshr i8 %.val.i.i.i, 3
  %narrow.i.i.i = add nuw nsw i8 %i.m, 2
  %i.n = zext nneg i8 %narrow.i.i.i to i64
end_hunk_0
begin_hunk_1_@isObjectRepresentableAsLongLong:bb.a
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i8 %.val.i.i, 3
  %i.n = zext nneg i8 %i.m to i64
  br label %isSdsRepresentableAsLongLong.exit

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  %i.q = zext i8 %i.p to i64
  br label %isSdsRepresentableAsLongLong.exit

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -5
  %i.s = load i16, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i16 %i.s to i64
  br label %isSdsRepresentableAsLongLong.exit

bb.j:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 -9
  %i.v = load i32, ptr %i.u, align 1, !tbaa !9
  %i.w = zext i32 %i.v to i64
  br label %isSdsRepresentableAsLongLong.exit

bb.k:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -17
  %i.y = load i64, ptr %i.x, align 1, !tbaa !18
  br label %isSdsRepresentableAsLongLong.exit

isSdsRepresentableAsLongLong.exit:                ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i.i = phi i64 [ %i.y, %bb.k ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.t, %bb.i ], [ %i.w, %bb.j ], [ 0, %bb.f ]
  %i.z = tail call i32 @string2ll(ptr noundef nonnull %i.j, i64 noundef %.0.i.i, ptr noundef %1) #13
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = sext i1 %.not.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.e, %isSdsRepresentableAsLongLong.exit
  %.0 = phi i32 [ %i.aa, %isSdsRepresentableAsLongLong.exit ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @trimStringObjectIfNeeded(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %sdsavail.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 14 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !15 ; 2 uses
  %i.f = and i8 %.val.i, 7                        ; 2 uses
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
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = zext i8 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.m = load i16, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i16 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.p = load i32, ptr %i.o, align 1, !tbaa !9
  %i.q = zext i32 %i.p to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.s = load i64, ptr %i.r, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.s, %bb.g ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %i.t = icmp ugt i64 %.0.i, 32767
  %i.u = icmp ne i32 %1, 0
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %sdslen.exit
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1504), align 8, !tbaa !105 ; 2 uses
  %.not12 = icmp eq ptr %i.v, null
  br i1 %.not12, label %sdsavail.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !106
  %i.y = and i64 %i.x, 256
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp samesign ult i64 %.0.i, 64
  %or.cond3 = and i1 %i.aa, %i.z
  br i1 %or.cond3, label %bb.j, label %sdsavail.exit.thread

bb.j:                                             ; preds = %bb.i, %sdslen.exit
  switch i8 %i.f, label %sdsavail.exit.thread [
    i8 4, label %bb.n
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ae = zext i8 %i.ad to i64
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i64
  %i.ah = sub nsw i64 %i.ae, %i.ag
  br label %sdsavail.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.aj = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !16
  %i.al = zext i16 %i.ak to i64
  %i.am = load i16, ptr %i.ai, align 1, !tbaa !16
  %i.an = zext i16 %i.am to i64
  %i.ao = sub nsw i64 %i.al, %i.an
  br label %sdsavail.exit

bb.m:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.aq = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !9
  %i.as = load i32, ptr %i.ap, align 1, !tbaa !9
  %i.at = sub i32 %i.ar, %i.as
  %i.au = zext i32 %i.at to i64
  br label %sdsavail.exit

bb.n:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.aw = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.ax = load i64, ptr %i.aw, align 1, !tbaa !18
  %i.ay = load i64, ptr %i.av, align 1, !tbaa !18
  %i.az = sub i64 %i.ax, %i.ay
  br label %sdsavail.exit

sdsavail.exit:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i14 = phi i64 [ %i.au, %bb.m ], [ %i.az, %bb.n ], [ %i.ah, %bb.k ], [ %i.ao, %bb.l ]
  %i.ba = udiv i64 %.0.i, 10
  %i.bb = icmp ugt i64 %.0.i14, %i.ba
  br i1 %i.bb, label %bb.o, label %sdsavail.exit.thread

bb.o:                                             ; preds = %sdsavail.exit
  %i.bc = tail call ptr @sdsRemoveFreeSpace(ptr noundef nonnull %i.d, i32 noundef 0) #13
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !20
  br label %sdsavail.exit.thread

sdsavail.exit.thread:                             ; preds = %bb.j, %bb.h, %bb.i, %bb.o, %sdsavail.exit, %bb.a
  ret void
}

declare ptr @sdsRemoveFreeSpace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @tryObjectEncodingEx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 11 uses
  %i.e = load i64, ptr %0, align 8                ; 4 uses
  %i.f = and i64 %i.e, 15
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 869) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = trunc i64 %i.e to i32
  %3 = lshr exact i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %createStringObjectFromLongLongForValue.exit [
    i32 0, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = and i64 %i.e, 2147483136
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %createStringObjectFromLongLongForValue.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !15 ; 2 uses
  %i.j = and i8 %.val.i, 7
  switch i8 %i.j, label %sdslen.exit.thread [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i8 %.val.i, 3
  %i.l = zext nneg i8 %i.k to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i16 %i.q to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.w, %bb.j ], [ %i.l, %bb.f ], [ %i.o, %bb.g ], [ %i.r, %bb.h ], [ %i.u, %bb.i ] ; 3 uses
  %i.x = icmp ult i64 %.0.i, 21
  br i1 %i.x, label %sdslen.exit.thread, label %bb.s

sdslen.exit.thread:                               ; preds = %bb.e, %sdslen.exit
  %.0.i40 = phi i64 [ %.0.i, %sdslen.exit ], [ 0, %bb.e ]
  %i.y = call i32 @string2l(ptr noundef nonnull %i.d, i64 noundef %.0.i40, ptr noundef nonnull %i.b) #13
  %.not32 = icmp eq i32 %i.y, 0
  %.pre = load i64, ptr %0, align 8               ; 3 uses
  br i1 %.not32, label %.thread, label %bb.k

bb.k:                                             ; preds = %sdslen.exit.thread
  %5 = trunc i64 %.pre to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %.thread [
    i32 0, label %bb.l
    i32 8, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @sdsfree(ptr noundef %i.z) #13
  %i.aa = load i64, ptr %0, align 8
  %i.ab = and i64 %i.aa, -241
  %i.ac = or disjoint i64 %i.ab, 16
  store i64 %i.ac, ptr %0, align 8
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !18
  %i.ae = inttoptr i64 %i.ad to ptr
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !20
  br label %createStringObjectFromLongLongForValue.exit

bb.m:                                             ; preds = %bb.k
  call void @decrRefCount(ptr noundef nonnull %0)
  %i.af = load i64, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !67
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !23
  %i.aj = and i32 %i.ai, 11
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.m
  %or.cond.i.i = icmp ult i64 %i.af, 10000
  br i1 %or.cond.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 896), i64 %i.af
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65
  br label %createStringObjectFromLongLongForValue.exit

bb.q:                                             ; preds = %bb.o
  %i.am = call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 272, ptr %i.am, align 8
  %i.ao = inttoptr i64 %i.af to ptr
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !20
  br label %createStringObjectFromLongLongForValue.exit

bb.r:                                             ; preds = %bb.n
  %i.ap = call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 272, ptr %i.ap, align 8
  %i.ar = inttoptr i64 %i.af to ptr
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !20
  br label %createStringObjectFromLongLongForValue.exit

bb.s:                                             ; preds = %sdslen.exit
  %i.as = icmp ult i64 %.0.i, 45
  br i1 %i.as, label %.thread, label %bb.z

.thread:                                          ; preds = %sdslen.exit.thread, %bb.k, %bb.s
  %i.at = phi i64 [ %.pre, %sdslen.exit.thread ], [ %.pre, %bb.k ], [ %i.e, %bb.s ]
  %i.au = and i64 %i.at, 240
  %i.av = icmp eq i64 %i.au, 128
  br i1 %i.av, label %createStringObjectFromLongLongForValue.exit, label %bb.t

bb.t:                                             ; preds = %.thread
  %.val.i35 = load i8, ptr %i.i, align 1, !tbaa !15 ; 2 uses
  %i.aw = and i8 %.val.i35, 7
  switch i8 %i.aw, label %sdslen.exit37 [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.ax = lshr i8 %.val.i35, 3
  %i.ay = zext nneg i8 %i.ax to i64
  br label %sdslen.exit37

bb.v:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %i.bb = zext i8 %i.ba to i64
  br label %sdslen.exit37

bb.w:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !16
  %i.be = zext i16 %i.bd to i64
  br label %sdslen.exit37

bb.x:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i32 %i.bg to i64
  br label %sdslen.exit37

bb.y:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !18
  br label %sdslen.exit37

sdslen.exit37:                                    ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i36 = phi i64 [ %i.bj, %bb.y ], [ %i.ay, %bb.u ], [ %i.bb, %bb.v ], [ %i.be, %bb.w ], [ %i.bh, %bb.x ], [ 0, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.bk = add i64 %.0.i36, 20
  %i.bl = call ptr @zmalloc_usable(i64 noundef %i.bk, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bo = add i64 %i.bn, -16
  %i.bp = call ptr @sdsnewplacement(ptr noundef nonnull %i.bm, i64 noundef %i.bo, i8 noundef signext 1, ptr noundef nonnull %i.d, i64 noundef %.0.i36) #13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @decrRefCount(ptr noundef nonnull %0)
  br label %createStringObjectFromLongLongForValue.exit

bb.z:                                             ; preds = %bb.s
  %.not33 = icmp eq i32 %1, 0
  br i1 %.not33, label %createStringObjectFromLongLongForValue.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @trimStringObjectIfNeeded(ptr noundef nonnull %0, i32 noundef 0)
  br label %createStringObjectFromLongLongForValue.exit

createStringObjectFromLongLongForValue.exit:      ; preds = %bb.r, %bb.q, %bb.p, %bb.z, %bb.aa, %sdslen.exit37, %.thread, %bb.d, %bb.c, %bb.l
  %.1 = phi ptr [ %0, %bb.c ], [ %0, %bb.l ], [ %0, %bb.z ], [ %0, %bb.d ], [ %0, %.thread ], [ %i.bl, %sdslen.exit37 ], [ %0, %bb.aa ], [ %i.ap, %bb.r ], [ %i.al, %bb.p ], [ %i.am, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret ptr %.1
}

declare i32 @string2l(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @tryObjectEncoding(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tryObjectEncodingEx(ptr noundef %0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @getObjectLength(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = and i32 %i.b, 15
  switch i32 %i.c, label %stringObjectLen.exit [
    i32 0, label %bb.b
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 6, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 15
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1030) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %1 = lshr exact i32 %i.b, 4
  %2 = and i32 %1, 15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  switch i32 %2, label %bb.k [
    i32 0, label %bb.e
    i32 8, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i.i = load i8, ptr %i.h, align 1, !tbaa !15 ; 2 uses
  %i.i = and i8 %.val.i.i, 7
  switch i8 %i.i, label %stringObjectLen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i8 %.val.i.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %stringObjectLen.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  br label %stringObjectLen.exit

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i16 %i.p to i64
  br label %stringObjectLen.exit

bb.i:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %stringObjectLen.exit

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !18
  br label %stringObjectLen.exit

bb.k:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.g to i64
  %i.x = tail call i32 @sdigits10(i64 noundef %i.w) #13
  %i.y = zext i32 %i.x to i64
  br label %stringObjectLen.exit

bb.l:                                             ; preds = %bb.a
  %i.z = tail call i64 @listTypeLength(ptr noundef nonnull %0) #13
  br label %stringObjectLen.exit

bb.m:                                             ; preds = %bb.a
  %i.aa = tail call i64 @setTypeSize(ptr noundef nonnull %0) #13
  br label %stringObjectLen.exit

bb.n:                                             ; preds = %bb.a
  %i.ab = tail call i64 @zsetLength(ptr noundef nonnull %0) #13
  br label %stringObjectLen.exit

bb.o:                                             ; preds = %bb.a
  %i.ac = tail call i64 @hashTypeLength(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %stringObjectLen.exit

bb.p:                                             ; preds = %bb.a
  %i.ad = tail call i64 @streamLength(ptr noundef nonnull %0) #13
  br label %stringObjectLen.exit

stringObjectLen.exit:                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.0 = phi i64 [ %i.ad, %bb.p ], [ 0, %bb.a ], [ %i.z, %bb.l ], [ %i.aa, %bb.m ], [ %i.ab, %bb.n ], [ %i.ac, %bb.o ], [ %i.y, %bb.k ], [ %i.v, %bb.j ], [ %i.k, %bb.f ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.t, %bb.i ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @stringObjectLen(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1030) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr exact i32 %1, 4
  %3 = and i32 %2, 15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 6 uses
  switch i32 %3, label %bb.j [
    i32 0, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !15 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !18
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %i.e to i64
  %i.v = tail call i32 @sdigits10(i64 noundef %i.u) #13
  %i.w = zext i32 %i.v to i64
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.j
  %.0 = phi i64 [ %i.w, %bb.j ], [ %i.t, %bb.i ], [ %i.i, %bb.e ], [ %i.l, %bb.f ], [ %i.o, %bb.g ], [ %i.r, %bb.h ], [ 0, %bb.d ]
  ret i64 %.0
}

declare i64 @listTypeLength(ptr noundef) local_unnamed_addr #2

declare i64 @setTypeSize(ptr noundef) local_unnamed_addr #2

declare i64 @zsetLength(ptr noundef) local_unnamed_addr #2

declare i64 @hashTypeLength(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @streamLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @getDecodedObject(ptr noundef captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15                         ; 2 uses
  switch i32 %i.f, label %bb.g [
    i32 0, label %bb.b
    i32 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = lshr i32 %i.d, 8
  %i.h = and i32 %i.g, 8388607                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 8388605
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %i.h, 8
  %i.k = add nuw nsw i32 %i.j, 256
  %i.l = zext nneg i32 %i.k to i64
  %i.m = and i64 %i.c, -2147483393
  %i.n = or disjoint i64 %i.m, %i.l
  store i64 %i.n, ptr %0, align 8
  br label %incrRefCount.exit

bb.d:                                             ; preds = %bb.b
  switch i32 %i.h, label %bb.f [
    i32 8388607, label %incrRefCount.exit
    i32 8388606, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 596, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 598, ptr noundef nonnull @.str.11) #13
  tail call void @abort() #14
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.o = and i64 %i.c, 15
  %i.p = icmp eq i64 %i.o, 0
  %i.q = icmp eq i32 %i.f, 1
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef %i.t) #13 ; 0 uses
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16 ; 4 uses
  %i.w = icmp ult i64 %i.v, 45
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.x = add nuw nsw i64 %i.v, 20
  %i.y = call ptr @zmalloc_usable(i64 noundef %i.x, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ab = add i64 %i.aa, -16
  %i.ac = call ptr @sdsnewplacement(ptr noundef nonnull %i.z, i64 noundef %i.ab, i8 noundef signext 1, ptr noundef nonnull %i.b, i64 noundef %i.v) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %createStringObject.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = call ptr @sdsnewlen(ptr noundef nonnull %i.b, i64 noundef %i.v) #13
  %i.af = call noalias noundef dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !20
  store i64 256, ptr %i.af, align 8
  br label %createStringObject.exit

createStringObject.exit:                          ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.y, %bb.i ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %incrRefCount.exit

bb.k:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 952, ptr noundef nonnull @.str.21) #13
  tail call void @abort() #14
  unreachable

incrRefCount.exit:                                ; preds = %bb.d, %bb.c, %createStringObject.exit
  %.0 = phi ptr [ %.0.i, %createStringObject.exit ], [ %0, %bb.c ], [ %0, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @compareStringObjectsWithFlags(ptr noundef %0, ptr noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = and i64 %i.c, 15
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8                ; 7 uses
  %i.g = and i64 %i.f, 15
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %.critedge, !prof !13

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 968) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = trunc i64 %i.c to i32
  %4 = lshr exact i32 %3, 4
  %5 = and i32 %4, 15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 12 uses
  switch i32 %5, label %bb.k [
    i32 0, label %bb.e
    i32 8, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %.val.i = load i8, ptr %i.l, align 1, !tbaa !15 ; 2 uses
  %i.m = and i8 %.val.i, 7
  switch i8 %i.m, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %.val.i, 3
  %i.o = zext nneg i8 %i.n to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -5
  %i.t = load i16, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i16 %i.t to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 -9
  %i.w = load i32, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i32 %i.w to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 -17
  %i.z = load i64, ptr %i.y, align 1, !tbaa !18
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.k to i64
  %i.ab = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef %i.aa) #13
  %i.ac = sext i32 %i.ab to i64
  %.pre = load i64, ptr %1, align 8
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.k
  %i.ad = phi i64 [ %.pre, %bb.k ], [ %i.f, %bb.j ], [ %i.f, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %bb.i ], [ %i.f, %bb.e ]
  %.031 = phi i64 [ %i.ac, %bb.k ], [ %i.z, %bb.j ], [ %i.o, %bb.f ], [ %i.r, %bb.g ], [ %i.u, %bb.h ], [ %i.x, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %.029 = phi ptr [ %i.a, %bb.k ], [ %i.k, %bb.j ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %i.k, %bb.e ] ; 2 uses
  %6 = trunc i64 %i.ad to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 12 uses
  switch i32 %8, label %bb.r [
    i32 0, label %bb.l
    i32 8, label %bb.l
  ]

bb.l:                                             ; preds = %sdslen.exit, %sdslen.exit
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %.val.i38 = load i8, ptr %i.ag, align 1, !tbaa !15 ; 2 uses
  %i.ah = and i8 %.val.i38, 7
  switch i8 %i.ah, label %sdslen.exit40 [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.ai = lshr i8 %.val.i38, 3
  %i.aj = zext nneg i8 %i.ai to i64
  br label %sdslen.exit40

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = zext i8 %i.al to i64
  br label %sdslen.exit40

bb.o:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 -5
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i16 %i.ao to i64
  br label %sdslen.exit40

bb.p:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 -9
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i32 %i.ar to i64
  br label %sdslen.exit40

bb.q:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds i8, ptr %i.af, i64 -17
  %i.au = load i64, ptr %i.at, align 1, !tbaa !18
  br label %sdslen.exit40

bb.r:                                             ; preds = %sdslen.exit
  %i.av = ptrtoint ptr %i.af to i64
  %i.aw = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 128, i64 noundef %i.av) #13
  %i.ax = sext i32 %i.aw to i64
  br label %sdslen.exit40

sdslen.exit40:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.r
  %.032 = phi ptr [ %i.b, %bb.r ], [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.af, %bb.n ], [ %i.af, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.q ] ; 2 uses
  %.030 = phi i64 [ %i.ax, %bb.r ], [ 0, %bb.l ], [ %i.aj, %bb.m ], [ %i.am, %bb.n ], [ %i.ap, %bb.o ], [ %i.as, %bb.p ], [ %i.au, %bb.q ] ; 2 uses
  %i.ay = and i32 %2, 2
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %sdslen.exit40
  %i.az = call i32 @strcoll(ptr noundef nonnull %.029, ptr noundef nonnull %.032) #16
  br label %bb.u

bb.t:                                             ; preds = %sdslen.exit40
  %i.ba = call i64 @llvm.umin.i64(i64 %.031, i64 %.030)
  %i.bb = call i32 @memcmp(ptr noundef nonnull %.029, ptr noundef nonnull %.032, i64 noundef %i.ba) #16 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = sub i64 %.031, %.030
  %i.be = trunc i64 %i.bd to i32
  %.0 = select i1 %i.bc, i32 %i.be, i32 %i.bb
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.t, %bb.s
  %.1 = phi i32 [ %.0, %bb.t ], [ %i.az, %bb.s ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @compareStringObjects(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @compareStringObjectsWithFlags(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @collateStringObjects(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @compareStringObjectsWithFlags(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @equalStringObjects(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8
  %i.e = and i64 %i.d, 240
  %i.f = icmp eq i64 %i.e, 16
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = icmp eq ptr %i.h, %i.j
  br label %bb.r

bb.d:                                             ; preds = %bb.b, %bb.a
  %2 = trunc i64 %i.a to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.q [
    i32 0, label %bb.e
    i32 8, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = load i64, ptr %1, align 8
  %5 = trunc i64 %i.l to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.q [
    i32 0, label %bb.f
    i32 8, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %.val.i = load i8, ptr %i.o, align 1, !tbaa !15 ; 2 uses
  %i.p = and i8 %.val.i, 7
  switch i8 %i.p, label %sdslen.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = lshr i8 %.val.i, 3
  %i.r = zext nneg i8 %i.q to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  %i.u = zext i8 %i.t to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 -5
  %i.w = load i16, ptr %i.v, align 1, !tbaa !16
  %i.x = zext i16 %i.w to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -9
  %i.z = load i32, ptr %i.y, align 1, !tbaa !9
  %i.aa = zext i32 %i.z to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.n, i64 -17
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i64 [ %i.ac, %bb.k ], [ %i.r, %bb.g ], [ %i.u, %bb.h ], [ %i.x, %bb.i ], [ %i.aa, %bb.j ], [ 0, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 5 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %.val.i14 = load i8, ptr %i.af, align 1, !tbaa !15 ; 2 uses
  %i.ag = and i8 %.val.i14, 7
  switch i8 %i.ag, label %sdslen.exit16 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %sdslen.exit
  %i.ah = lshr i8 %.val.i14, 3
  %i.ai = zext nneg i8 %i.ah to i64
  br label %sdslen.exit16

bb.m:                                             ; preds = %sdslen.exit
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = zext i8 %i.ak to i64
  br label %sdslen.exit16

bb.n:                                             ; preds = %sdslen.exit
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -5
  %i.an = load i16, ptr %i.am, align 1, !tbaa !16
  %i.ao = zext i16 %i.an to i64
  br label %sdslen.exit16

bb.o:                                             ; preds = %sdslen.exit
  %i.ap = getelementptr inbounds i8, ptr %i.ae, i64 -9
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i32 %i.aq to i64
  br label %sdslen.exit16

bb.p:                                             ; preds = %sdslen.exit
  %i.as = getelementptr inbounds i8, ptr %i.ae, i64 -17
  %i.at = load i64, ptr %i.as, align 1, !tbaa !18
  br label %sdslen.exit16

sdslen.exit16:                                    ; preds = %sdslen.exit, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i15 = phi i64 [ %i.at, %bb.p ], [ %i.ai, %bb.l ], [ %i.al, %bb.m ], [ %i.ao, %bb.n ], [ %i.ar, %bb.o ], [ 0, %sdslen.exit ]
  %.not = icmp eq i64 %.0.i, %.0.i15
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.e, %bb.d, %sdslen.exit16
  %i.au = tail call i32 @compareStringObjectsWithFlags(ptr noundef nonnull %0, ptr noundef readonly %1, i32 noundef 1)
  %i.av = icmp eq i32 %i.au, 0
  br label %bb.r

bb.r:                                             ; preds = %sdslen.exit16, %bb.q, %bb.c
  %.0.shrunk = phi i1 [ %i.k, %bb.c ], [ %i.av, %bb.q ], [ false, %sdslen.exit16 ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

declare i32 @sdigits10(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @stringObjectAllocSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1039) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr exact i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.j [
    i32 1, label %sdsAllocSize.exit
    i32 0, label %bb.d
    i32 8, label %sdsAllocSize.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !15 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdsAllocSize.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.h, 2
  %i.i = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = zext i8 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 4
  br label %sdsAllocSize.exit

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.o = load i16, ptr %i.n, align 1, !tbaa !16
  %i.p = zext i16 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 6
  br label %sdsAllocSize.exit

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 10
  br label %sdsAllocSize.exit

bb.i:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.w = load i64, ptr %i.v, align 1, !tbaa !18
  %i.x = add i64 %i.w, 18
  br label %sdsAllocSize.exit

bb.j:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1049, ptr noundef nonnull @.str.23) #13
  tail call void @abort() #14
  unreachable

sdsAllocSize.exit:                                ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.c ], [ %i.x, %bb.i ], [ %i.i, %bb.e ], [ %i.m, %bb.f ], [ %i.q, %bb.g ], [ %i.u, %bb.h ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getDoubleFromObject(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = and i64 %i.c, 15
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1059) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %2 = trunc i64 %i.c to i32
  %3 = lshr exact i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.l [
    i32 0, label %bb.e
    i32 8, label %bb.e
    i32 1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !15 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.v, %bb.j ], [ %i.k, %bb.f ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.t, %bb.i ], [ 0, %bb.e ]
  %i.w = call i32 @string2d(ptr noundef nonnull %i.g, i64 noundef %.0.i, ptr noundef nonnull %i.a) #13
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.n, label %sdslen.exit._crit_edge

sdslen.exit._crit_edge:                           ; preds = %sdslen.exit
  %.pre = load double, ptr %i.a, align 8, !tbaa !120
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sitofp i64 %i.z to double
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1066, ptr noundef nonnull @.str.23) #13
  tail call void @abort() #14
  unreachable

bb.m:                                             ; preds = %bb.a, %sdslen.exit._crit_edge, %bb.k
  %i.ab = phi double [ %.pre, %sdslen.exit._crit_edge ], [ %i.aa, %bb.k ], [ 0.000000e+00, %bb.a ]
  store double %i.ab, ptr %1, align 8, !tbaa !120
  br label %bb.n

bb.n:                                             ; preds = %sdslen.exit, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ -1, %sdslen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare i32 @string2d(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getDoubleFromObjectOrReply(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @getDoubleFromObject(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %3, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.24) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.c = load double, ptr %i.a, align 8, !tbaa !120
  store double %i.c, ptr %2, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getLongDoubleFromObject(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = and i64 %i.c, 15
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1093) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %2 = trunc i64 %i.c to i32
  %3 = lshr exact i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.l [
    i32 0, label %bb.e
    i32 8, label %bb.e
    i32 1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !15 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.v, %bb.j ], [ %i.k, %bb.f ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.t, %bb.i ], [ 0, %bb.e ]
  %i.w = call i32 @string2ld(ptr noundef nonnull %i.g, i64 noundef %.0.i, ptr noundef nonnull %i.a) #13
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.n, label %sdslen.exit._crit_edge

sdslen.exit._crit_edge:                           ; preds = %sdslen.exit
  %.pre = load x86_fp80, ptr %i.a, align 16, !tbaa !121
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sitofp i64 %i.z to x86_fp80
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1100, ptr noundef nonnull @.str.23) #13
  tail call void @abort() #14
  unreachable

bb.m:                                             ; preds = %bb.a, %sdslen.exit._crit_edge, %bb.k
  %i.ab = phi x86_fp80 [ %.pre, %sdslen.exit._crit_edge ], [ %i.aa, %bb.k ], [ 0.000000e+00, %bb.a ]
  store x86_fp80 %i.ab, ptr %1, align 16, !tbaa !121
  br label %bb.n

bb.n:                                             ; preds = %sdslen.exit, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ -1, %sdslen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare i32 @string2ld(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getLongDoubleFromObjectOrReply(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @getLongDoubleFromObject(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %3, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.24) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.c = load x86_fp80, ptr %i.a, align 16, !tbaa !121
  store x86_fp80 %i.c, ptr %2, align 16, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getLongLongFromObject(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = and i64 %i.c, 15
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1127) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %2 = trunc i64 %i.c to i32
  %3 = lshr exact i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.l [
    i32 0, label %bb.e
    i32 8, label %bb.e
    i32 1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !15 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.v, %bb.j ], [ %i.k, %bb.f ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.t, %bb.i ], [ 0, %bb.e ]
  %i.w = call i32 @string2ll(ptr noundef nonnull %i.g, i64 noundef %.0.i, ptr noundef nonnull %i.a) #13
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = ptrtoint ptr %i.z to i64
  br label %.sink.split

bb.l:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1133, ptr noundef nonnull @.str.23) #13
  tail call void @abort() #14
  unreachable

.sink.split:                                      ; preds = %bb.a, %bb.k
  %.sink = phi i64 [ %i.aa, %bb.k ], [ 0, %bb.a ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !104
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %sdslen.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.ab, ptr %1, align 8, !tbaa !104
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %sdslen.exit
  %.0 = phi i32 [ -1, %sdslen.exit ], [ 0, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @getLongLongFromObject(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %3, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.25) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.c, ptr %2, align 8, !tbaa !104
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getLongFromObjectOrReply(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @getLongLongFromObject(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %getLongLongFromObjectOrReply.exit.thread

getLongLongFromObjectOrReply.exit.thread:         ; preds = %bb.a
  %.not7.i = icmp eq ptr %3, null
  %.str.25. = select i1 %.not7.i, ptr @.str.25, ptr %3
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull %.str.25.) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store i64 %i.c, ptr %2, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %getLongLongFromObjectOrReply.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %getLongLongFromObjectOrReply.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getRangeLongFromObjectOrReply(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @getLongLongFromObject(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %getLongFromObjectOrReply.exit

getLongFromObjectOrReply.exit:                    ; preds = %bb.a
  %.not7.i.i = icmp eq ptr %5, null
  %.str.25..i = select i1 %.not7.i.i, ptr @.str.25, ptr %5
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull %.str.25..i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store i64 %i.c, ptr %4, align 8, !tbaa !18
  %i.d = icmp slt i64 %i.c, %2
  %i.e = icmp sgt i64 %i.c, %3
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not16 = icmp eq ptr %5, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef %2, i64 noundef %3) #13
  br label %bb.f

bb.f:                                             ; preds = %getLongFromObjectOrReply.exit, %bb.b, %bb.d, %bb.e
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %getLongFromObjectOrReply.exit ], [ -1, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getPositiveLongFromObjectOrReply(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = call i32 @getLongLongFromObject(ptr noundef %1, ptr noundef nonnull %i.b)
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %getLongFromObjectOrReply.exit.i

getLongFromObjectOrReply.exit.i:                  ; preds = %bb.b
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull %3) #13
end_hunk_1
begin_hunk_2_@getMemoryDoctorReport:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.6 = phi ptr [ %i.ce, %bb.ab ], [ %.5, %bb.aa ] ; 2 uses
  br i1 %i.bs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = tail call ptr @sdscat(ptr noundef %.6, ptr noundef nonnull @.str.51) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.7 = phi ptr [ %i.cf, %bb.ad ], [ %.6, %bb.ac ]
  %i.cg = tail call ptr @sdscat(ptr noundef %.7, ptr noundef nonnull @.str.52) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.n, %bb.ae, %bb.m
  %.8 = phi ptr [ %i.bv, %bb.m ], [ %i.bw, %bb.n ], [ %i.cg, %bb.ae ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !124
  tail call void @zfree(ptr noundef %i.ci) #13
  tail call void @zfree(ptr noundef nonnull %i.a) #13
  ret ptr %.8
}

declare ptr @evalScriptsDict() local_unnamed_addr #2

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #2

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @objectSetLRUOrLFU(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !23
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %1, -1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 256
  br i1 %i.d, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 1542) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @LFUGetTimeInMinutes() #13
  %i.f = shl i64 %i.e, 48
  %i.g = shl nuw nsw i64 %1, 40
  %i.h = or disjoint i64 %i.f, %i.g
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.i = icmp sgt i64 %2, -1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = sext i32 %4 to i64
  %i.k = mul nsw i64 %2, %i.j
  %.neg = sdiv i64 %i.k, -1000
  %i.l = add i64 %.neg, %3                        ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  %i.n = shl i64 %i.l, 40                         ; 2 uses
  %i.o = add i64 %i.n, -1099511627776
  %i.p = select i1 %i.m, i64 %i.o, i64 %i.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sink19 = phi i64 [ %i.p, %bb.g ], [ %i.h, %bb.e ]
  %.sink = load i64, ptr %0, align 8
  %i.q = and i64 %.sink, 1099511627775
  %i.r = or disjoint i64 %i.q, %.sink19
  store i64 %i.r, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b, %bb.f
  %.013 = phi i32 [ 0, %bb.f ], [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define dso_local ptr @kvobjCommandLookup(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.c = tail call ptr @lookupKeyReadWithFlags(ptr noundef %i.b, ptr noundef %1, i32 noundef 3) #13
  ret ptr %i.c
}

declare ptr @lookupKeyReadWithFlags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @kvobjCommandLookupOrReply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.c = tail call ptr @lookupKeyReadWithFlags(ptr noundef %i.b, ptr noundef %1, i32 noundef 3) #13 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

declare void @addReplyOrErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @objectCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x ptr], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !195  ; 2 uses
  %i.d = icmp eq i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 5 uses
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.54) #16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, ptr noundef nonnull align 16 dereferenceable(104) @__const.objectCommand.help, i64 104, i1 false)
  call void @addReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.p

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.l = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.67) #16
  %.not37 = icmp eq i32 %i.l, 0
  %i.m = icmp eq i32 %i.c, 3                      ; 4 uses
  %or.cond = and i1 %i.m, %.not37
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !197
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !194
  %i.w = tail call ptr @lookupKeyReadWithFlags(ptr noundef %i.v, ptr noundef %i.o, i32 noundef 3) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %kvobjCommandLookupOrReply.exit.thread, label %kvobjCommandLookupOrReply.exit

kvobjCommandLookupOrReply.exit.thread:            ; preds = %bb.d
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %i.t) #13
  br label %bb.p

kvobjCommandLookupOrReply.exit:                   ; preds = %bb.d
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 8
  %i.z = and i64 %i.y, 8388607
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.z) #13
  br label %bb.p

bb.e:                                             ; preds = %._crit_edge
  %i.aa = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.68) #16
  %.not38 = icmp eq i32 %i.aa, 0
  %or.cond49 = and i1 %i.m, %.not38
  br i1 %or.cond49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !197
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !194
  %i.ak = tail call ptr @lookupKeyReadWithFlags(ptr noundef %i.aj, ptr noundef %i.ac, i32 noundef 3) #13 ; 2 uses
  %.not.i43 = icmp eq ptr %i.ak, null
  br i1 %.not.i43, label %kvobjCommandLookupOrReply.exit44.thread, label %kvobjCommandLookupOrReply.exit44

kvobjCommandLookupOrReply.exit44.thread:          ; preds = %bb.f
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %i.ah) #13
  br label %bb.p

kvobjCommandLookupOrReply.exit44:                 ; preds = %bb.f
  %i.al = load i64, ptr %i.ak, align 8
  %1 = trunc i64 %i.al to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15                             ; 2 uses
  %i.am = icmp samesign ult i32 %3, 13
  br i1 %i.am, label %switch.lookup, label %strEncoding.exit

switch.lookup:                                    ; preds = %kvobjCommandLookupOrReply.exit44
  %4 = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.objectCommand, i64 %4
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %strEncoding.exit

strEncoding.exit:                                 ; preds = %kvobjCommandLookupOrReply.exit44, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.39, %kvobjCommandLookupOrReply.exit44 ]
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull %.0.i) #13
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.an = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.69) #16
  %.not39 = icmp eq i32 %i.an, 0
  %or.cond50 = and i1 %i.m, %.not39
  br i1 %or.cond50, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !197
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !194
  %i.ax = tail call ptr @lookupKeyReadWithFlags(ptr noundef %i.aw, ptr noundef %i.ap, i32 noundef 3) #13 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ax, null
  br i1 %.not.i45, label %kvobjCommandLookupOrReply.exit46.thread, label %kvobjCommandLookupOrReply.exit46

kvobjCommandLookupOrReply.exit46.thread:          ; preds = %bb.h
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %i.au) #13
  br label %bb.p

kvobjCommandLookupOrReply.exit46:                 ; preds = %bb.h
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !23
  %i.az = and i32 %i.ay, 2
  %.not40 = icmp eq i32 %i.az, 0
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %kvobjCommandLookupOrReply.exit46
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #13
  br label %bb.p

bb.j:                                             ; preds = %kvobjCommandLookupOrReply.exit46
  %i.ba = tail call i64 @estimateObjectIdleTime(ptr noundef nonnull %i.ax) #13
  %i.bb = udiv i64 %i.ba, 1000
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bb) #13
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  %i.bc = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.71) #16
  %.not41 = icmp eq i32 %i.bc, 0
  %or.cond51 = and i1 %i.m, %.not41
  br i1 %or.cond51, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !197
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !194
  %i.bm = tail call ptr @lookupKeyReadWithFlags(ptr noundef %i.bl, ptr noundef %i.be, i32 noundef 3) #13 ; 2 uses
  %.not.i47 = icmp eq ptr %i.bm, null
  br i1 %.not.i47, label %kvobjCommandLookupOrReply.exit48.thread, label %kvobjCommandLookupOrReply.exit48

kvobjCommandLookupOrReply.exit48.thread:          ; preds = %bb.l
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %i.bj) #13
  br label %bb.p

kvobjCommandLookupOrReply.exit48:                 ; preds = %bb.l
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !23
  %i.bo = and i32 %i.bn, 2
  %.not42 = icmp eq i32 %i.bo, 0
  br i1 %.not42, label %bb.m, label %bb.n

bb.m:                                             ; preds = %kvobjCommandLookupOrReply.exit48
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #13
  br label %bb.p

bb.n:                                             ; preds = %kvobjCommandLookupOrReply.exit48
  %i.bp = tail call i64 @LFUDecrAndReturn(ptr noundef nonnull %i.bm) #13
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bp) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #13
  br label %bb.p

bb.p:                                             ; preds = %kvobjCommandLookupOrReply.exit48.thread, %kvobjCommandLookupOrReply.exit46.thread, %kvobjCommandLookupOrReply.exit44.thread, %kvobjCommandLookupOrReply.exit.thread, %bb.c, %strEncoding.exit, %bb.n, %bb.o, %bb.j, %kvobjCommandLookupOrReply.exit, %bb.m, %bb.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @addReplyHelp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @estimateObjectIdleTime(ptr noundef) local_unnamed_addr #2

declare i64 @LFUDecrAndReturn(ptr noundef) local_unnamed_addr #2

declare void @addReplySubcommandSyntaxError(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @memoryCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [12 x ptr], align 16              ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 6 uses
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.54) #16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !195
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) @__const.memoryCommand.help, i64 96, i1 false)
  call void @addReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.aq

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.84) #16
  %.not161 = icmp eq i32 %i.o, 0
  br i1 %.not161, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !195  ; 3 uses
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.e
  %.not163181.not = icmp eq i32 %i.q, 3
  br i1 %.not163181.not, label %.critedge, label %.lr.ph183

.lr.ph183:                                        ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 3, %.preheader ] ; 3 uses
  %i.s = phi i32 [ %i.ai, %bb.j ], [ %i.q, %.preheader ]
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !196  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = call i32 @strcasecmp(ptr noundef %i.x, ptr noundef nonnull @.str.85) #16
  %.not162 = icmp eq i32 %i.y, 0
  br i1 %.not162, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph183
  %i.z = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.aa = sext i32 %i.s to i64
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.z
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ae = call i32 @getLongLongFromObject(ptr noundef %i.ad, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.h, label %getLongLongFromObjectOrReply.exit.thread

getLongLongFromObjectOrReply.exit.thread:         ; preds = %bb.g
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.aq

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.a, align 8, !tbaa !104 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !198
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ah) #13
  br label %bb.aq

end_hunk_2
