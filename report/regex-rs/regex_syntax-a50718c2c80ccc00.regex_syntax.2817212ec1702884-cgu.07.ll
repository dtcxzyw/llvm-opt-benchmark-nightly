Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.07?download=true
inline.NumInlined: 347
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir9translate10TranslatorEBH_:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5745), !dbg !5850
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5746), !dbg !5850
    #dbg_value(ptr %0, !5747, !DIExpression(), !5654)
    #dbg_declare(ptr poison, !5748, !DIExpression(), !5655)
    #dbg_declare(ptr poison, !5753, !DIExpression(), !5659)
    #dbg_declare(ptr %1, !5749, !DIExpression(), !5660)
    #dbg_declare(ptr %1, !5764, !DIExpression(), !5663)
    #dbg_value(ptr poison, !5759, !DIExpression(), !5664)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !5851, !alias.scope !5746, !noalias !5745 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5665)
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5672)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5851
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5851, !alias.scope !5746, !noalias !5745 ; 2 uses
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5665)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5672)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5851
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !5851, !alias.scope !5746, !noalias !5745
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5665)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5770, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5782), !dbg !5852
    #dbg_value(ptr %0, !5773, !DIExpression(), !5675)
    #dbg_declare(ptr poison, !5774, !DIExpression(), !5676)
    #dbg_declare(ptr poison, !5775, !DIExpression(), !5677)
    #dbg_value(ptr %0, !5783, !DIExpression(), !5680)
  %.sroa.0.0.copyload.i11.i.i = load i24, ptr %0, align 1, !dbg !5853, !alias.scope !5787, !noalias !5788 ; 2 uses
  store i8 0, ptr %0, align 1, !dbg !5854, !alias.scope !5787, !noalias !5788
  %i.a = trunc i24 %.sroa.0.0.copyload.i11.i.i to i1, !dbg !5855
  br i1 %i.a, label %.lr.ph.i.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3u_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, !dbg !5856

