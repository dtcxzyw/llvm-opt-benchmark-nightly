inline.NumInlined: 38
inline.NumDeleted: 21
begin_hunk_0_@ucptrie_getRange_78
declare i32 @ucptrie_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7810EmojiProps17hasBinaryPropertyEi9UProperty(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.b = call noundef ptr @_ZN6icu_7810EmojiProps12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = add i32 %1, -72
  %or.cond.i = icmp ult i32 %i.e, -15
  %or.cond = or i1 %or.cond.i, %i.d
  br i1 %or.cond, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UProperty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr i8, ptr @_ZZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UPropertyE8bitFlags, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -57
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UProperty.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp ult i32 %0, 65536
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = lshr i32 %0, 6
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = and i32 %0, 63
  %i.w = add nuw nsw i32 %i.v, %i.u
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.x = icmp ult i32 %0, 1114112
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %.not.i = icmp slt i32 %0, %i.z
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add nsw i32 %i.ab, -2
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ad = call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.l, i32 noundef %0) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add nsw i32 %i.af, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %i.ah = phi i32 [ %i.w, %bb.d ], [ %i.ag, %bb.i ], [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = zext nneg i8 %i.i to i32
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = and i8 %i.ao, 1
  br label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UProperty.exit

_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UProperty.exit: ; preds = %bb.j, %bb.b, %bb.a
  %i.aq = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ap, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i8 %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UProperty(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %2, -72
  %or.cond = icmp ult i32 %i.a, -15
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr i8, ptr @_ZZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UPropertyE8bitFlags, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -57
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ult i32 %1, 65536
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = lshr i32 %1, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = and i32 %1, 63
  %i.s = add nuw nsw i32 %i.r, %i.q
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.t = icmp ult i32 %1, 1114112
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %.not = icmp slt i32 %1, %i.v
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add nsw i32 %i.x, -2
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.h, i32 noundef %1) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add nsw i32 %i.ab, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %i.ad = phi i32 [ %i.s, %bb.d ], [ %i.ac, %bb.i ], [ %i.y, %bb.g ], [ %i.z, %bb.h ]
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.j, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = zext nneg i8 %i.e to i32
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc nuw i32 %i.aj to i8
  %i.al = and i8 %i.ak, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %i.al, %bb.j ], [ 0, %bb.b ]
  ret i8 %.1
}

declare i32 @ucptrie_internalSmallIndex_78(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7810EmojiProps17hasBinaryPropertyEPKDsi9UProperty(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UCharsTrie", align 8 ; 8 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.b = call noundef ptr @_ZN6icu_7810EmojiProps12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.e = icmp eq ptr %0, null
  %i.f = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %1, 1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %1, 0
  br i1 %i.h, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i16, ptr %0, align 2
  %i.j = icmp eq i16 %i.i, 0
  %i.k = add i32 %2, -72
  %or.cond5.i = icmp ult i32 %i.k, -7
  %or.cond41.i = or i1 %or.cond5.i, %i.j
  br i1 %or.cond41.i, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit, label %5

bb.f:                                             ; preds = %bb.c
  %.old.i = add i32 %2, -72
  %or.cond5.old.i = icmp ult i32 %.old.i, -7
  br i1 %or.cond5.old.i, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit, label %5

5:                                                ; preds = %bb.f, %bb.e
  %6 = icmp eq i32 %2, 71                         ; 2 uses
  %spec.select.i = select i1 %6, i32 70, i32 %2   ; 2 uses
  %spec.select39.i = select i1 %6, i32 65, i32 %2 ; 2 uses
  %.not43.not.i = icmp samesign ugt i32 %spec.select39.i, %spec.select.i
  br i1 %.not43.not.i, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %5
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = zext nneg i32 %spec.select39.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.o, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.q = getelementptr i8, ptr %i.p, i64 -504
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not38.i = icmp eq ptr %i.r, null
  br i1 %.not38.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store ptr null, ptr %3, align 8
  store ptr %i.r, ptr %i.l, align 8
  store ptr %i.r, ptr %i.m, align 8
  store i32 -1, ptr %i.n, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.r) #6, !srcloc !7
  store ptr %0, ptr %4, align 8
  %i.s = call noundef i32 @_ZN6icu_7810UCharsTrie4nextENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %4, i32 noundef %1) #6
  %i.t = load ptr, ptr %4, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.t) #6, !srcloc !7
  %i.u = icmp slt i32 %i.s, 2
  call void @_ZN6icu_7810UCharsTrieD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br i1 %i.u, label %.critedge.i, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit

.critedge.i:                                      ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.v = trunc nuw i64 %indvars.iv.i to i32
  %.not.i = icmp sgt i32 %spec.select.i, %i.v
  br i1 %.not.i, label %bb.g, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit, !llvm.loop !8

