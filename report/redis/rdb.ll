inline.NumInlined: 264
inline.NumDeleted: 16
begin_hunk_0_@rdbLoadCheckModuleValue:bb.a
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 1939, ptr noundef nonnull @.str.52, ptr noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @decrRefCount(ptr noundef %i.n) #20
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.p = load i64, ptr %i.h, align 8, !tbaa !65
  %i.q = and i64 %i.p, 1
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.n

.preheader.i.i:                                   ; preds = %bb.j, %bb.m
  %.02538.i.i = phi i64 [ %i.ab, %bb.m ], [ 4, %bb.j ] ; 3 uses
  %.02737.i.i = phi ptr [ %i.aa, %bb.m ], [ %i.c, %bb.j ] ; 3 uses
  %i.r = load i64, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i.i = icmp eq i64 %i.r, 0
  %i.s = call i64 @llvm.umin.i64(i64 %i.r, i64 %.02538.i.i)
  %i.t = select i1 %.not32.not.i.i, i64 %.02538.i.i, i64 %i.s ; 5 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !74
  %i.v = call i64 %i.u(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.t) #20, !inline_history !222
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.thread.i.i, label %bb.k

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.x = load i64, ptr %i.h, align 8, !tbaa !65
  %i.y = or i64 %i.x, 1
  store i64 %i.y, ptr %i.h, align 8, !tbaa !65
  br label %bb.n

bb.k:                                             ; preds = %.preheader.i.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.z, null
  br i1 %.not33.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void %i.z(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.t) #20, !inline_history !222
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 %i.t
  %i.ab = sub i64 %.02538.i.i, %i.t               ; 2 uses
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !71
  %i.ad = add i64 %i.ac, %i.t
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !71
  %.not31.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not31.i.i, label %rdbLoadBinaryFloatValue.exit, label %.preheader.i.i

bb.n:                                             ; preds = %.thread.i.i, %bb.j
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 1946, ptr noundef nonnull @.str.53, ptr noundef %1)
  br label %rdbLoadBinaryFloatValue.exit

rdbLoadBinaryFloatValue.exit:                     ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !65
  %i.af = and i64 %i.ae, 1
  %.not.i.i16 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i16, label %.preheader.i.i17, label %bb.s

.preheader.i.i17:                                 ; preds = %bb.o, %bb.r
  %.02538.i.i18 = phi i64 [ %i.aq, %bb.r ], [ 8, %bb.o ] ; 3 uses
  %.02737.i.i19 = phi ptr [ %i.ap, %bb.r ], [ %i.d, %bb.o ] ; 3 uses
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %.not32.not.i.i20 = icmp eq i64 %i.ag, 0
  %i.ah = call i64 @llvm.umin.i64(i64 %i.ag, i64 %.02538.i.i18)
  %i.ai = select i1 %.not32.not.i.i20, i64 %.02538.i.i18, i64 %i.ah ; 5 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !74
  %i.ak = call i64 %i.aj(ptr noundef nonnull %0, ptr noundef %.02737.i.i19, i64 noundef %i.ai) #20, !inline_history !223
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.thread.i.i23, label %bb.p

.thread.i.i23:                                    ; preds = %.preheader.i.i17
  %i.am = load i64, ptr %i.h, align 8, !tbaa !65
  %i.an = or i64 %i.am, 1
  store i64 %i.an, ptr %i.h, align 8, !tbaa !65
  br label %bb.s

bb.p:                                             ; preds = %.preheader.i.i17
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !68  ; 2 uses
  %.not33.i.i21 = icmp eq ptr %i.ao, null
  br i1 %.not33.i.i21, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void %i.ao(ptr noundef nonnull %0, ptr noundef %.02737.i.i19, i64 noundef %i.ai) #20, !inline_history !223
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %.02737.i.i19, i64 %i.ai
  %i.aq = sub i64 %.02538.i.i18, %i.ai            ; 2 uses
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !71
  %i.as = add i64 %i.ar, %i.ai
  store i64 %i.as, ptr %i.k, align 8, !tbaa !71
  %.not31.i.i22 = icmp eq i64 %i.aq, 0
  br i1 %.not31.i.i22, label %rdbLoadBinaryDoubleValue.exit, label %.preheader.i.i17

bb.s:                                             ; preds = %.thread.i.i23, %bb.o
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 1952, ptr noundef nonnull @.str.54, ptr noundef %1)
  br label %rdbLoadBinaryDoubleValue.exit