.lr.ph.i.i:                                       ; preds = %bb.a
  %extract.i.i = lshr i24 %.sroa.0.0.copyload.i11.i.i, 8, !dbg !5856
  %extract.t.i.i = trunc nuw i24 %extract.i.i to i16, !dbg !5856
  br label %bb.b, !dbg !5856

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.b = phi i64 [ %.sroa.4.0.copyload.i, %.lr.ph.i.i ], [ %i.d, %bb.b ], !dbg !5857 ; 2 uses
  %.sroa.0.0.copyload.i12.off8.i.i = phi i16 [ %extract.t.i.i, %.lr.ph.i.i ], [ %extract.t14.i.i, %bb.b ]
    #dbg_value(i24 poison, !5776, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5692)
    #dbg_value(i24 poison, !5776, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5692)
    #dbg_value(ptr poison, !5805, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5695)
    #dbg_declare(ptr poison, !5809, !DIExpression(), !5696)
    #dbg_value(i24 poison, !5810, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5695)
    #dbg_value(i24 poison, !5810, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5695)
    #dbg_value(ptr poison, !5812, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5699)
    #dbg_declare(ptr poison, !5817, !DIExpression(), !5700)
    #dbg_value(i24 poison, !5816, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5699)
    #dbg_value(i24 poison, !5816, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5699)
    #dbg_value(ptr poison, !5821, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5703)
    #dbg_value(ptr poison, !5826, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5703)
    #dbg_value(i24 poison, !5825, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5703)
    #dbg_value(i24 poison, !5825, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5703)
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.b, !dbg !5858
  store i16 %.sroa.0.0.copyload.i12.off8.i.i, ptr %i.c, align 1, !dbg !5859, !noalias !5830
  %i.d = add i64 %i.b, 1, !dbg !5860              ; 2 uses
    #dbg_value(ptr %0, !5783, !DIExpression(), !5680)
  %.sroa.0.0.copyload.i.i.i = load i24, ptr %0, align 1, !dbg !5853, !alias.scope !5787, !noalias !5788 ; 2 uses
  store i8 0, ptr %0, align 1, !dbg !5854, !alias.scope !5787, !noalias !5788
  %i.e = trunc i24 %.sroa.0.0.copyload.i.i.i to i1, !dbg !5855
  %extract13.i.i = lshr i24 %.sroa.0.0.copyload.i.i.i, 8, !dbg !5856
  %extract.t14.i.i = trunc nuw i24 %extract13.i.i to i16, !dbg !5856
  br i1 %i.e, label %bb.b, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3u_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, !dbg !5856

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3u_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit: ; preds = %bb.b, %bb.a
  %.val10.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.d, %bb.b ], !dbg !5861
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !5831, !DIExpression(), !5718)
    #dbg_value(ptr poison, !5837, !DIExpression(), !5721)
    #dbg_value(ptr poison, !5843, !DIExpression(), !5724)
    #dbg_value(ptr poison, !1979, !DIExpression(), !5726)
    #dbg_value(ptr poison, !1985, !DIExpression(), !5728)
  store i64 %.val10.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !5862, !noalias !5849
  ret void, !dbg !5863
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_8Iterator4folduNCINvNvB2d_8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB39_3VecB1j_E14extend_trustedBQ_E0E0EB1n_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5866 {
bb.a:
    #dbg_value(ptr %0, !5954, !DIExpression(), !5960)
    #dbg_declare(ptr poison, !5955, !DIExpression(), !5961)
    #dbg_declare(ptr %1, !5956, !DIExpression(), !5962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5963), !dbg !6066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5964), !dbg !6066
    #dbg_value(ptr %0, !5965, !DIExpression(), !5872)
    #dbg_declare(ptr poison, !5966, !DIExpression(), !5873)
    #dbg_declare(ptr poison, !5971, !DIExpression(), !5877)
    #dbg_declare(ptr %1, !5967, !DIExpression(), !5878)
    #dbg_declare(ptr %1, !5982, !DIExpression(), !5881)
    #dbg_value(ptr poison, !5977, !DIExpression(), !5882)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !6067, !alias.scope !5964, !noalias !5963 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5883)
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5890)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6067
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6067, !alias.scope !5964, !noalias !5963 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5883)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5890)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6067
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !6067, !alias.scope !5964, !noalias !5963
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5978, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5883)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5988, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6000), !dbg !6068
    #dbg_value(ptr %0, !5991, !DIExpression(), !5893)
    #dbg_declare(ptr poison, !5992, !DIExpression(), !5894)
    #dbg_declare(ptr poison, !5993, !DIExpression(), !5895)
  %.promoted.i.i = load i32, ptr %0, align 4, !alias.scope !6001, !noalias !6002 ; 2 uses
    #dbg_value(ptr %0, !6003, !DIExpression(), !5901)
  %.not11.i.i = icmp eq i32 %.promoted.i.i, -1, !dbg !6069
  br i1 %.not11.i.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3w_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, label %.lr.ph.split.us.i.i, !dbg !6070

