Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.14?download=true
inline.NumInlined: 8769
inline.NumDeleted: 4183
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtB1l_14StaticMroErrorEEEB1p_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  %i.f = add nsw i64 %i.a, -2
  %i.g = icmp samesign ugt i64 %i.a, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 4
  switch i64 %i.h, label %bb.e [
    i64 0, label %bb.g
    i64 1, label %bb.i
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i
    i64 3, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !2941, !noundef !22 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !2941, !nonnull !22, !noundef !22
  %i.l = shl nuw nsw i64 %.val1.i.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 4) #49, !noalias !2941
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !2941, !noundef !22 ; 2 uses
  %i.n = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !2941, !nonnull !22, !noundef !22
  %i.p = mul nuw nsw i64 %.val3.i.i.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef 8) #49, !noalias !2941
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i

bb.i:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2941, !nonnull !22, !noundef !22 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !2941, !noundef !22 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  %i.s = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBH_.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.u, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBH_.exit.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %.val4.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 24
  %.val9.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !2942, !noalias !2941, !noundef !22 ; 2 uses
  %i.w = icmp eq i64 %.val9.i.i.i.i.i, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBH_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.t, i64 16
  %.val8.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2942, !noalias !2941, !nonnull !22, !noundef !22
  %i.y = shl nuw nsw i64 %.val9.i.i.i.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef 8) #49, !noalias !2943
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBH_.exit.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBH_.exit.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %i.z = icmp eq i64 %i.u, %.val5.i.i.i
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBI_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBI_.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBH_.exit.i.i.i.i.i
  %i.aa = mul nuw nsw i64 %.val5.i.i.i, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef 8) #49, !noalias !2941
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEBI_.exit.i.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load i64, ptr %i.ab, align 8, !alias.scope !2944, !noundef !22 ; 2 uses
  %i.ac = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtBZ_14StaticMroErrorEEB13_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit.sink.split.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i, %bb.c
  %.sink3.i = phi i64 [ 8, %bb.c ], [ 32, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i ]
  %.val1.i.sink.i = phi i64 [ %.val1.i, %bb.c ], [ %.val1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3.i
  %.val.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2938, !nonnull !22, !noundef !22
  %i.ae = shl nuw nsw i64 %.val1.i.sink.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef 4) #49, !noalias !2938
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtBZ_14StaticMroErrorEEB13_.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtB1l_15DynamicMroErrorEEEB1p_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !noundef !22 ; 3 uses
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtBZ_15DynamicMroErrorEEB13_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtBZ_15DynamicMroErrorEEB13_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit.sink.split.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2951)
  %i.c = icmp eq i64 %i.a, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !2951, !noundef !22 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtBZ_15DynamicMroErrorEEB13_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit.sink.split.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  switch i64 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i [
    i64 0, label %bb.e
    i64 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !2954, !noundef !22 ; 2 uses
  %i.g = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2954, !nonnull !22, !noundef !22
  %i.i = mul nuw nsw i64 %.val3.i.i.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #49, !noalias !2954
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !2954, !noundef !22 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !2954, !nonnull !22, !noundef !22
  %i.m = shl nuw nsw i64 %.val1.i.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 4) #49, !noalias !2954
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.n, align 8, !alias.scope !2955, !noundef !22 ; 2 uses
  %i.o = icmp eq i64 %.val1.i.i, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtBZ_15DynamicMroErrorEEB13_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit.sink.split.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i, %bb.c
  %.sink2.i = phi i64 [ 8, %bb.c ], [ 24, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i ]
  %.val1.i.sink.i = phi i64 [ %.val1.i, %bb.c ], [ %.val1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro19DynamicMroErrorKindEBH_.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2.i
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !2951, !nonnull !22, !noundef !22
  %i.q = shl nuw nsw i64 %.val1.i.sink.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef 4) #49, !noalias !2951
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroNtBZ_15DynamicMroErrorEEB13_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtB12_5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEEB2m_(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  %cond = icmp eq i64 %.8.val, 0
  %or.cond = select i1 %i.a, i1 true, i1 %cond
  br i1 %or.cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtBG_5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1Z_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtBG_5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1Z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1C_.exit.i.i, %bb.a
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1C_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i
  %.sroa.0.0.i.i.i13 = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [120 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i.i13 ; 3 uses
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i.i13, 1    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.body.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph15
  %i.j = add nuw nsw i64 %.sroa.0.1.i.i.i14, 1    ; 2 uses
  %i.k = icmp eq i64 %i.j, %.8.val
  br i1 %i.k, label %.body.i.i, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.f, %bb.b ]
  %i.m = icmp eq i64 %i.d, %.8.val
  br i1 %i.m, label %.body.i.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i.i, %bb.d
  %.sroa.0.1.i.i.i14 = phi i64 [ %i.j, %bb.d ], [ %i.d, %.body.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i.i14
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_(ptr noalias noundef align 8 dereferenceable(120) %i.n) #51
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph15
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

.body.i.i:                                        ; preds = %bb.d, %.body.i.i.i
  %i.p = mul nuw nsw i64 %.8.val, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef 8) #49
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1C_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i
  %i.q = mul nuw nsw i64 %.8.val, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef 8) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtBG_5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1Z_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEEB2r_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEEB2t_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #51
          to label %common.resume.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB20_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEEB2r_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEEB2t_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #51
          to label %common.resume.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB20_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1i_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1i_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic15TypeTransformerNtB1A_19ApplyTypeMappingTagEEEEB1C_(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic15TypeTransformerNtB1e_19ApplyTypeMappingTagEEEB1g_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationj3_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationj3_EEEB1C_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  %i.e = load i32, ptr %i.d, align 8, !range !66, !alias.scope !2970, !noundef !22 ; 2 uses
  %i.f = icmp ne i32 %i.e, 39
  tail call void @llvm.assume(i1 %i.f)
  %switch.i.i.i.i.i = icmp samesign ult i32 %i.e, 40
  br i1 %switch.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationj3_EEEB1C_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  %i.i = load i32, ptr %i.h, align 8, !range !66, !alias.scope !2971, !noundef !22 ; 2 uses
  %i.j = icmp ne i32 %i.i, 39
  tail call void @llvm.assume(i1 %i.j)
  %switch.i.i.i1.i.i = icmp samesign ult i32 %i.i, 40
  br i1 %switch.i.i.i1.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic15TypeTransformerNtB1e_19ApplyTypeMappingTagEEEB1g_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationj3_EEEB1C_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic15TypeTransformerNtB1e_19ApplyTypeMappingTagEEEB1g_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.c, %bb.e ], [ %i.c, %bb.d ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 184, i64 noundef 8) #49
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic15TypeTransformerNtB1e_19ApplyTypeMappingTagEEEB1g_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationj3_EEEB1C_.exit.i.i, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 184, i64 noundef 8) #49
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ScopeInferenceExtraEEEB1B_(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ScopeInferenceExtraEEB1f_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ScopeInferenceExtraEBH_(ptr noalias noundef nonnull align 8 dereferenceable(168) %.0.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ScopeInferenceExtraEEB1f_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 168, i64 noundef 8) #49
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ScopeInferenceExtraEEB1f_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 168, i64 noundef 8) #49
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEEEB1E_(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  %i.b = icmp eq i64 %.8.val, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEEB1i_.exit, label %.lr.ph.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEEB1i_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBK_.exit.i, %bb.a
  ret void

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.g = load i8, ptr %i.f, align 1, !range !29, !alias.scope !3003, !noundef !22
  %i.h = and i8 %i.g, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.h, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !3005, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.i = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !3006
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit.i.i, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit.i.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.d, %.8.val
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBK_.exit.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.d, %.8.val
  br i1 %i.m, label %.loopexit.i, label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit11.i.i
  %.sroa.0.113.i.i = phi i64 [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit11.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.113.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.113.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %i.r = load i8, ptr %i.q, align 1, !range !29, !alias.scope !3012, !noundef !22
  %i.s = and i8 %i.r, -2
  %switch.i.i.i.i.i7.i.i = icmp eq i8 %i.s, -48
  br i1 %switch.i.i.i.i.i7.i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit11.i.i

bb.e:                                             ; preds = %.lr.ph15.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013)
  %.pn.i.i.i.i.i.i8.i.i = load ptr, ptr %i.p, align 8, !alias.scope !3014, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i9.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i8.i.i, i64 -8
  %i.t = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i9.i.i, i64 1 release, align 8, !noalias !3015
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit11.i.i, !prof !23

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit11.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit11.i.i: ; preds = %bb.f, %bb.e, %.lr.ph15.i.i
  %i.v = icmp eq i64 %i.o, %.8.val
  br i1 %i.v, label %.loopexit.i, label %.lr.ph15.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBK_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit.i.i
  %i.x = mul nuw nsw i64 %.8.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef 8) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEEB1i_.exit

.loopexit.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support13UnusedBindingEBJ_.exit11.i.i, %bb.d
  %i.y = mul nuw nsw i64 %.8.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef 8) #49
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1w_14semantic_model31ExpectedStringLiteralCompletionEEKj1_EEEB1w_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !22
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1a_14semantic_model31ExpectedStringLiteralCompletionEEKj1_EEB1a_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1a_14semantic_model31ExpectedStringLiteralCompletionEEKj1_EEB1a_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3024, !noundef !22 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3024, !noundef !22 ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1a_14semantic_model31ExpectedStringLiteralCompletionEEKj1_EEB1a_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = sub nuw i64 %i.f, %i.d                   ; 3 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.d ; 2 uses
  br label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i
  %i.k = icmp eq i64 %i.m, %i.i
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1a_14semantic_model31ExpectedStringLiteralCompletionEEKj1_EEB1a_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i.i.i.i15
  %i.m = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i15, 1 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph17
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i16, 1 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %._crit_edge, label %.lr.ph17

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.g, %bb.d
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.o, %bb.d ]
  %i.t = icmp eq i64 %i.m, %i.i
  br i1 %i.t, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i.i.i.i.i.i, %bb.f
  %.sroa.0.1.i.i.i.i.i.i.i16 = phi i64 [ %i.q, %bb.f ], [ %i.m, %.body.i.i.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i.i.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_(ptr noalias noundef align 8 dereferenceable(40) %i.u) #51
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i.i.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph17
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdbMkb98Dhky_7tracing4span5InnerEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !67, !noundef !22 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdbMkb98Dhky_7tracing4span5InnerECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdbMkb98Dhky_7tracing4span5InnerECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdbMkb98Dhky_7tracing4span5InnerECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3040, !nonnull !22, !noundef !22
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !3040
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdbMkb98Dhky_7tracing4span5InnerECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdbMkb98Dhky_7tracing4span5InnerECsoTR8nlGN3X_18ty_python_semantic.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression12SuppressionsEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression12SuppressionsEBF_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val6.i = load i64, ptr %i.e, align 8, !alias.scope !3043, !noundef !22 ; 2 uses
  %i.f = icmp eq i64 %.val6.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5.i = load ptr, ptr %i.g, align 8, !alias.scope !3043, !nonnull !22, !noundef !22
  %i.h = shl nuw nsw i64 %.val6.i, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 8) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4.i = load i64, ptr %i.i, align 8, !alias.scope !3043, !noundef !22 ; 2 uses
  %i.j = icmp eq i64 %.val4.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit7.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !3043, !nonnull !22, !noundef !22
  %i.l = shl nuw nsw i64 %.val4.i, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 8) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit7.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit.i: ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) #51
          to label %.body.i unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit7.i: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_EEB1f_.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit7.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
          to label %.body.i unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit7.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