rdbLoadBinaryDoubleValue.exit:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.i, %rdbLoadBinaryDoubleValue.exit, %rdbLoadBinaryFloatValue.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.at = call i32 @rdbLoadLenByRef(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a)
  %i.au = icmp eq i32 %i.at, -1
  %i.av = load i64, ptr %i.a, align 8
  %.0.i = select i1 %i.au, i64 -1, i64 %i.av      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !224

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.aw = call ptr @createStringObject(ptr noundef nonnull @.str.55, i64 noundef 18) #20
  ret ptr %i.aw
}

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbResolveKeyType(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !9      ; 3 uses
  %i.d = icmp eq i32 %i.c, 243
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.e = call i32 @rdbLoadLenByRef(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.b)
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load i64, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.h = icmp eq i64 %i.g, -1
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.g to i32
  %i.k = tail call i32 @rdbLoadKeyMetadata(ptr noundef %0, i32 noundef %2, i32 noundef %i.j, ptr noundef %3) #20
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !65
  %i.o = and i64 %i.n, 1
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.e, label %rdbLoadType.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !74
  %i.r = call i64 %i.q(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !225
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  %i.t = load i64, ptr %i.m, align 8, !tbaa !65
  %i.u = or i64 %i.t, 1
  store i64 %i.u, ptr %i.m, align 8, !tbaa !65
  br label %rdbLoadType.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not33.i.i.i, label %rdbLoadType.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.w(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !225
  br label %rdbLoadType.exit.i

rdbLoadType.exit.thread.i:                        ; preds = %.thread.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

rdbLoadType.exit.i:                               ; preds = %bb.g, %bb.f
  %i.x = load i64, ptr %i.p, align 8, !tbaa !71
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.p, align 8, !tbaa !71
  %i.z = load i8, ptr %i.a, align 1               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %or.cond.i = icmp ult i8 %i.z, 8
  %i.aa = add i8 %i.z, -9
  %or.cond3.i = icmp ult i8 %i.aa, 18
  %or.cond10.i = or i1 %or.cond.i, %or.cond3.i
  br i1 %or.cond10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rdbLoadType.exit.thread.i, %rdbLoadType.exit.i
  store i32 -1, ptr %1, align 4, !tbaa !9
  call void @keyMetaSpecCleanup(ptr noundef %3) #20
  br label %.thread

bb.i:                                             ; preds = %rdbLoadType.exit.i
  %i.ab = zext nneg i8 %i.z to i32
  store i32 %i.ab, ptr %1, align 4, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %or.cond = icmp ult i32 %i.c, 8
  %i.ac = add i32 %i.c, -9
  %or.cond19 = icmp ult i32 %i.ac, 18
  %or.cond23 = or i1 %or.cond, %or.cond19
  br i1 %or.cond23, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.i, %bb.j
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.h, %bb.b, %bb.c, %bb.k
  %.1 = phi i32 [ 0, %bb.k ], [ -1, %bb.j ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.h ]
  ret i32 %.1
}

declare i32 @rdbLoadKeyMetadata(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @keyMetaSpecCleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @ziplistPairsConvertAndValidateIntegrity(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.anon.5, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.b, align 8, !tbaa !226
  %i.c = call i32 @ziplistValidateIntegrity(ptr noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef nonnull @_ziplistPairsEntryConvertAndValidate, ptr noundef nonnull %3) #20
  %i.d = load i64, ptr %3, align 8, !tbaa !228
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @dictRelease(ptr noundef nonnull %i.e) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = and i64 %i.d, 1
  %.not = icmp eq i64 %i.f, 0
  %spec.store.select = select i1 %.not, i32 %i.c, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %spec.store.select
}

declare i32 @ziplistValidateIntegrity(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ziplistPairsEntryConvertAndValidate(ptr noundef %0, i32 noundef %1, ptr noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @dictCreate(ptr noundef nonnull @hashDictType) #20 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !229
  %i.h = lshr i32 %1, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = tail call i32 @dictExpand(ptr noundef %i.g, i64 noundef %i.i) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = call i32 @ziplistGet(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #20
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %2, align 8, !tbaa !228
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not18 = icmp eq ptr %i.o, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.b, align 4, !tbaa !9
  %i.q = zext i32 %i.p to i64
  %i.r = call ptr @sdsnewlen(ptr noundef nonnull %i.o, i64 noundef %i.q) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !79
  %i.t = call ptr @sdsfromlonglong(i64 noundef %i.s) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.r, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.w = call i32 @dictAdd(ptr noundef %i.v, ptr noundef %i.u, ptr noundef null) #20
  %.not19 = icmp eq i32 %i.w, 0
  br i1 %.not19, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @sdsfree(ptr noundef %i.u) #20
  br label %bb.m

.critedge:                                        ; preds = %bb.h, %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not20 = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !226
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ac = call ptr @lpAppend(ptr noundef %i.aa, ptr noundef nonnull %i.x, i32 noundef %i.ab) #20
  br label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !79
  %i.ae = call ptr @lpAppendInteger(ptr noundef %i.aa, i64 noundef %i.ad) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi ptr [ %i.ae, %bb.k ], [ %i.ac, %bb.j ]
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !226
  store ptr %.sink, ptr %i.af, align 8, !tbaa !64
  %i.ag = load i64, ptr %2, align 8, !tbaa !228
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr %2, align 8, !tbaa !228
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.c, %bb.l
  %.1 = phi i32 [ 1, %bb.l ], [ 0, %bb.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.1
}

declare void @dictRelease(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lpValidateIntegrityAndDups(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.anon.6, align 8             ; 8 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @lpValidateIntegrity(ptr noundef %0, i64 noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 %3, ptr %4, align 8, !tbaa !230
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store i64 -1, ptr %i.e, align 8, !tbaa !232
  %i.f = call i32 @lpValidateIntegrity(ptr noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef nonnull @_lpEntryValidation, ptr noundef nonnull %4) #20
  %i.g = load i64, ptr %i.c, align 8, !tbaa !233
  %i.h = sext i32 %3 to i64
  %i.i = srem i64 %i.g, %i.h
  %.not9 = icmp eq i64 %i.i, 0
  %spec.store.select = select i1 %.not9, i32 %i.f, i32 0
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !234  ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @dictRelease(ptr noundef nonnull %i.j) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ %spec.store.select, %bb.e ], [ %i.a, %bb.b ]
  ret i32 %.0
}

declare i32 @lpValidateIntegrity(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_lpEntryValidation(ptr noundef %0, i32 noundef %1, ptr noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
end_hunk_0
begin_hunk_1_@rdbLoadObject:bb.a
  call void @sdsfree(ptr noundef nonnull %i.nb) #20
  %i.ng = load ptr, ptr %i.mz, align 8, !tbaa !82
  %i.nh = call i32 @dictAdd(ptr noundef %i.ng, ptr noundef %i.nf, ptr noundef null) #20
  %.not1293 = icmp eq i32 %i.nh, 1
  br i1 %.not1293, label %.thread1222, label %bb.dx

.thread1222:                                      ; preds = %bb.dw
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2518, ptr noundef nonnull @.str.61)
  call void @entryFree(ptr noundef %i.nf, ptr noundef null) #20
  call void @decrRefCount(ptr noundef nonnull %i.jk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #20
  br label %.critedge1104

bb.dx:                                            ; preds = %bb.dw
  %i.ni = load i64, ptr %i.aj, align 8, !tbaa !76
  %i.nj = load ptr, ptr %i.mz, align 8, !tbaa !82
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 56 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !76
  %i.nm = add i64 %i.nl, %i.ni
  store i64 %i.nm, ptr %i.nk, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #20
  %i.nn = load i64, ptr %i.jk, align 8
  %i.no = and i64 %i.nn, 240
  %i.np = icmp eq i64 %i.no, 32
  %i.nq = icmp ne i64 %i.na, 0
  %i.nr = select i1 %i.np, i1 %i.nq, i1 false
  br i1 %i.nr, label %bb.dt, label %._crit_edge1410, !llvm.loop !252

._crit_edge1410:                                  ; preds = %bb.dx, %bb.ds
  %.2889.lcssa = phi i64 [ %.1888, %bb.ds ], [ %i.na, %bb.dx ]
  %i.ns = icmp eq i64 %.2889.lcssa, 0
  br i1 %i.ns, label %.critedge1092, label %bb.dy, !prof !81

bb.dy:                                            ; preds = %._crit_edge1410
  call void @_serverAssert(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.12, i32 noundef 2527) #20
  call void @abort() #23
  unreachable

.critedge1077:                                    ; preds = %bb.dt, %bb.dv
  call void @decrRefCount(ptr noundef nonnull %i.jk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #20
  br label %.critedge1104

bb.dz:                                            ; preds = %bb.bj
  %i.nt = icmp eq i32 %0, 24                      ; 2 uses
  switch i32 %0, label %bb.gm [
    i32 24, label %bb.ea
    i32 22, label %bb.ea
  ]

bb.ea:                                            ; preds = %bb.dz, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #20
  br i1 %i.nt, label %bb.eb, label %bb.ej

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #20
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !65 ; 2 uses
  %i.nw = and i64 %i.nv, 1
  %.not.i.i1144 = icmp eq i64 %i.nw, 0
  br i1 %.not.i.i1144, label %.preheader.i.i1145, label %rdbLoadMillisecondTime.exit

.preheader.i.i1145:                               ; preds = %bb.eb
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ef, %.preheader.i.i1145
  %.02538.i.i1146 = phi i64 [ 8, %.preheader.i.i1145 ], [ %i.ok, %bb.ef ] ; 3 uses
  %.02737.i.i1147 = phi ptr [ %i.aa, %.preheader.i.i1145 ], [ %i.oj, %bb.ef ] ; 3 uses
  %i.oa = load i64, ptr %i.nx, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i1148 = icmp eq i64 %i.oa, 0
  %i.ob = call i64 @llvm.umin.i64(i64 %i.oa, i64 %.02538.i.i1146)
  %i.oc = select i1 %.not32.not.i.i1148, i64 %.02538.i.i1146, i64 %i.ob ; 5 uses
  %i.od = load ptr, ptr %1, align 8, !tbaa !74
  %i.oe = call i64 %i.od(ptr noundef nonnull %1, ptr noundef %.02737.i.i1147, i64 noundef %i.oc) #20, !inline_history !253
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %.thread.i.i1151, label %bb.ed

.thread.i.i1151:                                  ; preds = %bb.ec
  %i.og = load i64, ptr %i.nu, align 8, !tbaa !65
  %i.oh = or i64 %i.og, 1                         ; 2 uses
  store i64 %i.oh, ptr %i.nu, align 8, !tbaa !65
  br label %rdbLoadMillisecondTime.exit

bb.ed:                                            ; preds = %bb.ec
  %i.oi = load ptr, ptr %i.ny, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i1149 = icmp eq ptr %i.oi, null
  br i1 %.not33.i.i1149, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void %i.oi(ptr noundef nonnull %1, ptr noundef %.02737.i.i1147, i64 noundef %i.oc) #20, !inline_history !253
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.oj = getelementptr inbounds nuw i8, ptr %.02737.i.i1147, i64 %i.oc
  %i.ok = sub i64 %.02538.i.i1146, %i.oc          ; 2 uses
  %i.ol = load i64, ptr %i.nz, align 8, !tbaa !71
  %i.om = add i64 %i.ol, %i.oc
  store i64 %i.om, ptr %i.nz, align 8, !tbaa !71
  %.not31.i.i1150 = icmp eq i64 %i.ok, 0
  br i1 %.not31.i.i1150, label %rioRead.exit.i, label %bb.ec

rioRead.exit.i:                                   ; preds = %bb.ef
  %i.on = load i64, ptr %i.aa, align 8
  %.val1122.pre = load i64, ptr %i.nu, align 8, !tbaa !65
  br label %rdbLoadMillisecondTime.exit

rdbLoadMillisecondTime.exit:                      ; preds = %bb.eb, %.thread.i.i1151, %rioRead.exit.i
  %.val1122 = phi i64 [ %.val1122.pre, %rioRead.exit.i ], [ %i.nv, %bb.eb ], [ %i.oh, %.thread.i.i1151 ]
  %i.oo = phi i64 [ %i.on, %rioRead.exit.i ], [ 9223372036854775807, %bb.eb ], [ 9223372036854775807, %.thread.i.i1151 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #20
  %i.op = and i64 %.val1122, 1
  %.not1027 = icmp eq i64 %i.op, 0
  br i1 %.not1027, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %rdbLoadMillisecondTime.exit
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 0, i32 noundef 2544, ptr noundef nonnull @.str.63)
  br label %.thread1236

bb.eh:                                            ; preds = %rdbLoadMillisecondTime.exit
  %i.oq = icmp ugt i64 %i.oo, 281474976710656
  br i1 %i.oq, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2548, ptr noundef nonnull @.str.64)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei, %bb.ea
  %.0893 = phi i64 [ %i.oo, %bb.ei ], [ %i.oo, %bb.eh ], [ 281474976710656, %bb.ea ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #20
  %i.or = call i32 @rdbLoadLenByRef(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.z)
  %i.os = icmp eq i32 %i.or, -1
  %i.ot = load i64, ptr %i.z, align 8             ; 3 uses
  %.0.i1152 = select i1 %i.os, i64 -1, i64 %i.ot  ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #20
  switch i64 %.0.i1152, label %bb.ek [
    i64 -1, label %.thread1236
    i64 0, label %bb.gl
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.ou = call ptr @createHashObject() #20        ; 17 uses
  %i.ov = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7936), align 8, !tbaa !250
  %i.ow = icmp ugt i64 %.0.i1152, %i.ov
  br i1 %i.ow, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @hashTypeConvert(ptr noundef null, ptr noundef %i.ou, i32 noundef 2) #20
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  call void @dictTypeAddMeta(ptr noundef nonnull %i.ox, ptr noundef nonnull @entryHashDictTypeWithHFE) #20
  call void @initDictExpireMetadata(ptr noundef %i.ou) #20
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  call void @hashTypeConvert(ptr noundef null, ptr noundef %i.ou, i32 noundef 12) #20
  br i1 %.0817.in, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.oy = call ptr @dictCreate(ptr noundef nonnull @hashDictType) #20
  br label %bb.eo

bb.eo:                                            ; preds = %bb.em, %bb.en, %bb.el
  %.0894 = phi ptr [ null, %bb.el ], [ %i.oy, %bb.en ], [ null, %bb.em ] ; 10 uses
  %.not10281420 = icmp eq i64 %i.ot, 0
  br i1 %.not10281420, label %._crit_edge1424, label %.lr.ph1423

.lr.ph1423:                                       ; preds = %bb.eo
  %i.oz = add i64 %.0893, -1
  %.not1031 = icmp eq ptr %.0894, null            ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 3 uses
  %i.pb = icmp ugt i64 %.0.i1152, 4
  br label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1423, %bb.gj
  %.18141421 = phi i64 [ %i.ot, %.lr.ph1423 ], [ %i.pc, %bb.gj ]
  %i.pc = add i64 %.18141421, -1                  ; 2 uses
  %i.pd = call i32 @rdbLoadLenByRef(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.ak)
  %i.pe = icmp eq i32 %i.pd, -1
  br i1 %i.pe, label %bb.eq, label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.pf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.pg = icmp sgt i32 %i.pf, 3
  br i1 %i.pg, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.65) #20
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er
  call void @decrRefCount(ptr noundef %i.ou) #20
  br i1 %.not1031, label %.thread1236, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @dictRelease(ptr noundef nonnull %.0894) #20
  br label %.thread1236

bb.eu:                                            ; preds = %bb.ep
  %i.ph = load i64, ptr %i.ak, align 8, !tbaa !76 ; 3 uses
  br i1 %i.nt, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %.not1030 = icmp eq i64 %i.ph, 0
  %i.pi = add i64 %i.oz, %i.ph
  br i1 %.not1030, label %.thread1230, label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %.0892 = phi i64 [ %i.pi, %bb.ev ], [ %i.ph, %bb.eu ] ; 3 uses
  %i.pj = icmp ugt i64 %.0892, 281474976710655
  br i1 %i.pj, label %bb.ex, label %.thread1230

bb.ex:                                            ; preds = %bb.ew
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2598, ptr noundef nonnull @.str.66, i64 noundef %.0892)
  call void @decrRefCount(ptr noundef %i.ou) #20
  br i1 %.not1031, label %.thread1236, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @dictRelease(ptr noundef nonnull %.0894) #20
  br label %.thread1236

.thread1230:                                      ; preds = %bb.ev, %bb.ew
  %.08921232 = phi i64 [ %.0892, %bb.ew ], [ 0, %bb.ev ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #20
  %i.pk = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef null) ; 4 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %.thread1230
  %i.pm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.pn = icmp sgt i32 %i.pm, 3
  br i1 %i.pn, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.67) #20
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  call void @decrRefCount(ptr noundef %i.ou) #20
  br i1 %.not1031, label %.critedge1082, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @dictRelease(ptr noundef nonnull %.0894) #20
  br label %.critedge1082

bb.fd:                                            ; preds = %.thread1230
  %i.po = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef null) ; 2 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %bb.fe, label %bb.fj

bb.fe:                                            ; preds = %bb.fd
  %i.pq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.pr = icmp sgt i32 %i.pq, 3
  br i1 %i.pr, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.68) #20
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  call void @decrRefCount(ptr noundef %i.ou) #20
  br i1 %.not1031, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @dictRelease(ptr noundef nonnull %.0894) #20
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  call void @sdsfree(ptr noundef nonnull %i.pk) #20
  br label %.critedge1082

bb.fj:                                            ; preds = %bb.fd
  %i.ps = icmp ne i64 %.08921232, 0               ; 2 uses
  %i.pt = select i1 %i.ps, i32 6, i32 2
  %i.pu = call ptr @entryCreate(ptr noundef nonnull %i.pk, ptr noundef nonnull %i.po, i32 noundef %i.pt, ptr noundef nonnull %i.al) #20 ; 14 uses
  call void @sdsfree(ptr noundef nonnull %i.pk) #20
  %i.pv = getelementptr i8, ptr %i.pu, i64 -1
  %.val.i1153 = load i8, ptr %i.pv, align 1, !tbaa !72 ; 2 uses
  %i.pw = and i8 %.val.i1153, 7
  switch i8 %i.pw, label %sdslen.exit1155 [
    i8 0, label %bb.fk
    i8 1, label %bb.fl
    i8 2, label %bb.fm
    i8 3, label %bb.fn
    i8 4, label %bb.fo
  ]

bb.fk:                                            ; preds = %bb.fj
  %i.px = lshr i8 %.val.i1153, 3
  %i.py = zext nneg i8 %i.px to i64
  br label %sdslen.exit1155

bb.fl:                                            ; preds = %bb.fj
  %i.pz = getelementptr inbounds i8, ptr %i.pu, i64 -3
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !72
  %i.qb = zext i8 %i.qa to i64
  br label %sdslen.exit1155

bb.fm:                                            ; preds = %bb.fj
  %i.qc = getelementptr inbounds i8, ptr %i.pu, i64 -5
  %i.qd = load i16, ptr %i.qc, align 1, !tbaa !77
  %i.qe = zext i16 %i.qd to i64
  br label %sdslen.exit1155

bb.fn:                                            ; preds = %bb.fj
  %i.qf = getelementptr inbounds i8, ptr %i.pu, i64 -9
  %i.qg = load i32, ptr %i.qf, align 1, !tbaa !9
  %i.qh = zext i32 %i.qg to i64
  br label %sdslen.exit1155

bb.fo:                                            ; preds = %bb.fj
  %i.qi = getelementptr inbounds i8, ptr %i.pu, i64 -17
  %i.qj = load i64, ptr %i.qi, align 1, !tbaa !76
  br label %sdslen.exit1155

sdslen.exit1155:                                  ; preds = %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo
  %.0.i1154 = phi i64 [ %i.qj, %bb.fo ], [ %i.py, %bb.fk ], [ %i.qb, %bb.fl ], [ %i.qe, %bb.fm ], [ %i.qh, %bb.fn ], [ 0, %bb.fj ] ; 3 uses
  %i.qk = call ptr @entryGetValue(ptr noundef nonnull %i.pu) #20 ; 6 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 -1
  %.val.i1156 = load i8, ptr %i.ql, align 1, !tbaa !72 ; 2 uses
  %i.qm = and i8 %.val.i1156, 7
  switch i8 %i.qm, label %sdslen.exit1158 [
    i8 0, label %bb.fp
    i8 1, label %bb.fq
    i8 2, label %bb.fr
    i8 3, label %bb.fs
    i8 4, label %bb.ft
  ]

bb.fp:                                            ; preds = %sdslen.exit1155
  %i.qn = lshr i8 %.val.i1156, 3
  %i.qo = zext nneg i8 %i.qn to i64
  br label %sdslen.exit1158

bb.fq:                                            ; preds = %sdslen.exit1155
  %i.qp = getelementptr inbounds i8, ptr %i.qk, i64 -3
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !72
  %i.qr = zext i8 %i.qq to i64
  br label %sdslen.exit1158

bb.fr:                                            ; preds = %sdslen.exit1155
  %i.qs = getelementptr inbounds i8, ptr %i.qk, i64 -5
  %i.qt = load i16, ptr %i.qs, align 1, !tbaa !77
  %i.qu = zext i16 %i.qt to i64
  br label %sdslen.exit1158

bb.fs:                                            ; preds = %sdslen.exit1155
  %i.qv = getelementptr inbounds i8, ptr %i.qk, i64 -9
  %i.qw = load i32, ptr %i.qv, align 1, !tbaa !9
  %i.qx = zext i32 %i.qw to i64
  br label %sdslen.exit1158

bb.ft:                                            ; preds = %sdslen.exit1155
  %i.qy = getelementptr inbounds i8, ptr %i.qk, i64 -17
  %i.qz = load i64, ptr %i.qy, align 1, !tbaa !76
  br label %sdslen.exit1158

sdslen.exit1158:                                  ; preds = %sdslen.exit1155, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft
  %.0.i1157 = phi i64 [ %i.qz, %bb.ft ], [ %i.qo, %bb.fp ], [ %i.qr, %bb.fq ], [ %i.qu, %bb.fr ], [ %i.qx, %bb.fs ], [ 0, %sdslen.exit1155 ] ; 3 uses
  %i.ra = load i64, ptr %i.ou, align 8
  %i.rb = and i64 %i.ra, 240
  %i.rc = icmp eq i64 %i.rb, 192
  br i1 %i.rc, label %bb.fu, label %bb.ge

bb.fu:                                            ; preds = %sdslen.exit1158
  br i1 %.not1031, label %.critedge1079, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.rd = call ptr @sdsdup(ptr noundef nonnull %i.pu) #20 ; 2 uses
  %i.re = call i32 @dictAdd(ptr noundef nonnull %.0894, ptr noundef %i.rd, ptr noundef null) #20
  %.not1032 = icmp eq i32 %i.re, 0
  br i1 %.not1032, label %.critedge1079, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2641, ptr noundef nonnull @.str.60)
  call void @dictRelease(ptr noundef nonnull %.0894) #20
  call void @decrRefCount(ptr noundef nonnull %i.ou) #20
  call void @sdsfree(ptr noundef %i.rd) #20
  call void @entryFree(ptr noundef nonnull %i.pu, ptr noundef null) #20
  br label %.critedge1082

.critedge1079:                                    ; preds = %bb.fv, %bb.fu
  %i.rf = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7944), align 8, !tbaa !251 ; 2 uses
  %i.rg = icmp ugt i64 %.0.i1154, %i.rf
  %i.rh = icmp ugt i64 %.0.i1157, %i.rf
  %or.cond1080 = select i1 %i.rg, i1 true, i1 %i.rh
  br i1 %or.cond1080, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.critedge1079
  %i.ri = load ptr, ptr %i.pa, align 8, !tbaa !82
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !254
  %i.rl = add i64 %.0.i1157, %.0.i1154
  %i.rm = call i64 @lpEntrySizeInteger(i64 noundef %.08921232) #20
  %i.rn = add i64 %i.rl, %i.rm
  %i.ro = call i32 @lpSafeToAdd(ptr noundef %i.rk, i64 noundef %i.rn) #20
  %.not1033 = icmp eq i32 %i.ro, 0
  br i1 %.not1033, label %bb.fy, label %bb.gd

bb.fy:                                            ; preds = %bb.fx, %.critedge1079
  call void @hashTypeConvert(ptr noundef null, ptr noundef nonnull %i.ou, i32 noundef 2) #20
  br i1 %i.pb, label %bb.fz, label %bb.ge

bb.fz:                                            ; preds = %bb.fy
  %i.rp = load ptr, ptr %i.pa, align 8, !tbaa !82
  %i.rq = call i32 @dictTryExpand(ptr noundef %i.rp, i64 noundef %.0.i1152) #20
  %.not1034 = icmp eq i32 %i.rq, 0
  br i1 %.not1034, label %bb.ge, label %bb.ga

end_hunk_1
begin_hunk_2_@rdbLoadRioWithLoadingCtx:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.02737.i, i64 %i.ah
  %i.ap = sub i64 %.02538.i, %i.ah                ; 2 uses
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.ar = add i64 %i.aq, %i.ah
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !71
  %.not31.i = icmp eq i64 %i.ap, 0
  br i1 %.not31.i, label %rioRead.exit, label %bb.b

rioRead.exit:                                     ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  store i8 0, ptr %i.as, align 1, !tbaa !72
  %i.at = load i32, ptr %i.p, align 16
  %i.au = xor i32 %i.at, 1229210962
  %i.av = getelementptr i8, ptr %i.p, i64 4
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 %i.ax, 83
  %i.az = or i32 %i.au, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %rioRead.exit
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.bd = icmp sgt i32 %i.bc, 3
  br i1 %i.bd, label %bb.fa, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.127) #20
  br label %bb.fa

bb.h:                                             ; preds = %rioRead.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.bf = call i64 @__isoc23_strtol(ptr noundef nonnull %i.be, ptr noundef null, i32 noundef 10) #20, !inline_history !281
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  %i.bh = add i32 %i.bg, -14
  %or.cond = icmp ult i32 %i.bh, -13
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.bj = icmp sgt i32 %i.bi, 3
  br i1 %i.bj, label %bb.fa, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.128, i32 noundef %i.bg) #20
  br label %bb.fa

bb.k:                                             ; preds = %bb.h
  %i.bk = call i64 @mstime() #20
  %i.bl = call i32 @LRU_CLOCK() #20
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i16 0, ptr %i.bn, align 2, !tbaa !282
  store i16 0, ptr %4, align 8, !tbaa !284
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.not252 = icmp eq ptr %2, null                 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = and i32 %1, 1
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = and i32 %1, 8
  %.not237 = icmp eq i32 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = and i32 %1, 4
  %.not234 = icmp eq i32 %i.cf, 0
  br label %bb.l

bb.l:                                             ; preds = %select.unfold, %bb.k
  %.0204 = phi i64 [ -1, %bb.k ], [ %.1205, %select.unfold ] ; 11 uses
  %.0201 = phi i64 [ -1, %bb.k ], [ %.2203, %select.unfold ] ; 11 uses
  %.0198 = phi i64 [ -1, %bb.k ], [ %.2200, %select.unfold ] ; 11 uses
  %.0191 = phi i64 [ 0, %bb.k ], [ %.2193, %select.unfold ] ; 17 uses
  %.0189 = phi ptr [ %i.x, %bb.k ], [ %.1190, %select.unfold ] ; 23 uses
  %.0187 = phi i32 [ 0, %bb.k ], [ %.3, %select.unfold ] ; 10 uses
  %.0185 = phi i64 [ 0, %bb.k ], [ %.1186, %select.unfold ] ; 12 uses
  %.0183 = phi i64 [ 0, %bb.k ], [ %.1184, %select.unfold ] ; 12 uses
  %.0180 = phi i64 [ 0, %bb.k ], [ %.1181, %select.unfold ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  %i.cg = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ch = and i64 %i.cg, 1
  %.not.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i, label %bb.m, label %rdbLoadType.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %0, align 8, !tbaa !74
  %i.cj = call i64 %i.ci(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef 1) #20, !inline_history !88
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.thread.i.i, label %bb.n

.thread.i.i:                                      ; preds = %bb.m
  %i.cl = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.cm = or i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ab, align 8, !tbaa !65
  br label %rdbLoadType.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %.not33.i.i = icmp eq ptr %i.cn, null
  br i1 %.not33.i.i, label %rdbLoadType.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void %i.cn(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef 1) #20, !inline_history !88
  br label %rdbLoadType.exit

rdbLoadType.exit.thread:                          ; preds = %bb.l, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  br label %.thread

rdbLoadType.exit:                                 ; preds = %bb.n, %bb.o
  %i.co = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.ae, align 8, !tbaa !71
  %i.cq = load i8, ptr %i.n, align 1              ; 2 uses
  %i.cr = zext i8 %i.cq to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  store i32 %i.cr, ptr %i.o, align 4, !tbaa !9
  switch i8 %i.cq, label %bb.db [
    i8 -11, label %bb.cw
    i8 -3, label %bb.p
    i8 -4, label %bb.t
    i8 -7, label %bb.x
    i8 -8, label %bb.aa
    i8 -1, label %.thread335
    i8 -2, label %bb.ab
    i8 -5, label %bb.ah
    i8 -12, label %bb.aj
    i8 -6, label %bb.ao
    i8 -9, label %bb.ca
    i8 -10, label %bb.cv
  ]

bb.p:                                             ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  %i.cs = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ct = and i64 %i.cs, 1
  %.not.i.i273 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i273, label %.preheader.i.i, label %rdbLoadTime.exit

.preheader.i.i:                                   ; preds = %bb.p, %bb.s
  %.02538.i.i = phi i64 [ %i.de, %bb.s ], [ 4, %bb.p ] ; 3 uses
  %.02737.i.i = phi ptr [ %i.dd, %bb.s ], [ %i.m, %bb.p ] ; 3 uses
  %i.cu = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i = icmp eq i64 %i.cu, 0
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cu, i64 %.02538.i.i)
  %i.cw = select i1 %.not32.not.i.i, i64 %.02538.i.i, i64 %i.cv ; 5 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !74
  %i.cy = call i64 %i.cx(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.cw) #20, !inline_history !285
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.thread.i.i276, label %bb.q

.thread.i.i276:                                   ; preds = %.preheader.i.i
  %i.da = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.db = or i64 %i.da, 1
  store i64 %i.db, ptr %i.ab, align 8, !tbaa !65
  br label %rdbLoadTime.exit

bb.q:                                             ; preds = %.preheader.i.i
  %i.dc = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %.not33.i.i274 = icmp eq ptr %i.dc, null
  br i1 %.not33.i.i274, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.dc(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.cw) #20, !inline_history !285
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 %i.cw
  %i.de = sub i64 %.02538.i.i, %i.cw              ; 2 uses
  %i.df = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.dg = add i64 %i.df, %i.cw
  store i64 %i.dg, ptr %i.ae, align 8, !tbaa !71
  %.not31.i.i = icmp eq i64 %i.de, 0
  br i1 %.not31.i.i, label %rioRead.exit.i275, label %.preheader.i.i

rioRead.exit.i275:                                ; preds = %bb.s
  %i.dh = load i32, ptr %i.m, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul nsw i64 %i.di, 1000
  br label %rdbLoadTime.exit

rdbLoadTime.exit:                                 ; preds = %bb.p, %.thread.i.i276, %rioRead.exit.i275
  %i.dk = phi i64 [ %i.dj, %rioRead.exit.i275 ], [ -1000, %bb.p ], [ -1000, %.thread.i.i276 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @keyMetaSpecAdd(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %i.dk) #20
  %.val272 = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.dl = and i64 %.val272, 1
  %.not263 = icmp eq i64 %i.dl, 0
  br i1 %.not263, label %select.unfold, label %.thread

bb.t:                                             ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  %i.dm = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.dn = and i64 %i.dm, 1
  %.not.i.i277 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i277, label %.preheader.i.i278, label %rdbLoadMillisecondTime.exit

.preheader.i.i278:                                ; preds = %bb.t, %bb.w
  %.02538.i.i279 = phi i64 [ %i.dy, %bb.w ], [ 8, %bb.t ] ; 3 uses
  %.02737.i.i280 = phi ptr [ %i.dx, %bb.w ], [ %i.l, %bb.t ] ; 3 uses
  %i.do = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i281 = icmp eq i64 %i.do, 0
  %i.dp = call i64 @llvm.umin.i64(i64 %i.do, i64 %.02538.i.i279)
  %i.dq = select i1 %.not32.not.i.i281, i64 %.02538.i.i279, i64 %i.dp ; 5 uses
  %i.dr = load ptr, ptr %0, align 8, !tbaa !74
  %i.ds = call i64 %i.dr(ptr noundef nonnull %0, ptr noundef %.02737.i.i280, i64 noundef %i.dq) #20, !inline_history !253
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.thread.i.i285, label %bb.u

.thread.i.i285:                                   ; preds = %.preheader.i.i278
  %i.du = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.dv = or i64 %i.du, 1
  store i64 %i.dv, ptr %i.ab, align 8, !tbaa !65
  br label %rdbLoadMillisecondTime.exit

bb.u:                                             ; preds = %.preheader.i.i278
  %i.dw = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %.not33.i.i282 = icmp eq ptr %i.dw, null
  br i1 %.not33.i.i282, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void %i.dw(ptr noundef nonnull %0, ptr noundef %.02737.i.i280, i64 noundef %i.dq) #20, !inline_history !253
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %.02737.i.i280, i64 %i.dq
  %i.dy = sub i64 %.02538.i.i279, %i.dq           ; 2 uses
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.ea = add i64 %i.dz, %i.dq
  store i64 %i.ea, ptr %i.ae, align 8, !tbaa !71
  %.not31.i.i283 = icmp eq i64 %i.dy, 0
  br i1 %.not31.i.i283, label %rioRead.exit.i284, label %.preheader.i.i278

rioRead.exit.i284:                                ; preds = %bb.w
  %i.eb = load i64, ptr %i.l, align 8
  br label %rdbLoadMillisecondTime.exit

rdbLoadMillisecondTime.exit:                      ; preds = %bb.t, %.thread.i.i285, %rioRead.exit.i284
  %i.ec = phi i64 [ %i.eb, %rioRead.exit.i284 ], [ 9223372036854775807, %bb.t ], [ 9223372036854775807, %.thread.i.i285 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @keyMetaSpecAdd(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %i.ec) #20
  %.val271 = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ed = and i64 %.val271, 1
  %.not262 = icmp eq i64 %i.ed, 0
  br i1 %.not262, label %select.unfold, label %.thread

bb.x:                                             ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #20
  %i.ee = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ef = and i64 %i.ee, 1
  %.not.i286 = icmp eq i64 %i.ef, 0
  br i1 %.not.i286, label %.preheader.i288, label %select.unfold320

.preheader.i288:                                  ; preds = %bb.x
  %i.eg = load ptr, ptr %0, align 8, !tbaa !74
  %i.eh = call i64 %i.eg(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i64 noundef 1) #20, !inline_history !75
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.thread.i294, label %bb.y

.thread.i294:                                     ; preds = %.preheader.i288
  %i.ej = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ek = or i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ab, align 8, !tbaa !65
  br label %select.unfold320

bb.y:                                             ; preds = %.preheader.i288
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %.not33.i292 = icmp eq ptr %i.el, null
  br i1 %.not33.i292, label %rioRead.exit295, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void %i.el(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i64 noundef 1) #20, !inline_history !75
  br label %rioRead.exit295

rioRead.exit295:                                  ; preds = %bb.y, %bb.z
  %i.em = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.ae, align 8, !tbaa !71
  %i.eo = load i8, ptr %i.s, align 1
  %i.ep = zext i8 %i.eo to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #20
  br label %select.unfold

bb.aa:                                            ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.eq = call i32 @rdbLoadLenByRef(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.k)
  %i.er = icmp eq i32 %i.eq, -1
  %i.es = load i64, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  %i.et = icmp eq i64 %i.es, -1
  %8 = select i1 %i.er, i1 true, i1 %i.et
  br i1 %8, label %.thread, label %select.unfold

.thread335:                                       ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20
  %i.eu = icmp sgt i32 %i.bg, 4
  br i1 %i.eu, label %bb.ei, label %bb.et

bb.ab:                                            ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.ev = call i32 @rdbLoadLenByRef(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.j)
  %i.ew = icmp eq i32 %i.ev, -1
  %i.ex = load i64, ptr %i.j, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  %i.ey = icmp eq i64 %i.ex, -1
  %i.ez = select i1 %i.ew, i1 true, i1 %i.ey
  br i1 %i.ez, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !208 ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %.not261 = icmp ult i64 %i.ex, %i.fb
  br i1 %.not261, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.fd = icmp sgt i32 %i.fc, 3
  br i1 %i.fd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.129, i32 noundef %i.fa) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void @exit(i32 noundef 1) #21
  unreachable

bb.ag:                                            ; preds = %bb.ac
  %i.fe = load ptr, ptr %3, align 8, !tbaa !277
  %i.ff = getelementptr inbounds nuw [96 x i8], ptr %i.fe, i64 %i.ex
  br label %select.unfold

bb.ah:                                            ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.fg = call i32 @rdbLoadLenByRef(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.i)
  %i.fh = icmp eq i32 %i.fg, -1
  %i.fi = load i64, ptr %i.i, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.fj = icmp eq i64 %i.fi, -1
  %i.fk = select i1 %i.fh, i1 true, i1 %i.fj
  br i1 %i.fk, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.fl = call i32 @rdbLoadLenByRef(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.h)
  %i.fm = icmp eq i32 %i.fl, -1
  %i.fn = load i64, ptr %i.h, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.fo = icmp eq i64 %i.fn, -1
  %9 = select i1 %i.fm, i1 true, i1 %i.fo
  br i1 %9, label %.thread, label %select.unfold

bb.aj:                                            ; preds = %rdbLoadType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.fp = call i32 @rdbLoadLenByRef(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.g)
  %i.fq = icmp eq i32 %i.fp, -1
  %i.fr = load i64, ptr %i.g, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.fs = icmp eq i64 %i.fr, -1
  %i.ft = select i1 %i.fq, i1 true, i1 %i.fs
  br i1 %i.ft, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.fu = call i32 @rdbLoadLenByRef(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.f)
  %i.fv = icmp eq i32 %i.fu, -1
  %i.fw = load i64, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.fx = icmp eq i64 %i.fw, -1
  %i.fy = select i1 %i.fv, i1 true, i1 %i.fx
  br i1 %i.fy, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.fz = call i32 @rdbLoadLenByRef(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.e)
  %i.ga = icmp eq i32 %i.fz, -1
  %i.gb = load i64, ptr %i.e, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.gc = icmp eq i64 %i.gb, -1
  %i.gd = select i1 %i.ga, i1 true, i1 %i.gc
  br i1 %i.gd, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !193
  %.not260 = icmp eq i32 %i.ge, 0
  br i1 %.not260, label %select.unfold, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gf = load ptr, ptr %.0189, align 8, !tbaa !200
  %i.gg = trunc i64 %i.fr to i32                  ; 2 uses
  %i.gh = call i32 @kvstoreDictExpand(ptr noundef %i.gf, i32 noundef %i.gg, i64 noundef %i.fw) #20 ; 0 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0189, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !203
  %i.gk = call i32 @kvstoreDictExpand(ptr noundef %i.gj, i32 noundef %i.gg, i64 noundef %i.gb) #20 ; 0 uses
  br label %select.unfold

bb.ao:                                            ; preds = %rdbLoadType.exit
  %i.gl = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, ptr noundef null) ; 4 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gn = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, ptr noundef null) ; 12 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @decrRefCount(ptr noundef nonnull %i.gl) #20
  br label %.thread

