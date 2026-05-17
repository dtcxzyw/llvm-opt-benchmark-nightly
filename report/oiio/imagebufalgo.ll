inline.NumInlined: 7403
inline.NumDeleted: 2263
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev:bb.a
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load i32, ptr @_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE, align 4, !tbaa !3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  store ptr %i.c, ptr %3, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  store i64 %i.f, ptr %i.d, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !238
  invoke void @_ZN11OpenImageIO4v3_18log_timeENS0_17basic_string_viewIcSt11char_traitsIcEEERKNS0_5TimerEi(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !96
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !237, !range !216, !noundef !217
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !247  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  %spec.select.i = select i1 %.not.i, ptr @.str.2, ptr %i.s
  %i.t = load i8, ptr %0, align 8, !tbaa !235, !range !216, !noundef !217
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.x = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #32 ; 0 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !240
  %i.z = mul nsw i64 %i.y, 1000000000
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.ac = sub i64 %i.ab, %i.w
  %i.ad = add i64 %i.ac, %i.z
  %i.ae = call noundef i64 @llvm.abs.i64(i64 %i.ad, i1 true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !248
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = sitofp i64 %i.ai to double
  %i.ak = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !249
  %i.al = fmul double %i.ak, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %spec.select.i, ptr %2, align 16, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.al, ptr %i.am, align 16, !tbaa !96
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !233
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.an, ptr nonnull @.str.71, i64 16, i64 172, ptr nonnull %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.i:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo8convolveERKNS0_8ImageBufES4_bNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo8convolveERNS0_8ImageBufERKS2_S5_bNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA31_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(31) @.str.39)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  resume { ptr, i32 } %i.c

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA31_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(31) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.61", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %1) #32, !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !251
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(31) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !251
  %i.b = load ptr, ptr %4, align 8, !tbaa !63
  store ptr %i.b, ptr %3, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55
  store i64 %i.e, ptr %i.c, align 8, !tbaa !90
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !96
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !96
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo11make_kernelENS0_17basic_string_viewIcSt11char_traitsIcEEEfffb(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef dead_on_return %1, float noundef %2, float noundef %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 27 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %10 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = alloca [9 x float], align 16             ; 10 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 2 uses
  %14 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %15 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 16 uses
  %16 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  store float %2, ptr %i.a, align 4, !tbaa !254
  store float %3, ptr %i.b, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = load ptr, ptr %1, align 8, !tbaa !88
  store ptr %i.d, ptr %7, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !90
  store i64 %i.g, ptr %i.e, align 8, !tbaa !90
  call void @_ZN11OpenImageIO4v3_18Filter2D13create_sharedENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull dead_on_return %7, float noundef %2, float noundef %3)
  %i.h = load ptr, ptr %6, align 8, !tbaa !256    ; 3 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = fcmp oeq float %2, 0.000000e+00          ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !261 ; 2 uses
  store float %i.k, ptr %i.a, align 4, !tbaa !254
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi float [ %i.k, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %i.m = fcmp oeq float %3, 0.000000e+00
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !263
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float 4.000000e+00, ptr %i.a, align 4, !tbaa !254
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi float [ 4.000000e+00, %bb.g ], [ %2, %bb.f ] ; 2 uses
  %i.q = fcmp oeq float %3, 0.000000e+00
  br i1 %i.q, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %bb.e
  %.sink = phi float [ %i.o, %bb.e ], [ 4.000000e+00, %bb.h ] ; 2 uses
  %.ph279 = phi float [ %i.l, %bb.e ], [ %i.p, %bb.h ]
  store float %.sink, ptr %i.b, align 4, !tbaa !254
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %bb.d
  %i.r = phi float [ %3, %bb.h ], [ %3, %bb.d ], [ %.sink, %.sink.split ] ; 7 uses
  %i.s = phi float [ %i.p, %bb.h ], [ %i.l, %bb.d ], [ %.ph279, %.sink.split ] ; 8 uses
  %i.t = call float @llvm.ceil.f32(float %i.s)
  %i.u = fptosi float %i.t to i32
  %.sroa.speculated217 = call i32 @llvm.smax.i32(i32 %i.u, i32 1) ; 2 uses
  %i.v = call float @llvm.ceil.f32(float %i.r)
  %i.w = fptosi float %i.v to i32
  %.sroa.speculated212 = call i32 @llvm.smax.i32(i32 %i.w, i32 1) ; 2 uses
  %i.x = call float @llvm.ceil.f32(float %4)
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.y, i32 1) ; 2 uses
  %i.z = or i32 %.sroa.speculated217, 1           ; 3 uses
  %i.aa = or i32 %.sroa.speculated212, 1          ; 3 uses
  %i.ab = or i32 %.sroa.speculated, 1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef 1, i64 267) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !115
  %i.ad = lshr i32 %.sroa.speculated217, 1
  %.neg = sub nsw i32 0, %i.ad                    ; 2 uses
  store i32 %.neg, ptr %8, align 8, !tbaa !264
  %i.ae = lshr i32 %.sroa.speculated212, 1
  %.neg223 = sub nsw i32 0, %i.ae                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 %.neg223, ptr %i.af, align 4, !tbaa !265
  %i.ag = lshr i32 %.sroa.speculated, 1
  %.neg225 = sub nsw i32 0, %i.ag                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.neg225, ptr %i.ah, align 8, !tbaa !266
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.neg, ptr %i.ai, align 8, !tbaa !267
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.neg223, ptr %i.aj, align 4, !tbaa !268
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %.neg225, ptr %i.ak, align 8, !tbaa !269
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !270
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 %i.am, ptr %i.an, align 4, !tbaa !271
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !272
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !273
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.ab, ptr %i.ar, align 4, !tbaa !274
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef 1)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !256
  %.not226 = icmp eq ptr %i.as, null
  br i1 %.not226, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit.preheader unwind label %bb.q

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit.preheader: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 60
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit.preheader, %bb.u
  %i.bb = load i8, ptr %i.at, align 8, !tbaa !275, !range !216, !noundef !217
  %i.bc = icmp eq i8 %i.bb, 0
  %.pre = load i32, ptr %i.au, align 4, !tbaa !279 ; 2 uses
  br i1 %i.bc, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit
  %.pre249 = load i32, ptr %i.aw, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !281
  %i.be = icmp eq i32 %.pre, %i.bd
  %.pre250 = load i32, ptr %i.aw, align 8, !tbaa !280 ; 3 uses
  %i.bf = load i32, ptr %i.ax, align 4
  %i.bg = icmp eq i32 %.pre250, %i.bf
  %or.cond281 = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond281, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.bh = load i32, ptr %i.ay, align 4, !tbaa !282
  %i.bi = load i32, ptr %i.az, align 8, !tbaa !283
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.m, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.bu

