Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.09?download=true
inline.NumInlined: 672
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMsf_NtCshovLROGBtMy_11quinn_proto15transport_errorNtB6_5Error20FRAME_ENCODING_ERRORReEB8_:bb.a
    #dbg_declare(ptr poison, !1785, !DIExpression(), !5665)
    #dbg_value(i64 %2, !1774, !DIExpression(), !5666)
    #dbg_value(i64 %2, !1782, !DIExpression(), !5667)
    #dbg_value(i64 %2, !1789, !DIExpression(), !5668)
    #dbg_value(i64 %2, !1792, !DIExpression(), !5670)
    #dbg_value(i64 %2, !1801, !DIExpression(), !5672)
    #dbg_value(i64 %2, !1807, !DIExpression(), !5674)
    #dbg_value(i64 %2, !1834, !DIExpression(), !5676)
    #dbg_declare(ptr poison, !1818, !DIExpression(), !5677)
    #dbg_value(i64 1, !1819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5674)
    #dbg_value(i64 1, !1841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5676)
    #dbg_value(i64 1, !1819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5674)
    #dbg_value(i64 1, !1841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5676)
    #dbg_value(i64 0, !1840, !DIExpression(), !5676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5698, !noalias !5696
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !5698, !noalias !5696
  %i.b = load i64, ptr %i.a, align 8, !dbg !5698, !range !1843, !noalias !5696, !noundef !1053
  %i.c = trunc nuw i64 %i.b to i1, !dbg !5699
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5700
  %i.e = load i64, ptr %i.d, align 8, !dbg !5700, !range !1844, !noalias !5696, !noundef !1053 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5700 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i, !dbg !5699, !prof !1845

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !dbg !5701, !noalias !5696
    #dbg_value(i64 %i.e, !1821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5687)
    #dbg_value(i64 %i.g, !1821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5687)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30, !dbg !5702, !noalias !5696
  unreachable, !dbg !5702

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !dbg !5703, !noalias !5696, !nonnull !1053, !noundef !1053 ; 2 uses
    #dbg_value(i64 %i.e, !1820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5688)
    #dbg_value(ptr %i.h, !1820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5688)
    #dbg_value(ptr poison, !1839, !DIExpression(), !5689)
  %i.i = icmp samesign ule i64 %2, %i.e, !dbg !5704
    #dbg_value(i1 true, !1847, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5691)
  tail call void @llvm.assume(i1 %i.i), !dbg !5705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5706, !noalias !5696
    #dbg_value(i64 %i.e, !1775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5692)
    #dbg_value(ptr %i.h, !1775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5692)
    #dbg_value(i64 0, !1775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5692)
  %.not.i.i.i = icmp eq i64 %2, 0, !dbg !5707
  br i1 %.not.i.i.i, label %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCshovLROGBtMy_11quinn_proto.exit, label %bb.c, !dbg !5707

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i
    #dbg_value(ptr %1, !1798, !DIExpression(), !5670)
    #dbg_value(ptr %1, !1804, !DIExpression(), !5672)
    #dbg_value(ptr %i.h, !1799, !DIExpression(), !5670)
    #dbg_value(ptr %i.h, !1805, !DIExpression(), !5672)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !dbg !5708, !noalias !5697
    #dbg_value(i64 %2, !1775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5692)
  br label %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCshovLROGBtMy_11quinn_proto.exit, !dbg !5709

