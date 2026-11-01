Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.07?download=true
inline.NumInlined: 347
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax:bb.a
bb.a:
    #dbg_value(ptr %0, !1227, !DIExpression(), !5614)
    #dbg_value(ptr %0, !1231, !DIExpression(), !5609)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit unwind label %bb.b, !dbg !5615

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !1238, !DIExpression(), !5611)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs3roNzt6HBWW_12regex_syntax.exit.i unwind label %bb.c, !dbg !5616

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !5615
  unreachable, !dbg !5615

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs3roNzt6HBWW_12regex_syntax.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5615

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit: ; preds = %bb.a
    #dbg_value(ptr %0, !1238, !DIExpression(), !5613)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5617
  ret void, !dbg !5618
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !344 {
bb.a:
    #dbg_value(ptr %0, !1912, !DIExpression(), !5625)
    #dbg_value(ptr %0, !1231, !DIExpression(), !5620)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit unwind label %bb.b, !dbg !5626

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !1238, !DIExpression(), !5622)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs3roNzt6HBWW_12regex_syntax.exit.i unwind label %bb.c, !dbg !5627

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !5626
  unreachable, !dbg !5626

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs3roNzt6HBWW_12regex_syntax.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5626

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit: ; preds = %bb.a
    #dbg_value(ptr %0, !1238, !DIExpression(), !5624)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5628
  ret void, !dbg !5629
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate10TranslatorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !338 {
bb.a:
    #dbg_value(ptr %0, !1873, !DIExpression(), !5640)
    #dbg_value(ptr %0, !1880, !DIExpression(), !5631)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5641 ; 3 uses
    #dbg_value(ptr %i.a, !1887, !DIExpression(), !5633)
    #dbg_value(ptr %i.a, !1894, !DIExpression(), !5635)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate8HirFrameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate8HirFrameEEEB1z_.exit unwind label %bb.b, !dbg !5642

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !5637)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate8HirFrameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate8HirFrameEEB1l_.exit.i.i.i unwind label %bb.c, !dbg !5643

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !5642
  unreachable, !dbg !5642

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate8HirFrameEEB1l_.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !5642

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate8HirFrameEEEB1z_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !5639)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate8HirFrameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB6_8Iterator4folduNCINvNvB2b_8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB37_3VecB1j_E14extend_trustedBQ_E0E0EB1n_(ptr noalias nofree noundef captures(none) dereferenceable(3) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5648 {
bb.a:
    #dbg_value(ptr %0, !5736, !DIExpression(), !5742)
    #dbg_declare(ptr poison, !5737, !DIExpression(), !5743)
    #dbg_declare(ptr %1, !5738, !DIExpression(), !5744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5745), !dbg !5849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5746), !dbg !5849
    #dbg_value(ptr %0, !5747, !DIExpression(), !5654)
    #dbg_declare(ptr poison, !5748, !DIExpression(), !5655)
    #dbg_declare(ptr poison, !5753, !DIExpression(), !5659)
    #dbg_declare(ptr %1, !5749, !DIExpression(), !5660)
    #dbg_declare(ptr %1, !5764, !DIExpression(), !5663)
    #dbg_value(ptr poison, !5759, !DIExpression(), !5664)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !5850, !alias.scope !5746 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5665)
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5672)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5850
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5850, !alias.scope !5746 ; 2 uses
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5665)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5672)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5850
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !5850, !alias.scope !5746
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5665)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5770, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5782), !dbg !5851
    #dbg_value(ptr %0, !5773, !DIExpression(), !5675)
    #dbg_declare(ptr poison, !5774, !DIExpression(), !5676)
    #dbg_declare(ptr poison, !5775, !DIExpression(), !5677)
    #dbg_value(ptr %0, !5783, !DIExpression(), !5680)
  %.sroa.0.0.copyload.i11.i.i = load i24, ptr %0, align 1, !dbg !5852, !alias.scope !5787 ; 2 uses
  store i8 0, ptr %0, align 1, !dbg !5853, !alias.scope !5787
  %i.a = trunc i24 %.sroa.0.0.copyload.i11.i.i to i1, !dbg !5854
  br i1 %i.a, label %.lr.ph.i.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3u_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, !dbg !5855

