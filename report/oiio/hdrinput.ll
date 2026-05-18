inline.NumInlined: 3133
inline.NumDeleted: 958
begin_hunk_0_@_ZN11OpenImageIO4v3_18HdrInput13seek_subimageEii:bb.a
  %or.cond.not = icmp eq i32 %i.a, 0
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18HdrInput5fgetsENS0_4spanIcLm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr %2, i64 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184) %1) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(88) %i.e) ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef %2, i64 noundef %3) ; 3 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !75
  store ptr %2, ptr %0, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !62
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %3, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(88) %i.e)
  store i64 %i.s, ptr %i.d, align 8, !tbaa !75
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJlmmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN11OpenImageIO4v3_17Strutil10parse_lineERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.t = load i64, ptr %i.n, align 8, !tbaa !62
  %i.u = add i64 %i.t, %i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 noundef %i.u) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_prefixERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_17Strutil11parse_untilERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_valuesERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_NS0_4spanIfLm18446744073709551615EEES5_S5_b(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, ptr, i64, ptr noundef dead_on_return, ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11OpenImageIO4v3_127set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull align 8 dereferenceable(160), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.114", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !84
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !84
  %i.b = load ptr, ptr %4, align 8, !tbaa !56
  store ptr %i.b, ptr %3, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.c, align 8, !tbaa !62
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_valuesERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_NS0_4spanIiLm18446744073709551615EEES5_S5_b(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, ptr, i64, ptr noundef dead_on_return, ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18HdrInput15RGBE_ReadPixelsEPfim(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.b = shl i64 %3, 2                            ; 6 uses
  %i.c = icmp ult i64 %i.b, 65537
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = alloca i8, i64 %i.b, align 16
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #30 ; 2 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

bb.e:                                             ; preds = %bb.h, %bb.f, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #27
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  resume { ptr, i32 } %i.f

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %bb.d ] ; 4 uses
  %.024 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %i.g = invoke noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.f:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef %.024, i64 noundef %i.b)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %.not26 = icmp eq i64 %i.k, %i.b                ; 2 uses
  br i1 %.not26, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %.not37 = icmp eq i64 %3, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.loopexit unwind label %bb.e

.lr.ph:                                           ; preds = %.preheader, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit
  %.036 = phi i64 [ %i.u, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit ], [ 0, %.preheader ] ; 3 uses
  %.idx = mul i64 %.036, 12
  %4 = getelementptr i8, ptr %1, i64 %.idx        ; 2 uses
  %i.l = getelementptr i8, ptr %4, i64 8
  %i.m = shl i64 %.036, 2
  %i.n = getelementptr inbounds nuw i8, ptr %.024, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 2 uses
  %.not.i27 = icmp eq i8 %i.p, 0
  br i1 %.not.i27, label %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_1L14exponent_tableE, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !82 ; 2 uses
  %i.t = load <2 x i8>, ptr %i.n, align 1, !tbaa !16
  %5 = uitofp <2 x i8> %i.t to <2 x float>
  %6 = insertelement <2 x float> poison, float %i.s, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %5
  %9 = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !16
  %11 = uitofp i8 %10 to float
  %12 = fmul float %i.s, %11
  br label %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit

_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit: ; preds = %.lr.ph, %bb.i
  %.sink39 = phi float [ %12, %bb.i ], [ 0.000000e+00, %.lr.ph ]
  %13 = phi <2 x float> [ %8, %bb.i ], [ zeroinitializer, %.lr.ph ]
  store float %.sink39, ptr %i.l, align 4, !tbaa !82
  store <2 x float> %13, ptr %4, align 4, !tbaa !82
  %i.u = add nuw i64 %.036, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !87

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit, %.preheader, %bb.h
  %.not.i28 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit30, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i29

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i29: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #27
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit30

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit30: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i29
  ret i1 %.not26
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.115", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !88
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !88
  %.sroa.03.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !88
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !88
  %i.c = load ptr, ptr %5, align 8, !tbaa !56
  store ptr %i.c, ptr %4, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  store i64 %i.f, ptr %i.d, align 8, !tbaa !62
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18HdrInput19RGBE_ReadPixels_RLEEPfimi(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 1                 ; 9 uses
  %i.c = alloca [2 x i8], align 1                 ; 12 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.d = add i64 %3, -32768
  %or.cond = icmp ult i64 %i.d, -32760
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %4 to i64
  %i.f = mul i64 %3, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18HdrInput15RGBE_ReadPixelsEPfim(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2, i64 noundef %i.f)
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.h = invoke noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %.preheader109 unwind label %.loopexit.split-lp112 ; 18 uses

.preheader109:                                    ; preds = %bb.c
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph202, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.lr.ph202:                                        ; preds = %.preheader109
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 3 uses
  %i.m = shl nuw nsw i64 %3, 2                    ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 8 uses
  %i.o = shl nuw nsw i64 %3, 1
  %i.p = mul nuw nsw i64 %3, 3
  %i.q = shl nuw nsw i64 %3, 1
  %i.r = shl nuw nsw i64 %3, 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph202, %.critedge._crit_edge
  %.071201 = phi ptr [ %1, %.lr.ph202 ], [ %i.jf, %.critedge._crit_edge ] ; 5 uses
  %.077200 = phi i32 [ %4, %.lr.ph202 ], [ %i.im, %.critedge._crit_edge ] ; 3 uses
  %.sroa.18.0199 = phi ptr [ null, %.lr.ph202 ], [ %.sroa.18.4, %.critedge._crit_edge ] ; 10 uses
  %.sroa.14.0198 = phi ptr [ null, %.lr.ph202 ], [ %.sroa.14.1, %.critedge._crit_edge ] ; 8 uses
  %.sroa.0.0197 = phi ptr [ null, %.lr.ph202 ], [ %.sroa.0.4, %.critedge._crit_edge ] ; 15 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %.loopexit111

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ult i64 %i.v, 4
  br i1 %i.w, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.e, %bb.k
  %i.x = phi ptr [ @.str.21, %bb.k ], [ @.str.20, %bb.e ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.loopexit110 unwind label %.loopexit.split-lp112

.loopexit111:                                     ; preds = %bb.d, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit113 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit108

.loopexit.split-lp112:                            ; preds = %.invoke, %bb.c, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0197, %.invoke ], [ null, %bb.c ], [ %.sroa.0.0197, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit ]
  %.sroa.18.1.ph = phi ptr [ %.sroa.18.0199, %.invoke ], [ null, %bb.c ], [ %.sroa.18.0199, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit ]
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit108

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.b, align 1, !tbaa !16    ; 2 uses
  %i.z = icmp ne i8 %i.y, 2
  %i.aa = load i8, ptr %i.j, align 1
  %i.ab = icmp ne i8 %i.aa, 2
  %or.cond5 = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.k, align 1, !tbaa !16   ; 2 uses
  %.not = icmp sgt i8 %i.ac, -1
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.071201, i64 4
  %i.ae = load i8, ptr %i.l, align 1, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_1L14exponent_tableE, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !82 ; 2 uses
  %i.ai = uitofp i8 %i.y to float
  %i.aj = fmul float %i.ah, %i.ai
  store float %i.aj, ptr %.071201, align 4, !tbaa !82
  %i.ak = load <2 x i8>, ptr %i.j, align 1, !tbaa !16
  %i.al = uitofp <2 x i8> %i.ak to <2 x float>
  %i.am = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.an, %i.al
  br label %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit

bb.j:                                             ; preds = %bb.h
  store float 0.000000e+00, ptr %.071201, align 4, !tbaa !82
  br label %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit

_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit: ; preds = %bb.i, %bb.j
  %i.ap = phi <2 x float> [ zeroinitializer, %bb.j ], [ %i.ao, %bb.i ]
  store <2 x float> %i.ap, ptr %i.ad, align 4, !tbaa !82
  %i.aq = getelementptr inbounds nuw i8, ptr %.071201, i64 12
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !3
  %i.as = zext nneg i32 %.077200 to i64
  %i.at = mul nuw nsw i64 %3, %i.as
  %i.au = add nsw i64 %i.at, -1
  %i.av = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18HdrInput15RGBE_ReadPixelsEPfim(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull %i.aq, i32 noundef %i.ar, i64 noundef %i.au)
          to label %.loopexit110 unwind label %.loopexit.split-lp112

bb.k:                                             ; preds = %bb.g
end_hunk_0
