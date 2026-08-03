inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS2_8WrapModeENS0_3ROIEi:bb.a
          to label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit22 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #36
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit22: ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit20.thread, %bb.g
  %i.av = phi ptr [ null, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit20.thread ], [ %i.as, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr null, ptr %i.an, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.aw, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 132
  store i32 0, ptr %i.ax, align 4, !tbaa !121
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ay, i8 0, i64 7, i1 false)
  store ptr %i.a, ptr %9, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.az, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.an, ptr %i.av, i64 263, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %9, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, ptr nonnull %15, i64 4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit22
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bb) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bc) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bd) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  ret i1 %i.ba

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit22
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bf) #33
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bg) #33
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bh) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41
  %i.d = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %5, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !41
  %i.h = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.i, ptr %4, align 8
  store ptr null, ptr %0, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.l, i8 0, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_7ustringE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %3, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.m, align 8, !tbaa !41
  %i.n = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
          to label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_7ustringE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #36
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_7ustringE.exit: ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ null, %bb.c ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr %i.q, i64 269, i32 noundef 1, ptr nonnull %4, i64 8, i8 1, i8 1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERKNS0_8ImageBufENS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %6, i32 noundef %7) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i32 noundef %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA27_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) @.str.16)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.c

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERKNS0_8ImageBufENS0_11MatrixParamIfLi3EEENS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS2_8WrapModeENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, ptr nofree noundef readonly captures(none) dead_on_return %3, float noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %7, i32 noundef %8) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %3, align 8, !tbaa !39
  store ptr %i.a, ptr %9, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.d, ptr %i.b, align 8, !tbaa !41
  %i.e = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, ptr noundef nonnull dead_on_return %9, float noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA27_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) @.str.16)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffPNS0_8Filter2DEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %7, i32 noundef %8) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Imath_3_1::Matrix33", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.c = fneg float %3                            ; 2 uses
  %i.d = fneg float %4
  %10 = fmul float %4, -0.000000e+00              ; 2 uses
  %11 = fsub float %10, %3
  %12 = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %10)
  %13 = fadd float %12, 1.000000e+00              ; 3 uses
  %sincos.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %14 = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.d)
  %15 = fadd float %14, 0.000000e+00              ; 3 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 5 uses
  %16 = insertelement <2 x float> poison, float %sin.i.i, i64 0
  %17 = insertelement <2 x float> %16, float %11, i64 1
  %18 = fadd <2 x float> %17, <float -0.000000e+00, float 0.000000e+00>
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 6 uses
  %20 = fneg float %sin.i.i                       ; 2 uses
  %21 = fmul float %sin.i.i, 0.000000e+00
  %22 = fsub float %cos.i.i, %21
  %i.e = fmul float %cos.i.i, 0.000000e+00
  %23 = fadd float %sin.i.i, %i.e
  %24 = fmul float %15, 0.000000e+00
  %i.f = fmul float %cos.i.i, %15
  %25 = fmul float %15, %20
  %26 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i, i64 1
  %i.g = insertelement <4 x float> %26, float %sin.i.i, i64 2
  %27 = insertelement <4 x float> poison, float %cos.i.i, i64 0
  %28 = insertelement <4 x float> %27, float %25, i64 1
  %29 = insertelement <4 x float> %28, float %i.f, i64 2
  %30 = insertelement <4 x float> %29, float %24, i64 3
  %31 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %i.g, <4 x float> %30) ; 4 uses
  %32 = extractelement <4 x float> %31, i64 3
  %i.h = fadd float %13, %32                      ; 2 uses
  %33 = fadd float %22, 0.000000e+00              ; 2 uses
  %i.i = insertelement <2 x float> poison, float %4, i64 0
  %34 = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = fmul <2 x float> %34, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %36 = extractelement <2 x float> %35, i64 1
  %37 = fadd float %3, %36
  %38 = insertelement <2 x float> poison, float %3, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> zeroinitializer, <2 x float> %35)
  %i.j = insertelement <4 x float> poison, float %37, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %42 = shufflevector <4 x float> %i.j, <4 x float> %41, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %43 = fadd <4 x float> %42, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %44 = fadd float %23, 0.000000e+00              ; 2 uses
  %45 = fmul float %44, 0.000000e+00              ; 2 uses
  %46 = fadd float %33, %45
  %47 = insertelement <2 x float> poison, float %33, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = insertelement <2 x float> poison, float %44, i64 0
  %50 = insertelement <2 x float> %49, float %45, i64 1
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> zeroinitializer, <2 x float> %50)
  %52 = insertelement <4 x float> poison, float %46, i64 0
  %53 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %54 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %55 = extractelement <4 x float> %43, i64 2
  %i.k = extractelement <4 x float> %31, i64 0
  %i.l = fadd float %i.k, 0.000000e+00            ; 2 uses
  %56 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i, i64 0
  %i.m = insertelement <4 x float> %56, float %13, i64 3
  %57 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.n = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %20, i64 0
  %58 = shufflevector <4 x float> %i.n, <4 x float> %31, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %57, <4 x float> zeroinitializer, <4 x float> %58) ; 2 uses
  %59 = fadd <4 x float> %i.o, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %60 = extractelement <4 x float> %31, i64 2
  %61 = tail call float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %60) ; 2 uses
  %62 = fmul float %i.l, 0.000000e+00             ; 2 uses
  %63 = fmul float %61, 0.000000e+00              ; 2 uses
  %64 = extractelement <4 x float> %i.o, i64 3    ; 2 uses
  %i.p = fadd float %64, %63
  %65 = insertelement <4 x float> poison, float %i.l, i64 0
  %66 = insertelement <4 x float> %65, float %62, i64 1
  %67 = insertelement <4 x float> %66, float %i.p, i64 2
  %68 = insertelement <4 x float> %67, float %61, i64 3
  %69 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %59, <4 x float> zeroinitializer, <4 x float> %68)
  %70 = tail call float @llvm.fmuladd.f32(float %64, float 0.000000e+00, float %63)
  %71 = extractelement <4 x float> %59, i64 0
  %72 = fadd float %71, %62
  %i.q = insertelement <4 x float> %54, float %72, i64 3
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> zeroinitializer, <4 x float> %i.q)
  %i.s = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.h, i64 2
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.u = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.u, <4 x float> %69)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %55, float %70)
  store <4 x float> %i.r, ptr %9, align 16, !tbaa !77
  store <4 x float> %i.v, ptr %i.a, align 16, !tbaa !77
  store float %i.w, ptr %i.b, align 16, !tbaa !77
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, i64 %3, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %7 = alloca %"class.std::function", align 8     ; 11 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %9 = alloca %"class.std::function", align 8     ; 11 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %11 = alloca %"class.std::function", align 8    ; 11 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %13 = alloca %"class.std::function", align 8    ; 11 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %14 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %15 = alloca %"class.std::function", align 8    ; 11 uses
  %16 = alloca %"class.OpenImageIO::v3_1::ParamValueSpan", align 8 ; 5 uses
  %17 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.std::shared_ptr", align 16 ; 17 uses
  %20 = alloca %"class.std::shared_ptr.17", align 16 ; 7 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %23 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %24 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %2, ptr %16, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %3, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  store ptr @.str.17, ptr %18, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 11, ptr %i.g, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %17, ptr noundef nonnull dead_on_return %18)
  %i.h = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized) #33
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113filtername_usE, align 8, !tbaa !8
  store i64 %i.k, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, align 16, !tbaa !8
  %i.l = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114filterwidth_usE, align 8, !tbaa !8
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, i64 8), align 8, !tbaa !8
  %i.m = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112filterptr_usE, align 8, !tbaa !8
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, i64 16), align 16, !tbaa !8
  %i.n = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized) #33
  br label %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit

_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_S7_PNS0_9ImageSpecEi(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 24)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit unwind label %bb.d

_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit: ; preds = %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit
  br i1 %i.o, label %bb.e, label %bb.cy

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  %.sroa.032.0.copyload = load ptr, ptr %16, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.f, align 8
  invoke void @_ZN11OpenImageIO4v3_120get_filterptr_optionENS0_14ParamValueSpanE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %19, ptr %.sroa.032.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.h unwind label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %19, align 16, !tbaa !11
  %.not370 = icmp eq ptr %i.s, null
  br i1 %.not370, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !3
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = load <2 x i32>, ptr %i.u, align 4, !tbaa !3
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fdiv <2 x float> %i.w, %i.y              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %.sroa.029.0.copyload = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113filtername_usE, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_114ParamValueSpan10get_stringENS0_7ustringENS0_17basic_string_viewIcSt11char_traitsIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %.sroa.029.0.copyload, ptr noundef nonnull dead_on_return %22, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.ab

bb.j:                                             ; preds = %bb.i
  %.sroa.028.0.copyload = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114filterwidth_usE, align 8, !tbaa !8
  %i.aa = invoke noundef float @_ZNK11OpenImageIO4v3_114ParamValueSpan9get_floatENS0_7ustringEfbb(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %.sroa.028.0.copyload, float noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 1
  invoke fastcc void @_ZN11OpenImageIO4v3_1L17get_resize_filterENS0_17basic_string_viewIcSt11char_traitsIcEEEfRNS0_8ImageBufEff(ptr dead_on_unwind noalias writable align 8 %20, ptr noundef dead_on_return %21, float noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %i.ab, float noundef %i.ac)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.af = load <2 x ptr>, ptr %20, align 16, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 8 uses
  store <2 x ptr> %i.af, ptr %19, align 16, !tbaa !16
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ah, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !20
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #33, !inline_history !140
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #33, !inline_history !140
  br label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit

bb.o:                                             ; preds = %bb.m
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.p ], [ %i.au, %bb.q ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.r, label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit, !prof !25

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #33
  br label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit

_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ax, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !20
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #33, !inline_history !110
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #33, !inline_history !110
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L9resample_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_bNS0_3ROIEi:bb.a
  call void @__clang_call_terminate(ptr %i.y) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L9resample_IttEEbRNS0_8ImageBufERKS2_bNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %3, i32 noundef %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %5 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 7 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !86
  %i.c = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = xor i1 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !82
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 1107, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_1L9resample_IffEEbRNS0_8ImageBufERKS2_bNS0_3ROIEi, ptr noundef nonnull @.str.90) #38 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %4, ptr %5, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 0, ptr %i.h, align 4, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 1, ptr %i.i, align 2, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1024, ptr %i.j, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.l, align 8, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.o, align 8
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 4 uses
  store ptr %1, ptr %i.p, align 16, !tbaa !97
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !97
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !104
  store ptr %i.p, ptr %6, align 8, !tbaa !16
  store ptr @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.n, align 8, !tbaa !106
  store ptr @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.m, align 8, !tbaa !109
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %3, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %5, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %bb.e
  ret void

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !109  ; 2 uses
  %.not.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo8resampleERKNS0_8ImageBufEbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %3, i32 noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo8resampleERNS0_8ImageBufERKS2_bNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %3, i32 noundef %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA31_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(31) @.str.31)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.c

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA31_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(31) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %1) #33, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !231
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(31) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !231
  %i.b = load ptr, ptr %4, align 8, !tbaa !63
  store ptr %i.b, ptr %3, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  store i64 %i.e, ptr %i.c, align 8, !tbaa !41
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !24
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !24
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr nofree noundef readonly captures(none) dead_on_return %5, float noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.OpenImageIO::v3_1::span.134", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.OpenImageIO::v3_1::span.134", align 8 ; 5 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %14 = alloca %"class.Imath_3_1::Matrix33", align 16 ; 7 uses
  %15 = alloca [4 x %"class.OpenImageIO::v3_1::ParamValue"], align 8 ; 22 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.e = fneg float %3                            ; 2 uses
  %i.f = fneg float %4
  %20 = fmul float %4, -0.000000e+00              ; 2 uses
  %21 = fsub float %20, %3
  %22 = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %20)
  %23 = fadd float %22, 1.000000e+00              ; 3 uses
  %sincos.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %24 = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.f)
  %25 = fadd float %24, 0.000000e+00              ; 3 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 5 uses
  %26 = insertelement <2 x float> poison, float %sin.i.i, i64 0
  %27 = insertelement <2 x float> %26, float %21, i64 1
  %28 = fadd <2 x float> %27, <float -0.000000e+00, float 0.000000e+00>
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 6 uses
  %30 = fneg float %sin.i.i                       ; 2 uses
  %31 = fmul float %sin.i.i, 0.000000e+00
  %32 = fsub float %cos.i.i, %31
  %i.g = fmul float %cos.i.i, 0.000000e+00
  %33 = fadd float %sin.i.i, %i.g
  %34 = fmul float %25, 0.000000e+00
  %i.h = fmul float %cos.i.i, %25
  %35 = fmul float %25, %30
  %36 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i, i64 1
  %i.i = insertelement <4 x float> %36, float %sin.i.i, i64 2
  %37 = insertelement <4 x float> poison, float %cos.i.i, i64 0
  %38 = insertelement <4 x float> %37, float %35, i64 1
  %39 = insertelement <4 x float> %38, float %i.h, i64 2
  %40 = insertelement <4 x float> %39, float %34, i64 3
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %i.i, <4 x float> %40) ; 4 uses
  %42 = extractelement <4 x float> %41, i64 3
  %i.j = fadd float %23, %42                      ; 2 uses
  %43 = fadd float %32, 0.000000e+00              ; 2 uses
  %i.k = insertelement <2 x float> poison, float %4, i64 0
  %44 = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %45 = fmul <2 x float> %44, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %46 = extractelement <2 x float> %45, i64 1
  %47 = fadd float %3, %46
  %48 = insertelement <2 x float> poison, float %3, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> zeroinitializer, <2 x float> %45)
  %i.l = insertelement <4 x float> poison, float %47, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %52 = shufflevector <4 x float> %i.l, <4 x float> %51, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %53 = fadd <4 x float> %52, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %54 = fadd float %33, 0.000000e+00              ; 2 uses
  %55 = fmul float %54, 0.000000e+00              ; 2 uses
  %56 = fadd float %43, %55
  %57 = insertelement <2 x float> poison, float %43, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %59 = insertelement <2 x float> poison, float %54, i64 0
  %60 = insertelement <2 x float> %59, float %55, i64 1
  %61 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> zeroinitializer, <2 x float> %60)
  %62 = insertelement <4 x float> poison, float %56, i64 0
  %63 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %64 = shufflevector <4 x float> %62, <4 x float> %63, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %65 = extractelement <4 x float> %53, i64 2
  %i.m = extractelement <4 x float> %41, i64 0
  %i.n = fadd float %i.m, 0.000000e+00            ; 2 uses
  %66 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i, i64 0
  %i.o = insertelement <4 x float> %66, float %23, i64 3
  %67 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.p = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %30, i64 0
  %68 = shufflevector <4 x float> %i.p, <4 x float> %41, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %67, <4 x float> zeroinitializer, <4 x float> %68) ; 2 uses
  %69 = fadd <4 x float> %i.q, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %70 = extractelement <4 x float> %41, i64 2
  %71 = tail call float @llvm.fmuladd.f32(float %23, float 0.000000e+00, float %70) ; 2 uses
  %72 = fmul float %i.n, 0.000000e+00             ; 2 uses
  %73 = fmul float %71, 0.000000e+00              ; 2 uses
  %74 = extractelement <4 x float> %i.q, i64 3    ; 2 uses
  %i.r = fadd float %74, %73
  %75 = insertelement <4 x float> poison, float %i.n, i64 0
  %76 = insertelement <4 x float> %75, float %72, i64 1
  %77 = insertelement <4 x float> %76, float %i.r, i64 2
  %78 = insertelement <4 x float> %77, float %71, i64 3
  %79 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %69, <4 x float> zeroinitializer, <4 x float> %78)
  %80 = tail call float @llvm.fmuladd.f32(float %74, float 0.000000e+00, float %73)
  %81 = extractelement <4 x float> %69, i64 0
  %82 = fadd float %81, %72
  %i.s = insertelement <4 x float> %64, float %82, i64 3
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> zeroinitializer, <4 x float> %i.s)
  %i.u = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.j, i64 2
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.w = shufflevector <4 x float> %53, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.w, <4 x float> %79)
  %i.y = tail call float @llvm.fmuladd.f32(float %i.j, float %65, float %80)
  store <4 x float> %i.t, ptr %14, align 16, !tbaa !77
  store <4 x float> %i.x, ptr %i.c, align 16, !tbaa !77
  store float %i.y, ptr %i.d, align 16, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  store ptr @.str.6, ptr %16, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.z, align 8, !tbaa !41
  %i.aa = load ptr, ptr %5, align 8, !tbaa !39
  store ptr %i.aa, ptr %17, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %15, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %6, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr @.str.10, ptr %13, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.ae, align 8, !tbaa !41
  %i.af = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr null, ptr %i.ai, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 48
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 52
  store i32 0, ptr %i.ak, align 4, !tbaa !121
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.al, i8 0, i64 7, i1 false)
  store ptr %i.b, ptr %12, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.am, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.ai, ptr %i.af, i64 267, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %12, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = zext i1 %7 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.an, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.12, ptr %11, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 13, ptr %i.ao, align 8, !tbaa !41
  %i.ap = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #36
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr null, ptr %i.as, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 88
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 92
  store i32 0, ptr %i.au, align 4, !tbaa !121
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.av, i8 0, i64 7, i1 false)
  store ptr %i.a, ptr %10, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.aw, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.as, ptr %i.ap, i64 263, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %10, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 120
  store ptr @.str.14, ptr %18, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.ay, align 8, !tbaa !41
  store ptr @.str.28, ptr %19, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 5, ptr %i.az, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %i.ax, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19) #33
  %i.ba = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %14, ptr nonnull %15, i64 4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bb) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bc) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bd) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  ret i1 %i.ba

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bf) #33
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bg) #33
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bh) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fPNS0_8Filter2DEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %5, i32 noundef %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Imath_3_1::Matrix33", align 16 ; 6 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %8, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load i32, ptr %8, align 4, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !164
  %i.d = add nsw i32 %i.c, %i.a
  %i.e = sitofp i32 %i.d to float
  %9 = fmul nnan float %i.e, 5.000000e-01         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !162
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = sitofp i32 %i.j to float
  %i.l = fmul nnan float %i.k, 5.000000e-01       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.o = fneg float %9                            ; 2 uses
  %10 = fneg float %i.l                           ; 2 uses
  %11 = call float @llvm.copysign.f32(float 0.000000e+00, float %10) ; 2 uses
  %12 = fsub float %11, %9
  %13 = call float @llvm.fmuladd.f32(float %i.o, float 0.000000e+00, float %11)
  %14 = fadd float %13, 1.000000e+00              ; 3 uses
  %sincos.i.i.i = call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %15 = call float @llvm.fmuladd.f32(float %i.o, float 0.000000e+00, float %10)
  %16 = fadd float %15, 0.000000e+00              ; 3 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %17 = insertelement <2 x float> poison, float %sin.i.i.i, i64 0
  %18 = insertelement <2 x float> %17, float %12, i64 1
  %19 = fadd <2 x float> %18, <float -0.000000e+00, float 0.000000e+00>
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %21 = fneg float %sin.i.i.i                     ; 2 uses
  %22 = fmul float %sin.i.i.i, 0.000000e+00
  %23 = fsub float %cos.i.i.i, %22
  %24 = fmul float %cos.i.i.i, 0.000000e+00
  %25 = fadd float %sin.i.i.i, %24
  %i.p = fmul float %16, 0.000000e+00
  %26 = fmul float %cos.i.i.i, %16
  %i.q = fmul float %16, %21
  %27 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i.i, i64 1
  %28 = insertelement <4 x float> %27, float %sin.i.i.i, i64 2
  %29 = insertelement <4 x float> poison, float %cos.i.i.i, i64 0
  %i.r = insertelement <4 x float> %29, float %i.q, i64 1
  %i.s = insertelement <4 x float> %i.r, float %26, i64 2
  %i.t = insertelement <4 x float> %i.s, float %i.p, i64 3
  %30 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> %28, <4 x float> %i.t) ; 4 uses
  %31 = extractelement <4 x float> %30, i64 3
  %32 = fadd float %14, %31                       ; 2 uses
  %33 = call float @llvm.copysign.f32(float 0.000000e+00, float %i.l) ; 2 uses
  %34 = fadd float %9, %33
  %35 = insertelement <2 x float> poison, float %9, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = insertelement <2 x float> poison, float %i.l, i64 0
  %38 = insertelement <2 x float> %37, float %33, i64 1
  %i.u = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> zeroinitializer, <2 x float> %38)
  %39 = fadd float %23, 0.000000e+00              ; 2 uses
  %40 = insertelement <4 x float> poison, float %34, i64 0
  %41 = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %42 = shufflevector <4 x float> %40, <4 x float> %41, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.v = fadd <4 x float> %42, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %43 = fadd float %25, 0.000000e+00              ; 2 uses
  %44 = fmul float %43, 0.000000e+00              ; 2 uses
  %i.w = fadd float %39, %44
  %45 = insertelement <2 x float> poison, float %39, i64 0
  %i.x = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %43, i64 0
  %i.z = insertelement <2 x float> %i.y, float %44, i64 1
  %i.aa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> zeroinitializer, <2 x float> %i.z)
  %46 = insertelement <4 x float> poison, float %i.w, i64 0
  %47 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %48 = shufflevector <4 x float> %46, <4 x float> %47, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %49 = extractelement <4 x float> %i.v, i64 2
  %i.ab = extractelement <4 x float> %30, i64 0
  %i.ac = fadd float %i.ab, 0.000000e+00          ; 2 uses
  %i.ad = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i.i, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %14, i64 3
  %50 = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.af = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %21, i64 0
  %51 = shufflevector <4 x float> %i.af, <4 x float> %30, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %52 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> zeroinitializer, <4 x float> %51) ; 2 uses
  %i.ag = fadd <4 x float> %52, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ah = extractelement <4 x float> %30, i64 2
  %53 = call float @llvm.fmuladd.f32(float %14, float 0.000000e+00, float %i.ah) ; 2 uses
  %54 = fmul float %i.ac, 0.000000e+00            ; 2 uses
  %i.ai = fmul float %53, 0.000000e+00            ; 2 uses
  %55 = extractelement <4 x float> %52, i64 3     ; 2 uses
  %i.aj = fadd float %55, %i.ai
  %56 = insertelement <4 x float> poison, float %i.ac, i64 0
  %57 = insertelement <4 x float> %56, float %54, i64 1
  %58 = insertelement <4 x float> %57, float %i.aj, i64 2
  %59 = insertelement <4 x float> %58, float %53, i64 3
  %60 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> zeroinitializer, <4 x float> %59)
  %61 = call float @llvm.fmuladd.f32(float %55, float 0.000000e+00, float %i.ai)
  %62 = extractelement <4 x float> %i.ag, i64 0
  %63 = fadd float %62, %54
  %i.ak = insertelement <4 x float> %48, float %63, i64 3
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.ak)
  %i.am = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %32, i64 2
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ao = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.ao, <4 x float> %60)
  %i.aq = call float @llvm.fmuladd.f32(float %32, float %49, float %61)
  store <4 x float> %i.al, ptr %7, align 16, !tbaa !77
  store <4 x float> %i.ap, ptr %i.m, align 16, !tbaa !77
  store float %i.aq, ptr %i.n, align 16, !tbaa !77
  %i.ar = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %7, ptr noundef %3, i1 noundef zeroext %4, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret i1 %i.ar
}

