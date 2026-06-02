inline.NumInlined: 4473
inline.NumDeleted: 1473
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput10write_tileEiiiNS0_8TypeDescEPKvlll:bb.a
  %i.jg = load i64, ptr %9, align 8, !tbaa !25
  %i.jh = mul nsw i64 %i.jg, 1000000000
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !27
  %i.jk = add nsw i64 %i.jh, %i.jj                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.jl = load i8, ptr %i.ic, align 8, !tbaa !31, !range !79, !noundef !80
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !28
  %i.jp = sub nsw i64 %i.jk, %i.jo
  %i.jq = call noundef i64 @llvm.abs.i64(i64 %i.jp, i1 true)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jr = phi i64 [ %i.jq, %bb.am ], [ 0, %bb.al ]
  %i.js = load i64, ptr %i.ir, align 8, !tbaa !82
  %i.jt = add nsw i64 %i.js, %i.jr
  store i64 %i.jt, ptr %i.ir, align 8, !tbaa !82
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.jk, ptr %i.ju, align 8, !tbaa !28
  store i8 1, ptr %i.ic, align 8, !tbaa !31
  store i32 0, ptr %i.hz, align 8, !tbaa !71
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.an, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ true, %bb.an ], [ true, %bb.aj ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ]
  %i.jv = load ptr, ptr %12, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !77
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #36
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i104, %bb.z, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.h
  %.pn80 = phi { ptr, i32 } [ %i.bt, %bb.h ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %i.do, %.thread ], [ %.pn75.pn.pn, %bb.z ], [ %.pn75.pn.pn, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i104 ]
  %i.kb = load ptr, ptr %12, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIhSaIhEED2Ev.exit123, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit105
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !77
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #36
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit123

_ZNSt6vectorIhSaIhEED2Ev.exit123:                 ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit105, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  resume { ptr, i32 } %.pn80

_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.2 = phi i1 [ %.1, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 align 2 {
bb.a:
  %7 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %3, ptr %7, align 8
  %i.a = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %7) #34
  %i.b = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %3, 8
  %i.e = lshr i64 %3, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = and i64 %i.d, 255
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.h = sext i32 %4 to i64
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = mul i64 %i.i, %i.a
  %i.k = mul i64 %i.j, %spec.select.i             ; 2 uses
  store i64 %i.k, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %i.k, %bb.b ], [ %i.b, %bb.a ]
  %i.m = load i64, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %5 to i64
  %i.p = mul nsw i64 %i.l, %i.o                   ; 2 uses
  store i64 %i.p, ptr %1, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %i.p, %bb.d ], [ %i.m, %bb.c ]
  %i.r = load i64, ptr %2, align 8, !tbaa !11
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %bb.f, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_liii.exit

