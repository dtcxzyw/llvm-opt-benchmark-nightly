Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2p_3astB2l_4castNtB3d_17DestructuringItemEENCNvMs14_B3d_NtB3d_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3d_5IdentEENtNtNtB9_6traits8iterator8Iterator4nextB2p_:bb.a
  %.not.i5 = icmp eq ptr %i.bm, null
  br i1 %.not.i5, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit10, label %bb.z

bb.z:                                             ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10766)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !10769, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !10769, !nonnull !4, !noundef !4 ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.bo
  br i1 %i.br, label %bb.aa, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1I_3ops8function6FnOnceTQB5_EE9call_onceBX_.exit.i6

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1I_3ops8function6FnOnceTQB5_EE9call_onceBX_.exit.i6: ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bs, ptr %i.bp, align 8, !alias.scope !10769
  %i.bt = load ptr, ptr %i.bq, align 8, !noalias !10769, !nonnull !4, !align !476, !noundef !4
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit10

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8.i8 = load i64, ptr %i.bu, align 8, !alias.scope !10760 ; 2 uses
  %i.bv = icmp eq i64 %.val8.i8, 0
  br i1 %i.bv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = shl nuw i64 %.val8.i8, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !10770
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9: ; preds = %bb.ab, %bb.aa
  store ptr null, ptr %i.bl, align 8, !alias.scope !10760
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit: ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48
  %.sroa.8.sroa.5.0.copyload57 = phi i64 [ %.sroa.4.0.i10.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48 ], [ %.sroa.8.sroa.5.0.copyload, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload56 = phi ptr [ %.sroa.10.0.i9.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48 ], [ %.sroa.8.sroa.0.0.copyload, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit ] ; 5 uses
  %.sroa.0.0.copyload1555 = phi i64 [ %.sroa.4.0.i10.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48 ], [ %.sroa.0.0.copyload15.pr, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload56) ]
  %i.bx = icmp ult i64 %.sroa.8.sroa.5.0.copyload57, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.sroa.0.0.copyload56, i64 %.sroa.8.sroa.5.0.copyload57
  store ptr %.sroa.8.sroa.0.0.copyload56, ptr %0, align 8
  store ptr %.sroa.8.sroa.0.0.copyload56, ptr %i.e, align 8
  store i64 %.sroa.0.0.copyload1555, ptr %i.f, align 8
  store ptr %i.by, ptr %i.d, align 8
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_18GraphemeIncompleteNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !5322, !noundef !4
  switch i64 %i.b, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @605, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @604)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @606, i64 noundef 9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @607, i64 noundef 9)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @608, i64 noundef 13)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXso_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdentNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !476, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.03.0.i = phi ptr [ %i.a, %bb.a ], [ %i.i, %bb.e ] ; 4 uses
  %i.b = load i8, ptr %.sroa.03.0.i, align 8, !range !592, !noundef !4
  switch i8 %i.b, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  br label %_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b

_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !10773, !noundef !4 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.k, -1                ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = load ptr, ptr %.sroa.0.0.i, align 8, !alias.scope !10773, !nonnull !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !10773
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.p, i64 %i.m
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.n, ptr %.sroa.0.0.i
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %.sroa.3.0.i.i, 1
  ret { ptr, i64 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs5PEMdK7bMAG_12typst_syntax(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !10776 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 15
  %.val1 = load i8, ptr %i.b, align 1, !alias.scope !10776, !noundef !4
  %.not.i.i.i.i.i = icmp sgt i8 %.val1, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !10779
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10779
  %i.e = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !10779, !noundef !4 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %bb.c, !prof !55

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !10779
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  %i.f = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8, !noalias !10779
  store i64 8, ptr %i.a, align 8, !noalias !10779
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.h, align 8, !noalias !10779
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !10779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10779
  br label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0INtNtB12_8function6FnOnceTOhEE9call_onceB1J_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNCNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 9), (16, 72)) %0) unnamed_addr #42 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !alias.scope !10782
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 9, i1 false), !alias.scope !10782
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !10782
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !10782
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #5 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB4_12SpecWriteFmt14spec_write_fmtCs5PEMdK7bMAG_12typst_syntax.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !10785
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #43

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #43

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #43

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE8expected(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #44

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #46

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #47

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path13__strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #48

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #49

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #5

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #50

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #49

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef range(i8 0, 3), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #50

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -3, -88) i8 @_RNvXsa_Cs9k8Y7U0KtaK_14unicode_scriptcNtB5_13UnicodeScript6script(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core4cell4lazy14panic_poisoned() unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #49

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #49

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #26

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #51

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #52

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #53

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #43

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 15) i8 @_RNvCs6xpQEr8gLsQ_11typst_utils18default_math_class(i32 noundef range(i32 0, 1114112)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 16) i8 @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef align 8 dereferenceable(88), i32 noundef range(i32 0, 1114112)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #5

end_hunk_0