_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit: ; preds = %bb.h, %.critedge.i, %bb.b, %bb.d, %bb.e, %bb.f, %5
  %7 = phi i8 [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %5 ], [ 0, %.critedge.i ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit, %bb.a
  %i.w = phi i8 [ 0, %bb.a ], [ %7, %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i8 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEPKDsi9UProperty(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i16, ptr %1, align 2
  %i.f = icmp eq i16 %i.e, 0
  %i.g = add i32 %3, -72
  %or.cond5 = icmp ult i32 %i.g, -7
  %or.cond41 = or i1 %or.cond5, %i.f
  br i1 %or.cond41, label %._crit_edge, label %6

bb.e:                                             ; preds = %bb.b
  %.old = add i32 %3, -72
  %or.cond5.old = icmp ult i32 %.old, -7
  br i1 %or.cond5.old, label %._crit_edge, label %6

6:                                                ; preds = %bb.d, %bb.e
  %7 = icmp eq i32 %3, 71                         ; 2 uses
  %spec.select = select i1 %7, i32 70, i32 %3     ; 2 uses
  %spec.select39 = select i1 %7, i32 65, i32 %3   ; 2 uses
  %.not43.not = icmp samesign ugt i32 %spec.select39, %spec.select
  br i1 %.not43.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %6
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = zext nneg i32 %spec.select39 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 -504
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not38 = icmp eq ptr %i.n, null
  br i1 %.not38, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr null, ptr %4, align 8
  store ptr %i.n, ptr %i.h, align 8
  store ptr %i.n, ptr %i.i, align 8
  store i32 -1, ptr %i.j, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.n) #6, !srcloc !7
  store ptr %1, ptr %5, align 8
  %i.o = call noundef i32 @_ZN6icu_7810UCharsTrie4nextENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull %5, i32 noundef %2) #6
  %i.p = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.p) #6, !srcloc !7
  %i.q = icmp slt i32 %i.o, 2
  call void @_ZN6icu_7810UCharsTrieD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %i.q, label %.critedge, label %._crit_edge

.critedge:                                        ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.r = trunc nuw i64 %indvars.iv to i32
  %.not = icmp sgt i32 %spec.select, %i.r
  br i1 %.not, label %bb.f, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.g, %.critedge, %6, %bb.e, %bb.c, %bb.d, %bb.a
  %.6 = phi i8 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %6 ], [ 1, %bb.g ], [ 0, %.critedge ]
  ret i8 %.6
}

declare noundef i32 @_ZN6icu_7810UCharsTrie4nextENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7810UCharsTrieD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7810EmojiProps10addStringsEPK9USetAdder9UPropertyR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = add i32 %2, -72
  %or.cond = icmp ult i32 %i.c, -7
  %or.cond27 = or i1 %or.cond, %i.b
  br i1 %or.cond27, label %.loopexit, label %6

6:                                                ; preds = %bb.a
  %7 = icmp eq i32 %2, 71                         ; 2 uses
  %spec.select = select i1 %7, i32 70, i32 %2     ; 2 uses
  %spec.select28 = select i1 %7, i32 65, i32 %2   ; 2 uses
  %.not2430 = icmp samesign ugt i32 %spec.select28, %spec.select
  br i1 %.not2430, label %.loopexit, label %.lr.ph33

.lr.ph33:                                         ; preds = %6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.i = zext nneg i32 %spec.select28 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph33, %bb.d
  %indvars.iv = phi i64 [ %i.i, %.lr.ph33 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 -504
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %i.l, ptr %5, align 8
  call void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3) #6
  %i.m = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.m) #6, !srcloc !7
  %i.n = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #6
  %.not2629 = icmp eq i8 %i.n, 0
  br i1 %.not2629, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = load i16, ptr %i.e, align 8              ; 4 uses
  %i.r = and i16 %i.q, 17
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = and i16 %i.q, 2
  %.not2.i = icmp eq i16 %i.s, 0
  %i.t = load ptr, ptr %i.g, align 8
  %spec.select34 = select i1 %.not2.i, ptr %i.t, ptr %i.f
  %.0.i = select i1 %.not.i, ptr %spec.select34, ptr null
  %i.u = icmp slt i16 %i.q, 0
  %i.v = ashr i16 %i.q, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %i.h, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w
  call void %i.o(ptr noundef %i.p, ptr noundef %.0.i, i32 noundef %i.y) #6
  %i.z = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #6
  %.not26 = icmp eq i8 %i.z, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aa = trunc nuw i64 %indvars.iv to i32
  %.not24.not = icmp sgt i32 %spec.select, %i.aa
  br i1 %.not24.not, label %bb.b, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.d, %6, %bb.a
  ret void
}

declare void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

declare noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

declare void @ucln_common_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext i8 @_ZN6icu_7812_GLOBAL__N_118emojiprops_cleanupEv() #0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_19singletonE, align 8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @udata_close_78(ptr noundef %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @ucptrie_close_78(ptr noundef %i.e) #6
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @_ZN6icu_7812_GLOBAL__N_19singletonE, align 8
  store atomic i32 0, ptr @_ZN6icu_7812_GLOBAL__N_113emojiInitOnceE seq_cst, align 4
  ret i8 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 2149291275}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
end_hunk_0
