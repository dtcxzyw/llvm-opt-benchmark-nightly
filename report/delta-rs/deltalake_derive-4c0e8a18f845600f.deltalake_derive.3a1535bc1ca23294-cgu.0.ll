inline.NumInlined: 116
inline.NumDeleted: 77
begin_hunk_0_@_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #6 {
bb.a:
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcuINtB2_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtBQ_4data5FieldENtB2_12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtB2_12IntoIterator9into_iterB2t_(ptr %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtB2_12IntoIterator9into_iterB2t_(ptr %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtB2_12IntoIterator9into_iterB2f_(ptr %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8
  store <2 x i64> %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8
  store <2 x i64> %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00ENtNtNtB9_6traits8iterator8Iterator4nextB25_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl1mHGn7pXMx_12convert_case(ptr align 8 %1) #25 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00B5_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Z_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtCsbjGuDcEILED_11proc_macro211TokenStreamINtB5_4IntoNtCsjJ0p09o2jmV_10proc_macro11TokenStreamE4intoCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @_RNvXs2_CsbjGuDcEILED_11proc_macro2NtCsjJ0p09o2jmV_10proc_macro11TokenStreamINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11TokenStreamE4from(ptr align 8 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32 %0, ptr align 8 %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  call void @_RINvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj4_ECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %1, ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i32 } @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %0) #25 ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = extractvalue { i32, i32 } %i.d, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %i.k, %i.g
  %i.q = add i64 %i.h, %i.n
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  store i64 %i.s, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.i, %bb.b ], [ 1114112, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ undef, %bb.a ]
  %i.t = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i32 } %i.t, i32 %.sroa.3.0, 1
  ret { i64, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readnone captures(none) %0, i32 %1) unnamed_addr #8 {
bb.a:
  %switch.tableidx = add i32 %1, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_RNvYNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc13is_whitespaceINtNtNtB9_3ops8function5FnMutTcEE8call_mutCs4ZaLwAtrTbk_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 127
  br i1 %i.b, label %bb.c, label %_RNvYNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc13is_whitespaceINtNtNtB9_3ops8function5FnMutTcEE8call_mutCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 8                           ; 2 uses
  %2 = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 31)
  switch i32 %2, label %_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i [
    i32 0, label %bb.f
    i32 11, label %bb.d
    i32 16, label %bb.g
    i32 24, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 5760
  %i.e = zext i1 %i.d to i8
  br label %_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %1, 12288
  %i.g = zext i1 %i.f to i8
  br label %_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.h = and i32 %1, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  br label %_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.l = and i32 %1, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = lshr i8 %i.o, 1
  br label %_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i

_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.g, %bb.e ], [ %i.k, %bb.f ], [ %i.e, %bb.d ], [ %i.p, %bb.g ], [ 0, %bb.c ]
  %i.q = trunc i8 %.sroa.0.0.i.i.i to i1
  br label %_RNvYNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc13is_whitespaceINtNtNtB9_3ops8function5FnMutTcEE8call_mutCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYNvMNtNtCsbvkFyIu7lgC_4core4char7methodsc13is_whitespaceINtNtNtB9_3ops8function5FnMutTcEE8call_mutCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.a, %bb.b, %_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i
  %.sroa.0.0.i.i = phi i1 [ false, %bb.b ], [ %i.q, %_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space6lookupCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden range(i32 1, 0) i32 @_RNvXs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.c, ptr nonnull align 8 @23) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECs8S1ySXND5x1_11miniz_oxide(ptr nonnull %i.a, i64 4, ptr %i.e, i64 4, ptr nonnull align 8 @23)
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.d, label %_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 4, i64 %i.f, i64 %i.f, ptr nonnull align 8 @23) #28
  unreachable

_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = add i64 %i.f, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.j, ptr %0, align 8
  store i64 %i.i, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.e, label %_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.e:                                             ; preds = %_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr nonnull align 8 @15) #28
  unreachable

_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  ret i32 %.sroa.0.0.copyload.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i32 } @_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs7nQiqFc7Txl_3syn(ptr align 8 %0) #25 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i32 } %i.a, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = add i64 %i.f, %i.j
  %i.m = sub i64 %i.l, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ 1114112, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.m, %bb.b ], [ undef, %bb.a ]
  %i.n = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, i32 } %i.n, i32 %.sroa.3.0, 1
  ret { i64, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  tail call void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr align 8 %.val, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i32 1, 0) i32 @_RNvXs7_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.c, ptr nonnull align 8 @23) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECs8S1ySXND5x1_11miniz_oxide(ptr nonnull %i.a, i64 4, ptr %i.e, i64 4, ptr nonnull align 8 @23)
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.d, label %_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 4, i64 %i.f, i64 %i.f, ptr nonnull align 8 @23) #28
  unreachable

