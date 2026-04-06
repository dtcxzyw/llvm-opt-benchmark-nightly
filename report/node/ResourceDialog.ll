begin_hunk_0
inline.NumInlined: 3144
inline.NumDeleted: 1122
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.fmt::v11::detail::format_handler" = type { %"class.fmt::v11::parse_context", %"class.fmt::v11::context" }
%"class.fmt::v11::parse_context" = type <{ %"class.fmt::v11::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v11::basic_string_view" = type { ptr, i64 }
%"class.fmt::v11::context" = type { %"class.fmt::v11::basic_appender", %"class.fmt::v11::basic_format_args", %"class.fmt::v11::detail::locale_ref" }
%"class.fmt::v11::basic_appender" = type { ptr }
%"class.fmt::v11::basic_format_args" = type { i64, %union.anon.620 }
%union.anon.620 = type { ptr }
%"class.fmt::v11::detail::locale_ref" = type { ptr }
%"class.fmt::v11::basic_memory_buffer.623" = type <{ %"class.fmt::v11::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v11::detail::buffer" = type { ptr, i64, i64, ptr }
%"struct.fmt::v11::detail::format_arg_store.1229" = type { [1 x %"class.fmt::v11::detail::value"] }
end_hunk_1
begin_hunk_2
%"struct.std::_Vector_base.148" = type { %"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl" }
%"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl" = type { %"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl_data" }
%"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon.673 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v11::format_specs" = type { %"class.fmt::v11::basic_specs", i32, i32 }
%"class.fmt::v11::basic_specs" = type { i32, [4 x i8] }
end_hunk_2
begin_hunk_3

$_ZN3fmt3v116detail11assert_failEPKciS3_ = comdat any

$_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_ = comdat any

$_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_ = comdat any

end_hunk_3
begin_hunk_4_@_ZN4LIEF7u16tou8ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEb
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF2PE14ResourceDialog16ordinal_or_str_t9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v11::basic_memory_buffer.623", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.1229", align 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i8, ptr %i.b, align 4, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !11
  %i.e = load i16, ptr %1, align 8, !noalias !11
  %i.f = zext i16 %i.e to i32
  store i32 %i.f, ptr %4, align 16, !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !14
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %7, align 8, !noalias !14
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %6, align 8, !noalias !14
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %8, ptr %3, align 8, !noalias !14
  store i64 500, ptr %5, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !14
  store ptr @.str.2, ptr %2, align 8, !noalias !14
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 6, ptr %i.g, align 8, !noalias !14
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.h, align 8, !noalias !14
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.i, align 8, !noalias !14
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 2, ptr %9, align 8, !noalias !14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %i.j, align 8, !noalias !14
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %10, align 8, !noalias !14
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.2, i64 6, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !14
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.k = load i64, ptr %7, align 8, !noalias !20  ; 6 uses
  %i.l = icmp ult i64 %i.k, 4611686018427387903
  call void @llvm.assume(i1 %i.l)
  %i.m = load ptr, ptr %3, align 8, !noalias !20  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !20
  %i.o = icmp eq ptr %i.m, null
end_hunk_4
begin_hunk_5_@_ZNK4LIEF2PE14ResourceDialog16ordinal_or_str_t9to_stringB5cxx11Ev:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !20
  %i.z = load ptr, ptr %3, align 8, !noalias !14  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %8
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
end_hunk_5
begin_hunk_6_@_ZNK4LIEF2PE14ResourceDialog16ordinal_or_str_t9to_stringB5cxx11Ev:bb.a
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !11
  br label %bb.j

bb.i:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@strlen

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat {
end_hunk_7
begin_hunk_8_@_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i32 noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp slt i32 %1, 0                       ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #19 comdat {
bb.a:
  %.not24.i.i = icmp eq ptr %0, %1
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.lr.ph27.i.i
end_hunk_9
begin_hunk_10_@_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %0, ptr noundef byval(%"class.fmt::v11::loc_value") align 16 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3) local_unnamed_addr #20 comdat {
bb.a:
  %4 = alloca %"class.std::locale", align 8       ; 8 uses
  %5 = alloca %"class.fmt::v11::format_facet", align 8 ; 13 uses
end_hunk_10
begin_hunk_11_@_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #19 comdat {
bb.a:
  %3 = alloca %class.anon.632, align 1            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 12 uses
end_hunk_11
begin_hunk_12_@_ZN3fmt3v1112format_facetISt6localeEC2ERS2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_facetISt6localeED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_facetISt6localeEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_12
begin_hunk_13_@_ZSt16__throw_bad_castv
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_facetISt6localeED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_facetISt6localeEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_13
begin_hunk_14_@_ZN3fmt3v1112format_facetISt6localeED0Ev:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3fmt3v1112format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %1, ptr noundef byval(%"class.fmt::v11::loc_value") align 16 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
end_hunk_14
begin_hunk_15_@_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = lshr i32 %i.a, 15
end_hunk_15
begin_hunk_16_@_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %0) local_unnamed_addr #20 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 65536
  br i1 %i.a, label %bb.b, label %bb.i
end_hunk_16
begin_hunk_17_@_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  %i.b = load i32, ptr %0, align 4                ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN3fmt3v116detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v11::detail::thousands_sep_result") align 8 %0, ptr %1) local_unnamed_addr #20 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::locale", align 8       ; 6 uses
end_hunk_18
begin_hunk_19_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E0_clES4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEcjNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E2_clES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %i.b = load i32, ptr %0, align 8                ; 2 uses
end_hunk_21
begin_hunk_22_@_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E0_clES4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E2_clES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_23
begin_hunk_24_@llvm.fmuladd.f64
declare double @llvm.fmuladd.f64(double, double, double) #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef byval(%"struct.fmt::v11::detail::basic_fp") align 16 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #20 comdat {
bb.a:
  %5 = alloca %"class.fmt::v11::format_error", align 8 ; 3 uses
  %6 = alloca %"class.fmt::v11::detail::bigint", align 8 ; 60 uses
end_hunk_24
begin_hunk_25_@_ZN3fmt3v116detail6bigint6squareEv:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_errorE, i64 16), ptr %0, align 8
end_hunk_25
begin_hunk_26_@_ZNSt13runtime_errorC2EPKc
declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
end_hunk_26
begin_hunk_27_@_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.a, 0
end_hunk_27
begin_hunk_28_@_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #19 comdat {
bb.a:
  %.not24.i.i = icmp eq ptr %0, %1
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i
end_hunk_28
begin_hunk_29_@_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E0_clES4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEcPKcNS1_14digit_groupingIcEEEET_S9_T1_iiT0_RKT2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E2_clES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_30
begin_hunk_31_@_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #19 comdat {
bb.a:
  %4 = alloca %class.anon.632, align 1            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 12 uses
end_hunk_31
begin_hunk_32_@_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_intIcS5_mEET0_S7_NS1_13write_int_argIT1_EERKNS0_12format_specsEEUlS5_E_EES9_S9_SD_mmOT2_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, ptr noundef byval(%"struct.fmt::v11::detail::write_int_arg.638") align 16 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #19 comdat {
bb.a:
  %3 = alloca %class.anon.632, align 1            ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 12 uses
end_hunk_32
begin_hunk_33_@_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i32                      ; 2 uses
end_hunk_33
begin_hunk_34_@llvm.umin.i32
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
end_hunk_34
