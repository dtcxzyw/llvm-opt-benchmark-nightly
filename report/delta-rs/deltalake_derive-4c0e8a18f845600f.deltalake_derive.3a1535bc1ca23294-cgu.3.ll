inline.NumInlined: 14
inline.NumDeleted: 12
begin_hunk_0_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2g_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Z_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB21_5error5ErrorEENtB2_12IntoIterator9into_iterB2z_(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core3stre5charsCs4ZaLwAtrTbk_16deltalake_derive(ptr %1, i64 %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store ptr %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !18
  %i.e = load ptr, ptr %i.a, align 8, !noalias !18
  %i.f = tail call { i64, i32 } @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !18 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !18
  %i.i = load ptr, ptr %i.a, align 8, !noalias !18
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !18
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !15
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !15
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !24
  %i.e = load ptr, ptr %i.a, align 8, !noalias !24
  %i.f = tail call { i64, i32 } @_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !24 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !24
  %i.i = load ptr, ptr %i.a, align 8, !noalias !24
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !24
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !21
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %1, %3
  br i1 %i.q, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a, %bb.ay, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.g, %bb.ax
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.x, %bb.g ], [ %i.fz, %bb.ax ], [ %i.cu, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit ], [ %i.ga, %bb.ay ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %1, %3
  br i1 %i.s, label %bb.ay, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %1, 33
  br i1 %i.t, label %bb.ah, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = load i8, ptr %0, align 1
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchrCs4ZaLwAtrTbk_16deltalake_derive(i8 %i.u, ptr %2, i64 %3) #15
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = icmp eq i64 %i.w, 1
  br label %bb.c

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.f
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.n, ptr %2, i64 %3, ptr %0, i64 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.y = load i64, ptr %i.n, align 8, !noalias !27
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  br i1 %i.z, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 26 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.an = load i64, ptr %i.am, align 8, !noalias !27
  %i.ao = icmp eq i64 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !27 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !27 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !noalias !27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !noalias !27 ; 2 uses
  br i1 %i.ao, label %bb.af, label %bb.ag

bb.j:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27
  %i.ax = load i64, ptr %i.n, align 8, !noalias !33
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.ai, align 8, !noalias !33
  %i.ba = load i64, ptr %i.ae, align 8, !noalias !33 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %.sink.split.i.i, label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.ab, align 2, !noalias !33
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i8, ptr %i.ac, align 8, !noalias !33 ; 2 uses
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %i.bg = and i8 %i.be, 1
  %i.bh = xor i8 %i.bg, 1
  store i8 %i.bh, ptr %i.ac, align 8, !noalias !33
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !33 ; 5 uses
  %i.bj = load ptr, ptr %i.ad, align 8, !noalias !33 ; 2 uses
  %i.bk = load i64, ptr %i.ae, align 8, !noalias !33 ; 3 uses
  %i.bl = call { ptr, i64 } @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs4ZaLwAtrTbk_16deltalake_derive(i64 %i.bi, ptr %i.bj, i64 %i.bk) #15, !noalias !33 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 3 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store ptr %i.bm, ptr %i.l, align 8, !noalias !33
  store ptr %i.bo, ptr %i.af, align 8, !noalias !33
  %i.bp = call { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.l) #15, !noalias !33 ; 2 uses
  %i.bq = extractvalue { i32, i32 } %i.bp, 0
  %i.br = extractvalue { i32, i32 } %i.bp, 1      ; 3 uses
  %i.bs = trunc i32 %i.bq to i1
  br i1 %i.bs, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr %i.bj, i64 %i.bk, i64 %i.bi, i64 %i.bk, ptr nonnull align 8 @5) #16, !noalias !33
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.bf, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.n
  br i1 %i.bf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.ab, align 2, !noalias !33
  br label %.sink.split.i.i

bb.s:                                             ; preds = %bb.q, %bb.p
  store i64 %i.bi, ptr %i.ag, align 8, !alias.scope !30, !noalias !27
  store i64 %i.bi, ptr %i.ah, align 8, !alias.scope !30, !noalias !27
  br label %.sink.split.i.i

bb.t:                                             ; preds = %bb.p
  %i.bt = icmp ult i32 %i.br, 128
  br i1 %i.bt, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = icmp ult i32 %i.br, 2048
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = icmp ult i32 %i.br, 65536
  %..i.i = select i1 %i.bv, i64 3, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.u ], [ %..i.i, %bb.v ], [ 1, %bb.t ]
  %i.bw = load i64, ptr %i.aa, align 8, !noalias !33
  %i.bx = add i64 %i.bw, %.sroa.01.0.i.i          ; 2 uses
  store i64 %i.bx, ptr %i.aa, align 8, !noalias !33
  store i64 %i.bi, ptr %i.ag, align 8, !alias.scope !30, !noalias !27
  store i64 %i.bx, ptr %i.ah, align 8, !alias.scope !30, !noalias !27
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.w, %bb.s, %bb.r, %bb.l, %bb.k
  %.sink.i.i = phi i64 [ 2, %bb.r ], [ 0, %bb.s ], [ 1, %bb.w ], [ 1, %._crit_edge.i.i ], [ 2, %bb.k ], [ 2, %bb.l ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.m, align 8, !alias.scope !30, !noalias !27
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.x:                                             ; preds = %bb.k
  %i.by = load i64, ptr %i.aj, align 8, !noalias !33
  %i.bz = icmp eq i64 %i.by, -1
  %i.ca = load ptr, ptr %i.ad, align 8, !noalias !33
  %i.cb = load ptr, ptr %i.ak, align 8, !noalias !33
  %i.cc = load i64, ptr %i.al, align 8, !noalias !33
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.aa, ptr %i.ca, i64 %i.ba, ptr %i.cb, i64 %i.cc, i1 zeroext %i.bz) #15, !noalias !27
  %i.cd = load i64, ptr %i.m, align 8, !noalias !27 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.y, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cf = load i64, ptr %i.ag, align 8, !alias.scope !30, !noalias !27
  %i.cg = load i64, ptr %i.ah, align 8, !alias.scope !30, !noalias !27 ; 2 uses
  %i.ch = load ptr, ptr %i.ad, align 8, !noalias !33
  %i.ci = load i64, ptr %i.ae, align 8, !noalias !33 ; 3 uses
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.ab
  %.sroa.02.015.i.i = phi i64 [ %i.cq, %bb.ab ], [ %i.cg, %bb.y ] ; 5 uses
  %.not14.i.i = icmp ult i64 %.sroa.02.015.i.i, %i.ci
  br i1 %.not14.i.i, label %bb.aa, label %bb.z

