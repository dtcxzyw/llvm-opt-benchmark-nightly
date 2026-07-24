inline.NumInlined: 1968
inline.NumDeleted: 731
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE11is_only_nanEv:bb.a
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE14special_valuesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE18is_only_minus_zeroEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 2
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8is_rangeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_setEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 8
  %i.f = fcmp oeq float %i.e, -inf
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4
  %i.i = fcmp oeq float %i.h, +inf
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef float @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE9range_minEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef float @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE9range_maxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE11is_constantEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %i.c, i1 %.not, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE18has_special_valuesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7has_nanEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = trunc i32 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE14has_minus_zeroEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden <2 x float> @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE5rangeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <4 x float>, ptr %i.a, align 8
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  ret <2 x float> %.sroa.0.4.vec.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8set_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef float @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE11set_elementEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp ult i8 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.sroa.0.0.i = select i1 %i.c, ptr %i.d, ptr %i.e
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.f
  %i.h = load float, ptr %i.g, align 4
  ret float %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE12set_elementsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  %i.c = icmp ult i8 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.sroa.3.0 = zext i8 %i.b to i64
  %.sroa.0.0 = select i1 %i.c, ptr %i.d, ptr %i.e
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef float @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 2
  %.not10 = icmp eq i32 %i.e, 0                   ; 3 uses
  switch i8 %i.b, label %bb.g [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %. = select i1 %.not10, float +qnan, float -0.000000e+00
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 8            ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %.sroa.speculated5 = select i1 %i.h, float %i.g, float -0.000000e+00
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp ult i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.sroa.0.0.i.i3 = select i1 %i.k, ptr %i.l, ptr %i.m
  %i.n = load float, ptr %.sroa.0.0.i.i3, align 4 ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %.sroa.speculated = select i1 %i.o, float %i.n, float -0.000000e+00
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.f, %bb.d
  %.0 = phi float [ %., %bb.b ], [ %i.g, %bb.c ], [ %.sroa.speculated5, %bb.d ], [ %.sroa.speculated, %bb.f ], [ %i.n, %bb.e ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef float @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 2
  %.not10 = icmp eq i32 %i.e, 0                   ; 3 uses
  switch i8 %i.b, label %bb.g [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %. = select i1 %.not10, float +qnan, float -0.000000e+00
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  %.sroa.speculated5 = select i1 %i.h, float %i.g, float -0.000000e+00
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 2               ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = icmp ult i8 %i.j, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.sroa.0.0.i.i3 = select i1 %i.l, ptr %i.m, ptr %i.n
  %i.o = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = load float, ptr %i.p, align 4            ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  %.sroa.speculated = select i1 %i.r, float %i.q, float -0.000000e+00
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.f, %bb.d
  %.0 = phi float [ %., %bb.b ], [ %i.g, %bb.c ], [ %.sroa.speculated5, %bb.d ], [ %.sroa.speculated, %bb.f ], [ %i.q, %bb.e ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden <2 x float> @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 2
  %.not10.i = icmp eq i32 %i.e, 0                 ; 3 uses
  switch i8 %i.b, label %bb.d [
    i8 2, label %bb.e
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 8            ; 3 uses
  br i1 %.not10.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %i.h, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 2               ; 3 uses
  %i.l = icmp ult i8 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.l, ptr %i.m, ptr %i.n ; 3 uses
  %i.o = load float, ptr %.sroa.0.0.i.i3.i, align 4 ; 3 uses
  br i1 %.not10.i, label %.thread18, label %bb.g

.thread18:                                        ; preds = %bb.c
  %i.p = zext i8 %i.k to i64
  %i.q = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load float, ptr %i.r, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit

bb.d:                                             ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a
  %..i = select i1 %.not10.i, float +qnan, float -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit

bb.f:                                             ; preds = %bb.b
  %i.t = fcmp olt float %i.g, 0.000000e+00
  %.sroa.speculated5.i = select i1 %i.t, float %i.g, float -0.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load float, ptr %i.u, align 4            ; 2 uses
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  %.sroa.speculated5.i5 = select i1 %i.w, float %i.v, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit

bb.g:                                             ; preds = %bb.c
  %i.x = fcmp olt float %i.o, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.x, float %i.o, float -0.000000e+00
  %i.y = zext i8 %i.k to i64
  %i.z = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load float, ptr %i.aa, align 4          ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  %.sroa.speculated.i3 = select i1 %i.ac, float %i.ab, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit: ; preds = %.thread18, %.thread, %bb.e, %bb.f, %bb.g
  %.0.i10 = phi float [ %..i, %bb.e ], [ %i.g, %.thread ], [ %.sroa.speculated5.i, %bb.f ], [ %.sroa.speculated.i, %bb.g ], [ %i.o, %.thread18 ]
  %.0.i4 = phi float [ %..i, %bb.e ], [ %i.i, %.thread ], [ %.sroa.speculated5.i5, %bb.f ], [ %.sroa.speculated.i3, %bb.g ], [ %i.s, %.thread18 ]
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.0.i10, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.0.i4, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE16try_get_constantEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %i.c, i1 %.not.i, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = or disjoint i64 %i.i, 4294967296
  %.sroa.2.0 = select i1 %i.f, i64 %i.j, i64 0
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE11is_constantEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = fcmp uno float %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.d, i1 %i.g, i1 false
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = fpext float %1 to double
  %i.j = tail call noundef i1 @llvm.is.fpclass.f64(double %i.i, /* (nzero) */ i32 32)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 2
  %i.p = icmp eq i32 %i.l, 2
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 2
  %i.t = icmp eq i8 %i.s, 1
  %.not.i.i = icmp eq i32 %i.l, 0
  %.not6.not = select i1 %i.t, i1 %.not.i.i, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load float, ptr %i.u, align 8
  %i.w = fcmp oeq float %i.v, %1
  %spec.select = select i1 %.not6.not, i1 %i.w, i1 false
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.1 = phi i1 [ %i.h, %bb.b ], [ %i.q, %bb.d ], [ %spec.select, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef float @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE16range_or_set_minEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2
  %i.f = icmp ult i8 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.f, ptr %i.g, ptr %i.h
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi ptr [ %i.c, %bb.c ], [ %.sroa.0.0.i.i, %bb.d ]
  %.0 = load float, ptr %.0.in, align 4
  ret float %.0
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef float @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE16range_or_set_maxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2               ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = icmp ult i8 %i.e, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.sroa.0.0.i.i = select i1 %i.g, ptr %i.h, ptr %i.i
  %i.j = getelementptr [4 x i8], ptr %.sroa.0.0.i.i, i64 %i.f
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi ptr [ %i.c, %bb.c ], [ %i.k, %bb.d ]
  %.0 = load float, ptr %.0.in, align 4
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden <2 x float> @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE19range_or_set_minmaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.c [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE16range_or_set_maxEv.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 2               ; 2 uses
  %i.g = icmp ult i8 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.sroa.0.0.i.i.i = select i1 %i.g, ptr %i.h, ptr %i.i ; 2 uses
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr [4 x i8], ptr %.sroa.0.0.i.i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE16range_or_set_maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE16range_or_set_maxEv.exit: ; preds = %bb.d, %bb.e
  %.0.i8.in = phi ptr [ %i.c, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.e ]
  %.0.in.i2 = phi ptr [ %i.d, %bb.d ], [ %i.l, %bb.e ]
  %.0.i8 = load float, ptr %.0.i8.in, align 4
  %.0.i3 = load float, ptr %.0.in.i2, align 4
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.0.i8, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.0.i3, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE11IsSubtypeOfERKS4_:bb.a
  %i.e = xor i32 %.fr112, -1
  %i.f = and i32 %i.b, %i.e
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %bb.r [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread
    i8 0, label %bb.c
    i8 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load float, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load float, ptr %i.n, align 8
  %i.p = fcmp ugt float %i.m, %i.o
  br i1 %i.p, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load float, ptr %i.s, align 4
  %i.u = fcmp ole float %i.r, %i.t
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1
  switch i8 %i.w, label %bb.r [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread
    i8 0, label %bb.m
    i8 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 2               ; 5 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = icmp ult i8 %i.y, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.sroa.0.0.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.ac ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2
  %.fr111 = freeze i8 %i.ae                       ; 3 uses
  %.not.i = icmp eq i8 %.fr111, 0
  %i.af = icmp ult i8 %.fr111, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.i.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 3 uses
  %wide.trip.count.i = zext i8 %.fr111 to i64     ; 3 uses
  %i.ai = trunc i32 %.fr112 to i1                 ; 2 uses
  %i.aj = and i32 %.fr112, 2
  %.not26 = icmp eq i32 %i.aj, 0                  ; 4 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ai, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %wide.trip.count161 = zext i8 %i.y to i64
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us.us
  %indvars.iv158 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next159, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us.us ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv158
  %i.al = load float, ptr %i.ak, align 4          ; 2 uses
  %i.am = fpext float %i.al to double
  %i.an = tail call noundef i1 @llvm.is.fpclass.f64(double %i.am, /* (nzero) */ i32 32)
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ao = fcmp uno float %i.al, 0.000000e+00
  br i1 %i.ao, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us.us, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread

bb.h:                                             ; preds = %.lr.ph.split.us.split.us
  br i1 %.not26, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us.us

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us.us: ; preds = %bb.g, %bb.h
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.lr.ph.split.us.split.us, !llvm.loop !219

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not26, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %wide.trip.count151 = zext i8 %i.y to i64
  br label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.preheader
  %indvars.iv148 = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader ], [ %indvars.iv.next149, %.lr.ph.split.us.split.split ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv148
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fpext float %i.aq to double
  %i.as = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ar, /* (nzero) */ i32 32) ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp ne i64 %indvars.iv.next149, %wide.trip.count151
  %or.cond.not = select i1 %i.as, i1 %exitcond152.not, i1 false
  br i1 %or.cond.not, label %.lr.ph.split.us.split.split, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, !llvm.loop !219

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count146 = zext i8 %i.y to i64       ; 3 uses
  br i1 %i.ai, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv143
  %i.au = load float, ptr %i.at, align 4          ; 3 uses
  %i.av = fpext float %i.au to double
  %i.aw = tail call noundef i1 @llvm.is.fpclass.f64(double %i.av, /* (nzero) */ i32 32)
  br i1 %i.aw, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split.us
  %i.ax = fcmp uno float %i.au, 0.000000e+00
  br i1 %i.ax, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48, label %.preheader.i.us46

.preheader.i.us46:                                ; preds = %bb.i, %bb.j
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i.us
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fcmp oeq float %i.az, %i.au
  br i1 %i.ba, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48, label %bb.j

bb.j:                                             ; preds = %.preheader.i.us46
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.preheader.i.us46, !llvm.loop !217

bb.k:                                             ; preds = %.lr.ph.split.split.us
  br i1 %.not26, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48: ; preds = %.preheader.i.us46, %bb.i, %bb.k
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.lr.ph.split.split.us, !llvm.loop !219

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not26, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us64
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us64 ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv138
  %i.bc = load float, ptr %i.bb, align 4          ; 3 uses
  %i.bd = fpext float %i.bc to double
  %i.be = tail call noundef i1 @llvm.is.fpclass.f64(double %i.bd, /* (nzero) */ i32 32)
  %i.bf = fcmp uno float %i.bc, 0.000000e+00
  %or.cond110 = or i1 %i.be, %i.bf                ; 2 uses
  br i1 %or.cond110, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread.loopexit130, label %.preheader.i.us60

.preheader.i.us60:                                ; preds = %.lr.ph.split.split.split.us, %bb.l
  %indvars.iv.i.us61 = phi i64 [ %indvars.iv.next.i.us62, %bb.l ], [ 0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i.us61
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fcmp oeq float %i.bh, %i.bc
  br i1 %i.bi, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us64, label %bb.l

bb.l:                                             ; preds = %.preheader.i.us60
  %indvars.iv.next.i.us62 = add nuw nsw i64 %indvars.iv.i.us61, 1 ; 2 uses
  %exitcond.not.i.us63 = icmp eq i64 %indvars.iv.next.i.us62, %wide.trip.count.i
  br i1 %exitcond.not.i.us63, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.preheader.i.us60, !llvm.loop !217

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us64: ; preds = %.preheader.i.us60
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count146
  br i1 %exitcond142.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread.loopexit130, label %.lr.ph.split.split.split.us, !llvm.loop !219

bb.m:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load float, ptr %i.bj, align 8          ; 2 uses
  %i.bl = and i32 %i.b, 2
  %.not10.i = icmp eq i32 %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bn = load i8, ptr %i.bm, align 2             ; 3 uses
  %i.bo = icmp ult i8 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.bo, ptr %i.bp, ptr %i.bq ; 3 uses
  %i.br = load float, ptr %.sroa.0.0.i.i3.i, align 4 ; 3 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit: ; preds = %bb.m
  %i.bs = fcmp ugt float %i.bk, %i.br
  br i1 %i.bs, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %bb.n

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit.thread: ; preds = %bb.m
  %i.bt = fcmp olt float %i.br, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.bt, float %i.br, float -0.000000e+00
  %i.bu = fcmp ugt float %i.bk, %.sroa.speculated.i
  br i1 %i.bu, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %bb.o

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit
  %i.bv = zext i8 %i.bn to i64
  %i.bw = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load float, ptr %i.bx, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit.thread
  %i.bz = zext i8 %i.bn to i64
  %i.ca = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  %i.cc = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cd = fcmp ogt float %i.cc, 0.000000e+00
  %.sroa.speculated.i17 = select i1 %i.cd, float %i.cc, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit: ; preds = %bb.n, %bb.o
  %.0.i18 = phi float [ %i.by, %bb.n ], [ %.sroa.speculated.i17, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = fcmp ole float %.0.i18, %i.cf
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24 ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv
  %i.ci = load float, ptr %i.ch, align 4          ; 3 uses
  %i.cj = fpext float %i.ci to double
  %i.ck = tail call noundef i1 @llvm.is.fpclass.f64(double %i.cj, /* (nzero) */ i32 32)
  br i1 %i.ck, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.split
  %i.cl = fcmp uno float %i.ci, 0.000000e+00
  br i1 %i.cl, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.preheader.i

bb.q:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.preheader.i, !llvm.loop !217

.preheader.i:                                     ; preds = %bb.p, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = fcmp oeq float %i.cn, %i.ci
  br i1 %i.co, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24, label %bb.q

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24: ; preds = %.preheader.i, %.lr.ph.split.split.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count146
  br i1 %exitcond.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread, label %.lr.ph.split.split.split, !llvm.loop !219

bb.r:                                             ; preds = %bb.f, %bb.b
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread.loopexit130: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us64, %.lr.ph.split.split.split.us
  %.1.ph131 = xor i1 %or.cond110, true
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread: ; preds = %bb.p, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24, %bb.q, %bb.l, %bb.k, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48, %bb.j, %.lr.ph.split.us.split.split, %bb.g, %bb.h, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us.us, %.lr.ph.split.us.split, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread.loopexit130, %.preheader, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit, %bb.f, %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit.thread ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ %i.u, %bb.e ], [ false, %bb.f ], [ %i.cg, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3maxEv.exit ], [ false, %bb.d ], [ false, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit ], [ false, %bb.g ], [ false, %bb.j ], [ %.1.ph131, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread.loopexit130 ], [ false, %bb.q ], [ true, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us48 ], [ false, %bb.l ], [ false, %.lr.ph.split.us.split ], [ %i.as, %.lr.ph.split.us.split.split ], [ true, %.preheader ], [ true, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24.us.us ], [ false, %bb.h ], [ false, %bb.k ], [ true, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf.exit.thread24 ], [ false, %bb.p ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE15LeastUpperBoundERKS4_S6_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::base::SmallVector.51", align 8 ; 16 uses
  %.sroa.787 = alloca [2 x i64], align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, %i.b                        ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.j = load float, ptr %i.i, align 8            ; 5 uses
  %i.k = fcmp oeq float %i.j, -inf
  %or.cond.i = select i1 %i.h, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load float, ptr %i.l, align 4            ; 3 uses
  %i.n = fcmp oeq float %i.m, +inf
  %or.cond = select i1 %or.cond.i, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit.thread: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1               ; 6 uses
  %i.q = icmp eq i8 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.s = load float, ptr %i.r, align 8            ; 5 uses
  %i.t = fcmp oeq float %i.s, -inf
  %or.cond.i35 = select i1 %i.q, i1 %i.t, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load float, ptr %i.u, align 4            ; 3 uses
  %i.w = fcmp oeq float %i.v, +inf
  %or.cond107 = select i1 %or.cond.i35, i1 %i.w, i1 false
  br i1 %or.cond107, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit36.thread

bb.b:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit.thread, %bb.a
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8, !alias.scope !220
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.x, align 4, !alias.scope !220
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %i.y, align 8, !alias.scope !220
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !220
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE5RangeEffjPNS0_4ZoneE.exit73

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit36.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit.thread
  %i.aa = icmp eq i8 %i.g, 1                      ; 3 uses
  %i.ab = icmp eq i8 %i.p, 1
  %i.ac = add i8 %i.g, -1
  %i.ad = icmp ult i8 %i.ac, 2                    ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit36.thread
  %i.ae = icmp eq i8 %i.p, 2                      ; 3 uses
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %bb.z

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6is_anyEv.exit36.thread
  br i1 %i.ad, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE16range_or_set_minEv.exit57

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.ag, ptr %4, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.aj, ptr %i.ai, align 8
  br i1 %i.aa, label %bb.f, label %_ZN2v84base13vector_appendINS0_11SmallVectorIfLm16ESaIfEEENS0_6VectorIKfEEEEvRT_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = load i8, ptr %i.ak, align 2             ; 5 uses
  %i.am = icmp ult i8 %i.al, 3
  %i.an = load ptr, ptr %i.i, align 8
  %.sroa.3.0.i = zext i8 %i.al to i64             ; 4 uses
  %.sroa.0.0.i = select i1 %i.am, ptr %i.i, ptr %i.an
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.i, 2
  %i.ao = icmp ugt i8 %i.al, 16
  br i1 %i.ao, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i.thread, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i.thread: ; preds = %bb.f
  call preserve_mostcc void @_ZN2v84base11SmallVectorIfLm16ESaIfEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef %.sroa.3.0.i)
  %.pre.i.i.i = load ptr, ptr %4, align 8         ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.sroa.3.0.i
  store ptr %i.ap, ptr %i.ah, align 8
  br label %bb.g

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.sroa.3.0.i
  store ptr %i.aq, ptr %i.ah, align 8
  %i.ar = icmp samesign ugt i8 %i.al, 1
  br i1 %i.ar, label %bb.g, label %bb.h, !prof !62

bb.g:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i.thread, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i
  %i.as = phi ptr [ %.pre.i.i.i, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i.thread ], [ %i.ag, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.as, ptr align 4 %.sroa.0.0.i, i64 %.idx.i, i1 false)
  %.pre = load i8, ptr %i.o, align 1
  br label %_ZN2v84base13vector_appendINS0_11SmallVectorIfLm16ESaIfEEENS0_6VectorIKfEEEEvRT_RKT0_.exit

bb.h:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i
  %i.at = icmp eq i8 %i.al, 1
  br i1 %i.at, label %bb.i, label %_ZN2v84base13vector_appendINS0_11SmallVectorIfLm16ESaIfEEENS0_6VectorIKfEEEEvRT_RKT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.au = load float, ptr %i.i, align 8
  store float %i.au, ptr %i.ag, align 8
  br label %_ZN2v84base13vector_appendINS0_11SmallVectorIfLm16ESaIfEEENS0_6VectorIKfEEEEvRT_RKT0_.exit

_ZN2v84base13vector_appendINS0_11SmallVectorIfLm16ESaIfEEENS0_6VectorIKfEEEEvRT_RKT0_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.av = phi i8 [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ %.pre, %bb.g ], [ %i.p, %bb.e ]
  %i.aw = icmp eq i8 %i.av, 1
  br i1 %i.aw, label %bb.j, label %_ZN2v84base13vector_appendINS0_11SmallVectorIfLm16ESaIfEEENS0_6VectorIKfEEEEvRT_RKT0_.exit44

bb.j:                                             ; preds = %_ZN2v84base13vector_appendINS0_11SmallVectorIfLm16ESaIfEEENS0_6VectorIKfEEEEvRT_RKT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ay = load i8, ptr %i.ax, align 2             ; 4 uses
  %i.az = icmp ult i8 %i.ay, 3
  %i.ba = load ptr, ptr %i.r, align 8
  %.sroa.3.0.i37 = zext i8 %i.ay to i64           ; 2 uses
  %.sroa.0.0.i38 = select i1 %i.az, ptr %i.r, ptr %i.ba
  %i.bb = load ptr, ptr %i.ah, align 8
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %.idx.i41 = shl nuw nsw i64 %.sroa.3.0.i37, 2
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = add nsw i64 %i.bg, %.sroa.3.0.i37       ; 3 uses
  %i.bi = load ptr, ptr %i.ai, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.be
  %i.bl = ashr exact i64 %i.bk, 2
  %i.bm = icmp ugt i64 %i.bh, %i.bl
  br i1 %i.bm, label %bb.k, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i42

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v84base11SmallVectorIfLm16ESaIfEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef %i.bh)
  %.pre.i.i.i43 = load ptr, ptr %4, align 8
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i42

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i.i42: ; preds = %bb.k, %bb.j
  %i.bn = phi ptr [ %.pre.i.i.i43, %bb.k ], [ %i.bc, %bb.j ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bh
  store ptr %i.bo, ptr %i.ah, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE9IntersectERKS4_S6_PNS0_4ZoneE:bb.a

bb.as:                                            ; preds = %bb.aq
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ex, i8 0, i64 23, i1 false), !alias.scope !276
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink107 = phi i8 [ 1, %bb.au ], [ 4, %bb.at ]
  store i8 %.sink107, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE21ReplacedSpecialValuesERKS4_j.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE21ReplacedSpecialValuesERKS4_j.exit: ; preds = %.thread101, %bb.f, %bb.d, %bb.c, %bb.ap, %bb.ar, %bb.av, %bb.ao, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 7) #17 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit [
    i8 2, label %bb.b
    i8 0, label %bb.e
    i8 1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 3) #17 ; 0 uses
  %i.h = load i32, ptr %i.d, align 4
  %i.i = and i32 %i.h, 2
  %.not.i = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = select i1 %.not.i, ptr @.str.22, ptr @.str.21
  %i.k = select i1 %.not.i, i64 0, i64 10
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef %i.k) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 9) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 1) #17 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load float, ptr %i.o, align 8
  %i.q = fpext float %i.p to double
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.q) #17 ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.11, i64 noundef 2) #17 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load float, ptr %i.t, align 4
  %i.v = fpext float %i.u to double
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, double noundef %i.v) #17
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.3, i64 noundef 1) #17 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %.not25 = icmp eq i32 %i.z, 0
  br i1 %.not25, label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i64 noundef 1) #17 ; 0 uses
  %i.ab = load i32, ptr %i.y, align 4
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 3) #17 ; 0 uses
  %i.ae = load i32, ptr %i.y, align 4
  %i.af = and i32 %i.ae, 2
  %.not.i17 = icmp eq i32 %i.af, 0                ; 2 uses
  %i.ag = select i1 %.not.i17, ptr @.str.22, ptr @.str.21
  %i.ah = select i1 %.not.i17, i64 0, i64 10
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ag, i64 noundef %i.ah) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 9) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.i:                                             ; preds = %bb.a
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #17 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.am = load i8, ptr %i.al, align 2             ; 2 uses
  %.not27 = icmp eq i8 %i.am, 0
  br i1 %.not27, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = icmp ult i8 %i.am, 3
  %i.ap = load ptr, ptr %i.an, align 8
  %.sroa.0.0.i.i.peel = select i1 %i.ao, ptr %i.an, ptr %i.ap
  %phi.call.peel.pre = load float, ptr %.sroa.0.0.i.i.peel, align 4
  %i.aq = fpext float %phi.call.peel.pre to double
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.aq) #17 ; 0 uses
  %i.as = load i8, ptr %i.al, align 2
  %i.at = icmp ugt i8 %i.as, 1
  br i1 %i.at, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4
  %.not24 = icmp eq i32 %i.av, 0
  br i1 %.not24, label %bb.n, label %bb.k

