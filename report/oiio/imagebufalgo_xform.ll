inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS2_8WrapModeENS0_3ROIEi:bb.a
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
  %i.g = fadd float %i.f, 0.000000e+00            ; 3 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.d)
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.e)
  %i.k = fadd float %i.j, 1.000000e+00            ; 3 uses
  %10 = tail call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %11 = tail call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.l = fneg float %11                           ; 2 uses
  %i.m = fmul ninf float %11, 0.000000e+00
  %i.n = fsub float %10, %i.m
  %i.o = fadd float %i.n, 0.000000e+00            ; 2 uses
  %i.p = fmul ninf float %10, 0.000000e+00
  %i.q = fadd float %11, %i.p
  %i.r = fmul float %i.i, %i.l
  %i.s = tail call float @llvm.fmuladd.f32(float %i.g, float %10, float %i.r)
  %i.t = fmul float %10, %i.i
  %i.u = tail call float @llvm.fmuladd.f32(float %i.g, float %11, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.u) ; 2 uses
  %i.w = fmul float %i.i, 0.000000e+00
  %i.x = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.w)
  %i.y = fadd float %i.k, %i.x                    ; 2 uses
  %i.z = insertelement <2 x float> poison, float %4, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1
  %i.ad = fadd float %3, %i.ac
  %i.ae = insertelement <2 x float> poison, float %3, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> zeroinitializer, <2 x float> %i.ab)
  %i.ah = fadd float %i.q, 0.000000e+00           ; 2 uses
  %i.ai = fmul float %i.ah, 0.000000e+00          ; 2 uses
  %i.aj = fadd float %i.o, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.o, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ai, i64 1
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.an)
  %i.ap = insertelement <2 x float> poison, float %10, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %11, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.l, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %10, i64 1
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> zeroinitializer, <2 x float> %i.as)
  %i.au = fadd <2 x float> %i.at, zeroinitializer ; 4 uses
  %i.av = fmul <2 x float> %i.au, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.au, %shift
  %i.aw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ay = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ba = fadd <4 x float> %i.az, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.bb = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.bc = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> zeroinitializer, <4 x float> %i.be)
  %i.bg = extractelement <4 x float> %i.ba, i64 2
  store <4 x float> %i.bf, ptr %9, align 16, !tbaa !77
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.s) ; 3 uses
  %i.bi = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.au, <2 x float> %i.av, <2 x i32> <i32 1, i32 3>
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> zeroinitializer, <2 x float> %i.bj)
  %i.bl = fmul float %i.v, 0.000000e+00           ; 2 uses
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.v)
  %i.bn = fadd float %i.bh, %i.bl
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.bl)
  %i.bp = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.y, i64 2
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.br = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bs = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float %i.bn, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bm, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.br, <4 x float> %i.bu)
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bg, float %i.bo)
  store <4 x float> %i.bv, ptr %i.a, align 16, !tbaa !77
  store float %i.bw, ptr %i.b, align 16, !tbaa !77
  %i.bx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i1 %i.bx
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
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L9resample_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_bNS0_3ROIEi:bb.a
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
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.f)
  %i.k = fadd float %i.j, 0.000000e+00            ; 3 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.g)
  %i.m = fadd float %i.l, 1.000000e+00            ; 3 uses
  %20 = tail call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %21 = tail call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.n = fneg float %21                           ; 2 uses
  %i.o = fmul ninf float %21, 0.000000e+00
  %i.p = fsub float %20, %i.o
  %i.q = fadd float %i.p, 0.000000e+00            ; 2 uses
  %i.r = fmul ninf float %20, 0.000000e+00
  %i.s = fadd float %21, %i.r
  %i.t = fmul float %i.k, %i.n
  %i.u = tail call float @llvm.fmuladd.f32(float %i.i, float %20, float %i.t)
  %i.v = fmul float %20, %i.k
  %i.w = tail call float @llvm.fmuladd.f32(float %i.i, float %21, float %i.v)
  %i.x = tail call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.w) ; 2 uses
  %i.y = fmul float %i.k, 0.000000e+00
  %i.z = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.y)
  %i.aa = fadd float %i.m, %i.z                   ; 2 uses
  %i.ab = insertelement <2 x float> poison, float %4, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.ac, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 1
  %i.af = fadd float %3, %i.ae
  %i.ag = insertelement <2 x float> poison, float %3, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> zeroinitializer, <2 x float> %i.ad)
  %i.aj = fadd float %i.s, 0.000000e+00           ; 2 uses
  %i.ak = fmul float %i.aj, 0.000000e+00          ; 2 uses
  %i.al = fadd float %i.q, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.q, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.ak, i64 1
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> zeroinitializer, <2 x float> %i.ap)
  %i.ar = insertelement <2 x float> poison, float %20, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %21, i64 1
  %i.at = insertelement <2 x float> poison, float %i.n, i64 0
  %i.au = insertelement <2 x float> %i.at, float %20, i64 1
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> zeroinitializer, <2 x float> %i.au)
  %i.aw = fadd <2 x float> %i.av, zeroinitializer ; 4 uses
  %i.ax = fmul <2 x float> %i.aw, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aw, %shift
  %i.ay = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.az = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ba = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.bc = fadd <4 x float> %i.bb, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.bd = insertelement <4 x float> poison, float %i.al, i64 0
  %i.be = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> zeroinitializer, <4 x float> %i.bg)
  %i.bi = extractelement <4 x float> %i.bc, i64 2
  store <4 x float> %i.bh, ptr %14, align 16, !tbaa !77
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.u) ; 3 uses
  %i.bk = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> zeroinitializer, <2 x float> %i.bl)
  %i.bn = fmul float %i.x, 0.000000e+00           ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.x)
  %i.bp = fadd float %i.bj, %i.bn
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.bn)
  %i.br = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.aa, i64 2
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bt = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bu = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bv = insertelement <4 x float> %i.bu, float %i.bp, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bo, i64 3
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bt, <4 x float> %i.bw)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bi, float %i.bq)
  store <4 x float> %i.bx, ptr %i.c, align 16, !tbaa !77
  store float %i.by, ptr %i.d, align 16, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  store ptr @.str.6, ptr %16, align 8, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.bz, align 8, !tbaa !41
  %i.ca = load ptr, ptr %5, align 8, !tbaa !39
  store ptr %i.ca, ptr %17, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !41
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %15, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %6, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr @.str.10, ptr %13, align 8, !tbaa !39
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.ce, align 8, !tbaa !41
  %i.cf = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr null, ptr %i.ci, align 8, !tbaa !114
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 48
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.cj, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 52
  store i32 0, ptr %i.ck, align 4, !tbaa !121
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cl, i8 0, i64 7, i1 false)
  store ptr %i.b, ptr %12, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.cm, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.ci, ptr %i.cf, i64 267, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %12, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cn = zext i1 %7 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.12, ptr %11, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 13, ptr %i.co, align 8, !tbaa !41
  %i.cp = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #36
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %bb.c
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr null, ptr %i.cs, align 8, !tbaa !114
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 88
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ct, align 8, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 92
  store i32 0, ptr %i.cu, align 4, !tbaa !121
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cv, i8 0, i64 7, i1 false)
  store ptr %i.a, ptr %10, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.cw, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.cs, ptr %i.cp, i64 263, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %10, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 120
  store ptr @.str.14, ptr %18, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.cy, align 8, !tbaa !41
  store ptr @.str.28, ptr %19, align 8, !tbaa !39
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 5, ptr %i.cz, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %i.cx, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19) #33
  %i.da = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %14, ptr nonnull %15, i64 4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.db) #33
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.dc) #33
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.dd) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  ret i1 %i.da

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.df) #33
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.dg) #33
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.dh) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  resume { ptr, i32 } %i.de
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
  %9 = call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %10 = call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.y = fneg float %10                           ; 2 uses
  %i.z = fmul ninf float %10, 0.000000e+00
  %i.aa = fsub float %9, %i.z
  %i.ab = fadd float %i.aa, 0.000000e+00          ; 2 uses
  %i.ac = fmul ninf float %9, 0.000000e+00
  %i.ad = fadd float %10, %i.ac
  %i.ae = fmul float %i.v, %i.y
  %i.af = call float @llvm.fmuladd.f32(float %i.t, float %9, float %i.ae)
  %i.ag = fmul float %9, %i.v
  %i.ah = call float @llvm.fmuladd.f32(float %i.t, float %10, float %i.ag)
  %i.ai = call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %i.ah) ; 2 uses
  %i.aj = fmul float %i.v, 0.000000e+00
  %i.ak = call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.aj)
  %i.al = fadd float %i.x, %i.ak                  ; 2 uses
  %i.am = call float @llvm.copysign.f32(float 0.000000e+00, float %i.m) ; 2 uses
  %i.an = fadd float %i.f, %i.am
  %i.ao = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.am, i64 1
  %i.as = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> zeroinitializer, <2 x float> %i.ar)
  %i.at = fadd float %i.ad, 0.000000e+00          ; 2 uses
  %i.au = fmul float %i.at, 0.000000e+00          ; 2 uses
  %i.av = fadd float %i.ab, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x float> poison, float %i.at, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.au, i64 1
  %i.ba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.az)
  %i.bb = insertelement <2 x float> poison, float %9, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %10, i64 1
  %i.bd = insertelement <2 x float> poison, float %i.y, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %9, i64 1
  %i.bf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.be)
  %i.bg = fadd <2 x float> %i.bf, zeroinitializer ; 4 uses
  %i.bh = fmul <2 x float> %i.bg, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bg, %shift
  %i.bi = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bj = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bk = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.bm = fadd <4 x float> %i.bl, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.bn = insertelement <4 x float> poison, float %i.av, i64 0
  %i.bo = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.br = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> zeroinitializer, <4 x float> %i.bq)
  %i.bs = extractelement <4 x float> %i.bm, i64 2
  store <4 x float> %i.br, ptr %7, align 16, !tbaa !77
  %i.bt = call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %i.af) ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> zeroinitializer, <2 x float> %i.bv)
  %i.bx = fmul float %i.ai, 0.000000e+00          ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bt, float 0.000000e+00, float %i.ai)
  %i.bz = fadd float %i.bt, %i.bx
  %i.ca = call float @llvm.fmuladd.f32(float %i.bt, float 0.000000e+00, float %i.bx)
  %i.cb = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.al, i64 2
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cd = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ce = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = insertelement <4 x float> %i.ce, float %i.bz, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %i.by, i64 3
  %i.ch = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cd, <4 x float> %i.cg)
  %i.ci = call float @llvm.fmuladd.f32(float %i.al, float %i.bs, float %i.ca)
  store <4 x float> %i.ch, ptr %i.n, align 16, !tbaa !77
  store float %i.ci, ptr %i.o, align 16, !tbaa !77
  %i.cj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %7, ptr noundef %3, i1 noundef zeroext %4, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret i1 %i.cj
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
  %10 = tail call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %11 = tail call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.l = fneg float %11                           ; 2 uses
  %i.m = fmul ninf float %11, 0.000000e+00
  %i.n = fsub float %10, %i.m
  %i.o = fadd float %i.n, 0.000000e+00            ; 2 uses
  %i.p = fmul ninf float %10, 0.000000e+00
  %i.q = fadd float %11, %i.p
  %i.r = fmul float %i.i, %i.l
  %i.s = tail call float @llvm.fmuladd.f32(float %i.g, float %10, float %i.r)
  %i.t = fmul float %10, %i.i
  %i.u = tail call float @llvm.fmuladd.f32(float %i.g, float %11, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.u) ; 2 uses
  %i.w = fmul float %i.i, 0.000000e+00
  %i.x = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.w)
  %i.y = fadd float %i.k, %i.x                    ; 2 uses
  %i.z = insertelement <2 x float> poison, float %4, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1
  %i.ad = fadd float %3, %i.ac
  %i.ae = insertelement <2 x float> poison, float %3, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> zeroinitializer, <2 x float> %i.ab)
  %i.ah = fadd float %i.q, 0.000000e+00           ; 2 uses
  %i.ai = fmul float %i.ah, 0.000000e+00          ; 2 uses
  %i.aj = fadd float %i.o, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.o, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ai, i64 1
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.an)
  %i.ap = insertelement <2 x float> poison, float %10, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %11, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.l, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %10, i64 1
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> zeroinitializer, <2 x float> %i.as)
  %i.au = fadd <2 x float> %i.at, zeroinitializer ; 4 uses
  %i.av = fmul <2 x float> %i.au, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.au, %shift
  %i.aw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ay = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ba = fadd <4 x float> %i.az, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.bb = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.bc = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> zeroinitializer, <4 x float> %i.be)
  %i.bg = extractelement <4 x float> %i.ba, i64 2
  store <4 x float> %i.bf, ptr %9, align 16, !tbaa !77
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.s) ; 3 uses
  %i.bi = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.au, <2 x float> %i.av, <2 x i32> <i32 1, i32 3>
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> zeroinitializer, <2 x float> %i.bj)
  %i.bl = fmul float %i.v, 0.000000e+00           ; 2 uses
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.v)
  %i.bn = fadd float %i.bh, %i.bl
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.bl)
  %i.bp = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.y, i64 2
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.br = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bs = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float %i.bn, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bm, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.br, <4 x float> %i.bu)
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bg, float %i.bo)
  store <4 x float> %i.bv, ptr %i.a, align 16, !tbaa !77
  store float %i.bw, ptr %i.b, align 16, !tbaa !77
  %i.bx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.bx, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.by, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.c
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.bz

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
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L5warp_IttEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_:bb.a
._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.c
  %.pre49 = load i32, ptr %i.m, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !225
  %i.af = icmp eq i32 %.pre, %i.ae
  %.pre50 = load i32, ptr %i.m, align 8, !tbaa !224 ; 3 uses
  %i.ag = load i32, ptr %i.n, align 4
  %i.ah = icmp eq i32 %.pre50, %i.ag
  %or.cond = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.d
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !226
  %i.aj = load i32, ptr %i.p, align 8, !tbaa !227
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.d, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.al = phi i32 [ %.pre49, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre50, %bb.d ], [ %.pre50, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.am = sitofp i32 %.pre to float
  %i.an = fadd float %i.am, 5.000000e-01          ; 2 uses
  %i.ao = sitofp i32 %i.al to float
  %i.ap = fadd float %i.ao, 5.000000e-01          ; 2 uses
  %i.aq = load float, ptr %i.q, align 8, !tbaa !77 ; 3 uses
  %i.ar = fmul float %i.an, %i.aq
  %i.as = load float, ptr %i.r, align 4, !tbaa !77 ; 3 uses
  %i.at = fmul float %i.ap, %i.as
  %i.au = fadd float %i.ar, %i.at
  %i.av = load float, ptr %i.s, align 8, !tbaa !77
  %i.aw = fadd float %i.av, %i.au                 ; 2 uses
  %i.ax = fcmp une float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.e, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ay = fmul float %i.aq, 0.000000e+00
  %i.az = fadd float %i.ay, %i.as
  %i.ba = fmul float %i.as, 0.000000e+00
  %i.bb = fadd float %i.aq, %i.ba
  %i.bc = fdiv float 1.000000e+00, %i.aw          ; 3 uses
  %i.bd = load <2 x float>, ptr %i.u, align 4, !tbaa !77 ; 3 uses
  %i.be = load <2 x float>, ptr %2, align 8, !tbaa !77 ; 3 uses
  %i.bf = load <2 x float>, ptr %i.t, align 8, !tbaa !77
  %i.bg = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bh, %i.be
  %i.bj = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bk, %i.bd
  %i.bm = fadd <2 x float> %i.bi, %i.bl
  %i.bn = fadd <2 x float> %i.bf, %i.bm
  %i.bo = fmul <2 x float> %i.be, zeroinitializer
  %i.bp = fadd <2 x float> %i.bo, %i.bd
  %i.bq = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x float> %i.br, %i.bn           ; 3 uses
  %i.bt = fneg <2 x float> %i.bs                  ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bp)
  %i.bx = fmul <2 x float> %i.bd, zeroinitializer
  %i.by = fadd <2 x float> %i.be, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ca, <2 x float> %i.by) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = fmul float %i.bc, %i.cc
  %.sroa.0.4.vec.insert.i119.i = insertelement <2 x float> %i.bs, float %i.cd, i64 1
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %i.cf = fmul float %i.bc, %i.ce
  %i.cg = fmul <2 x float> %i.br, %i.bw
  %i.ch = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i123.i = insertelement <2 x float> %i.ch, float %i.cf, i64 1
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit

_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.e
  %.sroa.024.1 = phi <2 x float> [ %.sroa.0.4.vec.insert.i123.i, %bb.e ], [ zeroinitializer, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread ] ; 2 uses
  %.sroa.035.1 = phi <2 x float> [ %.sroa.0.4.vec.insert.i119.i, %bb.e ], [ zeroinitializer, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread ] ; 2 uses
  %i.ci = phi <2 x float> [ %i.cg, %bb.e ], [ zeroinitializer, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread ] ; 2 uses
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !960, !nonnull !48, !align !386
  %.sroa.035.0.vec.extract = extractelement <2 x float> %.sroa.035.1, i64 0
  %.sroa.024.0.vec.extract = extractelement <2 x float> %.sroa.024.1, i64 0
  %.sroa.035.4.vec.extract = extractelement <2 x float> %.sroa.035.1, i64 1
  %.sroa.024.4.vec.extract = extractelement <2 x float> %.sroa.024.1, i64 1
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !961, !nonnull !48, !align !386
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = load ptr, ptr %i.x, align 8, !tbaa !962, !nonnull !48, !align !367
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !84
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !963, !nonnull !48
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !86, !range !47, !noundef !48
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = extractelement <2 x float> %i.ci, i64 0
  %i.cs = extractelement <2 x float> %i.ci, i64 1
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleItEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %.sroa.035.0.vec.extract, float noundef %.sroa.024.0.vec.extract, float noundef %.sroa.035.4.vec.extract, float noundef %.sroa.024.4.vec.extract, float noundef %i.cr, float noundef %i.cs, ptr noundef %i.cl, i32 noundef %i.cn, i1 noundef zeroext %i.cq, ptr noundef %i.f)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.ct = load i32, ptr %i.z, align 8, !tbaa !234 ; 2 uses
  %i.cu = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cw = sext i32 %i.ct to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.c unwind label %bb.k, !llvm.loop !964

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.cw, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !77
  %i.da = load ptr, ptr %3, align 8, !tbaa !228
  %i.db = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.lr.ph
  %i.dc = icmp eq i32 %i.db, 3
  br i1 %i.dc, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc, %bb.h
  %i.dd = load ptr, ptr %i.ab, align 8, !tbaa !874
  %i.de = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = fmul float %i.cz, 6.553500e+04          ; 2 uses
  %i.dg = fcmp olt float %i.df, 0.000000e+00
  %i.dh = select i1 %i.dg, float -5.000000e-01, float 5.000000e-01
  %i.di = fadd float %i.df, %i.dh                 ; 2 uses
  %.inv.i.i.i.i.i = fcmp oge float %i.di, 0.000000e+00
  %.0.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, float %i.di, float 0.000000e+00 ; 2 uses
  %i.dj = fcmp ogt float %.0.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i = select i1 %i.dj, float 6.553500e+04, float %.0.i.i.i.i.i.i
  %i.dk = fptoui float %.1.i.i.i.i.i.i to i16
  store i16 %i.dk, ptr %i.de, align 2, !tbaa !933
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dl = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !965

