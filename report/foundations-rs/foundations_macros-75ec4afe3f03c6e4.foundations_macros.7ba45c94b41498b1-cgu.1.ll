Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.1?download=true
inline.NumInlined: 62
inline.NumDeleted: 49
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldE7or_elseNCNvXsw_NtCs6bAnw1I7Lci_3syn10punctuatedINtB1V_11PrivateIterBJ_NtNtB1X_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0EBN_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nexts_0B10_(ptr align 8 %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldE7or_elseNCNvXsx_NtCs6bAnw1I7Lci_3syn10punctuatedINtB1V_11PrivateIterBJ_NtNtB1X_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0EBN_(ptr nofree readnone align 8 captures(address_is_null, ret: address, provenance) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsx_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0B10_(ptr align 8 %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgE7or_elseNCNvXsw_NtCs6bAnw1I7Lci_3syn10punctuatedINtB1Q_11PrivateIterBJ_NtNtB1S_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0EBN_(ptr nofree readnone align 8 captures(address_is_null, ret: address, provenance) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nexts_0B10_(ptr align 8 %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgE7or_elseNCNvXsx_NtCs6bAnw1I7Lci_3syn10punctuatedINtB1Q_11PrivateIterBJ_NtNtB1S_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0EBN_(ptr nofree readnone align 8 captures(address_is_null, ret: address, provenance) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsx_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0B10_(ptr align 8 %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueNtNtBO_5token5CommaEE3mapRBK_NCNCNvXsx_NtBO_10punctuatedINtB20_11PrivateIterBK_B1n_ENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back00ECsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNCNvXsx_NtCs6bAnw1I7Lci_3syn10punctuatedINtB9_11PrivateIterNtNtBb_4expr10FieldValueNtNtBb_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back00CsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueNtNtBO_5token5CommaEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1Y_11PrivateIterBK_B1n_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4expr10FieldValueNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0CsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEE3mapINtNtB1J_10punctuated4PairRBK_RB1F_ENCNvXsc_B2m_INtB2m_5PairsBK_B1F_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0EBO_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNCNvXsc_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_5PairsNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0BT_(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEE3mapRBK_NCNCNvXsx_NtB1J_10punctuatedINtB2x_11PrivateIterBK_B1F_ENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back00EBO_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNCNvXsx_NtCs6bAnw1I7Lci_3syn10punctuatedINtB9_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtBb_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back00B12_(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEE3mapRBK_NCNvXsw_NtB1J_10punctuatedINtB2v_11PrivateIterBK_B1F_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0EBO_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0B10_(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtCs6bAnw1I7Lci_3syn5token5CommaEE3mapRBK_NCNCNvXsx_NtB1E_10punctuatedINtB2s_11PrivateIterBK_B1A_ENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back00EBO_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNCNvXsx_NtCs6bAnw1I7Lci_3syn10punctuatedINtB9_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtBb_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back00B12_(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRTNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtCs6bAnw1I7Lci_3syn5token5CommaEE3mapRBK_NCNvXsw_NtB1E_10punctuatedINtB2q_11PrivateIterBK_B1A_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0EBO_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @_RNCNvXsw_NtCs6bAnw1I7Lci_3syn10punctuatedINtB7_11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtB9_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0B10_(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr10ExprStructReECsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.d, align 8
  call void @_RNvYRNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens17into_token_streamCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
  invoke void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs6bAnw1I7Lci_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvMNtCs6bAnw1I7Lci_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.b) #27
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayINtNtCsk5uxfcyCLQt_5quote9___private20IdentFragmentAdapterRbEECsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtCsk5uxfcyCLQt_5quote9___privateINtB5_20IdentFragmentAdapterRbENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsaC8UfsfJL0H_18foundations_macros to i64), ptr %.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayRbECsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRbNtB6_7Display3fmtCsaC8UfsfJL0H_18foundations_macros to i64), ptr %.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayRdECsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRdNtB6_7Display3fmtCsaC8UfsfJL0H_18foundations_macros to i64), ptr %.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEBY_(ptr sret([800 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs0_NtNtCsaC8UfsfJL0H_18foundations_macros11info_metric7parsingNtB7_5FieldNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([800 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEBY_(ptr sret([1000 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs2_NtNtCsaC8UfsfJL0H_18foundations_macros7metrics7parsingNtB7_5FnArgNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([1000 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtCsaC8UfsfJL0H_18foundations_macros7metrics6ItemFnEBY_(ptr sret([552 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCsaC8UfsfJL0H_18foundations_macros7metrics7parsingNtB7_6ItemFnNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([552 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn8SpanNameEBY_(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB4_8SpanNameNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4attr9AttributeECsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([256 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [256 x i8], align 8               ; 4 uses
  %i.h = alloca [256 x i8], align 8               ; 6 uses
  %i.i = alloca [256 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [256 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = call { ptr, i64 } @_RNvMNtCs6bAnw1I7Lci_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c), !noalias !4 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %i.k, align 8, !noalias !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !4
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c, !noalias !4

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.c ], [ %.pn.i, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #27
          to label %common.resume unwind label %bb.t

bb.c:                                             ; preds = %.invoke.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([256 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f, !noalias !4

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.w, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #27
          to label %bb.b unwind label %bb.t

bb.f:                                             ; preds = %.invoke10.i, %bb.i, %bb.g, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([256 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f, !noalias !4

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.h, align 8, !noalias !4
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !4
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1l_EE13from_residualBO_(ptr nonnull sret([256 x i8]) align 8 %i.m, ptr nonnull align 8 %i.a, ptr nonnull align 8 @44)
          to label %.invoke.i unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.i, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false), !noalias !4
  invoke void @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k, !noalias !4

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr nonnull align 8 %i.i) #27
          to label %bb.e unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k, !noalias !4

bb.m:                                             ; preds = %bb.l
  %i.x = load i64, ptr %i.f, align 8, !noalias !4
  %.not.i = icmp eq i64 %i.x, -1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !4
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1l_EE13from_residualBO_(ptr nonnull sret([256 x i8]) align 8 %i.m, ptr nonnull align 8 %i.b, ptr nonnull align 8 @43)
          to label %.invoke10.i unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.y = invoke { ptr, ptr } @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k, !noalias !4 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  %i.ab = invoke { i32, i8 } @_RNvNtCs6bAnw1I7Lci_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.z, ptr %i.aa)
          to label %bb.q unwind label %bb.k, !noalias !4 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = extractvalue { i32, i8 } %i.ab, 1       ; 2 uses
  %.not6.not.i = icmp eq i8 %i.ac, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = extractvalue { i32, i8 } %i.ab, 0
  invoke void @_RNvNtCs6bAnw1I7Lci_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ad, i8 %i.ac)
          to label %bb.s unwind label %bb.k, !noalias !4

.thread.i:                                        ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, ptr noundef nonnull align 8 dereferenceable(256) %i.i, i64 256, i1 false)
  br label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %i.m, align 8, !alias.scope !4
  br label %.invoke10.i

.invoke10.i:                                      ; preds = %bb.s, %bb.n
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.f

.invoke.i:                                        ; preds = %.invoke10.i, %.thread.i, %bb.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4attr9AttributeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.c

bb.t:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %.pn8.i, %bb.b ], [ %i.aj, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4attr9AttributeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %.invoke.i
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ag = load i64, ptr %i.m, align 8
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4attr9AttributeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CsaC8UfsfJL0H_18foundations_macros.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client5state3setNtB8_11TokenStreamNCNCINvB4_10run_clientTBW_BW_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros8settingsE00E00EB2i_:bb.a
          to label %.thread unwind label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros11info_metricE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros11info_metricE00E0B1V_(ptr nonnull align 8 %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryE00E0B1V_(ptr nonnull align 8 %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros7metricsE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros7metricsE00E0B1V_(ptr nonnull align 8 %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros7span_fnE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros7span_fnE00E0B1V_(ptr nonnull align 8 %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7do_callINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB24_11TokenStreamB2V_ENCNCINvMsg_B20_NtB20_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros8settingsE00E0EB2V_EB3V_(ptr nofree captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.b = call i32 @_RNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB8_11TokenStreamBZ_ENCNCINvMsg_B4_NtB4_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros8settingsE00E0B1V_(ptr nonnull align 8 %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros11info_metricE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros7metricsE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros7span_fnE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_RINvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind8do_catchINtNtNtCs3oUPovFnLWP_4core5panic11unwind_safe16AssertUnwindSafeNCINvNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client10run_clientTNtB25_11TokenStreamB2W_ENCNCINvMsg_B21_NtB21_6Client7expand2NvCsaC8UfsfJL0H_18foundations_macros8settingsE00E0EB2W_EB3W_(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCsk5uxfcyCLQt_5quote3extNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB3_14TokenStreamExt10append_allINtNtCs6bAnw1I7Lci_3syn10punctuated5PairsNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB1K_5token5CommaEEB2o_(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtCs6bAnw1I7Lci_3syn10punctuated5PairsNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtBQ_5token5CommaENtB2_12IntoIterator9into_iterB1u_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #26
  call void @_RINvNvXNtCsk5uxfcyCLQt_5quote3extNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCs6bAnw1I7Lci_3syn10punctuated5PairsNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB21_5token5CommaEEB2F_(ptr align 8 %0, ptr nonnull align 8 %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterReENCINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB3O_17ErrorUnknownValue9with_altsB3C_RAB3C_j2_E0EECsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call { ptr, ptr } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterReENCINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB1O_17ErrorUnknownValue9with_altsB1C_RAB1C_j2_E0ENtB2_12IntoIterator9into_iterCsaC8UfsfJL0H_18foundations_macros(ptr %1, ptr %2) #26 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB1t_17ErrorUnknownValue9with_altsB1h_RAB1h_j2_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB3K_6string6StringEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.d, ptr %i.e) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  invoke void @_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsje5z0uo7eGy_12darling_core(ptr align 8 %i.j, i64 %i.g)
          to label %bb.d unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.sroa.010.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.211.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.312.0.copyload = load i64, ptr %i.f, align 8
  %3 = inttoptr i64 %.sroa.211.0.copyload to ptr  ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.sroa.312.0.copyload
  store ptr %3, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.010.0.copyload, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.k, ptr %i.n, align 8
  call void @_RINvMse_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringE16from_sorted_iterINtNtNtBc_3vec9into_iter8IntoIterB18_EECsje5z0uo7eGy_12darling_core(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.b) #27
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterReENCINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB3O_17ErrorUnknownValue9with_altsB3C_RAB3C_j4_E0EECsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call { ptr, ptr } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterReENCINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB1O_17ErrorUnknownValue9with_altsB1C_RAB1C_j4_E0ENtB2_12IntoIterator9into_iterCsaC8UfsfJL0H_18foundations_macros(ptr %1, ptr %2) #26 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  call void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB1t_17ErrorUnknownValue9with_altsB1h_RAB1h_j4_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB3K_6string6StringEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.d, ptr %i.e) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  invoke void @_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECsje5z0uo7eGy_12darling_core(ptr align 8 %i.j, i64 %i.g)
          to label %bb.d unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.sroa.010.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.211.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.312.0.copyload = load i64, ptr %i.f, align 8
  %3 = inttoptr i64 %.sroa.211.0.copyload to ptr  ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.sroa.312.0.copyload
  store ptr %3, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.010.0.copyload, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.k, ptr %i.n, align 8
  call void @_RINvMse_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringE16from_sorted_iterINtNtNtBc_3vec9into_iter8IntoIterB18_EECsje5z0uo7eGy_12darling_core(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.b) #27
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCsaC8UfsfJL0H_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecRB1n_EEB25_(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1q_8adapters6filter6FilterINtNtNtB1s_5slice4iter4IterBH_ENCNvNtCsaC8UfsfJL0H_18foundations_macros8settings29impl_settings_trait_for_field0EEB3G_(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) #26
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNtCsaC8UfsfJL0H_18foundations_macros6common16parse_attr_valueNtNtCs6bAnw1I7Lci_3syn3lit6LitStrE0B6_(ptr sret([24 x i8]) align 8 %0, ptr nofree readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtCse4VeaA6Ikg_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr align 8 %2)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCse4VeaA6Ikg_11proc_macro25IdentNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e) #26
  %i.h = load i64, ptr %i.f, align 8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn3lit6LitStrNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1h_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3) #26
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g) #27
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn5token2EqNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn3lit6LitStrNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1h_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @2)
          to label %bb.k unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_3lit6LitStrEB8_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %2)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i, %bb.b
  ret void

bb.k:                                             ; preds = %bb.g
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g)
  br label %bb.j

bb.l:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNtCsaC8UfsfJL0H_18foundations_macros6common16parse_attr_valueNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructE0B6_(ptr sret([168 x i8]) align 8 %0, ptr nofree readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtCse4VeaA6Ikg_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr align 8 %2)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCse4VeaA6Ikg_11proc_macro25IdentNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e) #26
  %i.h = load i64, ptr %i.f, align 8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([168 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3) #26
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g) #27
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn5token2EqNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([168 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @2)
          to label %bb.j unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsr_NtNtCs6bAnw1I7Lci_3syn4expr7parsingNtB7_10ExprStructNtNtB9_5parse5Parse5parse(ptr sret([168 x i8]) align 8 %0, ptr align 8 %2)
          to label %_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr10ExprStructECsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.d

_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr10ExprStructECsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.h
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr10ExprStructECsaC8UfsfJL0H_18foundations_macros.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.g
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g)
  br label %bb.i

bb.k:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.l:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB1Z_5Break0E0CsaC8UfsfJL0H_18foundations_macros(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvYNcNtINtNtNtCs3oUPovFnLWP_4core3ops12control_flow11ControlFlowNtCse4VeaA6Ikg_11proc_macro211TokenStreamE5Break0INtNtBb_8function5FnMutTB11_EE8call_mutCsaC8UfsfJL0H_18foundations_macros(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr nonnull align 8 %i.a) #26
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNCNvB1e_18expand_from_parseds_0E0B1g_(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNCNvNtCsaC8UfsfJL0H_18foundations_macros11info_metric18expand_from_parseds_0B5_(ptr %0, ptr align 8 %1) #26
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNCNvB1e_16label_set_struct0E0B1g_(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNCNvNtCsaC8UfsfJL0H_18foundations_macros7metrics16label_set_struct0B5_(ptr %0, ptr align 8 %1) #26
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueRNtB1j_4ExprNCNvNtNtCsaC8UfsfJL0H_18foundations_macros7metrics10validation10find_field0E0B2e_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
end_hunk_1
begin_hunk_2_@_RNvCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry:bb.a

bb.fn:                                            ; preds = %bb.fl
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fo:                                            ; preds = %bb.fl
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.at)
          to label %bb.fr unwind label %bb.fq, !noalias !31

bb.fp:                                            ; preds = %bb.fq, %bb.fm
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fm ], [ %i.dx, %bb.fq ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4item8VariadicEEB11_(ptr nonnull align 8 %i.dw) #27
          to label %bb.fs unwind label %bb.bn, !noalias !31

bb.fq:                                            ; preds = %bb.fo
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fr:                                            ; preds = %bb.fo
  %i.dy = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4item8VariadicEEB11_(ptr nonnull align 8 %i.dy)
          to label %bb.fu unwind label %bb.ft, !noalias !31

bb.fs:                                            ; preds = %bb.ft, %bb.fp
  %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fp ], [ %i.dz, %bb.ft ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.av) #27
          to label %.thread.i unwind label %bb.bn, !noalias !31

bb.ft:                                            ; preds = %bb.fr
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fu:                                            ; preds = %bb.fr
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.ea = call i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.aw)
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit

bb.fv:                                            ; preds = %.thread13.i, %bb.ge, %bb.gd, %bb.ga
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.fw:                                            ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6bAnw1I7Lci_3syn4item6ItemFnNtNtB11_5error5ErrorEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ax)
          to label %bb.fx unwind label %bb.e

bb.fx:                                            ; preds = %bb.fw
  %i.ec = invoke i32 @_RNvMsi_Cse4VeaA6Ikg_11proc_macro2NtB5_4Span9call_site()
          to label %bb.fy unwind label %bb.e

bb.fy:                                            ; preds = %bb.fx
  invoke void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.ay, i32 %i.ec, ptr nonnull @23, i64 57)
          to label %bb.fz unwind label %bb.e

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.az, ptr nonnull align 8 %i.ay)
          to label %bb.gb unwind label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.ay) #27
          to label %bb.gd unwind label %bb.fv

bb.gb:                                            ; preds = %bb.fz
  %i.ee = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.az)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros.exit9.i unwind label %bb.ga

_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros.exit9.i: ; preds = %bb.gb
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.ay)
          to label %bb.gc unwind label %bb.e

bb.gc:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros.exit9.i
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.bd)
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit

bb.gd:                                            ; preds = %bb.ga, %bb.e
  %.pn.ph.i = phi { ptr, i32 } [ %i.bj, %bb.e ], [ %i.ed, %bb.ga ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBF_(ptr nonnull align 8 %i.bd) #27
          to label %.thread.i unwind label %bb.fv

bb.ge:                                            ; preds = %bb.gf, %bb.c
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.bb) #27
          to label %.thread13.i unwind label %bb.fv

bb.gf:                                            ; preds = %bb.c
  %i.eg = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.ba)
          to label %bb.gg unwind label %bb.ge

bb.gg:                                            ; preds = %bb.gf
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.bb)
          to label %.thread27.i unwind label %.thread18.i

.thread27.i:                                      ; preds = %bb.gg
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.be)
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit

.thread.i:                                        ; preds = %.thread13.i, %bb.gd, %bb.fs
  %.pn712.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.fs ], [ %.pn716.i, %.thread13.i ], [ %.pn.ph.i, %bb.gd ]
  resume { ptr, i32 } %.pn712.i

.thread13.i:                                      ; preds = %bb.ge, %.thread18.i
  %.pn716.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread18.i ], [ %i.ef, %bb.ge ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.be) #27
          to label %.thread.i unwind label %bb.fv

_RNvNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry6expand.exit: ; preds = %bb.fu, %bb.gc, %.thread27.i
  %.sroa.0.0.i = phi i32 [ %i.eg, %.thread27.i ], [ %i.ea, %bb.fu ], [ %i.ee, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvCsaC8UfsfJL0H_18foundations_macros7metrics(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvNtCsaC8UfsfJL0H_18foundations_macros7metrics6expand(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvCsaC8UfsfJL0H_18foundations_macros7span_fn(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvNtCsaC8UfsfJL0H_18foundations_macros7span_fn6expand(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvCsaC8UfsfJL0H_18foundations_macros8settings(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings6expand(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3newCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %1, 65536
  %. = select i1 %i.e, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 2, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %.sroa.0.0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCsaC8UfsfJL0H_18foundations_macros(i32 %1, ptr %i.h) #26
  %i.i = add i64 %.sroa.0.0, %i.b
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6as_strCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_strCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCse4VeaA6Ikg_11proc_macro2(ptr align 8 %0, ptr %1, i64 %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtCse4VeaA6Ikg_11proc_macro211TokenStream8last_mutCsaC8UfsfJL0H_18foundations_macros(ptr nofree readnone align 8 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = getelementptr [32 x i8], ptr %0, i64 %1
  %i.b = getelementptr i8, ptr %i.a, i64 -32
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs6bAnw1I7Lci_3syn4stmt4Stmt4iterCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtE3newCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i64 %1) #26
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs6bAnw1I7Lci_3syn4stmt4Stmt4lastCsaC8UfsfJL0H_18foundations_macros(ptr nofree readnone align 8 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = getelementptr [352 x i8], ptr %0, i64 %1
  %i.b = getelementptr i8, ptr %i.a, i64 -352
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtCs6bAnw1I7Lci_3syn4attr9Attribute4iterCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE3newCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i64 %1) #26
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTdNtCse4VeaA6Ikg_11proc_macro24SpanE4iterCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEE3newCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i64 %1) #26
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionIBv_INtNtNtCsje5z0uo7eGy_12darling_core4util9over_ride8OverrideNtNtCs6bAnw1I7Lci_3syn4path4PathEEE6expectCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE4takeB1k_(ptr nofree align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE6as_refB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE7is_noneB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE7is_someB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE4takeB1k_(ptr nofree align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE6as_refB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE7is_noneB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE7is_someB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7is_someCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructE7is_someCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsje5z0uo7eGy_12darling_core4util4flag4FlagE6expectCsaC8UfsfJL0H_18foundations_macros(i32 %0, i32 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
end_hunk_2
begin_hunk_3_@_RNvXs1_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4stmt5BlockENtB5_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNCNvNtCsaC8UfsfJL0H_18foundations_macros8settings24impl_serde_aware_default00ENtNtNtB9_6traits8iterator8Iterator4nextB2c_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNCNvNtCsaC8UfsfJL0H_18foundations_macros8settings24impl_serde_aware_default00EB2l_(ptr align 8 %0, ptr nonnull %i.a) #26
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCsaC8UfsfJL0H_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsaC8UfsfJL0H_18foundations_macros8settings29impl_settings_trait_for_field0EB2j_(ptr align 8 %0, ptr nonnull %i.a) #26
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCsaC8UfsfJL0H_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2a_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8
  store <2 x i64> %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtCs1xwejQucwHj_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECse4VeaA6Ikg_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtB7_7default7Default7defaultCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([256 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #2 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanETNtB9_11TokenStreamB1p_EEINtB5_6DecodeuE6decodeCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([20 x i8]) align 4 captures(none) initializes((0, 20)) %0, ptr align 8 %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %1, ptr %2) #26, !noalias !43
  %i.b = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %1, ptr %2) #26, !noalias !43
  %i.c = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %1, ptr %2) #26, !noalias !43
  %i.d = tail call { i32, i32 } @_RNvXs7_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcTNtB9_11TokenStreamBL_EINtB5_6DecodeuE6decodeCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %1, ptr %2) #26 ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1
  store i32 %i.a, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %.sroa.3.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.f, ptr %i.h, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtBM_4expr10FieldValueEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !invariant.load !46
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 3 uses
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 0, %i.g                          ; 3 uses
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, %i.j
  %i.n = add i64 %i.m, %i.h
  %i.o = and i64 %i.n, %i.j                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.r, ptr %i.q, i64 %i.g, i64 %i.o) #26
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1Q_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !invariant.load !46
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 3 uses
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 0, %i.g                          ; 3 uses
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, %i.j
  %i.n = add i64 %i.m, %i.h
  %i.o = and i64 %i.n, %i.j                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.r, ptr %i.q, i64 %i.g, i64 %i.o) #26
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxINtNtCs6bAnw1I7Lci_3syn5drops6NoDropDINtNtBM_10punctuated9IterTraitNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEp4ItemRB1M_EL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1Q_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !invariant.load !46
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 3 uses
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 0, %i.g                          ; 3 uses
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, %i.j
  %i.n = add i64 %i.m, %i.h
  %i.o = and i64 %i.n, %i.j                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.r, ptr %i.q, i64 %i.g, i64 %i.o) #26
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.b, ptr %i.a, i64 8, i64 800) #26
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCsaC8UfsfJL0H_18foundations_macros(ptr nonnull %i.b, ptr %i.a, i64 8, i64 1000) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_8ToString9to_stringCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !noalias !47
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !47
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1610612768, ptr %i.c, align 8, !noalias !47
  store ptr %i.b, ptr %i.a, align 8, !noalias !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @29, ptr %i.d, align 8, !noalias !47
  %i.e = invoke zeroext i1 @_RNvXsc_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b, !noalias !47

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.b) #27
          to label %bb.e unwind label %bb.d, !noalias !47

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCse4VeaA6Ikg_11proc_macro2(i1 zeroext %i.e, ptr nonnull @30, i64 55, ptr nonnull align 8 @32)
          to label %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.b, !noalias !47

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !47
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsE_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEINtNtCs3oUPovFnLWP_4core7convert5AsRefBH_E6as_refBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsE_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEINtNtCs3oUPovFnLWP_4core7convert5AsRefBH_E6as_refBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtNtCsje5z0uo7eGy_12darling_core4util9over_ride8OverrideNtNtCs6bAnw1I7Lci_3syn4path4PathEENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs6bAnw1I7Lci_3syn4path4PathENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENtNtNtB7_3ops9try_trait3Try6branchCsaC8UfsfJL0H_18foundations_macros(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8, !noalias !50
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXss_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.e) #26, !noalias !50
  %2 = ptrtoint ptr %i.f to i64
  %3 = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %2, i64 0
  br label %_RNvXsz_NtCse4VeaA6Ikg_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = tail call i32 @_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 4 %i.g) #26, !noalias !53 ; 2 uses
  store i32 %i.h, ptr %i.b, align 4, !noalias !53
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse4VeaA6Ikg_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i unwind label %bb.d, !noalias !53

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.b) #27
          to label %bb.f unwind label %bb.e, !noalias !53

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !53
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i: ; preds = %bb.c
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load <2 x i64>, ptr %.sroa.3.0..sroa_idx2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50
  br label %_RNvXsz_NtCse4VeaA6Ikg_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit

_RNvXsz_NtCse4VeaA6Ikg_11proc_macro23impNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i, %bb.b
  %.sroa.46.0 = phi i32 [ undef, %bb.b ], [ %i.h, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %.sroa.0.0.copyload1, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  %5 = phi <2 x i64> [ %3, %bb.b ], [ %4, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros.exit.i ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.46.0, ptr %.sroa.46.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #2 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueENtNtB7_5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldENtNtB7_5clone5Clone5cloneBR_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvXsY_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgENtNtB7_5clone5Clone5cloneBR_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_charCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %1, 65536
  %..i = select i1 %i.e, i64 3, i64 4
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4pushCsaC8UfsfJL0H_18foundations_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %.sroa.0.0.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCsaC8UfsfJL0H_18foundations_macros(i32 %1, ptr %i.h) #26
  %i.i = add i64 %.sroa.0.0.i, %i.b
  store i64 %i.i, ptr %i.a, align 8
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCse4VeaA6Ikg_11proc_macro2(ptr align 8 %0, ptr %1, i64 %2) #26
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs6bAnw1I7Lci_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEp4ItemRB1c_EL_ENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1g_(ptr %0, ptr align 8 %1) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetryNtB4_4ArgsNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [56 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [80 x i8], align 8                ; 2 uses
  %i.z = alloca [96 x i8], align 8                ; 3 uses
  %i.aa = alloca [80 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 2 uses
  %i.ad = alloca [32 x i8], align 8               ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 2 uses
  %i.ag = alloca [48 x i8], align 8               ; 2 uses
  %i.ah = alloca [48 x i8], align 8               ; 4 uses
  %i.ai = alloca [48 x i8], align 8               ; 9 uses
  %i.aj = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.aj, align 8
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4path4PathEB8_(ptr nonnull sret([48 x i8]) align 8 %i.ag, ptr align 8 %1)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.ag) #26
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1M_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.w, ptr nonnull align 8 @41) #26
  br label %bb.bo

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  %i.an = invoke i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3lenB4_(ptr nonnull align 8 %i.ai)
          to label %bb.d unwind label %.thread13

.thread13:                                        ; preds = %bb.s, %bb.bp, %bb.q, %bb.n, %.noexc, %bb.l, %bb.i, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ap = invoke align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.ai, i64 0, ptr nonnull align 8 @33)
          to label %bb.f unwind label %.thread13

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = invoke zeroext i1 @_RNvXsz_Cse4VeaA6Ikg_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.aq, ptr nonnull align 8 @35)
          to label %bb.g unwind label %.thread13

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = invoke align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.ai, i64 1, ptr nonnull align 8 @36)
          to label %bb.j unwind label %.thread13

bb.i:                                             ; preds = %bb.j, %bb.d, %bb.g
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ false, %bb.g ], [ %i.av, %bb.j ] ; 2 uses
  %i.at = invoke align 8 ptr @_RNvMs_NtCs6bAnw1I7Lci_3syn4pathNtB4_4Path9get_ident(ptr nonnull align 8 %i.ai)
          to label %bb.k unwind label %.thread13  ; 2 uses

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.av = invoke zeroext i1 @_RNvXsz_Cse4VeaA6Ikg_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.au, ptr nonnull align 8 @37)
          to label %bb.i unwind label %.thread13

bb.k:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.af, align 8
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtCse4VeaA6Ikg_11proc_macro25IdentINtB7_9PartialEqReE2eqCs6bAnw1I7Lci_3syn(ptr nonnull align 8 %i.af, ptr nonnull align 8 @37)
          to label %.split unwind label %.thread13

.split:                                           ; preds = %bb.l
  %spec.select = select i1 %i.aw, i1 true, i1 %.sroa.0.0
  br i1 %spec.select, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  br i1 %.sroa.0.0, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split, %bb.m
  invoke void @_RNvNtCsaC8UfsfJL0H_18foundations_macros6common33parse_optional_trailing_meta_list(ptr nonnull sret([32 x i8]) align 8 %i.ac, ptr nonnull align 8 %i.aj)
          to label %bb.q unwind label %.thread13

bb.o:                                             ; preds = %.split, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ax = invoke i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4path4PathNtB2_7Spanned4spanCsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.ai)
          to label %.noexc unwind label %.thread13

.noexc:                                           ; preds = %bb.o
  invoke void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.v, i32 %i.ax, ptr nonnull @38, i64 59)
          to label %_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtNtB4_19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn4path4PathEB4_.exit unwind label %.thread13

_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtNtB4_19with_test_telemetry4ArgsNtNtCs6bAnw1I7Lci_3syn4path4PathEB4_.exit: ; preds = %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