bb.f:                                             ; preds = %bb.e
  %i.t = sext i32 %6 to i64
  %i.u = mul nsw i64 %i.q, %i.t
  store i64 %i.u, ptr %2, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_liii.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_liii.exit: ; preds = %bb.e, %bb.f
  ret void
}

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput14to_native_tileENS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare i64 @TIFFWriteTile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.215", align 16 ; 7 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !405
  store i32 %i.b, ptr %6, align 16, !tbaa !15, !alias.scope !402, !noalias !399
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !405
  store i32 %i.d, ptr %i.c, align 16, !tbaa !15, !alias.scope !402, !noalias !399
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.f = load i32, ptr %4, align 4, !tbaa !3, !noalias !405
  store i32 %i.f, ptr %i.e, align 16, !tbaa !15, !alias.scope !402, !noalias !399
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.h = load ptr, ptr %5, align 8, !tbaa !100, !noalias !405
  store ptr %i.h, ptr %i.g, align 16, !tbaa !15, !alias.scope !402, !noalias !399
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %1, i64 %i.a, i64 49425, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !399
  %i.i = load ptr, ptr %8, align 8, !tbaa !13
  store ptr %i.i, ptr %7, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.l, ptr %i.j, align 8, !tbaa !22
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %8, align 8, !tbaa !13     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %8, align 8, !tbaa !13     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %7, ptr noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.std::shared_ptr.155", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %16 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %19 = alloca %"class.std::vector.62", align 8   ; 7 uses
  %20 = alloca %"class.std::allocator.64", align 1 ; 4 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %21 = alloca %"class.std::unique_ptr.33", align 8 ; 8 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %22 = alloca %"class.OpenImageIO::v3_1::task_set", align 8 ; 11 uses
  %i.p = alloca i8, align 1                       ; 8 uses
  %23 = alloca %"class.std::future", align 16     ; 13 uses
  %24 = alloca %class.anon.67, align 8            ; 26 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca i32, align 4                      ; 7 uses
  %i.s = alloca i32, align 4                      ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  store i64 %7, ptr %15, align 8
  store i32 %1, ptr %i.c, align 4, !tbaa !3
  store i32 %2, ptr %i.d, align 4, !tbaa !3
  store i32 %3, ptr %i.e, align 4, !tbaa !3
  store i32 %4, ptr %i.f, align 4, !tbaa !3
  store i32 %5, ptr %i.g, align 4, !tbaa !3
  store i32 %6, ptr %i.h, align 4, !tbaa !3
  store ptr %8, ptr %i.i, align 8, !tbaa !366
  store i64 %9, ptr %i.j, align 8, !tbaa !11
  store i64 %10, ptr %i.k, align 8, !tbaa !11
  store i64 %11, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  store ptr @.str.92, ptr %17, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 23, ptr %i.v, align 8, !tbaa !22
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %16, ptr noundef nonnull dead_on_return %17)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !383  ; 3 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.w, align 8, !tbaa !384  ; 2 uses
  %i.aa = sub nsw i32 %1, %i.z
  %i.ab = srem i32 %i.aa, %i.y
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !385 ; 2 uses
  %i.af = sub nsw i32 %3, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !386 ; 2 uses
  %i.ai = srem i32 %i.af, %i.ah
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !387 ; 2 uses
  %i.am = sub nsw i32 %5, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !388 ; 2 uses
  %i.ap = srem i32 %i.am, %i.ao
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %2, %i.z                    ; 2 uses
  %i.as = srem i32 %i.ar, %i.y
  %i.at = icmp eq i32 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.ar, %i.av
  %or.cond.i = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %bb.f, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ax = sub nsw i32 %4, %i.ae                   ; 2 uses
  %i.ay = srem i32 %i.ax, %i.ah
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.ax, %i.bb
  %or.cond13.i = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond13.i, label %bb.g, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bd = sub nsw i32 %6, %i.al                   ; 2 uses
  %i.be = srem i32 %i.bd, %i.ao
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bd, %i.bh
  %or.cond141 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond141, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread133, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread133: ; preds = %bb.g
  %i.bj = invoke noundef ptr @_ZN11OpenImageIO4v3_119default_thread_poolEv()
          to label %bb.h unwind label %bb.t       ; 5 uses

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread133
  %i.bk = load i32, ptr %i.d, align 4, !tbaa !3
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bm = load i32, ptr %i.x, align 8, !tbaa !87  ; 2 uses
  %i.bn = xor i32 %i.bl, -1
  %i.bo = add i32 %i.bk, %i.bn
  %i.bp = add i32 %i.bo, %i.bm
  %i.bq = sdiv i32 %i.bp, %i.bm
  %i.br = load i32, ptr %i.f, align 4, !tbaa !3
  %i.bs = load i32, ptr %i.e, align 4, !tbaa !3
  %i.bt = load i32, ptr %i.ag, align 4, !tbaa !88 ; 2 uses
  %i.bu = xor i32 %i.bs, -1
  %i.bv = add i32 %i.br, %i.bu
  %i.bw = add i32 %i.bv, %i.bt
  %i.bx = mul nsw i32 %i.bw, %i.bq
  %i.by = sdiv i32 %i.bx, %i.bt
  %i.bz = load i32, ptr %i.h, align 4, !tbaa !3
  %i.ca = load i32, ptr %i.g, align 4, !tbaa !3
  %i.cb = load i32, ptr %i.an, align 8, !tbaa !406 ; 2 uses
  %i.cc = xor i32 %i.ca, -1
  %i.cd = add i32 %i.bz, %i.cc
  %i.ce = add i32 %i.cd, %i.cb
  %i.cf = mul nsw i32 %i.ce, %i.by
  %i.cg = sdiv i32 %i.cf, %i.cb                   ; 2 uses
  %i.ch = sext i32 %i.cg to i64                   ; 3 uses
  %i.ci = icmp ugt i32 %i.cg, 1
  br i1 %i.ci, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !99
  switch i32 %i.ck, label %bb.j [
    i32 5, label %.critedge
    i32 3, label %.critedge
  ]

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !125
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.cn, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !126
  %i.cq = zext i8 %i.cp to i64
  %i.cr = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.cl) #34
  %i.cs = shl nuw nsw i64 %i.cq, 3
  %i.ct = mul i64 %i.cs, %i.cr
  %i.cu = mul i64 %i.ct, %spec.select.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !97
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp eq i64 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = icmp eq i32 %i.da, 1
  %or.cond95 = select i1 %i.cy, i1 %i.db, i1 false
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = icmp eq i32 %i.dd, 8
  %or.cond98 = select i1 %or.cond95, i1 %i.de, i1 false
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = icmp eq i32 %i.dg, 2
  %or.cond101 = select i1 %or.cond98, i1 %i.dh, i1 false
  br i1 %or.cond101, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.di = load i8, ptr %i.cl, align 8, !tbaa !105
  switch i8 %i.di, label %.critedge [
    i8 2, label %bb.l
    i8 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.dj = load i8, ptr %i.co, align 1, !tbaa !126
  %i.dk = icmp eq i8 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.dm = load i8, ptr %i.dl, align 2
  %i.dn = icmp eq i8 %i.dm, 0
  %or.cond144 = select i1 %i.dk, i1 %i.dn, i1 false
  %i.do = load i32, ptr %i.cm, align 4
  %i.dp = icmp eq i32 %i.do, 0
  %or.cond147 = select i1 %or.cond144, i1 %i.dp, i1 false
  br i1 %or.cond147, label %bb.n, label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.dq = load i8, ptr %i.co, align 1, !tbaa !126
  %i.dr = icmp eq i8 %i.dq, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.dt = load i8, ptr %i.ds, align 2
  %i.du = icmp eq i8 %i.dt, 0
  %or.cond150 = select i1 %i.dr, i1 %i.du, i1 false
  %i.dv = load i32, ptr %i.cm, align 4
  %i.dw = icmp eq i32 %i.dv, 0
  %or.cond153 = select i1 %or.cond150, i1 %i.dw, i1 false
  br i1 %or.cond153, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dx = invoke noundef i32 @_ZNK11OpenImageIO4v3_111thread_pool4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dz = tail call i64 @pthread_self() #40       ; 2 uses
  %i.ea = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_111thread_pool9is_workerENSt6thread2idE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i64 %i.dz)
          to label %_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit unwind label %bb.u

