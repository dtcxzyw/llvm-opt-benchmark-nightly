Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vmath?download=true
inline.NumInlined: 309
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@vec3__xy:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.d, align 2, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x float> %.sroa.01.0.copyload.i, ptr %i.e, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__with_x(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.e, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.f = load double, ptr %i.a, align 8, !tbaa !19
  %i.g = fptrunc double %i.f to float
  %.sroa.03.0.vec.insert = insertelement <2 x float> %.sroa.01.0.copyload.i, float %i.g, i64 0
  %i.h = call ptr (...) @py_retval() #16          ; 4 uses
  store i16 73, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x float> %.sroa.03.0.vec.insert, ptr %i.j, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store float %.sroa.22.0.copyload.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__with_y(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.e, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.f = load double, ptr %i.a, align 8, !tbaa !19
  %i.g = fptrunc double %i.f to float
  %.sroa.03.4.vec.insert = insertelement <2 x float> %.sroa.01.0.copyload.i, float %i.g, i64 1
  %i.h = call ptr (...) @py_retval() #16          ; 4 uses
  store i16 73, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x float> %.sroa.03.4.vec.insert, ptr %i.j, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store float %.sroa.22.0.copyload.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__with_z(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.e, align 8
  %i.f = load double, ptr %i.a, align 8, !tbaa !19
  %i.g = fptrunc double %i.f to float
  %i.h = call ptr (...) @py_retval() #16          ; 4 uses
  store i16 73, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x float> %.sroa.01.0.copyload.i, ptr %i.j, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store float %i.g, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__with_xy(i32 noundef %0, ptr noundef %1) #8 {
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
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.d, align 8, !tbaa !13
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.e = tail call ptr (...) @py_retval() #16     ; 4 uses
  store i16 73, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 0, ptr %i.f, align 2, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.g, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store float %.sroa.22.0.copyload.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__new__(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 5, i32 noundef %0) #16
  br label %.thread23

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 3) #16
  br i1 %i.c, label %bb.d, label %.thread23

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @py_toint(ptr noundef nonnull %i.b) #16 ; 2 uses
  %or.cond = icmp ult i64 %i.d, 256
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.d
  %i.e = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %.thread23

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.insert.ext = trunc nuw nsw i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.f, i16 noundef signext 3) #16
  br i1 %i.g, label %bb.g, label %.thread23

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i64 @py_toint(ptr noundef nonnull %i.f) #16 ; 2 uses
  %or.cond.1 = icmp ult i64 %i.h, 256
  br i1 %or.cond.1, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.insert.ext = trunc nuw nsw i64 %i.h to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.i, i16 noundef signext 3) #16
  br i1 %i.j, label %bb.i, label %.thread23

bb.i:                                             ; preds = %bb.h
  %i.k = tail call i64 @py_toint(ptr noundef nonnull %i.i) #16 ; 2 uses
  %or.cond.2 = icmp ult i64 %i.k, 256
  br i1 %or.cond.2, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  %.sroa.5.0.insert.ext = trunc nuw nsw i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.m = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.l, i16 noundef signext 3) #16
  br i1 %i.m, label %bb.k, label %.thread23

bb.k:                                             ; preds = %bb.j
  %i.n = tail call i64 @py_toint(ptr noundef nonnull %i.l) #16 ; 2 uses
  %or.cond.3 = icmp ult i64 %i.n, 256
  br i1 %or.cond.3, label %bb.l, label %bb.e

bb.l:                                             ; preds = %bb.k
  %.sroa.6.0.insert.ext = trunc nuw nsw i64 %i.n to i32
  %2 = tail call ptr (...) @py_retval() #16       ; 3 uses
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i16 78, ptr %2, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.o, align 2, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.p, align 8, !tbaa !13
  br label %.thread23

