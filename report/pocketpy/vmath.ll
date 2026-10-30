Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vmath?download=true
inline.NumInlined: 309
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@vec2__truediv__:bb.a
  %i.g = load float, ptr %i.a, align 4, !tbaa !15
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x float> %.sroa.0.0.copyload.i, %i.i
  %i.k = call ptr (...) @py_retval() #16          ; 3 uses
  store i16 72, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 0, ptr %i.l, align 2, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store <2 x float> %i.j, ptr %i.m, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ true, %bb.f ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2__repr__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !13
  %i.e = fpext <2 x float> %i.d to <2 x double>   ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = extractelement <2 x double> %i.e, i64 1
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.77, double noundef %i.f, double noundef %i.g) #16
  %i.i = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.i, ptr nonnull %i.a, i32 %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2__eq__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not13 = icmp eq i16 %i.c, 72
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i14 = load <2 x float>, ptr %i.f, align 8, !tbaa !13
  %i.g = fsub <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i14
  %i.h = fpext <2 x float> %i.g to <2 x double>   ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = tail call double @dmath_fabs(double noundef %i.i) #16
  %i.k = fcmp olt double %i.j, 1.000000e-04
  %i.l = extractelement <2 x double> %i.h, i64 1
  %i.m = tail call double @dmath_fabs(double noundef %i.l) #16
  %i.n = fcmp olt double %i.m, 1.000000e-04
  %spec.select.1 = select i1 %i.n, i1 %i.k, i1 false
  %i.o = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.o, i1 noundef zeroext %spec.select.1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.011 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.011
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @vec2__ne__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not.i = icmp eq i32 %0, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16 ; 0 uses
  br label %vec2__eq__.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not13.i = icmp eq i16 %i.c, 72
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %vec2__eq__.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i14.i = load <2 x float>, ptr %i.f, align 8, !tbaa !13
  %i.g = fsub <2 x float> %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i14.i
  %i.h = fpext <2 x float> %i.g to <2 x double>   ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = tail call double @dmath_fabs(double noundef %i.i) #16
  %i.k = fcmp olt double %i.j, 1.000000e-04
  %i.l = extractelement <2 x double> %i.h, i64 1
  %i.m = tail call double @dmath_fabs(double noundef %i.l) #16
  %i.n = fcmp olt double %i.m, 1.000000e-04
  %spec.select.1.i = select i1 %i.n, i1 %i.k, i1 false
  %i.o = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.o, i1 noundef zeroext %spec.select.1.i) #16
  br label %vec2__eq__.exit

vec2__eq__.exit:                                  ; preds = %bb.b, %bb.d, %bb.e
  %i.p = tail call ptr (...) @py_retval() #16     ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !11
  %i.r = icmp eq i16 %i.q, 34
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %vec2__eq__.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !13, !range !16, !noundef !17
  %i.u = xor i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %vec2__eq__.exit, %bb.f
  ret i1 true
}

