begin_hunk_0
inline.NumInlined: 3143
inline.NumDeleted: 1122
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.fmt::v11::basic_memory_buffer.623" = type <{ %"class.fmt::v11::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v11::detail::buffer" = type { ptr, i64, i64, ptr }
%"struct.fmt::v11::detail::format_arg_store.1229" = type { [1 x %"class.fmt::v11::detail::value"] }
end_hunk_1
begin_hunk_2
%"struct.std::_Vector_base.148" = type { %"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl" }
%"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl" = type { %"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl_data" }
%"struct.std::_Vector_base<LIEF::PE::ResourceDialog::CONTROL_STYLES, std::allocator<LIEF::PE::ResourceDialog::CONTROL_STYLES>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.fmt::v11::parse_context" = type <{ %"class.fmt::v11::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v11::basic_string_view" = type { ptr, i64 }
%"class.fmt::v11::context" = type { %"class.fmt::v11::basic_appender", %"class.fmt::v11::basic_format_args", %"class.fmt::v11::detail::locale_ref" }
%"class.fmt::v11::basic_appender" = type { ptr }
%"class.fmt::v11::basic_format_args" = type { i64, %union.anon.620 }
%union.anon.620 = type { ptr }
%"class.fmt::v11::detail::locale_ref" = type { ptr }
%"struct.fmt::v11::detail::default_arg_formatter" = type { %"class.fmt::v11::basic_appender" }
%"struct.fmt::v11::detail::format_handler" = type { %"class.fmt::v11::parse_context", %"class.fmt::v11::context" }
%class.anon.673 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v11::format_specs" = type { %"class.fmt::v11::basic_specs", i32, i32 }
%"class.fmt::v11::basic_specs" = type { i32, [4 x i8] }
end_hunk_2
begin_hunk_3

$_ZN3fmt3v116detail11assert_failEPKciS3_ = comdat any

$_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE = comdat any

$_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIbTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIfTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIdTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_ = comdat any

$_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_ = comdat any

end_hunk_3
begin_hunk_4_@_ZN4LIEF7u16tou8ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEb
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF2PE14ResourceDialog16ordinal_or_str_t9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.fmt::v11::basic_memory_buffer.623", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1229", align 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i8, ptr %i.b, align 4, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !11
  %i.e = load i16, ptr %1, align 8, !noalias !11
  %i.f = zext i16 %i.e to i32
  store i32 %i.f, ptr %3, align 16, !noalias !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !14
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !14
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.h, align 8, !noalias !14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !noalias !14
  store i64 500, ptr %i.g, align 8, !noalias !14
  call void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.2, i64 6, i64 2, ptr nonnull %3, ptr null), !noalias !14
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.k = load i64, ptr %i.i, align 8, !noalias !20 ; 6 uses
  %i.l = icmp ult i64 %i.k, 4611686018427387903
  call void @llvm.assume(i1 %i.l)
  %i.m = load ptr, ptr %2, align 8, !noalias !20  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !20
  %i.o = icmp eq ptr %i.m, null
end_hunk_4
begin_hunk_5_@_ZNK4LIEF2PE14ResourceDialog16ordinal_or_str_t9to_stringB5cxx11Ev:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !20
  %i.z = load ptr, ptr %2, align 8, !noalias !14  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.j
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
end_hunk_5
begin_hunk_6_@_ZNK4LIEF2PE14ResourceDialog16ordinal_or_str_t9to_stringB5cxx11Ev:bb.a
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !11
  br label %bb.j

bb.i:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@strlen

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #19 comdat {
  %7 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %8 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::default_arg_formatter", align 8 ; 12 uses
  %10 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %11 = icmp eq i64 %2, 2
  br i1 %11, label %12, label %57

12:                                               ; preds = %6
  %13 = load i16, ptr %1, align 1
  %14 = icmp ne i16 %13, 32123
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = icmp sgt i64 %3, -1
  %19 = trunc i64 %3 to i32                       ; 2 uses
  br i1 %18, label %23, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread

22:                                               ; preds = %20
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16
  br label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit

23:                                               ; preds = %17
  %24 = and i32 %19, 15                           ; 2 uses
  %.not.i = icmp eq i32 %24, 0
  br i1 %.not.i, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread: ; preds = %23, %20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  br label %56

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit: ; preds = %23, %22
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %22 ], [ %24, %23 ]
  %.sroa.0.0.copyload.sink64 = load i128, ptr %4, align 16 ; 8 uses
  %25 = trunc i128 %.sroa.0.0.copyload.sink64 to i64 ; 4 uses
  %26 = lshr i128 %.sroa.0.0.copyload.sink64, 64
  %27 = trunc nuw i128 %26 to i64                 ; 2 uses
  %28 = trunc i128 %.sroa.0.0.copyload.sink64 to i32 ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = inttoptr i64 %25 to ptr ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %29 = ptrtoint ptr %0 to i64
  store i64 %29, ptr %9, align 8
  switch i32 %.sroa.21.0, label %56 [
    i32 15, label %54
    i32 1, label %30
    i32 2, label %32
    i32 3, label %33
    i32 4, label %35
    i32 5, label %36
    i32 6, label %38
    i32 7, label %40
    i32 8, label %42
    i32 9, label %44
    i32 10, label %45
    i32 11, label %46
    i32 12, label %49
    i32 13, label %50
    i32 14, label %53
  ]

30:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %31 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i32 noundef %28) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

32:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %28)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

33:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %34 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i64 noundef %25) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

35:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %25)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

36:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %37 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEnTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i128 noundef %.sroa.0.0.copyload.sink64) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

38:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %39 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i128 noundef %.sroa.0.0.copyload.sink64) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

40:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %41 = trunc i128 %.sroa.0.0.copyload.sink64 to i1
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIbTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext %41)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

42:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %43 = trunc i128 %.sroa.0.0.copyload.sink64 to i8
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext %43)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

44:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.24 = bitcast i32 %28 to float
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIfTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, float noundef %.sroa.0.0..sroa.0.0..sroa.0.0.24)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

45:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.20 = bitcast i64 %25 to double
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIdTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef %.sroa.0.0..sroa.0.0..sroa.0.0.20)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

46:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %47 = trunc i128 %.sroa.0.0.copyload.sink64 to i80
  %.sroa.0.0..sroa.0.0..sroa.0.0.17 = bitcast i80 %47 to x86_fp80
  %48 = tail call ptr @_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEeEET0_S5_T1_NS0_12format_specsENS1_10locale_refE(ptr nonnull %0, x86_fp80 noundef %.sroa.0.0..sroa.0.0..sroa.0.0.17, i64 137438986240, i64 -4294967296, ptr null) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

49:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

50:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %51 = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, i64 %27
  %52 = tail call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr noundef %51, ptr nonnull %0) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

53:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

54:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i = inttoptr i64 %27 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %0, ptr %8, align 8
  %55 = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  call void %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

56:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread, %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.91) #29
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %30, %32, %33, %35, %36, %38, %40, %42, %44, %45, %46, %49, %50, %53, %54
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %62

57:                                               ; preds = %12, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %1, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i14, align 8
  %58 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %3, ptr %60, align 8
  %.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i15, align 8
  %61 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %5, ptr %61, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %62

62:                                               ; preds = %57, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat {
end_hunk_7
begin_hunk_8_@_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %3 = or i32 %1, 1
  %4 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %3, i1 true)
  %5 = xor i32 %4, 31
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = zext i32 %1 to i64
  %10 = add i64 %8, %9                            ; 2 uses
  %11 = lshr i64 %10, 32
  %12 = trunc nuw i64 %11 to i32                  ; 3 uses
  %13 = ashr i64 %10, 32                          ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 3 uses
  %15 = load i64, ptr %14, align 8                ; 2 uses
  %16 = add i64 %13, %15                          ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %18 = load i64, ptr %17, align 8
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %16) #24
  %.pre.i.i = load i64, ptr %14, align 8          ; 2 uses
  %.pre14.i.i = load i64, ptr %17, align 8
  %.pre15.i.i = add i64 %.pre.i.i, %13            ; 2 uses
  %22 = icmp ult i64 %.pre14.i.i, %.pre15.i.i
  br i1 %22, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, %2
  %23 = phi i64 [ %.pre.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %15, %2 ]
  %.pre-phi19.i.i = phi i64 [ %.pre15.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %16, %2 ]
  store i64 %.pre-phi19.i.i, ptr %14, align 8
  %24 = load ptr, ptr %.sroa.01.0.copyload, align 8 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 %23 ; 3 uses
  %.not.i = icmp eq ptr %24, null
  br i1 %.not.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %26