.body.i:                                          ; preds = %bb.j, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit.i
  %.pn2.i = phi { ptr, i32 } [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit.i ], [ %i.p, %bb.j ], [ %i.m, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.o) #51
          to label %common.resume.i unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression12SuppressionsEBF_.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

common.resume.i:                                  ; preds = %bb.k, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn2.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalIndexEBF_.exit.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression12SuppressionsEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18UnknownSuppressionEEB1b_.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression18InvalidSuppressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5place22LoopHeaderReachabilityEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5place22LoopHeaderReachabilityEBF_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) #51
          to label %common.resume.i.i.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5place22LoopHeaderReachabilityEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %common.resume.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5place22LoopHeaderReachabilityEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !67, !noundef !22 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit: ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3072, !noundef !22 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !3073
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3077, !nonnull !22, !noundef !22
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !3078
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !3082, !nonnull !22, !noundef !22
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !3083
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10PathBoundsEEB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !22 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10PathBoundsEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10PathBoundsEBH_.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1h_.exit.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  %switch.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10PathBoundsEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !3088, !nonnull !22, !noundef !22 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !3088, !noundef !22 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  %cond = icmp eq i64 %.val1.i, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10PathBoundsEBH_.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %.val1.i
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1h_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i1 = phi i64 [ %i.g, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i1 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i.i1, 1     ; 4 uses
  %.val8.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3089, !noalias !3088, !nonnull !22, !noundef !22
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !3089, !noalias !3088, !noundef !22
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr nonnull %.val8.i.i.i, i64 %.val9.i.i.i)
          to label %bb.d unwind label %bb.f, !noalias !3090

bb.e:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i.i2, 1     ; 2 uses
  %i.j = icmp eq i64 %i.i, %.val1.i
  br i1 %i.j, label %.body.i.i, label %.lr.ph3

bb.f:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %.val1.i
  br i1 %i.l, label %.body.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.i, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i2 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !3089, !noalias !3088, !nonnull !22, !noundef !22
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val7.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !3089, !noalias !3088, !noundef !22
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr nonnull %.val.i.i.i, i64 %.val7.i.i.i) #51
          to label %bb.e unwind label %bb.g, !noalias !3090

bb.g:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3090
  unreachable

.body.i.i:                                        ; preds = %bb.e, %bb.f
  %i.p = shl nuw nsw i64 %.val1.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef 8) #49, !noalias !3088
  resume { ptr, i32 } %i.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1h_.exit.i.i: ; preds = %bb.d
  %i.q = shl nuw nsw i64 %.val1.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef 8) #49, !noalias !3088
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10PathBoundsEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !22
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3101, !noundef !22 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !3102
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !30, !noundef !22
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEBH_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.e = load i8, ptr %i.d, align 1, !range !29, !alias.scope !3123, !noundef !22
  %i.f = and i8 %i.e, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.f, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEBH_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3124)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !3125, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.g = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !3125
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEBH_.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ExpressionInferenceEEB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !22  ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ExpressionInferenceEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ExpressionInferenceEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer24ExpressionInferenceExtraEEB1f_.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !3128, !noundef !22 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw nsw i64 %.val1.i, 20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef 4) #49, !noalias !3128
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !3128, !align !25, !noundef !22 ; 4 uses
  %i.g = icmp eq ptr %.val2.i, null
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ExpressionInferenceEBH_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer24ExpressionInferenceExtraEBH_(ptr noalias noundef nonnull align 8 dereferenceable(184) %.val2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer24ExpressionInferenceExtraEEB1f_.exit.i.i unwind label %bb.e, !noalias !3128

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 184, i64 noundef 8) #49, !noalias !3128
  resume { ptr, i32 } %i.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer24ExpressionInferenceExtraEEB1f_.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 184, i64 noundef 8) #49, !noalias !3128
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19ExpressionInferenceEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer26FunctionDecoratorInferenceEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer26FunctionDecoratorInferenceEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val8.i = load i64, ptr %i.c, align 8, !alias.scope !3131, !noundef !22 ; 2 uses
  %i.d = icmp eq i64 %.val8.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val7.i = load ptr, ptr %i.e, align 8, !alias.scope !3131, !nonnull !22, !noundef !22
  %i.f = mul nuw nsw i64 %.val8.i, 20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef 4) #49, !noalias !3131
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i: ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val4.i = load i64, ptr %i.g, align 8, !alias.scope !3131, !noundef !22 ; 2 uses
  %i.h = icmp eq i64 %.val4.i, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit13.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !3131, !nonnull !22, !noundef !22
  %i.j = mul nuw nsw i64 %.val4.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 4) #49, !noalias !3131
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit13.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit13.i: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtNtBG_7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB2e_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val10.i = load i64, ptr %i.k, align 8, !alias.scope !3131, !noundef !22 ; 2 uses
  %i.l = icmp eq i64 %.val10.i, 0
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEEB1g_.exit14.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit13.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val9.i = load ptr, ptr %i.m, align 8, !alias.scope !3131, !nonnull !22, !noundef !22
  %i.n = shl nuw nsw i64 %.val10.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef 4) #49, !noalias !3131
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEEB1g_.exit14.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEEB1g_.exit14.i: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit13.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEEB1g_.exit14.i
  %i.o = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternSuccessTypesEEB13_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternSuccessTypesEBH_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.c, align 8, !noundef !22 ; 2 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternSuccessTypesEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.e, align 8, !nonnull !22, !noundef !22
  %i.f = mul nuw nsw i64 %.val1, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef 4) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternSuccessTypesEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow30ExpressionNarrowingConstraintsEEB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !22
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow30ExpressionNarrowingConstraintsEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  %.val4.i = load ptr, ptr %i.c, align 8, !alias.scope !3134, !align !25, !noundef !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !3134
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtB12_5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEEB2m_(ptr %.val4.i, i64 %.val5.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow30ExpressionNarrowingConstraintsEBH_.exit unwind label %bb.d, !noalias !3134

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !3134, !align !25, !noundef !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.g, align 8, !alias.scope !3134
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtB12_5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEEB2m_(ptr %.val2.i, i64 %.val3.i) #51
          to label %bb.f unwind label %bb.e, !noalias !3134

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3134
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow30ExpressionNarrowingConstraintsEBH_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !3134, !align !25, !noundef !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !3134
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2O29vuvTAEJ_14ty_python_core6frozen9FrozenMapNtNtB12_5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEEB2m_(ptr %.val.i, i64 %.val1.i), !noalias !3134
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal14OwnClassFieldsEEB15_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal14OwnClassFieldsEBJ_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEEB2t_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) #51
          to label %.body.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB20_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB23_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB23_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal14OwnClassFieldsEBJ_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB23_.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !3137, !nonnull !22, !noundef !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i = load i64, ptr %i.j, align 8, !alias.scope !3137, !noundef !22
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic(ptr nonnull %.val2.i, i64 %.val3.i) #51
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.j:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal14OwnClassFieldsEBJ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB23_.exit.i.i
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !3137, !nonnull !22, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.l, align 8, !alias.scope !3137, !noundef !22
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic(ptr nonnull %.val.i, i64 %.val1.i)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums19EnumClassKeyProfileEEB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !range !31, !noundef !22
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums19EnumClassKeyProfileEBJ_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums19EnumClassKeyProfileEBJ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1O_.exit.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !22, !noundef !22 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.d, align 8, !noundef !22 ; 6 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums19EnumClassKeyProfileEBJ_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit.i.i.i
  %.sroa.0.012.i.i.i = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.012.i.i.i ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.012.i.i.i, 1    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3168)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.i = load i8, ptr %i.h, align 1, !range !29, !alias.scope !3169, !noundef !22
  %i.j = and i8 %i.i, -2
  %switch.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, -48
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  %.pn.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3171, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 -8
  %i.k = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !3172
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit.i.i.i, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit.i.i.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.m = icmp eq i64 %i.g, %.val1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1O_.exit.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.g, %.val1
  br i1 %i.o, label %.loopexit.i.i, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit11.i.i.i
  %.sroa.0.113.i.i.i = phi i64 [ %i.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit11.i.i.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.113.i.i.i ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.0.113.i.i.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3177)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.s = load i8, ptr %i.r, align 1, !range !29, !alias.scope !3178, !noundef !22
  %i.t = and i8 %i.s, -2
  %switch.i.i.i.i.i7.i.i.i = icmp eq i8 %i.t, -48
  br i1 %switch.i.i.i.i.i7.i.i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit11.i.i.i

bb.f:                                             ; preds = %.lr.ph15.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  %.pn.i.i.i.i.i.i8.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !3180, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i9.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i8.i.i.i, i64 -8
  %i.u = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i9.i.i.i, i64 1 release, align 8, !noalias !3181
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit11.i.i.i, !prof !23

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit11.i.i.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit11.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph15.i.i.i
  %i.w = icmp eq i64 %i.q, %.val1
  br i1 %i.w, label %.loopexit.i.i, label %.lr.ph15.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1O_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit.i.i.i
  %i.y = shl nuw nsw i64 %.val1, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef 8) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums19EnumClassKeyProfileEBJ_.exit