bb.ar:                                            ; preds = %bb.ap
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !82 ; 14 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !72
  %i.gs = icmp eq i8 %i.gr, 37
  br i1 %i.gs, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gt = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.gu = icmp sgt i32 %i.gt, 2
  br i1 %i.gu, label %bb.bz, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !82
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.gq, ptr noundef %i.gw) #20
  br label %bb.bz

bb.au:                                            ; preds = %bb.ar
  %i.gx = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.29) #24
  %.not247 = icmp eq i32 %i.gx, 0
  br i1 %.not247, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %.not252, label %bb.bz, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !82
  %i.ha = call i64 @__isoc23_strtol(ptr noundef nonnull %i.gz, ptr noundef null, i32 noundef 10) #20, !inline_history !281
  %i.hb = trunc i64 %i.ha to i32
  store i32 %i.hb, ptr %2, align 8, !tbaa !190
  br label %bb.bz

bb.ax:                                            ; preds = %bb.au
  %i.hc = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.30) #24
  %.not249 = icmp eq i32 %i.hc, 0
  br i1 %.not249, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not252, label %bb.bz, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !82 ; 2 uses
  %i.hf = call fastcc i64 @sdslen(ptr noundef %i.he)
  %i.hg = icmp eq i64 %i.hf, 40
  br i1 %i.hg, label %bb.ba, label %bb.bz

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.bw, ptr noundef nonnull align 1 dereferenceable(41) %i.he, i64 41, i1 false)
  store i32 1, ptr %i.bx, align 4, !tbaa !286
  br label %bb.bz

