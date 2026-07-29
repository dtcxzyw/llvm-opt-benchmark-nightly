inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS2_8WrapModeENS0_3ROIEi:bb.a
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
  %i.e = fmul float %4, -0.000000e+00             ; 2 uses
  %i.f = fsub float %i.e, %3
  %i.g = fadd float %i.f, 0.000000e+00            ; 3 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.d)
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.e)
  %i.k = fadd float %i.j, 1.000000e+00            ; 3 uses
  %sincos.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 5 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 6 uses
  %i.l = fneg float %sin.i.i                      ; 2 uses
  %i.m = fmul float %sin.i.i, 0.000000e+00
  %i.n = fsub float %cos.i.i, %i.m
  %i.o = fadd float %i.n, 0.000000e+00            ; 2 uses
  %10 = fmul float %cos.i.i, 0.000000e+00
  %i.p = fadd float %sin.i.i, %10
  %i.q = fmul float %i.i, %i.l
  %i.r = tail call float @llvm.fmuladd.f32(float %i.g, float %cos.i.i, float %i.q)
  %i.s = fmul float %cos.i.i, %i.i
  %i.t = tail call float @llvm.fmuladd.f32(float %i.g, float %sin.i.i, float %i.s)
  %i.u = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.t) ; 2 uses
  %i.v = fmul float %i.i, 0.000000e+00
  %i.w = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.v)
  %i.x = fadd float %i.k, %i.w                    ; 2 uses
  %i.y = insertelement <2 x float> poison, float %4, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.z, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fadd float %3, %i.ab
  %i.ad = insertelement <2 x float> poison, float %3, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> zeroinitializer, <2 x float> %i.aa)
  %11 = fadd float %i.p, 0.000000e+00             ; 2 uses
  %12 = fmul float %11, 0.000000e+00              ; 2 uses
  %13 = fadd float %i.o, %12
  %14 = insertelement <2 x float> poison, float %i.o, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x float> poison, float %11, i64 0
  %17 = insertelement <2 x float> %16, float %12, i64 1
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> zeroinitializer, <2 x float> %17)
  %i.ag = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %19 = insertelement <2 x float> %i.ag, float %sin.i.i, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %cos.i.i, i64 1
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> zeroinitializer, <2 x float> %i.ai)
  %20 = fadd <2 x float> %i.aj, zeroinitializer   ; 4 uses
  %21 = fmul <2 x float> %20, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %20, %shift
  %22 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> poison, float %i.ac, i64 0
  %23 = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %i.ak, <4 x float> %23, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %25 = fadd <4 x float> %24, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.al = insertelement <4 x float> poison, float %13, i64 0
  %26 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %i.al, <4 x float> %26, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %28 = shufflevector <4 x float> %27, <4 x float> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> zeroinitializer, <4 x float> %28)
  %i.am = extractelement <4 x float> %25, i64 2
  store <4 x float> %29, ptr %9, align 16, !tbaa !77
  %30 = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.r) ; 3 uses
  %31 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = shufflevector <2 x float> %20, <2 x float> %21, <2 x i32> <i32 1, i32 3>
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> zeroinitializer, <2 x float> %32)
  %34 = fmul float %i.u, 0.000000e+00             ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %i.u)
  %35 = fadd float %30, %34
  %36 = tail call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %34)
  %i.ao = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.x, i64 2
  %37 = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %38 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %39 = shufflevector <2 x float> %33, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = insertelement <4 x float> %39, float %35, i64 2
  %41 = insertelement <4 x float> %40, float %i.an, i64 3
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %38, <4 x float> %41)
  %43 = tail call float @llvm.fmuladd.f32(float %i.x, float %i.am, float %36)
  store <4 x float> %42, ptr %i.a, align 16, !tbaa !77
  store float %43, ptr %i.b, align 16, !tbaa !77
  %i.ap = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i1 %i.ap
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