_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit: ; preds = %bb.p
  br i1 %i.ea, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit
  store ptr @.str.88, ptr %18, align 8, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 16, ptr %i.eb, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr @.str.88, ptr %14, align 8, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 16, ptr %i.ec, align 8, !tbaa !22
  %i.ed = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPv(ptr noundef nonnull dead_on_return %14, i64 263, ptr noundef nonnull %i.b)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ee = load i32, ptr %i.b, align 4
  %i.ef = select i1 %i.ed, i32 %i.ee, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.eg = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull dead_on_return %18, i32 noundef %i.ef)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not = icmp eq i32 %i.eg, 0
  br i1 %.not, label %.critedge, label %bb.v

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.m, %_ZNK11OpenImageIO4v3_111thread_pool9is_workerEv.exit, %bb.o, %bb.i, %bb.i, %bb.h, %bb.j, %bb.s
  %i.eh = load i32, ptr %i.c, align 4, !tbaa !3
  %i.ei = load i32, ptr %i.d, align 4, !tbaa !3
  %i.ej = load i32, ptr %i.e, align 4, !tbaa !3
  %i.ek = load i32, ptr %i.f, align 4, !tbaa !3
  %i.el = load i32, ptr %i.g, align 4, !tbaa !3
  %i.em = load i32, ptr %i.h, align 4, !tbaa !3
  %.sroa.019.0.copyload = load i64, ptr %15, align 8
  %i.en = load ptr, ptr %i.i, align 8, !tbaa !366
  %i.eo = load i64, ptr %i.j, align 8, !tbaa !11
  %i.ep = load i64, ptr %i.k, align 8, !tbaa !11
  %i.eq = load i64, ptr %i.l, align 8, !tbaa !11
  %i.er = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef %i.ek, i32 noundef %i.el, i32 noundef %i.em, i64 %.sroa.019.0.copyload, ptr noundef %i.en, i64 noundef %i.eo, i64 noundef %i.ep, i64 noundef %i.eq)
          to label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread unwind label %bb.u

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread133
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.u:                                             ; preds = %bb.q, %bb.p, %.critedge, %bb.r, %bb.n
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #34
  %i.eu = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.w, i1 noundef zeroext true) #34
  store i64 %i.eu, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.ch, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  %i.ev = load i64, ptr %i.m, align 8, !tbaa !11
  %i.ew = invoke i64 @compressBound(i64 noundef %i.ev)
          to label %bb.x unwind label %bb.ab      ; 2 uses

bb.x:                                             ; preds = %bb.w
  store i64 %i.ew, ptr %i.n, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  %i.ex = mul i64 %i.ew, %i.ch
  %i.ey = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ex) #38
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  store ptr %i.ey, ptr %21, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #34
  %i.ez = shl nsw i64 %i.ch, 3
  %i.fa = alloca i8, i64 %i.ez, align 16
  store ptr %i.fa, ptr %i.o, align 8, !tbaa !407
  %i.fb = load i8, ptr %15, align 8, !tbaa !105
  %i.fc = icmp eq i8 %i.fb, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp eq i8 %i.fe, 1
  %or.cond.i108 = select i1 %i.fc, i1 %i.ff, i1 false
  br i1 %or.cond.i108, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !125
  %.not.i109 = icmp eq i32 %i.fh, 0
  %i.fi = load i64, ptr %i.j, align 8
  %i.fj = icmp eq i64 %i.fi, -9223372036854775808
  %or.cond = select i1 %.not.i109, i1 %i.fj, i1 false
  br i1 %or.cond, label %bb.z, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.fk = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.w, i1 noundef zeroext true) #34
  store i64 %i.fk, ptr %i.j, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.aa:                                            ; preds = %bb.v
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.cf