bb.bb:                                            ; preds = %bb.ax
  %i.hh = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.31) #24
  %.not251 = icmp eq i32 %i.hh, 0
  br i1 %.not251, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not252, label %bb.bz, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !82
  %i.hk = call i64 @__isoc23_strtoll(ptr noundef %i.hj, ptr noundef null, i32 noundef 10) #20
  store i64 %i.hk, ptr %i.bv, align 8, !tbaa !287
  br label %bb.bz

bb.be:                                            ; preds = %bb.bb
  %i.hl = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.131) #24
  %.not253 = icmp eq i32 %i.hl, 0
  br i1 %.not253, label %bb.bz, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hm = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.24) #24
  %.not254 = icmp eq i32 %i.hm, 0
  br i1 %.not254, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.ho = icmp sgt i32 %i.hn, 2
  br i1 %i.ho, label %bb.bz, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !82
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.132, ptr noundef %i.hq) #20
  br label %bb.bz

bb.bi:                                            ; preds = %bb.bf
  %i.hr = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.27) #24
  %.not255 = icmp eq i32 %i.hr, 0
  br i1 %.not255, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.hs = call i64 @time(ptr noundef null) #20
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !82
  %i.hv = call i64 @__isoc23_strtol(ptr noundef %i.hu, ptr noundef null, i32 noundef 10) #20
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.hx = icmp sgt i32 %i.hw, 2
  br i1 %i.hx, label %bb.bz, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hy = sub nsw i64 %i.hs, %i.hv
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.hy, i64 0)
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.133, i64 noundef %spec.store.select) #20
  br label %bb.bz

