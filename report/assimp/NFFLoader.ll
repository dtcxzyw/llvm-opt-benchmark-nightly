inline.NumInlined: 2277
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 7
begin_hunk_0_@_ZNSt6vectorIjSaIjEEaSERKS1_:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.c, align 4
  store i32 %i.z, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !192

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.c, align 4
  store i32 %i.ac, ptr %i.i, align 4
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.af = load ptr, ptr %0, align 8
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 3 uses
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.r, label %bb.s, !prof !192

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.aj, i64 %i.an, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.aq = load i32, ptr %i.aj, align 4
  store i32 %i.aq, ptr %i.ae, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI9aiColor4tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i, !prof !190

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 16
  br i1 %i.y, label %bb.h, label %bb.i, !prof !192

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 16
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.x, 16
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !192

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %i.x, 16
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit

_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit:     ; preds = %bb.l, %bb.m, %bb.n
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !214

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP9aiColor4tIfES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load <2 x float>, ptr %0, align 4        ; 4 uses
  %i.c = extractelement <2 x float> %i.b, i64 0   ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load <2 x float>, ptr %i.a, align 4        ; 4 uses
  %i.d = load float, ptr %3, align 4              ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.f = load float, ptr %5, align 4              ; 4 uses
  %6 = extractelement <2 x float> %i.e, i64 1     ; 2 uses
  %i.g = extractelement <2 x float> %4, i64 0     ; 5 uses
  %i.h = fmul float %i.g, %6
  %7 = extractelement <2 x float> %i.e, i64 0
  %8 = tail call float @llvm.fmuladd.f32(float %i.c, float %7, float %i.h)
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.d, float %i.f, float %8) ; 4 uses
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp ogt float %i.j, f0x3F7FFF58
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %9 = fcmp ogt float %i.c, 0.000000e+00
  %10 = fneg float %i.c
  %11 = select i1 %9, float %i.c, float %10       ; 2 uses
  %i.l = fcmp ogt float %i.g, 0.000000e+00
  %i.m = fneg float %i.g
  %i.n = select i1 %i.l, float %i.g, float %i.m   ; 2 uses
  %12 = fcmp ogt float %i.d, 0.000000e+00
  %13 = fneg float %i.d
  %14 = select i1 %12, float %i.d, float %13      ; 2 uses
  %i.o = fcmp olt float %11, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp olt float %11, %14
  br i1 %i.p, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.q = fcmp olt float %i.n, %14
  br i1 %i.q, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %15 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float undef, float undef>, %bb.e ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.c ]
  %i.r = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ zeroinitializer, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.c ]
  %16 = fsub <2 x float> %i.r, %i.e               ; 5 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 6 uses
  %18 = extractelement <2 x float> %16, i64 0     ; 4 uses
  %19 = fneg float %18
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.0.0, i64 0
  %23 = shufflevector <4 x float> %i.s, <4 x float> %15, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %24 = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %25 = insertelement <4 x float> %24, float 0.000000e+00, i64 3
  %26 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %26, <4 x float> %25, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %28 = fsub <4 x float> %23, %27                 ; 11 uses
  %29 = fsub float %.sroa.0.0, %i.f               ; 10 uses
  %30 = extractelement <4 x float> %28, i64 2
  %i.t = extractelement <4 x float> %28, i64 1    ; 4 uses
  %i.u = extractelement <4 x float> %28, i64 0    ; 4 uses
  %i.v = extractelement <2 x float> %16, i64 1    ; 2 uses
  %31 = shufflevector <4 x float> %28, <4 x float> %17, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.w = fmul <2 x float> %31, %31
  %32 = shufflevector <4 x float> %28, <4 x float> %17, <2 x i32> <i32 1, i32 4> ; 2 uses
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %32, <2 x float> %i.w)
  %34 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %35 = insertelement <2 x float> %34, float %29, i64 1 ; 2 uses
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %35, <2 x float> %33)
  %i.y = fdiv <2 x float> splat (float 2.000000e+00), %i.x ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 0   ; 2 uses
  %i.aa = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.ab = fmul float %i.z, %i.aa
  %36 = fmul float %30, %i.v
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.t, float %18, float %36)
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %29, float %i.ac)
  %i.ae = fmul float %i.ad, %i.ab                 ; 6 uses
  %i.af = fneg float %i.z                         ; 4 uses
  %i.ag = fmul float %i.t, %i.af
  %i.ah = fmul float %i.aa, %18
  %i.ai = fmul float %i.ah, %19
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.t, float %i.ai)
  %i.ak = fmul float %i.ae, %18
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.t, float %i.aj)
  %i.am = fadd float %i.al, 1.000000e+00
  store float %i.am, ptr %2, align 4
  %i.an = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ao = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %37 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %38 = fmul <4 x float> %i.ar, %17
  %39 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.as = insertelement <4 x float> %39, float %29, i64 2
  %40 = fneg <4 x float> %i.as
  %41 = fmul <4 x float> %38, %40
  %42 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %42, <4 x float> %41)
  %i.at = insertelement <4 x float> poison, float %i.ae, i64 0
  %44 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fmul <4 x float> %44, %17
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %42, <4 x float> %43)
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %46, ptr %20, align 4
  %47 = load float, ptr %22, align 4
  %48 = fadd float %47, 1.000000e+00
  store float %48, ptr %22, align 4
  %i.av = insertelement <2 x float> poison, float %29, i64 0
  %49 = shufflevector <2 x float> %i.av, <2 x float> %16, <2 x i32> <i32 0, i32 2>
  %50 = fneg <2 x float> %49
  %51 = shufflevector <4 x float> %28, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 0, i32 7>
  %52 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.af, i64 0
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = fmul <4 x float> %51, %53
  %54 = fmul float %i.u, %i.af
  %55 = fmul float %i.aa, %29
  %56 = fneg float %29
  %57 = fmul float %55, %56
  %58 = tail call float @llvm.fmuladd.f32(float %54, float %i.u, float %57)
  %59 = fmul float %i.ae, %29
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %i.u, float %58)
  %i.ax = fadd float %60, 1.000000e+00
  %61 = insertelement <4 x float> %37, float %i.ax, i64 1
  %62 = shufflevector <4 x float> %61, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %63 = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %17, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %64 = insertelement <4 x float> %63, float %29, i64 1
  %65 = shufflevector <4 x float> %64, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.ay = fmul <4 x float> %62, %65
  %66 = fneg <4 x float> %17
  %67 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %66, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %68 = shufflevector <2 x float> %50, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %69 = shufflevector <4 x float> %68, <4 x float> %67, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = fmul <4 x float> %i.ay, %69
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %28, <4 x float> %i.az)
  %70 = fmul float %i.ae, %29
  %71 = fmul float %i.ae, %29
  %72 = fmul float %i.ae, %i.v
  %73 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %72, i64 0
  %74 = insertelement <4 x float> %73, float %71, i64 1
  %75 = insertelement <4 x float> %74, float %70, i64 2
  %76 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %28, <4 x float> %i.ba)
  store <4 x float> %76, ptr %21, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.bb = fneg float %6
  %i.bc = fmul float %i.d, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.g, float %i.f, float %i.bc) ; 4 uses
  %i.be = fadd float %i.i, 1.000000e+00
  %i.bf = fdiv float 1.000000e+00, %i.be          ; 2 uses
  %i.bg = fmul float %i.bd, %i.bf                 ; 2 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bd, float %i.i)
  store float %i.bh, ptr %2, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %77 = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %77, float %i.f, i64 0
  %78 = fneg <2 x float> %i.bk
  %79 = shufflevector <2 x float> %i.b, <2 x float> %4, <2 x i32> <i32 0, i32 2>
  %80 = fmul <2 x float> %79, %78
  %81 = shufflevector <2 x float> %4, <2 x float> %i.b, <2 x i32> <i32 1, i32 2>
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %81, <2 x float> %i.e, <2 x float> %80) ; 7 uses
  %i.bm = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bn, %i.bo           ; 3 uses
  %foldExtExtBinop179.a = fsub <2 x float> %i.bp, %i.bl
  %i.bq = extractelement <2 x float> %foldExtExtBinop179.a, i64 1
  store float %i.bq, ptr %i.bi, align 4
  %i.br = fadd <2 x float> %i.bl, %i.bp
  store <2 x float> %i.br, ptr %i.bj, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 20
  %foldExtExtBinop181.a = fsub <2 x float> %i.bp, %i.bl
  %i.bu = extractelement <2 x float> %foldExtExtBinop181.a, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bx = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bl, %i.by           ; 2 uses
  %shift183 = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop184 = fmul <2 x float> %i.bl, %shift183
  %i.ca = extractelement <2 x float> %foldExtExtBinop184, i64 0 ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %i.i, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bl, <2 x float> %i.cc) ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  store float %i.ce, ptr %i.bs, align 4
  %i.cf = fsub float %i.ca, %i.bd
  store float %i.cf, ptr %i.bt, align 4
  %i.cg = fadd float %i.bd, %i.ca
  store float %i.cg, ptr %i.bw, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ci = extractelement <2 x float> %i.cd, i64 1
  store float %i.ci, ptr %i.ch, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12aiMatrix3x3tIfEixEj.exit.2, %bb.f
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{null, null}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!16 = distinct !{!16, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!19 = distinct !{!19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!30 = distinct !{!30, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!31 = distinct !{!31, !30, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!32 = distinct !{!32, !5}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!36 = distinct !{!36, !35, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!37 = distinct !{!37, !5}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!40 = distinct !{!40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!41 = distinct !{!41, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = distinct !{!63, !5}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!66 = distinct !{!66, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!67 = distinct !{!67, !66, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!71 = distinct !{!71, !70, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!74 = distinct !{!74, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!75 = distinct !{!75, !74, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!78 = distinct !{!78, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!79 = distinct !{!79, !78, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
end_hunk_0