26:                                               ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %27 = icmp ugt i32 %1, 99
  br i1 %27, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %26, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %28, %.lr.ph.i.i ], [ %12, %26 ]
  %.01819.i.i = phi i32 [ %36, %.lr.ph.i.i ], [ %1, %26 ] ; 3 uses
  %28 = add i32 %.020.i.i, -2                     ; 3 uses
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds nuw i8, ptr %25, i64 %29
  %31 = urem i32 %.01819.i.i, 100
  %32 = shl nuw nsw i32 %31, 1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %33
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %30, align 1
  %36 = udiv i32 %.01819.i.i, 100                 ; 2 uses
  %37 = icmp ugt i32 %.01819.i.i, 9999
  br i1 %37, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %26
  %.018.lcssa.i.i = phi i32 [ %1, %26 ], [ %36, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %12, %26 ], [ %28, %.lr.ph.i.i ] ; 2 uses
  %38 = icmp samesign ugt i32 %.018.lcssa.i.i, 9
  br i1 %38, label %39, label %47

39:                                               ; preds = %._crit_edge.i.i
  %40 = add i32 %.0.lcssa.i.i, -2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %25, i64 %41
  %43 = shl nuw nsw i32 %.018.lcssa.i.i, 1
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %44
  %46 = load i16, ptr %45, align 2
  store i16 %46, ptr %42, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

47:                                               ; preds = %._crit_edge.i.i
  %48 = trunc nuw nsw i32 %.018.lcssa.i.i to i8
  %49 = or disjoint i8 %48, 48
  %50 = add i32 %.0.lcssa.i.i, -1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i8, ptr %25, i64 %51
  store i8 %49, ptr %52, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %53 = tail call ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.01.0.copyload, i32 noundef %1, i32 noundef %12) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit: ; preds = %39, %47, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %3 = or i64 %1, 1
  %4 = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %5 = xor i64 %4, 63
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %5
  %7 = load i8, ptr %6, align 1                   ; 2 uses
  %8 = zext i8 %7 to i32
  %9 = zext i8 %7 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %9
  %11 = load i64, ptr %10, align 8
  %12 = icmp ult i64 %1, %11
  %.neg.i.i.i = sext i1 %12 to i32
  %13 = add nsw i32 %.neg.i.i.i, %8               ; 4 uses
  %14 = sext i32 %13 to i64                       ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 3 uses
  %16 = load i64, ptr %15, align 8                ; 2 uses
  %17 = add i64 %16, %14                          ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %19 = load i64, ptr %18, align 8
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %2
  %21 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %17) #24
  %.pre.i.i = load i64, ptr %15, align 8          ; 2 uses
  %.pre14.i.i = load i64, ptr %18, align 8
  %.pre15.i.i = add i64 %.pre.i.i, %14            ; 2 uses
  %23 = icmp ult i64 %.pre14.i.i, %.pre15.i.i
  br i1 %23, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, %2
  %24 = phi i64 [ %.pre.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %16, %2 ]
  %.pre-phi19.i.i = phi i64 [ %.pre15.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %17, %2 ]
  store i64 %.pre-phi19.i.i, ptr %15, align 8
  %25 = load ptr, ptr %.sroa.01.0.copyload, align 8 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %24 ; 3 uses
  %.not.i = icmp eq ptr %25, null
  br i1 %.not.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %27

27:                                               ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %28 = icmp ugt i64 %1, 99
  br i1 %28, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %27, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %29, %.lr.ph.i.i ], [ %13, %27 ]
  %.01819.i.i = phi i64 [ %36, %.lr.ph.i.i ], [ %1, %27 ] ; 3 uses
  %29 = add i32 %.020.i.i, -2                     ; 3 uses
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %30
  %32 = urem i64 %.01819.i.i, 100
  %33 = shl nuw nsw i64 %32, 1
  %34 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %33
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %31, align 1
  %36 = udiv i64 %.01819.i.i, 100                 ; 2 uses
  %37 = icmp ugt i64 %.01819.i.i, 9999
  br i1 %37, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !29

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %27
  %.018.lcssa.i.i = phi i64 [ %1, %27 ], [ %36, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %13, %27 ], [ %29, %.lr.ph.i.i ] ; 2 uses
  %38 = icmp samesign ugt i64 %.018.lcssa.i.i, 9
  br i1 %38, label %39, label %46

39:                                               ; preds = %._crit_edge.i.i
  %40 = add i32 %.0.lcssa.i.i, -2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 %41
  %43 = shl nuw nsw i64 %.018.lcssa.i.i, 1
  %44 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %43
  %45 = load i16, ptr %44, align 2
  store i16 %45, ptr %42, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