.lr.ph.split.us.i.i:                              ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !alias.scope !6001, !noalias !6002
    #dbg_value(i32 %.promoted.i.i, !5994, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5902)
    #dbg_value(i32 %i.b, !5994, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5902)
    #dbg_value(ptr poison, !6007, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5905)
    #dbg_declare(ptr poison, !6011, !DIExpression(), !5906)
    #dbg_value(i32 %.promoted.i.i, !6012, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5905)
    #dbg_value(i32 %i.b, !6012, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5905)
    #dbg_value(ptr poison, !6014, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5909)
    #dbg_declare(ptr poison, !6019, !DIExpression(), !5910)
    #dbg_value(i32 %.promoted.i.i, !6018, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5909)
    #dbg_value(i32 %i.b, !6018, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5909)
    #dbg_value(ptr poison, !6023, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5913)
    #dbg_value(ptr poison, !6028, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5913)
    #dbg_value(i32 %.promoted.i.i, !6027, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5913)
    #dbg_value(i32 %i.b, !6027, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5913)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload.i, i64 %.sroa.4.0.copyload.i, !dbg !6071 ; 2 uses
  store i32 %.promoted.i.i, ptr %i.c, align 4, !dbg !6072, !noalias !6032
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !6072
  store i32 %i.b, ptr %i.d, align 4, !dbg !6072, !noalias !6032
  %i.e = add i64 %.sroa.4.0.copyload.i, 1, !dbg !6073
    #dbg_value(ptr %0, !6003, !DIExpression(), !5901)
  br label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3w_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit, !dbg !6070

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBa_7sources4once4OnceNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1j_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3w_3VecB1j_E14extend_trustedBQ_E0E0EB1n_.exit: ; preds = %bb.a, %.lr.ph.split.us.i.i
  %.val10.i.i = phi i64 [ %i.e, %.lr.ph.split.us.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ], !dbg !6074
  store i32 -1, ptr %0, align 4, !dbg !6075, !alias.scope !6001, !noalias !6002
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !6047, !DIExpression(), !5936)
    #dbg_value(ptr poison, !6053, !DIExpression(), !5939)
    #dbg_value(ptr poison, !6059, !DIExpression(), !5942)
    #dbg_value(ptr poison, !1979, !DIExpression(), !5944)
    #dbg_value(ptr poison, !1985, !DIExpression(), !5946)
  store i64 %.val10.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !6076, !noalias !6065
  ret void, !dbg !6077
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldcNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeuNCNvMs3_B2C_NtB2C_3Hir11alternation0NCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3u_EE0E0E0EB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6084 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr %0, !6163, !DIExpression(), !6171)
    #dbg_declare(ptr poison, !6164, !DIExpression(), !6172)
    #dbg_declare(ptr %1, !6165, !DIExpression(), !6173)
    #dbg_declare(ptr poison, !6174, !DIExpression(), !6179)
    #dbg_declare(ptr poison, !6194, !DIExpression(), !6201)
    #dbg_value(i64 1, !6202, !DIExpression(), !6209)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !671, !noundef !671 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
    #dbg_value(ptr %0, !6211, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6220)
    #dbg_value(ptr %0, !6221, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6225)
    #dbg_value(ptr poison, !6214, !DIExpression(), !6226)
    #dbg_value(ptr poison, !6222, !DIExpression(), !6227)
  %.not.not24 = icmp eq ptr %.promoted, %i.c, !dbg !6306
  br i1 %.not.not24, label %bb.b, label %.lr.ph, !dbg !6219

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6228, !noundef !671 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted25 = load i64, ptr %i.g, align 8, !alias.scope !6228 ; 5 uses
  %2 = ptrtoaddr ptr %i.c to i64, !dbg !6219
  %3 = ptrtoaddr ptr %.promoted to i64, !dbg !6219
  %i.h = add i64 %2, -4, !dbg !6219
  %i.i = sub i64 %i.h, %3, !dbg !6219             ; 4 uses
  %i.j = lshr i64 %i.i, 2, !dbg !6219
  %i.k = add nuw nsw i64 %i.j, 1, !dbg !6219      ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 92, !dbg !6219
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !6219

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl i64 %.promoted25, 3, !dbg !6219      ; 2 uses
  %i.m = getelementptr nuw i8, ptr %i.f, i64 %i.l, !dbg !6219
  %i.n = shl i64 %i.i, 1, !dbg !6219
  %i.o = and i64 %i.n, -8, !dbg !6219
  %i.p = getelementptr i8, ptr %i.f, i64 %i.l, !dbg !6219
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o, !dbg !6219
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !6219
  %i.s = and i64 %i.i, -4, !dbg !6219
  %i.t = getelementptr i8, ptr %.promoted, i64 %i.s, !dbg !6219
  %i.u = getelementptr i8, ptr %i.t, i64 4, !dbg !6219
  %bound0 = icmp ult ptr %i.m, %i.u, !dbg !6219
  %bound1 = icmp ult ptr %.promoted, %i.r, !dbg !6219
  %found.conflict = and i1 %bound0, %bound1, !dbg !6219
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 9223372036854775804      ; 4 uses
  %i.v = add i64 %.promoted25, %n.vec             ; 2 uses
  %i.w = shl i64 %n.vec, 2
  %i.x = getelementptr i8, ptr %.promoted, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = add i64 %.promoted25, %index             ; 2 uses
  %i.z = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 8, !dbg !6307
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !dbg !6307, !alias.scope !6239
  %wide.load32 = load <2 x i32>, ptr %i.aa, align 4, !dbg !6307, !alias.scope !6239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6240), !dbg !6308
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6241), !dbg !6309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6253), !dbg !6310
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.y, !dbg !6311
  %i.ac = getelementptr [8 x i8], ptr %i.f, i64 %i.y, !dbg !6311
  %i.ad = getelementptr i8, ptr %i.ac, i64 16, !dbg !6311
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>, !dbg !6312
  store <4 x i32> %interleaved.vec, ptr %i.ab, align 4, !dbg !6312, !alias.scope !6278, !noalias !6228
  %interleaved.vec33 = shufflevector <2 x i32> %wide.load32, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>, !dbg !6312
  store <4 x i32> %interleaved.vec33, ptr %i.ad, align 4, !dbg !6312, !alias.scope !6278, !noalias !6228
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec, !dbg !6219
  br i1 %i.ae, label %middle.block, label %vector.body, !dbg !6219, !llvm.loop !6119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec, !dbg !6219
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !6219

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted25, %vector.memcheck ], [ %.promoted25, %.lr.ph ], [ %i.v, %middle.block ]
  %.ph35 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.x, %middle.block ]
  br label %scalar.ph, !dbg !6219

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.al, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !6307 ; 2 uses
  %i.ag = phi ptr [ %i.ai, %scalar.ph ], [ %.ph35, %scalar.ph.preheader ] ; 2 uses
    #dbg_value(ptr %i.ag, !6237, !DIExpression(), !6279)
  %i.ah = load i32, ptr %i.ag, align 4, !dbg !6307, !range !6280, !noundef !671 ; 2 uses
    #dbg_value(i32 %i.ah, !6167, !DIExpression(), !6281)
    #dbg_value(ptr %i.ag, !6206, !DIExpression(), !6209)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4, !dbg !6313 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6240), !dbg !6308
    #dbg_value(ptr poison, !6247, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6120)
    #dbg_declare(ptr poison, !6245, !DIExpression(), !6121)
    #dbg_value(i32 %i.ah, !6246, !DIExpression(), !6120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6241), !dbg !6309
    #dbg_value(ptr poison, !6258, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6122)
    #dbg_declare(ptr poison, !6259, !DIExpression(), !6123)
    #dbg_value(i32 %i.ah, !6257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6122)
    #dbg_value(i32 %i.ah, !6257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6253), !dbg !6310
    #dbg_value(ptr poison, !6267, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6124)
    #dbg_value(ptr poison, !6268, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6124)
    #dbg_value(i32 %i.ah, !6266, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6124)
    #dbg_value(i32 %i.ah, !6266, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6124)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.af, !dbg !6311 ; 2 uses
  store i32 %i.ah, ptr %i.aj, align 4, !dbg !6312, !noalias !6228
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !6312
  store i32 %i.ah, ptr %i.ak, align 4, !dbg !6312, !noalias !6228
  %i.al = add i64 %i.af, 1, !dbg !6314            ; 2 uses
    #dbg_value(ptr %0, !6211, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6220)
    #dbg_value(ptr %0, !6221, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6225)
    #dbg_value(ptr poison, !6214, !DIExpression(), !6226)
    #dbg_value(ptr poison, !6222, !DIExpression(), !6227)
  %.not.not = icmp eq ptr %i.ai, %i.c, !dbg !6306
  br i1 %.not.not, label %._crit_edge, label %scalar.ph, !dbg !6219, !llvm.loop !6127

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.v, %middle.block ], [ %i.al, %scalar.ph ], !dbg !6314
  store i64 %.lcssa, ptr %i.g, align 8, !dbg !6315, !alias.scope !6228
  br label %bb.b, !dbg !6219

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.am = load ptr, ptr %0, align 8, !dbg !6316, !nonnull !671, !noundef !671
    #dbg_value(ptr %i.am, !6183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6282)
    #dbg_value(ptr %i.am, !6195, !DIExpression(), !6283)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6316
  %i.ao = load i64, ptr %i.an, align 8, !dbg !6316, !noundef !671
    #dbg_value(i64 %i.ao, !6183, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6282)
    #dbg_value(i64 %i.ao, !6184, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6284)
    #dbg_value(i64 %i.ao, !6196, !DIExpression(), !6283)
    #dbg_value(ptr poison, !6183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6282)
    #dbg_value(ptr poison, !6184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6284)
    #dbg_value(ptr poison, !6183, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6282)
    #dbg_value(ptr poison, !6184, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6284)
    #dbg_value(ptr %i.am, !6184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6284)
    #dbg_value(ptr poison, !6175, !DIExpression(), !6285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6200
    #dbg_value(ptr %i.am, !6197, !DIExpression(), !6286)
    #dbg_value(i64 %i.ao, !6198, !DIExpression(), !6287)
  store i64 %i.ao, ptr %i.a, align 8, !dbg !6317
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6317
  store ptr %i.am, ptr %i.ap, align 8, !dbg !6317
    #dbg_value(ptr %i.a, !2058, !DIExpression(), !6129)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !6318