.peel.next:                                       ; preds = %bb.j, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.j ] ; 2 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 2) #17 ; 0 uses
  %i.ax = load i8, ptr %i.al, align 2
  %i.ay = icmp ult i8 %i.ax, 3
  %i.az = load ptr, ptr %i.an, align 8
  %.sroa.0.0.i.i19 = select i1 %i.ay, ptr %i.an, ptr %i.az
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %indvars.iv
  %phi.call = load float, ptr %i.ba, align 4
  %i.bb = fpext float %phi.call to double
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bb) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i8, ptr %i.al, align 2
  %i.be = zext i8 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.peel.next, label %._crit_edge, !llvm.loop !279

bb.k:                                             ; preds = %._crit_edge
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i64 noundef 2) #17 ; 0 uses
  %i.bh = load i32, ptr %i.au, align 4
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 3) #17 ; 0 uses
  %i.bk = load i32, ptr %i.au, align 4
  %i.bl = and i32 %i.bk, 2
  %.not.i20 = icmp eq i32 %i.bl, 0                ; 2 uses
  %i.bm = select i1 %.not.i20, ptr @.str.22, ptr @.str.21
  %i.bn = select i1 %.not.i20, i64 0, i64 10
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bm, i64 noundef %i.bn) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 9) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.n:                                             ; preds = %._crit_edge
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit: ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %bb.d, %bb.c, %bb.n, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE14AllocateOnHeapEPNS0_7FactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE29NewTurboshaftFloat64RangeTypeEjjddNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef 0, double noundef +inf, double noundef -inf, i8 noundef zeroext 0) #17
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 2
  %.not10.i.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8            ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load float, ptr %i.i, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt float %i.h, 0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.k, float %i.h, float -0.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = fcmp ogt float %i.m, 0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %i.n, float %i.m, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit: ; preds = %.thread.i, %bb.d
  %.0.i10.i = phi float [ %.sroa.speculated5.i.i, %bb.d ], [ %i.h, %.thread.i ]
  %.0.i4.i = phi float [ %.sroa.speculated5.i5.i, %bb.d ], [ %i.j, %.thread.i ]
  %i.o = fpext float %.0.i10.i to double
  %i.p = fpext float %.0.i4.i to double
  %i.q = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE29NewTurboshaftFloat64RangeTypeEjjddNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef 0, double noundef %i.o, double noundef %i.p, i8 noundef zeroext 0) #17
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.s = load i8, ptr %i.r, align 2
  %i.t = zext i8 %i.s to i32
  %i.u = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE27NewTurboshaftFloat64SetTypeEjjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef %i.t, i8 noundef zeroext 0) #17 ; 3 uses
  %i.v = load i8, ptr %i.r, align 2               ; 2 uses
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.x = phi i8 [ %i.v, %.lr.ph ], [ %i.ai, %bb.f ]
  %i.y = load i64, ptr %i.u, align 8
  %i.z = icmp ult i8 %i.x, 3
  %i.aa = load ptr, ptr %i.w, align 8
  %.sroa.0.0.i.i = select i1 %i.z, ptr %i.w, ptr %i.aa
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fpext float %i.ac to double
  %i.ae = shl nuw nsw i64 %indvars.iv, 3
  %i.af = add nuw nsw i64 %i.ae, 15
  %i.ag = add i64 %i.y, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store double %i.ad, ptr %i.ah, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i8, ptr %i.r, align 2              ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.f, label %.loopexit, !llvm.loop !280