bb.p:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.q:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.u, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.br = phi i32 [ %.pre249, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre250, %bb.l ], [ %.pre250, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bs = load ptr, ptr %6, align 8, !tbaa !256   ; 2 uses
  %i.bt = sitofp i32 %.pre to float
  %i.bu = sitofp i32 %i.br to float
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !285
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef float %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, float noundef %i.bt, float noundef %i.bu)
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bz = load ptr, ptr %9, align 8, !tbaa !287
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo11make_kernelENS0_17basic_string_viewIcSt11char_traitsIcEEEfffb:bb.a
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = uitofp nneg i32 %i.gv to float
  %i.gz = fdiv float %i.gx, %i.gy
  %i.ha = fmul float %i.gu, %i.gz
  %i.hb = add nuw i32 %.013.i140, 3               ; 2 uses
  %i.hc = add i32 %.neg.i139, %i.hb
  %i.hd = sitofp i32 %i.hc to float
  %i.he = uitofp nneg i32 %i.hb to float
  %i.hf = fdiv float %i.hd, %i.he
  %i.hg = fmul float %i.ha, %i.hf                 ; 3 uses
  %i.hh = add nuw i32 %.013.i140, 4               ; 2 uses
  %niter307.next.3 = add i64 %niter307, 4         ; 2 uses
  %niter307.ncmp.3 = icmp eq i64 %niter307.next.3, %unroll_iter306
  br i1 %niter307.ncmp.3, label %_ZN11OpenImageIO4v3_18binomialEii.exit144.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !291

_ZN11OpenImageIO4v3_18binomialEii.exit144.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod303.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod303.not, label %_ZN11OpenImageIO4v3_18binomialEii.exit144, label %.epil.preheader300