._crit_edge.i.i:                                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.02.0.lcssa.i.i = phi i64 [ 0, %bb.y ], [ %i.ci, %bb.z ], [ 0, %bb.ab ], [ %.sroa.02.015.i.i, %bb.aa ] ; 2 uses
  %i.ck = load i64, ptr %i.ai, align 8, !noalias !33
  %i.cl = call i64 @_RNvYjNtNtCsbvkFyIu7lgC_4core3cmp3Ord3maxCsbjGuDcEILED_11proc_macro2(i64 %.sroa.02.0.lcssa.i.i, i64 %i.ck) #15, !noalias !27
  store i64 %i.cl, ptr %i.ai, align 8, !noalias !33
  store i64 %i.cf, ptr %i.ag, align 8, !alias.scope !30, !noalias !27
  store i64 %.sroa.02.0.lcssa.i.i, ptr %i.ah, align 8, !alias.scope !30, !noalias !27
  br label %.sink.split.i.i

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.cm = icmp eq i64 %.sroa.02.015.i.i, %i.ci
  br i1 %i.cm, label %._crit_edge.i.i, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.015.i.i
  %i.co = load i8, ptr %i.cn, align 1, !noalias !27
  %i.cp = icmp sgt i8 %i.co, -65
  br i1 %i.cp, label %._crit_edge.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cq = add i64 %.sroa.02.015.i.i, 1            ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.x, %.sink.split.i.i
  %i.cs = phi i64 [ %.sink.i.i, %.sink.split.i.i ], [ %i.cd, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27
  switch i64 %i.cs, label %bb.ac [
    i64 0, label %bb.ad
    i64 1, label %bb.j
    i64 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  unreachable

bb.ad:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  store i64 1, ptr %i.o, align 8, !alias.scope !27
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ae:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  store i64 0, ptr %i.o, align 8, !alias.scope !27
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.af:                                            ; preds = %bb.i
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.aa, ptr %i.aq, i64 %i.as, ptr %i.au, i64 %i.aw, i1 zeroext true) #15
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ag:                                            ; preds = %bb.i
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.aa, ptr %i.aq, i64 %i.as, ptr %i.au, i64 %i.aw, i1 zeroext false) #15
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ct = load i64, ptr %i.o, align 8
  %i.cu = icmp eq i64 %i.ct, 1
  br label %bb.c

