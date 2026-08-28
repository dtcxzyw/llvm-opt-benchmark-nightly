Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.12?download=true
begin_hunk_0_@_RNvXsg_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_8PairsMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_8PairsMutNtNtB7_8generics14WherePredicateNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutTNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr align 8 %1)
  call void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQTNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateNtNtBO_5token5CommaEE3mapINtNtBO_10punctuated4PairQBK_QB1v_ENCNvXsg_B1X_INtB1X_8PairsMutBK_B1v_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCs3Eghgi3KVFH_3syn10punctuated4PairQNtNtBN_8generics14WherePredicateQNtNtBN_5token5CommaEE7or_elseNCNvXsg_BL_INtBL_8PairsMutB1n_B1U_ENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_8PairsMutNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBX_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr align 8 %1)
  call void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBO_5token4PlusEE3mapINtNtBO_10punctuated4PairQBK_QB1o_ENCNvXsg_B1P_INtB1P_8PairsMutBK_B1o_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCs3Eghgi3KVFH_3syn10punctuated4PairQNtNtBN_8lifetime8LifetimeQNtNtBN_5token4PlusEE7or_elseNCNvXsg_BL_INtBL_8PairsMutB1n_B1N_ENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsn_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_8IntoIterNtNtB7_8generics14WherePredicateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([360 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !noalias !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !26 ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store ptr %i.f, ptr %i.c, align 8, !noalias !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %i.d, i64 360, i1 false)
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros.exit

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !26
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3Eghgi3KVFH_3syn8generics14WherePredicateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsn_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_8IntoIterNtNtB7_8generics14WherePredicateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 360                 ; 2 uses
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %.val2 = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val3 = load ptr, ptr %i.a, align 8
  %i.b = tail call { ptr, ptr } @_RNvXs_NtCs3Eghgi3KVFH_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefB6_(ptr %.val2, ptr align 8 %.val3) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !21, !nonnull !21
  %i.g = tail call i64 %i.f(ptr %i.c), !inline_history !29
  %.val = load ptr, ptr %1, align 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.h = tail call { ptr, ptr } @_RNvXs_NtCs3Eghgi3KVFH_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefB6_(ptr %.val, ptr align 8 %.val1) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !21, !nonnull !21
  %i.m = tail call i64 %i.l(ptr %i.i), !inline_history !29
  store i64 %i.g, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RNvXst_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_4IterNtNtB7_4data7VariantENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCs3Eghgi3KVFH_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated9IterTraitNtNtB7_4data7VariantEp4ItemRB1d_EL_ENtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mutCshVzvyy7iigg_12salsa_macros(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !21, !nonnull !21
  %i.i = tail call align 8 ptr %i.h(ptr %i.e)
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RNvXst_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_4IterNtNtB7_8lifetime8LifetimeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, ptr } @_RNvXs0_NtCs3Eghgi3KVFH_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated9IterTraitNtNtB7_8lifetime8LifetimeEp4ItemRB1d_EL_ENtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mutCshVzvyy7iigg_12salsa_macros(ptr %i.a, ptr align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !21, !nonnull !21
  %i.i = tail call align 8 ptr %i.h(ptr %i.e)
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXsw_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.b = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBO_5token5CommaEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1U_11PrivateIterBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsw_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, ptr nonnull align 8 %i.c)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXsw_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBU_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.b = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBO_5token4PlusEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1Y_11PrivateIterBK_B1o_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsw_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, ptr nonnull align 8 %i.c)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXsx_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.c = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, ptr align 8 %0)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define internal align 8 ptr @_RNvXsx_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.c = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, ptr align 8 %0)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define internal i64 @_RNvXsy_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3lenCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRNtNtCs3Eghgi3KVFH_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.h)
  %i.j = add i64 %i.g, %i.i
  ret i64 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal i64 @_RNvXsy_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3lenCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.h)
  %i.j = add i64 %i.g, %i.i
  ret i64 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCsRujiHMkeh3_11proc_macro23impNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXs1_NtCsRujiHMkeh3_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nonnull align 4 %i.h), !noalias !30 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !30
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCstuaXukgBIa_10proc_macro9TokenTreeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsRujiHMkeh3_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsRujiHMkeh3_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.d, !noalias !30

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsRujiHMkeh3_11proc_macro2(ptr nonnull align 4 %i.b) #19
          to label %bb.f unwind label %bb.e, !noalias !30

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !30
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCsRujiHMkeh3_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCsRujiHMkeh3_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRNtNtCs3Eghgi3KVFH_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.h)
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c, ptr align 8 %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c, ptr align 8 %0)
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.f = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsx_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.e, ptr align 8 %0)
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %.lr.ph, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %i.c = call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.d = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBO_5token5CommaEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1U_11PrivateIterBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c)
  %i.e = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsw_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.d, ptr nonnull align 8 %i.b) ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1k_4data7VariantNtNtB1k_5token5CommaENtB6_13SpecAdvanceBy15spec_advance_by0CshVzvyy7iigg_12salsa_macros(ptr nonnull %i.a, i64 %.sroa.01.0.i.i, ptr nonnull align 8 %i.e)
  %i.g = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCs3Eghgi3KVFH_3syn(i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.i = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCs3Eghgi3KVFH_3syn(i64 %.sroa.01.0.i.i)
  br label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.d
  %i.j = call i64 @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs3Eghgi3KVFH_3syn()
  br label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit

_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_4data7VariantNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %i.c = call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.d = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBO_5token5CommaEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1U_11PrivateIterBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c)
  %i.e = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsw_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.d, ptr nonnull align 8 %i.b) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1k_4data7VariantNtNtB1k_5token5CommaENtB6_13SpecAdvanceBy15spec_advance_by0CshVzvyy7iigg_12salsa_macros(ptr nonnull %i.a, i64 %.sroa.01.0.i.i.i, ptr nonnull align 8 %i.e)
  %i.g = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCs3Eghgi3KVFH_3syn(i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.i = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCs3Eghgi3KVFH_3syn(i64 %.sroa.01.0.i.i.i)
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.d
  %i.j = call i64 @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs3Eghgi3KVFH_3syn()
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.g

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.a, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit
  %i.k = call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.l = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBO_5token5CommaEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1U_11PrivateIterBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4data7VariantE7or_elseNCNvXsw_NtBN_10punctuatedINtB1z_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.l, ptr nonnull align 8 %i.m)
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread
  %.sroa.0.0 = phi ptr [ %i.n, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread ], [ null, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.h)
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c, ptr align 8 %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c, ptr align 8 %0)
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nonnull align 8 %i.a)
  %i.f = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsx_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.e, ptr align 8 %0)
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %.lr.ph, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_8lifetime8LifetimeNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %i.c = call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBU_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.d = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBO_5token4PlusEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1Y_11PrivateIterBK_B1o_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c)
  %i.e = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsw_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.d, ptr nonnull align 8 %i.b) ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1k_8lifetime8LifetimeNtNtB1k_5token4PlusENtB6_13SpecAdvanceBy15spec_advance_by0CshVzvyy7iigg_12salsa_macros(ptr nonnull %i.a, i64 %.sroa.01.0.i.i, ptr nonnull align 8 %i.e)
  %i.g = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCs3Eghgi3KVFH_3syn(i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.i = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCs3Eghgi3KVFH_3syn(i64 %.sroa.01.0.i.i)
  br label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_8lifetime8LifetimeNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.d
  %i.j = call i64 @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs3Eghgi3KVFH_3syn()
  br label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_8lifetime8LifetimeNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit

_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1i_8lifetime8LifetimeNtNtB1i_5token4PlusENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %i.c = call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBU_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.d = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBO_5token4PlusEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1Y_11PrivateIterBK_B1o_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c)
  %i.e = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsw_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.d, ptr nonnull align 8 %i.b) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB1k_8lifetime8LifetimeNtNtB1k_5token4PlusENtB6_13SpecAdvanceBy15spec_advance_by0CshVzvyy7iigg_12salsa_macros(ptr nonnull %i.a, i64 %.sroa.01.0.i.i.i, ptr nonnull align 8 %i.e)
  %i.g = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCs3Eghgi3KVFH_3syn(i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.i = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCs3Eghgi3KVFH_3syn(i64 %.sroa.01.0.i.i.i)
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.d
  %i.j = call i64 @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs3Eghgi3KVFH_3syn()
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.g

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.a, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit
  %i.k = call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBU_5token4PlusEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0)
  %i.l = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeNtNtBO_5token4PlusEE3mapRBK_NCNvXsw_NtBO_10punctuatedINtB1Y_11PrivateIterBK_B1o_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7or_elseNCNvXsw_NtBN_10punctuatedINtB1E_11PrivateIterBJ_NtNtBN_5token4PlusENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.l, ptr nonnull align 8 %i.m)
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread
  %.sroa.0.0 = phi ptr [ %i.n, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread ], [ null, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated11PrivateIterNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterQNtNtCs3Eghgi3KVFH_3syn4item5FnArgENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.h)
  %i.j = sub i64 0, %i.i
  %i.k = icmp eq i64 %i.g, %i.j
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not11 = icmp eq i64 %1, 0
  br i1 %exitcond.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.012 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterQNtNtCs3Eghgi3KVFH_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a)
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs3Eghgi3KVFH_3syn4item5FnArgE7or_elseNCNvXsG_NtBN_10punctuatedINtB1x_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c, ptr align 8 %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.e = sub i64 %1, %.sroa.01.012
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i3, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.sroa.01.0.i4, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.0.i4 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterQNtNtCs3Eghgi3KVFH_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a)
  %i.d = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs3Eghgi3KVFH_3syn4item5FnArgE7or_elseNCNvXsG_NtBN_10punctuatedINtB1x_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c, ptr align 8 %0)
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.b, %bb.a
  %i.e = tail call align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterQNtNtCs3Eghgi3KVFH_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a)
  %i.f = tail call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs3Eghgi3KVFH_3syn4item5FnArgE7or_elseNCNvXsG_NtBN_10punctuatedINtB1x_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.e, ptr align 8 %0)
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %.lr.ph, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCshVzvyy7iigg_12salsa_macros.exit.thread ], [ null, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %i.c = call align 8 ptr @_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr align 8 %0)
  %i.d = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBO_5token5CommaEE3mapQBK_NCNvXsF_NtBO_10punctuatedINtB1S_14PrivateIterMutBK_B1h_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c)
  %i.e = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs3Eghgi3KVFH_3syn4item5FnArgE7or_elseNCNvXsF_NtBN_10punctuatedINtB1x_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.d, ptr nonnull align 8 %i.b) ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB1k_4item5FnArgNtNtB1k_5token5CommaENtB6_13SpecAdvanceBy15spec_advance_by0CshVzvyy7iigg_12salsa_macros(ptr nonnull %i.a, i64 %.sroa.01.0.i.i, ptr nonnull align 8 %i.e)
  %i.g = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCs3Eghgi3KVFH_3syn(i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.i = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCs3Eghgi3KVFH_3syn(i64 %.sroa.01.0.i.i)
  br label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.d
  %i.j = call i64 @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs3Eghgi3KVFH_3syn()
  br label %_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit

_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %i.c = call align 8 ptr @_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr align 8 %0)
  %i.d = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBO_5token5CommaEE3mapQBK_NCNvXsF_NtBO_10punctuatedINtB1S_14PrivateIterMutBK_B1h_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.c)
  %i.e = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs3Eghgi3KVFH_3syn4item5FnArgE7or_elseNCNvXsF_NtBN_10punctuatedINtB1x_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.d, ptr nonnull align 8 %i.b) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @_RNCNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB1k_4item5FnArgNtNtB1k_5token5CommaENtB6_13SpecAdvanceBy15spec_advance_by0CshVzvyy7iigg_12salsa_macros(ptr nonnull %i.a, i64 %.sroa.01.0.i.i.i, ptr nonnull align 8 %i.e)
  %i.g = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCs3Eghgi3KVFH_3syn(i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.i = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCs3Eghgi3KVFH_3syn(i64 %.sroa.01.0.i.i.i)
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.d
  %i.j = call i64 @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs3Eghgi3KVFH_3syn()
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.g

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.a, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit
  %i.k = call align 8 ptr @_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr align 8 %0)
  %i.l = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBO_5token5CommaEE3mapQBK_NCNvXsF_NtBO_10punctuatedINtB1S_14PrivateIterMutBK_B1h_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = call align 8 ptr @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs3Eghgi3KVFH_3syn4item5FnArgE7or_elseNCNvXsF_NtBN_10punctuatedINtB1x_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECshVzvyy7iigg_12salsa_macros(ptr align 8 %i.l, ptr nonnull align 8 %i.m)
  br label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread
  %.sroa.0.0 = phi ptr [ %i.n, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread ], [ null, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated14PrivateIterMutNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4item5FnArgENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4skipCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr align 8 %2, i64 %3) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.b = call align 8 ptr @_RNvXst_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB7_(ptr align 8 %0) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.c = call i64 @_RNCNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB1k_4path11PathSegmentENtB6_13SpecAdvanceBy15spec_advance_by0CshVzvyy7iigg_12salsa_macros(ptr nonnull %i.a, i64 %.sroa.01.0.i.i.i, ptr nonnull align 8 %i.b)
  %i.d = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCs3Eghgi3KVFH_3syn(i64 %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %.preheader.i.i

bb.c:                                             ; preds = %.preheader.i.i
  %i.f = call i64 @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCs3Eghgi3KVFH_3syn(i64 %.sroa.01.0.i.i.i)
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

bb.d:                                             ; preds = %bb.b
  %i.g = call i64 @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs3Eghgi3KVFH_3syn()
  br label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.e

_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.a, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit
  %i.h = call align 8 ptr @_RNvXst_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB7_(ptr align 8 %0)
  br label %bb.e

bb.e:                                             ; preds = %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread
  %.sroa.0.0 = phi ptr [ %i.h, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread ], [ null, %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB7_4path11PathSegmentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4skipCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr align 8 %2, i64 %3) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated7IterMutNtNtB7_4item5FnArgENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtCs3Eghgi3KVFH_3syn10punctuated7IterMutNtNtB7_4item5FnArgENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byCshVzvyy7iigg_12salsa_macros.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  br label %bb.c
end_hunk_0
