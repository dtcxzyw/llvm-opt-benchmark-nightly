Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.15?download=true
inline.NumInlined: 907
inline.NumDeleted: 496
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide:bb.a
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 44
  %i.b = load i8, ptr %i.a, align 4, !range !1367, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 44
  %i.d = load i8, ptr %i.c, align 4, !range !1367, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.f, ptr noundef nonnull align 4 %i.g), !inline_history !2240
  br i1 %i.h, label %bb.c, label %_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.j = load i32, ptr %i.i, align 8, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 36
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val1, i64 36
  %i.q = load i32, ptr %i.p, align 4, !noundef !3
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.v) #32, !inline_history !2240
  br i1 %i.w, label %bb.f, label %_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCskEUeM34gmJU_6ty_ide(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ad, i64 noundef %i.y), !inline_history !2240
  br label %_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsgs_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i = phi i1 [ %i.ag, %bb.g ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr %.0.val, ptr %.0.val1) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b), !inline_history !2241
  br i1 %i.c, label %bb.b, label %_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.0.val, align 8, !nonnull !3, !noundef !3
  %i.o = load ptr, ptr %.0.val1, align 8, !nonnull !3, !noundef !3
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.o) #32, !inline_history !2241
  br i1 %i.p, label %bb.e, label %_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull align 8 %i.t) #32, !inline_history !2241
  br i1 %i.u, label %bb.f, label %_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val1, i64 28
  %.val.i = load i8, ptr %i.v, align 4, !range !1551, !noundef !3
  %.val1.i = load i8, ptr %i.w, align 4, !range !1551, !noundef !3
  %i.x = icmp eq i8 %.val.i, %.val1.i
  br label %_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXshI_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprSubscriptNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i1 [ %i.x, %bb.f ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprYieldFromNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr %.0.val, ptr %.0.val1) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b), !inline_history !2242
  br i1 %i.c, label %bb.b, label %_RNvXsgH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprYieldFromNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXsgH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprYieldFromNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXsgH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprYieldFromNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.0.val, align 8, !nonnull !3, !noundef !3
  %i.o = load ptr, ptr %.0.val1, align 8, !nonnull !3, !noundef !3
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.o) #32, !inline_history !2242
  br label %_RNvXsgH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprYieldFromNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsgH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_13ExprYieldFromNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.p, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprNumberLiteralNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr %.0.val, ptr %.0.val1) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  %i.n = load i64, ptr %.0.val, align 8, !range !611, !alias.scope !2243, !noalias !2246, !noundef !3 ; 2 uses
  %i.o = load i64, ptr %.0.val1, align 8, !range !611, !alias.scope !2246, !noalias !2243, !noundef !3
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2243, !noalias !2246, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val2.i.i = load i64, ptr %i.s, align 8, !alias.scope !2243, !noalias !2246 ; 3 uses
  %.val3.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2246, !noalias !2243, !noundef !3 ; 3 uses
  %0 = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %.val4.i.i = load i64, ptr %0, align 8, !alias.scope !2246, !noalias !2243 ; 2 uses
  %i.t = icmp ne ptr %.val.i.i, null              ; 2 uses
  %i.u = icmp eq ptr %.val3.i.i, null             ; 3 uses
  %not..i.i.i = xor i1 %i.u, true
  %i.v = xor i1 %i.t, %i.u
  br i1 %i.v, label %1, label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