.loopexit.i.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEEEB1N_.exit11.i.i.i, %bb.e
  %i.z = shl nuw nsw i64 %.val1, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef 8) #49
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsNtB11_15CallDunderErrorEEB15_(ptr noalias noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !30, !noundef !22
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !3186, !align !32, !noundef !22 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !3186 ; 2 uses
  %i.f = icmp eq ptr %.val2.i, null
  %i.g = icmp eq i64 %.val3.i, 0
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = mul nuw nsw i64 %.val3.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 4) #49
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !3186, !align !32, !noundef !22 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !3186 ; 2 uses
  %i.k = icmp eq ptr %.val.i, null
  %i.l = icmp eq i64 %.val1.i, 0
  %or.cond.i4.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i4.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i
  %i.m = mul nuw nsw i64 %.val1.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 4) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.r, %bb.j ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  %i.o = load i8, ptr %i.n, align 8, !range !31, !alias.scope !3187, !noundef !22
  switch i8 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i5 = load ptr, ptr %i.p, align 8, !alias.scope !3187, !nonnull !22, !noundef !22
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEEB1h_(ptr nonnull %.val1.i5), !noalias !3187
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i1 = load ptr, ptr %i.q, align 8, !alias.scope !3187, !nonnull !22, !noundef !22
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEEB1h_(ptr nonnull %.val.i1)
          to label %bb.k unwind label %bb.i, !noalias !3187

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i = load ptr, ptr %i.s, align 8, !alias.scope !3187, !align !32, !noundef !22 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i = load i64, ptr %i.t, align 8, !alias.scope !3187 ; 2 uses
  %i.u = icmp eq ptr %.val4.i, null
  %i.v = icmp eq i64 %.val5.i, 0
  %or.cond.i.i2 = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i.i2, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = shl nuw nsw i64 %.val5.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 4) #49, !noalias !3187
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i3 = load ptr, ptr %i.x, align 8, !alias.scope !3187, !align !32, !noundef !22 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i4 = load i64, ptr %i.y, align 8, !alias.scope !3187 ; 2 uses
  %i.z = icmp eq ptr %.val2.i3, null
  %i.aa = icmp eq i64 %.val3.i4, 0
  %or.cond.i6.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i6.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = shl nuw nsw i64 %.val3.i4, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i3) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i3, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef 4) #49, !noalias !3187
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1x_31ApplyMaterializationEquivalenceTNtB1x_4TypeB3c_EbKj1_EETBX_BY_EEEB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !22
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1c_31ApplyMaterializationEquivalenceTNtB1c_4TypeB2R_EbKj1_EEBD_EEB1e_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1c_31ApplyMaterializationEquivalenceTNtB1c_4TypeB2R_EbKj1_EEBD_EEB1e_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3197, !nonnull !22, !noundef !22 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !3197, !noundef !22
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !3197
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1c_31ApplyMaterializationEquivalenceTNtB1c_4TypeB2R_EbKj1_EEBD_EEB1e_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtBH_31ApplyMaterializationEquivalenceTNtBH_4TypeB2l_EbKj1_EE9drop_slowBJ_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1c_31ApplyMaterializationEquivalenceTNtB1c_4TypeB2R_EbKj1_EEBD_EEB1e_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCscdodAO9FK5_5alloc2rc2RcNtNtCsoTR8nlGN3X_18ty_python_semantic12reachability27ReachabilityEvaluationCacheETBX_BY_EEEB1w_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !22
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTRINtNtCscdodAO9FK5_5alloc2rc2RcNtNtCsoTR8nlGN3X_18ty_python_semantic12reachability27ReachabilityEvaluationCacheEBD_EEB1b_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTRINtNtCscdodAO9FK5_5alloc2rc2RcNtNtCsoTR8nlGN3X_18ty_python_semantic12reachability27ReachabilityEvaluationCacheEBD_EEB1b_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3204)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3206)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3207, !nonnull !22, !noundef !22 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !3207, !noundef !22
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !3207
  %i.g = icmp eq i64 %i.f, 0
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EECsoTR8nlGN3X_18ty_python_semantic:bb.a
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !70, !invariant.load !22
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #49
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs56aZGHL6Dc6_7ruff_db6system14WritableSystemEL_EECsoTR8nlGN3X_18ty_python_semantic(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !22 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !50, !invariant.load !22 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs56aZGHL6Dc6_7ruff_db6system14WritableSystemEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !70, !invariant.load !22
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #49
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs56aZGHL6Dc6_7ruff_db6system14WritableSystemEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs56aZGHL6Dc6_7ruff_db6system14WritableSystemEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !50, !invariant.load !22 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs56aZGHL6Dc6_7ruff_db6system14WritableSystemEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !70, !invariant.load !22
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #49
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs56aZGHL6Dc6_7ruff_db6system14WritableSystemEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs56aZGHL6Dc6_7ruff_db6system14WritableSystemEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer20OtherDefinitionTypesEEB1f_(ptr captures(address) %.0.val) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !3326, !noundef !22 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %.0.val, align 8, !alias.scope !3326, !nonnull !22, !noundef !22
  %i.c = mul nuw nsw i64 %.val1.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 4) #49, !noalias !3326
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val3.i = load i64, ptr %i.d, align 8, !alias.scope !3326, !noundef !22 ; 2 uses
  %i.e = icmp eq i64 %.val3.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer20OtherDefinitionTypesEBH_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !3326, !nonnull !22, !noundef !22
  %i.g = mul nuw nsw i64 %.val3.i, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef 4) #49, !noalias !3326
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer20OtherDefinitionTypesEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer20OtherDefinitionTypesEBH_.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2b_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #49
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEEB1h_(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 408
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !3329, !align !32, !noundef !22 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 416
  %.val3.i = load i64, ptr %i.d, align 8, !alias.scope !3329 ; 2 uses
  %i.e = icmp eq ptr %.val2.i, null
  %i.f = icmp eq i64 %.val3.i, 0
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul nuw nsw i64 %.val3.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef 4) #49
  br label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 408
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !3329, !align !32, !noundef !22 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 416
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !3329 ; 2 uses
  %i.j = icmp eq ptr %.val.i, null
  %i.k = icmp eq i64 %.val1.i, 0
  %or.cond.i4.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i4.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i
  %i.l = mul nuw nsw i64 %.val1.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 4) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit: ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 432, i64 noundef 8) #49
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 432, i64 noundef 8) #49
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEEECsoTR8nlGN3X_18ty_python_semantic(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.0.08.i = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.08.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !3355, !noundef !22 ; 2 uses
  %.not2.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !3355
  br i1 %.not2.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.val.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.sroa.0.0.val.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i.i.i.i.i.i, align 8, !noalias !3356, !noundef !22 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.03.i.i.i.i.i.i.i.i, align 8, !noalias !3356
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3359)
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !3360, !noundef !22 ; 2 uses
  %.not2.i.i.i1.i.i.i.i.i = icmp eq ptr %i.h, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !3360
  br i1 %.not2.i.i.i1.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.lr.ph.i.i.i2.i.i.i.i.i

.lr.ph.i.i.i2.i.i.i.i.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i, %.lr.ph.i.i.i2.i.i.i.i.i
  %.sroa.0.03.i.i.i3.i.i.i.i.i = phi ptr [ %.sroa.0.0.val.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i2.i.i.i.i.i ], [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.val.i.i.i4.i.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i3.i.i.i.i.i, align 8, !noalias !3361, !noundef !22 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.03.i.i.i3.i.i.i.i.i, align 8, !noalias !3361
  %.not.i.i.i5.i.i.i.i.i = icmp eq ptr %.sroa.0.0.val.i.i.i4.i.i.i.i.i, null
  br i1 %.not.i.i.i5.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.lr.ph.i.i.i2.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.lr.ph.i.i.i2.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.0.1.i15, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, %.8.val
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.l = icmp eq i64 %i.c, %.8.val
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.c
  %.sroa.0.1.i15 = phi i64 [ %i.j, %bb.c ], [ %i.c, %.body.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.1.i15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 128 dereferenceable(128) %i.m) #51
          to label %bb.c unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.o = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef 128) #49
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit
  ret void

._crit_edge:                                      ; preds = %bb.c, %.body.i
  %i.p = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef 128) #49
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.0.012.i = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.012.i ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3387)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.e = load i8, ptr %i.d, align 1, !range !29, !alias.scope !3388, !noundef !22
  %i.f = and i8 %i.e, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.f, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3389)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3390, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.g = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !3391
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.c, %.8.val
  br i1 %i.k, label %.loopexit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit11.i
  %.sroa.0.113.i = phi i64 [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit11.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.113.i ; 3 uses
  %i.m = add nuw nsw i64 %.sroa.0.113.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3395)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.o = load i8, ptr %i.n, align 1, !range !29, !alias.scope !3396, !noundef !22
  %i.p = and i8 %i.o, -2
  %switch.i.i.i.i7.i = icmp eq i8 %i.p, -48
  br i1 %switch.i.i.i.i7.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit11.i

bb.e:                                             ; preds = %.lr.ph15.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3397)
  %.pn.i.i.i.i.i8.i = load ptr, ptr %i.l, align 8, !alias.scope !3398, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i9.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i8.i, i64 -8
  %i.q = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i9.i, i64 1 release, align 8, !noalias !3399
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit11.i, !prof !23

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit11.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit11.i: ; preds = %bb.f, %bb.e, %.lr.ph15.i
  %i.s = icmp eq i64 %i.m, %.8.val
  br i1 %i.s, label %.loopexit, label %.lr.ph15.i

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.u = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #49
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit4: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit
  ret void

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit11.i, %bb.d
  %i.v = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef 8) #49
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i
  %.sroa.0.0.i21 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [88 x i8], ptr %.0.val, i64 %.sroa.0.0.i21 ; 6 uses
  %i.c = add nuw nsw i64 %.sroa.0.0.i21, 1        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #51
          to label %.body.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph23
  %i.j = add nuw nsw i64 %.sroa.0.1.i22, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, %.8.val
  br i1 %i.k, label %.body, label %.lr.ph23

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  %i.m = icmp eq i64 %i.c, %.8.val
  br i1 %i.m, label %.body, label %.lr.ph23