_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = add i64 %i.f, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.j, ptr %0, align 8
  store i64 %i.i, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.e, label %_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.e:                                             ; preds = %_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr nonnull align 8 @15) #28
  unreachable

_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeromEINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %_RNvXsk_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  ret i32 %.sroa.0.0.copyload.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [232 x i8], align 8               ; 2 uses
  %i.e = alloca [240 x i8], align 8               ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = invoke i64 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBJ_5token5CommaEE3lenCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %1) #25
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = invoke zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE7is_someCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.k) #25
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %.noexc
  %..i = zext i1 %i.l to i64
  %i.m = add i64 %i.j, %..i
  invoke void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE13with_capacityCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.i, i64 %i.m)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvXsf_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
end_hunk_0
begin_hunk_1_@_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBJ_5token5CommaEE3lenCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBH_5token5CommaEE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, i64) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr align 8) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsdotcORewEEM_5gimli(ptr align 8, i64, i64, i64, i64) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter3new(ptr sret([64 x i8]) align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter7to_case(ptr sret([64 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsl1mHGn7pXMx_12convert_case9converter9ConverterEBK_(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64, i64) unnamed_addr #17

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme20new_grapheme_indicesCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([200 x i8]) align 8, ptr, i64, i1 zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7nQiqFc7Txl_3syn4attr8printingNtB6_4MetaNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtNtCs7nQiqFc7Txl_3syn4data5FieldNtB2_8ToTokens9to_tokensBC_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl1mHGn7pXMx_12convert_case(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00B5_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdotcORewEEM_5gimli(ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXs2_CsbjGuDcEILED_11proc_macro2NtCsjJ0p09o2jmV_10proc_macro11TokenStreamINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11TokenStreamE4from(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj4_ECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbjGuDcEILED_11proc_macro2(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs7nQiqFc7Txl_3syn(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE13with_capacityCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtB11_5token5CommaEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([240 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr4MetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer17extend_from_sliceCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterB4_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsbjGuDcEILED_11proc_macro2(ptr align 8, ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsc_CsbjGuDcEILED_11proc_macro2NtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsbjGuDcEILED_11proc_macro2(i1 zeroext, ptr, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCsbjGuDcEILED_11proc_macro25IdentNtB6_7Display3fmtBy_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsz_NtCsbjGuDcEILED_11proc_macro23impNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsbjGuDcEILED_11proc_macro26markerNtB5_19ProcMacroAutoTraitsNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamEBK_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr align 4) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs7nQiqFc7Txl_3syn6bufferNtB2_11TokenBuffer4new2(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs7nQiqFc7Txl_3syn5parse22tokens_to_parse_buffer(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i8 } @_RNvNtCs7nQiqFc7Txl_3syn5parse33span_of_unexpected_ignoring_nones(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs7nQiqFc7Txl_3syn5parse20err_unexpected_token(ptr sret([24 x i8]) align 8, i32, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn5parse11ParseBufferEBK_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6buffer11TokenBufferEBK_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([240 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualBO_(ptr sret([240 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr, i64, ptr align 8, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECs8S1ySXND5x1_11miniz_oxide(ptr, i64, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7nQiqFc7Txl_3syn4attr4MetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([232 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([40 x i8]) align 8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtCs7nQiqFc7Txl_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefB6_(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RNvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_config(i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_CsbjGuDcEILED_11proc_macro2NtB5_11TokenStreamINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjJ0p09o2jmV_10proc_macro11TokenStreamE4from(ptr sret([32 x i8]) align 8, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7nQiqFc7Txl_3syn6derive7parsingNtB4_11DeriveInputNtNtB6_5parse5Parse5parse(ptr sret([240 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr sret([32 x i8]) align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { inlinehint }
attributes #26 = { cold noinline noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { noinline noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RNvYNvYNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputNtNtB9_5parse5Parse5parseNtBN_6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!5 = distinct !{!5, !"_RNvYNvYNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputNtNtB9_5parse5Parse5parseNtBN_6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNvXsh_NtCs7nQiqFc7Txl_3syn5parseNvYNtNtB7_6derive11DeriveInputNtB5_5Parse5parseNtB5_6Parser6parse2Cs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!8 = distinct !{!8, !"_RNvXsh_NtCs7nQiqFc7Txl_3syn5parseNvYNtNtB7_6derive11DeriveInputNtB5_5Parse5parseNtB5_6Parser6parse2Cs4ZaLwAtrTbk_16deltalake_derive"}
!9 = !{!7, !4}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvYRNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens17into_token_streamCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!12 = distinct !{!12, !"_RNvYRNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens17into_token_streamCs4ZaLwAtrTbk_16deltalake_derive"}
!13 = !{!14, !11}
!14 = distinct !{!14, !15, !"_RNvYRNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens15to_token_streamCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!15 = distinct !{!15, !"_RNvYRNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens15to_token_streamCs4ZaLwAtrTbk_16deltalake_derive"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvYRRNtNtCs7nQiqFc7Txl_3syn4data5FieldNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens17into_token_streamCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!18 = distinct !{!18, !"_RNvYRRNtNtCs7nQiqFc7Txl_3syn4data5FieldNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens17into_token_streamCs4ZaLwAtrTbk_16deltalake_derive"}
!19 = !{!20, !17}
!20 = distinct !{!20, !21, !"_RNvYRRNtNtCs7nQiqFc7Txl_3syn4data5FieldNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens15to_token_streamCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!21 = distinct !{!21, !"_RNvYRRNtNtCs7nQiqFc7Txl_3syn4data5FieldNtNtCsBGNUbrdbJ0_5quote9to_tokens8ToTokens15to_token_streamCs4ZaLwAtrTbk_16deltalake_derive"}
!22 = !{}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE0B1A_: argument 0"}
!25 = distinct !{!25, !"_RNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE0B1A_"}
!26 = !{!27, !24}
!27 = distinct !{!27, !28, !"_RINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00EB2S_: argument 0"}
!28 = distinct !{!28, !"_RINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00EB2S_"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RNvMs_Csl1mHGn7pXMx_12convert_caseINtB4_14StateConverterNtNtCs6Po7BT7Nknu_5alloc6string6StringE7to_caseCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!31 = distinct !{!31, !"_RNvMs_Csl1mHGn7pXMx_12convert_caseINtB4_14StateConverterNtNtCs6Po7BT7Nknu_5alloc6string6StringE7to_caseCs4ZaLwAtrTbk_16deltalake_derive"}
!32 = !{!33, !30}
!33 = distinct !{!33, !34, !"_RINvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB5_9Converter7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!34 = distinct !{!34, !"_RINvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB5_9Converter7convertRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs4ZaLwAtrTbk_16deltalake_derive"}
!35 = !{!36, !33, !30}
!36 = distinct !{!36, !37, !"_RINvNtCsl1mHGn7pXMx_12convert_case8boundary5splitRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!37 = distinct !{!37, !"_RINvNtCsl1mHGn7pXMx_12convert_case8boundary5splitRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs4ZaLwAtrTbk_16deltalake_derive"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSRe6to_vecCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!40 = distinct !{!40, !"_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSRe6to_vecCs4ZaLwAtrTbk_16deltalake_derive"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inReNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!43 = distinct !{!43, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inReNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4ZaLwAtrTbk_16deltalake_derive"}
!44 = !{!42, !39}
!45 = !{!42, !39, !33, !30}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!48 = distinct !{!48, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCs4ZaLwAtrTbk_16deltalake_derive"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!51 = distinct !{!51, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs4ZaLwAtrTbk_16deltalake_derive"}
!52 = distinct !{null}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvXsh_NtCs7nQiqFc7Txl_3syn5parseNvMNtB7_10punctuatedINtBy_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtB5_6Parser6parse2Cs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!55 = distinct !{!55, !"_RNvXsh_NtCs7nQiqFc7Txl_3syn5parseNvMNtB7_10punctuatedINtBy_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtB5_6Parser6parse2Cs4ZaLwAtrTbk_16deltalake_derive"}
!56 = !{!57, !59, !54}
!57 = distinct !{!57, !58, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE16parse_terminatedCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!58 = distinct !{!58, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE16parse_terminatedCs4ZaLwAtrTbk_16deltalake_derive"}
!59 = distinct !{!59, !60, !"_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtNtB7_5parse11ParseBufferEE9call_onceCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!60 = distinct !{!60, !"_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtNtB7_5parse11ParseBufferEE9call_onceCs4ZaLwAtrTbk_16deltalake_derive"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE3newCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!63 = distinct !{!63, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE3newCs4ZaLwAtrTbk_16deltalake_derive"}
!64 = !{!65, !57, !59, !54}
!65 = distinct !{!65, !66, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE21parse_terminated_withCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!66 = distinct !{!66, !"_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE21parse_terminated_withCs4ZaLwAtrTbk_16deltalake_derive"}
end_hunk_1
