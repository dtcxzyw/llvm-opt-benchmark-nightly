Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/PyList?download=true
inline.NumInlined: 23
begin_hunk_0_@list_extend:bb.a
bb.f:                                             ; preds = %bb.e
  %i.i = call ptr (...) @py_pushtmp() #5          ; 2 uses
  %i.j = call ptr (...) @py_retval() #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.m = call i32 @py_next(ptr noundef nonnull %i.i) #5
  switch i32 %i.m, label %bb.h [
    i32 0, label %.thread29
    i32 -1, label %.loopexit
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !19
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @c11_vector__nextcap(ptr noundef nonnull %i.c) #5
  call void @c11_vector__reserve(ptr noundef nonnull %i.c, i32 noundef %i.q) #5
  %.pre = load i32, ptr %i.k, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.r = phi i32 [ %i.n, %bb.h ], [ %.pre, %bb.i ]
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.t
  %i.v = call ptr (...) @py_retval() #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !18
  %i.w = load i32, ptr %i.k, align 8, !tbaa !10
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.k, align 8, !tbaa !10
  br label %bb.g

.thread29:                                        ; preds = %bb.g
  call void (...) @py_pop() #5
  br label %bb.k

bb.k:                                             ; preds = %.thread29, %bb.d
  %i.y = call ptr (...) @py_retval() #5
  call void @py_newnone(ptr noundef %i.y) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.k
  %.2 = phi i1 [ true, %bb.k ], [ false, %bb.e ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.b
  %.3 = phi i1 [ %i.b, %bb.b ], [ %.2, %.loopexit ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @list_count(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.a = tail call ptr @py_touserdata(ptr noundef %1) #5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %.not26.not30 = icmp sgt i32 %i.c, 0
  br i1 %.not26.not30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef %0) #5
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.01631 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.d ]
  %i.f = tail call ptr @py_touserdata(ptr noundef %1) #5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = tail call i32 @py_equal(ptr noundef %i.h, ptr noundef nonnull %i.d) #5 ; 2 uses
  %.not25 = icmp eq i32 %i.i, -1
  br i1 %.not25, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp ne i32 %i.i, 0
  %i.j = zext i1 %.not24 to i32
  %spec.select = add nuw nsw i32 %.01631, %i.j    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = tail call ptr @py_touserdata(ptr noundef nonnull %1) #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !10
  %i.n = sext i32 %i.m to i64
  %.not26.not = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %.not26.not, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.o = zext nneg i32 %spec.select to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.016.lcssa = phi i64 [ 0, %.preheader ], [ %i.o, %._crit_edge.loopexit ]
  %i.p = tail call ptr (...) @py_retval() #5
  tail call void @py_newint(ptr noundef %i.p, i64 noundef %.016.lcssa) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge, %bb.b
  %.4 = phi i1 [ %i.e, %bb.b ], [ true, %._crit_edge ], [ false, %bb.c ]
  ret i1 %.4
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @list_clear(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %0) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #5
  tail call void @c11_vector__clear(ptr noundef %i.b) #5
  %i.c = tail call ptr (...) @py_retval() #5
  tail call void @py_newnone(ptr noundef %i.c) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @list_copy(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %0) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #5
  %i.c = tail call ptr @py_newobject(ptr noundef %i.b, i16 noundef signext 8, i32 noundef 0, i32 noundef 24) #5
  tail call void @c11_vector__ctor(ptr noundef %i.c, i32 noundef 24) #5
  %i.d = tail call ptr @py_touserdata(ptr noundef %1) #5 ; 2 uses
  %i.e = tail call ptr (...) @py_retval() #5
  %i.f = tail call ptr @py_touserdata(ptr noundef %i.e) #5
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !10
  tail call void @c11_vector__extend(ptr noundef %i.f, ptr noundef %i.g, i32 noundef %i.i) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @list_index(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.18) #5
  br label %.thread33

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %0, 3
  br i1 %i.c, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.d, i16 noundef signext 3) #5
  br i1 %i.e, label %bb.e, label %.thread33

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @py_toint(ptr noundef nonnull %i.d) #5
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @py_touserdata(ptr noundef nonnull %1) #5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  %i.l = add nsw i32 %i.k, %i.g
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.022 = phi i32 [ %i.l, %bb.f ], [ %i.g, %bb.e ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.022, i32 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.123.a = phi i32 [ %spec.store.select, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %i.m = tail call ptr @py_touserdata(ptr noundef %1) #5
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !10
  %.not3037 = icmp slt i32 %.123.a, %i.o
  br i1 %.not3037, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = zext nneg i32 %.123.a to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.q = tail call ptr @py_touserdata(ptr noundef %1) #5
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @py_equal(ptr noundef %i.s, ptr noundef nonnull %i.p) #5
  switch i32 %i.t, label %bb.j [
    i32 -1, label %.thread33
    i32 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr (...) @py_retval() #5
  tail call void @py_newint(ptr noundef %i.u, i64 noundef %indvars.iv) #5
  br label %.thread33

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = tail call ptr @py_touserdata(ptr noundef nonnull %1) #5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !10
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  %.not30 = icmp sgt i32 %i.x, %i.y
  br i1 %.not30, label %bb.i, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %i.z = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.19) #5
  br label %.thread33

.thread33:                                        ; preds = %bb.i, %bb.j, %._crit_edge, %bb.d, %bb.b
  %.4 = phi i1 [ %i.b, %bb.b ], [ %i.z, %._crit_edge ], [ false, %bb.d ], [ true, %bb.j ], [ false, %bb.i ]
  ret i1 %.4
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @list_reverse(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.py_TValue, align 8          ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %0) #5
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #5 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %.not19 = icmp eq ptr %i.c, null
  br i1 %.not19, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.g = zext nneg i32 %i.e to i64
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr i8, ptr %i.c, i64 %.idx
  %.020 = getelementptr i8, ptr %i.h, i64 -24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi ptr [ %.0, %.lr.ph ], [ %.020, %.lr.ph.preheader ] ; 3 uses
  %.01521 = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.01521, i64 24, i1 false), !tbaa.struct !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01521, ptr noundef nonnull align 8 dereferenceable(24) %.022, i64 24, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.022, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !18
  %i.i = getelementptr inbounds nuw i8, ptr %.01521, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.0 = getelementptr inbounds i8, ptr %.022, i64 -24 ; 2 uses
  %i.j = icmp ult ptr %i.i, %.0
  br i1 %i.j, label %.lr.ph, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %i.k = tail call ptr (...) @py_retval() #5
  tail call void @py_newnone(ptr noundef %i.k) #5
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.016 = phi i1 [ %i.a, %bb.b ], [ true, %.loopexit ]
  ret i1 %.016
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @list_remove(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.a = tail call ptr @py_touserdata(ptr noundef %1) #5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef %0) #5
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.g = tail call ptr @py_touserdata(ptr noundef %1) #5
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = tail call i32 @py_equal(ptr noundef %i.i, ptr noundef nonnull %i.e) #5
  switch i32 %i.j, label %bb.d [
    i32 -1, label %.loopexit
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = tail call ptr @py_touserdata(ptr noundef nonnull %1) #5 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !10
  %i.r = xor i32 %i.k, -1
  %i.s = add i32 %i.q, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.n, ptr nonnull align 8 %i.o, i64 %i.u, i1 false)
  %i.v = load i32, ptr %i.p, align 8, !tbaa !10
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.p, align 8, !tbaa !10
  %i.x = tail call ptr (...) @py_retval() #5
  tail call void @py_newnone(ptr noundef %i.x) #5
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = tail call ptr @py_touserdata(ptr noundef nonnull %1) #5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !10
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.c, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ad = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.20) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %._crit_edge, %bb.b
  %.3 = phi i1 [ %i.f, %bb.b ], [ %i.ad, %._crit_edge ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @list_pop(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  switch i32 %0, label %bb.d [
    i32 1, label %bb.e
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 3) #5
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @py_toint(ptr noundef nonnull %i.b) #5
  %i.e = trunc i64 %i.d to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.21) #5
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i32 [ %i.e, %bb.c ], [ -1, %bb.a ]
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !16
  %i.g = tail call ptr @py_touserdata(ptr noundef %1) #5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !10   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.22) #5
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = call zeroext i1 @pk__normalize_index(ptr noundef nonnull %i.a, i32 noundef %i.i) #5
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = call ptr (...) @py_retval() #5
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.o = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
end_hunk_0
