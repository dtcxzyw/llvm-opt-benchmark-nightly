inline.NumInlined: 1272
inline.NumDeleted: 453
begin_hunk_0_@_ZN8v8_crdtp4json12_GLOBAL__N_111JSONEncoderISt6vectorIhSaIhEEE12HandleDoubleEd:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ac = fcmp oge double %1, 0xC3E0000000000000
  %i.ad = tail call double @llvm.floor.f64(double %1)
  %i.ae = fcmp oeq double %i.ad, %1
  %or.cond = and i1 %i.ac, %i.ae
  br i1 %or.cond, label %bb.g, label %bb.t
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

declare void @_ZN8v8_crdtp4json8platform6DToStrB5cxx11Ed(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS4_IPhS1_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
end_hunk_1
begin_hunk_2_@_ZN8v8_crdtp4json12_GLOBAL__N_111JSONEncoderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12HandleDoubleEd:bb.a

bb.n:                                             ; preds = %bb.m
  %i.bj = fcmp oge double %1, 0xC3E0000000000000
  %i.bk = tail call double @llvm.floor.f64(double %1)
  %i.bl = fcmp oeq double %i.bk, %1
  %or.cond = and i1 %i.bj, %i.bl
  br i1 %or.cond, label %bb.o, label %bb.ab
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserIhE10ParseValueEPKhS5_PS5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull writeonly captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 {
end_hunk_3
begin_hunk_4_@_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserIhE10ParseValueEPKhS5_PS5_i:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 13) i32 @_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserIhE10ParseTokenEPKhS5_PS5_S6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserIhE25SkipWhitespaceAndCommentsEPKhS5_PS5_.exit
end_hunk_4
begin_hunk_5_@_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserIhE12DecodeStringEPKhS5_PSt6vectorItSaItEE:bb.a
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN8v8_crdtp4json8platform6StrToDEPKcPd(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7
end_hunk_5
begin_hunk_6_@_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserItE10ParseValueEPKtS5_PS5_i:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 13) i32 @_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserItE10ParseTokenEPKtS5_PS5_S6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserItE25SkipWhitespaceAndCommentsEPKtS5_PS5_.exit
end_hunk_6
begin_hunk_7_@_ZN8v8_crdtp4json12_GLOBAL__N_110JsonParserItE12DecodeStringEPKtS5_PSt6vectorItSaItEE:bb.a
  ret i1 %.2
}

declare void @_ZN8v8_crdtp4cbor9ParseCBORESt4spanIKhLm18446744073709551615EEPNS_13ParserHandlerE(ptr, i64, ptr noundef) local_unnamed_addr #10

declare void @_ZN8v8_crdtp4cbor14NewCBOREncoderEPSt6vectorIhSaIhEEPNS_6StatusE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14
end_hunk_7
begin_hunk_8_@llvm.abs.i32
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_8
begin_hunk_9_@llvm.umin.i64
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { builtin nounwind allocsize(0) }
end_hunk_9