bb.ab:                                            ; preds = %bb.w
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ac:                                            ; preds = %bb.x
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit124

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.y, %bb.z, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %.sroa.0.0.copyload = load i64, ptr %15, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !96
  %i.fq = load i32, ptr %i.d, align 4, !tbaa !3
  %i.fr = load i32, ptr %i.c, align 4, !tbaa !3
  %i.fs = sub nsw i32 %i.fq, %i.fr
  %i.ft = load i32, ptr %i.f, align 4, !tbaa !3
  %i.fu = load i32, ptr %i.e, align 4, !tbaa !3
  %i.fv = sub nsw i32 %i.ft, %i.fu
  call void @_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 %.sroa.0.0.copyload, i32 noundef %i.fp, i32 noundef %i.fs, i32 noundef %i.fv) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  store ptr %i.bj, ptr %22, align 8, !tbaa !323
  %i.fw = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.dz, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #34
  store i8 1, ptr %i.p, align 1, !tbaa !155
  %i.fy = load i32, ptr %i.g, align 4, !tbaa !3   ; 4 uses
  %i.fz = load i32, ptr %i.h, align 4, !tbaa !3   ; 4 uses
  %i.ga = icmp slt i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph209, label %._crit_edge210

.lr.ph209:                                        ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ge = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.gk = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.gm = getelementptr inbounds nuw i8, ptr %24, i64 80
  %i.gn = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.gp = getelementptr inbounds nuw i8, ptr %24, i64 104
  %i.gq = getelementptr inbounds nuw i8, ptr %24, i64 112
  %i.gr = getelementptr inbounds nuw i8, ptr %24, i64 120
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.gt = getelementptr inbounds nuw i8, ptr %24, i64 136
  %i.gu = getelementptr inbounds nuw i8, ptr %24, i64 144
  %i.gv = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.hb = load i32, ptr %i.e, align 4, !tbaa !3
  %i.hc = load i32, ptr %i.f, align 4, !tbaa !3   ; 3 uses
  %i.hd = icmp slt i32 %i.hb, %i.hc
  br i1 %i.hd, label %.lr.ph209.split, label %._crit_edge210

