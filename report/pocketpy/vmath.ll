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
  %i.c = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %2 = extractelement <2 x float> %foldExtExtBinop, i64 0
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
  %i.c = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %2 = extractelement <2 x float> %foldExtExtBinop, i64 0
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
  %i.c = fmul <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %2 = extractelement <2 x float> %foldExtExtBinop, i64 0
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
  %i.z = fmul float %i.v, %i.y                    ; 6 uses
  %i.aa = fadd float %i.z, 1.000000e+00
  %i.ab = fmul float %i.z, 4.800000e-01
  %i.ac = fmul float %i.z, %i.ab
  %i.ad = fadd float %i.aa, %i.ac
  %i.ae = fmul float %i.z, 2.350000e-01
  %i.af = fmul float %i.z, %i.ae
  %i.ag = fmul float %i.z, %i.af
  %i.ah = fadd float %i.ad, %i.ag
  %i.ai = fdiv float 1.000000e+00, %i.ah
  %i.aj = fsub <2 x float> %i.w, %i.x             ; 4 uses
  %i.ak = load float, ptr %i.b, align 4, !tbaa !15
  %i.al = fmul float %i.u, %i.ak                  ; 3 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = fmul <2 x float> %i.aj, %i.aj           ; 2 uses
  %shift = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.an, %shift
  %2 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ao = fcmp ogt float %2, %i.am
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = fpext float %2 to double
  %i.aq = call double @dmath_sqrt(double noundef %i.ap) #16
  %i.ar = fptrunc double %i.aq to float
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.aj, %i.at
  %i.av = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %i.au
  %.pre = load float, ptr %i.c, align 4, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = phi float [ %.pre, %bb.j ], [ %i.v, %bb.i ]
  %i.az = phi <2 x float> [ %i.ax, %bb.j ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ba = fsub <2 x float> %i.w, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul <2 x float> %i.bc, %i.az
  %i.be = fadd <2 x float> %.sroa.061.0.copyload, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = fmul <2 x float> %i.be, %i.bg           ; 2 uses
  %i.bi = fmul <2 x float> %i.bc, %i.bh
  %i.bj = fsub <2 x float> %.sroa.061.0.copyload, %i.bi
  %i.bk = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bj
  %i.bn = fadd <2 x float> %i.az, %i.bh
  %i.bo = fmul <2 x float> %i.bl, %i.bn
  %i.bp = fadd <2 x float> %i.ba, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> %i.x, %i.w
  %i.br = fsub <2 x float> %i.bp, %i.x
  %i.bs = fmul <2 x float> %i.bq, %i.br           ; 2 uses
  %shift101 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = fadd <2 x float> %i.bs, %shift101
  %3 = extractelement <2 x float> %foldExtExtBinop102, i64 0
  %i.bt = fcmp ogt float %3, 0.000000e+00         ; 2 uses
  %i.bu = fsub <2 x float> %i.x, %i.x
  %i.bv = fdiv <2 x float> %i.bu, %i.bg
  %.sroa.061.0 = select i1 %i.bt, <2 x float> %i.bv, <2 x float> %i.bm
  %i.bw = select i1 %i.bt, <2 x float> %i.x, <2 x float> %i.bp
  %i.bx = call ptr (...) @py_retval() #16
  %i.by = call ptr @py_newtuple(ptr noundef %i.bx, i32 noundef 2) #16 ; 6 uses
  store i16 72, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 0, ptr %i.bz, align 2, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store <2 x float> %i.bw, ptr %i.ca, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i16 72, ptr %i.cb, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 26
  store i8 0, ptr %i.cc, align 2, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store <2 x float> %.sroa.061.0, ptr %i.cd, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  %.1 = phi i1 [ %i.o, %bb.l ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.m
  %.2 = phi i1 [ %.1, %bb.m ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.n, %bb.b
  %.3 = phi i1 [ %i.d, %bb.b ], [ %.2, %bb.n ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.e ]
  ret i1 %.3
}

declare void @py_bindproperty(i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2__x(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.vec.extract = load float, ptr %i.c, align 8, !tbaa !13
  %i.d = fpext float %.sroa.0.0.vec.extract to double
  tail call void @py_newfloat(ptr noundef %i.b, double noundef %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2__y(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.4.vec.extract = load float, ptr %i.c, align 4, !tbaa !13
  %i.d = fpext float %.sroa.0.4.vec.extract to double
  tail call void @py_newfloat(ptr noundef %i.b, double noundef %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2__with_x(i32 noundef %0, ptr noundef %1) #8 {
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
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !13
  %i.f = load double, ptr %i.a, align 8, !tbaa !19
  %i.g = fptrunc double %i.f to float
  %.sroa.0.0.vec.insert = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.g, i64 0
  %i.h = call ptr (...) @py_retval() #16          ; 3 uses
  store i16 72, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x float> %.sroa.0.0.vec.insert, ptr %i.j, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2__with_y(i32 noundef %0, ptr noundef %1) #8 {
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
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !13
  %i.f = load double, ptr %i.a, align 8, !tbaa !19
  %i.g = fptrunc double %i.f to float
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.g, i64 1
  %i.h = call ptr (...) @py_retval() #16          ; 3 uses
  store i16 72, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x float> %.sroa.0.4.vec.insert, ptr %i.j, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vec2__with_z(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = call zeroext i1 @py_castfloat32(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !13
  %i.g = load float, ptr %i.a, align 4, !tbaa !15
  %i.h = call ptr (...) @py_retval() #16          ; 4 uses
  store i16 73, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 0, ptr %i.i, align 2, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store <2 x float> %i.f, ptr %i.j, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store float %i.g, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
end_hunk_0
begin_hunk_1_@color32_alpha_blend_STATIC:bb.a
  %i.ag = insertelement <4 x float> %i.af, float %i.ab, i64 1
  %i.ah = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.ai = insertelement <4 x float> %i.ah, float %i.i, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.ac, i64 1
  %i.ak = fadd <4 x float> %i.ag, %i.aj
  %i.al = fptoui <4 x float> %i.ak to <4 x i8>    ; 4 uses
  %i.am = extractelement <4 x i8> %i.al, i64 0
  %i.an = zext i8 %i.am to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %i.an, 24
  %i.ao = extractelement <4 x i8> %i.al, i64 1
  %i.ap = zext i8 %i.ao to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %i.ap, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.5.0.insert.shift
  %i.aq = extractelement <4 x i8> %i.al, i64 2
  %i.ar = zext i8 %i.aq to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %i.ar, 8
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %i.as = extractelement <4 x i8> %i.al, i64 3
  %i.at = zext i8 %i.as to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %i.at
  store i16 78, ptr %i.aa, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 0, ptr %i.au, align 2, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.av, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.g, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.g ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.0
}

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #6

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #6

declare zeroext i1 @py_castfloat32(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @py_retval(...) local_unnamed_addr #6

declare void @py_newnotimplemented(ptr noundef) local_unnamed_addr #6

declare void @py_clearexc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare void @py_newstrv(ptr noundef, ptr, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @py_newbool(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare double @dmath_fabs(double noundef) local_unnamed_addr #6

declare void @py_newfloat(ptr noundef, double noundef) local_unnamed_addr #6

declare double @dmath_sqrt(double noundef) local_unnamed_addr #6

declare zeroext i1 @py_castfloat(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dmath_sincos(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @py_emplacedict(ptr noundef, ptr noundef) local_unnamed_addr #6

declare double @dmath_atan2(double noundef, double noundef) local_unnamed_addr #6

declare ptr @py_newtuple(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @py_tuple_len(ptr noundef) local_unnamed_addr #6

declare ptr @py_tuple_getitem(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @py_newnone(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @inverse(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load float, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.f = fmul float %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !13 ; 2 uses
  %i.k = fmul float %i.h, %i.j
  %i.l = fsub float %i.f, %i.k
  %i.m = fmul float %i.a, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !13 ; 2 uses
  %i.r = fmul float %i.e, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load float, ptr %i.s, align 4, !tbaa !13 ; 2 uses
  %i.u = fmul float %i.h, %i.t
  %i.v = fsub float %i.r, %i.u
  %i.w = fmul float %i.o, %i.v
  %i.x = fsub float %i.m, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !13
  %i.aa = fmul float %i.j, %i.q
  %i.ab = fmul float %i.c, %i.t
  %i.ac = fsub float %i.aa, %i.ab
  %i.ad = fmul float %i.z, %i.ac
  %i.ae = fadd float %i.ad, %i.x                  ; 2 uses
  %i.af = fpext float %i.ae to double
  %i.ag = tail call double @dmath_fabs(double noundef %i.af) #16
  %i.ah = fcmp uge double %i.ag, 1.000000e-04     ; 2 uses
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.aj = load <4 x float>, ptr %i.g, align 4, !tbaa !13 ; 7 uses
  %i.ak = load <4 x float>, ptr %i.n, align 4, !tbaa !13 ; 5 uses
  %i.al = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.aj, <4 x i32> <i32 0, i32 4, i32 1, i32 3>
  %i.an = fmul <4 x float> %i.am, %i.aj
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1>
  %i.ap = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 7, i32 3>
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 5, i32 6>
  %i.ar = fmul <4 x float> %i.ap, %i.aq
  %i.as = fsub <4 x float> %i.ao, %i.ar
  %i.at = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = fmul <4 x float> %i.au, %i.as
  store <4 x float> %i.av, ptr %1, align 4, !tbaa !13
  %i.aw = load float, ptr %0, align 4, !tbaa !13  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = extractelement <4 x float> %i.ak, i64 0
  %i.az = load <2 x float>, ptr %i.y, align 4, !tbaa !13 ; 2 uses
  %i.ba = load float, ptr %i.p, align 4, !tbaa !13
  %i.bb = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.bc = insertelement <4 x float> %i.bb, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bf = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bg = shufflevector <4 x float> %i.aj, <4 x float> %i.bf, <4 x i32> <i32 3, i32 5, i32 6, i32 1>
  %i.bh = fmul <4 x float> %i.be, %i.bg
  %i.bi = insertelement <4 x float> %i.bd, float %i.aw, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.al, i64 2
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bl = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.bm = fmul <4 x float> %i.bk, %i.bl
  %i.bn = fsub <4 x float> %i.bh, %i.bm
  %i.bo = fmul <4 x float> %i.au, %i.bn
  store <4 x float> %i.bo, ptr %i.ax, align 4, !tbaa !13
  %i.bp = fmul float %i.al, %i.aw
  %i.bq = fmul float %i.ay, %i.ba
  %i.br = fsub float %i.bp, %i.bq
  %i.bs = fmul float %i.ai, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.bs, ptr %i.bt, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.ah
}

declare i64 @py_toint(ptr noundef) local_unnamed_addr #6

declare i64 @cpy312__int_floordiv(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @cpy312__int_mod(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @py_newint(ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @py_castint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

declare { ptr, i32 } @py_tosv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #6

declare void @pk_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @c11_sbuf__py_submit(ptr noundef, ptr noundef) local_unnamed_addr #6

declare double @py_tofloat(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"_Bool", !4, i64 0}
!10 = !{!"py_TValue", !8, i64 0, !9, i64 2, !5, i64 4, !4, i64 8}
!11 = !{!10, !8, i64 0}
!12 = !{!10, !9, i64 2}
!13 = !{!4, !4, i64 0}
!14 = !{!"float", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!"double", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i64 0, i64 36, !13}
!21 = !{!"long", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTS13py_OpaqueName", !23, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{!28, !"matmul"}
!29 = distinct !{!29, !28, !"matmul: argument 0"}
!30 = !{!29}
!31 = distinct !{!31, !"matmul"}
!32 = distinct !{!32, !31, !"matmul: argument 0"}
!33 = !{!32}
!34 = distinct !{!34, !"trs"}
!35 = distinct !{!35, !34, !"trs: argument 0"}
!36 = !{!35}
!37 = distinct !{!37, !"trs"}
!38 = distinct !{!38, !37, !"trs: argument 0"}
!39 = !{!38}
!40 = !{!8, !8, i64 0}
!41 = !{!9, !9, i64 0}
!42 = !{!5, !5, i64 0}
!43 = !{i64 0, i64 2, !40, i64 2, i64 1, !41, i64 4, i64 4, !42, i64 8, i64 16, !13}
end_hunk_1