.lr.ph.i.i:                                       ; preds = %bb.a
  %extract.i.i = lshr i24 %.sroa.0.0.copyload.i11.i.i, 8, !dbg !5855
  %extract.t.i.i = trunc nuw i24 %extract.i.i to i16, !dbg !5855
  br label %bb.b, !dbg !5855

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.b = phi i64 [ %.sroa.4.0.copyload.i, %.lr.ph.i.i ], [ %i.d, %bb.b ], !dbg !5856 ; 2 uses
  %.sroa.0.0.copyload.i12.off8.i.i = phi i16 [ %extract.t.i.i, %.lr.ph.i.i ], [ %extract.t14.i.i, %bb.b ]
    #dbg_value(i24 poison, !5776, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5691)
    #dbg_value(i24 poison, !5776, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5691)
    #dbg_value(ptr poison, !5804, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5694)
    #dbg_declare(ptr poison, !5808, !DIExpression(), !5695)
    #dbg_value(i24 poison, !5809, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5694)
    #dbg_value(i24 poison, !5809, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5694)
    #dbg_value(ptr poison, !5811, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5698)
    #dbg_declare(ptr poison, !5816, !DIExpression(), !5699)
    #dbg_value(i24 poison, !5815, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5698)
    #dbg_value(i24 poison, !5815, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5698)
    #dbg_value(ptr poison, !5820, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5702)
    #dbg_value(ptr poison, !5825, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5702)
    #dbg_value(i24 poison, !5824, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5702)
    #dbg_value(i24 poison, !5824, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5702)
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.b, !dbg !5857
  store i16 %.sroa.0.0.copyload.i12.off8.i.i, ptr %i.c, align 1, !dbg !5858, !noalias !5829
  %i.d = add i64 %i.b, 1, !dbg !5859              ; 2 uses
    #dbg_value(ptr %0, !5783, !DIExpression(), !5680)
  %.sroa.0.0.copyload.i.i.i = load i24, ptr %0, align 1, !dbg !5852, !alias.scope !5787 ; 2 uses
  store i8 0, ptr %0, align 1, !dbg !5853, !alias.scope !5787
  %i.e = trunc i24 %.sroa.0.0.copyload.i.i.i to i1, !dbg !5854
  %extract13.i.i = lshr i24 %.sroa.0.0.copyload.i.i.i, 8, !dbg !5855
  %extract.t14.i.i = trunc nuw i24 %extract13.i.i to i16, !dbg !5855
  br i1 %i.e, label %bb.b, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3u_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, !dbg !5855

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3u_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit: ; preds = %bb.b, %bb.a
  %.val10.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.d, %bb.b ], !dbg !5860
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !5830, !DIExpression(), !5718)
    #dbg_value(ptr poison, !5836, !DIExpression(), !5721)
    #dbg_value(ptr poison, !5842, !DIExpression(), !5724)
    #dbg_value(ptr poison, !1979, !DIExpression(), !5726)
    #dbg_value(ptr poison, !1985, !DIExpression(), !5728)
  store i64 %.val10.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !5861, !noalias !5848
  ret void, !dbg !5862
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_8Iterator4folduNCINvNvB2d_8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB39_3VecB1j_E14extend_trustedBQ_E0E0EB1n_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5865 {
bb.a:
    #dbg_value(ptr %0, !5953, !DIExpression(), !5959)
    #dbg_declare(ptr poison, !5954, !DIExpression(), !5960)
    #dbg_declare(ptr %1, !5955, !DIExpression(), !5961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5962), !dbg !6064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5963), !dbg !6064
    #dbg_value(ptr %0, !5964, !DIExpression(), !5871)
    #dbg_declare(ptr poison, !5965, !DIExpression(), !5872)
    #dbg_declare(ptr poison, !5970, !DIExpression(), !5876)
    #dbg_declare(ptr %1, !5966, !DIExpression(), !5877)
    #dbg_declare(ptr %1, !5981, !DIExpression(), !5880)
    #dbg_value(ptr poison, !5976, !DIExpression(), !5881)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !6065, !alias.scope !5963 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5882)
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5889)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6065
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6065, !alias.scope !5963 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5882)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5889)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6065
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !6065, !alias.scope !5963
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5977, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5882)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5987, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5999), !dbg !6066
    #dbg_value(ptr %0, !5990, !DIExpression(), !5892)
    #dbg_declare(ptr poison, !5991, !DIExpression(), !5893)
    #dbg_declare(ptr poison, !5992, !DIExpression(), !5894)
  %.promoted.i.i = load i32, ptr %0, align 4, !alias.scope !6000 ; 2 uses
    #dbg_value(ptr %0, !6001, !DIExpression(), !5899)
  %.not11.i.i = icmp eq i32 %.promoted.i.i, -1, !dbg !6067
  br i1 %.not11.i.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3w_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, label %.lr.ph.split.us.i.i, !dbg !6068