bb.bl:                                            ; preds = %bb.bi
  %i.hz = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.28) #24
  %.not256 = icmp eq i32 %i.hz, 0
  br i1 %.not256, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !82
  %i.ic = call i64 @__isoc23_strtoll(ptr noundef %i.ib, ptr noundef null, i32 noundef 10) #20 ; 2 uses
  %i.id = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.ie = icmp sgt i32 %i.id, 2
  br i1 %i.ie, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.if = sitofp i64 %i.ic to double
  %i.ig = fmul nnan double %i.if, f0x3EB0000000000000
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.134, double noundef %i.ig) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  store i64 %i.ic, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2496), align 8, !tbaa !273
  br label %bb.bz

bb.bp:                                            ; preds = %bb.bl
  %i.ih = call i32 @strcasecmp(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.135) #24
  %.not257 = icmp eq i32 %i.ih, 0
  br i1 %.not257, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !82
end_hunk_2
begin_hunk_3_@rdbLoadRioWithLoadingCtx:bb.a
bb.df:                                            ; preds = %bb.de
  %i.lj = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null, ptr noundef null) ; 13 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @keyMetaSpecCleanup(ptr noundef nonnull %4) #20
  br label %.thread

bb.dh:                                            ; preds = %bb.df
  %i.ll = load i32, ptr %i.o, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %.0189, i64 72 ; 3 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !289
  %i.lo = call ptr @rdbLoadObject(i32 noundef %i.ll, ptr noundef nonnull %0, ptr noundef nonnull %i.lj, i32 noundef %i.ln, ptr noundef nonnull %i.q) ; 2 uses
  store ptr %i.lo, ptr %i.r, align 8, !tbaa !290
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.di, label %bb.dn

