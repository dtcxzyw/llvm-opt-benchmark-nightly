inline.NumInlined: 492
inline.NumDeleted: 220
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt22encode_canon_makernoteERSt6vectorIcSaIcEERS2_I12TIFFDirEntrySaIS6_EERKNS0_9ImageSpecEm:bb.a
  %i.z = trunc i32 %i.y to i16
  %i.aa = load i32, ptr %.02350.i.ptr, align 8, !tbaa !14
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0.i, i64 %i.ab
  store i16 %i.z, ptr %i.ac, align 2, !tbaa !16
  %.02350.i.add = add nuw nsw i64 %.02350.i.idx, 16 ; 2 uses
  %.not55.i = icmp eq i64 %.02350.i.add, 64
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_13pvtL18encode_indexed_tagIsEEvi12TIFFDataTypeNS0_4spanIKNS1_10LabelIndexELm18446744073709551615EEERSt6vectorIcSaIcEERS8_I12TIFFDirEntrySaISC_EERKNS0_9ImageSpecEm:bb.a
  %8 = alloca %"class.OpenImageIO::v3_1::span.14", align 8 ; 3 uses
  %.idx = shl i64 %2, 4                           ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.idx      ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 -16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_13pvtL18encode_indexed_tagIsEEvi12TIFFDataTypeNS0_4spanIKNS1_10LabelIndexELm18446744073709551615EEERSt6vectorIcSaIcEERS8_I12TIFFDirEntrySaISC_EERKNS0_9ImageSpecEm:bb.a
  %i.aa = trunc i32 %i.y to i16
  %i.ab = load i32, ptr %.02350, align 8, !tbaa !14
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.034.0, i64 %i.ac
  store i16 %i.aa, ptr %i.ad, align 2, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.02350, i64 16 ; 2 uses
  %.not55 = icmp eq ptr %i.ae, %i.a
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_17Strutil4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEES9_RKT_NS0_17basic_string_viewIcS7_EE:bb.a

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  %i.f = load ptr, ptr %1, align 8, !tbaa !51     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 3 uses
  %.not1516 = icmp eq ptr %i.f, %i.h
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_17Strutil4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEES9_RKT_NS0_17basic_string_viewIcS7_EE:bb.a

_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.peel: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38
end_hunk_4
begin_hunk_5_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19
end_hunk_5