.loopexit:                                        ; preds = %bb.f, %bb.e, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit, %bb.b
  %.sroa.013.0 = phi ptr [ %i.e, %bb.b ], [ %i.q, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit ], [ %i.u, %bb.e ], [ %i.u, %bb.f ]
  ret ptr %.sroa.013.0
}

declare ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE29NewTurboshaftFloat64RangeTypeEjjddNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, double noundef, double noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE27NewTurboshaftFloat64SetTypeEjjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17OnlySpecialValuesEj(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store <4 x i8> <i8 5, i8 2, i8 0, i8 0>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3NaNEv(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store <4 x i8> <i8 5, i8 2, i8 0, i8 0>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE9MinusZeroEv(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store <4 x i8> <i8 5, i8 2, i8 0, i8 0>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3AnyEj(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit:
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8, !alias.scope !281
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !alias.scope !281
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %i.b, align 8, !alias.scope !281
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [1 x double], align 8             ; 4 uses
  %i.b = tail call noundef i1 @llvm.is.fpclass.f64(double %1, /* (nzero) */ i32 32)
  br i1 %i.b, label %bb.b, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %3, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit: ; preds = %bb.a, %bb.b
  %.0 = phi double [ 0.000000e+00, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %i.d = tail call noundef i1 @llvm.is.fpclass.f64(double %2, /* (nzero) */ i32 32)
  br i1 %i.d, label %bb.c, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5, !prof !17

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit
  %i.e = or i32 %.0.i, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit, %bb.c
  %.014 = phi double [ 0.000000e+00, %bb.c ], [ %2, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit ] ; 2 uses
  %.0.i4 = phi i32 [ %i.e, %bb.c ], [ %.0.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit ] ; 2 uses
  %i.f = fcmp oeq double %.0, %.014
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store double %.0, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0, ptr nonnull %i.a, i64 1, i32 noundef %.0.i4, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i4, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.014, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i1 @llvm.is.fpclass.f64(double %1, /* (nzero) */ i32 32)
  br i1 %i.a, label %bb.b, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i, !prof !17

bb.b:                                             ; preds = %bb.a
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i: ; preds = %bb.b, %bb.a
  %.0.i = phi double [ 0.000000e+00, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ 2, %bb.b ], [ 0, %bb.a ]
  %i.b = tail call noundef i1 @llvm.is.fpclass.f64(double %2, /* (nzero) */ i32 32)
  br i1 %i.b, label %bb.c, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, !prof !17

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  %.014.i = phi double [ 0.000000e+00, %bb.c ], [ %2, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ] ; 2 uses
  %.0.i4.i = phi i32 [ 2, %bb.c ], [ %.0.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ] ; 2 uses
  %i.c = fcmp oeq double %.0.i, %.014.i
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  %i.d = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i, /* (nzero) */ i32 32)
  br i1 %i.d, label %bb.e, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit: ; preds = %bb.d, %bb.e
  %.sroa.016.0.i = phi double [ 0.000000e+00, %bb.e ], [ %.0.i, %bb.d ]
  %.0.i.i4 = phi i32 [ 2, %bb.e ], [ %.0.i4.i, %bb.d ]
  store <4 x i8> <i8 5, i8 1, i8 1, i8 0>, ptr %0, align 8, !alias.scope !284
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i.i4, ptr %i.e, align 4, !alias.scope !284
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8, !alias.scope !287
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i4.i, ptr %i.f, align 4, !alias.scope !287
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.0.i, ptr %i.g, align 8, !alias.scope !287
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit, %bb.f
  %.sink5 = phi i64 [ 8, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ 16, %bb.f ]
  %.sroa.016.0.i.sink = phi double [ %.sroa.016.0.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ %.014.i, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink5
  store double %.sroa.016.0.i.sink, ptr %i.h, align 8
  ret void
}
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE11is_only_nanEv:bb.a
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE14special_valuesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE18is_only_minus_zeroEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 2
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8is_rangeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_setEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp oeq double %i.e, -inf
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8
  %i.i = fcmp oeq double %i.h, +inf
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE9range_minEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE9range_maxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE11is_constantEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %i.c, i1 %.not, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE18has_special_valuesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7has_nanEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = trunc i32 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE14has_minus_zeroEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { double, double } @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE5rangeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %i.b, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.d, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8set_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE11set_elementEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp ult i8 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.sroa.0.0.i = select i1 %i.c, ptr %i.d, ptr %i.e
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.f
  %i.h = load double, ptr %i.g, align 8
  ret double %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE12set_elementsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  %i.c = icmp ult i8 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.sroa.3.0 = zext i8 %i.b to i64
  %.sroa.0.0 = select i1 %i.c, ptr %i.d, ptr %i.e
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 2
  %.not10 = icmp eq i32 %i.e, 0                   ; 3 uses
  switch i8 %i.b, label %bb.g [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %. = select i1 %.not10, double +qnan, double -0.000000e+00
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = fcmp olt double %i.g, 0.000000e+00
  %.sroa.speculated5 = select i1 %i.h, double %i.g, double -0.000000e+00
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp ult i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.sroa.0.0.i.i3 = select i1 %i.k, ptr %i.l, ptr %i.m
  %i.n = load double, ptr %.sroa.0.0.i.i3, align 8 ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fcmp olt double %i.n, 0.000000e+00
  %.sroa.speculated = select i1 %i.o, double %i.n, double -0.000000e+00
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.f, %bb.d
  %.0 = phi double [ %., %bb.b ], [ %i.g, %bb.c ], [ %.sroa.speculated5, %bb.d ], [ %.sroa.speculated, %bb.f ], [ %i.n, %bb.e ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 2
  %.not10 = icmp eq i32 %i.e, 0                   ; 3 uses
  switch i8 %i.b, label %bb.g [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %. = select i1 %.not10, double +qnan, double -0.000000e+00
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %.sroa.speculated5 = select i1 %i.h, double %i.g, double -0.000000e+00
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 2               ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = icmp ult i8 %i.j, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.sroa.0.0.i.i3 = select i1 %i.l, ptr %i.m, ptr %i.n
  %i.o = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load double, ptr %i.p, align 8           ; 3 uses
  br i1 %.not10, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp ogt double %i.q, 0.000000e+00
  %.sroa.speculated = select i1 %i.r, double %i.q, double -0.000000e+00
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.f, %bb.d
  %.0 = phi double [ %., %bb.b ], [ %i.g, %bb.c ], [ %.sroa.speculated5, %bb.d ], [ %.sroa.speculated, %bb.f ], [ %i.q, %bb.e ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { double, double } @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 2
  %.not10.i = icmp eq i32 %i.e, 0                 ; 3 uses
  switch i8 %i.b, label %bb.d [
    i8 2, label %bb.e
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  br i1 %.not10.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 2               ; 3 uses
  %i.l = icmp ult i8 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.l, ptr %i.m, ptr %i.n ; 3 uses
  %i.o = load double, ptr %.sroa.0.0.i.i3.i, align 8 ; 3 uses
  br i1 %.not10.i, label %.thread17, label %bb.g

.thread17:                                        ; preds = %bb.c
  %i.p = zext i8 %i.k to i64
  %i.q = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load double, ptr %i.r, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.d:                                             ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a
  %..i = select i1 %.not10.i, double +qnan, double -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.f:                                             ; preds = %bb.b
  %i.t = fcmp olt double %i.g, 0.000000e+00
  %.sroa.speculated5.i = select i1 %i.t, double %i.g, double -0.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load double, ptr %i.u, align 8           ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  %.sroa.speculated5.i5 = select i1 %i.w, double %i.v, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.g:                                             ; preds = %bb.c
  %i.x = fcmp olt double %i.o, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.x, double %i.o, double -0.000000e+00
  %i.y = zext i8 %i.k to i64
  %i.z = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load double, ptr %i.aa, align 8         ; 2 uses
  %i.ac = fcmp ogt double %i.ab, 0.000000e+00
  %.sroa.speculated.i3 = select i1 %i.ac, double %i.ab, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit: ; preds = %.thread17, %.thread, %bb.e, %bb.f, %bb.g
  %.0.i9 = phi double [ %..i, %bb.e ], [ %i.g, %.thread ], [ %.sroa.speculated5.i, %bb.f ], [ %.sroa.speculated.i, %bb.g ], [ %i.o, %.thread17 ]
  %.0.i4 = phi double [ %..i, %bb.e ], [ %i.i, %.thread ], [ %.sroa.speculated5.i5, %bb.f ], [ %.sroa.speculated.i3, %bb.g ], [ %i.s, %.thread17 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.0.i9, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.0.i4, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { double, i8 } @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE16try_get_constantEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %i.c, i1 %.not.i, i1 false     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8
  %.sroa.0.0 = select i1 %i.f, double %i.h, double undef
  %.sroa.2.0 = zext i1 %i.f to i8
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { double, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE11is_constantEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = fcmp uno double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.d, i1 %i.g, i1 false
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i1 @llvm.is.fpclass.f64(double %1, /* (nzero) */ i32 32)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 2
  %i.o = icmp eq i32 %i.k, 2
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 2
  %i.s = icmp eq i8 %i.r, 1
  %.not.i.i = icmp eq i32 %i.k, 0
  %.not7.not = select i1 %i.s, i1 %.not.i.i, i1 false
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load double, ptr %i.t, align 8
  %i.v = fcmp oeq double %i.u, %1
  %spec.select = select i1 %.not7.not, i1 %i.v, i1 false
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.1 = phi i1 [ %i.h, %bb.b ], [ %i.p, %bb.d ], [ %spec.select, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE16range_or_set_minEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2
  %i.f = icmp ult i8 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.f, ptr %i.g, ptr %i.h
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi ptr [ %i.c, %bb.c ], [ %.sroa.0.0.i.i, %bb.d ]
  %.0 = load double, ptr %.0.in, align 8
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE16range_or_set_maxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2               ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = icmp ult i8 %i.e, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.sroa.0.0.i.i = select i1 %i.g, ptr %i.h, ptr %i.i
  %i.j = getelementptr [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.f
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi ptr [ %i.c, %bb.c ], [ %i.k, %bb.d ]
  %.0 = load double, ptr %.0.in, align 8
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { double, double } @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE19range_or_set_minmaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.c [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE16range_or_set_maxEv.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 2               ; 2 uses
  %i.g = icmp ult i8 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.sroa.0.0.i.i.i = select i1 %i.g, ptr %i.h, ptr %i.i ; 2 uses
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE16range_or_set_maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE16range_or_set_maxEv.exit: ; preds = %bb.d, %bb.e
  %.0.i7.in = phi ptr [ %i.c, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.e ]
  %.0.in.i2 = phi ptr [ %i.d, %bb.d ], [ %i.l, %bb.e ]
  %.0.i7 = load double, ptr %.0.i7.in, align 8
  %.0.i3 = load double, ptr %.0.in.i2, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.0.i7, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.0.i3, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
begin_hunk_4_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE11IsSubtypeOfERKS4_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp ugt double %i.m, %i.o
  br i1 %i.p, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load double, ptr %i.s, align 8
  %i.u = fcmp ole double %i.r, %i.t
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1
  switch i8 %i.w, label %bb.p [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread
    i8 0, label %bb.k
    i8 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 2               ; 5 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = icmp ult i8 %i.y, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.sroa.0.0.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.ac ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2
  %.fr127 = freeze i8 %i.ae                       ; 3 uses
  %.not.i = icmp eq i8 %.fr127, 0
  %i.af = icmp ult i8 %.fr127, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.i.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 4 uses
  %wide.trip.count.i = zext i8 %.fr127 to i64     ; 4 uses
  %i.ai = trunc i32 %.fr128 to i1                 ; 2 uses
  %i.aj = and i32 %.fr128, 2
  %.not26 = icmp eq i32 %i.aj, 0                  ; 4 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ai, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %wide.trip.count195 = zext i8 %i.y to i64       ; 2 uses
  br i1 %.not26, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.split.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph.split.us.split.us.split.us ], [ 0, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv192
  %i.al = load double, ptr %i.ak, align 8
  %i.am = fcmp uno double %i.al, 0.000000e+00     ; 2 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp ne i64 %indvars.iv.next193, %wide.trip.count195
  %or.cond.not = select i1 %i.am, i1 %exitcond196.not, i1 false
  br i1 %or.cond.not, label %.lr.ph.split.us.split.us.split.us, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, !llvm.loop !302

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.split
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph.split.us.split.us.split ], [ 0, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv187
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ao, /* (nan nzero) */ i32 35) ; 2 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp ne i64 %indvars.iv.next188, %wide.trip.count195
  %or.cond234.not = select i1 %i.ap, i1 %exitcond191.not, i1 false
  br i1 %or.cond234.not, label %.lr.ph.split.us.split.us.split, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, !llvm.loop !302

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not26, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %wide.trip.count180 = zext i8 %i.y to i64
  br label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.preheader
  %indvars.iv177 = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader ], [ %indvars.iv.next178, %.lr.ph.split.us.split.split ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv177
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ar, /* (nzero) */ i32 32) ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp ne i64 %indvars.iv.next178, %wide.trip.count180
  %or.cond236.not = select i1 %i.as, i1 %exitcond181.not, i1 false
  br i1 %or.cond236.not, label %.lr.ph.split.us.split.split, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, !llvm.loop !302

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count175 = zext i8 %i.y to i64       ; 4 uses
  br i1 %i.ai, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not26, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48.us ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv172
  %i.au = load double, ptr %i.at, align 8         ; 3 uses
  %i.av = tail call noundef i1 @llvm.is.fpclass.f64(double %i.au, /* (nzero) */ i32 32) ; 2 uses
  br i1 %i.av, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit147, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.aw = fcmp uno double %i.au, 0.000000e+00
  br i1 %i.aw, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48.us, label %.preheader.i.us46.us

.preheader.i.us46.us:                             ; preds = %bb.g, %bb.h
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i.us.us
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = fcmp oeq double %i.ay, %i.au
  br i1 %i.az, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48.us, label %bb.h

bb.h:                                             ; preds = %.preheader.i.us46.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.preheader.i.us46.us, !llvm.loop !300

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48.us: ; preds = %.preheader.i.us46.us, %bb.g
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit147, label %.lr.ph.split.split.us.split.us, !llvm.loop !302

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48 ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv167
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = tail call noundef i1 @llvm.is.fpclass.f64(double %i.bb, /* (nan nzero) */ i32 35)
  br i1 %i.bc, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48, label %.preheader.i.us46

.preheader.i.us46:                                ; preds = %.lr.ph.split.split.us.split, %bb.i
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.i ], [ 0, %.lr.ph.split.split.us.split ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i.us
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = fcmp oeq double %i.be, %i.bb
  br i1 %i.bf, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48, label %bb.i

bb.i:                                             ; preds = %.preheader.i.us46
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.preheader.i.us46, !llvm.loop !300

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48: ; preds = %.preheader.i.us46, %.lr.ph.split.split.us.split
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count175
  br i1 %exitcond171.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.lr.ph.split.split.us.split, !llvm.loop !302

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not26, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us64
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us64 ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv162
  %i.bh = load double, ptr %i.bg, align 8         ; 2 uses
  %i.bi = tail call noundef i1 @llvm.is.fpclass.f64(double %i.bh, /* (nan nzero) */ i32 35) ; 2 uses
  br i1 %i.bi, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit154, label %.preheader.i.us60

.preheader.i.us60:                                ; preds = %.lr.ph.split.split.split.us, %bb.j
  %indvars.iv.i.us61 = phi i64 [ %indvars.iv.next.i.us62, %bb.j ], [ 0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i.us61
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fcmp oeq double %i.bk, %i.bh
  br i1 %i.bl, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us64, label %bb.j

bb.j:                                             ; preds = %.preheader.i.us60
  %indvars.iv.next.i.us62 = add nuw nsw i64 %indvars.iv.i.us61, 1 ; 2 uses
  %exitcond.not.i.us63 = icmp eq i64 %indvars.iv.next.i.us62, %wide.trip.count.i
  br i1 %exitcond.not.i.us63, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.preheader.i.us60, !llvm.loop !300

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us64: ; preds = %.preheader.i.us60
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count175
  br i1 %exitcond166.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit154, label %.lr.ph.split.split.split.us, !llvm.loop !302

bb.k:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load double, ptr %i.bm, align 8         ; 2 uses
  %i.bo = and i32 %i.b, 2
  %.not10.i = icmp eq i32 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bq = load i8, ptr %i.bp, align 2             ; 3 uses
  %i.br = icmp ult i8 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.br, ptr %i.bs, ptr %i.bt ; 3 uses
  %i.bu = load double, ptr %.sroa.0.0.i.i3.i, align 8 ; 3 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit: ; preds = %bb.k
  %i.bv = fcmp ugt double %i.bn, %i.bu
  br i1 %i.bv, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %bb.l

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread: ; preds = %bb.k
  %i.bw = fcmp olt double %i.bu, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.bw, double %i.bu, double -0.000000e+00
  %i.bx = fcmp ugt double %i.bn, %.sroa.speculated.i
  br i1 %i.bx, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %bb.m

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  %i.by = zext i8 %i.bq to i64
  %i.bz = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load double, ptr %i.ca, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.m:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread
  %i.cc = zext i8 %i.bq to i64
  %i.cd = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load double, ptr %i.ce, align 8         ; 2 uses
  %i.cg = fcmp ogt double %i.cf, 0.000000e+00
  %.sroa.speculated.i17 = select i1 %i.cg, double %i.cf, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit: ; preds = %bb.l, %bb.m
  %.0.i18 = phi double [ %i.cb, %bb.l ], [ %.sroa.speculated.i17, %bb.m ]
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load double, ptr %i.ch, align 8
  %i.cj = fcmp ole double %.0.i18, %i.ci
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24 ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv
  %i.cl = load double, ptr %i.ck, align 8         ; 3 uses
  %i.cm = tail call noundef i1 @llvm.is.fpclass.f64(double %i.cl, /* (nzero) */ i32 32)
  br i1 %i.cm, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split.split
  %i.cn = fcmp uno double %i.cl, 0.000000e+00
  br i1 %i.cn, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.preheader.i

bb.o:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.preheader.i, !llvm.loop !300

.preheader.i:                                     ; preds = %bb.n, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i
  %i.cp = load double, ptr %i.co, align 8
  %i.cq = fcmp oeq double %i.cp, %i.cl
  br i1 %i.cq, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24, label %bb.o

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24: ; preds = %.preheader.i, %.lr.ph.split.split.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count175
  br i1 %exitcond.not, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread, label %.lr.ph.split.split.split, !llvm.loop !302

bb.p:                                             ; preds = %bb.f, %bb.b
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit147: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48.us, %.lr.ph.split.split.us.split.us
  %.1.ph148 = xor i1 %i.av, true
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit154: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us64, %.lr.ph.split.split.split.us
  %.1.ph155 = xor i1 %i.bi, true
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread: ; preds = %bb.n, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24, %bb.o, %bb.j, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48, %bb.i, %bb.h, %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.us.split, %.lr.ph.split.us.split.us.split.us, %.lr.ph.split.us.split, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit154, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit147, %.preheader, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, %bb.f, %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ %i.u, %bb.e ], [ false, %bb.f ], [ %i.cj, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ false, %bb.d ], [ false, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ %.1.ph148, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit147 ], [ true, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24.us48 ], [ %.1.ph155, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread.loopexit154 ], [ false, %bb.h ], [ false, %bb.o ], [ %i.ap, %.lr.ph.split.us.split.us.split ], [ %i.as, %.lr.ph.split.us.split.split ], [ false, %bb.j ], [ false, %.lr.ph.split.us.split ], [ true, %.preheader ], [ %i.am, %.lr.ph.split.us.split.us.split.us ], [ false, %bb.i ], [ false, %bb.n ], [ true, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd.exit.thread24 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE15LeastUpperBoundERKS4_S6_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::base::SmallVector.79", align 8 ; 15 uses
  %.sroa.787 = alloca [2 x i64], align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, %i.b                        ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = load double, ptr %i.i, align 8           ; 6 uses
  %i.k = fcmp oeq double %i.j, -inf
  %or.cond.i = select i1 %i.h, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load double, ptr %i.l, align 8           ; 3 uses
  %i.n = fcmp oeq double %i.m, +inf
  %or.cond = select i1 %or.cond.i, i1 %i.n, i1 false
  %i.o = bitcast double %i.j to i64
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  br i1 %or.cond, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit.thread: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1               ; 6 uses
  %i.s = icmp eq i8 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.u = load double, ptr %i.t, align 8           ; 6 uses
  %i.v = fcmp oeq double %i.u, -inf
  %or.cond.i35 = select i1 %i.s, i1 %i.v, i1 false
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load double, ptr %i.w, align 8           ; 3 uses
  %i.y = fcmp oeq double %i.x, +inf
  %or.cond107 = select i1 %or.cond.i35, i1 %i.y, i1 false
  %i.z = bitcast double %i.u to i64
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  br i1 %or.cond107, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit36.thread

bb.b:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit.thread, %bb.a
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8, !alias.scope !303
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.ab, align 4, !alias.scope !303
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %i.ac, align 8, !alias.scope !303
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit73

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit36.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit.thread
  %i.ad = icmp eq i8 %i.g, 1                      ; 2 uses
  %i.ae = icmp eq i8 %i.r, 1
  %i.af = add i8 %i.g, -1
  %i.ag = icmp ult i8 %i.af, 2                    ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit36.thread
  %i.ah = icmp eq i8 %i.r, 2                      ; 3 uses
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.z

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6is_anyEv.exit36.thread
  br i1 %i.ag, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE16range_or_set_maxEv.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.aj, ptr %4, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 152
  store ptr %i.am, ptr %i.al, align 8
  br i1 %i.ad, label %bb.f, label %_ZN2v84base13vector_appendINS0_11SmallVectorIdLm16ESaIdEEENS0_6VectorIKdEEEEvRT_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ao = load i8, ptr %i.an, align 2             ; 5 uses
  %i.ap = icmp ult i8 %i.ao, 3
  %.sroa.3.0.i = zext i8 %i.ao to i64             ; 4 uses
  %.sroa.0.0.i = select i1 %i.ap, ptr %i.i, ptr %i.p
  %.idx.i = shl nuw nsw i64 %.sroa.3.0.i, 3
  %i.aq = icmp ugt i8 %i.ao, 16
  br i1 %i.aq, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i.thread, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i.thread: ; preds = %bb.f
  call preserve_mostcc void @_ZN2v84base11SmallVectorIdLm16ESaIdEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %4, i64 noundef %.sroa.3.0.i)
  %.pre.i.i.i = load ptr, ptr %4, align 8         ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %.sroa.3.0.i
  store ptr %i.ar, ptr %i.ak, align 8
  br label %bb.g

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.f
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.3.0.i
  store ptr %i.as, ptr %i.ak, align 8
  %i.at = icmp samesign ugt i8 %i.ao, 1
  br i1 %i.at, label %bb.g, label %bb.h, !prof !62

bb.g:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i.thread, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i
  %i.au = phi ptr [ %.pre.i.i.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i.thread ], [ %i.aj, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %.sroa.0.0.i, i64 %.idx.i, i1 false)
  %.pre = load i8, ptr %i.q, align 1
  br label %_ZN2v84base13vector_appendINS0_11SmallVectorIdLm16ESaIdEEENS0_6VectorIKdEEEEvRT_RKT0_.exit

bb.h:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i
  %i.av = icmp eq i8 %i.ao, 1
  br i1 %i.av, label %bb.i, label %_ZN2v84base13vector_appendINS0_11SmallVectorIdLm16ESaIdEEENS0_6VectorIKdEEEEvRT_RKT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load double, ptr %i.i, align 8
  store double %i.aw, ptr %i.aj, align 8
  br label %_ZN2v84base13vector_appendINS0_11SmallVectorIdLm16ESaIdEEENS0_6VectorIKdEEEEvRT_RKT0_.exit

_ZN2v84base13vector_appendINS0_11SmallVectorIdLm16ESaIdEEENS0_6VectorIKdEEEEvRT_RKT0_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.ax = phi i8 [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %.pre, %bb.g ], [ %i.r, %bb.e ]
  %i.ay = icmp eq i8 %i.ax, 1
  br i1 %i.ay, label %bb.j, label %_ZN2v84base13vector_appendINS0_11SmallVectorIdLm16ESaIdEEENS0_6VectorIKdEEEEvRT_RKT0_.exit44

bb.j:                                             ; preds = %_ZN2v84base13vector_appendINS0_11SmallVectorIdLm16ESaIdEEENS0_6VectorIKdEEEEvRT_RKT0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ba = load i8, ptr %i.az, align 2             ; 4 uses
  %i.bb = icmp ult i8 %i.ba, 3
  %i.bc = load ptr, ptr %i.t, align 8
  %.sroa.3.0.i37 = zext i8 %i.ba to i64           ; 2 uses
  %.sroa.0.0.i38 = select i1 %i.bb, ptr %i.t, ptr %i.bc
  %i.bd = load ptr, ptr %i.ak, align 8
  %i.be = load ptr, ptr %4, align 8               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %.idx.i41 = shl nuw nsw i64 %.sroa.3.0.i37, 3
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = add nsw i64 %i.bi, %.sroa.3.0.i37       ; 3 uses
  %i.bk = load ptr, ptr %i.al, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.bg
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = icmp ugt i64 %i.bj, %i.bn
  br i1 %i.bo, label %bb.k, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i42

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v84base11SmallVectorIdLm16ESaIdEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %4, i64 noundef %i.bj)
  %.pre.i.i.i43 = load ptr, ptr %4, align 8
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i42

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i42: ; preds = %bb.k, %bb.j
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE9IntersectERKS4_S6_PNS0_4ZoneE:bb.a
  store double %.sroa.speculated70, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.58") align 8 %0, ptr nonnull %i.a, i64 1, i32 noundef %i.f, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE21ReplacedSpecialValuesERKS4_j.exit

bb.aq:                                            ; preds = %bb.ao
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ep, i8 0, i64 23, i1 false), !alias.scope !359
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sink105 = phi i8 [ 1, %bb.as ], [ 5, %bb.ar ]
  store i8 %.sink105, ptr %0, align 8
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE21ReplacedSpecialValuesERKS4_j.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE21ReplacedSpecialValuesERKS4_j.exit: ; preds = %.thread99, %bb.f, %bb.d, %bb.c, %bb.an, %bb.ap, %bb.at, %bb.am, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 7) #17 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit [
    i8 2, label %bb.b
    i8 0, label %bb.e
    i8 1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 3) #17 ; 0 uses
  %i.h = load i32, ptr %i.d, align 4
  %i.i = and i32 %i.h, 2
  %.not.i = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = select i1 %.not.i, ptr @.str.22, ptr @.str.21
  %i.k = select i1 %.not.i, i64 0, i64 10
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef %i.k) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 9) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 1) #17 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load double, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.p) #17 ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.11, i64 noundef 2) #17 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load double, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, double noundef %i.t) #17
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.3, i64 noundef 1) #17 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4
  %.not25 = icmp eq i32 %i.x, 0
  br i1 %.not25, label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i64 noundef 1) #17 ; 0 uses
  %i.z = load i32, ptr %i.w, align 4
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 3) #17 ; 0 uses
  %i.ac = load i32, ptr %i.w, align 4
  %i.ad = and i32 %i.ac, 2
  %.not.i17 = icmp eq i32 %i.ad, 0                ; 2 uses
  %i.ae = select i1 %.not.i17, ptr @.str.22, ptr @.str.21
  %i.af = select i1 %.not.i17, i64 0, i64 10
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ae, i64 noundef %i.af) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 9) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.i:                                             ; preds = %bb.a
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #17 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 2             ; 2 uses
  %.not27 = icmp eq i8 %i.ak, 0
  br i1 %.not27, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.am = icmp ult i8 %i.ak, 3
  %i.an = load ptr, ptr %i.al, align 8
  %.sroa.0.0.i.i.peel = select i1 %i.am, ptr %i.al, ptr %i.an
  %phi.call.peel.pre = load double, ptr %.sroa.0.0.i.i.peel, align 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %phi.call.peel.pre) #17 ; 0 uses
  %i.ap = load i8, ptr %i.aj, align 2
  %i.aq = icmp ugt i8 %i.ap, 1
  br i1 %i.aq, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.j, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4
  %.not24 = icmp eq i32 %i.as, 0
  br i1 %.not24, label %bb.n, label %bb.k