_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i, %bb.c
    #dbg_value(i64 %2, !1775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5692)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5710
  store i64 7, ptr %i.j, align 8, !dbg !5710
  store i64 0, ptr %0, align 8, !dbg !5710
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5710
  store i64 %i.e, ptr %i.k, align 8, !dbg !5710
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5710
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5710
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5710
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5710
  ret void, !dbg !5711
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsf_NtCshovLROGBtMy_11quinn_proto15transport_errorNtB6_5Error25CONNECTION_ID_LIMIT_ERRORReEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 !dbg !5712 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5763)
    #dbg_value(i64 %2, !5761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5763)
    #dbg_value(ptr %1, !1736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5714)
    #dbg_value(i64 %2, !1736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5714)
    #dbg_value(ptr %1, !1745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5716)
    #dbg_value(ptr %1, !1751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5718)
    #dbg_value(i64 %2, !1745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5716)
    #dbg_value(i64 %2, !1751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5718)
    #dbg_declare(ptr poison, !1756, !DIExpression(), !5722)
    #dbg_value(ptr %1, !1768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5723)
    #dbg_value(ptr %1, !1765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5724)
    #dbg_value(ptr %1, !1761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5725)
    #dbg_value(i64 %2, !1768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5723)
    #dbg_value(i64 %2, !1765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5724)
    #dbg_value(i64 %2, !1761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5725)
    #dbg_value(ptr %1, !1770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5727)
    #dbg_value(i64 %2, !1770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5727)
    #dbg_declare(ptr poison, !1773, !DIExpression(), !5728)
    #dbg_declare(ptr poison, !1778, !DIExpression(), !5730)
    #dbg_declare(ptr poison, !1785, !DIExpression(), !5732)
    #dbg_value(i64 %2, !1774, !DIExpression(), !5733)
    #dbg_value(i64 %2, !1782, !DIExpression(), !5734)
    #dbg_value(i64 %2, !1789, !DIExpression(), !5735)
    #dbg_value(i64 %2, !1792, !DIExpression(), !5737)
    #dbg_value(i64 %2, !1801, !DIExpression(), !5739)
    #dbg_value(i64 %2, !1807, !DIExpression(), !5741)
    #dbg_value(i64 %2, !1834, !DIExpression(), !5743)
    #dbg_declare(ptr poison, !1818, !DIExpression(), !5744)
    #dbg_value(i64 1, !1819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5741)
    #dbg_value(i64 1, !1841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5743)
    #dbg_value(i64 1, !1819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5741)
    #dbg_value(i64 1, !1841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5743)
    #dbg_value(i64 0, !1840, !DIExpression(), !5743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5766, !noalias !5764
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !5766, !noalias !5764
  %i.b = load i64, ptr %i.a, align 8, !dbg !5766, !range !1843, !noalias !5764, !noundef !1053
  %i.c = trunc nuw i64 %i.b to i1, !dbg !5767
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5768
  %i.e = load i64, ptr %i.d, align 8, !dbg !5768, !range !1844, !noalias !5764, !noundef !1053 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5768 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i, !dbg !5767, !prof !1845

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !dbg !5769, !noalias !5764
    #dbg_value(i64 %i.e, !1821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5754)
    #dbg_value(i64 %i.g, !1821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5754)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30, !dbg !5770, !noalias !5764
  unreachable, !dbg !5770

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !dbg !5771, !noalias !5764, !nonnull !1053, !noundef !1053 ; 2 uses
    #dbg_value(i64 %i.e, !1820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5755)
    #dbg_value(ptr %i.h, !1820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5755)
    #dbg_value(ptr poison, !1839, !DIExpression(), !5756)
  %i.i = icmp samesign ule i64 %2, %i.e, !dbg !5772
    #dbg_value(i1 true, !1847, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5758)
  tail call void @llvm.assume(i1 %i.i), !dbg !5773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5774, !noalias !5764
    #dbg_value(i64 %i.e, !1775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5759)
    #dbg_value(ptr %i.h, !1775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5759)
    #dbg_value(i64 0, !1775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5759)
  %.not.i.i.i = icmp eq i64 %2, 0, !dbg !5775
  br i1 %.not.i.i.i, label %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCshovLROGBtMy_11quinn_proto.exit, label %bb.c, !dbg !5775

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i
    #dbg_value(ptr %1, !1798, !DIExpression(), !5737)
    #dbg_value(ptr %1, !1804, !DIExpression(), !5739)
    #dbg_value(ptr %i.h, !1799, !DIExpression(), !5737)
    #dbg_value(ptr %i.h, !1805, !DIExpression(), !5739)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !dbg !5776, !noalias !5765
    #dbg_value(i64 %2, !1775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5759)
  br label %_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCshovLROGBtMy_11quinn_proto.exit, !dbg !5777