declare void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, ptr nofree noundef readonly captures(none) dead_on_return %3, float noundef %4, i1 noundef zeroext %5, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %6, i32 noundef %7) local_unnamed_addr #1 {
bb.a:
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 7 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %8, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load i32, ptr %8, align 4, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !164
  %i.d = add nsw i32 %i.c, %i.a
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul nnan float %i.e, 5.000000e-01
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !162
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = sitofp i32 %i.k to float
  %i.m = fmul nnan float %i.l, 5.000000e-01
  %i.n = load ptr, ptr %3, align 8, !tbaa !39
  store ptr %i.n, ptr %9, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41
  store i64 %i.q, ptr %i.o, align 8, !tbaa !41
  %i.r = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %i.f, float noundef %i.m, ptr noundef nonnull dead_on_return %9, float noundef %4, i1 noundef zeroext %5, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i32 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret i1 %i.r
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERKNS0_8ImageBufEfffPNS0_8Filter2DEbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %7, i32 noundef %8) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Imath_3_1::Matrix33", align 16 ; 6 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.c = fneg float %3                            ; 2 uses
  %i.d = fneg float %4
  %10 = fmul float %4, -0.000000e+00              ; 2 uses
  %11 = fsub float %10, %3
  %12 = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %10)
  %13 = fadd float %12, 1.000000e+00              ; 3 uses
  %sincos.i.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %14 = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.d)
  %15 = fadd float %14, 0.000000e+00              ; 3 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %16 = insertelement <2 x float> poison, float %sin.i.i.i, i64 0
  %17 = insertelement <2 x float> %16, float %11, i64 1
  %18 = fadd <2 x float> %17, <float -0.000000e+00, float 0.000000e+00>
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %20 = fneg float %sin.i.i.i                     ; 2 uses
  %21 = fmul float %sin.i.i.i, 0.000000e+00
  %22 = fsub float %cos.i.i.i, %21
  %i.e = fmul float %cos.i.i.i, 0.000000e+00
  %23 = fadd float %sin.i.i.i, %i.e
  %24 = fmul float %15, 0.000000e+00
  %i.f = fmul float %cos.i.i.i, %15
  %25 = fmul float %15, %20
  %26 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i.i, i64 1
  %i.g = insertelement <4 x float> %26, float %sin.i.i.i, i64 2
  %27 = insertelement <4 x float> poison, float %cos.i.i.i, i64 0
  %28 = insertelement <4 x float> %27, float %25, i64 1
  %29 = insertelement <4 x float> %28, float %i.f, i64 2
  %30 = insertelement <4 x float> %29, float %24, i64 3
  %31 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %i.g, <4 x float> %30) ; 4 uses
  %32 = extractelement <4 x float> %31, i64 3
  %i.h = fadd float %13, %32                      ; 2 uses
  %33 = fadd float %22, 0.000000e+00              ; 2 uses
  %i.i = insertelement <2 x float> poison, float %4, i64 0
  %34 = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = fmul <2 x float> %34, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %36 = extractelement <2 x float> %35, i64 1
  %37 = fadd float %3, %36
  %38 = insertelement <2 x float> poison, float %3, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> zeroinitializer, <2 x float> %35)
  %i.j = insertelement <4 x float> poison, float %37, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %42 = shufflevector <4 x float> %i.j, <4 x float> %41, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %43 = fadd <4 x float> %42, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %44 = fadd float %23, 0.000000e+00              ; 2 uses
  %45 = fmul float %44, 0.000000e+00              ; 2 uses
  %46 = fadd float %33, %45
  %47 = insertelement <2 x float> poison, float %33, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = insertelement <2 x float> poison, float %44, i64 0
  %50 = insertelement <2 x float> %49, float %45, i64 1
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> zeroinitializer, <2 x float> %50)
  %52 = insertelement <4 x float> poison, float %46, i64 0
  %53 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %54 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %55 = extractelement <4 x float> %43, i64 2
  %i.k = extractelement <4 x float> %31, i64 0
  %i.l = fadd float %i.k, 0.000000e+00            ; 2 uses
  %56 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i.i, i64 0
  %i.m = insertelement <4 x float> %56, float %13, i64 3
  %57 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.n = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %20, i64 0
  %58 = shufflevector <4 x float> %i.n, <4 x float> %31, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %57, <4 x float> zeroinitializer, <4 x float> %58) ; 2 uses
  %59 = fadd <4 x float> %i.o, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %60 = extractelement <4 x float> %31, i64 2
  %61 = tail call float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %60) ; 2 uses
  %62 = fmul float %i.l, 0.000000e+00             ; 2 uses
  %63 = fmul float %61, 0.000000e+00              ; 2 uses
  %64 = extractelement <4 x float> %i.o, i64 3    ; 2 uses
  %i.p = fadd float %64, %63
  %65 = insertelement <4 x float> poison, float %i.l, i64 0
  %66 = insertelement <4 x float> %65, float %62, i64 1
  %67 = insertelement <4 x float> %66, float %i.p, i64 2
  %68 = insertelement <4 x float> %67, float %61, i64 3
  %69 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %59, <4 x float> zeroinitializer, <4 x float> %68)
  %70 = tail call float @llvm.fmuladd.f32(float %64, float 0.000000e+00, float %63)
  %71 = extractelement <4 x float> %59, i64 0
  %72 = fadd float %71, %62
  %i.q = insertelement <4 x float> %54, float %72, i64 3
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> zeroinitializer, <4 x float> %i.q)
  %i.s = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.h, i64 2
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.u = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.u, <4 x float> %69)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %55, float %70)
  store <4 x float> %i.r, ptr %9, align 16, !tbaa !77
  store <4 x float> %i.v, ptr %i.a, align 16, !tbaa !77
  store float %i.w, ptr %i.b, align 16, !tbaa !77
  %i.x = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.x, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.z

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERKNS0_8ImageBufEfffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr nofree noundef readonly captures(none) dead_on_return %5, float noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %5, align 8, !tbaa !39
  store ptr %i.a, ptr %10, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.d, ptr %i.b, align 8, !tbaa !41
  %i.e = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef nonnull dead_on_return %10, float noundef %6, i1 noundef zeroext %7, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERKNS0_8ImageBufEfPNS0_8Filter2DEbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %5, i32 noundef %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fPNS0_8Filter2DEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i32 noundef %6)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.c

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERKNS0_8ImageBufEfNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, ptr nofree noundef readonly captures(none) dead_on_return %3, float noundef %4, i1 noundef zeroext %5, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %6, i32 noundef %7) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 7 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %3, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %8, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.d = load i32, ptr %8, align 4, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !164
  %i.g = add nsw i32 %i.f, %i.d
  %i.h = sitofp i32 %i.g to float
  %i.i = fmul nnan float %i.h, 5.000000e-01
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !163
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  %i.n = add nsw i32 %i.m, %i.k
  %i.o = sitofp i32 %i.n to float
  %i.p = fmul nnan float %i.o, 5.000000e-01
  store ptr %i.a, ptr %9, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.c, ptr %i.q, align 8, !tbaa !41
  %i.r = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %i.i, float noundef %i.p, ptr noundef nonnull dead_on_return %9, float noundef %4, i1 noundef zeroext %5, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i32 noundef %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.r, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.a, %bb.e, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7st_warpERNS0_8ImageBufERKS2_S5_PKNS0_8Filter2DEiibbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %11 = alloca %"class.std::function", align 8    ; 11 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %13 = alloca %"class.std::function", align 8    ; 11 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %14 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %15 = alloca %"class.std::function", align 8    ; 11 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %17 = alloca %"class.std::function", align 8    ; 11 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %19 = alloca %"class.std::function", align 8    ; 11 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
end_hunk_1
