inline.NumInlined: 82
inline.NumDeleted: 26
begin_hunk_0_@_ZN6icu_7810CharString8copyFromERKS0_R10UErrorCode:bb.a
  %i.c = icmp ne ptr %0, %1
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add nsw i32 %i.e, 1
  %i.g = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.f, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = add nsw i32 %i.h, 1
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %2, 0
  %i.g = add nsw i32 %i.d, %1
  %spec.select = select i1 %i.f, i32 %i.g, i32 %2 ; 5 uses
  %.not13 = icmp sgt i32 %spec.select, %1
  br i1 %.not13, label %bb.d, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  %i.k = icmp sgt i32 %spec.select, 0
  br i1 %i.k, label %bb.e, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %spec.select to i64
  %i.m = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.l) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i32 %i.i, -1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.c, align 8
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.o)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %spec.select)
  %i.p = load ptr, ptr %0, align 8
  %i.q = sext i32 %.1.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.t) #12
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit: ; preds = %bb.h, %bb.i
  store ptr %i.m, ptr %0, align 8
  store i32 %spec.select, ptr %i.c, align 8
  store i8 1, ptr %i.r, align 4
  br label %bb.p

_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread: ; preds = %bb.d, %bb.e, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread
  %i.y = zext nneg i32 %1 to i64
  %i.z = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.y) #13 ; 3 uses
  %.not.i15 = icmp eq ptr %i.z, null
  br i1 %.not.i15, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i32 %i.v, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %i.c, align 8
  %spec.select.i18 = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab)
  %.1.i19 = tail call i32 @llvm.smin.i32(i32 %spec.select.i18, i32 %1)
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = sext i32 %.1.i19 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4
  %.not.i.i16 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i16, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.ag) #12
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20

_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20: ; preds = %bb.m, %bb.n
  store ptr %i.z, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i8 1, ptr %i.ae, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.j, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread
  store i32 7, ptr %3, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit, %bb.b, %bb.a, %bb.o
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.o ], [ 1, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit ], [ 1, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20 ], [ 1, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8copyFromENS_11StringPieceER10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(60) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.c, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -1, 2147483647) i32 @_ZNK6icu_7810CharString11lastIndexOfEc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %.split.loop.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %indvars.le, 0
  br i1 %i.f, label %bb.c, label %.split.loop.exit, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv13 = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv13, -1 ; 3 uses
  %i.g = and i64 %indvars.iv.next, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, %1
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %i.j, label %.split.loop.exit, label %bb.b, !llvm.loop !5

.split.loop.exit:                                 ; preds = %bb.b, %bb.c, %bb.a
  %i.k = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.le, %bb.c ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7810CharString8containsENS_11StringPieceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %3 = sub nsw i32 %i.c, %2                       ; 2 uses
  %.not9.not12 = icmp slt i32 %3, 0
  br i1 %.not9.not12, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = sext i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %bcmp = tail call i32 @bcmp(ptr %i.e, ptr %1, i64 %i.d)
  %i.f = icmp eq i32 %bcmp, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %.not9.not = icmp slt i32 %3, %4
  %or.cond = select i1 %i.f, i1 true, i1 %.not9.not
  br i1 %or.cond, label %.critedge, label %bb.c, !llvm.loop !7

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %spec.store.select, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %spec.store.select, ptr %i.a, align 8
  %i.d = zext nneg i32 %spec.store.select to i64
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, i8 noundef signext %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add nsw i32 %i.b, 2
  %i.d = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.c, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.a, align 8
  %i.g = sext i32 %i.e to i64
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.g
  store i8 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.k
  store i8 0, ptr %i.m, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, -1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ne i32 %2, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.h = trunc i64 %i.g to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026 = phi i32 [ %i.h, %bb.f ], [ %2, %bb.e ]  ; 8 uses
  %i.i = icmp sgt i32 %.026, 0
  br i1 %i.i, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sub nsw i32 %i.q, %i.l
  %.not32 = icmp slt i32 %.026, %i.r
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 5, ptr %3, align 4
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.l, %.026                  ; 2 uses
  store i32 %i.s, ptr %i.k, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 %i.t
  store i8 0, ptr %i.u, align 1
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  %.not29 = icmp ule ptr %i.j, %1
  %i.v = icmp ult ptr %1, %i.n
  %or.cond33 = and i1 %.not29, %i.v
  br i1 %or.cond33, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sub nsw i32 %i.x, %i.l
  %.not30 = icmp slt i32 %.026, %i.y
  br i1 %.not30, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %1, i32 noundef %.026, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.z = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ab = load i8, ptr %i.aa, align 4
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.ac) #12
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.r

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ad = add nuw i32 %.026, 1
  %i.ae = add i32 %i.ad, %i.l
  %i.af = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not31 = icmp eq i8 %i.af, 0
  br i1 %.not31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai
  %i.ak = zext nneg i32 %.026 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %1, i64 %i.ak, i1 false)
  %i.al = load i32, ptr %i.k, align 8
  %i.am = add nsw i32 %i.al, %.026                ; 2 uses
  store i32 %i.am, ptr %i.k, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.q, %bb.p, %bb.j, %bb.k, %bb.a, %_ZN6icu_7810CharStringD2Ev.exit, %bb.d
  %.0 = phi ptr [ %i.z, %_ZN6icu_7810CharStringD2Ev.exit ], [ %0, %bb.d ], [ %0, %bb.a ], [ %0, %bb.k ], [ %0, %bb.j ], [ %0, %bb.p ], [ %0, %bb.q ], [ %0, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8
end_hunk_0
