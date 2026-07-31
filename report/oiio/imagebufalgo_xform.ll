inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS2_8WrapModeENS0_3ROIEi:bb.a
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
  %i.e = fmul float %4, -0.000000e+00             ; 2 uses
  %i.f = fsub float %i.e, %3
  %10 = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.e)
  %i.g = fadd float %10, 1.000000e+00             ; 3 uses
  %sincos.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.d)
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 5 uses
  %11 = insertelement <2 x float> poison, float %sin.i.i, i64 0
  %12 = insertelement <2 x float> %11, float %i.f, i64 1
  %13 = fadd <2 x float> %12, <float -0.000000e+00, float 0.000000e+00>
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 6 uses
  %i.j = fneg float %sin.i.i                      ; 2 uses
  %i.k = fmul float %sin.i.i, 0.000000e+00
  %i.l = fsub float %cos.i.i, %i.k
  %i.m = fmul float %cos.i.i, 0.000000e+00
  %i.n = fadd float %sin.i.i, %i.m
  %15 = fmul float %i.i, 0.000000e+00
  %16 = fmul float %cos.i.i, %i.i
  %i.o = fmul float %i.i, %i.j
  %17 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i, i64 1
  %18 = insertelement <4 x float> %17, float %sin.i.i, i64 2
  %19 = insertelement <4 x float> poison, float %cos.i.i, i64 0
  %20 = insertelement <4 x float> %19, float %i.o, i64 1
  %21 = insertelement <4 x float> %20, float %16, i64 2
  %22 = insertelement <4 x float> %21, float %15, i64 3
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %18, <4 x float> %22) ; 4 uses
  %24 = extractelement <4 x float> %23, i64 3
  %25 = fadd float %i.g, %24                      ; 2 uses
  %i.p = fadd float %i.l, 0.000000e+00            ; 2 uses
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.r, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  %i.u = fadd float %3, %i.t
  %i.v = insertelement <2 x float> poison, float %3, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> zeroinitializer, <2 x float> %i.s)
  %i.y = insertelement <4 x float> poison, float %i.u, i64 0
  %i.z = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = shufflevector <4 x float> %i.y, <4 x float> %i.z, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ab = fadd <4 x float> %i.aa, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ac = fadd float %i.n, 0.000000e+00           ; 2 uses
  %i.ad = fmul float %i.ac, 0.000000e+00          ; 2 uses
  %i.ae = fadd float %i.p, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ad, i64 1
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> zeroinitializer, <2 x float> %i.ai)
  %i.ak = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %26 = extractelement <4 x float> %i.ab, i64 2
  %i.an = extractelement <4 x float> %23, i64 0
  %27 = fadd float %i.an, 0.000000e+00            ; 2 uses
  %i.ao = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.g, i64 3
  %28 = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.aq = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.j, i64 0
  %29 = shufflevector <4 x float> %i.aq, <4 x float> %23, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> zeroinitializer, <4 x float> %29) ; 2 uses
  %i.as = fadd <4 x float> %i.ar, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %30 = extractelement <4 x float> %23, i64 2
  %31 = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %30) ; 2 uses
  %32 = fmul float %27, 0.000000e+00              ; 2 uses
  %33 = fmul float %31, 0.000000e+00              ; 2 uses
  %i.at = extractelement <4 x float> %i.ar, i64 3 ; 2 uses
  %i.au = fadd float %i.at, %33
  %i.av = insertelement <4 x float> poison, float %27, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %32, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.au, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %31, i64 3
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> zeroinitializer, <4 x float> %i.ay)
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %33)
  %i.bb = extractelement <4 x float> %i.as, i64 0
  %i.bc = fadd float %i.bb, %32
  %i.bd = insertelement <4 x float> %i.am, float %i.bc, i64 3
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> zeroinitializer, <4 x float> %i.bd)
  %i.bf = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %25, i64 2
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bh = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bh, <4 x float> %i.az)
  %i.bj = tail call float @llvm.fmuladd.f32(float %25, float %26, float %i.ba)
  store <4 x float> %i.be, ptr %9, align 16, !tbaa !77
  store <4 x float> %i.bi, ptr %i.a, align 16, !tbaa !77
  store float %i.bj, ptr %i.b, align 16, !tbaa !77
  %i.bk = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i1 %i.bk
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
  %i.g = fmul float %4, -0.000000e+00             ; 2 uses
  %i.h = fsub float %i.g, %3
  %20 = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.g)
  %i.i = fadd float %20, 1.000000e+00             ; 3 uses
  %sincos.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.f)
  %i.k = fadd float %i.j, 0.000000e+00            ; 3 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 5 uses
  %21 = insertelement <2 x float> poison, float %sin.i.i, i64 0
  %22 = insertelement <2 x float> %21, float %i.h, i64 1
  %23 = fadd <2 x float> %22, <float -0.000000e+00, float 0.000000e+00>
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 6 uses
  %i.l = fneg float %sin.i.i                      ; 2 uses
  %i.m = fmul float %sin.i.i, 0.000000e+00
  %i.n = fsub float %cos.i.i, %i.m
  %i.o = fmul float %cos.i.i, 0.000000e+00
  %i.p = fadd float %sin.i.i, %i.o
  %25 = fmul float %i.k, 0.000000e+00
  %26 = fmul float %cos.i.i, %i.k
  %i.q = fmul float %i.k, %i.l
  %27 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i, i64 1
  %28 = insertelement <4 x float> %27, float %sin.i.i, i64 2
  %29 = insertelement <4 x float> poison, float %cos.i.i, i64 0
  %30 = insertelement <4 x float> %29, float %i.q, i64 1
  %31 = insertelement <4 x float> %30, float %26, i64 2
  %32 = insertelement <4 x float> %31, float %25, i64 3
  %33 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> %28, <4 x float> %32) ; 4 uses
  %34 = extractelement <4 x float> %33, i64 3
  %35 = fadd float %i.i, %34                      ; 2 uses
  %i.r = fadd float %i.n, 0.000000e+00            ; 2 uses
  %i.s = insertelement <2 x float> poison, float %4, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %i.t, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 1
  %i.w = fadd float %3, %i.v
  %i.x = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> zeroinitializer, <2 x float> %i.u)
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ad = fadd <4 x float> %i.ac, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ae = fadd float %i.p, 0.000000e+00           ; 2 uses
  %i.af = fmul float %i.ae, 0.000000e+00          ; 2 uses
  %i.ag = fadd float %i.r, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.af, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> zeroinitializer, <2 x float> %i.ak)
  %i.am = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %36 = extractelement <4 x float> %i.ad, i64 2
  %i.ap = extractelement <4 x float> %33, i64 0
  %37 = fadd float %i.ap, 0.000000e+00            ; 2 uses
  %i.aq = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.i, i64 3
  %38 = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.as = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.l, i64 0
  %39 = shufflevector <4 x float> %i.as, <4 x float> %33, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> zeroinitializer, <4 x float> %39) ; 2 uses
  %i.au = fadd <4 x float> %i.at, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %40 = extractelement <4 x float> %33, i64 2
  %41 = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %40) ; 2 uses
  %42 = fmul float %37, 0.000000e+00              ; 2 uses
  %43 = fmul float %41, 0.000000e+00              ; 2 uses
  %i.av = extractelement <4 x float> %i.at, i64 3 ; 2 uses
  %i.aw = fadd float %i.av, %43
  %i.ax = insertelement <4 x float> poison, float %37, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %42, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.aw, i64 2
  %i.ba = insertelement <4 x float> %i.az, float %41, i64 3
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> zeroinitializer, <4 x float> %i.ba)
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %43)
  %i.bd = extractelement <4 x float> %i.au, i64 0
  %i.be = fadd float %i.bd, %42
  %i.bf = insertelement <4 x float> %i.ao, float %i.be, i64 3
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> zeroinitializer, <4 x float> %i.bf)
  %i.bh = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %35, i64 2
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bj = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.bj, <4 x float> %i.bb)
  %i.bl = tail call float @llvm.fmuladd.f32(float %35, float %36, float %i.bc)
  store <4 x float> %i.bg, ptr %14, align 16, !tbaa !77
  store <4 x float> %i.bk, ptr %i.c, align 16, !tbaa !77
  store float %i.bl, ptr %i.d, align 16, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  store ptr @.str.6, ptr %16, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.bm, align 8, !tbaa !41
  %i.bn = load ptr, ptr %5, align 8, !tbaa !39
  store ptr %i.bn, ptr %17, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !41
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %15, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %6, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr @.str.10, ptr %13, align 8, !tbaa !39
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.br, align 8, !tbaa !41
  %i.bs = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr null, ptr %i.bv, align 8, !tbaa !114
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 48
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.bw, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 52
  store i32 0, ptr %i.bx, align 4, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.by, i8 0, i64 7, i1 false)
  store ptr %i.b, ptr %12, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.bz, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.bv, ptr %i.bs, i64 267, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %12, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ca = zext i1 %7 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.12, ptr %11, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 13, ptr %i.cb, align 8, !tbaa !41
  %i.cc = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #36
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr null, ptr %i.cf, align 8, !tbaa !114
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 88
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.cg, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 92
  store i32 0, ptr %i.ch, align 4, !tbaa !121
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ci, i8 0, i64 7, i1 false)
  store ptr %i.a, ptr %10, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.cj, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.cf, ptr %i.cc, i64 263, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %10, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 120
  store ptr @.str.14, ptr %18, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.cl, align 8, !tbaa !41
  store ptr @.str.28, ptr %19, align 8, !tbaa !39
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 5, ptr %i.cm, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %i.ck, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19) #33
  %i.cn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %14, ptr nonnull %15, i64 4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.co) #33
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.cp) #33
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.cq) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  ret i1 %i.cn

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.cs) #33
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.ct) #33
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.cu) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  resume { ptr, i32 } %i.cr
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
  %9 = call float @llvm.fmuladd.f32(float %i.p, float 0.000000e+00, float %i.r)
  %i.t = fadd float %9, 1.000000e+00              ; 3 uses
  %sincos.i.i.i = call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %i.u = call float @llvm.fmuladd.f32(float %i.p, float 0.000000e+00, float %i.q)
  %i.v = fadd float %i.u, 0.000000e+00            ; 3 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %10 = insertelement <2 x float> poison, float %sin.i.i.i, i64 0
  %11 = insertelement <2 x float> %10, float %i.s, i64 1
  %12 = fadd <2 x float> %11, <float -0.000000e+00, float 0.000000e+00>
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %i.w = fneg float %sin.i.i.i                    ; 2 uses
  %i.x = fmul float %sin.i.i.i, 0.000000e+00
  %i.y = fsub float %cos.i.i.i, %i.x
  %i.z = fmul float %cos.i.i.i, 0.000000e+00
  %i.aa = fadd float %sin.i.i.i, %i.z
  %14 = fmul float %i.v, 0.000000e+00
  %15 = fmul float %cos.i.i.i, %i.v
  %i.ab = fmul float %i.v, %i.w
  %16 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i.i, i64 1
  %17 = insertelement <4 x float> %16, float %sin.i.i.i, i64 2
  %18 = insertelement <4 x float> poison, float %cos.i.i.i, i64 0
  %19 = insertelement <4 x float> %18, float %i.ab, i64 1
  %20 = insertelement <4 x float> %19, float %15, i64 2
  %21 = insertelement <4 x float> %20, float %14, i64 3
  %22 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %17, <4 x float> %21) ; 4 uses
  %23 = extractelement <4 x float> %22, i64 3
  %i.ac = fadd float %i.t, %23                    ; 2 uses
  %i.ad = call float @llvm.copysign.f32(float 0.000000e+00, float %i.m) ; 2 uses
  %i.ae = fadd float %i.f, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ad, i64 1
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> zeroinitializer, <2 x float> %i.ai)
  %i.ak = fadd float %i.y, 0.000000e+00           ; 2 uses
  %i.al = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ao = fadd <4 x float> %i.an, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ap = fadd float %i.aa, 0.000000e+00          ; 2 uses
  %i.aq = fmul float %i.ap, 0.000000e+00          ; 2 uses
  %i.ar = fadd float %i.ak, %i.aq
  %i.as = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.aq, i64 1
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> zeroinitializer, <2 x float> %i.av)
  %i.ax = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %24 = extractelement <4 x float> %i.ao, i64 2
  %i.ba = extractelement <4 x float> %22, i64 0
  %25 = fadd float %i.ba, 0.000000e+00            ; 2 uses
  %i.bb = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i.i, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.t, i64 3
  %26 = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bd = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.w, i64 0
  %27 = shufflevector <4 x float> %i.bd, <4 x float> %22, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> zeroinitializer, <4 x float> %27) ; 2 uses
  %i.bf = fadd <4 x float> %i.be, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %28 = extractelement <4 x float> %22, i64 2
  %29 = call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %28) ; 2 uses
  %30 = fmul float %25, 0.000000e+00              ; 2 uses
  %31 = fmul float %29, 0.000000e+00              ; 2 uses
  %i.bg = extractelement <4 x float> %i.be, i64 3 ; 2 uses
  %i.bh = fadd float %i.bg, %31
  %i.bi = insertelement <4 x float> poison, float %25, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %30, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bh, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %29, i64 3
  %i.bm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> zeroinitializer, <4 x float> %i.bl)
  %i.bn = call float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %31)
  %i.bo = extractelement <4 x float> %i.bf, i64 0
  %i.bp = fadd float %i.bo, %30
  %i.bq = insertelement <4 x float> %i.az, float %i.bp, i64 3
  %i.br = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> zeroinitializer, <4 x float> %i.bq)
  %i.bs = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.ac, i64 2
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bu = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.bu, <4 x float> %i.bm)
  %i.bw = call float @llvm.fmuladd.f32(float %i.ac, float %24, float %i.bn)
  store <4 x float> %i.br, ptr %7, align 16, !tbaa !77
  store <4 x float> %i.bv, ptr %i.n, align 16, !tbaa !77
  store float %i.bw, ptr %i.o, align 16, !tbaa !77
  %i.bx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %7, ptr noundef %3, i1 noundef zeroext %4, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret i1 %i.bx
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
  %10 = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.e)
  %i.g = fadd float %10, 1.000000e+00             ; 3 uses
  %sincos.i.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.d)
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %11 = insertelement <2 x float> poison, float %sin.i.i.i, i64 0
  %12 = insertelement <2 x float> %11, float %i.f, i64 1
  %13 = fadd <2 x float> %12, <float -0.000000e+00, float 0.000000e+00>
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %i.j = fneg float %sin.i.i.i                    ; 2 uses
  %i.k = fmul float %sin.i.i.i, 0.000000e+00
  %i.l = fsub float %cos.i.i.i, %i.k
  %i.m = fmul float %cos.i.i.i, 0.000000e+00
  %i.n = fadd float %sin.i.i.i, %i.m
  %15 = fmul float %i.i, 0.000000e+00
  %16 = fmul float %cos.i.i.i, %i.i
  %i.o = fmul float %i.i, %i.j
  %17 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %cos.i.i.i, i64 1
  %18 = insertelement <4 x float> %17, float %sin.i.i.i, i64 2
  %19 = insertelement <4 x float> poison, float %cos.i.i.i, i64 0
  %20 = insertelement <4 x float> %19, float %i.o, i64 1
  %21 = insertelement <4 x float> %20, float %16, i64 2
  %22 = insertelement <4 x float> %21, float %15, i64 3
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %18, <4 x float> %22) ; 4 uses
  %24 = extractelement <4 x float> %23, i64 3
  %25 = fadd float %i.g, %24                      ; 2 uses
  %i.p = fadd float %i.l, 0.000000e+00            ; 2 uses
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.r, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  %i.u = fadd float %3, %i.t
  %i.v = insertelement <2 x float> poison, float %3, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> zeroinitializer, <2 x float> %i.s)
  %i.y = insertelement <4 x float> poison, float %i.u, i64 0
  %i.z = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = shufflevector <4 x float> %i.y, <4 x float> %i.z, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ab = fadd <4 x float> %i.aa, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ac = fadd float %i.n, 0.000000e+00           ; 2 uses
  %i.ad = fmul float %i.ac, 0.000000e+00          ; 2 uses
  %i.ae = fadd float %i.p, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ad, i64 1
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> zeroinitializer, <2 x float> %i.ai)
  %i.ak = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %26 = extractelement <4 x float> %i.ab, i64 2
  %i.an = extractelement <4 x float> %23, i64 0
  %27 = fadd float %i.an, 0.000000e+00            ; 2 uses
  %i.ao = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %cos.i.i.i, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.g, i64 3
  %28 = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.aq = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.j, i64 0
  %29 = shufflevector <4 x float> %i.aq, <4 x float> %23, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> zeroinitializer, <4 x float> %29) ; 2 uses
  %i.as = fadd <4 x float> %i.ar, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  %30 = extractelement <4 x float> %23, i64 2
  %31 = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %30) ; 2 uses
  %32 = fmul float %27, 0.000000e+00              ; 2 uses
  %33 = fmul float %31, 0.000000e+00              ; 2 uses
  %i.at = extractelement <4 x float> %i.ar, i64 3 ; 2 uses
  %i.au = fadd float %i.at, %33
  %i.av = insertelement <4 x float> poison, float %27, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %32, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.au, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %31, i64 3
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> zeroinitializer, <4 x float> %i.ay)
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %33)
  %i.bb = extractelement <4 x float> %i.as, i64 0
  %i.bc = fadd float %i.bb, %32
  %i.bd = insertelement <4 x float> %i.am, float %i.bc, i64 3
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> zeroinitializer, <4 x float> %i.bd)
  %i.bf = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %25, i64 2
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bh = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bh, <4 x float> %i.az)
  %i.bj = tail call float @llvm.fmuladd.f32(float %25, float %26, float %i.ba)
  store <4 x float> %i.be, ptr %9, align 16, !tbaa !77
  store <4 x float> %i.bi, ptr %i.a, align 16, !tbaa !77
  store float %i.bj, ptr %i.b, align 16, !tbaa !77
  %i.bk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.bk, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.bl, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.bm

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
