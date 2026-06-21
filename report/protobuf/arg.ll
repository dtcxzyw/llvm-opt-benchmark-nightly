inline.NumInlined: 657
inline.NumDeleted: 252
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.02748
  %i.l = invoke noundef i64 @_ZN4absl12lts_2025051216strings_internal10WideToUtf8EwPcRNS1_10ShiftStateE(i32 noundef signext %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull align 1 dereferenceable(2) %6)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.n = add i64 %i.l, %.02748                    ; 8 uses
  %i.o = add nuw i64 %.03047, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !84  ; 3 uses
  %i.p = and i64 %2, 65280
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.k

._crit_edge.thread:                               ; preds = %bb.c
  %i.r = and i64 %2, 65280
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.k

bb.g:                                             ; preds = %._crit_edge
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17
  %i.w = add i64 %i.v, %i.n
  store i64 %i.w, ptr %i.u, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1056
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %.not.i.i = icmp ult i64 %i.n, %i.ac
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = load ptr, ptr %4, align 8, !tbaa !22
  invoke void %i.ah(ptr noundef %i.ai, i64 %i.af, ptr nonnull %i.ad)
          to label %.noexc38 unwind label %bb.l, !inline_history !90

.noexc38:                                         ; preds = %bb.i
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !20
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ak = load ptr, ptr %4, align 8, !tbaa !22
  invoke void %i.aj(ptr noundef %i.ak, i64 %i.n, ptr %.pre)
          to label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit unwind label %bb.l, !inline_history !90

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %.pre, i64 %i.n, i1 false)
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.n
  store ptr %i.am, ptr %i.y, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.027.lcssa56 = phi i64 [ 0, %._crit_edge.thread ], [ %i.n, %._crit_edge ]
  %i.an = phi ptr [ %.0.i.i.i, %._crit_edge.thread ], [ %.pre, %._crit_edge ]
  %.sroa.310.0.extract.shift.i = lshr i64 %2, 32
  %.sroa.310.0.extract.trunc.i = trunc nuw i64 %.sroa.310.0.extract.shift.i to i32
  %i.ao = and i64 %2, 256
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %4, i64 %.027.lcssa56, ptr %i.an, i32 noundef %.sroa.310.0.extract.trunc.i, i32 noundef %3, i1 noundef zeroext %i.ap)
          to label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc38, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.d, %._crit_edge.thread, %bb.j, %bb.g, %.noexc38, %bb.k
  %.3 = phi i1 [ %i.aq, %bb.k ], [ true, %.noexc38 ], [ true, %bb.g ], [ true, %bb.j ], [ true, %._crit_edge.thread ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.as = load i64, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.at = icmp ult i64 %i.as, 257
  br i1 %i.at, label %_ZN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !84
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.as) #14
  br label %_ZN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit

_ZN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.3

bb.n:                                             ; preds = %bb.l, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.av = load i64, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.aw = icmp ult i64 %i.av, 257
  br i1 %i.aw, label %_ZN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !84
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.av) #14
  br label %_ZN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41

_ZN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define range(i8 0, 2) i8 @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEDnNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nofree readnone captures(none) %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 17
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = add i64 %i.d, 5
  store i64 %i.e, ptr %i.c, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i.i = icmp ugt i64 %i.k, 5
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = load ptr, ptr %3, align 8, !tbaa !22
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !91
  store ptr %i.l, ptr %i.g, align 8, !tbaa !20
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.s = load ptr, ptr %3, align 8, !tbaa !22
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !92
  br label %_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.u, ptr %i.g, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.a
  %i.v = and i64 %1, 65280
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.310.0.extract.shift.i.i = lshr i64 %1, 32
  %.sroa.310.0.extract.trunc.i.i = trunc nuw i64 %.sroa.310.0.extract.shift.i.i to i32
  %i.x = and i64 %1, 256
  %i.y = icmp ne i64 %i.x, 0
  %i.z = tail call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %3, i64 0, ptr null, i32 noundef %.sroa.310.0.extract.trunc.i.i, i32 noundef %2, i1 noundef zeroext %i.y)
  %i.aa = zext i1 %i.z to i8
  br label %_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.018.0.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ], [ %i.aa, %bb.f ]
  ret i8 %.sroa.018.0.i
}