_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i.i.i, %bb.c
    #dbg_value(i64 %2, !1775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5759)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5778
  store i64 9, ptr %i.j, align 8, !dbg !5778
  store i64 0, ptr %0, align 8, !dbg !5778
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5778
  store i64 %i.e, ptr %i.k, align 8, !dbg !5778
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5778
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5778
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5778
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5778
  ret void, !dbg !5779
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENCINvMBN_BK_10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1r_Bz_NtB2L_5Array7default0E0EB1v_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5789 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !5832, !DIExpression(), !5858)
    #dbg_declare(ptr %i.a, !5833, !DIExpression(), !5859)
    #dbg_declare(ptr %i.a, !5834, !DIExpression(), !5860)
    #dbg_declare(ptr %i.c, !5835, !DIExpression(), !5861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5923
    #dbg_value(ptr %i.a, !5863, !DIExpression(), !5874)
    #dbg_value(ptr %i.a, !5869, !DIExpression(), !5875)
    #dbg_value(ptr %i.a, !5870, !DIExpression(), !5876)
    #dbg_value(i64 1, !5871, !DIExpression(), !5877)
  store ptr %i.a, ptr %i.c, align 8, !dbg !5924
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5924
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !dbg !5924
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5924
  store ptr %i.a, ptr %i.e, align 8, !dbg !5924
    #dbg_value(ptr %i.c, !5879, !DIExpression(), !5800)
    #dbg_declare(ptr poison, !5883, !DIExpression(), !5801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5897
    #dbg_value(ptr %i.c, !5898, !DIExpression(), !5813)
  store ptr %i.c, ptr %i.b, align 8, !noalias !5916
    #dbg_value(ptr poison, !5905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5813)
    #dbg_value(i64 1, !5905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5813)
    #dbg_value(ptr poison, !5906, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5817)
    #dbg_value(i64 1, !5906, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
    #dbg_value(i64 0, !5906, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5817)
  invoke void @_RNvXs0_NtNtCskKLDkoKarTP_4core5array5drainQINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1I_j1_NtB2Q_5Array7default0E0EINtNtB10_8function5FnMutTjEE8call_mutB1M_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !dbg !5925

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !5917, !DIExpression(), !5820)
  invoke void @_RNvXs1_NtNtCskKLDkoKarTP_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1H_j1_NtB2P_5Array7default0E0ENtNtBZ_4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1V_j1_NtB33_5Array7default0E0EEB1Z_.exit unwind label %bb.d, !dbg !5926

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 0, !5906, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5817)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5927, !noalias !5897
    #dbg_value(ptr %i.c, !5917, !DIExpression(), !5822)
  call void @_RNvXs1_NtNtCskKLDkoKarTP_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1H_j1_NtB2P_5Array7default0E0ENtNtBZ_4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5929
  ret void, !dbg !5930

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !5931
  unreachable, !dbg !5931

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1V_j1_NtB33_5Array7default0E0EEB1Z_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f, !dbg !5931
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtBP_5range5RangeyEENCINvMBN_BK_10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1r_Bz_NtB2k_5Array7default0E0ECshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !202 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !1911, !DIExpression(), !5954)
    #dbg_declare(ptr %i.a, !1912, !DIExpression(), !5955)
    #dbg_declare(ptr %i.a, !1913, !DIExpression(), !5956)
    #dbg_declare(ptr %i.c, !1914, !DIExpression(), !5957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5972
    #dbg_value(ptr %i.a, !1938, !DIExpression(), !5959)
    #dbg_value(ptr %i.a, !1944, !DIExpression(), !5960)
    #dbg_value(ptr %i.a, !1945, !DIExpression(), !5961)
    #dbg_value(i64 2, !1946, !DIExpression(), !5962)
  store ptr %i.a, ptr %i.c, align 8, !dbg !5973
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5973
  store ptr inttoptr (i64 2 to ptr), ptr %i.d, align 8, !dbg !5973
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5973
  store ptr %i.a, ptr %i.e, align 8, !dbg !5973
  call void @llvm.experimental.noalias.scope.decl(metadata !5963), !dbg !5974
    #dbg_value(ptr poison, !1948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5936)
    #dbg_value(ptr poison, !1968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5937)
    #dbg_value(ptr %i.c, !1978, !DIExpression(), !5938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5964
    #dbg_value(ptr %i.c, !1969, !DIExpression(), !5937)
  store ptr %i.c, ptr %i.b, align 8, !noalias !5965
    #dbg_value(ptr undef, !1968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5937)
    #dbg_value(i64 2, !1968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5937)
    #dbg_value(ptr undef, !1948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5936)
    #dbg_value(i64 2, !1948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5936)
    #dbg_value(i64 0, !1948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5936)
  %i.f = invoke { i64, i64 } @_RNvXs0_NtNtCskKLDkoKarTP_4core5array5drainQINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitINtNtB10_5range5RangeyEE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1I_j2_NtB2q_5Array7default0E0EINtNtB10_8function5FnMutTjEE8call_mutCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.b, !dbg !5975 ; 2 uses