.lr.ph23:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i22 = phi i64 [ %i.j, %bb.f ], [ %i.c, %.body.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %.0.val, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_(ptr noalias noundef align 8 dereferenceable(88) %i.n) #51
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph23
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

.body:                                            ; preds = %bb.f, %.body.i
  %i.p = mul nuw nsw i64 %.8.val, 88
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef 8) #49
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i
  %i.q = mul nuw nsw i64 %.8.val, 88
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef 8) #49
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBI_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !71, !noundef !22 ; 2 uses
  %i.b = icmp eq i32 %i.a, -3
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3402)
  %i.c = icmp eq i32 %i.a, -2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !3402, !noundef !22 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !3402, !nonnull !22, !noundef !22
  %i.g = shl nuw nsw i64 %.val1.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef 4) #49, !noalias !3402
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB1g_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !22
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3413, !noundef !22 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !3414
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1i_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1i_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowShEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !65, !noundef !22
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1i_20BoundTypeVarInstanceINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1G_20BoundTypeVarInstanceEEEB1K_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #51
          to label %common.resume.i.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1d_20BoundTypeVarInstanceEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1h_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1i_20BoundTypeVarInstanceINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1k_20BoundTypeVarInstanceEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

common.resume.i.i:                                ; preds = %bb.c, %bb.b
end_hunk_2
begin_hunk_3_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtNtB1l_7support9SupportIdEEB1p_:bb.a
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1f_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1f_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtB1l_11SourceOrderEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdNtB1l_16InteriorNodeDataEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdNtNtB1l_7support9SupportIdEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1f_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1f_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtB1n_7typevar20BoundTypeVarIdentityEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdNtB1l_7SupportEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1f_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1m_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1m_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1f_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEKj1_EEB25_(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !3421, !noundef !22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3421, !noundef !22 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEKj1_ENtNtNtB9_3ops4drop4Drop4dropB1S_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i.i.i.i
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEKj1_ENtNtNtB9_3ops4drop4Drop4dropB1S_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i.i15 ; 3 uses
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i15, 1 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.body.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i.i.i.i unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph17
  %i.p = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i16, 1 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %._crit_edge, label %.lr.ph17

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEBH_.exit.i.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.l, %bb.c ]
  %i.s = icmp eq i64 %i.j, %i.f
  br i1 %i.s, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i.i.i.i.i, %bb.e
  %.sroa.0.1.i.i.i.i.i.i16 = phi i64 [ %i.p, %bb.e ], [ %i.j, %.body.i.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_(ptr noalias noundef align 8 dereferenceable(120) %i.t) #51
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph17
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXs4_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEKj1_ENtNtNtB9_3ops4drop4Drop4dropB1S_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEB1B_.exit.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtB18_7builder20ExpressionCacheEntryEKj2_EEB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  %i.a = load i64, ptr %0, align 8, !alias.scope !3445, !noundef !22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3445, !noundef !22 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBV_7builder20ExpressionCacheEntryEKj2_ENtNtNtB9_3ops4drop4Drop4dropBZ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.a ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_.exit.i.i.i.i.i.i, %bb.b
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i, 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3449)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  %i.k = load i32, ptr %i.j, align 8, !range !30, !alias.scope !3451, !noundef !22
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.k, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3453)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3454, !nonnull !22, !noundef !22 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !3454, !noundef !22
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !noalias !3454
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryE9drop_slowBK_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_.exit.i.i.i.i.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.q = icmp eq i64 %i.i, %i.f
  br i1 %i.q, label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBV_7builder20ExpressionCacheEntryEKj2_ENtNtNtB9_3ops4drop4Drop4dropBZ_.exit, label %bb.c