bb.u:                                             ; preds = %bb.s
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L9resample_IttEEbRNS0_8ImageBufERKS2_bNS0_3ROIEi:bb.a
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
  %i.g = fmul float %4, -0.000000e+00             ; 2 uses
  %i.h = fsub float %i.g, %3
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.f)
  %i.k = fadd float %i.j, 0.000000e+00            ; 3 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.g)
  %i.m = fadd float %i.l, 1.000000e+00            ; 3 uses
  %sincos.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 5 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 6 uses
  %i.n = fneg float %sin.i.i                      ; 2 uses
  %i.o = fmul float %sin.i.i, 0.000000e+00
  %i.p = fsub float %cos.i.i, %i.o
  %i.q = fadd float %i.p, 0.000000e+00            ; 2 uses
  %20 = fmul float %cos.i.i, 0.000000e+00
  %i.r = fadd float %sin.i.i, %20
  %i.s = fmul float %i.k, %i.n
  %i.t = tail call float @llvm.fmuladd.f32(float %i.i, float %cos.i.i, float %i.s)
  %i.u = fmul float %cos.i.i, %i.k
  %i.v = tail call float @llvm.fmuladd.f32(float %i.i, float %sin.i.i, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.v) ; 2 uses
  %i.x = fmul float %i.k, 0.000000e+00
  %i.y = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.x)
  %i.z = fadd float %i.m, %i.y                    ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %4, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 1
  %i.ae = fadd float %3, %i.ad
  %i.af = insertelement <2 x float> poison, float %3, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> zeroinitializer, <2 x float> %i.ac)
  %21 = fadd float %i.r, 0.000000e+00             ; 2 uses
  %22 = fmul float %21, 0.000000e+00              ; 2 uses
  %23 = fadd float %i.q, %22
  %24 = insertelement <2 x float> poison, float %i.q, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x float> poison, float %21, i64 0
  %27 = insertelement <2 x float> %26, float %22, i64 1
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %27)
  %i.ai = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %29 = insertelement <2 x float> %i.ai, float %sin.i.i, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %cos.i.i, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> zeroinitializer, <2 x float> %i.ak)
  %30 = fadd <2 x float> %i.al, zeroinitializer   ; 4 uses
  %31 = fmul <2 x float> %30, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %30, %shift
  %32 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.am = insertelement <4 x float> poison, float %i.ae, i64 0
  %33 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %34 = shufflevector <4 x float> %i.am, <4 x float> %33, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %35 = fadd <4 x float> %34, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.an = insertelement <4 x float> poison, float %23, i64 0
  %36 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %37 = shufflevector <4 x float> %i.an, <4 x float> %36, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %38 = shufflevector <4 x float> %37, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %39 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> zeroinitializer, <4 x float> %38)
  %i.ao = extractelement <4 x float> %35, i64 2
  store <4 x float> %39, ptr %14, align 16, !tbaa !77
  %40 = tail call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.t) ; 3 uses
  %41 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = shufflevector <2 x float> %30, <2 x float> %31, <2 x i32> <i32 1, i32 3>
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> zeroinitializer, <2 x float> %42)
  %44 = fmul float %i.w, 0.000000e+00             ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %i.w)
  %45 = fadd float %40, %44
  %46 = tail call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %44)
  %i.aq = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.z, i64 2
  %47 = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %48 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %49 = shufflevector <2 x float> %43, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %50 = insertelement <4 x float> %49, float %45, i64 2
  %51 = insertelement <4 x float> %50, float %i.ap, i64 3
  %52 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %48, <4 x float> %51)
  %53 = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ao, float %46)
  store <4 x float> %52, ptr %i.c, align 16, !tbaa !77
  store float %53, ptr %i.d, align 16, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  store ptr @.str.6, ptr %16, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.ar, align 8, !tbaa !41
  %i.as = load ptr, ptr %5, align 8, !tbaa !39
  store ptr %i.as, ptr %17, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41
  store i64 %i.av, ptr %i.at, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %15, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %6, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr @.str.10, ptr %13, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.aw, align 8, !tbaa !41
  %i.ax = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr null, ptr %i.ba, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 48
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.bb, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 52
  store i32 0, ptr %i.bc, align 4, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bd, i8 0, i64 7, i1 false)
  store ptr %i.b, ptr %12, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.be, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.ba, ptr %i.ax, i64 267, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %12, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bf = zext i1 %7 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.12, ptr %11, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 13, ptr %i.bg, align 8, !tbaa !41
  %i.bh = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #36
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr null, ptr %i.bk, align 8, !tbaa !114
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 88
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.bl, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 92
  store i32 0, ptr %i.bm, align 4, !tbaa !121
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bn, i8 0, i64 7, i1 false)
  store ptr %i.a, ptr %10, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.bo, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.bk, ptr %i.bh, i64 263, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %10, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 120
  store ptr @.str.14, ptr %18, align 8, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.bq, align 8, !tbaa !41
  store ptr @.str.28, ptr %19, align 8, !tbaa !39
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 5, ptr %i.br, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %i.bp, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19) #33
  %i.bs = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %14, ptr nonnull %15, i64 4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bt) #33
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bu) #33
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bv) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  ret i1 %i.bs

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bx) #33
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.by) #33
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.bz) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  resume { ptr, i32 } %i.bw
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
  %i.f = fmul nnan float %i.e, 5.000000e-01       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !162
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = sitofp i32 %i.k to float
  %i.m = fmul nnan float %i.l, 5.000000e-01       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.p = fneg float %i.f                          ; 2 uses
  %i.q = fneg float %i.m                          ; 2 uses
  %i.r = call float @llvm.copysign.f32(float 0.000000e+00, float %i.q) ; 2 uses
  %i.s = fsub float %i.r, %i.f
  %i.t = fadd float %i.s, 0.000000e+00            ; 3 uses
  %i.u = call float @llvm.fmuladd.f32(float %i.p, float 0.000000e+00, float %i.q)
  %i.v = fadd float %i.u, 0.000000e+00            ; 3 uses
  %i.w = call float @llvm.fmuladd.f32(float %i.p, float 0.000000e+00, float %i.r)
  %i.x = fadd float %i.w, 1.000000e+00            ; 3 uses
  %sincos.i.i.i = call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %i.y = fneg float %sin.i.i.i                    ; 2 uses
  %i.z = fmul float %sin.i.i.i, 0.000000e+00
  %i.aa = fsub float %cos.i.i.i, %i.z
  %i.ab = fadd float %i.aa, 0.000000e+00          ; 2 uses
  %9 = fmul float %cos.i.i.i, 0.000000e+00
  %i.ac = fadd float %sin.i.i.i, %9
  %i.ad = fmul float %i.v, %i.y
  %i.ae = call float @llvm.fmuladd.f32(float %i.t, float %cos.i.i.i, float %i.ad)
  %i.af = fmul float %cos.i.i.i, %i.v
  %i.ag = call float @llvm.fmuladd.f32(float %i.t, float %sin.i.i.i, float %i.af)
  %i.ah = call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %i.ag) ; 2 uses
  %i.ai = fmul float %i.v, 0.000000e+00
  %i.aj = call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.ai)
  %i.ak = fadd float %i.x, %i.aj                  ; 2 uses
  %i.al = call float @llvm.copysign.f32(float 0.000000e+00, float %i.m) ; 2 uses
  %i.am = fadd float %i.f, %i.al
  %i.an = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.m, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.al, i64 1
  %i.ar = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.aq)
  %10 = fadd float %i.ac, 0.000000e+00            ; 2 uses
  %i.as = fmul float %10, 0.000000e+00            ; 2 uses
  %i.at = fadd float %i.ab, %i.as
  %11 = insertelement <2 x float> poison, float %i.ab, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %14 = insertelement <2 x float> %13, float %i.as, i64 1
  %15 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> zeroinitializer, <2 x float> %14)
  %16 = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %17 = insertelement <2 x float> %16, float %sin.i.i.i, i64 1
  %18 = insertelement <2 x float> poison, float %i.y, i64 0
  %i.au = insertelement <2 x float> %18, float %cos.i.i.i, i64 1
  %19 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> zeroinitializer, <2 x float> %i.au)
  %20 = fadd <2 x float> %19, zeroinitializer     ; 4 uses
  %21 = fmul <2 x float> %20, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %20, %shift
  %22 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %23 = insertelement <4 x float> poison, float %i.am, i64 0
  %24 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %23, <4 x float> %24, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %26 = fadd <4 x float> %25, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.av = insertelement <4 x float> poison, float %i.at, i64 0
  %27 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <4 x float> %i.av, <4 x float> %27, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %29 = shufflevector <4 x float> %28, <4 x float> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %30 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> zeroinitializer, <4 x float> %29)
  %i.aw = extractelement <4 x float> %26, i64 2
  store <4 x float> %30, ptr %7, align 16, !tbaa !77
  %31 = call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %i.ae) ; 3 uses
  %32 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = shufflevector <2 x float> %20, <2 x float> %21, <2 x i32> <i32 1, i32 3>
  %34 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> zeroinitializer, <2 x float> %33)
  %35 = fmul float %i.ah, 0.000000e+00            ; 2 uses
  %i.ax = call float @llvm.fmuladd.f32(float %31, float 0.000000e+00, float %i.ah)
  %36 = fadd float %31, %35
  %37 = call float @llvm.fmuladd.f32(float %31, float 0.000000e+00, float %35)
  %i.ay = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.ak, i64 2
  %38 = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %39 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %40 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %41 = insertelement <4 x float> %40, float %36, i64 2
  %42 = insertelement <4 x float> %41, float %i.ax, i64 3
  %43 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %39, <4 x float> %42)
  %44 = call float @llvm.fmuladd.f32(float %i.ak, float %i.aw, float %37)
  store <4 x float> %43, ptr %i.n, align 16, !tbaa !77
  store float %44, ptr %i.o, align 16, !tbaa !77
  %i.az = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %7, ptr noundef %3, i1 noundef zeroext %4, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret i1 %i.az
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
  %i.e = fmul float %4, -0.000000e+00             ; 2 uses
  %i.f = fsub float %i.e, %3
  %i.g = fadd float %i.f, 0.000000e+00            ; 3 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.d)
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.e)
  %i.k = fadd float %i.j, 1.000000e+00            ; 3 uses
  %sincos.i.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %i.l = fneg float %sin.i.i.i                    ; 2 uses
  %i.m = fmul float %sin.i.i.i, 0.000000e+00
  %i.n = fsub float %cos.i.i.i, %i.m
  %i.o = fadd float %i.n, 0.000000e+00            ; 2 uses
  %10 = fmul float %cos.i.i.i, 0.000000e+00
  %i.p = fadd float %sin.i.i.i, %10
  %i.q = fmul float %i.i, %i.l
  %i.r = tail call float @llvm.fmuladd.f32(float %i.g, float %cos.i.i.i, float %i.q)
  %i.s = fmul float %cos.i.i.i, %i.i
  %i.t = tail call float @llvm.fmuladd.f32(float %i.g, float %sin.i.i.i, float %i.s)
  %i.u = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.t) ; 2 uses
  %i.v = fmul float %i.i, 0.000000e+00
  %i.w = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.v)
  %i.x = fadd float %i.k, %i.w                    ; 2 uses
  %i.y = insertelement <2 x float> poison, float %4, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.z, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fadd float %3, %i.ab
  %i.ad = insertelement <2 x float> poison, float %3, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> zeroinitializer, <2 x float> %i.aa)
  %11 = fadd float %i.p, 0.000000e+00             ; 2 uses
  %12 = fmul float %11, 0.000000e+00              ; 2 uses
  %13 = fadd float %i.o, %12
  %14 = insertelement <2 x float> poison, float %i.o, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x float> poison, float %11, i64 0
  %17 = insertelement <2 x float> %16, float %12, i64 1
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> zeroinitializer, <2 x float> %17)
  %i.ag = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %19 = insertelement <2 x float> %i.ag, float %sin.i.i.i, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %cos.i.i.i, i64 1
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> zeroinitializer, <2 x float> %i.ai)
  %20 = fadd <2 x float> %i.aj, zeroinitializer   ; 4 uses
  %21 = fmul <2 x float> %20, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %20, %shift
  %22 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> poison, float %i.ac, i64 0
  %23 = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %i.ak, <4 x float> %23, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %25 = fadd <4 x float> %24, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.al = insertelement <4 x float> poison, float %13, i64 0
  %26 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %i.al, <4 x float> %26, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %28 = shufflevector <4 x float> %27, <4 x float> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> zeroinitializer, <4 x float> %28)
  %i.am = extractelement <4 x float> %25, i64 2
  store <4 x float> %29, ptr %9, align 16, !tbaa !77
  %30 = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.r) ; 3 uses
  %31 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = shufflevector <2 x float> %20, <2 x float> %21, <2 x i32> <i32 1, i32 3>
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> zeroinitializer, <2 x float> %32)
  %34 = fmul float %i.u, 0.000000e+00             ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %i.u)
  %35 = fadd float %30, %34
  %36 = tail call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %34)
  %i.ao = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.x, i64 2
  %37 = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %38 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %39 = shufflevector <2 x float> %33, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = insertelement <4 x float> %39, float %35, i64 2
  %41 = insertelement <4 x float> %40, float %i.an, i64 3
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %38, <4 x float> %41)
  %43 = tail call float @llvm.fmuladd.f32(float %i.x, float %i.am, float %36)
  store <4 x float> %42, ptr %i.a, align 16, !tbaa !77
  store float %43, ptr %i.b, align 16, !tbaa !77
  %i.ap = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.ap, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.aq, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.ar

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
  %i.ab = alloca i8, align 1                      ; 4 uses
  %i.ac = alloca i8, align 1                      ; 4 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L5warp_IffEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_:bb.a
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = extractelement <2 x float> %i.ci, i64 0
  %i.cs = extractelement <2 x float> %i.ci, i64 1
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleIfEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %.sroa.035.0.vec.extract, float noundef %.sroa.024.0.vec.extract, float noundef %.sroa.035.4.vec.extract, float noundef %.sroa.024.4.vec.extract, float noundef %i.cr, float noundef %i.cs, ptr noundef %i.cl, i32 noundef %i.cn, i1 noundef zeroext %i.cq, ptr noundef %i.f)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.ct = load i32, ptr %i.z, align 8, !tbaa !234 ; 2 uses
  %i.cu = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cw = sext i32 %i.ct to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.c unwind label %bb.g, !llvm.loop !873