._crit_edge210.loopexit:                          ; preds = %._crit_edge205
  %.pre243 = load i32, ptr %i.g, align 4, !tbaa !3
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %.lr.ph209, %._crit_edge210.loopexit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.he = phi i8 [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %i.hs, %._crit_edge210.loopexit ], [ 1, %.lr.ph209 ] ; 3 uses
  %i.hf = phi i32 [ %i.fz, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %i.hq, %._crit_edge210.loopexit ], [ %i.fz, %.lr.ph209 ] ; 2 uses
  %.promoted = phi i32 [ %i.fy, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.pre243, %._crit_edge210.loopexit ], [ %i.fy, %.lr.ph209 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #34
  store i32 %.promoted, ptr %i.q, align 4, !tbaa !3
  %.not82221 = icmp slt i32 %.promoted, %i.hf
  br i1 %.not82221, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %._crit_edge210
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hh = load i32, ptr %i.e, align 4, !tbaa !3
  %i.hi = load i32, ptr %i.f, align 4, !tbaa !3   ; 3 uses
  %i.hj = icmp slt i32 %i.hh, %i.hi
  br i1 %i.hj, label %.lr.ph224.split, label %._crit_edge225

.lr.ph209.split:                                  ; preds = %.lr.ph209, %._crit_edge205
  %i.hk = phi i32 [ %i.hq, %._crit_edge205 ], [ %i.fz, %.lr.ph209 ]
  %i.hl = phi i32 [ %i.hr, %._crit_edge205 ], [ %i.hc, %.lr.ph209 ] ; 2 uses
  %i.hm = phi i8 [ %i.hs, %._crit_edge205 ], [ 1, %.lr.ph209 ] ; 2 uses
  %i.hn = phi i32 [ %i.ht, %._crit_edge205 ], [ %i.hc, %.lr.ph209 ] ; 2 uses
  %.044208 = phi i32 [ %.145.lcssa, %._crit_edge205 ], [ 0, %.lr.ph209 ] ; 2 uses
  %.047207 = phi i32 [ %i.hv, %._crit_edge205 ], [ %i.fy, %.lr.ph209 ] ; 2 uses
  %i.ho = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  %i.hp = icmp slt i32 %i.ho, %i.hn
  br i1 %i.hp, label %.lr.ph204.preheader, label %._crit_edge205

.lr.ph204.preheader:                              ; preds = %.lr.ph209.split
  %.pre = load i32, ptr %i.d, align 4
  br label %.lr.ph204

._crit_edge205.loopexit:                          ; preds = %._crit_edge
  %.pre242 = load i32, ptr %i.h, align 4, !tbaa !3
  br label %._crit_edge205

._crit_edge205:                                   ; preds = %._crit_edge205.loopexit, %.lr.ph209.split
  %i.hq = phi i32 [ %i.hk, %.lr.ph209.split ], [ %.pre242, %._crit_edge205.loopexit ] ; 3 uses
  %i.hr = phi i32 [ %i.hl, %.lr.ph209.split ], [ %i.ie, %._crit_edge205.loopexit ]
  %i.hs = phi i8 [ %i.hm, %.lr.ph209.split ], [ %i.ig, %._crit_edge205.loopexit ] ; 2 uses
  %i.ht = phi i32 [ %i.hn, %.lr.ph209.split ], [ %i.ie, %._crit_edge205.loopexit ]
  %.145.lcssa = phi i32 [ %.044208, %.lr.ph209.split ], [ %.246.lcssa, %._crit_edge205.loopexit ]
  %i.hu = load i32, ptr %i.an, align 8, !tbaa !406
  %i.hv = add nsw i32 %i.hu, %.047207             ; 2 uses
  %i.hw = icmp slt i32 %i.hv, %i.hq
  br i1 %i.hw, label %.lr.ph209.split, label %._crit_edge210.loopexit, !llvm.loop !408

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %._crit_edge
  %i.hx = phi i32 [ %i.ie, %._crit_edge ], [ %i.hl, %.lr.ph204.preheader ]
  %i.hy = phi i32 [ %i.if, %._crit_edge ], [ %.pre, %.lr.ph204.preheader ] ; 2 uses
  %i.hz = phi i8 [ %i.ig, %._crit_edge ], [ %i.hm, %.lr.ph204.preheader ] ; 2 uses
  %.043202 = phi i32 [ %i.ii, %._crit_edge ], [ %i.ho, %.lr.ph204.preheader ] ; 2 uses
  %.145201 = phi i32 [ %.246.lcssa, %._crit_edge ], [ %.044208, %.lr.ph204.preheader ] ; 2 uses
  %i.ia = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.ib = trunc nuw i8 %i.hz to i1
  %i.ic = icmp slt i32 %i.ia, %i.hy
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNSt14__basic_futureIvED2Ev.exit
  %.pre241 = load i32, ptr %i.f, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph204
  %i.ie = phi i32 [ %i.hx, %.lr.ph204 ], [ %.pre241, %._crit_edge.loopexit ] ; 4 uses
  %i.if = phi i32 [ %i.hy, %.lr.ph204 ], [ %i.md, %._crit_edge.loopexit ]
  %i.ig = phi i8 [ %i.hz, %.lr.ph204 ], [ %i.mb, %._crit_edge.loopexit ] ; 2 uses
  %.246.lcssa = phi i32 [ %.145201, %.lr.ph204 ], [ %i.ma, %._crit_edge.loopexit ] ; 2 uses
  %i.ih = load i32, ptr %i.ag, align 4, !tbaa !88
  %i.ii = add nsw i32 %i.ih, %.043202             ; 2 uses
  %i.ij = icmp slt i32 %i.ii, %i.ie
  br i1 %i.ij, label %.lr.ph204, label %._crit_edge205.loopexit, !llvm.loop !410

.lr.ph:                                           ; preds = %.lr.ph204, %_ZNSt14__basic_futureIvED2Ev.exit
  %.042200 = phi i32 [ %i.lz, %_ZNSt14__basic_futureIvED2Ev.exit ], [ %i.ia, %.lr.ph204 ] ; 2 uses
  %.246199 = phi i32 [ %i.ma, %_ZNSt14__basic_futureIvED2Ev.exit ], [ %.145201, %.lr.ph204 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  store i32 %.042200, ptr %24, align 8, !tbaa !411
  store i32 %.043202, ptr %i.gb, align 4, !tbaa !418
  store i32 %.047207, ptr %i.gc, align 8, !tbaa !419
  store i32 %.246199, ptr %i.gd, align 4, !tbaa !420
  store ptr %i.i, ptr %i.ge, align 8, !tbaa !421
  store ptr %i.c, ptr %i.gf, align 8, !tbaa !422
  store ptr %i.j, ptr %i.gg, align 8, !tbaa !407
  store ptr %i.g, ptr %i.gh, align 8, !tbaa !422
  store ptr %i.l, ptr %i.gi, align 8, !tbaa !407
  store ptr %i.e, ptr %i.gj, align 8, !tbaa !422
  store ptr %i.k, ptr %i.gk, align 8, !tbaa !407
  store ptr %i.d, ptr %i.gl, align 8, !tbaa !422
  store ptr %0, ptr %i.gm, align 8, !tbaa !423
  store ptr %i.f, ptr %i.gn, align 8, !tbaa !422
  store ptr %i.h, ptr %i.go, align 8, !tbaa !422
  store ptr %15, ptr %i.gp, align 8, !tbaa !424
  store ptr %19, ptr %i.gq, align 8, !tbaa !425
  store ptr %21, ptr %i.gr, align 8, !tbaa !426
  store ptr %i.n, ptr %i.gs, align 8, !tbaa !407
  store ptr %i.m, ptr %i.gt, align 8, !tbaa !407
  store ptr %i.o, ptr %i.gu, align 8, !tbaa !427
  store ptr %i.p, ptr %i.gv, align 8, !tbaa !332
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34, !noalias !428
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.ik = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %.noexc111 unwind label %bb.bn ; 8 uses

.noexc111:                                        ; preds = %.lr.ph
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  store i32 1, ptr %i.il, align 8, !tbaa !351, !noalias !434
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 1, ptr %i.im, align 4, !tbaa !354, !noalias !434
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ik, align 8, !tbaa !23, !noalias !434
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 5 uses
  invoke fastcc void @"_ZStL19__create_task_stateIFviEZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS2_8TypeDescEPKvlllE3$_0SaIiEESt10shared_ptrINSt13__future_base16_Task_state_baseIT_EEEOT0_RKT1_"(ptr dead_on_unwind noalias nonnull writable align 8 dereferenceable(16) %i.in, ptr noundef nonnull readonly align 8 dereferenceable(160) %24)
          to label %"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS4_8TypeDescEPKvlllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_.exit.i" unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !434

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc111
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 32) #36, !noalias !434
  br label %.body

"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS4_8TypeDescEPKvlllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_.exit.i": ; preds = %.noexc111
  store ptr %i.ik, ptr %i.gw, align 8, !tbaa !355, !alias.scope !431, !noalias !428
  store ptr %i.in, ptr %13, align 8, !tbaa !358, !alias.scope !431, !noalias !428
  %i.ip = invoke noundef i32 @_ZNK11OpenImageIO4v3_111thread_pool4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.ad unwind label %.loopexit156, !noalias !428

bb.ad:                                            ; preds = %"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS4_8TypeDescEPKvlllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_.exit.i"
  %i.iq = icmp slt i32 %i.ip, 1
  br i1 %i.iq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !428
  store i32 -1, ptr %i.a, align 4, !tbaa !3, !noalias !428
  %i.ir = load ptr, ptr %i.in, align 8, !tbaa !360, !noalias !428 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i, label %bb.af, label %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_future_errori(i32 noundef 3) #35
          to label %.noexc.i unwind label %.loopexit.split-lp157, !noalias !428

.noexc.i:                                         ; preds = %bb.af
  unreachable

_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i: ; preds = %bb.ae
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !23, !noalias !428
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !428
  invoke void %i.iu(ptr noundef nonnull align 8 dereferenceable(40) %i.ir, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt13packaged_taskIFviEEclEi.exit.i unwind label %.loopexit156, !noalias !428, !inline_history !363

_ZNSt13packaged_taskIFviEEclEi.exit.i:            ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !428
  br label %bb.am

.loopexit156:                                     ; preds = %"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS4_8TypeDescEPKvlllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_.exit.i", %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.body131

.loopexit.split-lp157:                            ; preds = %bb.af
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.body131

bb.ag:                                            ; preds = %bb.ad
  %i.iv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %bb.ah unwind label %bb.ak, !noalias !428 ; 5 uses

bb.ah:                                            ; preds = %bb.ag
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15, !noalias !428
  %.not.i.i.i.i.i = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ix = load i32, ptr %i.il, align 8, !tbaa !3, !noalias !428
  %i.iy = add nsw i32 %i.ix, 1
  store i32 %i.iy, ptr %i.il, align 8, !tbaa !3, !noalias !428
  br label %_ZNSt10shared_ptrISt13packaged_taskIFviEEEC2ERKS3_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.iz = atomicrmw volatile add ptr %i.il, i32 1 acq_rel, align 4, !noalias !428 ; 0 uses
  br label %_ZNSt10shared_ptrISt13packaged_taskIFviEEEC2ERKS3_.exit.i

_ZNSt10shared_ptrISt13packaged_taskIFviEEEC2ERKS3_.exit.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iv, i8 0, i64 32, i1 false), !noalias !428
  %i.ja = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit.i" unwind label %bb.al, !noalias !428 ; 3 uses

"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit.i": ; preds = %_ZNSt10shared_ptrISt13packaged_taskIFviEEEC2ERKS3_.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store ptr %i.in, ptr %i.ja, align 8, !tbaa !364, !noalias !428
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.ik, ptr %i.jc, align 8, !tbaa !355, !noalias !428
  store ptr %i.ja, ptr %i.iv, align 8, !tbaa !366, !noalias !428
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFviEZN11OpenImageIO4v3_111thread_pool4pushIZNS2_10TIFFOutput11write_tilesEiiiiiiNS2_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFviEZN11OpenImageIO4v3_111thread_pool4pushIZNS2_10TIFFOutput11write_tilesEiiiiiiNS2_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_EUliE_E9_M_invokeERKSt9_Any_dataOi">, ptr %i.jb, align 8, !tbaa !366, !noalias !428
  invoke void @_ZN11OpenImageIO4v3_111thread_pool21push_queue_and_notifyEPSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.iv)
          to label %"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit._crit_edge.i" unwind label %bb.ak, !noalias !428