.epil.preheader300:                               ; preds = %_ZN11OpenImageIO4v3_18binomialEii.exit144.loopexit.unr-lcssa, %.lr.ph.i138
  %.013.i140.epil.init = phi i32 [ 1, %.lr.ph.i138 ], [ %i.hh, %_ZN11OpenImageIO4v3_18binomialEii.exit144.loopexit.unr-lcssa ]
  %.0812.i141.epil.init = phi float [ 1.000000e+00, %.lr.ph.i138 ], [ %i.hg, %_ZN11OpenImageIO4v3_18binomialEii.exit144.loopexit.unr-lcssa ]
  %lcmp.mod305 = icmp ne i64 %xtraiter301, 0
  call void @llvm.assume(i1 %lcmp.mod305)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader300
  %.013.i140.epil = phi i32 [ %.013.i140.epil.init, %.epil.preheader300 ], [ %i.hn, %bb.ap ] ; 3 uses
  %.0812.i141.epil = phi float [ %.0812.i141.epil.init, %.epil.preheader300 ], [ %i.hm, %bb.ap ]
  %epil.iter302 = phi i64 [ 0, %.epil.preheader300 ], [ %epil.iter302.next, %bb.ap ]
  %i.hi = add i32 %.neg.i139, %.013.i140.epil
  %i.hj = sitofp i32 %i.hi to float
  %i.hk = uitofp nneg i32 %.013.i140.epil to float
  %i.hl = fdiv float %i.hj, %i.hk
  %i.hm = fmul float %.0812.i141.epil, %i.hl      ; 2 uses
  %i.hn = add nuw i32 %.013.i140.epil, 1
  %epil.iter302.next = add i64 %epil.iter302, 1   ; 2 uses
  %epil.iter302.cmp.not = icmp eq i64 %epil.iter302.next, %xtraiter301
  br i1 %epil.iter302.cmp.not, label %_ZN11OpenImageIO4v3_18binomialEii.exit144, label %bb.ap, !llvm.loop !297

_ZN11OpenImageIO4v3_18binomialEii.exit144:        ; preds = %_ZN11OpenImageIO4v3_18binomialEii.exit144.loopexit.unr-lcssa, %bb.ap, %bb.an
  %.08.lcssa.i143 = phi float [ 1.000000e+00, %bb.an ], [ %i.hg, %_ZN11OpenImageIO4v3_18binomialEii.exit144.loopexit.unr-lcssa ], [ %i.hm, %bb.ap ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv246
  store float %.08.lcssa.i143, ptr %i.ho, align 4, !tbaa !254
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %i.hp = trunc nuw nsw i64 %indvars.iv.next247 to i32
  %i.hq = uitofp nneg i32 %i.hp to float
  %i.hr = fcmp ogt float %4, %i.hq
  br i1 %i.hr, label %bb.an, label %.loopexit, !llvm.loop !298

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_18binomialEii.exit144, %.preheader, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %10, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146.preheader unwind label %bb.au

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146.preheader: ; preds = %.loopexit
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146.preheader, %bb.ax
  %i.ia = load i8, ptr %i.hs, align 8, !tbaa !275, !range !216, !noundef !217
  %i.ib = icmp eq i8 %i.ia, 0
  %.pre251 = load i32, ptr %i.ht, align 4, !tbaa !279 ; 2 uses
  br i1 %i.ib, label %bb.aq, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146
  %.pre252 = load i32, ptr %i.hv, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread

bb.aq:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146
  %i.ic = load i32, ptr %i.hu, align 4, !tbaa !281
  %i.id = icmp eq i32 %.pre251, %i.ic
  %.pre253 = load i32, ptr %i.hv, align 8, !tbaa !280 ; 3 uses
  %i.ie = load i32, ptr %i.hw, align 4
  %i.if = icmp eq i32 %.pre253, %i.ie
  %or.cond283 = select i1 %i.id, i1 %i.if, i1 false
  br i1 %or.cond283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147: ; preds = %bb.aq
  %i.ig = load i32, ptr %i.hx, align 4, !tbaa !282
  %i.ih = load i32, ptr %i.hy, align 8, !tbaa !283
  %i.ii = icmp eq i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !284
  %.not.i148 = icmp eq ptr %i.ik, null
  br i1 %.not.i148, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit149, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %10)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit149 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit149: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bu