bb.j:                                             ; preds = %bb.h, %.lr.ph
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.k ], [ %i.do, %bb.j ], [ %i.cx, %bb.g ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span.134") align 8, i8, i8) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, ptr, i64, i8, i8) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.137", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !143, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %spec.select = select i1 %.not, ptr @.str.42, ptr %i.e
  %i.f = load i8, ptr %0, align 8, !tbaa !141, !range !47, !noundef !48
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.j = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #33 ; 0 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !146
  %i.l = mul nsw i64 %i.k, 1000000000
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.o = sub i64 %i.n, %i.i
  %i.p = add i64 %i.o, %i.l
  %i.q = call noundef i64 @llvm.abs.i64(i64 %i.p, i1 true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !156
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = sitofp i64 %i.u to double
  %i.w = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !157
  %i.x = fmul double %i.w, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %spec.select, ptr %2, align 16, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.x, ptr %i.y, align 16, !tbaa !24
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !82
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.z, ptr nonnull @.str.84, i64 16, i64 172, ptr nonnull %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #36
  unreachable
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::file_print_buffer", align 8 ; 10 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !966
  %i.b = and i32 %i.a, 2
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.a
  tail call void @_ZN3fmt3v1215vprint_bufferedEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, ptr %4)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvE4growERNS1_6bufferIcEEm, ptr %i.e, align 8, !tbaa !263
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !971
  tail call void @flockfile(ptr noundef nonnull %0) #33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !973  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !974
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit, label %putc_unlocked.exit.i.i

putc_unlocked.exit.i.i:                           ; preds = %bb.b
  %i.l = tail call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 0), !inline_history !975 ; 0 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !973
  br label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit

_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit: ; preds = %bb.b, %putc_unlocked.exit.i.i
  %i.o = phi ptr [ %i.h, %bb.b ], [ %i.n, %putc_unlocked.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !976
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  store ptr %i.o, ptr %5, align 8, !tbaa !265
  store i64 %i.u, ptr %i.p, align 8, !tbaa !266
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %1, i64 %2, i64 %3, ptr %4, ptr null)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !270
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !971  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !973
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !973
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !966
  %i.ab = and i32 %i.aa, 512
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.thread.i, label %_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.i

_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.thread.i: ; preds = %bb.c
  call void @funlockfile(ptr noundef nonnull %i.w) #33
  br label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvED2Ev.exit

_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !974 ; 2 uses
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call noundef i64 @llvm.smax.i64(i64 %i.ah, i64 0)
  %i.aj = call noundef ptr @memchr(ptr noundef %i.ae, i32 noundef 10, i64 noundef %i.ai) #40
  %.not.i = icmp eq ptr %i.aj, null
  call void @funlockfile(ptr noundef nonnull %i.w) #33
  br i1 %.not.i, label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.i
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !971
  %i.al = call i32 @fflush(ptr noundef %i.ak)     ; 0 uses
  br label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvED2Ev.exit

_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvED2Ev.exit: ; preds = %_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.thread.i, %_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %i.am