.lr.ph.split.us.i.i:                              ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !alias.scope !6000
    #dbg_value(i32 %.promoted.i.i, !5993, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5900)
    #dbg_value(i32 %3, !5993, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5900)
    #dbg_value(ptr poison, !6005, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5903)
    #dbg_declare(ptr poison, !6009, !DIExpression(), !5904)
    #dbg_value(i32 %.promoted.i.i, !6010, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5903)
    #dbg_value(i32 %3, !6010, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5903)
    #dbg_value(ptr poison, !6012, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5907)
    #dbg_declare(ptr poison, !6017, !DIExpression(), !5908)
    #dbg_value(i32 %.promoted.i.i, !6016, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5907)
    #dbg_value(i32 %3, !6016, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5907)
    #dbg_value(ptr poison, !6021, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5911)
    #dbg_value(ptr poison, !6026, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5911)
    #dbg_value(i32 %.promoted.i.i, !6025, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5911)
    #dbg_value(i32 %3, !6025, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5911)
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload.i, i64 %.sroa.4.0.copyload.i, !dbg !6069 ; 2 uses
  store i32 %.promoted.i.i, ptr %i.a, align 4, !dbg !6070, !noalias !6030
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !6070
  store i32 %3, ptr %4, align 4, !dbg !6070, !noalias !6030
  %i.b = add i64 %.sroa.4.0.copyload.i, 1, !dbg !6071
    #dbg_value(ptr %0, !6001, !DIExpression(), !5899)
  br label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3w_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, !dbg !6068

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3w_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit: ; preds = %bb.a, %.lr.ph.split.us.i.i
  %.val10.i.i = phi i64 [ %i.b, %.lr.ph.split.us.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ], !dbg !6072
  store i32 -1, ptr %0, align 4, !dbg !6073, !alias.scope !6000
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !6045, !DIExpression(), !5935)
    #dbg_value(ptr poison, !6051, !DIExpression(), !5938)
    #dbg_value(ptr poison, !6057, !DIExpression(), !5941)
    #dbg_value(ptr poison, !1979, !DIExpression(), !5943)
    #dbg_value(ptr poison, !1985, !DIExpression(), !5945)
  store i64 %.val10.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !6074, !noalias !6063
  ret void, !dbg !6075
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldcNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeuNCNvMs3_B2C_NtB2C_3Hir11alternation0NCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3u_EE0E0E0EB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6082 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr %0, !6161, !DIExpression(), !6169)
    #dbg_declare(ptr poison, !6162, !DIExpression(), !6170)
    #dbg_declare(ptr %1, !6163, !DIExpression(), !6171)
    #dbg_declare(ptr poison, !6172, !DIExpression(), !6177)
    #dbg_declare(ptr poison, !6192, !DIExpression(), !6199)
    #dbg_value(i64 1, !6200, !DIExpression(), !6207)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !671, !noundef !671 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
    #dbg_value(ptr %0, !6209, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6218)
    #dbg_value(ptr %0, !6219, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6223)
    #dbg_value(ptr poison, !6212, !DIExpression(), !6224)
    #dbg_value(ptr poison, !6220, !DIExpression(), !6225)
  %.not.not24 = icmp eq ptr %.promoted, %i.c, !dbg !6304
  br i1 %.not.not24, label %bb.b, label %.lr.ph, !dbg !6217