bb.f:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i7, 1 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.f
  br i1 %i.s, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.i, %i.f
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i.i.i.i7 = phi i64 [ %i.r, %bb.f ], [ %i.i, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i.i7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_(ptr noalias noundef readonly align 8 dereferenceable(32) %i.v) #51
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.t

bb.h:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3455
  unreachable

_RNvXs4_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBV_7builder20ExpressionCacheEntryEKj2_ENtNtNtB9_3ops4drop4Drop4dropBZ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer11TypeContextNtNtBE_7builder20ExpressionCacheEntryEEBI_.exit.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEEB1Z_(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEB1b_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEB1i_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEB1i_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEB1b_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infers0_1__37infer_definition_types_Configuration_EEB1t_(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !range !72, !alias.scope !3460, !noundef !22
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !range !72, !alias.scope !3461, !noundef !22
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit1: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infers1_1__40function_known_decorators_Configuration_EEB1t_(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer26FunctionDecoratorInferenceEEB13_(ptr noalias noundef align 8 dereferenceable(112) %i.c) #51
          to label %bb.d unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer26FunctionDecoratorInferenceEEB13_(ptr noalias noundef align 8 dereferenceable(112) %i.d)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infers3_1__35infer_deferred_types_Configuration_EEB1t_(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !range !72, !alias.scope !3466, !noundef !22
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !range !72, !alias.scope !3467, !noundef !22
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit1: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19DefinitionInferenceEEB13_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infers4_1__37infer_scope_types_impl_Configuration_EEB1t_(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3472, !noundef !22
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer14ScopeInferenceEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer14ScopeInferenceEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer14ScopeInferenceEEB13_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3473, !noundef !22
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer14ScopeInferenceEEB13_.exit1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer14ScopeInferenceEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer14ScopeInferenceEEB13_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer14ScopeInferenceEEB13_.exit1: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa8function4memo10MemoHeaderECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB1v_16TypeVarInference14specialization1__35specialization_inner_Configuration_EEB1z_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsU_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB1v_12GenericAlias17variance_of_owner1__33variance_of_owner__Configuration_EEB1z_(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB1u_17CodeGeneratorKind17from_static_class1__45code_generator_of_static_class_Configuration_EEB1y_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB1u_17CodeGeneratorKind18from_dynamic_class1__46code_generator_of_dynamic_class_Configuration_EEB1y_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB1u_14GenericContext11remove_self1__32remove_self_inner_Configuration_EEB1y_(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB1u_14GenericContext18inferable_typevars1__39inferable_typevars_inner_Configuration_EEB1y_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsj_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1v_10TypeVarSet5merge1__26merge_inner_Configuration_EEB1z_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1v_15TypeVarInstance20lazy_bound_unchecked1__36lazy_bound_unchecked__Configuration_EEB1z_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1v_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEB1z_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1v_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEB1z_(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsb_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtBG_3VecNtB1k_13ApplicableFixEEEEB1m_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3501, !nonnull !22, !noundef !22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3501, !nonnull !22, !noundef !22 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !3501
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !3501
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3501, !nonnull !22, !noundef !22 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3501, !noundef !22 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtB7_3VecNtBR_13ApplicableFixEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !3501, !noundef !22 ; 4 uses
  %i.o = icmp ult i64 %i.n, 88686269585142076
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3501, !noundef !22 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8, !noalias !3501
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtB7_3VecNtBR_13ApplicableFixEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !3501, !nonnull !22, !noundef !22 ; 2 uses
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !noalias !3501
  br label %bb.d

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit, %.body.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtBM_3VecNtB2b_13ApplicableFixEENtNtBO_5alloc6GlobalEEB2d_(ptr nonnull align 8 dereferenceable(40) %0) #51
  resume { ptr, i32 } %eh.lpad-body.i.i

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3501, !nonnull !22, !noundef !22 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i.i.i
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBF_13ApplicableFixEEEBH_.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit.i.i
  %.sroa.0.0.i.i55 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %.sroa.0.0.i.i55 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.0.0.i.i55, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileEBF_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ad)
          to label %bb.h unwind label %bb.g, !noalias !3501

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #51
          to label %.body.i.i unwind label %bb.k, !noalias !3501

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 80 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i.i.i unwind label %bb.i, !noalias !3501

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body.i.i unwind label %bb.j, !noalias !3501

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3501
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit.i.i unwind label %bb.l, !noalias !3501

bb.k:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3501
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i
  %i.al = icmp eq i64 %i.ap, %i.g
  br i1 %i.al, label %.body.i, label %.lr.ph57

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.i, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.ai, %bb.i ], [ %i.af, %bb.g ]
  %i.an = icmp eq i64 %i.ae, %i.g
  br i1 %i.an, label %.body.i, label %.lr.ph57

.lr.ph57:                                         ; preds = %.body.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit
  %.sroa.0.1.i.i56 = phi i64 [ %i.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit ], [ %i.ae, %.body.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %.sroa.0.1.i.i56 ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.0.1.i.i56, 1     ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileEBF_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ao)
          to label %bb.n unwind label %bb.m, !noalias !3501

bb.m:                                             ; preds = %.lr.ph57
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #51
          to label %.body unwind label %bb.q, !noalias !3501

bb.n:                                             ; preds = %.lr.ph57
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 80 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i unwind label %bb.o, !noalias !3501

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body unwind label %bb.p, !noalias !3501

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3501
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3501
  unreachable

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixEEB1b_.exit.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.m, %bb.o, %bb.r
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52, !noalias !3501
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBF_13ApplicableFixEEEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_13ApplicableFixEEEBG_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !3501, !noundef !22 ; 3 uses
  %.not.i.i5.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i5.i, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtB7_3VecNtBR_13ApplicableFixEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBF_13ApplicableFixEEEBH_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !noalias !3501, !noundef !22 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, 88686269585142076
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !3501, !noundef !22 ; 2 uses
  %.not3.i.i6.i = icmp eq i64 %i.bd, %i.ba
  br i1 %.not3.i.i6.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.be = add i64 %i.ba, %i.ay
  store i64 %i.be, ptr %i.az, align 8, !noalias !3501
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtB7_3VecNtBR_13ApplicableFixEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_.exit

bb.u:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %i.x, align 8, !noalias !3501, !nonnull !22, !noundef !22 ; 2 uses
  %i.bg = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.bd
  %i.bh = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.ba
  %i.bi = mul i64 %i.ay, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bg, i64 %i.bi, i1 false), !noalias !3501
  br label %bb.t

_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtB7_3VecNtBR_13ApplicableFixEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_.exit: ; preds = %bb.b, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtNtCscdodAO9FK5_5alloc3vec3VecNtBF_13ApplicableFixEEEBH_.exit.i, %bb.t
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !51, !noundef !22
  %i.b = icmp eq i32 %i.a, -2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val1 = load i64, ptr %i.c, align 8, !noundef !22 ; 2 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16FixedLengthTupleNtBG_4TypeEEBI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !22, !noundef !22
  %i.f = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef 4) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16FixedLengthTupleNtBG_4TypeEEBI_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16FixedLengthTupleNtBG_4TypeEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16FixedLengthTupleNtBG_4TypeEEBI_.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtNtBG_7typevar19VisitTypeVarDefaultNtB1J_15TypeVarInstanceINtNtB4_6option6OptionNtBG_4TypeEKj6_EEBI_(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtB1B_7typevar15TypeVarInstanceEj6_EEEB1D_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !range !73, !alias.scope !3514, !noundef !22 ; 2 uses
  %i.e = icmp ne i32 %i.d, 39
  tail call void @llvm.assume(i1 %i.e)
  %switch.i.i.i = icmp slt i32 %i.d, 40
  br i1 %switch.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtNtB11_7typevar15TypeVarInstanceINtNtB4_6option6OptionNtB11_4TypeEEEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceINtNtCs4NRVxsYgnAr_4core6option6OptionNtBT_4TypeEEENtNtNtB22_3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtNtB11_7typevar15TypeVarInstanceINtNtB4_6option6OptionNtB11_4TypeEEEEB13_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtB1B_7typevar15TypeVarInstanceEj6_EEEB1D_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !range !73, !alias.scope !3515, !noundef !22 ; 2 uses
  %i.i = icmp ne i32 %i.h, 39
  tail call void @llvm.assume(i1 %i.i)
  %switch.i.i.i1 = icmp slt i32 %i.h, 40
  br i1 %switch.i.i.i1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtNtB11_7typevar15TypeVarInstanceINtNtB4_6option6OptionNtB11_4TypeEEEEB13_.exit2, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtB1B_7typevar15TypeVarInstanceEj6_EEEB1D_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceINtNtCs4NRVxsYgnAr_4core6option6OptionNtBT_4TypeEEENtNtNtB22_3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtNtB11_7typevar15TypeVarInstanceINtNtB4_6option6OptionNtB11_4TypeEEEEB13_.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtNtB11_7typevar15TypeVarInstanceINtNtB4_6option6OptionNtB11_4TypeEEEEB13_.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtB1B_7typevar15TypeVarInstanceEj6_EEEB1D_.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheNtNtB11_7typevar15TypeVarInstanceINtNtB4_6option6OptionNtB11_4TypeEEEEB13_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtNtBG_8relation10IsDisjointTNtBG_4TypeB2a_ENtNtBG_11constraints13ConstraintSetKj1_EEBI_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_EEj1_EEEB1D_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !range !66, !alias.scope !3528, !noundef !22 ; 2 uses
  %i.e = icmp ne i32 %i.d, 39
  tail call void @llvm.assume(i1 %i.e)
  %switch.i.i.i = icmp samesign ult i32 %i.d, 40
  br i1 %switch.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_ENtNtB11_11constraints13ConstraintSetEEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBQ_ENtNtBS_11constraints13ConstraintSetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_ENtNtB11_11constraints13ConstraintSetEEEB13_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_EEj1_EEEB1D_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i32, ptr %i.g, align 8, !range !66, !alias.scope !3529, !noundef !22 ; 2 uses
  %i.i = icmp ne i32 %i.h, 39
  tail call void @llvm.assume(i1 %i.i)
  %switch.i.i.i1 = icmp samesign ult i32 %i.h, 40
  br i1 %switch.i.i.i1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_ENtNtB11_11constraints13ConstraintSetEEEB13_.exit2, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_EEj1_EEEB1D_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBQ_ENtNtBS_11constraints13ConstraintSetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_ENtNtB11_11constraints13ConstraintSetEEEB13_.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_ENtNtB11_11constraints13ConstraintSetEEEB13_.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_EEj1_EEEB1D_.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_ENtNtB11_11constraints13ConstraintSetEEEB13_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtNtBG_8relation12TypeRelationTNtBG_4TypeB2c_B1H_NtB1J_17TypeVarEvaluationENtNtBG_11constraints13ConstraintSetKj1_EEBI_(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_NtNtB1B_8relation12TypeRelationNtB35_17TypeVarEvaluationEEj1_EEEB1D_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !range !66, !alias.scope !3542, !noundef !22 ; 2 uses
  %i.e = icmp ne i32 %i.d, 39
  tail call void @llvm.assume(i1 %i.e)
  %switch.i.i.i = icmp samesign ult i32 %i.d, 40
  br i1 %switch.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_NtNtB11_8relation12TypeRelationNtB2p_17TypeVarEvaluationENtNtB11_11constraints13ConstraintSetEEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBQ_NtNtBS_8relation12TypeRelationNtB1H_17TypeVarEvaluationENtNtBS_11constraints13ConstraintSetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_NtNtB11_8relation12TypeRelationNtB2p_17TypeVarEvaluationENtNtB11_11constraints13ConstraintSetEEEB13_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_NtNtB1B_8relation12TypeRelationNtB35_17TypeVarEvaluationEEj1_EEEB1D_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8, !range !66, !alias.scope !3543, !noundef !22 ; 2 uses
  %i.i = icmp ne i32 %i.h, 39
  tail call void @llvm.assume(i1 %i.i)
  %switch.i.i.i1 = icmp samesign ult i32 %i.h, 40
  br i1 %switch.i.i.i1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_NtNtB11_8relation12TypeRelationNtB2p_17TypeVarEvaluationENtNtB11_11constraints13ConstraintSetEEEB13_.exit2, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_NtNtB1B_8relation12TypeRelationNtB35_17TypeVarEvaluationEEj1_EEEB1D_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBQ_NtNtBS_8relation12TypeRelationNtB1H_17TypeVarEvaluationENtNtBS_11constraints13ConstraintSetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_NtNtB11_8relation12TypeRelationNtB2p_17TypeVarEvaluationENtNtB11_11constraints13ConstraintSetEEEB13_.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_NtNtB11_8relation12TypeRelationNtB2p_17TypeVarEvaluationENtNtB11_11constraints13ConstraintSetEEEB13_.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtB1B_4TypeB2O_NtNtB1B_8relation12TypeRelationNtB35_17TypeVarEvaluationEEj1_EEEB1D_.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic18CycleDetectorCacheTNtB11_4TypeB28_NtNtB11_8relation12TypeRelationNtB2p_17TypeVarEvaluationENtNtB11_11constraints13ConstraintSetEEEB13_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1M_14semantic_model31ExpectedStringLiteralCompletionEEKj2_EIB1e_B1H_Kj1_EEEB1M_(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !alias.scope !3554, !noundef !22
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1w_14semantic_model31ExpectedStringLiteralCompletionEEKj2_EEEB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3555, !noundef !22 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3555, !noundef !22 ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1w_14semantic_model31ExpectedStringLiteralCompletionEEKj2_EEEB1w_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = sub nuw i64 %i.f, %i.d                   ; 3 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.d ; 2 uses
  br label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i.i
  %i.k = icmp eq i64 %i.m, %i.i
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1w_14semantic_model31ExpectedStringLiteralCompletionEEKj2_EEEB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i.i.i.i.i15
  %i.m = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i15, 1 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i.i unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph17
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i.i16, 1 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %.body, label %.lr.ph17

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.g, %bb.d
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.o, %bb.d ]
  %i.t = icmp eq i64 %i.m, %i.i
  br i1 %i.t, label %.body, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.0.1.i.i.i.i.i.i.i.i16 = phi i64 [ %i.q, %bb.f ], [ %i.m, %.body.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i.i.i.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_(ptr noalias noundef align 8 dereferenceable(40) %i.u) #51
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph17
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

.body:                                            ; preds = %bb.f, %.body.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1w_14semantic_model31ExpectedStringLiteralCompletionEEKj1_EEEB1w_(ptr noalias noundef align 8 dereferenceable(64) %i.w) #51
          to label %bb.j unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1w_14semantic_model31ExpectedStringLiteralCompletionEEKj2_EEEB1w_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1w_14semantic_model31ExpectedStringLiteralCompletionEEKj1_EEEB1w_(ptr noalias noundef align 8 dereferenceable(64) %i.x)
  ret void

bb.i:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEEB20_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEEB1A_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEB1i_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEB1i_.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEEB1A_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder6VecMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtBI_4TypeEEBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB28_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1M_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2f_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB2f_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB28_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1M_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2J_11constraints23ConstraintBoundsBuilderENtNtBO_5alloc6GlobalEEB2L_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #11 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !22 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB8_5DrainppENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2t_11constraints23ConstraintBoundsBuilderENtNtBc_5alloc6GlobalEBU_4dropB2v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !22 ; 4 uses
  %i.g = icmp ult i64 %i.f, 67818912035696881
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !22 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB8_5DrainppENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2t_11constraints23ConstraintBoundsBuilderENtNtBc_5alloc6GlobalEBU_4dropB2v_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [136 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 136
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB8_5DrainppENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropINtB2_9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2t_11constraints23ConstraintBoundsBuilderENtNtBc_5alloc6GlobalEBU_4dropB2v_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtBM_3VecNtB2b_13ApplicableFixEENtNtBO_5alloc6GlobalEEB2d_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #11 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !22 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB8_5DrainppENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropINtB2_9DropGuardTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtBa_3VecNtB1V_13ApplicableFixEENtNtBc_5alloc6GlobalEBU_4dropB1X_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !22 ; 4 uses
  %i.g = icmp ult i64 %i.f, 88686269585142076
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !22 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB8_5DrainppENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropINtB2_9DropGuardTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtBa_3VecNtB1V_13ApplicableFixEENtNtBc_5alloc6GlobalEBU_4dropB1X_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB8_5DrainppENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropINtB2_9DropGuardTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileINtBa_3VecNtB1V_13ApplicableFixEENtNtBc_5alloc6GlobalEBU_4dropB1X_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3570)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3572)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3573, !nonnull !22, !noundef !22
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !3573
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB1k_17CodeGeneratorKind17from_static_class1__45code_generator_of_static_class_Configuration_ENtB2_3Any7type_idB1o_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB1k_17CodeGeneratorKind18from_dynamic_class1__46code_generator_of_dynamic_class_Configuration_ENtB2_3Any7type_idB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @401, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB1k_14GenericContext11remove_self1__32remove_self_inner_Configuration_ENtB2_3Any7type_idB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @402, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB1k_14GenericContext18inferable_typevars1__39inferable_typevars_inner_Configuration_ENtB2_3Any7type_idB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @403, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsj_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1l_10TypeVarSet5merge1__26merge_inner_Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @404, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1l_15TypeVarInstance20lazy_bound_unchecked1__36lazy_bound_unchecked__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @405, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1l_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @406, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs45bxiIjzMqg_5salsa8function4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB1l_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @407, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionuEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBK_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeuEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBV_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXNtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints23ReachabilityConstraintsNtB2_32ReachabilityConstraintsExtension8evaluate(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = icmp ugt i32 %5, -4
  br i1 %i.b, label %switch.lookup, label %_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21terminal_reachability.exit

_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21terminal_reachability.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core24reachability_constraintsNtB5_23ReachabilityConstraints17get_interior_node(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i32 noundef %5)
  %i.c = load i32, ptr %i.a, align 4, !noundef !22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call noundef zeroext i1 @_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability32analyze_non_terminal_call_prefix(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, i32 noundef %i.c) ; 0 uses
  %i.e = zext i32 %i.c to i64                     ; 3 uses
  %i.f = icmp ugt i64 %4, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add i32 %5, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 513, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21terminal_reachability.exit.thread

_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21terminal_reachability.exit.thread: ; preds = %switch.lookup, %bb.b
  %.sroa.0.0 = phi i8 [ %i.k, %bb.b ], [ %switch.masked, %switch.lookup ]
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21terminal_reachability.exit
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.e
  %i.h = tail call { i32, i32 } @_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability15predicate_scope(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.g) ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = tail call noundef i8 @_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability26evaluate_reachability_path(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.i, i32 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef readonly align 4 captures(address, read_provenance) null, i64 undef, i32 noundef %5, i1 noundef zeroext true)
  br label %_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21terminal_reachability.exit.thread

bb.c:                                             ; preds = %_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21terminal_reachability.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureENtB2_11PartialDrop12partial_dropB1A_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBI_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i, %bb.b
  %.sroa.0.010.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.010.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15641)
  %i.f = load i64, ptr %i.d, align 8, !range !46, !alias.scope !15642, !noundef !22
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15644)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !15645, !noundef !22 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !15646
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15649)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !15650, !nonnull !22, !noundef !22
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !15651
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.body.i unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15654)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !15655, !nonnull !22, !noundef !22
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !15656
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i
  %i.w = icmp eq i64 %i.e, %i.b
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBI_.exit, label %bb.c

bb.k:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.0.1.i6, 1         ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.b
  br i1 %i.y, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %i.aa = icmp eq i64 %i.e, %i.b
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.k
  %.sroa.0.1.i6 = phi i64 [ %i.x, %bb.k ], [ %i.e, %.body.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.ab) #51
          to label %bb.k unwind label %bb.m

._crit_edge:                                      ; preds = %bb.k, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.m:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB9_9ClassType16abstract_methodsBW_NtB2_11InnerTrait_17abstract_methods_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.417 = alloca [44 x i8], align 4          ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 4                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 4                ; 7 uses
  %i.j = alloca [40 x i8], align 4                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.611 = alloca [44 x i8], align 4          ; 6 uses
  %i.l = alloca [8 x i8], align 4                 ; 6 uses
  %i.m = alloca [12 x i8], align 4                ; 9 uses
  %i.n = alloca [16 x i8], align 4                ; 3 uses
  %i.o = alloca [64 x i8], align 8                ; 13 uses
  %i.p = alloca [12 x i8], align 4                ; 8 uses
  %i.q = alloca [12 x i8], align 4                ; 8 uses
  %i.r = alloca [56 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8, !alias.scope !15686
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !15686
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !15686
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @71, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.067.0.copyload = load i32, ptr %1, align 4 ; 3 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.569.0.copyload = load i32, ptr %.sroa.569.0..sroa_idx, align 4 ; 5 uses
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.672.0.copyload = load i32, ptr %.sroa.672.0..sroa_idx, align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15689)
  %i.s = icmp eq i32 %.sroa.067.0.copyload, -1    ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15690)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !22, !alias.scope !15691, !nonnull !22
  %i.v = invoke noundef nonnull align 8 ptr %i.u(ptr noundef nonnull %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !15692 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.w = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB9_12GenericAlias10ingredient5CACHE, ptr noundef nonnull align 8 %i.v)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %.noexc
  %i.x = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE6fieldsB12_(ptr noundef nonnull align 8 %i.w, ptr noundef nonnull align 8 %i.v, i32 noundef range(i32 1, 0) %.sroa.569.0.copyload, i32 noundef %.sroa.672.0.copyload)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.z = load <2 x i32>, ptr %i.x, align 4, !noalias !15693
  store <2 x i32> %i.z, ptr %i.y, align 4, !alias.scope !15687
  store i32 0, ptr %i.p, align 4, !alias.scope !15687
  br label %_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal.exit

bb.c:                                             ; preds = %bb.a
  store i32 %.sroa.067.0.copyload, ptr %i.p, align 4, !alias.scope !15694
  %.sroa.569.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sroa.569.0.copyload, ptr %.sroa.569.0..sroa_idx70, align 4, !alias.scope !15694
  %.sroa.672.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %.sroa.672.0.copyload, ptr %.sroa.672.0..sroa_idx73, align 4, !alias.scope !15694
  br label %_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB1t_10IndexSliceNtNtCs2O29vuvTAEJ_14ty_python_core6symbol14ScopedSymbolIdINtNtB2o_7use_def19RetainedPlaceStatesNtB3i_20InternedPlaceStateIdEE7indices0ENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.v, %bb.aa, %bb.af, %bb.ag, %bb.t, %.invoke, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.l, %.noexc37, %.noexc38, %_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal.exit, %.loopexit94, %bb.w, %bb.b, %.noexc, %.noexc28, %bb.e, %.noexc30, %.noexc31, %.noexc32, %.noexc33, %.noexc34, %bb.ae
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_(ptr noalias noundef align 8 dereferenceable(56) %i.r) #51
          to label %bb.am unwind label %bb.al

_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal.exit: ; preds = %bb.c, %.noexc29
  %i.aa = invoke { i32, i32 } @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral12program_file(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.p, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal.exit
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  %i.ac = extractvalue { i32, i32 } %i.aa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 1, ptr %i.q, align 4, !alias.scope !15695
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.ab, ptr %.sroa.45.0..sroa_idx.i, align 4, !alias.scope !15695
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.ac, ptr %.sroa.56.0..sroa_idx.i, align 4, !alias.scope !15695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15696)
  br i1 %i.s, label %bb.e, label %._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge

._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15697)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !22, !alias.scope !15698, !nonnull !22 ; 3 uses
  %i.af = invoke noundef nonnull align 8 ptr %i.ae(ptr noundef nonnull %2)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !109 ; 2 uses

.noexc30:                                         ; preds = %bb.e
  %i.ag = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB9_12GenericAlias10ingredient5CACHE, ptr noundef nonnull align 8 %i.af)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %.noexc30
  %i.ah = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE6fieldsB12_(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull align 8 %i.af, i32 noundef range(i32 1, 0) %.sroa.569.0.copyload, i32 noundef %.sroa.672.0.copyload)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc32:                                         ; preds = %.noexc31
  %i.ai = load i32, ptr %i.ah, align 4, !range !24, !noalias !15699, !noundef !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !15699, !noundef !22
  %i.al = invoke noundef nonnull align 8 ptr %i.ae(ptr noundef nonnull %2)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !109 ; 2 uses

.noexc33:                                         ; preds = %.noexc32
  %i.am = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB9_12GenericAlias10ingredient5CACHE, ptr noundef nonnull align 8 %i.al)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %.noexc33
  %i.an = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE6fieldsB12_(ptr noundef nonnull align 8 %i.am, ptr noundef nonnull align 8 %i.al, i32 noundef range(i32 1, 0) %.sroa.569.0.copyload, i32 noundef %.sroa.672.0.copyload)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %.noexc34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load <2 x i32>, ptr %i.ao, align 4, !noalias !15700
  br label %_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit

_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit: ; preds = %._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge, %.noexc35
  %i.aq = phi ptr [ %i.ae, %.noexc35 ], [ %.pre, %._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge ]
  %.sroa.11.0 = phi i32 [ %i.ak, %.noexc35 ], [ %.sroa.672.0.copyload, %._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge ]
  %.sroa.10.0 = phi i32 [ %i.ai, %.noexc35 ], [ %.sroa.569.0.copyload, %._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge ]
  %.sroa.850.0 = phi i32 [ 0, %.noexc35 ], [ %.sroa.067.0.copyload, %._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge ]
  %i.ar = phi <2 x i32> [ %i.ap, %.noexc35 ], [ <i32 0, i32 undef>, %._RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 1, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %3, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store <2 x i32> %i.ar, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 %.sroa.850.0, ptr %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 %.sroa.10.0, ptr %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  %.sroa.2.sroa.9.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i32 %.sroa.11.0, ptr %.sroa.2.sroa.9.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  store i8 0, ptr %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.417.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.417, i64 4
  %.sroa.611.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.611, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 12
end_hunk_5
begin_hunk_6_@_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityENtNtB7_10ingredient3Jar17id_struct_type_idBU_:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceENtNtB7_10ingredient3Jar17id_struct_type_idBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @615, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarSetInnerENtNtB7_10ingredient3Jar17id_struct_type_idBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @656, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsENtNtB7_10ingredient3Jar17id_struct_type_idBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @657, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceENtNtB7_10ingredient3Jar17id_struct_type_idBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @572, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextENtNtB7_10ingredient3Jar17id_struct_type_idBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @607, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14SpecializationENtNtB7_10ingredient3Jar17id_struct_type_idBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @658, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics16TypeVarInferenceENtNtB7_10ingredient3Jar17id_struct_type_idBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @590, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtB1n_14AssignmentFuelEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1r_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !22, !noundef !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !22, !noundef !22
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !22 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtB2H_14AssignmentFuelENtNtBO_5alloc6GlobalEEB2L_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !22 ; 4 uses
  %i.k = icmp ult i64 %i.j, 384307168202282326
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !22 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtB2H_14AssignmentFuelENtNtBO_5alloc6GlobalEEB2L_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.j
  %i.s = mul i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtB2H_14AssignmentFuelENtNtBO_5alloc6GlobalEEB2L_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtB2H_14AssignmentFuelENtNtBO_5alloc6GlobalEEB2L_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !22 ; 4 uses
  %i.x = icmp ult i64 %i.w, 384307168202282326
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !22 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtB2H_14AssignmentFuelENtNtBO_5alloc6GlobalEEB2L_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.w
  %i.af = mul i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1p_11constraints23ConstraintBoundsBuilderEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1r_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !22, !noundef !22 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 136                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !22, !noundef !22 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !22 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2J_11constraints23ConstraintBoundsBuilderENtNtBO_5alloc6GlobalEEB2L_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !22 ; 4 uses
  %i.o = icmp ult i64 %i.n, 67818912035696881
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !22 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2J_11constraints23ConstraintBoundsBuilderENtNtBO_5alloc6GlobalEEB2L_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.u = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [136 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 136
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2J_11constraints23ConstraintBoundsBuilderENtNtBO_5alloc6GlobalEEB2L_.exit: ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1d_11constraints23ConstraintBoundsBuilderEEB1f_.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2J_11constraints23ConstraintBoundsBuilderENtNtBO_5alloc6GlobalEEB2L_(ptr nonnull %0) #51
  resume { ptr, i32 } %i.ah

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1d_11constraints23ConstraintBoundsBuilderEEB1f_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.i18 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [136 x i8], ptr %i.ab, i64 %.sroa.0.0.i18
  %i.ae = add nuw nsw i64 %.sroa.0.0.i18, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1c_11constraints23ConstraintBoundsBuilderEEB1e_(ptr noalias noundef align 8 dereferenceable(136) %i.ad)
          to label %bb.f unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph20
  %i.af = add nuw nsw i64 %.sroa.0.1.i19, 1       ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.g
  br i1 %i.ag, label %.body, label %.lr.ph20

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq i64 %i.ae, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i19 = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [136 x i8], ptr %i.ab, i64 %.sroa.0.1.i19
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1c_11constraints23ConstraintBoundsBuilderEEB1e_(ptr noalias noundef align 8 dereferenceable(136) %i.aj) #51
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph20
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1d_11constraints23ConstraintBoundsBuilderEEB1f_.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noundef !22 ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2J_11constraints23ConstraintBoundsBuilderENtNtBO_5alloc6GlobalEEB2L_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1d_11constraints23ConstraintBoundsBuilderEEB1f_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !22 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 67818912035696881
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !22 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.ar, %i.ao
  br i1 %.not3.i.i6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.as = add i64 %i.ao, %i.am
  store i64 %i.as, ptr %i.an, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB2J_11constraints23ConstraintBoundsBuilderENtNtBO_5alloc6GlobalEEB2L_.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.x, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.au = getelementptr inbounds nuw [136 x i8], ptr %i.at, i64 %i.ar
  %i.av = getelementptr inbounds nuw [136 x i8], ptr %i.at, i64 %i.ao
  %i.aw = mul i64 %i.am, 136
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false)
  br label %bb.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !22, !noundef !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !22, !noundef !22
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !22 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtNtBO_5alloc6GlobalEEB2e_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !22 ; 4 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !22 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtNtBO_5alloc6GlobalEEB2e_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.s = shl i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtNtBO_5alloc6GlobalEEB2e_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtNtBO_5alloc6GlobalEEB2e_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !22 ; 4 uses
  %i.x = icmp ult i64 %i.w, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !22 ; 2 uses
  %.not3.i.i10 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtNtBO_5alloc6GlobalEEB2e_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.w
  %i.af = shl i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCscdodAO9FK5_5alloc5sliceSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeINtB5_16SpecCloneIntoVecBx_NtNtB7_5alloc6GlobalE10clone_intoBD_(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(24) initializes((16, 24)) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i64 0, ptr %i.a, align 8
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE7reserveBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef range(i64 0, 768614336404564651) %1)
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18984, !noundef !22 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE15append_elementsBJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %1, 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !18984, !nonnull !22, !noundef !22
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull readonly align 4 %0, i64 %.idx, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !18984
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE15append_elementsBJ_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE15append_elementsBJ_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %1
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !18984
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @660, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @659)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs6_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_codeNtB5_16UnreachableRangeNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @469) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @71, i64 32, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.c, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx, align 8
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCsoTR8nlGN3X_18ty_python_semantic5fixesNtB5_17WriteChangesErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !22
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @664, i64 noundef 26)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_RNvXs_NtCsoTR8nlGN3X_18ty_python_semantic9subscriptRShNtB4_7PyIndex8py_indexB6_:bb.a
  %i.b = sub i32 0, %5
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp samesign ult i64 %1, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %5 to i64                  ; 2 uses
  %i.f = icmp samesign ugt i64 %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.sroa.0.0 = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.b, %bb.c
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.c ], [ %i.i, %bb.e ], [ null, %bb.b ]
  ret ptr %.sroa.0.1