bb.f:                                             ; preds = %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvED2Ev.exit, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1215vprint_bufferedEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.b, align 8, !tbaa !263
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !265
  store i64 500, ptr %i.a, align 8, !tbaa !266
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %1, i64 %2, i64 %3, ptr %4, ptr null)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %5, align 8, !tbaa !265
  %i.f = load i64, ptr %i.c, align 8, !tbaa !270  ; 2 uses
  %i.g = call i64 @fwrite(ptr noundef %i.e, i64 noundef 1, i64 noundef %i.f, ptr noundef %0)
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail5printEP8_IO_FILENS0_17basic_string_viewIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @__cxa_allocate_exception(i64 32) #33 ; 3 uses
  %i.j = tail call ptr @__errno_location() #41
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  invoke void @_ZN3fmt3v1212system_errorIJEEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS4_(ptr dead_on_unwind writable sret(%"class.std::system_error") align 8 %i.i, i32 noundef %i.k, ptr nonnull @.str.88, i64 20)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.i, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #35
          to label %.noexc unwind label %bb.g
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a

bb.aq:                                            ; preds = %bb.v, %bb.w, %bb.ag, %bb.ac, %bb.x, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %bb.ai ], [ %i.hm, %bb.w ], [ %i.ir, %bb.ac ], [ %i.hl, %bb.v ], [ %i.jb, %bb.ag ], [ %i.hu, %bb.x ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !230
  %.not.i108 = icmp eq ptr %i.jp, null
  br i1 %.not.i108, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109: ; preds = %bb.ar, %bb.aq, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.g ], [ %.pn.pn.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn.pn.pn.pn.pn, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !230
  %.not.i110 = icmp eq ptr %i.jt, null
  br i1 %.not.i110, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, label %bb.at

bb.at:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111: ; preds = %bb.at, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eh, %bb.f ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !230
  %.not.i112 = icmp eq ptr %i.jx, null
  br i1 %.not.i112, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113, label %bb.av

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_imagebufalgo_xform.cpp() #30 section ".text.startup" {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @.str, ptr %7, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 9, ptr %i.a, align 8, !tbaa !41
  %i.b = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %7)
  store ptr %i.b, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112edgeclamp_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.c = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_112edgeclamp_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.2, ptr %6, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.d, align 8, !tbaa !41
  %i.e = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %6)
  store ptr %i.e, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18exact_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.f = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_18exact_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.str.4, ptr %5, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !41
  %i.h = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %5)
  store ptr %i.h, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_111fillmode_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.i = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_111fillmode_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.6, ptr %4, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %i.j, align 8, !tbaa !41
  %i.k = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %4)
  store ptr %i.k, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113filtername_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.l = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_113filtername_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.8, ptr %3, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.m, align 8, !tbaa !41
  %i.n = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
  store ptr %i.n, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112filterptr_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.o = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_112filterptr_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.10, ptr %2, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.p, align 8, !tbaa !41
  %i.q = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %2)
  store ptr %i.q, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114filterwidth_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.r = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_114filterwidth_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.12, ptr %1, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.s, align 8, !tbaa !41
  %i.t = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %1)
  store ptr %i.t, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_116recompute_roi_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.u = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116recompute_roi_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr @.str.14, ptr %0, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.v, align 8, !tbaa !41
  %i.w = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %0)
  store ptr %i.w, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17wrap_usE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.x = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_17wrap_usE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #26 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin nounwind }