.thread23:                                        ; preds = %bb.l, %bb.e, %bb.j, %bb.h, %bb.f, %bb.c, %bb.b
  %.4 = phi i1 [ %i.a, %bb.b ], [ true, %bb.l ], [ %i.e, %bb.e ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.4
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__repr__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %.sroa.42.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = and i32 %.sroa.0.0.copyload.i, 255
  %i.e = and i32 %.sroa.42.0.extract.shift, 255
  %i.f = and i32 %.sroa.5.0.extract.shift, 255
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.88, i32 noundef %i.d, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %.sroa.6.0.extract.shift) #16
  %i.h = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.h, ptr nonnull %i.a, i32 %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__eq__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not7 = icmp eq i16 %i.c, 78
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.f, align 8, !tbaa !13
  %.not8 = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i9
  %i.g = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.g, i1 noundef zeroext %.not8) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__ne__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not7 = icmp eq i16 %i.c, 78
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.f, align 8, !tbaa !13
  %i.g = icmp ne i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i8
  %i.h = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.h, i1 noundef zeroext %i.g) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__hash__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %i.c = tail call ptr (...) @py_retval() #16
  %i.d = zext i32 %.sroa.0.0.copyload.i to i64
  tail call void @py_newint(ptr noundef %i.c, i64 noundef %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__r(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %i.c = tail call ptr (...) @py_retval() #16
  %i.d = and i32 %.sroa.0.0.copyload.i, 255
  %i.e = zext nneg i32 %i.d to i64
  tail call void @py_newint(ptr noundef %i.c, i64 noundef %i.e) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__g(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %.sroa.3.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %i.c = tail call ptr (...) @py_retval() #16
  %i.d = and i32 %.sroa.3.0.extract.shift, 255
  %i.e = zext nneg i32 %i.d to i64
  tail call void @py_newint(ptr noundef %i.c, i64 noundef %i.e) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__b(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %.sroa.3.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.c = tail call ptr (...) @py_retval() #16
  %i.d = and i32 %.sroa.3.0.extract.shift, 255
  %i.e = zext nneg i32 %i.d to i64
  tail call void @py_newint(ptr noundef %i.c, i64 noundef %i.e) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32__a(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %.sroa.3.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24
  %.sroa.3.0.extract.trunc = zext nneg i32 %.sroa.3.0.extract.shift to i64
  %2 = tail call ptr (...) @py_retval() #16
  tail call void @py_newint(ptr noundef %2, i64 noundef %.sroa.3.0.extract.trunc) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_with_r(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %.sroa.5.0.extract.shift = and i32 %.sroa.0.0.copyload.i, -256
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16 ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 255
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.insert.ext = trunc nuw nsw i64 %i.e to i32
  %2 = tail call ptr (...) @py_retval() #16       ; 3 uses
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.ext
  store i16 78, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.g, align 2, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.h, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_with_g(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16 ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 255
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0.insert.ext = trunc nuw nsw i64 %i.e to i32
  %2 = tail call ptr (...) @py_retval() #16       ; 3 uses
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8
  %i.g = and i32 %.sroa.0.0.copyload.i, -65281
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %i.g
  store i16 78, ptr %2, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.i, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_with_b(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16 ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 255
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0.insert.ext = trunc nuw nsw i64 %i.e to i32
  %2 = tail call ptr (...) @py_retval() #16       ; 3 uses
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 16
  %i.g = and i32 %.sroa.0.0.copyload.i, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %i.g
  store i16 78, ptr %2, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.h, align 2, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.i, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_with_a(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 3) #16
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #16 ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 255
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.87) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0.insert.ext = trunc nuw nsw i64 %i.e to i32
  %2 = tail call ptr (...) @py_retval() #16       ; 3 uses
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 24
  %.sroa.0.0.insert.ext = and i32 %.sroa.0.0.copyload.i, 16777215
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i16 78, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.g, align 2, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.h, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_hex_STATIC(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %2 = alloca %union.c11_color32, align 4         ; 9 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 6) #16
  br i1 %i.b, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = tail call { ptr, i32 } @py_tosv(ptr noundef %1) #16 ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i32 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = icmp eq i32 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.d, ptr noundef nonnull @.str.89, ptr noundef nonnull %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #16
  %.not9 = icmp eq i32 %i.i, 3
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.90) #16
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 -1, ptr %i.k, align 1, !tbaa !13
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.m = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.d, ptr noundef nonnull @.str.91, ptr noundef nonnull %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.l) #16
  %.not8 = icmp eq i32 %i.m, 4
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.90) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.o = call ptr (...) @py_retval() #16          ; 3 uses
  %i.p = load i32, ptr %2, align 4
  store i16 78, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.q, align 2, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.p, ptr %i.r, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f
  %.0 = phi i1 [ %i.j, %bb.f ], [ true, %bb.j ], [ %i.n, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %.0, %bb.k ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_vec3_STATIC(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 73) #16
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.c, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.d = fmul float %.sroa.22.0.copyload.i, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %i.f = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.5.0.insert.ext = zext i8 %i.e to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %i.g = fmul <2 x float> %.sroa.01.0.copyload.i, splat (float 2.550000e+02)
  %i.h = fptoui <2 x float> %i.g to <2 x i8>      ; 2 uses
  %i.i = extractelement <2 x i8> %i.h, i64 1
  %i.j = zext i8 %i.i to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %i.j, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %i.k = extractelement <2 x i8> %i.h, i64 0
  %i.l = zext i8 %i.k to i32
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.l
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, -16777216
  store i16 78, ptr %i.f, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 0, ptr %i.m, align 2, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.n, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_vec3i_STATIC(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 75) #16
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.d = trunc i64 %.sroa.01.0.copyload.i to i32
  %i.e = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.5.0.insert.ext = shl i32 %.sroa.22.0.copyload.i, 16
  %sh.diff = lshr i64 %.sroa.01.0.copyload.i, 24
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %.sroa.4.0.insert.shift = and i32 %tr.sh.diff, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.5.0.insert.ext
  %.sroa.0.0.insert.ext = and i32 %i.d, 255
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or i32 %.sroa.4.0.insert.insert, -16777216
  store i16 78, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 0, ptr %i.f, align 2, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.g, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_hex(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.7.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = icmp eq i32 %.sroa.9.0.extract.shift, 255
  %i.e = and i32 %.sroa.0.0.copyload.i, 255       ; 2 uses
  %i.f = and i32 %.sroa.5.0.extract.shift, 255    ; 2 uses
  %i.g = and i32 %.sroa.7.0.extract.shift, 255    ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.92, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
end_hunk_0
