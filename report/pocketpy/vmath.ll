Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vmath?download=true
inline.NumInlined: 309
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@mat3x3_copy_trs_:bb.a
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3_t(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !13
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.d, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !13
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.f, i64 1
  %i.g = tail call ptr (...) @py_retval() #16     ; 3 uses
  store i16 72, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store <2 x float> %.sroa.0.4.vec.insert, ptr %i.i, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3_r(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !13
  %i.e = fpext float %i.d to double
  %i.f = load float, ptr %i.b, align 4, !tbaa !13
  %i.g = fpext float %i.f to double
  %i.h = tail call double @dmath_atan2(double noundef %i.e, double noundef %i.g) #16
  %i.i = fptrunc double %i.h to float
  %i.j = tail call ptr (...) @py_retval() #16
  %i.k = fpext float %i.i to double
  tail call void @py_newfloat(ptr noundef %i.j, double noundef %i.k) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3_s(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @py_touserdata(ptr noundef %1) #16 ; 4 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !13 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fadd float %i.d, %i.g
  %i.i = fpext float %i.h to double
  %i.j = tail call double @dmath_sqrt(double noundef %i.i) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !13 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !13 ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = fadd float %i.m, %i.p
  %i.r = fpext float %i.q to double
  %i.s = tail call double @dmath_sqrt(double noundef %i.r) #16
  %i.t = insertelement <2 x double> poison, double %i.j, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = fptrunc <2 x double> %i.u to <2 x float>
  %i.w = tail call ptr (...) @py_retval() #16     ; 3 uses
  store i16 72, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 0, ptr %i.x, align 2, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x float> %i.v, ptr %i.y, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3_transform_point(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 72) #16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @py_touserdata(ptr noundef nonnull %1) #16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load <4 x float>, ptr %i.d, align 4, !tbaa !13 ; 3 uses
  %i.h = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.j = fmul <2 x float> %i.h, %i.i
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !13 ; 2 uses
  %i.l = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.m = shufflevector <2 x float> %i.l, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.n = fmul <2 x float> %i.m, %.sroa.0.0.copyload.i
  %i.o = fadd <2 x float> %i.j, %i.n
  %i.p = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.q = shufflevector <2 x float> %i.p, <2 x float> %i.k, <2 x i32> <i32 0, i32 3>
  %i.r = fadd <2 x float> %i.q, %i.o
  %i.s = tail call ptr (...) @py_retval() #16     ; 3 uses
  store i16 72, ptr %i.s, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 0, ptr %i.t, align 2, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store <2 x float> %i.r, ptr %i.u, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mat3x3_transform_vector(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 72) #16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @py_touserdata(ptr noundef nonnull %1) #16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !13 ; 2 uses
  %i.i = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.g, <2 x i32> <i32 3, i32 0>
  %i.k = fmul <2 x float> %i.i, %i.j
  %i.l = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 3>
  %i.m = fmul <2 x float> %i.l, %.sroa.0.0.copyload.i
  %i.n = fadd <2 x float> %i.k, %i.m
  %i.o = tail call ptr (...) @py_retval() #16     ; 3 uses
  store i16 72, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.p, align 2, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store <2 x float> %i.n, ptr %i.q, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__new__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.b, label %2

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.a, i16 noundef signext 3) #16
  br i1 %i.b, label %bb.c, label %.loopexit

2:                                                ; preds = %bb.a
  %3 = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 3, i32 noundef %0) #16
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @py_toint(ptr noundef nonnull %i.a) #16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.d, i16 noundef signext 3) #16
  br i1 %i.e, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.c
  %i.f = tail call i64 @py_toint(ptr noundef nonnull %i.d) #16
  %i.g = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.4.0.insert.ext = shl i64 %i.f, 32
  %.sroa.0.0.insert.ext = and i64 %i.c, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0.insert.ext
  store i16 74, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.i, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.critedge, %2
  %.2 = phi i1 [ %3, %2 ], [ true, %.critedge ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__repr__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !13 ; 2 uses
  %.sroa.01.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.42.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.42.0.extract.trunc = trunc nuw i64 %.sroa.42.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.83, i32 noundef %.sroa.01.0.extract.trunc, i32 noundef %.sroa.42.0.extract.trunc) #16
  %i.e = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.e, ptr nonnull %i.a, i32 %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__add__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not12 = icmp eq i16 %i.c, 74
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i13 = load i64, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %.sroa.414.0.extract.shift = and i64 %.sroa.0.0.copyload.i13, -4294967296
  %i.g = add i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i13
  %i.h = add i64 %.sroa.0.0.copyload.i, %.sroa.414.0.extract.shift
  %i.i = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.4.0.insert.ext = and i64 %i.h, -4294967296
  %.sroa.0.0.insert.ext = and i64 %i.g, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0.insert.ext
  store i16 74, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.k, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__sub__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not12 = icmp eq i16 %i.c, 74
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i13 = load i64, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %.sroa.417.0.extract.shift = and i64 %.sroa.0.0.copyload.i13, -4294967296
  %i.g = sub i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i13
  %i.h = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.419.0.extract.shift20 = sub i64 %.sroa.0.0.copyload.i, %.sroa.417.0.extract.shift
  %.sroa.4.0.insert.ext = and i64 %.sroa.419.0.extract.shift20, -4294967296
  %.sroa.0.0.insert.ext = and i64 %i.g, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0.insert.ext
  store i16 74, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.j, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__mul__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  switch i16 %i.c, label %bb.f [
    i16 74, label %bb.d
    i16 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %.sroa.429.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %.sroa.427.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i20, 32
  %i.f = mul i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i20
  %i.g = mul nuw i64 %.sroa.429.0.extract.shift, %.sroa.427.0.extract.shift
  %i.h = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.6.0.insert.ext = shl i64 %i.g, 32
  %.sroa.030.0.insert.ext = and i64 %i.f, 4294967295
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.ext, %.sroa.030.0.insert.ext
  store i16 74, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.030.0.insert.insert, ptr %i.j, align 8, !tbaa !13
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i21 = load i64, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i21, 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %i.n = mul i64 %.sroa.0.0.copyload.i21, %i.m
  %i.o = mul i64 %.sroa.4.0.extract.shift, %i.m
  %i.p = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.6.0.insert.ext36 = shl i64 %i.o, 32
  %.sroa.030.0.insert.ext32 = and i64 %i.n, 4294967295
  %.sroa.030.0.insert.insert34 = or disjoint i64 %.sroa.6.0.insert.ext36, %.sroa.030.0.insert.ext32
  store i16 74, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 0, ptr %i.q, align 2, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.030.0.insert.insert34, ptr %i.r, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.s) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__floordiv__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 3) #16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.b) #16 ; 2 uses
  %i.f = shl i64 %.sroa.0.0.copyload.i, 32
  %i.g = ashr exact i64 %i.f, 32
  %i.h = tail call i64 @cpy312__int_floordiv(i64 noundef %i.g, i64 noundef %i.e) #16
  %i.i = ashr i64 %.sroa.0.0.copyload.i, 32
  %i.j = tail call i64 @cpy312__int_floordiv(i64 noundef %i.i, i64 noundef %i.e) #16
  %i.k = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.6.0.insert.ext = shl i64 %i.j, 32
  %.sroa.0.0.insert.ext = and i64 %i.h, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.ext, %.sroa.0.0.insert.ext
  store i16 74, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 0, ptr %i.l, align 2, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.m, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__mod__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 3) #16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.b) #16 ; 2 uses
  %i.f = shl i64 %.sroa.0.0.copyload.i, 32
  %i.g = ashr exact i64 %i.f, 32
  %i.h = tail call i64 @cpy312__int_mod(i64 noundef %i.g, i64 noundef %i.e) #16
  %i.i = ashr i64 %.sroa.0.0.copyload.i, 32
  %i.j = tail call i64 @cpy312__int_mod(i64 noundef %i.i, i64 noundef %i.e) #16
  %i.k = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.6.0.insert.ext = shl i64 %i.j, 32
  %.sroa.0.0.insert.ext = and i64 %i.h, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.ext, %.sroa.0.0.insert.ext
  store i16 74, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 0, ptr %i.l, align 2, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.m, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__eq__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not13 = icmp eq i16 %i.c, 74
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.f, align 8, !tbaa !13
  %spec.select.1 = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i15
  %i.g = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.g, i1 noundef zeroext %spec.select.1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.011 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.011
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @vec2i__ne__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not.i = icmp eq i32 %0, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16 ; 0 uses
  br label %vec2i__eq__.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not13.i = icmp eq i16 %i.c, 74
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %vec2i__eq__.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i15.i = load i64, ptr %i.f, align 8, !tbaa !13
  %spec.select.1.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i15.i
  %i.g = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.g, i1 noundef zeroext %spec.select.1.i) #16
  br label %vec2i__eq__.exit