.peel.next:                                       ; preds = %bb.j, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.j ] ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 2) #17 ; 0 uses
  %i.au = load i8, ptr %i.aj, align 2
  %i.av = icmp ult i8 %i.au, 3
  %i.aw = load ptr, ptr %i.al, align 8
  %.sroa.0.0.i.i19 = select i1 %i.av, ptr %i.al, ptr %i.aw
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %indvars.iv
  %phi.call = load double, ptr %i.ax, align 8
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %phi.call) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i8, ptr %i.aj, align 2
  %i.ba = zext i8 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.peel.next, label %._crit_edge, !llvm.loop !362

bb.k:                                             ; preds = %._crit_edge
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i64 noundef 2) #17 ; 0 uses
  %i.bd = load i32, ptr %i.ar, align 4
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 3) #17 ; 0 uses
  %i.bg = load i32, ptr %i.ar, align 4
  %i.bh = and i32 %i.bg, 2
  %.not.i20 = icmp eq i32 %i.bh, 0                ; 2 uses
  %i.bi = select i1 %.not.i20, ptr @.str.22, ptr @.str.21
  %i.bj = select i1 %.not.i20, i64 0, i64 10
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bi, i64 noundef %i.bj) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.23, i64 noundef 9) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

bb.n:                                             ; preds = %._crit_edge
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  br label %_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit

_ZZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE7PrintToERSoENKUlRT_E_clISoEEDaS7_.exit: ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %bb.d, %bb.c, %bb.n, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE14AllocateOnHeapEPNS0_7FactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE29NewTurboshaftFloat64RangeTypeEjjddNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef 0, double noundef +inf, double noundef -inf, i8 noundef zeroext 0) #17
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 2
  %.not10.i.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8           ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt double %i.h, 0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.k, double %i.h, double -0.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp ogt double %i.m, 0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %i.n, double %i.m, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %bb.d
  %.0.i9.i = phi double [ %.sroa.speculated5.i.i, %bb.d ], [ %i.h, %.thread.i ]
  %.0.i4.i = phi double [ %.sroa.speculated5.i5.i, %bb.d ], [ %i.j, %.thread.i ]
  %i.o = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE29NewTurboshaftFloat64RangeTypeEjjddNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef 0, double noundef %.0.i9.i, double noundef %.0.i4.i, i8 noundef zeroext 0) #17
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext i8 %i.q to i32
  %i.s = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE27NewTurboshaftFloat64SetTypeEjjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef %i.r, i8 noundef zeroext 0) #17 ; 3 uses
  %i.t = load i8, ptr %i.p, align 2               ; 2 uses
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.v = phi i8 [ %i.t, %.lr.ph ], [ %i.af, %bb.f ]
  %i.w = load i64, ptr %i.s, align 8
  %i.x = icmp ult i8 %i.v, 3
  %i.y = load ptr, ptr %i.u, align 8
  %.sroa.0.0.i.i = select i1 %i.x, ptr %i.u, ptr %i.y
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = shl nuw nsw i64 %indvars.iv, 3
  %i.ac = add nuw nsw i64 %i.ab, 15
  %i.ad = add i64 %i.w, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  store double %i.aa, ptr %i.ae, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i8, ptr %i.p, align 2              ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.f, label %.loopexit, !llvm.loop !363