1:                                                ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %1
  tail call void @llvm.assume(i1 %not..i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  %i.w = icmp eq i64 %.val2.i.i, %.val4.i.i
  br i1 %i.w, label %bb.i, label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %1
  tail call void @llvm.assume(i1 %i.u)
  %2 = icmp eq i64 %.val2.i.i, %.val4.i.i
  br label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val3.i.i, i64 %.val2.i.i), !noalias !2248
  %i.x = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load double, ptr %i.q, align 8, !alias.scope !2243, !noalias !2246, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !2246, !noalias !2243, !noundef !3
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.e
  %i.ac = load double, ptr %i.q, align 8, !alias.scope !2243, !noalias !2246, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !2246, !noalias !2243, !noundef !3
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !2243, !noalias !2246, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !2246, !noalias !2243, !noundef !3
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br label %_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.k ], [ %i.ab, %bb.j ], [ %i.ak, %bb.l ], [ false, %bb.d ], [ %i.x, %bb.i ], [ false, %bb.f ], [ %2, %bb.h ], [ false, %bb.g ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprStringLiteralNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr %.0.val, ptr %.0.val1) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 56
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 52
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %.0.val, align 8, !range !47, !noundef !3
  %i.o = icmp ne i64 %i.n, -1                     ; 2 uses
  %i.p = load i64, ptr %.0.val1, align 8, !range !47, !noundef !3
  %i.q = icmp eq i64 %i.p, -1                     ; 3 uses
  %not..i.i = xor i1 %i.q, true
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %not..i.i)
  %i.s = tail call noundef zeroext i1 @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %.0.val, ptr noundef nonnull align 8 %.0.val1)
  br label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.q)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.w = load i32, ptr %i.v, align 8, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.y = load i32, ptr %i.x, align 8, !noundef !3
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val1, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !3
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.i, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.ah = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.af, ptr noundef nonnull align 4 %i.ag)
  br i1 %i.ah, label %bb.j, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.ao = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.an, i64 %i.aj)
  %i.ap = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ap, label %bb.l, label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 36
  %i.ar = load i8, ptr %i.aq, align 4, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val1, i64 36
  %i.at = load i8, ptr %i.as, align 4, !noundef !3
  %i.au = icmp eq i8 %i.ar, %i.at
  br label %_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsh6_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.s, %bb.f ], [ false, %bb.d ], [ %i.au, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated18ExprBooleanLiteralNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr %.0.val, ptr %.0.val1) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !1367, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !1367, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %.0.val, ptr noundef nonnull align 4 %.0.val1)
  br i1 %i.f, label %bb.c, label %_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = icmp eq i32 %i.m, %i.o
  br label %_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.p, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr %.0.val, ptr %.0.val1) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 28
  %i.o = load i8, ptr %i.n, align 4, !range !2249, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val1, i64 28
  %i.q = load i8, ptr %i.p, align 4, !range !2249, !noundef !3
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %.0.val1, align 8, !nonnull !3, !noundef !3
  %i.y = load ptr, ptr %.0.val, align 8, !nonnull !3, !noundef !3
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.x, i64 %i.t)
  %i.z = icmp eq i32 %bcmp.i, 0
  br label %_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i1 [ %i.z, %bb.f ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated6ExprIfNtB7_9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr %.0.val, ptr %.0.val1) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b), !inline_history !2250
  br i1 %i.c, label %bb.b, label %_RNvXsfY_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