46:                                               ; preds = %._crit_edge.i.i
  %47 = trunc nuw nsw i64 %.018.lcssa.i.i to i8
  %48 = or disjoint i8 %47, 48
  %49 = add i32 %.0.lcssa.i.i, -1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %26, i64 %50
  store i8 %48, ptr %51, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %52 = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.01.0.copyload, i64 noundef %1, i32 noundef %13) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit: ; preds = %39, %46, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIbTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 {
_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEbTnNSt9enable_ifIXsr3std7is_sameIT1_bEE5valueEiE4typeELi0EEET0_S9_S6_RKNS0_12format_specsENS1_10locale_refE.exit:
  %2 = alloca %class.anon.647, align 8            ; 5 uses
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 32768, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %4, align 4
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %5, align 4
  %6 = select i1 %1, ptr @.str.73, ptr @.str.74
  %7 = select i1 %1, i64 4, i64 5                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %6, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %7, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %8 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %7, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #1 comdat align 2 {
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 4 uses
  %4 = load i64, ptr %3, align 8                  ; 2 uses
  %5 = add i64 %4, 1                              ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %7 = load i64, ptr %6, align 8
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i: ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24 ; 2 uses
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %5) #24
  %.pre.i = load i64, ptr %3, align 8             ; 2 uses
  %.pre6.i = load i64, ptr %6, align 8
  %.pre7.i = add i64 %.pre.i, 1                   ; 3 uses
  %11 = icmp ugt i64 %.pre7.i, %.pre6.i
  br i1 %11, label %12, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit

12:                                               ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i
  %13 = load ptr, ptr %9, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %.pre7.i) #24
  %.pre.i.i.i = load i64, ptr %3, align 8         ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit: ; preds = %2, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i, %12
  %.pre-phi.i.i.i = phi i64 [ %.pre7.i, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i ], [ %.pre2.i.i.i, %12 ], [ %5, %2 ]
  %14 = phi i64 [ %.pre.i, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i ], [ %.pre.i.i.i, %12 ], [ %4, %2 ]
  %15 = load ptr, ptr %.sroa.01.0.copyload, align 8
  store i64 %.pre-phi.i.i.i, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %14
  store i8 %1, ptr %16, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIfTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %4 = alloca %class.anon.648, align 8            ; 5 uses
  %5 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %7 = bitcast float %1 to i32                    ; 2 uses
  %.lobit.i = lshr i32 %7, 31                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 16, i1 false)
  %8 = tail call float @llvm.fabs.f32(float %1)
  %9 = fcmp ueq float %8, 0x7FF0000000000000
  br i1 %9, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, label %16

_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i: ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 137438986240, ptr %3, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -4294967296, ptr %10, align 8
  %11 = fcmp uno float %1, 0.000000e+00
  %12 = select i1 %11, ptr @.str.80, ptr @.str.82
  %.not.not.i.i = icmp sgt i32 %7, -1
  %13 = select i1 %.not.not.i.i, i64 3, i64 4     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 %.lobit.i, ptr %4, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %12, ptr %14, align 8
  %15 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %13, i64 noundef %13, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %17 = tail call i64 @_ZN3fmt3v116detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #24
  store i64 %17, ptr %6, align 8
  %18 = call ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit.i, i32 noundef 7, ptr null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit: ; preds = %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIdTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %4 = alloca %class.anon.648, align 8            ; 5 uses
  %5 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.654", align 8 ; 5 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %7 = bitcast double %1 to i64                   ; 3 uses
  %.lobit.i = lshr i64 %7, 63
  %8 = trunc nuw nsw i64 %.lobit.i to i32         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 16, i1 false)
  %9 = and i64 %7, 9218868437227405312
  %10 = icmp eq i64 %9, 9218868437227405312
  br i1 %10, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, label %17

_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i: ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 137438986240, ptr %3, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -4294967296, ptr %11, align 8
  %12 = fcmp uno double %1, 0.000000e+00
  %13 = select i1 %12, ptr @.str.80, ptr @.str.82
  %.not.not.i.i = icmp sgt i64 %7, -1
  %14 = select i1 %.not.not.i.i, i64 3, i64 4     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 %8, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %13, ptr %15, align 8
  %16 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %14, i64 noundef %14, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %18 = tail call { i64, i32 } @_ZN3fmt3v116detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #24 ; 2 uses
  %19 = extractvalue { i64, i32 } %18, 0
  store i64 %19, ptr %6, align 8
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %21 = extractvalue { i64, i32 } %18, 1
  store i32 %21, ptr %20, align 8
  %22 = call ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %8, i32 noundef 16, ptr null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit: ; preds = %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, %17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %3, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit

3:                                                ; preds = %2
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.90) #29
  unreachable

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit: ; preds = %2
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %4
  %6 = tail call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr %.sroa.01.0.copyload) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.anon.673, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 32768, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 32, ptr %5, align 4
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 5
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %6, align 4
  %7 = ptrtoint ptr %1 to i64                     ; 2 uses
  br label %8

