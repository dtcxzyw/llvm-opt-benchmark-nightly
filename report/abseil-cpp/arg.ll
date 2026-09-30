Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/arg?download=true
inline.NumInlined: 660
inline.NumDeleted: 254
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  store ptr %i.j, ptr %i.e, align 8, !tbaa !46
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 5, ptr nonnull @.str.2), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store ptr %i.s, ptr %i.e, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.09.i = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %.0.i = phi i64 [ %0, %bb.e ], [ %i.z, %bb.f ]  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.v = shl i64 %.0.i, 1
  %i.w = and i64 %i.v, 510
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  store i16 %i.y, ptr %i.u, align 1
  %i.z = lshr i64 %.0.i, 8                        ; 2 uses
  %.not.i12 = icmp eq i64 %i.z, 0
  br i1 %.not.i12, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit, label %bb.f, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit: ; preds = %bb.f
  %i.aa = and i16 %i.y, 255
  %i.ab = icmp eq i16 %i.aa, 48
  %i.ac = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.ab, ptr %i.ac, ptr %i.u ; 3 uses
  store ptr %spec.select.i, ptr %4, align 8, !tbaa !41
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = ptrtoint ptr %spec.select.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !42
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %spec.select.i, i64 %i.af, i64 %1, i32 %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit
  ret i8 1
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIbEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1
  store i32 %i.e, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = shl nuw i64 2, %i.a
  %i.g = and i64 %i.f, 655354
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %0 to i64
  %i.i = trunc i64 %i.h to i1
  %i.j = tail call i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplIbTnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEiE4typeELi0EEENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE655355EEES4_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i1 noundef zeroext %i.i, i64 %1, i32 %2, ptr noundef %3)
  %i.k = trunc i8 %i.j to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.k, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplIbTnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEiE4typeELi0EEENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE655355EEES4_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i1 noundef zeroext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 18
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  br i1 %0, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.d, 4
  store i64 %i.h, ptr %i.c, align 8, !tbaa !45
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.g, %i.j
  %.not.i.i = icmp ugt i64 %i.k, 4
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !75
  store ptr %i.l, ptr %i.f, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 4, ptr nonnull @.str), !inline_history !76
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  store i32 1702195828, ptr %i.i, align 1
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.b
  %i.v = add i64 %i.d, 5
  store i64 %i.v, ptr %i.c, align 8, !tbaa !45
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.g, %i.x
  %.not.i2.i = icmp ugt i64 %i.y, 5
  br i1 %.not.i2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.ad(ptr noundef %i.ae, i64 %i.ab, ptr nonnull %i.z), !inline_history !75
  store ptr %i.z, ptr %i.f, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ag = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.af(ptr noundef %i.ag, i64 5, ptr nonnull @.str.1), !inline_history !76
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = zext i1 %0 to i32
  %i.ak = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIiEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %i.aj, i64 %1, i32 %2, ptr noundef %3)
  %i.al = zext i1 %i.ak to i8
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.i
  %.sroa.07.0 = phi i8 [ %i.al, %bb.i ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ]
  ret i8 %.sroa.07.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i8
  %i.d = sext i8 %.sroa.0.0.extract.trunc.i.i to i32
  store i32 %i.d, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i64 2, %i.a
  %i.f = and i64 %i.e, 131066
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.g to i8
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIcEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIcEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIaEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i8
  %i.d = sext i8 %.sroa.0.0.extract.trunc.i.i to i32
  store i32 %i.d, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i64 2, %i.a
  %i.f = and i64 %i.e, 655354
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.g to i8
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIaEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEaNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIaEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  %i.d = and i32 %.sroa.0.0.extract.trunc.i.i, 255
  store i32 %i.d, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i64 2, %i.a
  %i.f = and i64 %i.e, 655354
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.g to i8
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIhEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef zeroext %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEhNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef zeroext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIhEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef zeroext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIsEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i16
  %i.d = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  store i32 %i.d, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i64 2, %i.a
  %i.f = and i64 %i.e, 655354
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.g to i16
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIsEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef signext %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEsNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIsEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchItEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  %i.d = and i32 %.sroa.0.0.extract.trunc.i.i, 65535
  store i32 %i.d, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i64 2, %i.a
  %i.f = and i64 %i.e, 655354
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.g to i16
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgItEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef zeroext %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEtNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef zeroext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgItEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef zeroext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw i64 2, %i.a
  %i.e = and i64 %i.d, 655354
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.f to i32
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIiEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEiNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIiEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  %spec.select.i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 2147483647)
  store i32 %spec.select.i.i, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw i64 2, %i.a
  %i.e = and i64 %i.d, 655354
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.f to i32
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIjEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEjNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIjEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %spec.select3.i.i = tail call i64 @llvm.smax.i64(i64 %i.c, i64 -2147483648)
  %.04.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select3.i.i, i64 2147483647)
  %.0.i.i = trunc nsw i64 %.04.i.i to i32
  store i32 %.0.i.i, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw i64 2, %i.a
  %i.e = and i64 %i.d, 655354
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %0 to i64
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIlEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %i.f, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplElNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIlEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %spec.select2.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2147483647)
  %spec.select.i.i = trunc nuw nsw i64 %spec.select2.i.i to i32
  store i32 %spec.select.i.i, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw i64 2, %i.a
  %i.e = and i64 %i.d, 655354
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %0 to i64
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgImEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %i.f, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgImEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIxEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %spec.select3.i.i = tail call i64 @llvm.smax.i64(i64 %i.c, i64 -2147483648)
  %.04.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select3.i.i, i64 2147483647)
  %.0.i.i = trunc nsw i64 %.04.i.i to i32
  store i32 %.0.i.i, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw i64 2, %i.a
  %i.e = and i64 %i.d, 655354
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %0 to i64
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIxEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %i.f, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplExNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIxEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIyEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %spec.select2.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2147483647)
  %spec.select.i.i = trunc nuw nsw i64 %spec.select2.i.i to i32
  store i32 %spec.select.i.i, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw i64 2, %i.a
  %i.e = and i64 %i.d, 655354
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %0 to i64
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIyEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %i.f, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEyNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIyEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_6int128EEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 655354
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i128, ptr %0, align 16, !tbaa !78
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i128 %.sroa.04.0.copyload, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.e, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS0_6int128ENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i128 %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i128 %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS0_7uint128EEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 655354
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %0, align 16, !tbaa !56
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !56
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.e, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS0_7uint128ENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %0, i64 %1, i64 %2, i32 %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %0, i64 %1, i64 %2, i32 %3, ptr noundef %4)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIfEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.f, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 654848
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %0 to i64
  %i.f = trunc i64 %i.e to i32
  %i.g = bitcast i32 %i.f to float
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.h = trunc i64 %1 to i8                       ; 2 uses
  %i.i = icmp eq i8 %i.h, 18
  br i1 %i.i, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = and i8 %i.h, -8
  %or.cond13.i.i.i = icmp eq i8 %i.j, 8
  br i1 %or.cond13.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEfNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %i.k = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEfRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(float noundef %i.g, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEfNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEfNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.d, %bb.e
  %i.l = phi i1 [ false, %bb.d ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEfNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %.0 = phi i1 [ false, %bb.b ], [ %i.l, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEfNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEfNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(float noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.a = trunc i64 %1 to i8                       ; 2 uses
  %i.b = icmp eq i8 %i.a, 18
  br i1 %i.b, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, -8
  %or.cond13.i.i = icmp eq i8 %i.c, 8
  br i1 %or.cond13.i.i, label %bb.c, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIfEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEfRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(float noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  %i.e = zext i1 %i.d to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIfEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIfEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i8 [ 0, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.f, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 654848
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %0 to i64
  %i.f = bitcast i64 %i.e to double
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.g = trunc i64 %1 to i8                       ; 2 uses
  %i.h = icmp eq i8 %i.g, 18
  br i1 %i.h, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = and i8 %i.g, -8
  %or.cond13.i.i.i = icmp eq i8 %i.i, 8
  br i1 %or.cond13.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %i.j = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.f, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.d, %bb.e
  %i.k = phi i1 [ false, %bb.d ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %.0 = phi i1 [ false, %bb.b ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.a = trunc i64 %1 to i8                       ; 2 uses
  %i.b = icmp eq i8 %i.a, 18
  br i1 %i.b, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, -8
  %or.cond13.i.i = icmp eq i8 %i.c, 8
  br i1 %or.cond13.i.i, label %bb.c, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIdEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  %i.e = zext i1 %i.d to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIdEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIdEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i8 [ 0, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIeEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.f, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 654848
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = load x86_fp80, ptr %0, align 16, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.f = trunc i64 %1 to i8                       ; 2 uses
  %i.g = icmp eq i8 %i.f, 18
  br i1 %i.g, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = and i8 %i.f, -8
  %or.cond13.i.i.i = icmp eq i8 %i.h, 8
  br i1 %or.cond13.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEeNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  store ptr %i.l, ptr %i.g, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !21
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.u, ptr %i.g, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.09.i.i = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i.i = phi i64 [ %i.v, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.09.i.i, i64 -2 ; 3 uses
  %i.y = shl i64 %.0.i.i, 1
  %i.z = and i64 %i.y, 510
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  store i16 %i.ab, ptr %i.x, align 1
  %i.ac = lshr i64 %.0.i.i, 8                     ; 2 uses
  %.not.i12.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i12.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, label %bb.g, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i: ; preds = %bb.g
  %i.ad = and i16 %i.ab, 255
  %i.ae = icmp eq i16 %i.ad, 48
  %i.af = getelementptr inbounds i8, ptr %.09.i.i, i64 -1
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.x ; 3 uses
  store ptr %spec.select.i.i, ptr %4, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = ptrtoint ptr %spec.select.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !42
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %spec.select.i.i, i64 %i.ai, i64 %1, i32 %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp slt i32 %2, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i64 @wcslen(ptr noundef nonnull %0) #11
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.am = zext nneg i32 %2 to i64                 ; 4 uses
  %.idx40 = shl nuw nsw i64 %i.am, 2              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.idx40
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = lshr i64 %i.am, 2                       ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.aq = and i64 %.idx40, 8589934576
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.aq
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.bc, %bb.p ] ; 9 uses
  %i.ar = load i32, ptr %.02946.i.i.i, align 4, !tbaa !67
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !67
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !67
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  %i.bd = add nsw i64 %.047.i.i.i, -1
  %i.be = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.be, label %bb.l, label %._crit_edge.loopexit.i.i.i, !llvm.loop !87

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.p
  %i.bf = and i64 %i.am, 3
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.k
  %.pre-phi56.i.i.i = phi i64 [ %i.bf, %._crit_edge.loopexit.i.i.i ], [ %i.am, %bb.k ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.k ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i, label %bb.t [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = load i32, ptr %.029.lcssa.i.i.i, align 4, !tbaa !67
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.r
  %.1.i.i.i = phi ptr [ %i.bi, %bb.r ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bj = load i32, ptr %.1.i.i.i, align 4, !tbaa !67
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.s
  %.2.i.i.i = phi ptr [ %i.bl, %bb.s ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bm = load i32, ptr %.2.i.i.i, align 4, !tbaa !67
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59: ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61: ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit:                ; preds = %bb.l, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61, %bb.q, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.t
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.an, %bb.t ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.q ], [ %i.bq, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61 ], [ %i.bp, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59 ], [ %i.bo, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.l ]
  %i.br = ptrtoint ptr %.028.i.i.i to i64
  %i.bs = sub i64 %i.br, %i.ao
  %i.bt = ashr exact i64 %i.bs, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.j, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit
  %.0 = phi i64 [ %i.bt, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit ], [ %i.al, %bb.j ], [ 0, %bb.h ]
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %0, i64 noundef %.0, i64 %1, i32 %2, ptr noundef %3)
  %i.bv = zext i1 %i.bu to i8
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, %bb.e, %bb.d, %bb.u
  %.sroa.018.0 = phi i8 [ %i.bv, %bb.u ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i ]
  ret i8 %.sroa.018.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 524292
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !72
  %i.h = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %i.e, i64 noundef %i.g, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.h, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72
  %i.d = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %i.a, i64 noundef %i.c, i64 %1, i32 %2, ptr noundef %3)
  %i.e = zext i1 %i.d to i8
  ret i8 %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIwSt11char_traitsIwEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 524292
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %0, align 8, !tbaa !56
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !88
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef readonly %.sroa.25.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.e, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplESt17basic_string_viewIwSt11char_traitsIwEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, i32 %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %1, i64 noundef %0, i64 %2, i32 %3, ptr noundef %4)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  br i1 %0, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.b, 4
  store i64 %i.f, ptr %i.a, align 8, !tbaa !45
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %.not.i = icmp ugt i64 %i.i, 4
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = load ptr, ptr %1, align 8, !tbaa !48
  tail call void %i.n(ptr noundef %i.o, i64 %i.l, ptr nonnull %i.j), !inline_history !2
  store ptr %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.q = load ptr, ptr %1, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 4, ptr nonnull @.str), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  store i32 1702195828, ptr %i.g, align 1
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %i.d, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.t = add i64 %i.b, 5
  store i64 %i.t, ptr %i.a, align 8, !tbaa !45
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.e, %i.v
  %.not.i2 = icmp ugt i64 %i.w, 5
  br i1 %.not.i2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = load ptr, ptr %1, align 8, !tbaa !48
  tail call void %i.ab(ptr noundef %i.ac, i64 %i.z, ptr nonnull %i.x), !inline_history !2
  store ptr %i.x, ptr %i.d, align 8, !tbaa !46
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ae = load ptr, ptr %1, align 8, !tbaa !48
  tail call void %i.ad(ptr noundef %i.ae, i64 5, ptr nonnull @.str.1), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret i1 true
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 %2, i32 %3, ptr noundef %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20260526::FixedArray", align 8 ; 6 uses
  %6 = alloca %"struct.absl::lts_20260526::strings_internal::ShiftState", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = shl i64 %1, 2                            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 3 uses
  store i64 %i.a, ptr %i.b, align 8, !tbaa !92
  %i.c = icmp ult i64 %i.a, 257
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i, !prof !54

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i, %bb.a
  %.0.i.i.i = phi ptr [ %5, %bb.a ], [ %i.e, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 5 uses
  store ptr %.0.i.i.i, ptr %i.f, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.g, align 1, !tbaa !52
  %.not3446.not = icmp eq i64 %1, 0
  br i1 %.not3446.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.02748 = phi i64 [ %i.n, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.03247 = phi i64 [ %i.o, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03247
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.02748
  %i.l = invoke noundef i64 @_ZN4absl12lts_2026052616strings_internal10WideToUtf8EwPcRNS1_10ShiftStateE(i32 noundef signext %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull align 1 dereferenceable(2) %6)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.n = add i64 %i.l, %.02748                    ; 8 uses
  %i.o = add nuw i64 %.03247, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !97  ; 3 uses
  %i.p = and i64 %2, 65280
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.k

._crit_edge.thread:                               ; preds = %bb.c
  %i.r = and i64 %2, 65280
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.k

bb.g:                                             ; preds = %._crit_edge
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45
  %i.w = add i64 %i.v, %i.n
  store i64 %i.w, ptr %i.u, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1056
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = load ptr, ptr %4, align 8, !tbaa !48
  invoke void %i.ah(ptr noundef %i.ai, i64 %i.af, ptr nonnull %i.ad)
          to label %.noexc38 unwind label %bb.l, !inline_history !90

.noexc38:                                         ; preds = %bb.i
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !46
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ak = load ptr, ptr %4, align 8, !tbaa !48
  invoke void %i.aj(ptr noundef %i.ak, i64 %i.n, ptr %.pre)
          to label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit unwind label %bb.l, !inline_history !90

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %.pre, i64 %i.n, i1 false)
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.n
  store ptr %i.am, ptr %i.y, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.027.lcssa56 = phi i64 [ 0, %._crit_edge.thread ], [ %i.n, %._crit_edge ]
  %i.an = phi ptr [ %.0.i.i.i, %._crit_edge.thread ], [ %.pre, %._crit_edge ]
  %.sroa.310.0.extract.shift.i = lshr i64 %2, 32
  %.sroa.310.0.extract.trunc.i = trunc nuw i64 %.sroa.310.0.extract.shift.i to i32
  %i.ao = and i64 %2, 256
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = invoke noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %4, i64 %.027.lcssa56, ptr %i.an, i32 noundef %.sroa.310.0.extract.trunc.i, i32 noundef %3, i1 noundef zeroext %i.ap)
          to label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc38, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.d, %._crit_edge.thread, %bb.j, %bb.g, %.noexc38, %bb.k
  %.3 = phi i1 [ %i.aq, %bb.k ], [ true, %.noexc38 ], [ true, %bb.g ], [ true, %bb.j ], [ true, %._crit_edge.thread ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.as = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.at = icmp ult i64 %i.as, 257
  br i1 %i.at, label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !97
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.as) #14
  br label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit

_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.3

bb.n:                                             ; preds = %bb.l, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.av = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.aw = icmp ult i64 %i.av, 257
  br i1 %i.aw, label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !97
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.av) #14
  br label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41

_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEDnNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nofree readnone captures(none) %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 17
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = add i64 %i.d, 5
  store i64 %i.e, ptr %i.c, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !98
  store ptr %i.l, ptr %i.g, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !99
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.u, ptr %i.g, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.a
  %i.v = and i64 %1, 65280
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.310.0.extract.shift.i.i = lshr i64 %1, 32
  %.sroa.310.0.extract.trunc.i.i = trunc nuw i64 %.sroa.310.0.extract.shift.i.i to i32
  %i.x = and i64 %1, 256
  %i.y = icmp ne i64 %i.x, 0
  %i.z = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %3, i64 0, ptr null, i32 noundef %.sroa.310.0.extract.trunc.i.i, i32 noundef %2, i1 noundef zeroext %i.y)
  %i.aa = zext i1 %i.z to i8
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.018.0.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ], [ %i.aa, %bb.f ]
  ret i8 %.sroa.018.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIwEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i128 %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 17 uses
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
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i128 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

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
  store i8 %i.m, ptr %i.n, align 1, !tbaa !35
  %i.o = zext i64 %.sroa.5.0.i to i128
  %i.p = shl nuw i128 %i.o, 64
  %i.q = zext i64 %.sroa.0.0.i to i128
  %i.r = or disjoint i128 %i.p, %i.q
  %i.s = lshr i128 %i.r, 3
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %.sroa.5.0.i, 3                 ; 2 uses
  %i.v = or i64 %i.u, %i.t
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit, label %bb.f, !llvm.loop !22

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit: ; preds = %bb.f
  store ptr %i.n, ptr %5, align 8, !tbaa !41
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !42
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
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.ag
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
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, label %bb.h, !llvm.loop !23

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit: ; preds = %bb.h
  %i.ar = and i16 %i.ai, 255
  %i.as = icmp eq i16 %i.ar, 48
  %i.at = getelementptr inbounds i8, ptr %.0.i30, i64 -1
  %spec.select.i = select i1 %i.as, ptr %i.at, ptr %i.ae ; 3 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  %i.au = ptrtoint ptr %i.ad to i64
  %i.av = ptrtoint ptr %spec.select.i to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !42
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
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = getelementptr inbounds i8, ptr %.0.i34, i64 -1 ; 5 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !35
  %i.bg = zext i64 %.sroa.5.0.i32 to i128
  %i.bh = shl nuw i128 %i.bg, 64
  %i.bi = zext i64 %.sroa.0.0.i33 to i128
  %i.bj = or disjoint i128 %i.bh, %i.bi
  %i.bk = lshr i128 %i.bj, 4
  %i.bl = trunc i128 %i.bk to i64                 ; 2 uses
  %i.bm = lshr i64 %.sroa.5.0.i32, 4              ; 2 uses
  %i.bn = or i64 %i.bm, %i.bl
  %.not.i35 = icmp eq i64 %i.bn, 0
  br i1 %.not.i35, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, label %bb.j, !llvm.loop !24

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit: ; preds = %bb.j
  store ptr %i.bf, ptr %5, align 8, !tbaa !41
  %i.bo = ptrtoint ptr %i.bb to i64
  %i.bp = ptrtoint ptr %i.bf to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !42
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
  call void @_ZN4absl12lts_2026052616numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.cd, ptr noundef nonnull %i.bw)
  %i.ce = trunc i128 %i.cb to i64                 ; 2 uses
  %i.cf = lshr i128 %i.cb, 64                     ; 2 uses
  %i.cg = trunc nuw nsw i128 %i.cf to i64
  %.not.i.i = icmp ne i64 %i.ce, 0
  %i.ch = icmp ne i128 %i.cf, 0
  %i.ci = or i1 %.not.i.i, %i.ch
  br i1 %i.ci, label %bb.l, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, !llvm.loop !25

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit: ; preds = %bb.l
  %i.cj = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.ck = icmp eq i8 %i.cj, 48
  %i.cl = getelementptr inbounds i8, ptr %.0.i37, i64 -1
  %spec.select.i38 = select i1 %i.ck, ptr %i.cl, ptr %i.bw ; 3 uses
  %i.cm = ptrtoint ptr %i.bv to i64
  %i.cn = ptrtoint ptr %spec.select.i38 to i64
end_hunk_1