"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit._crit_edge.i": ; preds = %"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit.i"
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !364, !noalias !428
  br label %bb.am

bb.ak:                                            ; preds = %"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit.i", %bb.ag
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body131

bb.al:                                            ; preds = %_ZNSt10shared_ptrISt13packaged_taskIFviEEEC2ERKS3_.exit.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev"(ptr nonnull %i.ik) #34, !noalias !428
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef 32) #36, !noalias !428
  br label %.body131

bb.am:                                            ; preds = %"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit._crit_edge.i", %_ZNSt13packaged_taskIFviEEclEi.exit.i
  %i.jf = phi ptr [ %.pre.i, %"_ZZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit._crit_edge.i" ], [ %i.in, %_ZNSt13packaged_taskIFviEEclEi.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34, !noalias !435
  %26 = load <2 x ptr>, ptr %i.jf, align 8, !tbaa !366, !noalias !435 ; 5 uses
  store <2 x ptr> %26, ptr %12, align 16, !tbaa !366, !noalias !435
  %27 = extractelement <2 x ptr> %26, i64 1       ; 3 uses
  %.not.i.i.i.i125 = icmp eq ptr %27, null
  br i1 %.not.i.i.i.i125, label %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.thread.i, label %bb.an

_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.thread.i: ; preds = %bb.am
  %28 = extractelement <2 x ptr> %26, i64 0       ; 2 uses
  store ptr %28, ptr %23, align 16, !tbaa !370, !alias.scope !435
  store ptr null, ptr %i.gy, align 8, !tbaa !355, !alias.scope !435
  br label %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.jg = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15, !noalias !435
  %.not.i.i.i.i.i126 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i.i.i126, label %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.i, label %.thread

.thread:                                          ; preds = %bb.an
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !3, !noalias !435
  %i.jj = add nsw i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jg, align 4, !tbaa !3, !noalias !435
  store <2 x ptr> %26, ptr %23, align 16, !tbaa !366, !alias.scope !435
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %30 = extractelement <2 x ptr> %26, i64 0
  br label %bb.ap

_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.i: ; preds = %bb.an
  %i.jk = atomicrmw volatile add ptr %i.jg, i32 1 acq_rel, align 4, !noalias !435 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.gx, align 8, !tbaa !355, !noalias !435 ; 3 uses
  %.pre.i130 = load ptr, ptr %12, align 16, !tbaa !370, !noalias !435 ; 3 uses
  store ptr %.pre.i130, ptr %23, align 16, !tbaa !370, !alias.scope !435
  store ptr %.pr.pre.i, ptr %i.gy, align 8, !tbaa !355, !alias.scope !435
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.i
  %.pre240 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15, !noalias !435
  %i.jl = icmp eq i8 %.pre240, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 2 uses
  br i1 %i.jl, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread, %bb.ao
  %i.jn = phi ptr [ %29, %.thread ], [ %i.jm, %bb.ao ] ; 2 uses
  %i.jo = phi ptr [ %30, %.thread ], [ %.pre.i130, %bb.ao ]
  %i.jp = load i32, ptr %i.jn, align 4, !tbaa !3, !noalias !435
  %i.jq = add nsw i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !3, !noalias !435
  br label %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jr = atomicrmw volatile add ptr %i.jm, i32 1 acq_rel, align 4, !noalias !435 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %23, align 16, !tbaa !370, !alias.scope !435
  br label %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i

_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.i, %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.thread.i
  %i.js = phi ptr [ %.pre.i130, %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.i ], [ %i.jo, %bb.ap ], [ %.pre.i.i.i, %bb.aq ], [ %28, %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2INS0_16_Task_state_baseIFviEEEvEERKS_IT_E.exit.thread.i ] ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i2.i, label %.invoke.i.i.i, label %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i.i

_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i.i: ; preds = %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 20
  %i.ju = atomicrmw xchg ptr %i.jt, i8 1 seq_cst, align 1, !noalias !435
  %.0.in.i.not.i.i.i.i = icmp eq i8 %i.ju, 0
  br i1 %.0.in.i.not.i.i.i.i, label %_ZNSt6futureIvEC2ERKSt10shared_ptrINSt13__future_base13_State_baseV2EE.exit.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i.i, %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i
  %i.jv = phi i32 [ 3, %_ZNSt10shared_ptrINSt13__future_base13_State_baseV2EEC2ERKS2_.exit.i.i.i ], [ 1, %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i.i ]
  invoke void @_ZSt20__throw_future_errori(i32 noundef %i.jv) #35
          to label %.cont.i.i.i unwind label %.body.i, !noalias !435

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

.body.i:                                          ; preds = %.invoke.i.i.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #34
  call void @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !435
  br label %.body131

_ZNSt6futureIvEC2ERKSt10shared_ptrINSt13__future_base13_State_baseV2EE.exit.i: ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i.i
  %i.jx = load ptr, ptr %i.gx, align 8, !tbaa !355, !noalias !435 ; 8 uses
  %.not.i.i.i127 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i127, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6futureIvEC2ERKSt10shared_ptrINSt13__future_base13_State_baseV2EE.exit.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 4 uses
  %i.jz = load atomic i64, ptr %i.jy acquire, align 8, !noalias !435 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 4294967297
  %i.kb = trunc i64 %i.jz to i32                  ; 2 uses
  br i1 %i.ka, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.jy, align 8, !tbaa !351, !noalias !435
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 0, ptr %i.kc, align 4, !tbaa !354, !noalias !435
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !23, !noalias !435
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !435
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #34, !noalias !435, !inline_history !438
  %i.kg = load ptr, ptr %i.jx, align 8, !tbaa !23, !noalias !435
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !435
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #34, !noalias !435, !inline_history !438
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.kj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15, !noalias !435
  %.not.i.i.i3.i = icmp eq i8 %i.kj, 0
  br i1 %.not.i.i.i3.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kk = add nsw i32 %i.kb, -1
  store i32 %i.kk, ptr %i.jy, align 8, !tbaa !3, !noalias !435
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128

bb.av:                                            ; preds = %bb.at
  %i.kl = atomicrmw volatile add ptr %i.jy, i32 -1 acq_rel, align 4, !noalias !435
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i129 = phi i32 [ %i.kb, %bb.au ], [ %i.kl, %bb.av ]
  %i.km = icmp eq i32 %.0.i.i.i.i.i129, 1
  br i1 %i.km, label %bb.aw, label %bb.ax, !prof !157

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #34, !noalias !435
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i128, %bb.as, %_ZNSt6futureIvEC2ERKSt10shared_ptrINSt13__future_base13_State_baseV2EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !435
  %i.kn = load ptr, ptr %i.gw, align 8, !tbaa !355, !noalias !428 ; 8 uses
  %.not.i.i15.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i15.i, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 4 uses
  %i.kp = load atomic i64, ptr %i.ko acquire, align 8 ; 2 uses
  %i.kq = icmp eq i64 %i.kp, 4294967297
  %i.kr = trunc i64 %i.kp to i32                  ; 2 uses
  br i1 %i.kq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ko, align 8, !tbaa !351
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  store i32 0, ptr %i.ks, align 4, !tbaa !354
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !23
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(16) %i.kn) #34, !inline_history !439
  %i.kw = load ptr, ptr %i.kn, align 8, !tbaa !23
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(16) %i.kn) #34, !inline_history !439
  br label %bb.be