bb.ah:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %0, ptr %i.k, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %1, ptr %i.cv, align 8
  %i.cw = load i8, ptr %0, align 1
  store i8 %i.cw, ptr %i.j, align 1
  %i.cx = add nsw i64 %1, -1                      ; 2 uses
  %i.cy = icmp eq i64 %1, 2
  br i1 %i.cy, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  store i64 %i.cz, ptr %i.h, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.da, align 8
  store ptr %0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.db = call { i64, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %bb.ak, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %storemerge.i = phi i64 [ %i.dg, %bb.ak ], [ 1, %bb.ah ] ; 4 uses
  store i64 %storemerge.i, ptr %i.i, align 8
  %i.de = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.df = icmp ult i64 %3, %i.de
  br i1 %i.df, label %bb.aw, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.dg = extractvalue { i64, i64 } %i.db, 1
  br label %bb.aj

bb.al:                                            ; preds = %bb.aj
  %i.dh = load i8, ptr %i.j, align 1
  %i.di = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.dj, ptr %i.f, align 16
  %i.dk = icmp ult i64 %storemerge.i, %1
  br i1 %i.dk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %4 = load ptr, ptr %i.k, align 8                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 %storemerge.i
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.do, ptr %i.e, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 1
  store ptr %2, ptr %i.d, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.dp, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.cx, ptr %i.ds, align 8
  store ptr %2, ptr %i.c, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.dw, align 8
  %i.dx = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.dx, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i4

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 %storemerge.i, i64 range(i64 2, 33) %1, ptr nonnull align 8 @3) #16
  unreachable

.preheader.i4:                                    ; preds = %bb.ar, %bb.am
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.am ], [ %i.ey, %bb.ar ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.am ], [ %.sroa.014.2.3.i, %bb.ar ] ; 2 uses
  %i.dy = add i64 %.sroa.06.0.lcssa.i, %i.de
  %i.dz = icmp uge i64 %i.dy, %3
  %i.ea = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond359.i = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond359.i, label %._crit_edge.i, label %.lr.ph61.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.ar
  %.sroa.06.057.i = phi i64 [ %i.ey, %bb.ar ], [ 0, %bb.am ] ; 6 uses
  %i.eb = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %.sroa.06.057.i) #15 ; 2 uses
  %i.ec = or disjoint i64 %.sroa.06.057.i, 16     ; 2 uses
  %i.ed = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.ec) #15 ; 2 uses
  %i.ee = or disjoint i64 %.sroa.06.057.i, 32     ; 2 uses
  %i.ef = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.ee) #15 ; 2 uses
  %i.eg = or disjoint i64 %.sroa.06.057.i, 48     ; 2 uses
  %i.eh = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.eg) #15 ; 2 uses
  %i.ei = icmp eq i16 %i.eb, 0
  br i1 %i.ei, label %.preheader53.1.i, label %bb.as

.preheader53.1.i:                                 ; preds = %bb.as, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.fd, %bb.as ] ; 2 uses
  %i.ej = icmp eq i16 %i.ed, 0
  br i1 %i.ej, label %.preheader53.2.i, label %bb.ao

bb.ao:                                            ; preds = %.preheader53.1.i
  %i.ek = trunc nuw i8 %.sroa.014.2.i to i1       ; 2 uses
  %i.el = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.ec, i16 %i.ed, i1 zeroext %i.ek) #15
  %i.em = or i1 %i.el, %i.ek
  %i.en = zext i1 %i.em to i8
  br label %.preheader53.2.i

.preheader53.2.i:                                 ; preds = %bb.ao, %.preheader53.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader53.1.i ], [ %i.en, %bb.ao ] ; 2 uses
  %i.eo = icmp eq i16 %i.ef, 0
  br i1 %i.eo, label %.preheader53.3.i, label %bb.ap