bb.di:                                            ; preds = %bb.dh
  call void @keyMetaSpecCleanup(ptr noundef nonnull %4) #20
  %i.lq = load i32, ptr %i.q, align 4, !tbaa !9
  %i.lr = icmp eq i32 %i.lq, 1
  br i1 %i.lr, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.ls = add nsw i64 %.0191, 1
  %i.lt = icmp sgt i64 %.0191, 9
  %i.lu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.lv = icmp sgt i32 %i.lu, 2
  %or.cond20 = select i1 %i.lt, i1 true, i1 %i.lv
  br i1 %or.cond20, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lw = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !291
  %.not.i306 = icmp eq i32 %i.lw, 0
  %i.lx = select i1 %.not.i306, ptr %i.lj, ptr @.str.182
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.lx) #20
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  call void @sdsfree(ptr noundef nonnull %i.lj) #20
  br label %bb.ef

bb.dm:                                            ; preds = %bb.di
  call void @sdsfree(ptr noundef nonnull %i.lj) #20
  br label %.thread

bb.dn:                                            ; preds = %bb.dh
  %i.ly = call i32 @iAmMaster() #20
  %.not232 = icmp eq i32 %i.ly, 0
  br i1 %.not232, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lz = icmp ne i64 %.0204, -1
  %or.cond10 = select i1 %i.ca, i1 %i.lz, i1 false
  %i.ma = icmp slt i64 %.0204, %i.bk
  %or.cond270 = select i1 %or.cond10, i1 %i.ma, i1 false
  br i1 %or.cond270, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  br i1 %.not237, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7272), align 8, !tbaa !292
  %.not238 = icmp eq ptr %i.mb, null
  br i1 %.not238, label %.critedge, label %bb.dr, !prof !186

bb.dr:                                            ; preds = %bb.dq
  %i.mc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !293 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.me = load i64, ptr %i.md, align 8, !tbaa !294
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %bb.ds, label %.critedge, !prof !81