bb.ba:                                            ; preds = %bb.ay
  %i.kz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15, !noalias !428
  %.not.i.i.i16.i = icmp eq i8 %i.kz, 0
  br i1 %.not.i.i.i16.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.la = add nsw i32 %i.kr, -1
  store i32 %i.la, ptr %i.ko, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.lb = atomicrmw volatile add ptr %i.ko, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i = phi i32 [ %i.kr, %bb.bb ], [ %i.lb, %bb.bc ]
  %i.lc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.lc, label %bb.bd, label %bb.be, !prof !157

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kn) #34
  br label %bb.be

.body131:                                         ; preds = %.loopexit156, %.loopexit.split-lp157, %.body.i, %bb.al, %bb.ak
  %.pn8.i = phi { ptr, i32 } [ %i.je, %bb.al ], [ %i.jd, %bb.ak ], [ %i.jw, %.body.i ], [ %lpad.loopexit158, %.loopexit156 ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp157 ]
  call void @_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34, !noalias !428
  br label %.body

bb.be:                                            ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.az, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34, !noalias !428
  %i.ld = load ptr, ptr %i.gz, align 8, !tbaa !368 ; 5 uses
  %i.le = load ptr, ptr %i.ha, align 8, !tbaa !369
  %.not.i.i = icmp eq ptr %i.ld, %i.le
  br i1 %.not.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store ptr null, ptr %i.lf, align 8, !tbaa !355
  %i.lg = load <2 x ptr>, ptr %23, align 16, !tbaa !366
  store ptr null, ptr %i.gy, align 8, !tbaa !355
  store <2 x ptr> %i.lg, ptr %i.ld, align 8, !tbaa !366
  store ptr null, ptr %23, align 16, !tbaa !370
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store ptr %i.lh, ptr %i.gz, align 8, !tbaa !368
  br label %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit unwind label %bb.bo

