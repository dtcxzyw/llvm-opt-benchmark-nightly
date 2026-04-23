inline.NumInlined: 8297
inline.NumDeleted: 1222
begin_hunk_0
@__PRETTY_FUNCTION__._ZN2tl8expectedIN3ada14url_aggregatorENS1_6errorsEEptEv = private unnamed_addr constant [107 x i8] c"T *tl::expected<ada::url_aggregator, ada::errors>::operator->() [T = ada::url_aggregator, E = ada::errors]\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.163 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.166 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN3ada19url_pattern_helpers12_GLOBAL__N_116char_class_tableE = internal unnamed_addr constant { <{ [127 x i8], [129 x i8] }> } { <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\0D\05\08\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\00\00\00\00\00\00\00\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\00\00\00\00\08\00\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\00\00\00\08", [129 x i8] zeroinitializer }> }, align 1
@_ZN3ada19url_pattern_helpers12_GLOBAL__N_120escape_pattern_tableE = internal unnamed_addr constant { <{ [126 x i8], [130 x i8] }> } { <{ [126 x i8], [130 x i8] }> <{ [126 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01", [130 x i8] zeroinitializer }> }, align 1
end_hunk_0
begin_hunk_1_@_ZN3ada19url_pattern_helpers41generate_regular_expression_and_name_listB5cxx11ERKSt6vectorINS_16url_pattern_partESaIS2_EENS_37url_pattern_compile_component_optionsE
define dso_local void @_ZN3ada19url_pattern_helpers41generate_regular_expression_and_name_listB5cxx11ERKSt6vectorINS_16url_pattern_partESaIS2_EENS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i40 %2) local_unnamed_addr #5 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i:
  %3 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 126 uses
  %4 = alloca %"class.std::vector", align 16      ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN3ada19url_pattern_helpers41generate_regular_expression_and_name_listB5cxx11ERKSt6vectorINS_16url_pattern_partESaIS2_EENS_37url_pattern_compile_component_optionsE:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 144                 ; 3 uses
  %i.k = shl nsw i64 %i.j, 4
  %.not.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.l = icmp slt i64 %i.i, 0
end_hunk_2
begin_hunk_3_@_ZN3ada19url_pattern_helpers41generate_regular_expression_and_name_listB5cxx11ERKSt6vectorINS_16url_pattern_partESaIS2_EENS_37url_pattern_compile_component_optionsE:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  store i16 %i.o, ptr %i.n, align 1
  store ptr %i.n, ptr %3, align 8
  store i64 %.0.i, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
end_hunk_3