bb.g:                                             ; preds = %._crit_edge
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.cw, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.da = load float, ptr %i.cz, align 4, !tbaa !77
  %i.db = load ptr, ptr %3, align 8, !tbaa !228
  %i.dc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.lr.ph
  %i.dd = icmp eq i32 %i.dc, 3
  br i1 %i.dd, label %bb.i, label %bb.j, !prof !25

bb.i:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc, %bb.i
  %i.de = load ptr, ptr %i.ab, align 8, !tbaa !874
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv
  store float %i.da, ptr %i.df, align 4, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dg = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %.lr.ph, label %._crit_edge, !llvm.loop !875

bb.k:                                             ; preds = %bb.i, %.lr.ph
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.o:                                             ; preds = %bb.h, %bb.k, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.g ], [ %i.dj, %bb.k ], [ %i.cy, %bb.h ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_18Matrix33IfE7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix33") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !77 ; 4 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !77
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !77 ; 3 uses
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !77
  %i.k = fcmp une float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.l = phi float [ %.pre, %._crit_edge ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = insertelement <4 x float> poison, float %i.l, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.b, i64 2 ; 2 uses
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !77 ; 4 uses
  %i.u = load <2 x float>, ptr %i.m, align 4, !tbaa !77 ; 3 uses
  %i.v = load float, ptr %i.n, align 4, !tbaa !77 ; 2 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 1, i32 poison, i32 3, i32 2> ; 2 uses
  %i.x = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.y = extractelement <2 x float> %i.u, i64 0
  %i.z = fneg float %i.v
  %i.aa = load <2 x float>, ptr %i.p, align 4, !tbaa !77 ; 3 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.s, <4 x float> %i.ab, <4 x i32> <i32 0, i32 5, i32 2, i32 poison> ; 2 uses
  %i.ad = fneg <4 x float> %i.ac                  ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !77 ; 4 uses
  %i.ag = load float, ptr %i.q, align 4, !tbaa !77 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.w, <4 x float> %i.ah, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.aj = fmul <4 x float> %i.ai, %i.ae
  %i.ak = shufflevector <4 x float> %i.ac, <4 x float> %i.ai, <4 x i32> <i32 1, i32 4, i32 5, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.am = shufflevector <4 x float> %i.w, <4 x float> %i.s, <4 x i32> <i32 2, i32 6, i32 4, i32 4>
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.am, <4 x float> %i.aj) ; 4 uses
  %i.ao = extractelement <2 x float> %i.aa, i64 0
  %i.ap = fneg float %i.ao
  %i.aq = shufflevector <2 x float> %i.t, <2 x float> %i.af, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.ar = insertelement <4 x float> %i.aq, float %i.z, i64 2
  %i.as = shufflevector <4 x float> %i.ad, <4 x float> %i.x, <4 x i32> <i32 2, i32 0, i32 4, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.au = fmul <4 x float> %i.ar, %i.at
  %i.av = shufflevector <2 x float> %i.u, <2 x float> %i.t, <4 x i32> <i32 poison, i32 0, i32 0, i32 2>
  %i.aw = shufflevector <4 x float> %i.ah, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ax = shufflevector <2 x float> %i.aa, <2 x float> %i.af, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.ay = insertelement <4 x float> %i.ax, float %i.b, i64 1
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ay, <4 x float> %i.au) ; 3 uses
  %i.ba = fneg float %i.ag
  %i.bb = fmul float %i.y, %i.ba
  %i.bc = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.v, float %i.bb) ; 2 uses
  %i.be = extractelement <4 x float> %i.an, i64 3
  %i.bf = fmul float %i.ag, %i.be
  %i.bg = extractelement <4 x float> %i.an, i64 0
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bg, float %i.bf)
  %i.bi = extractelement <4 x float> %i.az, i64 2
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.b, float %i.bi, float %i.bh) ; 5 uses
  %i.bk = fcmp ogt float %i.bj, 0.000000e+00
  %i.bl = fneg float %i.bj
  %i.bm = select i1 %i.bk, float %i.bj, float %i.bl ; 2 uses
  %i.bn = fcmp ult float %i.bm, 1.000000e+00
  br i1 %i.bn, label %.preheader, label %.critedge59