vec2i__eq__.exit:                                 ; preds = %bb.b, %bb.d, %bb.e
  %i.h = tail call ptr (...) @py_retval() #16     ; 2 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq i16 %i.i, 34
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %vec2i__eq__.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !13, !range !16, !noundef !17
  %i.m = xor i8 %i.l, 1
  store i8 %i.m, ptr %i.k, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %vec2i__eq__.exit, %bb.f
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__hash__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %i.c = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i, i64 32)
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newint(ptr noundef %i.d, i64 noundef %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__x(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !13
  %i.d = shl i64 %.sroa.0.0.copyload.i, 32
  %i.e = ashr exact i64 %i.d, 32
  tail call void @py_newint(ptr noundef %i.b, i64 noundef %i.e) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__y(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !13
  %i.d = ashr i64 %.sroa.0.0.copyload.i, 32
  tail call void @py_newint(ptr noundef %i.b, i64 noundef %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__with_x(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call zeroext i1 @py_castint(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !13
  %.sroa.5.0.extract.shift = and i64 %.sroa.0.0.copyload.i, -4294967296
  %i.f = load i64, ptr %i.a, align 8, !tbaa !22
  %i.g = call ptr (...) @py_retval() #16          ; 3 uses
  %.sroa.0.0.insert.ext = and i64 %i.f, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.5.0.extract.shift
  store i16 74, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i__with_y(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call zeroext i1 @py_castint(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.f = load i64, ptr %i.a, align 8, !tbaa !22
  %i.g = call ptr (...) @py_retval() #16          ; 3 uses
  %.sroa.4.0.insert.ext = shl i64 %i.f, 32
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0.copyload.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0.insert.ext
  store i16 74, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i_dot(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 74) #16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %.sroa.419.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i14 = load i64, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %.sroa.4.0.extract.shift = and i64 %.sroa.0.0.copyload.i14, -4294967296
  %2 = shl i64 %.sroa.0.0.copyload.i14, 32
  %sext = mul i64 %2, %.sroa.0.0.copyload.i
  %i.f = ashr exact i64 %sext, 32
  %i.g = mul i64 %.sroa.4.0.extract.shift, %.sroa.419.0.extract.shift
  %i.h = ashr exact i64 %i.g, 32
  %i.i = add nsw i64 %i.h, %i.f
  %i.j = tail call ptr (...) @py_retval() #16
  tail call void @py_newint(ptr noundef %i.j, i64 noundef %i.i) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.012 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.012
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i_l1_norm(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.c = tail call i32 @llvm.abs.i32(i32 %.sroa.0.0.extract.trunc, i1 true)
  %i.d = tail call i32 @llvm.abs.i32(i32 %.sroa.4.0.extract.trunc, i1 true)
  %i.e = add nuw nsw i32 %i.d, %i.c
  %i.f = tail call ptr (...) @py_retval() #16
  %i.g = zext nneg i32 %i.e to i64
  tail call void @py_newint(ptr noundef %i.f, i64 noundef %i.g) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i_l2_norm(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.c = mul nsw i32 %.sroa.0.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.d = mul nsw i32 %.sroa.5.0.extract.trunc, %.sroa.5.0.extract.trunc
  %i.e = add nuw nsw i32 %i.d, %i.c
  %i.f = uitofp nneg i32 %i.e to double
  %i.g = tail call double @dmath_sqrt(double noundef %i.f) #16
  %i.h = tail call ptr (...) @py_retval() #16
  tail call void @py_newfloat(ptr noundef %i.h, double noundef %i.g) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2i_max_norm(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.c = tail call i32 @llvm.abs.i32(i32 %.sroa.0.0.extract.trunc, i1 true)
  %i.d = tail call i32 @llvm.abs.i32(i32 %.sroa.5.0.extract.trunc, i1 true)
  %. = tail call i32 @llvm.umax.i32(i32 %i.c, i32 %i.d)
  %i.e = tail call ptr (...) @py_retval() #16
  %i.f = zext nneg i32 %. to i64
  tail call void @py_newint(ptr noundef %i.e, i64 noundef %i.f) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3i__new__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 4, i32 noundef %0) #16
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 3) #16
  br i1 %i.c, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @py_toint(ptr noundef nonnull %i.b) #16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.e, i16 noundef signext 3) #16
  br i1 %i.f, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i64 @py_toint(ptr noundef nonnull %i.e) #16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.h, i16 noundef signext 3) #16
  br i1 %i.i, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.e
  %.sroa.0.0.insert.ext = and i64 %i.d, 4294967295
  %.sroa.0.4.insert.ext = shl i64 %i.g, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.0.4.insert.ext
  %i.j = tail call i64 @py_toint(ptr noundef nonnull %i.h) #16
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call ptr (...) @py_retval() #16     ; 4 uses
  store i16 75, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 0, ptr %i.m, align 2, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.0.4.insert.insert, ptr %i.n, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.k, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.e, %bb.d, %bb.c, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ true, %.critedge ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3i__repr__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.sroa.03.0.extract.trunc = trunc i64 %.sroa.01.0.copyload.i to i32
  %.sroa.03.4.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.03.4.extract.trunc = trunc nuw i64 %.sroa.03.4.extract.shift to i32
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.84, i32 noundef %.sroa.03.0.extract.trunc, i32 noundef %.sroa.03.4.extract.trunc, i32 noundef %.sroa.22.0.copyload.i) #16
  %i.e = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.e, ptr nonnull %i.a, i32 %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3i__add__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not18 = icmp eq i16 %i.c, 75
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.e, align 8 ; 2 uses
end_hunk_0