attributes #38 = { cold nounwind }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt12__shared_ptrIKN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !14, i64 8}
!13 = !{!"p1 _ZTSN11OpenImageIO4v3_18Filter2DE", !10, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!15 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!14, !15, i64 0}
!18 = !{!19, !4, i64 8}
!19 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!20 = !{!19, !4, i64 12}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !6, i64 0}
!23 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = !{!5, !5, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = distinct !{ptr @_ZNSt12__shared_ptrIKN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSN11OpenImageIO4v3_14spanIKNS0_10ParamValueELm18446744073709551615EEE", !29, i64 0, !30, i64 8}
!29 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !10, i64 0}
!30 = !{!"long", !5, i64 0}
!31 = !{!28, !30, i64 8}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!34 = distinct !{!34, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!35 = !{!36, !30, i64 40}
!36 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !30, i64 0, !37, i64 8, !30, i64 40, !30, i64 48, !4, i64 56}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !30, i64 8, !5, i64 16}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!39 = !{!40, !9, i64 0}
!40 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !9, i64 0, !30, i64 8}
!41 = !{!40, !30, i64 8}
!42 = !{!43, !46, i64 38}
!43 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !44, i64 0, !45, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !46, i64 37, !46, i64 38}
!44 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !9, i64 0}
!45 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!46 = !{!"bool", !5, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!13, !13, i64 0}
!50 = !{!51, !10, i64 0}
!51 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPKN11OpenImageIO4v3_18Filter2DEELb0EE", !10, i64 0}
!52 = !{!53, !13, i64 8}
!53 = !{!"_ZTSNSt19_Sp_counted_deleterIPKN11OpenImageIO4v3_18Filter2DEPFvS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !51, i64 0, !13, i64 8}
!54 = !{!55, !10, i64 0}
!55 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPN11OpenImageIO4v3_18Filter2DEELb0EE", !10, i64 0}
!56 = !{!57, !13, i64 8}
!57 = !{!"_ZTSNSt19_Sp_counted_deleterIPN11OpenImageIO4v3_18Filter2DEPFvS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !55, i64 0, !13, i64 8}
!58 = !{!38, !9, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!62 = !{!30, !30, i64 0}
!63 = !{!37, !9, i64 0}
!64 = !{!37, !30, i64 8}
!65 = !{!66, !9, i64 0}
!66 = !{!"_ZTSN11OpenImageIO4v3_110FilterDescE", !9, i64 0, !4, i64 8, !67, i64 12, !46, i64 16, !46, i64 17, !46, i64 18}
!67 = !{!"float", !5, i64 0}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = distinct !{null, null}
!71 = !{!72, !4, i64 0}
!72 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!73 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 4, !3}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN11OpenImageIO4v3_112_GLOBAL__N_19transformERKN9Imath_3_18Matrix33IfEENS0_3ROIE: argument 0"}
!76 = distinct !{!76, !"_ZN11OpenImageIO4v3_112_GLOBAL__N_19transformERKN9Imath_3_18Matrix33IfEENS0_3ROIE"}
!77 = !{!67, !67, i64 0}
!78 = !{!72, !4, i64 28}
!79 = !{!80, !13, i64 0}
!80 = !{!"_ZTSSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !14, i64 8}
!81 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!82 = !{!83, !83, i64 0}
!83 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"_ZTSN11OpenImageIO4v3_18ImageBuf8WrapModeE", !5, i64 0}
!86 = !{!46, !46, i64 0}
!87 = !{!88, !4, i64 0}
!88 = !{!"_ZTSN11OpenImageIO4v3_16paroptE", !4, i64 0, !89, i64 4, !90, i64 6, !30, i64 8, !91, i64 16, !46, i64 24}
!89 = !{!"_ZTSN11OpenImageIO4v3_16paropt11ParStrategyE", !5, i64 0}
!90 = !{!"_ZTSN11OpenImageIO4v3_16paropt8SplitDirE", !5, i64 0}
!91 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !10, i64 0}
!92 = !{!88, !89, i64 4}
!93 = !{!88, !90, i64 6}
!94 = !{!88, !30, i64 8}
!95 = !{!88, !91, i64 16}
!96 = !{!88, !46, i64 24}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !10, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"p1 _ZTSN9Imath_3_18Matrix33IfEE", !10, i64 0}
!101 = !{!102, !102, i64 0}
!102 = !{!"p2 _ZTSN11OpenImageIO4v3_18Filter2DE", !103, i64 0}
!103 = !{!"any p2 pointer", !10, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"p1 bool", !10, i64 0}
!106 = !{!107, !10, i64 24}
!107 = !{!"_ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !108, i64 0, !10, i64 24}
!108 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!109 = !{!108, !10, i64 16}
!110 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA27_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!113 = distinct !{!113, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA27_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!114 = !{!44, !9, i64 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!117 = distinct !{!117, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN11OpenImageIO4v3_17make_pvIKNS0_8Filter2DEEENS0_10ParamValueENS0_17basic_string_viewIcSt11char_traitsIcEEEPT_: argument 0"}
!120 = distinct !{!120, !"_ZN11OpenImageIO4v3_17make_pvIKNS0_8Filter2DEEENS0_10ParamValueENS0_17basic_string_viewIcSt11char_traitsIcEEEPT_"}
!121 = !{!45, !4, i64 4}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!124 = distinct !{!124, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!125 = !{!126}
end_hunk_3