bb.e:                                             ; preds = %bb.b
  %i.h = sub nuw nsw i64 %1, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1V_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3set7HashSetNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes11CheckResultEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1v_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB4_14SubclassOfTypeNtNtB6_8variance17VarianceInferable11variance_of(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(28) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = load i32, ptr %0, align 4, !range !84, !noundef !22
  switch i32 %i.d, label %default.unreachable3 [
    i32 0, label %bb.b
    i32 1, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  switch i32 %.sroa.0.0.copyload, label %default.unreachable.i [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 2, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 3, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
    i32 4, label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19618
  store i32 %.sroa.4.0.copyload, ptr %i.b, align 4, !noalias !19619
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.6.0.copyload, ptr %i.f, align 4, !noalias !19619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19619
  store ptr %1, ptr %i.a, align 8, !noalias !19619
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.g, align 8, !noalias !19619
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.h, align 8, !noalias !19619
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !19619
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !19619
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %4, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !19619
  %i.i = call noundef range(i8 0, 4) i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8variance15TypeVarVarianceDNtNtB1Z_2db2DbEL_NCNvNvMsU_NtB1X_5classNtB3u_12GenericAlias17variance_of_owner18variance_of_owner_0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @235, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !19620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19618
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

default.unreachable.i:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef i8 @_RNvXs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteralNtNtB9_8variance17VarianceInferable11variance_of(i32 noundef %.sroa.4.0.copyload, i32 noundef %.sroa.6.0.copyload, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(28) %4), !noalias !19620
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = tail call noundef i8 @_RNvXs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceTypeNtNtB7_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.k, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(28) %4)
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = load <2 x i32>, ptr %i.m, align 4
  store <2 x i32> %i.o, ptr %i.n, align 4
  store i32 29, ptr %i.c, align 4
  %i.p = call noundef i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit

_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_9ClassTypeNtNtB7_8variance17VarianceInferable11variance_of.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a, %bb.f, %bb.e
  %.sroa.0.0 = phi i8 [ 3, %bb.a ], [ %i.p, %bb.f ], [ %i.l, %bb.e ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ 3, %bb.b ], [ 3, %bb.b ], [ 3, %bb.b ], [ 3, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtBa_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEj2_NtB4_11PartialDrop12partial_dropB1Y_(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitINtNtB8_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEENtB2_11PartialDrop12partial_dropB1W_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i, %bb.b
  %.sroa.0.07.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.07.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19641)
  %i.f = load i32, ptr %i.d, align 8, !range !30, !alias.scope !19642, !noundef !22
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19644)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19648)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  %i.j = load i8, ptr %i.i, align 1, !range !29, !alias.scope !19649, !noundef !22
  %i.k = and i8 %i.j, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, -48
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19650)
  %.pn.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !19651, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.l = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !19652
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i, !prof !23

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.n = icmp eq i64 %i.e, %i.b
  br i1 %i.n, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitINtNtB8_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEENtB2_11PartialDrop12partial_dropB1W_.exit, label %bb.c