.preheader:                                       ; preds = %bb.d
  %i.bo = fmul float %i.bm, f0x7E800000           ; 2 uses
  %i.bp = shufflevector <4 x float> %i.an, <4 x float> %i.az, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bp)
  %i.br = insertelement <8 x float> poison, float %i.bo, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bt = fcmp ogt <8 x float> %i.bs, %i.bq
  %i.bu = tail call float @llvm.fabs.f32(float %i.bd)
  %i.bv = fcmp ogt float %i.bo, %i.bu
  %i.bw = freeze <8 x i1> %i.bt
  %i.bx = bitcast <8 x i1> %i.bw to i8
  %i.by = icmp eq i8 %i.bx, -1
  %op.rdx = select i1 %i.by, i1 %i.bv, i1 false
  br i1 %op.rdx, label %.critedge59, label %bb.f

.critedge59:                                      ; preds = %.preheader, %bb.d
  %.sroa.50.0 = fdiv float %i.bd, %i.bj
  %i.bz = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = fdiv <4 x float> %i.an, %i.ca
  %i.cc = fdiv <4 x float> %i.az, %i.ca
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load <2 x float>, ptr %1, align 4, !tbaa !77 ; 2 uses
  %i.cf = load float, ptr %i.cd, align 4, !tbaa !77
  %i.cg = fneg float %i.cf                        ; 2 uses
  %i.ch = load <2 x float>, ptr %i.d, align 4, !tbaa !77 ; 3 uses
  %3 = load float, ptr %2, align 4, !tbaa !77
  %i.ci = extractelement <2 x float> %i.ch, i64 0 ; 2 uses
  %i.cj = fneg float %i.ci
  %i.ck = fmul float %i.ci, %i.cg
  %4 = extractelement <2 x float> %i.ce, i64 0    ; 2 uses
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %3, float %i.ck) ; 5 uses
  %i.cl = fcmp ogt float %5, 0.000000e+00
  %i.cm = fneg float %5
  %i.cn = select i1 %i.cl, float %5, float %i.cm  ; 2 uses
  %i.co = fcmp ult float %i.cn, 1.000000e+00
  br i1 %i.co, label %.preheader67, label %.critedge63