.loopexit:                                        ; preds = %bb.f, %bb.e, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit, %bb.b
  %.sroa.014.0 = phi ptr [ %i.e, %bb.b ], [ %i.o, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.f ]
  ret ptr %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type6EqualsERKS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = load i8, ptr %1, align 8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.ag [
    i8 0, label %bb.c
    i8 1, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit
    i8 2, label %bb.d
    i8 3, label %bb.j
    i8 4, label %bb.p
    i8 5, label %bb.w
    i8 6, label %bb.ad
    i8 7, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit
  ]

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %.not.i = icmp eq i8 %i.d, %i.f
  br i1 %.not.i, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.n, %i.p
  %or.cond.i = select i1 %i.l, i1 %i.q, i1 false
  br i1 %or.cond.i, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %i.r = add i32 %i.n, 1
  %i.s = icmp eq i32 %i.r, %i.i
  br i1 %i.s, label %bb.g, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.t = add i32 %i.p, 1
  %i.u = icmp eq i32 %i.t, %i.k
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 2               ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i8, ptr %i.x, align 2
  %.not14.i = icmp eq i8 %i.w, %i.y
  br i1 %.not14.i, label %.preheader.i, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

.preheader.i:                                     ; preds = %bb.h
  %i.z = icmp eq i8 %i.w, 0
  br i1 %i.z, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = icmp ult i8 %i.w, 3                     ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8
  %.sroa.0.0.i.i.i = select i1 %i.ab, ptr %i.aa, ptr %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.sroa.0.0.i.i17.i = select i1 %i.ab, ptr %i.ad, ptr %i.ae
  %wide.trip.count.i = zext i8 %i.w to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i17.i, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4
  %.not15.i = icmp eq i32 %i.ag, %i.ai            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %.not15.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.i, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit, !llvm.loop !60