declare void @py_bindmethod(i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2_dot(i32 noundef %0, ptr noundef %1) #8 {
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
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i14 = load <2 x float>, ptr %i.e, align 8, !tbaa !13
  %i.f = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i14 ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fadd float %i.g, 0.000000e+00
  %i.i = extractelement <2 x float> %i.f, i64 1
  %i.j = fadd float %i.h, %i.i
  %i.k = tail call ptr (...) @py_retval() #16
  %i.l = fpext float %i.j to double
  tail call void @py_newfloat(ptr noundef %i.k, double noundef %i.l) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.012 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.012
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2_length(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %i.c = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i
  %2 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.c)
  %i.d = tail call ptr (...) @py_retval() #16
  %i.e = fpext float %2 to double
  %i.f = tail call double @dmath_sqrt(double noundef %i.e) #16
  tail call void @py_newfloat(ptr noundef %i.d, double noundef %i.f) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2_length_squared(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %i.c = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i
  %2 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.c)
  %i.d = tail call ptr (...) @py_retval() #16
  %i.e = fpext float %2 to double
  tail call void @py_newfloat(ptr noundef %i.d, double noundef %i.e) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2_normalize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %i.c = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i
  %2 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.c)
  %i.d = fpext float %2 to double                 ; 2 uses
  %i.e = tail call double @dmath_fabs(double noundef %i.d) #16
  %i.f = fcmp olt double %i.e, 1.000000e-04
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.78) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call double @dmath_sqrt(double noundef %i.d) #16
  %i.i = fptrunc double %i.h to float
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x float> %.sroa.0.0.copyload.i, %i.k
  %i.m = tail call ptr (...) @py_retval() #16     ; 3 uses
  store i16 72, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 0, ptr %i.n, align 2, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store <2 x float> %i.l, ptr %i.o, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %i.g, %bb.d ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2_rotate(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = call zeroext i1 @py_castfloat(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #16 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.g = load double, ptr %i.a, align 8, !tbaa !19
  call void @dmath_sincos(double noundef %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load double, ptr %i.c, align 8, !tbaa !19
  %i.j = load double, ptr %i.b, align 8, !tbaa !19
  %i.k = load <2 x float>, ptr %i.h, align 8, !tbaa !13
  %i.l = fpext <2 x float> %i.k to <2 x double>   ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.p = fmul <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.i, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.l             ; 2 uses
  %i.t = fsub <2 x double> %i.s, %i.p
  %i.u = fadd <2 x double> %i.s, %i.p
  %i.v = shufflevector <2 x double> %i.t, <2 x double> %i.u, <2 x i32> <i32 0, i32 3>
  %i.w = fptrunc <2 x double> %i.v to <2 x float>
  %i.x = call ptr (...) @py_retval() #16          ; 3 uses
  store i16 72, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 0, ptr %i.y, align 2, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <2 x float> %i.w, ptr %i.z, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.e ]
  ret i1 %.1
}

declare void @py_bindstaticmethod(i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2_angle_STATIC(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 72) #16
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.c, i16 noundef signext 72) #16
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load float, ptr %i.f, align 4, !tbaa !13
  %i.h = fpext float %i.g to double
  %i.i = load float, ptr %i.e, align 8, !tbaa !13
  %i.j = fpext float %i.i to double
  %i.k = tail call double @dmath_atan2(double noundef %i.h, double noundef %i.j) #16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %i.o = fpext float %i.n to double
  %i.p = load float, ptr %i.l, align 8, !tbaa !13
  %i.q = fpext float %i.p to double
  %i.r = tail call double @dmath_atan2(double noundef %i.o, double noundef %i.q) #16
  %i.s = fsub double %i.k, %i.r
  %i.t = fptrunc double %i.s to float             ; 3 uses
  %i.u = fpext float %i.t to double
  %i.v = fcmp ogt double %i.u, f0x400921FB54442D18
  %i.w = fadd float %i.t, f0xC0C90FDB
  %.0 = select i1 %i.v, float %i.w, float %i.t    ; 3 uses
  %i.x = fpext float %.0 to double
  %i.y = fcmp olt double %i.x, f0xC00921FB54442D18
  %i.z = fadd float %.0, f0x40C90FDB
  %.1 = select i1 %i.y, float %i.z, float %.0
  %i.aa = tail call ptr (...) @py_retval() #16
  %i.ab = fpext float %.1 to double
  tail call void @py_newfloat(ptr noundef %i.aa, double noundef %i.ab) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  %.013 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.013
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2_smoothdamp_STATIC(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %.not = icmp eq i32 %0, 6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 6, i32 noundef %0) #16
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 72) #16
  br i1 %i.e, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.f, i16 noundef signext 72) #16
  br i1 %i.g, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.h, i16 noundef signext 72) #16
  br i1 %i.i, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = call zeroext i1 @py_castfloat32(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #16
  br i1 %i.k, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = call zeroext i1 @py_castfloat32(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #16
  br i1 %i.m, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = call zeroext i1 @py_castfloat32(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c) #16 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.061.0.copyload = load <2 x float>, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.s = load float, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %i.t = fcmp olt float %i.s, f0x38D1B717
  %i.u = select i1 %i.t, float f0x38D1B717, float %i.s ; 3 uses
  store float %i.u, ptr %i.a, align 4, !tbaa !15
  %i.v = load float, ptr %i.c, align 4, !tbaa !15 ; 2 uses
  %i.w = load <2 x float>, ptr %i.p, align 8      ; 3 uses
  %i.x = load <2 x float>, ptr %i.q, align 8      ; 6 uses
  %i.y = fdiv float 2.000000e+00, %i.u            ; 2 uses
end_hunk_0
begin_hunk_1_@vec3__repr__:bb.a
bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.c, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = fpext <2 x float> %.sroa.01.0.copyload.i to <2 x double> ; 2 uses
  %i.e = fpext float %.sroa.22.0.copyload.i to double
  %i.f = extractelement <2 x double> %i.d, i64 0
  %i.g = extractelement <2 x double> %i.d, i64 1
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.86, double noundef %i.f, double noundef %i.g, double noundef %i.e) #16
  %i.i = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.i, ptr nonnull %i.a, i32 %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__eq__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not17 = icmp eq i16 %i.c, 73
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.e, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i18 = load <2 x float>, ptr %i.f, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.22.0.copyload.i20 = load float, ptr %.sroa.22.0..sroa_idx.i19, align 8, !tbaa !13
  %foldExtExtBinop = fsub <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i18
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = fpext float %i.g to double
  %i.i = tail call double @dmath_fabs(double noundef %i.h) #16
  %i.j = fcmp olt double %i.i, 1.000000e-04
  %foldExtExtBinop28 = fsub <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i18
  %i.k = extractelement <2 x float> %foldExtExtBinop28, i64 1
  %i.l = fpext float %i.k to double
  %i.m = tail call double @dmath_fabs(double noundef %i.l) #16
  %i.n = fcmp olt double %i.m, 1.000000e-04
  %i.o = fsub float %.sroa.22.0.copyload.i, %.sroa.22.0.copyload.i20
  %i.p = fpext float %i.o to double
  %i.q = tail call double @dmath_fabs(double noundef %i.p) #16
  %i.r = fcmp olt double %i.q, 1.000000e-04
  %i.s = select i1 %i.r, i1 %i.n, i1 false
  %spec.select.2 = select i1 %i.s, i1 %i.j, i1 false
  %i.t = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.t, i1 noundef zeroext %spec.select.2) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.015 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.015
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @vec3__ne__(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not.i = icmp eq i32 %0, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16 ; 0 uses
  br label %vec3__eq__.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %.not17.i = icmp eq i16 %i.c, 73
  br i1 %.not17.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #16
  tail call void @py_newnotimplemented(ptr noundef %i.d) #16
  br label %vec3__eq__.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.e, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i18.i = load <2 x float>, ptr %i.f, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.22.0.copyload.i20.i = load float, ptr %.sroa.22.0..sroa_idx.i19.i, align 8, !tbaa !13
  %foldExtExtBinop = fsub <2 x float> %.sroa.01.0.copyload.i.i, %.sroa.01.0.copyload.i18.i
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = fpext float %i.g to double
  %i.i = tail call double @dmath_fabs(double noundef %i.h) #16
  %i.j = fcmp olt double %i.i, 1.000000e-04
  %foldExtExtBinop6 = fsub <2 x float> %.sroa.01.0.copyload.i.i, %.sroa.01.0.copyload.i18.i
  %i.k = extractelement <2 x float> %foldExtExtBinop6, i64 1
  %i.l = fpext float %i.k to double
  %i.m = tail call double @dmath_fabs(double noundef %i.l) #16
  %i.n = fcmp olt double %i.m, 1.000000e-04
  %i.o = fsub float %.sroa.22.0.copyload.i.i, %.sroa.22.0.copyload.i20.i
  %i.p = fpext float %i.o to double
  %i.q = tail call double @dmath_fabs(double noundef %i.p) #16
  %i.r = fcmp olt double %i.q, 1.000000e-04
  %i.s = select i1 %i.r, i1 %i.n, i1 false
  %spec.select.2.i = select i1 %i.s, i1 %i.j, i1 false
  %i.t = tail call ptr (...) @py_retval() #16
  tail call void @py_newbool(ptr noundef %i.t, i1 noundef zeroext %spec.select.2.i) #16
  br label %vec3__eq__.exit

vec3__eq__.exit:                                  ; preds = %bb.b, %bb.d, %bb.e
  %i.u = tail call ptr (...) @py_retval() #16     ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !11
  %i.w = icmp eq i16 %i.v, 34
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %vec3__eq__.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !13, !range !16, !noundef !17
  %i.z = xor i8 %i.y, 1
  store i8 %i.z, ptr %i.x, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %vec3__eq__.exit, %bb.f
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3_dot(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.b, i16 noundef signext 73) #16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.d, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i18 = load <2 x float>, ptr %i.e, align 8
  %.sroa.22.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.22.0.copyload.i20 = load float, ptr %.sroa.22.0..sroa_idx.i19, align 8, !tbaa !13
  %i.f = fmul <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i18 ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fadd float %i.g, 0.000000e+00
  %i.i = extractelement <2 x float> %i.f, i64 1
  %i.j = fadd float %i.h, %i.i
  %i.k = fmul float %.sroa.22.0.copyload.i, %.sroa.22.0.copyload.i20
  %i.l = fadd float %i.j, %i.k
  %i.m = tail call ptr (...) @py_retval() #16
  %i.n = fpext float %i.l to double
  tail call void @py_newfloat(ptr noundef %i.m, double noundef %i.n) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.016 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.016
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3_length(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.b, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13 ; 2 uses
  %i.c = fmul <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = fmul float %.sroa.22.0.copyload.i, %.sroa.22.0.copyload.i
  %i.f = fadd float %i.d, %i.e
  %i.g = tail call ptr (...) @py_retval() #16
  %i.h = fpext float %i.f to double
  %i.i = tail call double @dmath_sqrt(double noundef %i.h) #16
  tail call void @py_newfloat(ptr noundef %i.g, double noundef %i.i) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3_length_squared(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.b, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13 ; 2 uses
  %i.c = fmul <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = fmul float %.sroa.22.0.copyload.i, %.sroa.22.0.copyload.i
  %i.f = fadd float %i.d, %i.e
  %i.g = tail call ptr (...) @py_retval() #16
  %i.h = fpext float %i.f to double
  tail call void @py_newfloat(ptr noundef %i.g, double noundef %i.h) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3_normalize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.b, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13 ; 3 uses
  %i.c = fmul <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = fmul float %.sroa.22.0.copyload.i, %.sroa.22.0.copyload.i
  %i.f = fadd float %i.d, %i.e
  %i.g = fpext float %i.f to double               ; 2 uses
  %i.h = tail call double @dmath_fabs(double noundef %i.g) #16
  %i.i = fcmp olt double %i.h, 1.000000e-04
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.78) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = tail call double @dmath_sqrt(double noundef %i.g) #16
  %i.l = fptrunc double %i.k to float             ; 2 uses
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %.sroa.01.0.copyload.i, %i.n
  %i.p = fdiv float %.sroa.22.0.copyload.i, %i.l
  %i.q = tail call ptr (...) @py_retval() #16     ; 4 uses
  store i16 73, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 0, ptr %i.r, align 2, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <2 x float> %i.o, ptr %i.s, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store float %i.p, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %i.j, %bb.d ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__x(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.vec.extract = load float, ptr %i.c, align 8
  %i.d = fpext float %.sroa.01.0.vec.extract to double
  tail call void @py_newfloat(ptr noundef %i.b, double noundef %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__y(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.01.4.vec.extract = load float, ptr %i.c, align 4
  %i.d = fpext float %.sroa.01.4.vec.extract to double
  tail call void @py_newfloat(ptr noundef %i.b, double noundef %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__z(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #16
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.c = fpext float %.sroa.22.0.copyload.i to double
  tail call void @py_newfloat(ptr noundef %i.b, double noundef %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec3__xy(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.b, align 8
  %i.c = tail call ptr (...) @py_retval() #16     ; 3 uses
  store i16 72, ptr %i.c, align 8, !tbaa !11
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
end_hunk_1