.preheader67:                                     ; preds = %bb.e
  %i.cp = fmul float %i.cn, f0x7E800000
  %i.cq = shufflevector <2 x float> %i.ch, <2 x float> %i.ce, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.cr = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cq)
  %i.cs = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cu = fcmp ogt <4 x float> %i.ct, %i.cr
  %i.cv = freeze <4 x i1> %i.cu
  %i.cw = bitcast <4 x i1> %i.cv to i4
  %i.cx = icmp eq i4 %i.cw, -1
  br i1 %i.cx, label %.critedge63, label %bb.f

.critedge63:                                      ; preds = %.preheader67, %bb.e
  %6 = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %6, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.cy = insertelement <4 x float> %7, float %i.cg, i64 1
  %i.cz = insertelement <4 x float> %i.cy, float %i.cj, i64 3
  %i.da = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %5, i64 0
  %8 = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.db = fdiv <4 x float> %i.cz, %8              ; 3 uses
  %.sroa.22.0 = fdiv float %4, %5                 ; 2 uses
  %i.dc = load float, ptr %i.h, align 4, !tbaa !77
  %i.dd = fneg float %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.df = load float, ptr %i.de, align 4, !tbaa !77
  %i.dg = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %.sroa.22.0, i64 1
  %i.di = fneg <2 x float> %i.dh
  %i.dj = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.dk, %i.di
  %i.dm = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.do, <2 x float> %i.dl)
  %i.dq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.22.0, i64 0
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.f

