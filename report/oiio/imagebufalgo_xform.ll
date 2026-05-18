inline.NumInlined: 5677
inline.NumDeleted: 1666
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev:bb.a
  %i.a = load i32, ptr @_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE, align 4, !tbaa !3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  store ptr %i.c, ptr %3, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  store i64 %i.f, ptr %i.d, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162
  invoke void @_ZN11OpenImageIO4v3_18log_timeENS0_17basic_string_viewIcSt11char_traitsIcEEERKNS0_5TimerEi(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !24
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !161, !range !47, !noundef !48
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !173  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  %spec.select.i = select i1 %.not.i, ptr @.str.42, ptr %i.s
  %i.t = load i8, ptr %0, align 8, !tbaa !159, !range !47, !noundef !48
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.x = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #33 ; 0 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !164
  %i.z = mul nsw i64 %i.y, 1000000000
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.ac = sub i64 %i.ab, %i.w
  %i.ad = add i64 %i.ac, %i.z
  %i.ae = call noundef i64 @llvm.abs.i64(i64 %i.ad, i1 true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !174
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = sitofp i64 %i.ai to double
  %i.ak = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !175
  %i.al = fmul double %i.ak, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %spec.select.i, ptr %2, align 16, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.al, ptr %i.am, align 16, !tbaa !24
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !82
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.an, ptr nonnull @.str.84, i64 16, i64 172, ptr nonnull %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #36
  unreachable

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.i:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo6resizeERKNS0_8ImageBufENS0_14ParamValueSpanENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, i64 %3, ptr noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %4, i32 noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, i64 %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.23)
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
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(29) %1) #33, !noalias !177
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !177
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(29) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !177
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
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, i64 %3, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::span.134", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ParamValueSpan", align 8 ; 7 uses
  %10 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 10 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 9 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %15 = alloca %"class.std::shared_ptr.17", align 16 ; 7 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %18 = alloca %"class.Imath_3_1::Matrix33", align 4 ; 12 uses
  %19 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 26 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 26 uses
  %23 = alloca [1 x %"class.OpenImageIO::v3_1::ParamValue"], align 8 ; 11 uses
  %24 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 9 uses
  store ptr %2, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr @.str.24, ptr %11, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %i.c, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %10, ptr noundef nonnull dead_on_return %11)
  %i.d = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized) #33
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113filtername_usE, align 8, !tbaa !8
  store i64 %i.g, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, align 16, !tbaa !8
  %i.h = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114filterwidth_usE, align 8, !tbaa !8
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, i64 8), align 8, !tbaa !8
  %i.i = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112filterptr_usE, align 8, !tbaa !8
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, i64 16), align 16, !tbaa !8
  %i.j = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_111fillmode_usE, align 8, !tbaa !8
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, i64 24), align 8, !tbaa !8
  %i.k = load i64, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18exact_usE, align 8, !tbaa !8
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized, i64 32), align 16, !tbaa !8
  %i.l = call ptr @llvm.invariant.start.p0(i64 40, ptr nonnull @_ZZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_112ImageBufAlgo3fitERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEiE10recognized) #33
  br label %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit

_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_S7_PNS0_9ImageSpecEi(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 24)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit unwind label %bb.d