bb.c:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %.val20 = load ptr, ptr %1, align 8, !dbg !6319, !nonnull !671, !align !2064, !noundef !671
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6319
  %.val21 = load i64, ptr %i.ar, align 8, !dbg !6319, !noundef !671
    #dbg_value(ptr poison, !6288, !DIExpression(), !6132)
    #dbg_value(ptr poison, !6294, !DIExpression(), !6135)
    #dbg_value(ptr poison, !6300, !DIExpression(), !6138)
    #dbg_value(ptr poison, !1979, !DIExpression(), !6140)
    #dbg_value(ptr poison, !1985, !DIExpression(), !6142)
  store i64 %.val21, ptr %.val20, align 8, !dbg !6320
  resume { ptr, i32 } %i.aq, !dbg !6321

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6322
  %.val = load ptr, ptr %1, align 8, !dbg !6319, !nonnull !671, !align !2064, !noundef !671
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6319
  %.val19 = load i64, ptr %i.as, align 8, !dbg !6319, !noundef !671
    #dbg_value(ptr poison, !6288, !DIExpression(), !6144)
    #dbg_value(ptr poison, !6294, !DIExpression(), !6146)
    #dbg_value(ptr poison, !6300, !DIExpression(), !6148)
    #dbg_value(ptr poison, !1979, !DIExpression(), !6150)
    #dbg_value(ptr poison, !1985, !DIExpression(), !6152)
  store i64 %.val19, ptr %.val, align 8, !dbg !6323
  ret void, !dbg !6324
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldhNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeuNCNvMs3_B2C_NtB2C_3Hir11alternations_0NCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3s_EE0E0E0EB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6331 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr %0, !6421, !DIExpression(), !6429)
    #dbg_declare(ptr poison, !6422, !DIExpression(), !6430)
    #dbg_declare(ptr %1, !6423, !DIExpression(), !6431)
    #dbg_declare(ptr poison, !6432, !DIExpression(), !6437)
    #dbg_declare(ptr poison, !6452, !DIExpression(), !6459)
    #dbg_value(i64 1, !6460, !DIExpression(), !6467)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !671, !noundef !671 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 10 uses
    #dbg_value(ptr %0, !6469, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6478)
    #dbg_value(ptr %0, !6479, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6483)
    #dbg_value(ptr poison, !6472, !DIExpression(), !6484)
    #dbg_value(ptr poison, !6480, !DIExpression(), !6485)
  %.not.not24 = icmp eq ptr %.promoted, %i.c, !dbg !6568
  br i1 %.not.not24, label %bb.b, label %iter.check, !dbg !6477