bb.f:                                             ; preds = %.preheader67, %.preheader, %.critedge63, %.critedge59
  %.sink = phi float [ 1.000000e+00, %.critedge63 ], [ 1.000000e+00, %.preheader ], [ %.sroa.50.0, %.critedge59 ], [ 1.000000e+00, %.preheader67 ]
  %i.dt = phi <4 x float> [ %i.db, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cb, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  %i.du = phi <4 x float> [ %i.ds, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cc, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  store <4 x float> %i.dt, ptr %0, align 4, !tbaa !77
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.du, ptr %i.dv, align 4, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink, ptr %i.dw, align 4, !tbaa !77
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleIfEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 16 uses
  %i.a = insertelement <2 x float> poison, float %3, i64 0
  %i.b = insertelement <2 x float> %i.a, float %4, i64 1
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.b) ; 2 uses
  %i.d = insertelement <2 x float> poison, float %5, i64 0
  %i.e = insertelement <2 x float> %i.d, float %6, i64 1
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e) ; 2 uses
  %i.g = fcmp olt <2 x float> %i.c, %i.f
  %i.h = select <2 x i1> %i.g, <2 x float> %i.f, <2 x float> %i.c ; 2 uses
  %i.i = fcmp ogt <2 x float> %i.h, splat (float 1.000000e+00)
  %i.j = select <2 x i1> %i.i, <2 x float> %i.h, <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.k = fdiv <2 x float> splat (float 1.000000e+00), %i.j ; 2 uses
  %i.l = extractelement <2 x float> %i.j, i64 0
  %i.m = fmul nnan float %i.l, 5.000000e-01
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load float, ptr %i.n, align 8, !tbaa !876 ; 2 uses
  %i.p = fmul float %i.m, %i.o                    ; 2 uses
  %i.q = extractelement <2 x float> %i.j, i64 1
  %i.r = fmul nnan float %i.q, 5.000000e-01
  %i.s = fmul float %i.r, %i.o                    ; 2 uses
  %i.t = fsub float %1, %i.p
  %i.u = tail call float @llvm.floor.f32(float %i.t)
  %i.v = fptosi float %i.u to i32                 ; 2 uses
  %i.w = fadd float %1, %i.p
  %i.x = tail call float @llvm.ceil.f32(float %i.w)
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %i.z = fsub float %2, %i.s
  %i.aa = tail call float @llvm.floor.f32(float %i.z)
  %i.ab = fptosi float %i.aa to i32               ; 2 uses
  %i.ac = fadd float %2, %i.s
  %i.ad = tail call float @llvm.ceil.f32(float %i.ac)
  %i.ae = fptosi float %i.ad to i32               ; 2 uses
  br i1 %9, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.af = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ag = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i98 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %i.v)
  %.1.i99 = tail call i32 @llvm.smin.i32(i32 %spec.select.i98, i32 %i.ag)
  %i.ah = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ai = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i95 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.y)
  %.1.i96 = tail call i32 @llvm.smin.i32(i32 %spec.select.i95, i32 %i.ai)
  %i.aj = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ak = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i92 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %i.ab)
  %.1.i93 = tail call i32 @llvm.smin.i32(i32 %spec.select.i92, i32 %i.ak)
  %i.al = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.am = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.ae)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.am)
  %i.an = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fcmp olt float %1, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.as = sitofp i32 %i.ar to float
  %i.at = fcmp ult float %1, %i.as
  br i1 %i.at, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.au = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.av = add nsw i32 %i.au, -1
  %i.aw = sitofp i32 %i.av to float
  %i.ax = fcmp olt float %2, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fcmp ult float %2, %i.az
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.bb = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph146.preheader, label %.loopexit