end_hunk_0
begin_hunk_1_@_RNvXshN_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprStarredNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.o = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.o)
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val = load i8, ptr %i.q, align 4, !range !1551, !noundef !3
  %.val1 = load i8, ptr %i.r, align 4, !range !1551, !noundef !3
  %i.s = icmp eq i8 %.val, %.val1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.s, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshS_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.o = load i8, ptr %i.n, align 1, !range !104, !alias.scope !2305, !noalias !2303, !noundef !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2305, !noalias !2303, !noundef !3
  %i.r = and i64 %i.q, 72057594037927935
  %i.s = icmp ult i8 %i.o, -48
  %i.t = zext i8 %i.o to i64
  %i.u = add nsw i64 %i.t, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 16)
  %.sroa.0.0.i.i = select i1 %i.s, i64 %spec.store.select.i.i, i64 %i.r ; 2 uses
  %i.v = icmp ugt i8 %i.o, -49
  %i.w = load ptr, ptr %0, align 8, !alias.scope !2305, !noalias !2303
  %.sroa.01.0.i.i = select i1 %i.v, ptr %i.w, ptr %0 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.y = load i8, ptr %i.x, align 1, !range !104, !alias.scope !2308, !noalias !2300, !noundef !3 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2308, !noalias !2300, !noundef !3
  %i.ab = and i64 %i.aa, 72057594037927935
  %i.ac = icmp ult i8 %i.y, -48
  %i.ad = zext i8 %i.y to i64
  %i.ae = add nsw i64 %i.ad, -192
  %spec.store.select.i4.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 16)
  %.sroa.0.0.i5.i = select i1 %i.ac, i64 %spec.store.select.i4.i, i64 %i.ab
  %i.af = icmp ugt i8 %i.y, -49
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !2308, !noalias !2300
  %.sroa.01.0.i6.i = select i1 %i.af, ptr %i.ag, ptr %1 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.0.i.i, %.sroa.0.0.i5.i
  br i1 %i.ah, label %bb.e, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp eq ptr %.sroa.01.0.i.i, %.sroa.01.0.i6.i
  br i1 %i.ai, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit: ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i, ptr %.sroa.01.0.i6.i, i64 %.sroa.0.0.i.i)
  %i.aj = icmp eq i32 %bcmp.i, 0
  br i1 %i.aj, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread: ; preds = %bb.e, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !range !1551, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load i8, ptr %i.am, align 4, !range !1551, !noundef !3
  %i.ao = icmp eq i8 %i.al, %i.an
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2: ; preds = %bb.d, %bb.c, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit, %bb.a, %bb.b, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread
  %.sroa.0.0 = phi i1 [ %i.ao, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread ], [ false, %bb.b ], [ false, %bb.a ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshX_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprListNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !3
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCskEUeM34gmJU_6ty_ide(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.o)
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i8, ptr %i.x, align 4, !range !1551, !noundef !3
  %.val1 = load i8, ptr %i.y, align 4, !range !1551, !noundef !3
  %i.z = icmp eq i8 %.val, %.val1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.a, %bb.b, %bb.d, %bb.f
  %.sroa.0.0 = phi i1 [ %i.z, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCskEUeM34gmJU_6ty_ide(ptr noundef %i.a, ptr noundef %i.d, i64 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !noundef !3
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noundef !3
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %2 = xor i1 %i.q, true
  tail call void @llvm.assume(i1 %2)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !noundef !3
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !noundef !3
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ah, ptr noundef nonnull align 4 %i.ai)
  br i1 %i.aj, label %bb.j, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !3
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.ap, i64 %i.al)
  %i.ar = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ar, label %bb.l, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i8, ptr %i.as, align 4, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.av = load i8, ptr %i.au, align 4, !noundef !3
  %i.aw = icmp eq i8 %i.at, %i.av
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !3, !noundef !3
  %i.bb = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralINtB5_14SlicePartialEqBC_E17equal_same_lengthCskEUeM34gmJU_6ty_ide(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, i64 noundef %i.t)
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bb, %bb.m ], [ false, %bb.d ], [ false, %bb.f ], [ %i.aw, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %i.n = load i64, ptr %0, align 8, !range !611, !alias.scope !2311, !noalias !2314, !noundef !3 ; 2 uses
  %i.o = load i64, ptr %1, align 8, !range !611, !alias.scope !2314, !noalias !2311, !noundef !3
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !2311, !noalias !2314, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.s, align 8, !alias.scope !2311, !noalias !2314 ; 3 uses
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !2314, !noalias !2311, !noundef !3 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !2314, !noalias !2311 ; 2 uses
  %i.t = icmp ne ptr %.val.i, null                ; 2 uses
  %i.u = icmp eq ptr %.val3.i, null               ; 3 uses
  %not..i.i = xor i1 %i.u, true
  %i.v = xor i1 %i.t, %i.u
  br i1 %i.v, label %3, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

3:                                                ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %3
  tail call void @llvm.assume(i1 %not..i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  %i.w = icmp eq i64 %.val2.i, %.val4.i
  br i1 %i.w, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %3
  tail call void @llvm.assume(i1 %i.u)
  %4 = icmp eq i64 %.val2.i, %.val4.i
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !2316
  %i.x = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load double, ptr %i.q, align 8, !alias.scope !2311, !noalias !2314, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !2314, !noalias !2311, !noundef !3
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.e
  %i.ac = load double, ptr %i.q, align 8, !alias.scope !2311, !noalias !2314, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !2314, !noalias !2311, !noundef !3
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !2311, !noalias !2314, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !2314, !noalias !2311, !noundef !3
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.k ], [ %i.ab, %bb.j ], [ %i.ak, %bb.l ], [ false, %bb.d ], [ %i.x, %bb.i ], [ false, %bb.f ], [ %4, %bb.h ], [ false, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !1367, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !1367, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.p, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = icmp eq i32 %i.m, %i.o
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !range !1367, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !range !1367, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.f, ptr noundef nonnull align 4 %i.g)
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !noundef !3
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCskEUeM34gmJU_6ty_ide(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t)
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.val = load i8, ptr %i.ac, align 1, !range !1551, !noundef !3
  %.val1 = load i8, ptr %i.ad, align 1, !range !1551, !noundef !3
  %i.ae = icmp eq i8 %.val, %.val1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.a, %bb.b, %bb.c, %bb.e, %bb.g
  %.sroa.0.0 = phi i1 [ %i.ae, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !noundef !3
  %i.e = load i32, ptr %1, align 8, !noundef !3
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !43, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !align !43, !noundef !3 ; 2 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.k, label %.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.g, label %bb.k

.split:                                           ; preds = %bb.e
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.o)
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.split, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !align !43, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !align !43, !noundef !3 ; 2 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.k, label %.split8

bb.i:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.k

.split8:                                          ; preds = %bb.h
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u)
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split8, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !align !43, !noundef !3 ; 2 uses
  %.not6 = icmp eq ptr %i.y, null                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !align !43, !noundef !3 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.ab
  %.mux = and i1 %.not6, %i.ab
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.split8, %.split, %bb.c, %bb.f, %bb.i, %bb.a, %bb.b, %bb.e, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.ac, %bb.l ], [ false, %bb.c ], [ false, %.split8 ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ], [ %.mux, %bb.j ], [ false, %.split ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.aa)
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
end_hunk_1