.lr.ph:                                           ; preds = %bb.a
  %.promoted32 = ptrtoaddr ptr %.promoted to i64, !dbg !6304
  %i.e = ptrtoaddr ptr %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !6226, !noundef !671 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted25 = load i64, ptr %i.h, align 8, !alias.scope !6226 ; 5 uses
  %i.i = add i64 %i.e, -4, !dbg !6217
  %i.j = sub i64 %i.i, %.promoted32, !dbg !6217   ; 4 uses
  %i.k = lshr i64 %i.j, 2, !dbg !6217
  %i.l = add nuw nsw i64 %i.k, 1, !dbg !6217      ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 92, !dbg !6217
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !6217

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl i64 %.promoted25, 3, !dbg !6217      ; 2 uses
  %i.n = getelementptr nuw i8, ptr %i.g, i64 %i.m, !dbg !6217
  %i.o = shl i64 %i.j, 1, !dbg !6217
  %i.p = and i64 %i.o, -8, !dbg !6217
  %i.q = getelementptr i8, ptr %i.g, i64 %i.m, !dbg !6217
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p, !dbg !6217
  %i.s = getelementptr i8, ptr %i.r, i64 8, !dbg !6217
  %i.t = and i64 %i.j, -4, !dbg !6217
  %i.u = getelementptr i8, ptr %.promoted, i64 %i.t, !dbg !6217
  %i.v = getelementptr i8, ptr %i.u, i64 4, !dbg !6217
  %bound0 = icmp ult ptr %i.n, %i.v, !dbg !6217
  %bound1 = icmp ult ptr %.promoted, %i.s, !dbg !6217
  %found.conflict = and i1 %bound0, %bound1, !dbg !6217
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 9223372036854775804      ; 4 uses
  %i.w = add i64 %.promoted25, %n.vec             ; 2 uses
  %i.x = shl i64 %n.vec, 2
  %i.y = getelementptr i8, ptr %.promoted, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = add i64 %.promoted25, %index             ; 2 uses
  %i.aa = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 8, !dbg !6305
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !dbg !6305, !alias.scope !6237
  %wide.load33 = load <2 x i32>, ptr %i.ab, align 4, !dbg !6305, !alias.scope !6237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6238), !dbg !6306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6239), !dbg !6307
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6251), !dbg !6308
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.z, !dbg !6309
  %i.ad = getelementptr [8 x i8], ptr %i.g, i64 %i.z, !dbg !6309
  %i.ae = getelementptr i8, ptr %i.ad, i64 16, !dbg !6309
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>, !dbg !6310
  store <4 x i32> %interleaved.vec, ptr %i.ac, align 4, !dbg !6310, !alias.scope !6276, !noalias !6226
  %interleaved.vec34 = shufflevector <2 x i32> %wide.load33, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>, !dbg !6310
  store <4 x i32> %interleaved.vec34, ptr %i.ae, align 4, !dbg !6310, !alias.scope !6276, !noalias !6226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec, !dbg !6217
  br i1 %i.af, label %middle.block, label %vector.body, !dbg !6217, !llvm.loop !6117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec, !dbg !6217
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !6217

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted25, %vector.memcheck ], [ %.promoted25, %.lr.ph ], [ %i.w, %middle.block ]
  %.ph36 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.y, %middle.block ]
  br label %scalar.ph, !dbg !6217

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ag = phi i64 [ %i.am, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !6305 ; 2 uses
  %i.ah = phi ptr [ %i.aj, %scalar.ph ], [ %.ph36, %scalar.ph.preheader ] ; 2 uses
    #dbg_value(ptr %i.ah, !6235, !DIExpression(), !6277)
  %i.ai = load i32, ptr %i.ah, align 4, !dbg !6305, !range !6278, !noundef !671 ; 2 uses
    #dbg_value(i32 %i.ai, !6165, !DIExpression(), !6279)
    #dbg_value(ptr %i.ah, !6204, !DIExpression(), !6207)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4, !dbg !6311 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6238), !dbg !6306
    #dbg_value(ptr poison, !6245, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6118)
    #dbg_declare(ptr poison, !6243, !DIExpression(), !6119)
    #dbg_value(i32 %i.ai, !6244, !DIExpression(), !6118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6239), !dbg !6307
    #dbg_value(ptr poison, !6256, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6120)
    #dbg_declare(ptr poison, !6257, !DIExpression(), !6121)
    #dbg_value(i32 %i.ai, !6255, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6120)
    #dbg_value(i32 %i.ai, !6255, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6251), !dbg !6308
    #dbg_value(ptr poison, !6265, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6122)
    #dbg_value(ptr poison, !6266, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6122)
    #dbg_value(i32 %i.ai, !6264, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6122)
    #dbg_value(i32 %i.ai, !6264, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6122)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag, !dbg !6309 ; 2 uses
  store i32 %i.ai, ptr %i.ak, align 4, !dbg !6310, !noalias !6226
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4, !dbg !6310
  store i32 %i.ai, ptr %i.al, align 4, !dbg !6310, !noalias !6226
  %i.am = add i64 %i.ag, 1, !dbg !6312            ; 2 uses
    #dbg_value(ptr %0, !6209, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6218)
    #dbg_value(ptr %0, !6219, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6223)
    #dbg_value(ptr poison, !6212, !DIExpression(), !6224)
    #dbg_value(ptr poison, !6220, !DIExpression(), !6225)
  %.not.not = icmp eq ptr %i.aj, %i.c, !dbg !6304
  br i1 %.not.not, label %._crit_edge, label %scalar.ph, !dbg !6217, !llvm.loop !6125

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.w, %middle.block ], [ %i.am, %scalar.ph ], !dbg !6312
  store i64 %.lcssa, ptr %i.h, align 8, !dbg !6313, !alias.scope !6226
  br label %bb.b, !dbg !6217

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.an = load ptr, ptr %0, align 8, !dbg !6314, !nonnull !671, !noundef !671
    #dbg_value(ptr %i.an, !6181, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6280)
    #dbg_value(ptr %i.an, !6193, !DIExpression(), !6281)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6314
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !6314, !noundef !671
    #dbg_value(i64 %i.ap, !6181, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6280)
    #dbg_value(i64 %i.ap, !6182, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6282)
    #dbg_value(i64 %i.ap, !6194, !DIExpression(), !6281)
    #dbg_value(ptr poison, !6181, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6280)
    #dbg_value(ptr poison, !6182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6282)
    #dbg_value(ptr poison, !6181, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6280)
    #dbg_value(ptr poison, !6182, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6282)
    #dbg_value(ptr %i.an, !6182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6282)
    #dbg_value(ptr poison, !6173, !DIExpression(), !6283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6198
    #dbg_value(ptr %i.an, !6195, !DIExpression(), !6284)
    #dbg_value(i64 %i.ap, !6196, !DIExpression(), !6285)
  store i64 %i.ap, ptr %i.a, align 8, !dbg !6315
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6315
  store ptr %i.an, ptr %i.aq, align 8, !dbg !6315
    #dbg_value(ptr %i.a, !2058, !DIExpression(), !6127)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !6316