.noexc:                                           ; preds = %bb.a
    #dbg_value(i64 poison, !1980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5943)
    #dbg_value(i64 poison, !1980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5943)
    #dbg_value(i64 1, !1948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5936)
  %i.g = invoke { i64, i64 } @_RNvXs0_NtNtCskKLDkoKarTP_4core5array5drainQINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitINtNtB10_5range5RangeyEE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1I_j2_NtB2q_5Array7default0E0EINtNtB10_8function5FnMutTjEE8call_mutCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 1)
          to label %bb.c unwind label %bb.b, !dbg !5975 ; 2 uses

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !1985, !DIExpression(), !5945)
  invoke void @_RNvXs1_NtNtCskKLDkoKarTP_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtBZ_5range5RangeyEE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1H_j2_NtB2o_5Array7default0E0ENtNtBZ_4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtB1c_5range5RangeyEE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1V_j2_NtB2D_5Array7default0E0EECshovLROGBtMy_11quinn_proto.exit unwind label %bb.d, !dbg !5976

bb.c:                                             ; preds = %.noexc
  %i.i = extractvalue { i64, i64 } %i.f, 1, !dbg !5975
    #dbg_value(i64 %i.i, !1980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5943)
  %i.j = extractvalue { i64, i64 } %i.f, 0, !dbg !5975
    #dbg_value(i64 %i.j, !1980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5943)
  %i.k = extractvalue { i64, i64 } %i.g, 0, !dbg !5975
  %i.l = extractvalue { i64, i64 } %i.g, 1, !dbg !5975
    #dbg_value(i64 %i.k, !1980, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5943)
    #dbg_value(i64 %i.l, !1980, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5943)
    #dbg_value(i64 2, !1948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5936)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5977, !noalias !5964
    #dbg_value(i64 %i.j, !5966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5948)
    #dbg_value(i64 %i.i, !5966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5948)
    #dbg_value(i64 %i.k, !5966, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5948)
    #dbg_value(i64 %i.l, !5966, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5948)
  store i64 %i.j, ptr %0, align 8, !dbg !5978, !alias.scope !5971
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5978
  store i64 %i.i, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !5978, !alias.scope !5971
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5978
  store i64 %i.k, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !5978, !alias.scope !5971
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5978
  store i64 %i.l, ptr %.sroa.68.0..sroa_idx.i, align 8, !dbg !5978, !alias.scope !5971
    #dbg_value(ptr %i.c, !1985, !DIExpression(), !5953)
  call void @_RNvXs1_NtNtCskKLDkoKarTP_4core5array5drainINtB5_5DrainuNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitINtNtBZ_5range5RangeyEE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1H_j2_NtB2o_5Array7default0E0ENtNtBZ_4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5980
  ret void, !dbg !5981

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !5982
  unreachable, !dbg !5982

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainuNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitINtNtB1c_5range5RangeyEE10wrap_mut_1uNCNvXNtNtCslrs821VbQCb_7tinyvec5array18const_generic_implAB1V_j2_NtB2D_5Array7default0E0EECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h, !dbg !5982
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core3mem11conjure_zstuECshovLROGBtMy_11quinn_proto() unnamed_addr #1 !dbg !5983 {
bb.a:
  ret void, !dbg !5986
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !220 {
bb.a:
    #dbg_value(ptr %0, !1996, !DIExpression(), !5991)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEENtNtBK_4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !5992

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2001, !DIExpression(), !5988)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtB4_3ops5range5RangeyEEECshovLROGBtMy_11quinn_proto.exit unwind label %bb.d, !dbg !5993

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2001, !DIExpression(), !5990)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !5994
  ret void, !dbg !5992

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !5992
  unreachable, !dbg !5992

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtB4_3ops5range5RangeyEEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5992
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5995 {
bb.a:
    #dbg_value(ptr %0, !6003, !DIExpression(), !6007)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !6015

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !6009, !DIExpression(), !5998)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEEB1j_.exit unwind label %bb.d, !dbg !6016

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6009, !DIExpression(), !6000)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !6017
  ret void, !dbg !6015

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !6015
  unreachable, !dbg !6015

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6015
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !234 {
bb.a:
    #dbg_value(ptr %0, !2074, !DIExpression(), !6022)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !6023

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2079, !DIExpression(), !6019)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1l_.exit unwind label %bb.d, !dbg !6024

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2079, !DIExpression(), !6021)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !6025
  ret void, !dbg !6023

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !6023
  unreachable, !dbg !6023

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !6023
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslrs821VbQCb_7tinyvec7tinyvec7TinyVecAINtNtNtB4_3ops5range5RangeyEj2_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !236 {
bb.a:
    #dbg_value(ptr %0, !2088, !DIExpression(), !6032)
  %i.a = load i64, ptr %0, align 8, !dbg !6033, !range !1843, !noundef !1053
end_hunk_0