.critedge:                                        ; preds = %bb.dq, %bb.dr
  call void @_serverAssert(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.12, i32 noundef 3951) #20
  call void @abort() #23
  unreachable

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 2147483136, ptr %6, align 8
  store ptr %i.lj, ptr %i.cc, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #20
  %i.mg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8364), align 4, !tbaa !296
  %.not239 = icmp eq i32 %i.mg, 0
  %i.mh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 408), align 8
  %i.mi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 400), align 8
  %i.mj = select i1 %.not239, ptr %i.mi, ptr %i.mh
  store ptr %i.mj, ptr %i.v, align 16, !tbaa !290
  store ptr %6, ptr %i.cd, align 8, !tbaa !290
  call void @replicationFeedSlaves(ptr noundef nonnull %i.mc, i32 noundef %i.lg, ptr noundef nonnull %i.v, i32 noundef 2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dp
  call void @sdsfree(ptr noundef nonnull %i.lj) #20
  %i.mk = load ptr, ptr %i.r, align 8, !tbaa !290
  call void @decrRefCount(ptr noundef %i.mk) #20
  call void @keyMetaSpecCleanup(ptr noundef nonnull %4) #20
  %i.ml = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6904), align 8, !tbaa !297
  %i.mm = add nsw i64 %i.ml, 1
  store i64 %i.mm, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6904), align 8, !tbaa !297
  br label %bb.ef

bb.du:                                            ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 2147483136, ptr %7, align 8
  store ptr %i.lj, ptr %i.ce, align 8, !tbaa !82
  %i.mn = call ptr @dbAddRDBLoad(ptr noundef nonnull %.0189, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.r, ptr noundef nonnull %4) #20 ; 2 uses
  %i.mo = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6912), align 8, !tbaa !298
  %i.mp = add nsw i64 %i.mo, 1
  store i64 %i.mp, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6912), align 8, !tbaa !298
  %.not233 = icmp eq ptr %i.mn, null
  br i1 %.not233, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  br i1 %.not234, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mq = call i32 @dbSyncDelete(ptr noundef nonnull %.0189, ptr noundef nonnull %7) #20 ; 0 uses
  %i.mr = call ptr @dbAddRDBLoad(ptr noundef nonnull %.0189, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.r, ptr noundef nonnull %4) #20 ; 2 uses
  %.not235 = icmp eq ptr %i.mr, null
  br i1 %.not235, label %bb.dx, label %bb.eb, !prof !186

bb.dx:                                            ; preds = %bb.dw
  call void @_serverAssert(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.12, i32 noundef 3977) #20
  call void @abort() #23
  unreachable

bb.dy:                                            ; preds = %bb.dv
  %i.ms = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.mt = icmp sgt i32 %i.ms, 3
  br i1 %i.mt, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mu = load i32, ptr %i.lm, align 8, !tbaa !289
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.150, ptr noundef nonnull %i.lj, i32 noundef %i.mu) #20
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dy, %bb.dz
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.12, i32 noundef 3981, ptr noundef nonnull @.str.151) #20
  call void @abort() #23
  unreachable

bb.eb:                                            ; preds = %bb.dw, %bb.du
  %.0182 = phi ptr [ %i.mn, %bb.du ], [ %i.mr, %bb.dw ] ; 3 uses
  %i.mv = load i64, ptr %.0182, align 8
  %i.mw = and i64 %i.mv, 15
  %i.mx = icmp eq i64 %i.mw, 4
  br i1 %i.mx, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.my = call i64 @hashTypeGetMinExpire(ptr noundef nonnull %.0182, i32 noundef 1) #20 ; 2 uses
  %.not236 = icmp eq i64 %i.my, 281474976710656
  br i1 %.not236, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mz = getelementptr inbounds nuw i8, ptr %.0189, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !299
  %i.nb = call i32 @getKeySlot(ptr noundef nonnull %i.lj) #20
  call void @estoreAdd(ptr noundef %i.na, i32 noundef %i.nb, ptr noundef nonnull %.0182, i64 noundef %i.my) #20
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed, %bb.eb
  %i.nc = load ptr, ptr %i.r, align 8, !tbaa !290
  %i.nd = call i32 @objectSetLRUOrLFU(ptr noundef %i.nc, i64 noundef %.0201, i64 noundef %.0198, i64 noundef %i.bm, i32 noundef 1000) #20 ; 0 uses
  %i.ne = load i32, ptr %i.lm, align 8, !tbaa !289
  call void @moduleNotifyKeyspaceEvent(i32 noundef 4096, ptr noundef nonnull @.str.152, ptr noundef nonnull %7, i32 noundef %i.ne) #20
  call void @sdsfree(ptr noundef nonnull %i.lj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ef

bb.ef:                                            ; preds = %bb.dt, %bb.ee, %bb.dl
  %.1192 = phi i64 [ %i.ls, %bb.dl ], [ %.0191, %bb.dt ], [ %.0191, %bb.ee ]
  %i.nf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7056), align 8, !tbaa !300 ; 2 uses
  %.not240 = icmp eq i32 %i.nf, 0
  br i1 %.not240, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @debugDelay(i32 noundef %i.nf) #20
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  store i16 0, ptr %i.bn, align 2, !tbaa !282
  store i16 0, ptr %4, align 8, !tbaa !284
  br label %select.unfold

select.unfold320:                                 ; preds = %bb.x, %.thread.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #20
  br label %.thread

.thread:                                          ; preds = %rdbLoadTime.exit, %rdbLoadMillisecondTime.exit, %bb.ab, %bb.ah, %bb.ca, %bb.ao, %bb.al, %bb.aj, %bb.ak, %bb.de, %bb.aa, %bb.ai, %bb.dm, %bb.dg, %bb.aq, %bb.cc, %rdbLoadType.exit.thread, %select.unfold320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20
  br label %rioRead.exit.thread