; Function Attrs: mustprogress uwtable
define range(i8 0, 2) i8 @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgIwEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i128 %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 17 uses
  store i64 %1, ptr %4, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.223.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.r [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.m
    i8 3, label %bb.m
    i8 18, label %bb.m
    i8 14, label %bb.q
    i8 10, label %bb.q
    i8 8, label %bb.q
    i8 12, label %bb.q
    i8 15, label %bb.q
    i8 11, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i128 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i128 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = trunc i128 %0 to i64
  %i.h = lshr i128 %0, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.5.0.i = phi i64 [ %i.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.j, %bb.e ], [ %i.n, %bb.f ]
  %i.k = trunc i64 %.sroa.0.0.i to i8
  %i.l = and i8 %i.k, 7
  %i.m = or disjoint i8 %i.l, 48
  %i.n = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  store i8 %i.m, ptr %i.n, align 1, !tbaa !7
  %i.o = zext i64 %.sroa.5.0.i to i128
  %i.p = shl nuw i128 %i.o, 64
  %i.q = zext i64 %.sroa.0.0.i to i128
  %i.r = or disjoint i128 %i.p, %i.q
  %i.s = lshr i128 %i.r, 3
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %.sroa.5.0.i, 3                 ; 2 uses
  %i.v = or i64 %i.u, %i.t
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit, label %bb.f, !llvm.loop !93

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit: ; preds = %bb.f
  store ptr %i.n, ptr %5, align 8, !tbaa !10
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !16
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.aa = trunc i128 %0 to i64
  %i.ab = lshr i128 %0, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i28 = phi i64 [ %i.ac, %bb.g ], [ %i.ap, %bb.h ] ; 2 uses
  %.sroa.0.0.i29 = phi i64 [ %i.aa, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %.0.i30 = phi ptr [ %i.ad, %bb.g ], [ %i.ae, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.0.i30, i64 -2 ; 3 uses
  %i.af = shl i64 %.sroa.0.0.i29, 1
  %i.ag = and i64 %i.af, 510
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2            ; 2 uses
  store i16 %i.ai, ptr %i.ae, align 1
  %i.aj = zext i64 %.sroa.5.0.i28 to i128
  %i.ak = shl nuw i128 %i.aj, 64
  %i.al = zext i64 %.sroa.0.0.i29 to i128
  %i.am = or disjoint i128 %i.ak, %i.al
  %i.an = lshr i128 %i.am, 8
  %i.ao = trunc i128 %i.an to i64                 ; 2 uses
  %i.ap = lshr i64 %.sroa.5.0.i28, 8              ; 2 uses
  %i.aq = or i64 %i.ap, %i.ao
  %.not.i31 = icmp eq i64 %i.aq, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, label %bb.h, !llvm.loop !94

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit: ; preds = %bb.h
  %i.ar = and i16 %i.ai, 255
  %i.as = icmp eq i16 %i.ar, 48
  %i.at = getelementptr inbounds i8, ptr %.0.i30, i64 -1
  %spec.select.i = select i1 %i.as, ptr %i.at, ptr %i.ae ; 3 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !10
  %i.au = ptrtoint ptr %i.ad to i64
  %i.av = ptrtoint ptr %spec.select.i to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !16
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.ay = trunc i128 %0 to i64
  %i.az = lshr i128 %0, 64
  %i.ba = trunc nuw i128 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.5.0.i32 = phi i64 [ %i.ba, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.sroa.0.0.i33 = phi i64 [ %i.ay, %bb.i ], [ %i.bl, %bb.j ] ; 2 uses
  %.0.i34 = phi ptr [ %i.bb, %bb.i ], [ %i.bf, %bb.j ]
  %i.bc = and i64 %.sroa.0.0.i33, 15
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7
  %i.bf = getelementptr inbounds i8, ptr %.0.i34, i64 -1 ; 5 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !7
  %i.bg = zext i64 %.sroa.5.0.i32 to i128
  %i.bh = shl nuw i128 %i.bg, 64
  %i.bi = zext i64 %.sroa.0.0.i33 to i128
  %i.bj = or disjoint i128 %i.bh, %i.bi
  %i.bk = lshr i128 %i.bj, 4
  %i.bl = trunc i128 %i.bk to i64                 ; 2 uses
  %i.bm = lshr i64 %.sroa.5.0.i32, 4              ; 2 uses
  %i.bn = or i64 %i.bm, %i.bl
  %.not.i35 = icmp eq i64 %i.bn, 0
  br i1 %.not.i35, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, label %bb.j, !llvm.loop !95

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit: ; preds = %bb.j
  store ptr %i.bf, ptr %5, align 8, !tbaa !10
  %i.bo = ptrtoint ptr %i.bb to i64
  %i.bp = ptrtoint ptr %i.bf to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !16
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.bs = trunc i128 %0 to i64
  %i.bt = lshr i128 %0, 64
  %i.bu = trunc nuw i128 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i = phi i64 [ %i.bs, %bb.k ], [ %i.ce, %bb.l ]
  %.sroa.5.0.i36 = phi i64 [ %i.bu, %bb.k ], [ %i.cg, %bb.l ]
  %.0.i37 = phi ptr [ %i.bv, %bb.k ], [ %i.bw, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.0.i37, i64 -2 ; 4 uses
  %i.bx = zext i64 %.sroa.5.0.i36 to i128
  %i.by = shl nuw i128 %i.bx, 64
  %i.bz = zext i64 %.sroa.011.0.i to i128
  %i.ca = or disjoint i128 %i.by, %i.bz
  %.frozen = freeze i128 %i.ca                    ; 2 uses
  %i.cb = udiv i128 %.frozen, 100                 ; 3 uses
  %i.cc = mul i128 %i.cb, 100
  %.decomposed = sub i128 %.frozen, %i.cc
  %i.cd = trunc nuw nsw i128 %.decomposed to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.cd, ptr noundef nonnull %i.bw)
  %i.ce = trunc i128 %i.cb to i64                 ; 2 uses
  %i.cf = lshr i128 %i.cb, 64                     ; 2 uses
  %i.cg = trunc nuw nsw i128 %i.cf to i64
  %.not.i.i = icmp ne i64 %i.ce, 0
  %i.ch = icmp ne i128 %i.cf, 0
  %i.ci = or i1 %.not.i.i, %i.ch
  br i1 %i.ci, label %bb.l, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, !llvm.loop !96

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit: ; preds = %bb.l
  %i.cj = load i8, ptr %i.bw, align 1, !tbaa !7
  %i.ck = icmp eq i8 %i.cj, 48
  %i.cl = getelementptr inbounds i8, ptr %.0.i37, i64 -1
  %spec.select.i38 = select i1 %i.ck, ptr %i.cl, ptr %i.bw ; 3 uses
  %i.cm = ptrtoint ptr %i.bv to i64
  %i.cn = ptrtoint ptr %spec.select.i38 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !16
  store ptr %spec.select.i38, ptr %5, align 8, !tbaa !10
  br label %bb.s

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cq = lshr i128 %0, 64
  %i.cr = trunc nuw i128 %i.cq to i64             ; 2 uses
  %i.cs = icmp slt i128 %0, 0                     ; 3 uses
  %i.ct = and i128 %0, 18446744073709551615
  %i.cu = sub nsw i128 0, %i.ct                   ; 2 uses
  %i.cv = lshr i128 %i.cu, 64
  %.tr.i.i = trunc nuw i128 %i.cv to i64
  %.narrow.i.i = sub i64 %.tr.i.i, %i.cr
  %.sroa.010.0.v.i = select i1 %i.cs, i128 %i.cu, i128 %0
  %.sroa.010.0.i = trunc i128 %.sroa.010.0.v.i to i64
  %.sroa.6.0.i = select i1 %i.cs, i64 %.narrow.i.i, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.0.i.i = phi i64 [ %.sroa.010.0.i, %bb.m ], [ %i.df, %bb.n ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.6.0.i, %bb.m ], [ %i.dh, %bb.n ]
  %.0.i.i = phi ptr [ %i.cw, %bb.m ], [ %i.cx, %bb.n ] ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.0.i.i, i64 -2 ; 5 uses
  %i.cy = zext i64 %.sroa.5.0.i.i to i128
  %i.cz = shl nuw i128 %i.cy, 64
  %i.da = zext i64 %.sroa.011.0.i.i to i128
  %i.db = or disjoint i128 %i.cz, %i.da
  %.frozen88 = freeze i128 %i.db                  ; 2 uses
  %i.dc = udiv i128 %.frozen88, 100               ; 3 uses
  %i.dd = mul i128 %i.dc, 100
  %.decomposed89 = sub i128 %.frozen88, %i.dd
  %i.de = trunc nuw nsw i128 %.decomposed89 to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.de, ptr noundef nonnull %i.cx)
  %i.df = trunc i128 %i.dc to i64                 ; 2 uses
  %i.dg = lshr i128 %i.dc, 64                     ; 2 uses
  %i.dh = trunc nuw nsw i128 %i.dg to i64
  %.not.i.i.i = icmp ne i64 %i.df, 0
  %i.di = icmp ne i128 %i.dg, 0
  %i.dj = or i1 %.not.i.i.i, %i.di
  br i1 %i.dj, label %bb.n, label %bb.o, !llvm.loop !96

bb.o:                                             ; preds = %bb.n
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !7
  %i.dl = icmp eq i8 %i.dk, 48                    ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.0.i.i, i64 -1
  %spec.select.i.i = select i1 %i.dl, ptr %i.dm, ptr %i.cx
  br i1 %i.cs, label %bb.p, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.gep65 = getelementptr inbounds i8, ptr %.0.i.i, i64 -3
  %spec.select.i.i.sroa.sel.v.sroa.sel = select i1 %i.dl, ptr %i.cx, ptr %.sroa.gep65 ; 2 uses
  store i8 45, ptr %spec.select.i.i.sroa.sel.v.sroa.sel, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit: ; preds = %bb.o, %bb.p
  %.2.i.i = phi ptr [ %spec.select.i.i.sroa.sel.v.sroa.sel, %bb.p ], [ %spec.select.i.i, %bb.o ] ; 3 uses
  %i.dn = ptrtoint ptr %i.cw to i64
  %i.do = ptrtoint ptr %.2.i.i to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !16
  store ptr %.2.i.i, ptr %5, align 8, !tbaa !10
  br label %bb.s

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.dr = sitofp i128 %0 to double
  %i.ds = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.dr, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.r:                                             ; preds = %bb.a
  unreachable

bb.s:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit
  %.val25 = phi i64 [ %i.dp, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit ], [ %i.co, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.bq, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %i.aw, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.y, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 7 uses
  %.val = phi ptr [ %.2.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit ], [ %spec.select.i38, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.bf, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.n, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 3 uses
  %i.dt = and i64 %1, 65280
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.dv = icmp eq i64 %.val25, 0
  br i1 %i.dv, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !17
  %i.dy = add i64 %i.dx, %.val25
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !20 ; 2 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed
  %.not.i39 = icmp ult i64 %.val25, %i.ee
  br i1 %.not.i39, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.ed, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ek = load ptr, ptr %3, align 8, !tbaa !22
  call void %i.ej(ptr noundef %i.ek, i64 %i.eh, ptr nonnull %i.ef), !inline_history !23
  store ptr %i.ef, ptr %i.ea, align 8, !tbaa !20
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.em = load ptr, ptr %3, align 8, !tbaa !22
  call void %i.el(ptr noundef %i.em, i64 %.val25, ptr nonnull %.val), !inline_history !24
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr nonnull align 1 %.val, i64 %.val25, i1 false)
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.val25
  store ptr %i.eo, ptr %i.ea, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.x:                                             ; preds = %bb.s
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %.val, i64 %.val25, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.w, %bb.v, %bb.t, %bb.c, %bb.d, %bb.x, %bb.q
  %.0 = phi i1 [ %i.ds, %bb.q ], [ true, %bb.d ], [ true, %bb.x ], [ %i.e, %bb.c ], [ true, %bb.t ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %0, i64 %1, i64 %2, i32 %3, ptr noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %6 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 17 uses
  store i64 %2, ptr %5, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %3, ptr %.sroa.228.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = trunc i64 %2 to i8
  switch i8 %i.a, label %bb.p [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.m
    i8 3, label %bb.m
    i8 18, label %bb.m
    i8 14, label %bb.o
    i8 10, label %bb.o
    i8 8, label %bb.o
    i8 12, label %bb.o
    i8 15, label %bb.o
    i8 11, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %2, i32 %3, ptr noundef %4)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %2, ptr noundef %4)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.5.0.i = phi i64 [ %1, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %0, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i64 %.sroa.0.0.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !7
  %i.l = zext i64 %.sroa.5.0.i to i128
  %i.m = shl nuw i128 %i.l, 64
  %i.n = zext i64 %.sroa.0.0.i to i128
  %i.o = or disjoint i128 %i.m, %i.n
  %i.p = lshr i128 %i.o, 3
  %i.q = trunc i128 %i.p to i64                   ; 2 uses
  %i.r = lshr i64 %.sroa.5.0.i, 3                 ; 2 uses
  %i.s = or i64 %i.r, %i.q
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit, label %bb.f, !llvm.loop !93

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %6, align 8, !tbaa !10
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.k to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i33 = phi i64 [ %1, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.sroa.0.0.i34 = phi i64 [ %0, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  %.0.i35 = phi ptr [ %i.x, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.0.i35, i64 -2 ; 3 uses
  %i.z = shl i64 %.sroa.0.0.i34, 1
  %i.aa = and i64 %i.z, 510
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  store i16 %i.ac, ptr %i.y, align 1
  %i.ad = zext i64 %.sroa.5.0.i33 to i128
  %i.ae = shl nuw i128 %i.ad, 64
  %i.af = zext i64 %.sroa.0.0.i34 to i128
  %i.ag = or disjoint i128 %i.ae, %i.af
  %i.ah = lshr i128 %i.ag, 8
  %i.ai = trunc i128 %i.ah to i64                 ; 2 uses
  %i.aj = lshr i64 %.sroa.5.0.i33, 8              ; 2 uses
  %i.ak = or i64 %i.aj, %i.ai
  %.not.i36 = icmp eq i64 %i.ak, 0
  br i1 %.not.i36, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, label %bb.h, !llvm.loop !94

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit: ; preds = %bb.h
  %i.al = and i16 %i.ac, 255
  %i.am = icmp eq i16 %i.al, 48
  %i.an = getelementptr inbounds i8, ptr %.0.i35, i64 -1
  %spec.select.i = select i1 %i.am, ptr %i.an, ptr %i.y ; 3 uses
  store ptr %spec.select.i, ptr %6, align 8, !tbaa !10
  %i.ao = ptrtoint ptr %i.x to i64
  %i.ap = ptrtoint ptr %spec.select.i to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !16
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.5.0.i37 = phi i64 [ %1, %bb.i ], [ %i.bd, %bb.j ] ; 2 uses
  %.sroa.0.0.i38 = phi i64 [ %0, %bb.i ], [ %i.bc, %bb.j ] ; 2 uses
  %.0.i39 = phi ptr [ %i.as, %bb.i ], [ %i.aw, %bb.j ]
  %i.at = and i64 %.sroa.0.0.i38, 15
  %i.au = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !7
  %i.aw = getelementptr inbounds i8, ptr %.0.i39, i64 -1 ; 5 uses
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !7
  %i.ax = zext i64 %.sroa.5.0.i37 to i128
  %i.ay = shl nuw i128 %i.ax, 64
  %i.az = zext i64 %.sroa.0.0.i38 to i128
  %i.ba = or disjoint i128 %i.ay, %i.az
  %i.bb = lshr i128 %i.ba, 4
  %i.bc = trunc i128 %i.bb to i64                 ; 2 uses
  %i.bd = lshr i64 %.sroa.5.0.i37, 4              ; 2 uses
  %i.be = or i64 %i.bd, %i.bc
  %.not.i40 = icmp eq i64 %i.be, 0
  br i1 %.not.i40, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, label %bb.j, !llvm.loop !95

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit: ; preds = %bb.j
  store ptr %i.aw, ptr %6, align 8, !tbaa !10
  %i.bf = ptrtoint ptr %i.as to i64
  %i.bg = ptrtoint ptr %i.aw to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !16
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i = phi i64 [ %0, %bb.k ], [ %i.bs, %bb.l ]
  %.sroa.5.0.i41 = phi i64 [ %1, %bb.k ], [ %i.bu, %bb.l ]
  %.0.i42 = phi ptr [ %i.bj, %bb.k ], [ %i.bk, %bb.l ] ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.0.i42, i64 -2 ; 4 uses
  %i.bl = zext i64 %.sroa.5.0.i41 to i128
  %i.bm = shl nuw i128 %i.bl, 64
  %i.bn = zext i64 %.sroa.011.0.i to i128
  %i.bo = or disjoint i128 %i.bm, %i.bn
  %.frozen = freeze i128 %i.bo                    ; 2 uses
  %i.bp = udiv i128 %.frozen, 100                 ; 3 uses
  %i.bq = mul i128 %i.bp, 100
  %.decomposed = sub i128 %.frozen, %i.bq
  %i.br = trunc nuw nsw i128 %.decomposed to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.br, ptr noundef nonnull %i.bk)
  %i.bs = trunc i128 %i.bp to i64                 ; 2 uses
  %i.bt = lshr i128 %i.bp, 64                     ; 2 uses
  %i.bu = trunc nuw nsw i128 %i.bt to i64
  %.not.i.i = icmp ne i64 %i.bs, 0
  %i.bv = icmp ne i128 %i.bt, 0
  %i.bw = or i1 %.not.i.i, %i.bv
  br i1 %i.bw, label %bb.l, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, !llvm.loop !96

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit: ; preds = %bb.l
  %i.bx = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.by = icmp eq i8 %i.bx, 48
  %i.bz = getelementptr inbounds i8, ptr %.0.i42, i64 -1
  %spec.select.i43 = select i1 %i.by, ptr %i.bz, ptr %i.bk ; 3 uses
  %i.ca = ptrtoint ptr %i.bj to i64
  %i.cb = ptrtoint ptr %spec.select.i43 to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !16
  store ptr %spec.select.i43, ptr %6, align 8, !tbaa !10
  br label %bb.q

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.0.i44 = phi i64 [ %0, %bb.m ], [ %i.cn, %bb.n ]
  %.sroa.5.0.i45 = phi i64 [ %1, %bb.m ], [ %i.cp, %bb.n ]
  %.0.i46 = phi ptr [ %i.ce, %bb.m ], [ %i.cf, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.0.i46, i64 -2 ; 4 uses
  %i.cg = zext i64 %.sroa.5.0.i45 to i128
  %i.ch = shl nuw i128 %i.cg, 64
  %i.ci = zext i64 %.sroa.011.0.i44 to i128
  %i.cj = or disjoint i128 %i.ch, %i.ci
  %.frozen95 = freeze i128 %i.cj                  ; 2 uses
  %i.ck = udiv i128 %.frozen95, 100               ; 3 uses
  %i.cl = mul i128 %i.ck, 100
  %.decomposed96 = sub i128 %.frozen95, %i.cl
  %i.cm = trunc nuw nsw i128 %.decomposed96 to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.cm, ptr noundef nonnull %i.cf)
  %i.cn = trunc i128 %i.ck to i64                 ; 2 uses
  %i.co = lshr i128 %i.ck, 64                     ; 2 uses
  %i.cp = trunc nuw nsw i128 %i.co to i64
  %.not.i.i47 = icmp ne i64 %i.cn, 0
  %i.cq = icmp ne i128 %i.co, 0
  %i.cr = or i1 %.not.i.i47, %i.cq
  br i1 %i.cr, label %bb.n, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49, !llvm.loop !96

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49: ; preds = %bb.n
  %i.cs = load i8, ptr %i.cf, align 1, !tbaa !7
  %i.ct = icmp eq i8 %i.cs, 48
  %i.cu = getelementptr inbounds i8, ptr %.0.i46, i64 -1
  %spec.select.i48 = select i1 %i.ct, ptr %i.cu, ptr %i.cf ; 3 uses
  %i.cv = ptrtoint ptr %i.ce to i64
  %i.cw = ptrtoint ptr %spec.select.i48 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !16
  store ptr %spec.select.i48, ptr %6, align 8, !tbaa !10
  br label %bb.q

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cz = uitofp i64 %0 to double
  %i.da = uitofp i64 %1 to double
  %i.db = tail call noundef double @llvm.fmuladd.f64(double %i.da, double f0x43F0000000000000, double %i.cz)
  %i.dc = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.db, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef %4)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.p:                                             ; preds = %bb.a
  unreachable

bb.q:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit
  %.val30 = phi i64 [ %i.cx, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49 ], [ %i.cc, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.bh, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %i.aq, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.v, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 7 uses
  %.val = phi ptr [ %spec.select.i48, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49 ], [ %spec.select.i43, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.aw, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 3 uses
  %i.dd = and i64 %2, 65280
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.df = icmp eq i64 %.val30, 0
  br i1 %i.df, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !17
  %i.di = add i64 %i.dh, %.val30
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 1056
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20 ; 2 uses
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn
  %.not.i50 = icmp ult i64 %.val30, %i.do
  br i1 %.not.i50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dn, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21
  %i.du = load ptr, ptr %4, align 8, !tbaa !22
  call void %i.dt(ptr noundef %i.du, i64 %i.dr, ptr nonnull %i.dp), !inline_history !23
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !20
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !21
  %i.dw = load ptr, ptr %4, align 8, !tbaa !22
  call void %i.dv(ptr noundef %i.dw, i64 %.val30, ptr nonnull %.val), !inline_history !24
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %.val, i64 %.val30, i1 false)
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.val30
  store ptr %i.dy, ptr %i.dk, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.v:                                             ; preds = %bb.q
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %.val, i64 %.val30, i64 %2, i32 %3, ptr noundef %4)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.c, %bb.d, %bb.v, %bb.o
  %.0 = phi i1 [ %i.dc, %bb.o ], [ true, %bb.d ], [ true, %bb.v ], [ %i.e, %bb.c ], [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare noundef i64 @_ZN4absl12lts_2025051216strings_internal10WideToUtf8EwPcRNS1_10ShiftStateE(i32 noundef signext, ptr noundef, ptr noundef nonnull align 1 dereferenceable(2)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056), i64, ptr, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEfRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(float noundef, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigitsE", !12, i64 0, !14, i64 8, !5, i64 16}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = distinct !{!15, !9}
!16 = !{!11, !14, i64 8}
!17 = !{!18, !14, i64 16}
!18 = !{!"_ZTSN4absl12lts_2025051219str_format_internal14FormatSinkImplE", !19, i64 0, !14, i64 16, !12, i64 24, !5, i64 32}
!19 = !{!"_ZTSN4absl12lts_2025051219str_format_internal17FormatRawSinkImplE", !13, i64 0, !13, i64 8}
!20 = !{!18, !12, i64 24}
!21 = !{!19, !13, i64 8}
!22 = !{!19, !13, i64 0}
!23 = distinct !{null, null, null}
!24 = distinct !{null, null}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051216strings_internal10ShiftStateE", !27, i64 0, !5, i64 1}
!27 = !{!"bool", !5, i64 0}
!28 = !{!26, !5, i64 1}
!29 = !{i8 0, i8 2}
!30 = distinct !{null, null, null, null}
!31 = distinct !{null, null, null}
!32 = distinct !{null, null, null}
!33 = distinct !{!33, !9, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = !{!"branch_weights", i32 4000000, i32 4001}
!48 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null, null}
!49 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE, null, null, null}
!52 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE, null, null}
!53 = !{!54, !54, i64 0}
!54 = !{!"__int128", !5, i64 0}
!55 = !{!14, !14, i64 0}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSN4absl12lts_2025051219str_format_internal24FormatConversionSpecImplE", !58, i64 0, !59, i64 1, !60, i64 2, !4, i64 4, !4, i64 8}
!58 = !{!"_ZTSN4absl12lts_2025051220FormatConversionCharE", !5, i64 0}
!59 = !{!"_ZTSN4absl12lts_2025051219str_format_internal5FlagsE", !5, i64 0}
!60 = !{!"_ZTSN4absl12lts_202505129LengthModE", !5, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"long double", !5, i64 0}
!63 = distinct !{!63, !9}
!64 = !{!65, !12, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !66, i64 0, !14, i64 8, !5, i64 16}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!67 = !{!65, !14, i64 8}
!68 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null, null, null}
!69 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null, null}
!70 = !{!12, !12, i64 0}
!71 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null, null, null}
!72 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null, null}
!73 = !{!74, !74, i64 0}
!74 = !{!"wchar_t", !5, i64 0}
!75 = distinct !{!75, !9}
!76 = !{!77, !79, i64 0}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !78, i64 0, !14, i64 8, !5, i64 16}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !79, i64 0}
!79 = !{!"p1 wchar_t", !13, i64 0}
!80 = !{!77, !14, i64 8}
!81 = !{!79, !79, i64 0}
!82 = !{!83, !14, i64 0}
!83 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageImLm0ELb0EEE", !14, i64 0}
!84 = !{!85, !12, i64 264}
!85 = !{!"_ZTSN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEE7StorageE", !86, i64 0, !87, i64 256, !12, i64 264}
!86 = !{!"_ZTSN4absl12lts_2025051210FixedArrayIcLm18446744073709551615ESaIcEE22NonEmptyInlinedStorageE", !5, i64 0}
!87 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJmSaIcEEEE", !88, i64 0}
!88 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJmSaIcEEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !83, i64 0}
!89 = distinct !{!89, !9}
!90 = distinct !{null}
!91 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null, null}
!92 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null}
!93 = distinct !{!93, !9}
!94 = distinct !{!94, !9}
!95 = distinct !{!95, !9}
!96 = distinct !{!96, !9}
end_hunk_0