iter.check:                                       ; preds = %bb.a
  %.promoted32 = ptrtoaddr ptr %.promoted to i64, !dbg !6568
  %2 = ptrtoaddr ptr %i.c to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6486, !noundef !671 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted25 = load i64, ptr %i.g, align 8, !alias.scope !6486 ; 8 uses
  %i.h = sub i64 %2, %.promoted32, !dbg !6477     ; 7 uses
  %min.iters.check = icmp ult i64 %i.h, 4, !dbg !6477
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !6477

vector.memcheck:                                  ; preds = %iter.check
  %i.i = shl i64 %.promoted25, 1, !dbg !6477
  %i.j = getelementptr nuw i8, ptr %i.f, i64 %i.i, !dbg !6477
  %3 = ptrtoaddr ptr %i.c to i64, !dbg !6477
  %i.k = add i64 %.promoted25, %3, !dbg !6477
  %4 = ptrtoaddr ptr %.promoted to i64, !dbg !6477
  %i.l = sub i64 %i.k, %4, !dbg !6477
  %i.m = shl i64 %i.l, 1, !dbg !6477
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m, !dbg !6477
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !6477
  %bound1 = icmp ult ptr %.promoted, %i.n, !dbg !6477
  %found.conflict = and i1 %bound0, %bound1, !dbg !6477
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check33 = icmp ult i64 %i.h, 16, !dbg !6477
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph, !dbg !6477

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 5 uses
  %i.p = add i64 %.promoted25, %n.vec             ; 2 uses
  %i.q = getelementptr i8, ptr %.promoted, i64 %n.vec
  br label %vector.body, !dbg !6477

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %.promoted25, %index             ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 8, !dbg !6569
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !dbg !6569, !alias.scope !6497
  %wide.load34 = load <8 x i8>, ptr %i.s, align 1, !dbg !6569, !alias.scope !6497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6498), !dbg !6570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499), !dbg !6571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6511), !dbg !6572
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.r, !dbg !6573
  %i.u = getelementptr [2 x i8], ptr %i.f, i64 %i.r, !dbg !6573
  %i.v = getelementptr i8, ptr %i.u, i64 16, !dbg !6573
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>, !dbg !6574
  store <16 x i8> %interleaved.vec, ptr %i.t, align 1, !dbg !6574, !alias.scope !6536, !noalias !6486
  %interleaved.vec35 = shufflevector <8 x i8> %wide.load34, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>, !dbg !6574
  store <16 x i8> %interleaved.vec35, ptr %i.v, align 1, !dbg !6574, !alias.scope !6536, !noalias !6486
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !6477
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !6477, !llvm.loop !6366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !6477
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !6477

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6537

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.h, -4                     ; 4 uses
  %i.x = add i64 %.promoted25, %n.vec37           ; 2 uses
  %i.y = getelementptr i8, ptr %.promoted, i64 %n.vec37
  %i.z = getelementptr [2 x i8], ptr %i.f, i64 %.promoted25
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %next.gep39 = getelementptr i8, ptr %.promoted, i64 %index38
  %wide.load40 = load <4 x i8>, ptr %next.gep39, align 1, !dbg !6569, !alias.scope !6497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6498), !dbg !6570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499), !dbg !6571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6511), !dbg !6572
  %i.aa = getelementptr [2 x i8], ptr %i.z, i64 %index38, !dbg !6573
  %interleaved.vec41 = shufflevector <4 x i8> %wide.load40, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>, !dbg !6574
  store <8 x i8> %interleaved.vec41, ptr %i.aa, align 1, !dbg !6574, !alias.scope !6536, !noalias !6486
  %index.next42 = add nuw i64 %index38, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next42, %n.vec37, !dbg !6477
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !6477, !llvm.loop !6367

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.h, %n.vec37, !dbg !6477
  br i1 %cmp.n43, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !6477

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.promoted25, %iter.check ], [ %.promoted25, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.ph46 = phi ptr [ %.promoted, %iter.check ], [ %.promoted, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %.ph4648 = ptrtoaddr ptr %.ph46 to i64, !dbg !6477 ; 2 uses
  %i.ac = sub i64 %2, %.ph4648, !dbg !6477
  %xtraiter = and i64 %i.ac, 3, !dbg !6477        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6477
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6477

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ad = phi i64 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !6569 ; 2 uses
  %i.ae = phi ptr [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.ph46, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
    #dbg_value(ptr %i.ae, !6495, !DIExpression(), !6538)
  %i.af = load i8, ptr %i.ae, align 1, !dbg !6569, !noundef !671 ; 2 uses
    #dbg_value(i8 %i.af, !6425, !DIExpression(), !6539)
    #dbg_value(ptr %i.ae, !6464, !DIExpression(), !6467)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1, !dbg !6575 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6498), !dbg !6570
    #dbg_value(ptr poison, !6505, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6368)
    #dbg_declare(ptr poison, !6503, !DIExpression(), !6369)
    #dbg_value(i8 %i.af, !6504, !DIExpression(), !6368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499), !dbg !6571
    #dbg_value(ptr poison, !6516, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6370)
    #dbg_declare(ptr poison, !6517, !DIExpression(), !6371)
    #dbg_value(i8 %i.af, !6515, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6370)
    #dbg_value(i8 %i.af, !6515, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6511), !dbg !6572
    #dbg_value(ptr poison, !6525, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6372)
    #dbg_value(ptr poison, !6526, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6372)
    #dbg_value(i8 %i.af, !6524, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6372)
    #dbg_value(i8 %i.af, !6524, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6372)
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ad, !dbg !6573 ; 2 uses
  store i8 %i.af, ptr %i.ah, align 1, !dbg !6574, !noalias !6486
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !6574
  store i8 %i.af, ptr %i.ai, align 1, !dbg !6574, !noalias !6486
  %i.aj = add i64 %i.ad, 1, !dbg !6576            ; 3 uses
    #dbg_value(ptr %0, !6469, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6478)
    #dbg_value(ptr %0, !6479, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6483)
    #dbg_value(ptr poison, !6472, !DIExpression(), !6484)
    #dbg_value(ptr poison, !6480, !DIExpression(), !6485)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !6477 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !6477
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6477, !llvm.loop !6375

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa47.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %.unr49 = phi ptr [ %.ph46, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub i64 %.ph4648, %2, !dbg !6477
  %i.al = icmp ugt i64 %i.ak, -4, !dbg !6477
  br i1 %i.al, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !6477

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.am = phi i64 [ %i.bh, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !6569 ; 5 uses
  %i.an = phi ptr [ %i.bd, %vec.epilog.scalar.ph ], [ %.unr49, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
    #dbg_value(ptr %i.an, !6495, !DIExpression(), !6538)
  %i.ao = load i8, ptr %i.an, align 1, !dbg !6569, !noundef !671 ; 2 uses
    #dbg_value(i8 %i.ao, !6425, !DIExpression(), !6539)
    #dbg_value(ptr %i.an, !6464, !DIExpression(), !6467)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1, !dbg !6575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6498), !dbg !6570
    #dbg_value(ptr poison, !6505, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6368)
    #dbg_declare(ptr poison, !6503, !DIExpression(), !6369)
    #dbg_value(i8 %i.ao, !6504, !DIExpression(), !6368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499), !dbg !6571
    #dbg_value(ptr poison, !6516, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6370)
    #dbg_declare(ptr poison, !6517, !DIExpression(), !6371)
    #dbg_value(i8 %i.ao, !6515, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6370)
    #dbg_value(i8 %i.ao, !6515, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6511), !dbg !6572
    #dbg_value(ptr poison, !6525, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6372)
    #dbg_value(ptr poison, !6526, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6372)
    #dbg_value(i8 %i.ao, !6524, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6372)
    #dbg_value(i8 %i.ao, !6524, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6372)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.am, !dbg !6573 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !6574, !noalias !6486
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1, !dbg !6574
  store i8 %i.ao, ptr %i.ar, align 1, !dbg !6574, !noalias !6486
    #dbg_value(ptr %0, !6469, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6478)
    #dbg_value(ptr %0, !6479, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6483)
    #dbg_value(ptr poison, !6472, !DIExpression(), !6484)
    #dbg_value(ptr poison, !6480, !DIExpression(), !6485)
    #dbg_value(ptr %i.ap, !6495, !DIExpression(), !6538)
  %i.as = load i8, ptr %i.ap, align 1, !dbg !6569, !noundef !671 ; 2 uses
    #dbg_value(i8 %i.as, !6425, !DIExpression(), !6539)
    #dbg_value(ptr %i.ap, !6464, !DIExpression(), !6467)
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !6575
    #dbg_declare(ptr poison, !6503, !DIExpression(), !6369)
    #dbg_value(i8 %i.as, !6504, !DIExpression(), !6368)
    #dbg_declare(ptr poison, !6517, !DIExpression(), !6371)
    #dbg_value(i8 %i.as, !6515, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6370)
    #dbg_value(i8 %i.as, !6515, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6370)
    #dbg_value(i8 %i.as, !6524, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6372)
    #dbg_value(i8 %i.as, !6524, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6372)
  %i.au = getelementptr [2 x i8], ptr %i.f, i64 %i.am, !dbg !6573 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 2, !dbg !6573
  store i8 %i.as, ptr %i.av, align 1, !dbg !6574, !noalias !6541
  %i.aw = getelementptr i8, ptr %i.au, i64 3, !dbg !6574
  store i8 %i.as, ptr %i.aw, align 1, !dbg !6574, !noalias !6541
    #dbg_value(ptr %i.at, !6495, !DIExpression(), !6538)
  %i.ax = load i8, ptr %i.at, align 1, !dbg !6569, !noundef !671 ; 2 uses
    #dbg_value(i8 %i.ax, !6425, !DIExpression(), !6539)
    #dbg_value(ptr %i.at, !6464, !DIExpression(), !6467)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 3, !dbg !6575
    #dbg_declare(ptr poison, !6503, !DIExpression(), !6369)
    #dbg_value(i8 %i.ax, !6504, !DIExpression(), !6368)
    #dbg_declare(ptr poison, !6517, !DIExpression(), !6371)
    #dbg_value(i8 %i.ax, !6515, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6370)
    #dbg_value(i8 %i.ax, !6515, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6370)
    #dbg_value(i8 %i.ax, !6524, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6372)
    #dbg_value(i8 %i.ax, !6524, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6372)
  %i.az = getelementptr [2 x i8], ptr %i.f, i64 %i.am, !dbg !6573 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4, !dbg !6573
  store i8 %i.ax, ptr %i.ba, align 1, !dbg !6574, !noalias !6542
  %i.bb = getelementptr i8, ptr %i.az, i64 5, !dbg !6574
  store i8 %i.ax, ptr %i.bb, align 1, !dbg !6574, !noalias !6542
    #dbg_value(ptr %i.ay, !6495, !DIExpression(), !6538)
  %i.bc = load i8, ptr %i.ay, align 1, !dbg !6569, !noundef !671 ; 2 uses
    #dbg_value(i8 %i.bc, !6425, !DIExpression(), !6539)
    #dbg_value(ptr %i.ay, !6464, !DIExpression(), !6467)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !6575 ; 2 uses
    #dbg_declare(ptr poison, !6503, !DIExpression(), !6369)
    #dbg_value(i8 %i.bc, !6504, !DIExpression(), !6368)
    #dbg_declare(ptr poison, !6517, !DIExpression(), !6371)
    #dbg_value(i8 %i.bc, !6515, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6370)
    #dbg_value(i8 %i.bc, !6515, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6370)
end_hunk_0
