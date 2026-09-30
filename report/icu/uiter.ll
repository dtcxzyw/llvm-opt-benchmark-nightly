Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uiter?download=true
inline.NumInlined: 23
inline.NumDeleted: 9
begin_hunk_0_@_ZL18stringIteratorMoveP13UCharIteratori19UCharIteratorOrigin:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL21stringIteratorHasNextP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp slt i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL25stringIteratorHasPreviousP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %i.e = icmp sgt i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL21stringIteratorCurrentP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !28
  %i.j = zext i16 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL18stringIteratorNextP13UCharIterator(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = add nsw i32 %i.b, 1
  store i32 %i.g, ptr %i.a, align 8, !tbaa !26
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL22stringIteratorPreviousP13UCharIterator(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !26
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL22stringIteratorGetStatePK13UCharIterator(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL22stringIteratorSetStateP13UCharIteratorjP10UErrorCode(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) #3 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !24
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4, !tbaa !24
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  %i.g = icmp slt i32 %1, %i.f
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = icmp slt i32 %i.i, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 8, ptr %2, align 4, !tbaa !24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.k, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL12noopGetIndexP13UCharIterator19UCharIteratorOrigin(ptr nofree readnone captures(none) %0, i32 %1) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL8noopMoveP13UCharIteratori19UCharIteratorOrigin(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef signext i8 @_ZL11noopHasNextP13UCharIterator(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL11noopCurrentP13UCharIterator(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL12noopGetStatePK13UCharIterator(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL12noopSetStateP13UCharIteratorjP10UErrorCode(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) #9 {
bb.a:
  store i32 16, ptr %2, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL22utf16BEIteratorCurrentP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = shl nsw i32 %i.b, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %.val, i64 %i.g ; 2 uses
  %1 = load i8, ptr %i.h, align 1, !tbaa !17
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 8
  %4 = getelementptr i8, ptr %i.h, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %i.i = zext i8 %5 to i32
  %6 = or disjoint i32 %3, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %6, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL19utf16BEIteratorNextP13UCharIterator(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !26
  %.val = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = shl nsw i32 %i.b, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %.val, i64 %i.h ; 2 uses
  %1 = load i8, ptr %i.i, align 1, !tbaa !17
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 8
  %4 = getelementptr i8, ptr %i.i, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %i.j = zext i8 %5 to i32
  %6 = or disjoint i32 %3, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %6, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL23utf16BEIteratorPreviousP13UCharIterator(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !26
  %.val = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = shl nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %.val, i64 %i.h ; 2 uses
  %1 = load i8, ptr %i.i, align 1, !tbaa !17
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 8
  %4 = getelementptr i8, ptr %i.i, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %i.j = zext i8 %5 to i32
  %6 = or disjoint i32 %3, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %6, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL25characterIteratorGetIndexP13UCharIterator19UCharIteratorOrigin(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #6 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 3, label %bb.g
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.f ], [ %i.l, %bb.e ], [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21characterIteratorMoveP13UCharIteratori19UCharIteratorOrigin(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i32 %2, label %bb.e [
    i32 3, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i16 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %1) ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %1, i32 noundef %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !35
  %i.q = add nsw i32 %i.p, %1
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i16 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef %i.q) ; 0 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.x, %bb.d ], [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef signext i8 @_ZL24characterIteratorHasNextP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret i8 %i.e
}

; Function Attrs: mustprogress uwtable
define internal noundef signext i8 @_ZL28characterIteratorHasPreviousP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret i8 %i.e
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL24characterIteratorCurrentP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i16 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %.not = icmp eq i16 %i.e, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef signext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %.not4 = icmp eq i8 %i.k, 0
  %spec.select = select i1 %.not4, i32 -1, i32 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL21characterIteratorNextP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i16 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 65536) i32 @_ZL25characterIteratorPreviousP13UCharIterator(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i16 %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  %i.k = zext i16 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL25characterIteratorGetStatePK13UCharIterator(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZL20utf8IteratorPreviousP13UCharIterator:bb.a
  %i.c = lshr i32 %i.b, 10
  %i.d = add nuw nsw i32 %i.c, 55232
  store i32 0, ptr %i.a, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  %i.g = add nsw i32 %i.f, -4
  store i32 %i.g, ptr %i.e, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %i.h, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.d, 65535
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.q = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.q, ptr %i.m, align 4, !tbaa !25
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp sgt i8 %i.t, -1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef nonnull %i.m, i32 noundef %i.u, i8 noundef signext -3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.u, %bb.f ], [ %i.w, %bb.g ]  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.y, -1
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !25  ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 2
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp sgt i32 %.0, 65535
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nsw i32 %i.ab, %i.ae
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.k
  %.sink = phi i32 [ %i.af, %bb.k ], [ %i.aa, %bb.i ]
  store i32 %.sink, ptr %i.x, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j
  %i.ag = icmp slt i32 %.0, 65536
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !25
  %i.ai = add nsw i32 %i.ah, 4
  store i32 %i.ai, ptr %i.m, align 4, !tbaa !25
  store i32 %.0, ptr %i.a, align 8, !tbaa !36
  %i.aj = and i32 %.0, 1023
  %i.ak = or disjoint i32 %i.aj, 56320
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.m, %bb.l, %bb.d
  %.1 = phi i32 [ %i.l, %bb.d ], [ %.0, %bb.l ], [ %i.ak, %bb.m ], [ -1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL20utf8IteratorGetStatePK13UCharIterator(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = shl i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %.not = icmp ne i32 %i.e, 0
  %i.f = zext i1 %.not to i32
  %spec.select = or disjoint i32 %i.c, %i.f
  ret i32 %spec.select
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20utf8IteratorSetStateP13UCharIteratorjP10UErrorCode(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !24
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4, !tbaa !24
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = shl i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %.not.i = icmp ne i32 %i.j, 0
  %i.k = zext i1 %.not.i to i32
  %spec.select.i = or disjoint i32 %i.h, %i.k
  %i.l = icmp eq i32 %1, %spec.select.i
  br i1 %i.l, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.m = lshr i32 %1, 1                           ; 4 uses
  %i.n = trunc i32 %1 to i1
  %i.o = and i32 %1, -7
  %or.cond = icmp eq i32 %i.o, 1
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = icmp slt i32 %i.q, %i.m
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 8, ptr %2, align 4, !tbaa !24
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  store i32 %i.m, ptr %i.f, align 4, !tbaa !25
  %i.s = icmp ult i32 %1, 4
  %spec.select = select i1 %i.s, i32 %i.m, i32 -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %spec.select, ptr %i.t, align 8, !tbaa !26
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.i, align 8, !tbaa !36
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.v = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !11
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17    ; 2 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = zext i8 %i.y to i32
  %i.ab = call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %i.u, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.aa, i8 noundef signext -3) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 65536
  br i1 %i.ac, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.l
  store i32 8, ptr %2, align 4, !tbaa !24
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ab, ptr %i.i, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.e, %bb.n, %bb.a, %bb.b
  ret void
}

declare i32 @utf8_prevCharSafeBody_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{i64 0, i64 8, !10, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 4, !11, i64 32, i64 8, !10, i64 40, i64 8, !10, i64 48, i64 8, !10, i64 56, i64 8, !10, i64 64, i64 8, !10, i64 72, i64 8, !10, i64 80, i64 8, !10, i64 88, i64 8, !10, i64 96, i64 8, !10, i64 104, i64 8, !10}
!13 = !{!"_ZTS13UCharIterator", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !6, i64 8}
!16 = !{!13, !6, i64 20}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!13, !9, i64 40}
!22 = !{!13, !9, i64 80}
!23 = !{!"_ZTS10UErrorCode", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!13, !6, i64 12}
!26 = !{!13, !6, i64 16}
!27 = !{!"char16_t", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSN6icu_787UObjectE"}
!30 = !{!"_ZTSN6icu_7824ForwardCharacterIteratorE", !29, i64 0}
!31 = !{!"_ZTSN6icu_7817CharacterIteratorE", !30, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!32 = !{!31, !6, i64 16}
!33 = !{!31, !6, i64 12}
!34 = !{!31, !6, i64 20}
!35 = !{!31, !6, i64 8}
!36 = !{!13, !6, i64 24}
!37 = distinct !{!37, !18}
!38 = distinct !{null}
!39 = !{!13, !9, i64 64}
!40 = !{!13, !9, i64 72}
!41 = !{!13, !9, i64 96}
!42 = !{!13, !9, i64 104}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
end_hunk_1