bb.g:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.0.1.i.i7, 1       ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.b
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.e, %i.b
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i7 = phi i64 [ %i.o, %bb.g ], [ %i.e, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.1.i.i7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_(ptr noalias noundef align 8 dereferenceable(48) %i.s) #51
          to label %bb.g unwind label %bb.i

._crit_edge:                                      ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.q

bb.i:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitINtNtB8_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEENtB2_11PartialDrop12partial_dropB1W_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members20MemberWithDefinitionEEB13_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesEj2_NtB4_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19657)
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19658)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.b
  %.sroa.0.011.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load i64, ptr %i.f, align 8, !alias.scope !19659, !noundef !22 ; 2 uses
  %i.g = icmp eq i64 %.val9.i.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !19659, !nonnull !22, !noundef !22
  %i.h = shl nuw nsw i64 %.val9.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 4) #49, !noalias !19659
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.d, %bb.c
  %i.i = icmp eq i64 %i.e, %i.b
  br i1 %i.i, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.c

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesEj5_NtB4_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19664)
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19665)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.b
  %.sroa.0.011.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load i64, ptr %i.f, align 8, !alias.scope !19666, !noundef !22 ; 2 uses
  %i.g = icmp eq i64 %.val9.i.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !19666, !nonnull !22, !noundef !22
  %i.h = shl nuw nsw i64 %.val9.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 4) #49, !noalias !19666
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.d, %bb.c
  %i.i = icmp eq i64 %i.e, %i.b
  br i1 %i.i, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.c

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa23memo_ingredient_indices17IngredientIndicesECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_NtB4_11PartialDrop12partial_dropB1A_(ptr noalias nofree noundef readnone align 4 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEj2_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias nofree noundef readnone align 4 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEj3_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias nofree noundef readnone align 4 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEj0_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #51
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEj1_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #51
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEj2_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(144) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #51
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEj3_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(216) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #51
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEj4_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(288) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #51
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtB2_11PartialDrop12partial_dropB1A_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEj1_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureENtB2_11PartialDrop12partial_dropB1A_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEj2_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(144) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureENtB2_11PartialDrop12partial_dropB1A_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEj3_NtB4_11PartialDrop12partial_dropB1C_(ptr noalias noundef align 8 dereferenceable(216) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureENtB2_11PartialDrop12partial_dropB1A_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEj2_NtB4_11PartialDrop12partial_dropB1E_(ptr noalias noundef align 8 dereferenceable(864) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsENtB2_11PartialDrop12partial_dropB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [432 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i.i, %bb.b
  %.sroa.0.08.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [432 x i8], ptr %i.c, i64 %.sroa.0.08.i.i ; 5 uses
  %i.e = add nuw nsw i64 %.sroa.0.08.i.i, 1       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %.val2.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !19673, !align !32, !noundef !22 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.val3.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !19673 ; 2 uses
  %i.j = icmp eq ptr %.val2.i.i.i, null
  %i.k = icmp eq i64 %.val3.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i.i.i.i, label %.body.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = mul nuw nsw i64 %.val3.i.i.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 4) #49
  br label %.body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !19673, !align !32, !noundef !22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.val1.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !19673 ; 2 uses
  %i.o = icmp eq ptr %.val.i.i.i, null
  %i.p = icmp eq i64 %.val1.i.i.i, 0
  %or.cond.i4.i.i.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i4.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i.i
  %i.q = mul nuw nsw i64 %.val1.i.i.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef 4) #49
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i.i: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i.i
  %i.r = icmp eq i64 %i.e, %i.b
  br i1 %i.r, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsENtB2_11PartialDrop12partial_dropB1C_.exit, label %bb.c

bb.g:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.0.1.i.i15, 1      ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.body.i.i:                                        ; preds = %bb.e, %bb.d
  %i.u = icmp eq i64 %i.e, %i.b
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i15 = phi i64 [ %i.s, %bb.g ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [432 x i8], ptr %i.c, i64 %.sroa.0.1.i.i15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_(ptr noalias noundef align 8 dereferenceable(432) %i.v) #51
          to label %bb.g unwind label %bb.h

._crit_edge:                                      ; preds = %bb.g, %.body.i.i
  resume { ptr, i32 } %i.g

bb.h:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsENtB2_11PartialDrop12partial_dropB1C_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEEj2_NtB4_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.sroa.0.0.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.0.i.i15
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph17
  %i.j = add nuw nsw i64 %.sroa.0.1.i.i16, 1      ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %._crit_edge, label %.lr.ph17

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.h, %bb.c ]
  %i.m = icmp eq i64 %i.f, %i.b
  br i1 %i.m, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i16 = phi i64 [ %i.j, %bb.e ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.1.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32) %i.n) #51
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph17
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEENtB2_11PartialDrop12partial_dropCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEj1_NtB4_11PartialDrop12partial_dropB2m_(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEENtB2_11PartialDrop12partial_dropB2k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.012.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19706)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.g = load i8, ptr %i.f, align 1, !range !29, !alias.scope !19707, !noundef !22
  %i.h = and i8 %i.g, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.h, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19708)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !19709, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.i = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !19710
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit.i.i, !prof !23

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit.i.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = icmp eq i64 %i.e, %i.b
  br i1 %i.k, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEENtB2_11PartialDrop12partial_dropB2k_.exit, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.e, %i.b
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit11.i.i
  %.sroa.0.113.i.i = phi i64 [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit11.i.i ], [ %i.e, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.113.i.i ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.0.113.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19715)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.q = load i8, ptr %i.p, align 1, !range !29, !alias.scope !19716, !noundef !22
  %i.r = and i8 %i.q, -2
  %switch.i.i.i.i.i7.i.i = icmp eq i8 %i.r, -48
  br i1 %switch.i.i.i.i.i7.i.i, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit11.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19717)
  %.pn.i.i.i.i.i.i8.i.i = load ptr, ptr %i.n, align 8, !alias.scope !19718, !nonnull !22, !noundef !22
  %.sroa.0.0.i.i.i.i.i.i9.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i8.i.i, i64 -8
  %i.s = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i9.i.i, i64 1 release, align 8, !noalias !19719
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit11.i.i, !prof !23

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit11.i.i unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit11.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.u = icmp eq i64 %i.o, %i.b
  br i1 %i.u, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit11.i.i, %bb.f
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEENtB2_11PartialDrop12partial_dropB2k_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEB1r_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1B_14semantic_model31ExpectedStringLiteralCompletionEEEj1_NtB4_11PartialDrop12partial_dropB1B_(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_14semantic_model31ExpectedStringLiteralCompletionEEENtB2_11PartialDrop12partial_dropB1z_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_14semantic_model31ExpectedStringLiteralCompletionEEENtB2_11PartialDrop12partial_dropB1z_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i
  %.sroa.0.0.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.0.i.i15
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph17
  %i.j = add nuw nsw i64 %.sroa.0.1.i.i16, 1      ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %._crit_edge, label %.lr.ph17

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.h, %bb.c ]
  %i.m = icmp eq i64 %i.f, %i.b
  br i1 %i.m, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i16 = phi i64 [ %i.j, %bb.e ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.1.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_(ptr noalias noundef align 8 dereferenceable(40) %i.n) #51
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph17
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_14semantic_model31ExpectedStringLiteralCompletionEEENtB2_11PartialDrop12partial_dropB1z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1B_14semantic_model31ExpectedStringLiteralCompletionEEEj2_NtB4_11PartialDrop12partial_dropB1B_(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_14semantic_model31ExpectedStringLiteralCompletionEEENtB2_11PartialDrop12partial_dropB1z_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_14semantic_model31ExpectedStringLiteralCompletionEEENtB2_11PartialDrop12partial_dropB1z_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i
  %.sroa.0.0.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.0.i.i15
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph17
  %i.j = add nuw nsw i64 %.sroa.0.1.i.i16, 1      ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %._crit_edge, label %.lr.ph17

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model31ExpectedStringLiteralCompletionEEB1b_.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.h, %bb.c ]
  %i.m = icmp eq i64 %i.f, %i.b
  br i1 %i.m, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i16 = phi i64 [ %i.j, %bb.e ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.1.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_(ptr noalias noundef align 8 dereferenceable(40) %i.n) #51
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph17
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #52
  unreachable

_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_14semantic_model31ExpectedStringLiteralCompletionEEENtB2_11PartialDrop12partial_dropB1z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_14semantic_model31ExpectedStringLiteralCompletionEEEBG_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB9_14GenericContext29remove_callable_only_typevarsNtB4_20FindTypeVarLocationsNtNtBb_7visitor11TypeVisitor10visit_type(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor30walk_type_with_recursion_guardNtNvMs_NtB4_8genericsNtB1u_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %3, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB9_14GenericContext29remove_callable_only_typevarsNtB4_20FindTypeVarLocationsNtNtBb_7visitor11TypeVisitor19visit_callable_type(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i8, ptr %i.a, align 8, !range !35, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  tail call void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable18walk_callable_typeNtNvMs_NtB4_8genericsNtB1j_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !noundef !22
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %3, ptr %i.d, align 8
  store i32 %4, ptr %i.f, align 4
  tail call void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable18walk_callable_typeNtNvMs_NtB4_8genericsNtB1j_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 %0)
  store i32 0, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB9_14GenericContext29remove_callable_only_typevarsNtB4_20FindTypeVarLocationsNtNtBb_7visitor11TypeVisitor21visit_type_alias_type(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !range !34, !noundef !22
  %i.b = trunc nuw i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4, !range !24, !noundef !22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !noundef !22 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias30walk_manual_pep_695_type_aliasNtNvMs_NtB4_8genericsNtB1y_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.d, i32 noundef %i.f, ptr noundef nonnull align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias23walk_pep_695_type_aliasNtNvMs_NtB4_8genericsNtB1r_14GenericContext29remove_callable_only_typevars20FindTypeVarLocationsEB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.d, i32 noundef %i.f, ptr noundef nonnull align 8 %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB9_14GenericContext29remove_callable_only_typevarsNtB4_20FindTypeVarLocationsNtNtBb_7visitor11TypeVisitor25visit_bound_type_var_type(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19748)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19749 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr %.val.i.i.i(ptr noundef nonnull %1), !noalias !19750, !inline_history !6 ; 2 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB9_20BoundTypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.d), !noalias !19750
  %i.f = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.d, i32 noundef range(i32 1, 0) %3, i32 noundef %4), !noalias !19750 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !noalias !19749
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !19749
  %i.g = tail call noundef nonnull align 8 ptr %.val.i.i.i(ptr noundef nonnull %1), !noalias !19751, !inline_history !7 ; 2 uses
  %i.h = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB9_15TypeVarIdentity10ingredient5CACHE, ptr noundef nonnull align 8 %i.g), !noalias !19751
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityE6fieldsB12_(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull align 8 %i.g, i32 noundef range(i32 1, 0) %.sroa.3.0.copyload.i.i, i32 noundef %.sroa.4.0.copyload.i.i), !noalias !19751
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !49, !noalias !19751, !noundef !22
  %.off.i = add nsw i8 %i.k, -3
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { i32, i32 } @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance22without_paramspec_attr(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.m = extractvalue { i32, i32 } %i.l, 0
  %i.n = extractvalue { i32, i32 } %i.l, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i32 [ %i.n, %bb.b ], [ %4, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.m, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !22
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = load i8, ptr %i.s, align 8, !range !35, !noundef !22
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @683) #50
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.v = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef %.sroa.0.0, i32 noundef %.sroa.4.0)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.x = load i32, ptr %i.w, align 8, !noundef !22 ; 4 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.x, ptr %i.b, align 4, !noalias !19753
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.z, ptr %i.ab, align 4, !noalias !19753
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !19754)
  call void @llvm.experimental.noalias.scope.decl(metadata !19755)
  %i.ae = lshr i64 %i.ad, 57
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !19756, !noundef !22 ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !19756, !nonnull !22, !noundef !22 ; 2 uses
  %i.aj = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bd, %bb.k ]
  %.pn.i.i.i = phi i64 [ %i.ad, %.noexc ], [ %i.be, %bb.k ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.ah   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.al, align 1, !noalias !19757 ; 2 uses
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.ak
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.sroa.06.0.i33.i.i = phi i16 [ %i.bc, %bb.j ], [ %i.an, %bb.i ] ; 3 uses
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.01.0.i.i.i, %i.ap
  %i.ar = and i64 %i.aq, %i.ah
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [64 x i8], ptr %i.ai, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -64
end_hunk_7