_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit: ; preds = %bb.bf, %bb.bg
  %i.li = load ptr, ptr %i.gy, align 8, !tbaa !355 ; 8 uses
  %.not.i.i.i113 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i113, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 4 uses
  %i.lk = load atomic i64, ptr %i.lj acquire, align 8 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 4294967297
  %i.lm = trunc i64 %i.lk to i32                  ; 2 uses
  br i1 %i.ll, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.lj, align 8, !tbaa !351
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  store i32 0, ptr %i.ln, align 4, !tbaa !354
  %i.lo = load ptr, ptr %i.li, align 8, !tbaa !23
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #34, !inline_history !373
  %i.lr = load ptr, ptr %i.li, align 8, !tbaa !23
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #34, !inline_history !373
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.lu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lv = add nsw i32 %i.lm, -1
  store i32 %i.lv, ptr %i.lj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114

bb.bl:                                            ; preds = %bb.bj
  %i.lw = atomicrmw volatile add ptr %i.lj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i115 = phi i32 [ %i.lm, %bb.bk ], [ %i.lw, %bb.bl ]
  %i.lx = icmp eq i32 %.0.i.i.i.i.i115, 1
  br i1 %i.lx, label %bb.bm, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !157

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #34
  br label %_ZNSt14__basic_futureIvED2Ev.exit
end_hunk_0