bb.au:                                            ; preds = %.loopexit
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %bb.ax
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread_crit_edge, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147
  %i.ip = phi i32 [ %.pre252, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread_crit_edge ], [ %.pre253, %bb.aq ], [ %.pre253, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147 ]
  %i.iq = load i32, ptr %8, align 8, !tbaa !264
  %i.ir = sub nsw i32 %.pre251, %i.iq
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !254
  %i.iv = load i32, ptr %i.af, align 4, !tbaa !265
  %i.iw = sub nsw i32 %i.ip, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !254
  %i.ja = load i32, ptr %i.hx, align 4, !tbaa !282
  %i.jb = load i32, ptr %i.ah, align 8, !tbaa !266
  %i.jc = sub nsw i32 %i.ja, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !254
  %i.jg = fmul float %i.iu, %i.iz
  %i.jh = fmul float %i.jg, %i.jf
  %i.ji = load ptr, ptr %10, align 8, !tbaa !287
  %i.jj = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ji)
          to label %.noexc152 unwind label %bb.ay

.noexc152:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread
  %i.jk = icmp eq i32 %i.jj, 3
  br i1 %i.jk, label %bb.aw, label %bb.ax, !prof !288

bb.aw:                                            ; preds = %.noexc152
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %10)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.noexc152, %bb.aw
  %i.jl = load ptr, ptr %i.hz, align 8, !tbaa !289
  store float %i.jh, ptr %i.jl, align 4, !tbaa !254
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %10)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit146 unwind label %bb.av, !llvm.loop !299

bb.ay:                                            ; preds = %bb.aw, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit147.thread
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn109 = phi { ptr, i32 } [ %i.io, %bb.av ], [ %i.jm, %bb.ay ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %10) #32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.au
  %.pn109.pn = phi { ptr, i32 } [ %.pn109, %bb.az ], [ %i.in, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.db

bb.bb:                                            ; preds = %bb.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  store ptr %i.ce, ptr %11, align 8, !tbaa !88
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.cf, ptr %i.jn, align 8, !tbaa !90
  store ptr @.str.41, ptr %12, align 8, !tbaa !88
  %i.jo = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 9, ptr %i.jo, align 8, !tbaa !90
  %i.jp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
          to label %bb.bc unwind label %bb.ab

bb.bc:                                            ; preds = %bb.bb
  %i.jq = icmp eq i32 %i.z, 3
  %or.cond = and i1 %i.jq, %i.jp
  %i.jr = icmp eq i32 %i.aa, 3
  %or.cond3 = and i1 %i.jr, %or.cond
  %i.js = icmp slt i32 %i.y, 2
  %or.cond5 = select i1 %or.cond3, i1 %i.js, i1 false
  br i1 %or.cond5, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float 1.000000e+00, ptr %i.jt, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store <2 x float> <float 1.000000e+00, float -4.000000e+00>, ptr %i.ju, align 4
  %17 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float 1.000000e+00, ptr %17, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store float 1.000000e+00, ptr %i.jv, align 4
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %13, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf10set_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanIKSt4byteLm18446744073709551615EEEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %13, i64 267, ptr nonnull %i.c, i64 36, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 12, i64 noundef -9223372036854775808)
          to label %.critedge unwind label %bb.bf ; 0 uses

.critedge:                                        ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.cr

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.db

bb.bg:                                            ; preds = %bb.bc
  %i.jy = mul nuw nsw i32 %i.z, %i.ab
  %i.jz = mul nuw nsw i32 %i.jy, %i.aa
  %i.ka = uitofp nneg i32 %i.jz to float
  %i.kb = fdiv float 1.000000e+00, %i.ka
  %i.kc = select i1 %5, float %i.kb, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %14, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159.preheader unwind label %bb.bm

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159.preheader: ; preds = %bb.bg
  %i.kd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 60
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.kg = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 68
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159.preheader, %bb.bp
  %i.kl = load i8, ptr %i.kd, align 8, !tbaa !275, !range !216, !noundef !217
  %i.km = icmp eq i8 %i.kl, 0
  br i1 %i.km, label %bb.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread

bb.bh:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159
  %i.kn = load i32, ptr %i.ke, align 4, !tbaa !279
  %i.ko = load i32, ptr %i.kf, align 4, !tbaa !281
  %i.kp = icmp eq i32 %i.kn, %i.ko
  br i1 %i.kp, label %bb.bi, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread

bb.bi:                                            ; preds = %bb.bh
  %i.kq = load i32, ptr %i.kg, align 8, !tbaa !280
  %i.kr = load i32, ptr %i.kh, align 4, !tbaa !300
  %i.ks = icmp eq i32 %i.kq, %i.kr
  br i1 %i.ks, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160: ; preds = %bb.bi
  %i.kt = load i32, ptr %i.ki, align 4, !tbaa !282
  %i.ku = load i32, ptr %i.kj, align 8, !tbaa !283
  %i.kv = icmp eq i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.bj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread

bb.bj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160
  %i.kw = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !284
  %.not.i161 = icmp eq ptr %i.kx, null
  br i1 %.not.i161, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %14)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA26_cJRNS0_17basic_string_viewIcSt11char_traitsIcEEERfS9_EEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(26) @.str.42, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.cr unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bg
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bp
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159, %bb.bh, %bb.bi, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160
  %i.lc = load ptr, ptr %14, align 8, !tbaa !287
  %i.ld = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lc)
          to label %.noexc165 unwind label %bb.bq

.noexc165:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread
  %i.le = icmp eq i32 %i.ld, 3
  br i1 %i.le, label %bb.bo, label %bb.bp, !prof !288

bb.bo:                                            ; preds = %.noexc165
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %14)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %.noexc165, %bb.bo
  %i.lf = load ptr, ptr %i.kk, align 8, !tbaa !289
  store float %i.kc, ptr %i.lf, align 4, !tbaa !254
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %14)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit159 unwind label %bb.bn, !llvm.loop !301

bb.bq:                                            ; preds = %bb.bo, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.lb, %bb.bn ], [ %i.lg, %bb.bq ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %14) #32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.br ], [ %i.la, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.db

bb.bt:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bu:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit149, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  br i1 %5, label %bb.bv, label %bb.cr

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %15, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit169.preheader unwind label %bb.cb

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit169.preheader: ; preds = %bb.bv
  %i.li = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %15, i64 60
  %i.lk = getelementptr inbounds nuw i8, ptr %15, i64 36
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.lo = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.lp = getelementptr inbounds nuw i8, ptr %15, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit169

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit169: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit169.preheader, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170.thread
  %.093 = phi float [ %i.mk, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170.thread ], [ 0.000000e+00, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit169.preheader ] ; 3 uses
  %i.lq = load i8, ptr %i.li, align 8, !tbaa !275, !range !216, !noundef !217
  %i.lr = icmp eq i8 %i.lq, 0
  br i1 %i.lr, label %bb.bw, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170.thread

bb.bw:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_NS1_8WrapModeE.exit169
  %i.ls = load i32, ptr %i.lj, align 4, !tbaa !279
  %i.lt = load i32, ptr %i.lk, align 4, !tbaa !281
  %i.lu = icmp eq i32 %i.ls, %i.lt
  br i1 %i.lu, label %bb.bx, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170.thread

bb.bx:                                            ; preds = %bb.bw
  %i.lv = load i32, ptr %i.ll, align 8, !tbaa !280
  %i.lw = load i32, ptr %i.lm, align 4, !tbaa !300
  %i.lx = icmp eq i32 %i.lv, %i.lw
  br i1 %i.lx, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170: ; preds = %bb.bx
  %i.ly = load i32, ptr %i.ln, align 4, !tbaa !282
  %i.lz = load i32, ptr %i.lo, align 8, !tbaa !283
  %i.ma = icmp eq i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.by, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170.thread

bb.by:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit170
  %i.mb = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !284
  %.not.i171 = icmp eq ptr %i.mc, null
  br i1 %.not.i171, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit172, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %15)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit172 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit172: ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.mf = fcmp une float %.093, 0.000000e+00
  br i1 %i.mf, label %bb.ce, label %bb.cr

bb.cb:                                            ; preds = %bb.bv
end_hunk_1