_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit: ; preds = %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit
  br i1 %i.m, label %bb.e, label %bb.ci

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1L18IBA_check_optionalENS0_14ParamValueSpanENS0_4spanIKNS0_7ustringELm18446744073709551615EEES5_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %.sroa.079.0.copyload = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_111fillmode_usE, align 8, !tbaa !8
  store ptr @.str.25, ptr %13, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.o, align 8, !tbaa !41
  invoke void @_ZNK11OpenImageIO4v3_114ParamValueSpan10get_stringENS0_7ustringENS0_17basic_string_viewIcSt11char_traitsIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.sroa.079.0.copyload, ptr noundef nonnull dead_on_return %13, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %.sroa.077.0.copyload = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18exact_usE, align 8, !tbaa !8
  %i.p = invoke noundef i32 @_ZNK11OpenImageIO4v3_114ParamValueSpan7get_intENS0_7ustringEibb(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.sroa.077.0.copyload, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.h unwind label %bb.k       ; 7 uses

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !180
  %i.t = load i32, ptr %4, align 8, !tbaa !71     ; 9 uses
  %i.u = sub nsw i32 %i.s, %i.t                   ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !181
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !182  ; 9 uses
  %i.z = sub nsw i32 %i.w, %i.y                   ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 36 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !140
  %i.ac = sitofp i32 %i.ab to float               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !157
  %i.af = sitofp i32 %i.ae to float               ; 3 uses
  %i.ag = fdiv float %i.ac, %i.af                 ; 3 uses
  %i.ah = sitofp i32 %i.u to float                ; 4 uses
  %i.ai = sitofp i32 %i.z to float                ; 4 uses
  %i.aj = fdiv float %i.ah, %i.ai
  %i.ak = load ptr, ptr %12, align 8, !tbaa !39   ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !41
  switch i64 %i.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i154 [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i149
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.h
  %i.an = load i32, ptr %i.ak, align 1
  %i.ao = xor i32 %i.an, 1734960488
  %i.ap = getelementptr i8, ptr %i.ak, i64 4
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i32
  %i.as = xor i32 %i.ar, 29800
  %i.at = or i32 %i.ao, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i154

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i149: ; preds = %bb.h
  %i.aw = load i32, ptr %i.ak, align 1
  %i.ax = xor i32 %i.aw, 1952737655
  %i.ay = getelementptr i8, ptr %i.ak, i64 4
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = xor i32 %i.ba, 104
  %i.bc = or i32 %i.ax, %i.bb
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %.not.i.i151 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i151, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i154

bb.i:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.j:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.k:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i154: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i149, %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  store ptr @.str.25, ptr %12, align 8, !tbaa !8
  store i64 9, ptr %i.al, align 8, !tbaa !62
  %i.bi = fcmp ult float %i.aj, %i.ag
  br i1 %i.bi, label %bb.l, label %.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i154
  store ptr @.str.26, ptr %12, align 8, !tbaa !8
  store i64 6, ptr %i.al, align 8, !tbaa !62
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i154
  store ptr @.str.27, ptr %12, align 8, !tbaa !8
  store i64 5, ptr %i.al, align 8, !tbaa !62
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.thread
  %i.bj = phi ptr [ @.str.26, %.thread ], [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = xor i32 %i.bk, 1734960488
  %i.bm = getelementptr i8, ptr %i.bj, i64 4
  %i.bn = load i16, ptr %i.bm, align 1
  %i.bo = zext i16 %i.bn to i32
  %i.bp = xor i32 %i.bo, 29800
  %i.bq = or i32 %i.bl, %i.bp
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %.not.i.i160 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i160, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158
  %i.bt = call float @llvm.fmuladd.f32(float %i.ai, float %i.ag, float 5.000000e-01)
  %i.bu = fptosi float %i.bt to i32               ; 2 uses
  %i.bv = sub nsw i32 %i.u, %i.bu
  %i.bw = sdiv i32 %i.bv, 2
  %i.bx = fdiv float %i.ai, %i.af                 ; 2 uses
  %i.by = fneg float %i.bx
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.ac, float %i.ah)
  %i.ca = fmul float %i.bz, 5.000000e-01
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i149, %bb.l
  %.ph.ph = phi ptr [ @.str.27, %bb.l ], [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i149 ] ; 2 uses
  %i.cb = load i32, ptr %.ph.ph, align 1
  %i.cc = xor i32 %i.cb, 1952737655
  %i.cd = getelementptr i8, ptr %.ph.ph, i64 4
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cf, 104
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %.not.i.i165 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i165, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163
  %i.ck = fdiv float %i.ah, %i.ag
  %i.cl = fadd float %i.ck, 5.000000e-01
  %i.cm = fptosi float %i.cl to i32               ; 2 uses
  %i.cn = sub nsw i32 %i.z, %i.cm
  %i.co = sdiv i32 %i.cn, 2
  %i.cp = fdiv float %i.ah, %i.ac                 ; 2 uses
  %i.cq = fneg float %i.cp
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.af, float %i.ai)
  %i.cs = fmul float %i.cr, 5.000000e-01
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162
  %.0130 = phi float [ %i.bx, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162 ], [ %i.cp, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167 ], [ 1.000000e+00, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158 ], [ 1.000000e+00, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163 ] ; 2 uses
  %.0129 = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162 ], [ %i.cs, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167 ], [ 0.000000e+00, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158 ], [ 0.000000e+00, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163 ]
  %.0128 = phi float [ %i.ca, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162 ], [ 0.000000e+00, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167 ], [ 0.000000e+00, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158 ], [ 0.000000e+00, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163 ]
  %.0127 = phi i32 [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162 ], [ %i.co, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163 ]
  %.0126 = phi i32 [ %i.bw, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162 ], [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163 ]
  %.0123 = phi i32 [ %i.z, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162 ], [ %i.cm, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167 ], [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158 ], [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163 ] ; 5 uses
  %.0122 = phi i32 [ %i.bu, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit162 ], [ %i.u, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167 ], [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i158 ], [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i163 ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.011.0.copyload = load ptr, ptr %9, align 8
  %.sroa.212.0.copyload = load i64, ptr %i.b, align 8
  invoke void @_ZN11OpenImageIO4v3_120get_filterptr_optionENS0_14ParamValueSpanE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %14, ptr %.sroa.011.0.copyload, i64 %.sroa.212.0.copyload)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167.thread
  %i.cu = load ptr, ptr %14, align 16, !tbaa !11
  %.not245 = icmp eq ptr %i.cu, null
  br i1 %.not245, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.cv = sitofp i32 %.0122 to float
  %i.cw = load i32, ptr %i.aa, align 4, !tbaa !140
  %i.cx = sitofp i32 %i.cw to float
  %i.cy = fdiv float %i.cv, %i.cx
  %i.cz = sitofp i32 %.0123 to float
  %i.da = load i32, ptr %i.ad, align 8, !tbaa !157
  %i.db = sitofp i32 %i.da to float
  %i.dc = fdiv float %i.cz, %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %.sroa.08.0.copyload = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113filtername_usE, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_114ParamValueSpan10get_stringENS0_7ustringENS0_17basic_string_viewIcSt11char_traitsIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.sroa.08.0.copyload, ptr noundef nonnull dead_on_return %17, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %.sroa.07.0.copyload = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114filterwidth_usE, align 8, !tbaa !8
  %i.dd = invoke noundef float @_ZNK11OpenImageIO4v3_114ParamValueSpan9get_floatENS0_7ustringEfbb(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.sroa.07.0.copyload, float noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_ZN11OpenImageIO4v3_1L17get_resize_filterENS0_17basic_string_viewIcSt11char_traitsIcEEEfRNS0_8ImageBufEff(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef dead_on_return %16, float noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %i.cy, float noundef %i.dc)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dg = load <2 x ptr>, ptr %15, align 16, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !17 ; 8 uses
  store <2 x ptr> %i.dg, ptr %14, align 16, !tbaa !16
  %.not.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.di, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !20
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #33, !inline_history !158
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #33, !inline_history !158
  br label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit

bb.t:                                             ; preds = %bb.r
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.u ], [ %i.dv, %bb.v ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.w, label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit, !prof !25

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #33
  br label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit

_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w
  %i.dx = load ptr, ptr %i.de, align 8, !tbaa !17 ; 8 uses
  %.not.i.i168 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i168, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dy, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ec, align 4, !tbaa !20
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #33, !inline_history !110
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #33, !inline_history !110
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.eb, %bb.aa ], [ %i.el, %bb.ab ]
  %i.em = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.em, label %bb.ac, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #33
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEaSIS2_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS4_E4typeEOSD_.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.en = load ptr, ptr %14, align 16, !tbaa !11
  %.not246 = icmp eq ptr %i.en, null
  br i1 %.not246, label %bb.by, label %bb.af