bb.ap:                                            ; preds = %.preheader53.2.i
  %i.ep = trunc nuw i8 %.sroa.014.2.1.i to i1     ; 2 uses
  %i.eq = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.ee, i16 %i.ef, i1 zeroext %i.ep) #15
  %i.er = or i1 %i.eq, %i.ep
  %i.es = zext i1 %i.er to i8
  br label %.preheader53.3.i

.preheader53.3.i:                                 ; preds = %bb.ap, %.preheader53.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader53.2.i ], [ %i.es, %bb.ap ] ; 2 uses
  %i.et = icmp eq i16 %i.eh, 0
  br i1 %i.et, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader53.3.i
  %i.eu = trunc nuw i8 %.sroa.014.2.2.i to i1     ; 2 uses
  %i.ev = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.eg, i16 %i.eh, i1 zeroext %i.eu) #15
  %i.ew = or i1 %i.ev, %i.eu
  %i.ex = zext i1 %i.ew to i8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader53.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader53.3.i ], [ %i.ex, %bb.aq ] ; 2 uses
  %i.ey = add i64 %.sroa.06.057.i, 64             ; 3 uses
  %i.ez = add i64 %i.ey, %i.dx
  %i.fa = icmp uge i64 %i.ez, %3
  %i.fb = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %or.cond.i, label %.preheader.i4, label %.lr.ph.i

bb.as:                                            ; preds = %.lr.ph.i
  %i.fc = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %.sroa.06.057.i, i16 %i.eb, i1 zeroext false) #15
  %i.fd = zext i1 %i.fc to i8
  br label %.preheader53.1.i

._crit_edge.i:                                    ; preds = %bb.at, %.preheader.i4
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i4 ], [ %.sroa.014.4.i, %bb.at ]
  %.lcssa.i = phi i1 [ %i.ea, %.preheader.i4 ], [ %i.fn, %bb.at ] ; 2 uses
  %i.fe = sub i64 %3, %i.cx
  %i.ff = add i64 %i.fe, -16                      ; 2 uses
  %i.fg = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.ff) #15 ; 2 uses
  %i.fh = icmp eq i16 %i.fg, 0
  br i1 %i.fh, label %bb.ax, label %bb.av

.lr.ph61.i:                                       ; preds = %.preheader.i4, %bb.at
  %.sroa.06.160.i = phi i64 [ %i.fk, %bb.at ], [ %.sroa.06.0.lcssa.i, %.preheader.i4 ] ; 3 uses
  %i.fi = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %.sroa.06.160.i) #15 ; 2 uses
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.au, %.lr.ph61.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph61.i ], [ %i.fp, %bb.au ] ; 2 uses
  %i.fk = add i64 %.sroa.06.160.i, 16             ; 2 uses
  %i.fl = add i64 %i.fk, %i.de
  %i.fm = icmp uge i64 %i.fl, %3
  %i.fn = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph61.i

bb.au:                                            ; preds = %.lr.ph61.i
  %i.fo = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %.sroa.06.160.i, i16 %i.fi, i1 zeroext false) #15
  %i.fp = zext i1 %i.fo to i8
  br label %bb.at

bb.av:                                            ; preds = %._crit_edge.i
  %i.fq = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.ff, i16 %i.fg, i1 zeroext %.lcssa.i) #15
  %i.fr = or i1 %.lcssa.i, %i.fq
  %i.fs = zext i1 %i.fr to i8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aj
  store ptr %2, ptr %i.g, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %1, ptr %i.fu, align 8
  %i.fv = call zeroext i1 @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.k) #15
  %i.fw = zext i1 %i.fv to i8
  store i8 %i.fw, ptr %i.a, align 1
  %i.fx = call zeroext i1 @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCsbjGuDcEILED_11proc_macro2(ptr nonnull %i.a, ptr nonnull @4) #15
  %i.fy = zext i1 %i.fx to i8
  br label %bb.ax

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.ai
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
  br label %bb.h

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i, %bb.av
  %.sroa.0.0.i.ph = phi i8 [ %i.fs, %bb.av ], [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.fy, %bb.aw ]
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
  %i.fz = trunc nuw i8 %.sroa.0.0.i.ph to i1
  br label %bb.c

bb.ay:                                            ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.ga = icmp eq i32 %bcmp, 0
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvXso_NtCsbvkFyIu7lgC_4core6resultINtB8_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B21_EE9from_iterINtNtNtB2H_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterRNtNtB25_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EE0B5d_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1Y_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #6

end_hunk_0