select.unfold:                                    ; preds = %rdbLoadMillisecondTime.exit, %rdbLoadTime.exit, %rioRead.exit295, %bb.ai, %bb.aa, %bb.cu, %bb.bz, %bb.an, %bb.am, %bb.eh, %bb.da, %bb.ag
  %.1205 = phi i64 [ %.0204, %bb.cu ], [ %.0204, %bb.an ], [ %.0204, %bb.ai ], [ %.0204, %bb.da ], [ -1, %bb.eh ], [ %.0204, %rioRead.exit295 ], [ %.0204, %bb.aa ], [ %i.dk, %rdbLoadTime.exit ], [ %.0204, %bb.am ], [ %.0204, %bb.ag ], [ %.0204, %bb.bz ], [ %i.ec, %rdbLoadMillisecondTime.exit ]
  %.2203 = phi i64 [ %.0201, %bb.cu ], [ %.0201, %bb.an ], [ %.0201, %bb.ai ], [ %.0201, %bb.da ], [ -1, %bb.eh ], [ %i.ep, %rioRead.exit295 ], [ %.0201, %bb.aa ], [ %.0201, %rdbLoadTime.exit ], [ %.0201, %bb.am ], [ %.0201, %bb.ag ], [ %.0201, %bb.bz ], [ %.0201, %rdbLoadMillisecondTime.exit ]
  %.2200 = phi i64 [ %.0198, %bb.cu ], [ %.0198, %bb.an ], [ %.0198, %bb.ai ], [ %.0198, %bb.da ], [ -1, %bb.eh ], [ %.0198, %rioRead.exit295 ], [ %i.es, %bb.aa ], [ %.0198, %rdbLoadTime.exit ], [ %.0198, %bb.am ], [ %.0198, %bb.ag ], [ %.0198, %bb.bz ], [ %.0198, %rdbLoadMillisecondTime.exit ]
  %.9 = phi i32 [ %.6, %bb.cu ], [ 7, %bb.an ], [ 7, %bb.ai ], [ %.8, %bb.da ], [ 0, %bb.eh ], [ 7, %rioRead.exit295 ], [ 7, %bb.aa ], [ 7, %rdbLoadTime.exit ], [ 7, %bb.am ], [ 7, %bb.ag ], [ 7, %bb.bz ], [ 7, %rdbLoadMillisecondTime.exit ]
  %.2193 = phi i64 [ %.0191, %bb.cu ], [ %.0191, %bb.an ], [ %.0191, %bb.ai ], [ %.0191, %bb.da ], [ %.1192, %bb.eh ], [ %.0191, %rioRead.exit295 ], [ %.0191, %bb.aa ], [ %.0191, %rdbLoadTime.exit ], [ %.0191, %bb.am ], [ %.0191, %bb.ag ], [ %.0191, %bb.bz ], [ %.0191, %rdbLoadMillisecondTime.exit ]
  %.1190 = phi ptr [ %.0189, %bb.cu ], [ %.0189, %bb.an ], [ %.0189, %bb.ai ], [ %.0189, %bb.da ], [ %.0189, %bb.eh ], [ %.0189, %rioRead.exit295 ], [ %.0189, %bb.aa ], [ %.0189, %rdbLoadTime.exit ], [ %.0189, %bb.am ], [ %i.ff, %bb.ag ], [ %.0189, %bb.bz ], [ %.0189, %rdbLoadMillisecondTime.exit ]
  %.3 = phi i32 [ %.0187, %bb.cu ], [ 0, %bb.an ], [ 1, %bb.ai ], [ %.0187, %bb.da ], [ 0, %bb.eh ], [ %.0187, %rioRead.exit295 ], [ %.0187, %bb.aa ], [ %.0187, %rdbLoadTime.exit ], [ %.0187, %bb.am ], [ %.0187, %bb.ag ], [ %.0187, %bb.bz ], [ %.0187, %rdbLoadMillisecondTime.exit ]
  %.1186 = phi i64 [ %.0185, %bb.cu ], [ %.0185, %bb.an ], [ %i.fn, %bb.ai ], [ %.0185, %bb.da ], [ %.0185, %bb.eh ], [ %.0185, %rioRead.exit295 ], [ %.0185, %bb.aa ], [ %.0185, %rdbLoadTime.exit ], [ %.0185, %bb.am ], [ %.0185, %bb.ag ], [ %.0185, %bb.bz ], [ %.0185, %rdbLoadMillisecondTime.exit ]
  %.1184 = phi i64 [ %.0183, %bb.cu ], [ %.0183, %bb.an ], [ %i.fi, %bb.ai ], [ %.0183, %bb.da ], [ %.0183, %bb.eh ], [ %.0183, %rioRead.exit295 ], [ %.0183, %bb.aa ], [ %.0183, %rdbLoadTime.exit ], [ %.0183, %bb.am ], [ %.0183, %bb.ag ], [ %.0183, %bb.bz ], [ %.0183, %rdbLoadMillisecondTime.exit ]
  %.1181 = phi i64 [ %.0180, %bb.cu ], [ %.0180, %bb.an ], [ %.0180, %bb.ai ], [ %.0180, %bb.da ], [ %.0180, %bb.eh ], [ %.0180, %rioRead.exit295 ], [ %.0180, %bb.aa ], [ %.0180, %rdbLoadTime.exit ], [ %.0180, %bb.am ], [ %i.ex, %bb.ag ], [ %.0180, %bb.bz ], [ %.0180, %rdbLoadMillisecondTime.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20
  %i.ng = icmp eq i32 %.9, 2
  br i1 %i.ng, label %rioRead.exit.thread, label %bb.l

bb.ei:                                            ; preds = %.thread335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #20
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !210 ; 2 uses
  %i.nj = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.nk = and i64 %i.nj, 1
  %.not.i307 = icmp eq i64 %i.nk, 0
  br i1 %.not.i307, label %.preheader.i309, label %bb.es

.preheader.i309:                                  ; preds = %bb.ei, %bb.el
  %.02538.i310 = phi i64 [ %i.nv, %bb.el ], [ 8, %bb.ei ] ; 3 uses
  %.02737.i311 = phi ptr [ %i.nu, %bb.el ], [ %i.w, %bb.ei ] ; 3 uses
  %i.nl = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i312 = icmp eq i64 %i.nl, 0
  %i.nm = call i64 @llvm.umin.i64(i64 %i.nl, i64 %.02538.i310)
  %i.nn = select i1 %.not32.not.i312, i64 %.02538.i310, i64 %i.nm ; 5 uses
  %i.no = load ptr, ptr %0, align 8, !tbaa !74
  %i.np = call i64 %i.no(ptr noundef nonnull %0, ptr noundef %.02737.i311, i64 noundef %i.nn) #20, !inline_history !75
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %.thread.i315, label %bb.ej

.thread.i315:                                     ; preds = %.preheader.i309
  %i.nr = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ns = or i64 %i.nr, 1
  store i64 %i.ns, ptr %i.ab, align 8, !tbaa !65
  br label %bb.es

bb.ej:                                            ; preds = %.preheader.i309
  %i.nt = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %.not33.i313 = icmp eq ptr %i.nt, null
  br i1 %.not33.i313, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void %i.nt(ptr noundef nonnull %0, ptr noundef %.02737.i311, i64 noundef %i.nn) #20, !inline_history !75
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.nu = getelementptr inbounds nuw i8, ptr %.02737.i311, i64 %i.nn
  %i.nv = sub i64 %.02538.i310, %i.nn             ; 2 uses
  %i.nw = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.nx = add i64 %i.nw, %i.nn
  store i64 %i.nx, ptr %i.ae, align 8, !tbaa !71
  %.not31.i314 = icmp eq i64 %i.nv, 0
  br i1 %.not31.i314, label %rioRead.exit316, label %.preheader.i309

rioRead.exit316:                                  ; preds = %bb.el
  %i.ny = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6956), align 4, !tbaa !207
  %i.nz = icmp eq i32 %i.ny, 0
  %i.oa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6456), align 8
  %i.ob = icmp ne i32 %i.oa, 0
  %or.cond12 = select i1 %i.nz, i1 true, i1 %i.ob
  br i1 %or.cond12, label %.thread349, label %bb.em

bb.em:                                            ; preds = %rioRead.exit316
  %i.oc = load i64, ptr %i.w, align 8, !tbaa !76  ; 3 uses
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.oe = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.of = icmp sgt i32 %i.oe, 2
  br i1 %i.of, label %.thread349, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.153) #20
  br label %.thread349

bb.ep:                                            ; preds = %bb.em
  %.not264 = icmp eq i64 %i.oc, %i.ni
  br i1 %.not264, label %.thread349, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.og = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.oh = icmp sgt i32 %i.og, 3
  br i1 %i.oh, label %.thread351, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.154, i64 noundef %i.ni, i64 noundef %i.oc) #20
  br label %.thread351

.thread351:                                       ; preds = %bb.er, %bb.eq
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 4029, ptr noundef nonnull @.str.155)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #20
  br label %bb.fa

.thread349:                                       ; preds = %bb.en, %bb.eo, %bb.ep, %rioRead.exit316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #20
  br label %bb.et

bb.es:                                            ; preds = %bb.ei, %.thread.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #20
  br label %rioRead.exit.thread

bb.et:                                            ; preds = %.thread349, %.thread335
  %.not265 = icmp eq i64 %.0191, 0
  %i.oi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.oj = icmp sgt i32 %i.oi, 2                   ; 2 uses
  br i1 %.not265, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  br i1 %i.oj, label %bb.fa, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ok = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6912), align 8, !tbaa !298
  %i.ol = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6904), align 8, !tbaa !297
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.156, i64 noundef %i.ok, i64 noundef %i.ol, i64 noundef %.0191) #20
  br label %bb.fa

bb.ew:                                            ; preds = %bb.et
  br i1 %i.oj, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.om = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6912), align 8, !tbaa !298
  %i.on = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6904), align 8, !tbaa !297
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.157, i64 noundef %i.om, i64 noundef %i.on) #20
  br label %bb.fa

rioRead.exit.thread:                              ; preds = %select.unfold, %.thread.i, %bb.a, %bb.es, %.thread
  %i.oo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.op = icmp sgt i32 %i.oo, 3
  br i1 %i.op, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %rioRead.exit.thread
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.158) #20
  br label %bb.ez

bb.ez:                                            ; preds = %rioRead.exit.thread, %bb.ey
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 0, i32 noundef 4053, ptr noundef nonnull @.str.159)
  br label %bb.fa

bb.fa:                                            ; preds = %.thread351, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.j, %bb.i, %bb.g, %bb.f, %bb.ez
  %.1 = phi i32 [ -1, %bb.ez ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %.thread351 ], [ -1, %bb.f ], [ 0, %bb.ex ], [ 0, %bb.ew ], [ 0, %bb.ev ], [ 0, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  ret i32 %.1
}

declare i32 @LRU_CLOCK() local_unnamed_addr #4

declare void @keyMetaSpecAdd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @kvstoreDictExpand(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare i32 @asmReplicaHandleMasterTask(ptr noundef) local_unnamed_addr #4

declare i32 @dbExpand(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @dbExpandExpires(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @kvstoreBuckets(ptr noundef) local_unnamed_addr #4

declare i32 @iAmMaster() local_unnamed_addr #4

declare void @replicationFeedSlaves(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dbAddRDBLoad(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dbSyncDelete(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #4

declare i32 @objectSetLRUOrLFU(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @moduleNotifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @rdbLoad(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rdbLoadWithEmptyFunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @rdbLoadWithEmptyFunc(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rdbLoadingCtx, align 8      ; 5 uses
  %5 = alloca %struct._rio, align 8               ; 4 uses
  %6 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.160) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
end_hunk_3