bb.ad:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit167.thread
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ae:                                            ; preds = %bb.p, %bb.o, %bb.n
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.cf

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m
  %.not131 = icmp eq i32 %i.p, 0
  br i1 %.not131, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  store float %.0130, ptr %18, align 4, !tbaa !77
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 4
  store <2 x float> zeroinitializer, ptr %25, align 4, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 12
  store float 0.000000e+00, ptr %i.eq, align 4, !tbaa !77
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 16
  store float %.0130, ptr %i.er, align 4, !tbaa !77
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 20
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !77
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 24
  store float %.0128, ptr %i.et, align 4, !tbaa !77
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 28
  store float %.0129, ptr %i.eu, align 4, !tbaa !77
  %i.ev = getelementptr inbounds nuw i8, ptr %18, i64 32
  store float 1.000000e+00, ptr %i.ev, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  invoke void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %19, ptr noundef nonnull align 8 dereferenceable(160) %i.q)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.t, ptr %19, align 8, !tbaa !183
  %i.ew = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.y, ptr %i.ew, align 4, !tbaa !184
  %i.ex = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 0, ptr %i.ex, align 8, !tbaa !185
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %i.u, ptr %i.ey, align 4, !tbaa !186
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %i.z, ptr %i.ez, align 8, !tbaa !187
  %i.fa = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 1, ptr %i.fa, align 4, !tbaa !188
  %i.fb = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 %i.t, ptr %i.fb, align 8, !tbaa !189
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 %i.y, ptr %i.fc, align 4, !tbaa !190
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 0, ptr %i.fd, align 8, !tbaa !191
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 36
  store i32 %i.u, ptr %i.fe, align 4, !tbaa !140
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i32 %i.z, ptr %i.ff, align 8, !tbaa !157
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 1, ptr %i.fg, align 4, !tbaa !192
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(160) %19, i32 noundef 1)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  store ptr @.str.28, ptr %20, align 8, !tbaa !39
  %i.fh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 5, ptr %i.fh, align 8, !tbaa !41
  %i.fi = invoke noundef i32 @_ZN11OpenImageIO4v3_18ImageBuf20WrapMode_from_stringENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %20)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.fj = load ptr, ptr %14, align 16, !tbaa !11
  store i32 -2147483648, ptr %21, align 8, !tbaa !71
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fk, i8 0, i64 28, i1 false)
  %i.fl = invoke fastcc noundef zeroext i1 @_ZN11OpenImageIO4v3_1L9warp_implERNS0_8ImageBufERKS1_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DEbNS1_8WrapModeEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(36) %18, ptr noundef %i.fj, i1 noundef zeroext false, i32 noundef %i.fi, i1 noundef zeroext true, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %21, i32 noundef %5)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.fm = getelementptr inbounds nuw i8, ptr %19, i64 136 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !193 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %19, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !194 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fn, %i.fp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.fn, %bb.ak ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #33
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i169 = icmp eq ptr %i.fq, %i.fp
  br i1 %.not.i.i.i.i169, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !195

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.fm, align 8, !tbaa !193
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.ak
  %i.fr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fn, %bb.ak ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %19, i64 152
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !196
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #37
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.al, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !197 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 104
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !198 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.fy, %i.ga
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.gg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.fy, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.gb = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !63 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !24
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.gg, %i.ga
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !199

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.fx, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.gh = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fy, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %19, i64 112
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !200
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gm) #37
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.am, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !202
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #37
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %bb.by

bb.ao:                                            ; preds = %bb.ag
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.ah
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.aj, %bb.ai
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn139 = phi { ptr, i32 } [ %i.gw, %bb.aq ], [ %i.gv, %bb.ap ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %19) #33
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn139.pn = phi { ptr, i32 } [ %.pn139, %bb.ar ], [ %i.gu, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %bb.cf

bb.at:                                            ; preds = %bb.af
  %i.gx = load i32, ptr %i.aa, align 4, !tbaa !140
  %.not132 = icmp eq i32 %.0122, %i.gx
  br i1 %.not132, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.gy = load i32, ptr %i.ad, align 8, !tbaa !157
  %.not133 = icmp eq i32 %.0123, %i.gy
  br i1 %.not133, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gz = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !189
  %.not134 = icmp eq i32 %i.t, %i.ha
  br i1 %.not134, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hb = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !190
  %.not135 = icmp eq i32 %i.y, %i.hc
  br i1 %.not135, label %bb.bp, label %bb.ax
end_hunk_0