bb.j:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %.not.i9 = icmp eq i8 %i.ak, %i.am
  br i1 %.not.i9, label %bb.k, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

bb.k:                                             ; preds = %bb.j
  %i.an = icmp eq i8 %i.ak, 0
  br i1 %i.an, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq i64 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.au, %i.aw
  %or.cond.i21 = select i1 %i.as, i1 %i.ax, i1 false
  br i1 %or.cond.i21, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit, label %._crit_edge.i22

._crit_edge.i22:                                  ; preds = %bb.l
  %i.ay = add i64 %i.au, 1
  %i.az = icmp eq i64 %i.ay, %i.ap
  br i1 %i.az, label %bb.m, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

bb.m:                                             ; preds = %._crit_edge.i22
  %i.ba = add i64 %i.aw, 1
  %i.bb = icmp eq i64 %i.ba, %i.ar
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

bb.n:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bd = load i8, ptr %i.bc, align 2             ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bf = load i8, ptr %i.be, align 2
  %.not14.i11 = icmp eq i8 %i.bd, %i.bf
  br i1 %.not14.i11, label %.preheader.i12, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit

.preheader.i12:                                   ; preds = %bb.n
  %i.bg = icmp eq i8 %i.bd, 0
  br i1 %i.bg, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE6EqualsERKS4_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.preheader.i12
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = icmp ult i8 %i.bd, 3                    ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8
  %.sroa.0.0.i.i.i14 = select i1 %i.bi, ptr %i.bh, ptr %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %.sroa.0.0.i.i17.i15 = select i1 %i.bi, ptr %i.bk, ptr %i.bl
  %wide.trip.count.i16 = zext i8 %i.bd to i64
  br label %bb.o
end_hunk_5