.lr.ph146.preheader:                              ; preds = %bb.f
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.be, i1 false), !tbaa !77
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.a
  %.0130 = phi i32 [ %.1.i, %bb.e ], [ %i.ae, %bb.a ]
  %.0129 = phi i32 [ %.1.i93, %bb.e ], [ %i.ab, %bb.a ]
  %.0128 = phi i32 [ %.1.i96, %bb.e ], [ %i.y, %bb.a ]
  %.0127 = phi i32 [ %.1.i99, %bb.e ], [ %i.v, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiiiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0127, i32 noundef %.0128, i32 noundef %.0129, i32 noundef %.0130, i32 noundef 0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %i.bf = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %._crit_edge164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2                    ; 2 uses
  %i.bi = alloca i8, i64 %i.bh, align 16
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.h, %bb.i
  %.pre-phi167 = phi i64 [ %i.bh, %bb.i ], [ 0, %bb.h ]
  %i.bj = phi ptr [ %i.bi, %bb.i ], [ null, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.bj, i8 0, i64 %.pre-phi167, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.br = icmp sgt i32 %i.bf, 0                   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 112
  %wide.trip.count = zext i32 %i.bf to i64        ; 5 uses
  %i.bt = extractelement <2 x float> %i.k, i64 0
  %i.bu = extractelement <2 x float> %i.k, i64 1
  %min.iters.check = icmp ult i32 %i.bf, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge164
  %.080 = phi float [ 0.000000e+00, %._crit_edge164 ], [ %i.cz, %._crit_edge ] ; 4 uses
  %i.bv = load i8, ptr %i.bk, align 8, !tbaa !220, !range !47, !noundef !48
  %i.bw = icmp eq i8 %i.bv, 0
  %.pre = load i32, ptr %i.bl, align 4, !tbaa !223 ; 2 uses
  br i1 %i.bw, label %bb.k, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.j
  %.pre162 = load i32, ptr %i.bn, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bx = load i32, ptr %i.bm, align 4, !tbaa !225
  %i.by = icmp eq i32 %.pre, %i.bx
  %.pre163 = load i32, ptr %i.bn, align 8, !tbaa !224 ; 3 uses
  %i.bz = load i32, ptr %i.bo, align 4
  %i.ca = icmp eq i32 %.pre163, %i.bz
  %or.cond = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.k
  %i.cb = load i32, ptr %i.bp, align 4, !tbaa !226
  %i.cc = load i32, ptr %i.bq, align 8, !tbaa !227
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.k, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ce = phi i32 [ %.pre162, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre163, %bb.k ], [ %.pre163, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.cf = sitofp i32 %.pre to float
  %i.cg = fadd nnan float %i.cf, 5.000000e-01
  %i.ch = fsub float %i.cg, %1
  %i.ci = fmul float %i.bt, %i.ch
  %i.cj = sitofp i32 %i.ce to float
  %i.ck = fadd nnan float %i.cj, 5.000000e-01
  %i.cl = fsub float %i.ck, %2
  %i.cm = fmul float %i.bu, %i.cl
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef float %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %7, float noundef %i.ci, float noundef %i.cm)
          to label %.preheader136 unwind label %bb.m ; 3 uses

end_hunk_2