8:                                                ; preds = %8, %2
  %.03.i.i.i.i = phi i64 [ %7, %2 ], [ %10, %8 ]
  %.0.i.i.i.i = phi i32 [ 0, %2 ], [ %9, %8 ]     ; 2 uses
  %9 = add nuw nsw i32 %.0.i.i.i.i, 1             ; 2 uses
  %10 = lshr i64 %.03.i.i.i.i, 4                  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %10, 0
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS1_10locale_refE.exit, label %8, !llvm.loop !30

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %8
  %narrow.i.i = add nuw i32 %.0.i.i.i.i, 3
  %11 = zext i32 %narrow.i.i to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 %7, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %9, ptr %12, align 8
  %13 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %11, i64 noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i32 noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp slt i32 %1, 0                       ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #20 comdat {
bb.a:
  %.not24.i.i = icmp eq ptr %0, %1
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.lr.ph27.i.i
end_hunk_9
begin_hunk_10_@_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %0, ptr noundef byval(%"class.fmt::v11::loc_value") align 16 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3) local_unnamed_addr #19 comdat {
bb.a:
  %4 = alloca %"class.std::locale", align 8       ; 8 uses
  %5 = alloca %"class.fmt::v11::format_facet", align 8 ; 13 uses
end_hunk_10
begin_hunk_11_@_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #20 comdat {
bb.a:
  %3 = alloca %class.anon.632, align 1            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 12 uses
end_hunk_11
begin_hunk_12_@_ZN3fmt3v1112format_facetISt6localeEC2ERS2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_facetISt6localeED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #19 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_facetISt6localeEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_12
begin_hunk_13_@_ZSt16__throw_bad_castv
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_facetISt6localeED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #19 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_facetISt6localeEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_13
begin_hunk_14_@_ZN3fmt3v1112format_facetISt6localeED0Ev:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3fmt3v1112format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %1, ptr noundef byval(%"class.fmt::v11::loc_value") align 16 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
end_hunk_14
begin_hunk_15_@_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #20 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = lshr i32 %i.a, 15
end_hunk_15
begin_hunk_16_@_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 65536
  br i1 %i.a, label %bb.b, label %bb.i
end_hunk_16
begin_hunk_17_@_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  %i.b = load i32, ptr %0, align 4                ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN3fmt3v116detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v11::detail::thousands_sep_result") align 8 %0, ptr %1) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::locale", align 8       ; 6 uses
end_hunk_18
begin_hunk_19_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E0_clES4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEcjNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E2_clES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %i.b = load i32, ptr %0, align 8                ; 2 uses
end_hunk_21
begin_hunk_22_@_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E0_clES4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E2_clES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_23
begin_hunk_24_@llvm.fmuladd.f64
declare double @llvm.fmuladd.f64(double, double, double) #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef byval(%"struct.fmt::v11::detail::basic_fp") align 16 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #19 comdat {
bb.a:
  %5 = alloca %"class.fmt::v11::format_error", align 8 ; 3 uses
  %6 = alloca %"class.fmt::v11::detail::bigint", align 8 ; 60 uses
end_hunk_24
begin_hunk_25_@_ZN3fmt3v116detail6bigint6squareEv:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #19 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_errorE, i64 16), ptr %0, align 8
end_hunk_25
begin_hunk_26_@_ZNSt13runtime_errorC2EPKc
declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1112format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #19 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
end_hunk_26
begin_hunk_27_@_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.a, 0
end_hunk_27
begin_hunk_28_@_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E_clES4_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #20 comdat {
bb.a:
  %.not24.i.i = icmp eq ptr %0, %1
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i
end_hunk_28
begin_hunk_29_@_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E0_clES4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEcPKcNS1_14digit_groupingIcEEEET_S9_T1_iiT0_RKT2_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlS4_E2_clES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !56
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_30
begin_hunk_31_@_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #20 comdat {
bb.a:
  %4 = alloca %class.anon.632, align 1            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 12 uses
end_hunk_31
begin_hunk_32_@_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_intIcS5_mEET0_S7_NS1_13write_int_argIT1_EERKNS0_12format_specsEEUlS5_E_EES9_S9_SD_mmOT2_:bb.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, ptr noundef byval(%"struct.fmt::v11::detail::write_int_arg.638") align 16 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #20 comdat {
bb.a:
  %3 = alloca %class.anon.632, align 1            ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 12 uses
end_hunk_32
begin_hunk_33_@_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i32                      ; 2 uses
end_hunk_33
begin_hunk_34_@llvm.umin.i32
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
end_hunk_34