bb.c:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %.val20 = load ptr, ptr %1, align 8, !dbg !6317, !nonnull !671, !align !2064, !noundef !671
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6317
  %.val21 = load i64, ptr %i.as, align 8, !dbg !6317, !noundef !671
    #dbg_value(ptr poison, !6286, !DIExpression(), !6130)
    #dbg_value(ptr poison, !6292, !DIExpression(), !6133)
    #dbg_value(ptr poison, !6298, !DIExpression(), !6136)
    #dbg_value(ptr poison, !1979, !DIExpression(), !6138)
    #dbg_value(ptr poison, !1985, !DIExpression(), !6140)
  store i64 %.val21, ptr %.val20, align 8, !dbg !6318
  resume { ptr, i32 } %i.ar, !dbg !6319

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6320
  %.val = load ptr, ptr %1, align 8, !dbg !6317, !nonnull !671, !align !2064, !noundef !671
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6317
  %.val19 = load i64, ptr %i.at, align 8, !dbg !6317, !noundef !671
    #dbg_value(ptr poison, !6286, !DIExpression(), !6142)
    #dbg_value(ptr poison, !6292, !DIExpression(), !6144)
    #dbg_value(ptr poison, !6298, !DIExpression(), !6146)
    #dbg_value(ptr poison, !1979, !DIExpression(), !6148)
    #dbg_value(ptr poison, !1985, !DIExpression(), !6150)
  store i64 %.val19, ptr %.val, align 8, !dbg !6321
  ret void, !dbg !6322
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldhNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeuNCNvMs3_B2C_NtB2C_3Hir11alternations_0NCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3s_EE0E0E0EB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6329 {
end_hunk_0
