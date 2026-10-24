Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.1?download=true
inline.NumInlined: 231
inline.NumDeleted: 109
begin_hunk_0_@_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_EB4_:bb.a
  %i.aw = load ptr, ptr %.sroa.041.sroa.4.0..sroa_idx, align 8, !alias.scope !162, !noundef !7 ; 2 uses
  %.not.i3.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i3.i.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %i.aa, align 8, !alias.scope !163, !noundef !7 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i.i.i: ; preds = %bb.i
  %i.az = add i64 %i.ax, -1
  store i64 %i.az, ptr %i.aa, align 8, !alias.scope !163
  %.val1.i.i.i5.i.i.i.i.i = load i64, ptr %.sroa.041.sroa.5.0..sroa_idx, align 8, !alias.scope !164, !noundef !7
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipIBM_INtNtNtBa_5slice4iter14ChunksExactMuthEINtB12_11ChunksExacthEEINtNtB6_7flatten7FlatMapB1C_INtNtB6_4take4TakeINtNtNtB8_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EENtNtNtB8_6traits8iterator8Iterator4nextB3r_.exit.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipIBM_INtNtNtBa_5slice4iter14ChunksExactMuthEINtB12_11ChunksExacthEEINtNtB6_7flatten7FlatMapB1C_INtNtB6_4take4TakeINtNtNtB8_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EENtNtNtB8_6traits8iterator8Iterator4nextB3r_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i.i.i
  %.sroa.12.0.i = phi i64 [ %.val1.i.i.i.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i.i.i ], [ %.val1.i.i.i5.i.i.i.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0.i = phi ptr [ %.lcssa.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i.i.i ], [ %i.aw, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i.i.i ] ; 5 uses
  %.promoted.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !165 ; 2 uses
  %.promoted27.i.i.i = load ptr, ptr %.sroa.041.sroa.7.0..sroa_idx, align 8, !alias.scope !165 ; 4 uses
  %i.ba = load i64, ptr %.sroa.041.sroa.7.sroa.5.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !165 ; 5 uses
  %.promoted28.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !165 ; 2 uses
  %.promoted29.i.i.i = load i64, ptr %.sroa.041.sroa.7.sroa.2.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !165 ; 2 uses
  %.not.i.peel.i.i.i = icmp eq ptr %.promoted.i.i.i, null
  br i1 %.not.i.peel.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipIBM_INtNtNtBa_5slice4iter14ChunksExactMuthEINtB12_11ChunksExacthEEINtNtB6_7flatten7FlatMapB1C_INtNtB6_4take4TakeINtNtNtB8_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EENtNtNtB8_6traits8iterator8Iterator4nextB3r_.exit.i
  %i.bb = icmp eq i64 %.promoted28.i.i.i, 0
  br i1 %i.bb, label %bb.k, label %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i

._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i: ; preds = %bb.j
  %.val1.i.i.i.pre.i.i.i = load i64, ptr %.sroa.442.0..sroa_idx, align 8, !alias.scope !166
  %i.bc = add i64 %.promoted28.i.i.i, -1
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !167
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipIBM_INtNtNtBa_5slice4iter14ChunksExactMuthEINtB12_11ChunksExacthEEINtNtB6_7flatten7FlatMapB1C_INtNtB6_4take4TakeINtNtNtB8_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EENtNtNtB8_6traits8iterator8Iterator4nextB3r_.exit.i
  %.not.i2.peel.i.i.i = icmp eq ptr %.promoted27.i.i.i, null
  %.not.i.i.i.peel.i.i.i = icmp ugt i64 %i.ba, %.promoted29.i.i.i
  %or.cond.peel.i.i.i = select i1 %.not.i2.peel.i.i.i, i1 true, i1 %.not.i.i.i.peel.i.i.i
  br i1 %or.cond.peel.i.i.i, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.promoted27.i.i.i, i64 %i.ba
  %i.be = sub nuw i64 %.promoted29.i.i.i, %i.ba
  store ptr %i.bd, ptr %.sroa.041.sroa.7.0..sroa_idx, align 8, !alias.scope !168, !captures !8
  store i64 %i.be, ptr %.sroa.041.sroa.7.sroa.2.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !168
  store ptr %.promoted27.i.i.i, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !165
  store i64 %i.ba, ptr %.sroa.442.0..sroa_idx, align 8, !alias.scope !165
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i
  %.val1.i.i.i.i.i.i = phi i64 [ %.val1.i.i.i.pre.i.i.i, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i ], [ %i.ba, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i ]
  %.lcssa31.i.i.i = phi i64 [ %i.bc, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %.promoted.i.i.i, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i ], [ %.promoted27.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i ]
  store i64 %.lcssa31.i.i.i, ptr %i.ab, align 8, !alias.scope !169
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %.sroa.543.0..sroa_idx, align 8, !alias.scope !170, !noundef !7 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i3.i.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i64, ptr %i.ac, align 8, !alias.scope !171, !noundef !7 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i: ; preds = %bb.n
  %i.bi = add i64 %i.bg, -1
  store i64 %i.bi, ptr %i.ac, align 8, !alias.scope !171
  %.val1.i.i.i5.i.i.i = load i64, ptr %.sroa.644.0..sroa_idx, align 8, !alias.scope !172, !noundef !7
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i
  %.sroa.19.0 = phi i64 [ %.val1.i.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i ], [ %.val1.i.i.i5.i.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i ] ; 2 uses
  %.sroa.17.0 = phi ptr [ %.lcssa.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i ], [ %i.bf, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %.not19 = icmp ugt i64 %8, %i.aq
  br i1 %.not19, label %bb.p, label %bb.o, !prof !4

.loopexit:                                        ; preds = %bb.m, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i, %bb.h, %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj3_EB4_.exit, %bb.n, %bb.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit
  %.not20 = icmp ugt i64 %9, %.sroa.12.0.i
  br i1 %.not20, label %bb.q, label %bb.r, !prof !4

bb.p:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %8, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #9
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %9, i64 noundef %.sroa.12.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #9
  unreachable

bb.r:                                             ; preds = %bb.o
  %.not21 = icmp ugt i64 %9, %.sroa.19.0
  br i1 %.not21, label %bb.s, label %bb.t, !prof !5

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %9, i64 noundef %.sroa.19.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.bj = urem i64 %i.an, 6                       ; 2 uses
  %i.bk = sub nuw i64 %i.an, %i.bj                ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ae
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %9 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 %9
  %.not.i.i.i.i.i.i.i75.i = icmp samesign ult i64 %i.an, 6
  br i1 %.not.i.i.i.i.i.i.i75.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
  %i.bp = sub i64 5, %i.bk
  %i.bq = call i64 @llvm.umax.i64(i64 %i.bp, i64 -6)
  %i.br = add i64 %i.bq, %i.bk
  %.fr = freeze i64 %i.br
  %i.bs = udiv i64 %.fr, 6
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.ai) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bt, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %i.bv = and i64 %i.bu, 15                       ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = select i1 %i.bw, i64 16, i64 %i.bv
  %n.vec = sub nsw i64 %i.bu, %i.bx               ; 7 uses
  %i.by = shl i64 %n.vec, 1
  %i.bz = getelementptr i8, ptr %i.ap, i64 %i.by
  %i.ca = shl i64 %n.vec, 1
  %i.cb = sub i64 %i.ae, %i.ca
  %i.cc = mul i64 %n.vec, 6
  %i.cd = getelementptr i8, ptr %i.am, i64 %i.cc
  %i.ce = mul i64 %n.vec, -6
  %i.cf = add i64 %i.bk, %i.ce
  %i.cg = getelementptr i8, ptr %.sroa.11.0.i, i64 %n.vec
  %i.ch = getelementptr i8, ptr %.sroa.17.0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ci = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.cj, i64 2
  %i.ck = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.ck, i64 4
  %i.cl = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.cl, i64 6
  %i.cm = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.cm, i64 8
  %i.cn = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.cn, i64 10
  %i.co = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.co, i64 12
  %i.cp = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.cp, i64 14
  %i.cq = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.cq, i64 16
  %i.cr = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.cr, i64 18
  %i.cs = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.cs, i64 20
  %i.ct = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ct, i64 22
  %i.cu = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cu, i64 24
  %i.cv = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.cv, i64 26
  %i.cw = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cw, i64 28
  %i.cx = getelementptr i8, ptr %i.ap, i64 %i.ci  ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.cx, i64 30
  %i.cy = mul i64 %index, 6
  %next.gep172 = getelementptr i8, ptr %i.am, i64 %i.cy
  %next.gep173 = getelementptr i8, ptr %.sroa.11.0.i, i64 %index
  %next.gep174 = getelementptr i8, ptr %.sroa.17.0, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep173, align 1, !alias.scope !174
  %wide.load175 = load <16 x i8>, ptr %next.gep174, align 1, !alias.scope !175
  %i.cz = zext <16 x i8> %wide.load175 to <16 x i32> ; 2 uses
  %i.da = mul nuw nsw <16 x i32> %i.cz, splat (i32 26149)
  %i.db = lshr <16 x i32> %i.da, splat (i32 8)
  %i.dc = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.dd = mul nuw nsw <16 x i32> %i.dc, splat (i32 6419)
  %i.de = lshr <16 x i32> %i.dd, splat (i32 8)
  %i.df = mul nuw nsw <16 x i32> %i.cz, splat (i32 13320)
  %i.dg = lshr <16 x i32> %i.df, splat (i32 8)
  %i.dh = mul nuw nsw <16 x i32> %i.dc, splat (i32 33050)
  %i.di = lshr <16 x i32> %i.dh, splat (i32 8)
  %i.dj = load i8, ptr %next.gep, align 1, !alias.scope !173
  %i.dk = load i8, ptr %next.gep157, align 1, !alias.scope !173
  %i.dl = load i8, ptr %next.gep158, align 1, !alias.scope !173
  %i.dm = load i8, ptr %next.gep159, align 1, !alias.scope !173
  %i.dn = load i8, ptr %next.gep160, align 1, !alias.scope !173
  %i.do = load i8, ptr %next.gep161, align 1, !alias.scope !173
  %i.dp = load i8, ptr %next.gep162, align 1, !alias.scope !173
  %i.dq = load i8, ptr %next.gep163, align 1, !alias.scope !173
  %i.dr = load i8, ptr %next.gep164, align 1, !alias.scope !173
  %i.ds = load i8, ptr %next.gep165, align 1, !alias.scope !173
  %i.dt = load i8, ptr %next.gep166, align 1, !alias.scope !173
  %i.du = load i8, ptr %next.gep167, align 1, !alias.scope !173
  %i.dv = load i8, ptr %next.gep168, align 1, !alias.scope !173
  %i.dw = load i8, ptr %next.gep169, align 1, !alias.scope !173
  %i.dx = load i8, ptr %next.gep170, align 1, !alias.scope !173
  %i.dy = load i8, ptr %next.gep171, align 1, !alias.scope !173
  %i.dz = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 1
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 2
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 3
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 4
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 5
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 6
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 7
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 8
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 9
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 10
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 11
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 12
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 13
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 14
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 15
  %i.ep = zext <16 x i8> %i.eo to <16 x i32>
  %i.eq = mul nuw nsw <16 x i32> %i.ep, splat (i32 19077)
  %i.er = lshr <16 x i32> %i.eq, splat (i32 8)    ; 3 uses
  %i.es = add nsw <16 x i32> %i.db, splat (i32 -14234) ; 2 uses
  %i.et = add nuw nsw <16 x i32> %i.dg, %i.de     ; 2 uses
  %i.eu = sub nsw <16 x i32> %i.er, %i.et
  %i.ev = add nsw <16 x i32> %i.di, splat (i32 -17685) ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ex = getelementptr i8, ptr %i.cj, i64 3
  %i.ey = getelementptr i8, ptr %i.ck, i64 5
  %i.ez = getelementptr i8, ptr %i.cl, i64 7
  %i.fa = getelementptr i8, ptr %i.cm, i64 9
  %i.fb = getelementptr i8, ptr %i.cn, i64 11
  %i.fc = getelementptr i8, ptr %i.co, i64 13
  %i.fd = getelementptr i8, ptr %i.cp, i64 15
  %i.fe = getelementptr i8, ptr %i.cq, i64 17
  %i.ff = getelementptr i8, ptr %i.cr, i64 19
  %i.fg = getelementptr i8, ptr %i.cs, i64 21
  %i.fh = getelementptr i8, ptr %i.ct, i64 23
  %i.fi = getelementptr i8, ptr %i.cu, i64 25
  %i.fj = getelementptr i8, ptr %i.cv, i64 27
  %i.fk = getelementptr i8, ptr %i.cw, i64 29
  %i.fl = getelementptr i8, ptr %i.cx, i64 31
  %i.fm = load i8, ptr %i.ew, align 1, !alias.scope !173
  %i.fn = load i8, ptr %i.ex, align 1, !alias.scope !173
  %i.fo = load i8, ptr %i.ey, align 1, !alias.scope !173
  %i.fp = load i8, ptr %i.ez, align 1, !alias.scope !173
  %i.fq = load i8, ptr %i.fa, align 1, !alias.scope !173
  %i.fr = load i8, ptr %i.fb, align 1, !alias.scope !173
  %i.fs = load i8, ptr %i.fc, align 1, !alias.scope !173
  %i.ft = load i8, ptr %i.fd, align 1, !alias.scope !173
  %i.fu = load i8, ptr %i.fe, align 1, !alias.scope !173
  %i.fv = load i8, ptr %i.ff, align 1, !alias.scope !173
  %i.fw = load i8, ptr %i.fg, align 1, !alias.scope !173
  %i.fx = load i8, ptr %i.fh, align 1, !alias.scope !173
  %i.fy = load i8, ptr %i.fi, align 1, !alias.scope !173
  %i.fz = load i8, ptr %i.fj, align 1, !alias.scope !173
  %i.ga = load i8, ptr %i.fk, align 1, !alias.scope !173
  %i.gb = load i8, ptr %i.fl, align 1, !alias.scope !173
  %i.gc = insertelement <16 x i8> poison, i8 %i.fm, i64 0
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.fn, i64 1
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 2
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 3
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 4
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 5
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 6
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 7
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 8
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 9
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 10
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 11
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 12
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 13
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 14
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 15
  %i.gs = zext <16 x i8> %i.gr to <16 x i32>
  %i.gt = mul nuw nsw <16 x i32> %i.gs, splat (i32 19077)
  %i.gu = lshr <16 x i32> %i.gt, splat (i32 8)    ; 3 uses
  %i.gv = sub nsw <16 x i32> %i.gu, %i.et
  %i.gw = add nsw <16 x i32> %i.gv, splat (i32 8708)
  %i.gx = ashr <16 x i32> %i.gw, splat (i32 6)
  %i.gy = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.gx, <16 x i32> zeroinitializer)
  %i.gz = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.gy, <16 x i32> splat (i32 255))
  %i.ha = trunc nuw <16 x i32> %i.gz to <16 x i8>
  %i.hb = add nsw <16 x i32> %i.gu, %i.ev
  %i.hc = ashr <16 x i32> %i.hb, splat (i32 6)
  %i.hd = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hc, <16 x i32> zeroinitializer)
  %i.he = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.hd, <16 x i32> splat (i32 255))
  %i.hf = trunc nuw <16 x i32> %i.he to <16 x i8>
  %i.hg = shufflevector <16 x i32> %i.es, <16 x i32> %i.eu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hh = shufflevector <16 x i32> %i.er, <16 x i32> %i.gu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hi = shufflevector <32 x i32> %i.hg, <32 x i32> %i.hh, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hj = shufflevector <16 x i32> %i.er, <16 x i32> splat (i32 8708), <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hk = shufflevector <16 x i32> %i.ev, <16 x i32> %i.es, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hl = shufflevector <32 x i32> %i.hj, <32 x i32> %i.hk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hm = add nsw <64 x i32> %i.hi, %i.hl
  %i.hn = ashr <64 x i32> %i.hm, splat (i32 6)
  %i.ho = call <64 x i32> @llvm.smax.v64i32(<64 x i32> %i.hn, <64 x i32> zeroinitializer)
  %i.hp = call <64 x i32> @llvm.umin.v64i32(<64 x i32> %i.ho, <64 x i32> splat (i32 255))
  %i.hq = trunc nuw <64 x i32> %i.hp to <64 x i8>
  %i.hr = shufflevector <16 x i8> %i.ha, <16 x i8> %i.hf, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.hq, <64 x i8> %i.hr, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep172, align 1, !alias.scope !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %.lr.ph.i.preheader181, label %vector.body, !llvm.loop !147

.lr.ph.i.preheader181:                            ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.0.081.i.ph = phi ptr [ %i.ap, %.lr.ph.i.preheader ], [ %i.bz, %vector.body ]
  %.sroa.545.080.i.ph = phi i64 [ %i.ae, %.lr.ph.i.preheader ], [ %i.cb, %vector.body ]
  %.sroa.648.079.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.cd, %vector.body ]
  %.sroa.949.078.i.ph = phi i64 [ %i.bk, %.lr.ph.i.preheader ], [ %i.cf, %vector.body ]
  %.sroa.051.077.i.ph = phi ptr [ %.sroa.11.0.i, %.lr.ph.i.preheader ], [ %i.cg, %vector.body ]
  %.sroa.054.076.i.ph = phi ptr [ %.sroa.17.0, %.lr.ph.i.preheader ], [ %i.ch, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %bb.x
  %.sroa.0.081.i = phi ptr [ %i.jh, %bb.x ], [ %.sroa.0.081.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %.sroa.545.080.i = phi i64 [ %i.jg, %bb.x ], [ %.sroa.545.080.i.ph, %.lr.ph.i.preheader181 ] ; 2 uses
  %.sroa.648.079.i = phi ptr [ %i.ht, %bb.x ], [ %.sroa.648.079.i.ph, %.lr.ph.i.preheader181 ] ; 7 uses
  %.sroa.949.078.i = phi i64 [ %i.hu, %bb.x ], [ %.sroa.949.078.i.ph, %.lr.ph.i.preheader181 ]
  %.sroa.051.077.i = phi ptr [ %i.ji, %bb.x ], [ %.sroa.051.077.i.ph, %.lr.ph.i.preheader181 ] ; 4 uses
  %.sroa.054.076.i = phi ptr [ %i.jj, %bb.x ], [ %.sroa.054.076.i.ph, %.lr.ph.i.preheader181 ] ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 6
  %i.hu = add i64 %.sroa.949.078.i, -6            ; 2 uses
  %.not.i.i15.i.i.i.i.i.i = icmp eq i64 %.sroa.545.080.i, 0
  br i1 %.not.i.i15.i.i.i.i.i.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.hv = icmp eq ptr %.sroa.051.077.i, %i.bn
  br i1 %i.hv, label %._crit_edge.i, label %bb.x

._crit_edge.i:                                    ; preds = %bb.x, %bb.u, %.lr.ph.i, %bb.t
  %.sroa.054.0.lcssa.i = phi ptr [ %.sroa.17.0, %bb.t ], [ %i.jj, %bb.x ], [ %.sroa.054.076.i, %bb.u ], [ %.sroa.054.076.i, %.lr.ph.i ] ; 2 uses
  %.sroa.051.1.ph.i = phi ptr [ %.sroa.11.0.i, %bb.t ], [ %i.ji, %bb.x ], [ %i.bn, %bb.u ], [ %.sroa.051.077.i, %.lr.ph.i ] ; 2 uses
  %i.hw = icmp samesign ugt i64 %i.bj, 2
  br i1 %i.hw, label %bb.v, label %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj3_EB4_.exit

bb.v:                                             ; preds = %._crit_edge.i
  %i.hx = icmp eq ptr %.sroa.051.1.ph.i, %i.bn
  %i.hy = icmp eq ptr %.sroa.054.0.lcssa.i, %i.bo
  %or.cond.i = or i1 %i.af, %i.hx
  %or.cond71.i = select i1 %i.hy, i1 true, i1 %or.cond.i
  br i1 %or.cond71.i, label %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj3_EB4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hz = load i8, ptr %i.bm, align 1, !alias.scope !173, !noundef !7
  %i.ia = load i8, ptr %.sroa.051.1.ph.i, align 1, !alias.scope !174, !noundef !7
  %i.ib = load i8, ptr %.sroa.054.0.lcssa.i, align 1, !alias.scope !175, !noundef !7
  %i.ic = zext i8 %i.ib to i32                    ; 2 uses
  %i.id = mul nuw nsw i32 %i.ic, 26149
  %i.ie = lshr i32 %i.id, 8
  %i.if = zext i8 %i.ia to i32                    ; 2 uses
  %i.ig = mul nuw nsw i32 %i.if, 33050
  %i.ih = lshr i32 %i.ig, 8
  %i.ii = zext i8 %i.hz to i32
  %i.ij = mul nuw nsw i32 %i.ii, 19077
  %i.ik = lshr i32 %i.ij, 8                       ; 3 uses
  %i.il = add nsw i32 %i.ik, -14234
  %i.im = add nsw i32 %i.il, %i.ie
  %i.in = ashr i32 %i.im, 6
  %..i.i.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.in, i32 0)
  %i.io = call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.ip = trunc nuw i32 %i.io to i8
  %i.iq = mul nuw nsw i32 %i.ic, 13320
  %i.ir = lshr i32 %i.iq, 8
  %i.is = mul nuw nsw i32 %i.if, 6419
  %i.it = lshr i32 %i.is, 8
  store i8 %i.ip, ptr %i.bl, align 1, !alias.scope !176
  %.neg103 = add nuw nsw i32 %i.ik, 8708
  %i.iu = add nuw nsw i32 %i.it, %i.ir
  %i.iv = sub nsw i32 %.neg103, %i.iu
  %i.iw = ashr i32 %i.iv, 6
  %..i.i29.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.iw, i32 0)
  %i.ix = call i32 @llvm.umin.i32(i32 %..i.i29.i, i32 255)
  %i.iy = trunc nuw i32 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.iy, ptr %i.iz, align 1, !alias.scope !176
  %i.ja = add nsw i32 %i.ik, -17685
  %i.jb = add nsw i32 %i.ja, %i.ih
  %i.jc = ashr i32 %i.jb, 6
  %..i.i30.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.jc, i32 0)
  %i.jd = call i32 @llvm.umin.i32(i32 %..i.i30.i, i32 255)
  %i.je = trunc nuw i32 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.je, ptr %i.jf, align 1, !alias.scope !176
  br label %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj3_EB4_.exit

bb.x:                                             ; preds = %bb.u
  %i.jg = add nsw i64 %.sroa.545.080.i, -2
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.081.i, i64 2
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.051.077.i, i64 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.054.076.i, i64 1 ; 2 uses
  %i.jk = load i8, ptr %.sroa.051.077.i, align 1, !alias.scope !174, !noundef !7
  %i.jl = load i8, ptr %.sroa.054.076.i, align 1, !alias.scope !175, !noundef !7
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = mul nuw nsw i32 %i.jm, 26149
  %i.jo = lshr i32 %i.jn, 8
  %i.jp = zext i8 %i.jk to i32                    ; 2 uses
  %i.jq = mul nuw nsw i32 %i.jp, 6419
  %i.jr = lshr i32 %i.jq, 8
  %i.js = mul nuw nsw i32 %i.jm, 13320
  %i.jt = lshr i32 %i.js, 8
  %i.ju = mul nuw nsw i32 %i.jp, 33050
  %i.jv = lshr i32 %i.ju, 8
  %i.jw = load i8, ptr %.sroa.0.081.i, align 1, !alias.scope !173, !noundef !7
  %i.jx = zext i8 %i.jw to i32
  %i.jy = mul nuw nsw i32 %i.jx, 19077
  %i.jz = lshr i32 %i.jy, 8                       ; 3 uses
  %i.ka = add nsw i32 %i.jo, -14234               ; 2 uses
  %i.kb = add nsw i32 %i.ka, %i.jz
  %i.kc = ashr i32 %i.kb, 6
  %..i.i31.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.kc, i32 0)
  %i.kd = call i32 @llvm.umin.i32(i32 %..i.i31.i, i32 255)
  %i.ke = trunc nuw i32 %i.kd to i8
  store i8 %i.ke, ptr %.sroa.648.079.i, align 1, !alias.scope !176
  %i.kf = add nuw nsw i32 %i.jt, %i.jr            ; 2 uses
  %reass.sub = sub nsw i32 %i.jz, %i.kf
  %i.kg = add nsw i32 %reass.sub, 8708
  %i.kh = ashr i32 %i.kg, 6
  %..i.i32.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.kh, i32 0)
  %i.ki = call i32 @llvm.umin.i32(i32 %..i.i32.i, i32 255)
  %i.kj = trunc nuw i32 %i.ki to i8
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 1
  store i8 %i.kj, ptr %i.kk, align 1, !alias.scope !176
  %i.kl = add nsw i32 %i.jv, -17685               ; 2 uses
  %i.km = add nsw i32 %i.jz, %i.kl
  %i.kn = ashr i32 %i.km, 6
  %..i.i33.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.kn, i32 0)
  %i.ko = call i32 @llvm.umin.i32(i32 %..i.i33.i, i32 255)
  %i.kp = trunc nuw i32 %i.ko to i8
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 2
  store i8 %i.kp, ptr %i.kq, align 1, !alias.scope !176
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 3
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.081.i, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !alias.scope !173, !noundef !7
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul nuw nsw i32 %i.ku, 19077
  %i.kw = lshr i32 %i.kv, 8                       ; 3 uses
  %i.kx = add nsw i32 %i.kw, %i.ka
  %i.ky = ashr i32 %i.kx, 6
  %..i.i34.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ky, i32 0)
  %i.kz = call i32 @llvm.umin.i32(i32 %..i.i34.i, i32 255)
  %i.la = trunc nuw i32 %i.kz to i8
  store i8 %i.la, ptr %i.kr, align 1, !alias.scope !176
  %reass.sub115 = sub nsw i32 %i.kw, %i.kf
  %i.lb = add nsw i32 %reass.sub115, 8708
  %i.lc = ashr i32 %i.lb, 6
  %..i.i35.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.lc, i32 0)
  %i.ld = call i32 @llvm.umin.i32(i32 %..i.i35.i, i32 255)
  %i.le = trunc nuw i32 %i.ld to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 4
  store i8 %i.le, ptr %i.lf, align 1, !alias.scope !176
  %i.lg = add nsw i32 %i.kw, %i.kl
  %i.lh = ashr i32 %i.lg, 6
  %..i.i36.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.lh, i32 0)
  %i.li = call i32 @llvm.umin.i32(i32 %..i.i36.i, i32 255)
  %i.lj = trunc nuw i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 5
end_hunk_0
begin_hunk_1_@_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_EB4_:bb.a
  %i.bb = icmp eq i64 %.promoted28.i.i.i, 0
  br i1 %i.bb, label %bb.k, label %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i

._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i: ; preds = %bb.j
  %.val1.i.i.i.pre.i.i.i = load i64, ptr %.sroa.442.0..sroa_idx, align 8, !alias.scope !281
  %i.bc = add i64 %.promoted28.i.i.i, -1
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !282
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipIBM_INtNtNtBa_5slice4iter14ChunksExactMuthEINtB12_11ChunksExacthEEINtNtB6_7flatten7FlatMapB1C_INtNtB6_4take4TakeINtNtNtB8_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_E0EENtNtNtB8_6traits8iterator8Iterator4nextB3r_.exit.i
  %.not.i2.peel.i.i.i = icmp eq ptr %.promoted27.i.i.i, null
  %.not.i.i.i.peel.i.i.i = icmp ugt i64 %i.ba, %.promoted29.i.i.i
  %or.cond.peel.i.i.i = select i1 %.not.i2.peel.i.i.i, i1 true, i1 %.not.i.i.i.peel.i.i.i
  br i1 %or.cond.peel.i.i.i, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.promoted27.i.i.i, i64 %i.ba
  %i.be = sub nuw i64 %.promoted29.i.i.i, %i.ba
  store ptr %i.bd, ptr %.sroa.041.sroa.7.0..sroa_idx, align 8, !alias.scope !283, !captures !8
  store i64 %i.be, ptr %.sroa.041.sroa.7.sroa.2.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8, !alias.scope !283
  store ptr %.promoted27.i.i.i, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !280
  store i64 %i.ba, ptr %.sroa.442.0..sroa_idx, align 8, !alias.scope !280
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i
  %.val1.i.i.i.i.i.i = phi i64 [ %.val1.i.i.i.pre.i.i.i, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i ], [ %i.ba, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i ]
  %.lcssa31.i.i.i = phi i64 [ %i.bc, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %.promoted.i.i.i, %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i ], [ %.promoted27.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.loopexit.i.i.i ]
  store i64 %.lcssa31.i.i.i, ptr %i.ab, align 8, !alias.scope !284
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %.sroa.543.0..sroa_idx, align 8, !alias.scope !285, !noundef !7 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i3.i.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i64, ptr %i.ac, align 8, !alias.scope !286, !noundef !7 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i: ; preds = %bb.n
  %i.bi = add i64 %i.bg, -1
  store i64 %i.bi, ptr %i.ac, align 8, !alias.scope !286
  %.val1.i.i.i5.i.i.i = load i64, ptr %.sroa.644.0..sroa_idx, align 8, !alias.scope !287, !noundef !7
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i
  %.sroa.19.0 = phi i64 [ %.val1.i.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i ], [ %.val1.i.i.i5.i.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i ] ; 2 uses
  %.sroa.17.0 = phi ptr [ %.lcssa.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit.i.i.i ], [ %i.bf, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtBc_7sources6repeat6RepeatRShEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsksn9slvsHfS_10image_webp.exit.i4.i.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %.not19 = icmp ugt i64 %8, %i.aq
  br i1 %.not19, label %bb.p, label %bb.o, !prof !4

.loopexit:                                        ; preds = %bb.m, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i, %bb.h, %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj4_EB4_.exit, %bb.n, %bb.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit
  %.not20 = icmp ugt i64 %9, %.sroa.12.0.i
  br i1 %.not20, label %bb.q, label %bb.r, !prof !4

bb.p:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEINtNtB7_7flatten7FlatMapB1H_INtNtB7_4take4TakeINtNtNtB9_7sources6repeat6RepeatRShEENCINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_E0EEIB25_B1H_B2w_NCB3r_s_0EEINtB5_7ZipImplBW_B4w_E4nextB3w_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %8, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #9
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %9, i64 noundef %.sroa.12.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #9
  unreachable

bb.r:                                             ; preds = %bb.o
  %.not21 = icmp ugt i64 %9, %.sroa.19.0
  br i1 %.not21, label %bb.s, label %bb.t, !prof !5

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %9, i64 noundef %.sroa.19.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.bj = and i64 %i.an, 7
  %i.bk = and i64 %i.an, 9223372036854775800      ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ae
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %9 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 %9
  %.not.i.i.i.i.i.i.i75.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i75.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
  %i.bp = add nsw i64 %i.bk, -8
  %i.bq = lshr exact i64 %i.bp, 3
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.ai) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.br, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader200, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %i.bt = and i64 %i.bs, 15                       ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 16, i64 %i.bt
  %n.vec = sub nsw i64 %i.bs, %i.bv               ; 7 uses
  %i.bw = shl i64 %n.vec, 1
  %i.bx = getelementptr i8, ptr %i.ap, i64 %i.bw
  %i.by = shl i64 %n.vec, 1
  %i.bz = sub i64 %i.ae, %i.by
  %i.ca = shl i64 %n.vec, 3
  %i.cb = getelementptr i8, ptr %i.am, i64 %i.ca
  %i.cc = shl i64 %n.vec, 3
  %i.cd = sub i64 %i.bk, %i.cc
  %i.ce = getelementptr i8, ptr %.sroa.11.0.i, i64 %n.vec
  %i.cf = getelementptr i8, ptr %.sroa.17.0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cg = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.ch, i64 2
  %i.ci = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.ci, i64 4
  %i.cj = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.cj, i64 6
  %i.ck = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.ck, i64 8
  %i.cl = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.cl, i64 10
  %i.cm = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.cm, i64 12
  %i.cn = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.cn, i64 14
  %i.co = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.co, i64 16
  %i.cp = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cp, i64 18
  %i.cq = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cq, i64 20
  %i.cr = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.cr, i64 22
  %i.cs = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cs, i64 24
  %i.ct = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ct, i64 26
  %i.cu = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.cu, i64 28
  %i.cv = getelementptr i8, ptr %i.ap, i64 %i.cg  ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.cv, i64 30
  %i.cw = shl i64 %index, 3                       ; 16 uses
  %next.gep174 = getelementptr i8, ptr %i.am, i64 %i.cw ; 6 uses
  %i.cx = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep175 = getelementptr i8, ptr %i.cx, i64 8
  %i.cy = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep176 = getelementptr i8, ptr %i.cy, i64 16
  %i.cz = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep177 = getelementptr i8, ptr %i.cz, i64 24
  %i.da = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep178 = getelementptr i8, ptr %i.da, i64 32
  %i.db = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep179 = getelementptr i8, ptr %i.db, i64 40
  %i.dc = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep180 = getelementptr i8, ptr %i.dc, i64 48
  %i.dd = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep181 = getelementptr i8, ptr %i.dd, i64 56
  %i.de = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep182 = getelementptr i8, ptr %i.de, i64 64
  %i.df = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep183 = getelementptr i8, ptr %i.df, i64 72
  %i.dg = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep184 = getelementptr i8, ptr %i.dg, i64 80
  %i.dh = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep185 = getelementptr i8, ptr %i.dh, i64 88
  %i.di = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep186 = getelementptr i8, ptr %i.di, i64 96
  %i.dj = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep187 = getelementptr i8, ptr %i.dj, i64 104
  %i.dk = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep188 = getelementptr i8, ptr %i.dk, i64 112
  %i.dl = getelementptr i8, ptr %i.am, i64 %i.cw  ; 6 uses
  %next.gep189 = getelementptr i8, ptr %i.dl, i64 120
  %next.gep190 = getelementptr i8, ptr %.sroa.11.0.i, i64 %index
  %next.gep191 = getelementptr i8, ptr %.sroa.17.0, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep190, align 1, !alias.scope !289
  %wide.load192 = load <16 x i8>, ptr %next.gep191, align 1, !alias.scope !290
  %i.dm = zext <16 x i8> %wide.load192 to <16 x i32> ; 2 uses
  %i.dn = mul nuw nsw <16 x i32> %i.dm, splat (i32 26149)
  %i.do = lshr <16 x i32> %i.dn, splat (i32 8)
  %i.dp = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.dq = mul nuw nsw <16 x i32> %i.dp, splat (i32 6419)
  %i.dr = lshr <16 x i32> %i.dq, splat (i32 8)
  %i.ds = mul nuw nsw <16 x i32> %i.dm, splat (i32 13320)
  %i.dt = lshr <16 x i32> %i.ds, splat (i32 8)
  %i.du = mul nuw nsw <16 x i32> %i.dp, splat (i32 33050)
  %i.dv = lshr <16 x i32> %i.du, splat (i32 8)
  %i.dw = load i8, ptr %next.gep, align 1, !alias.scope !288
  %i.dx = load i8, ptr %next.gep159, align 1, !alias.scope !288
  %i.dy = load i8, ptr %next.gep160, align 1, !alias.scope !288
  %i.dz = load i8, ptr %next.gep161, align 1, !alias.scope !288
  %i.ea = load i8, ptr %next.gep162, align 1, !alias.scope !288
  %i.eb = load i8, ptr %next.gep163, align 1, !alias.scope !288
  %i.ec = load i8, ptr %next.gep164, align 1, !alias.scope !288
  %i.ed = load i8, ptr %next.gep165, align 1, !alias.scope !288
  %i.ee = load i8, ptr %next.gep166, align 1, !alias.scope !288
  %i.ef = load i8, ptr %next.gep167, align 1, !alias.scope !288
  %i.eg = load i8, ptr %next.gep168, align 1, !alias.scope !288
  %i.eh = load i8, ptr %next.gep169, align 1, !alias.scope !288
  %i.ei = load i8, ptr %next.gep170, align 1, !alias.scope !288
  %i.ej = load i8, ptr %next.gep171, align 1, !alias.scope !288
  %i.ek = load i8, ptr %next.gep172, align 1, !alias.scope !288
  %i.el = load i8, ptr %next.gep173, align 1, !alias.scope !288
  %i.em = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 1
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 2
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 3
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 4
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 5
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 6
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 7
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 8
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 9
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 10
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 11
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 12
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 13
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 14
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 15
  %i.fc = zext <16 x i8> %i.fb to <16 x i32>
  %i.fd = mul nuw nsw <16 x i32> %i.fc, splat (i32 19077)
  %i.fe = lshr <16 x i32> %i.fd, splat (i32 8)    ; 3 uses
  %i.ff = add nsw <16 x i32> %i.do, splat (i32 -14234) ; 2 uses
  %i.fg = add nsw <16 x i32> %i.ff, %i.fe
  %i.fh = ashr <16 x i32> %i.fg, splat (i32 6)
  %i.fi = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fh, <16 x i32> zeroinitializer)
  %i.fj = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fi, <16 x i32> splat (i32 255))
  %i.fk = trunc nuw <16 x i32> %i.fj to <16 x i8> ; 16 uses
  %i.fl = extractelement <16 x i8> %i.fk, i64 0
  store i8 %i.fl, ptr %next.gep174, align 1, !alias.scope !291
  %i.fm = extractelement <16 x i8> %i.fk, i64 1
  store i8 %i.fm, ptr %next.gep175, align 1, !alias.scope !291
  %i.fn = extractelement <16 x i8> %i.fk, i64 2
  store i8 %i.fn, ptr %next.gep176, align 1, !alias.scope !291
  %i.fo = extractelement <16 x i8> %i.fk, i64 3
  store i8 %i.fo, ptr %next.gep177, align 1, !alias.scope !291
  %i.fp = extractelement <16 x i8> %i.fk, i64 4
  store i8 %i.fp, ptr %next.gep178, align 1, !alias.scope !291
  %i.fq = extractelement <16 x i8> %i.fk, i64 5
  store i8 %i.fq, ptr %next.gep179, align 1, !alias.scope !291
  %i.fr = extractelement <16 x i8> %i.fk, i64 6
  store i8 %i.fr, ptr %next.gep180, align 1, !alias.scope !291
  %i.fs = extractelement <16 x i8> %i.fk, i64 7
  store i8 %i.fs, ptr %next.gep181, align 1, !alias.scope !291
  %i.ft = extractelement <16 x i8> %i.fk, i64 8
  store i8 %i.ft, ptr %next.gep182, align 1, !alias.scope !291
  %i.fu = extractelement <16 x i8> %i.fk, i64 9
  store i8 %i.fu, ptr %next.gep183, align 1, !alias.scope !291
  %i.fv = extractelement <16 x i8> %i.fk, i64 10
  store i8 %i.fv, ptr %next.gep184, align 1, !alias.scope !291
  %i.fw = extractelement <16 x i8> %i.fk, i64 11
  store i8 %i.fw, ptr %next.gep185, align 1, !alias.scope !291
  %i.fx = extractelement <16 x i8> %i.fk, i64 12
  store i8 %i.fx, ptr %next.gep186, align 1, !alias.scope !291
  %i.fy = extractelement <16 x i8> %i.fk, i64 13
  store i8 %i.fy, ptr %next.gep187, align 1, !alias.scope !291
  %i.fz = extractelement <16 x i8> %i.fk, i64 14
  store i8 %i.fz, ptr %next.gep188, align 1, !alias.scope !291
  %i.ga = extractelement <16 x i8> %i.fk, i64 15
  store i8 %i.ga, ptr %next.gep189, align 1, !alias.scope !291
  %i.gb = add nuw nsw <16 x i32> %i.dt, %i.dr     ; 2 uses
  %i.gc = sub nsw <16 x i32> %i.fe, %i.gb
  %i.gd = add nsw <16 x i32> %i.gc, splat (i32 8708)
  %i.ge = ashr <16 x i32> %i.gd, splat (i32 6)
  %i.gf = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ge, <16 x i32> zeroinitializer)
  %i.gg = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.gf, <16 x i32> splat (i32 255))
  %i.gh = trunc nuw <16 x i32> %i.gg to <16 x i8> ; 16 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %next.gep174, i64 1
  %i.gj = getelementptr i8, ptr %i.cx, i64 9
  %i.gk = getelementptr i8, ptr %i.cy, i64 17
  %i.gl = getelementptr i8, ptr %i.cz, i64 25
  %i.gm = getelementptr i8, ptr %i.da, i64 33
  %i.gn = getelementptr i8, ptr %i.db, i64 41
  %i.go = getelementptr i8, ptr %i.dc, i64 49
  %i.gp = getelementptr i8, ptr %i.dd, i64 57
  %i.gq = getelementptr i8, ptr %i.de, i64 65
  %i.gr = getelementptr i8, ptr %i.df, i64 73
  %i.gs = getelementptr i8, ptr %i.dg, i64 81
  %i.gt = getelementptr i8, ptr %i.dh, i64 89
  %i.gu = getelementptr i8, ptr %i.di, i64 97
  %i.gv = getelementptr i8, ptr %i.dj, i64 105
  %i.gw = getelementptr i8, ptr %i.dk, i64 113
  %i.gx = getelementptr i8, ptr %i.dl, i64 121
  %i.gy = extractelement <16 x i8> %i.gh, i64 0
  store i8 %i.gy, ptr %i.gi, align 1, !alias.scope !291
  %i.gz = extractelement <16 x i8> %i.gh, i64 1
  store i8 %i.gz, ptr %i.gj, align 1, !alias.scope !291
  %i.ha = extractelement <16 x i8> %i.gh, i64 2
  store i8 %i.ha, ptr %i.gk, align 1, !alias.scope !291
  %i.hb = extractelement <16 x i8> %i.gh, i64 3
  store i8 %i.hb, ptr %i.gl, align 1, !alias.scope !291
  %i.hc = extractelement <16 x i8> %i.gh, i64 4
  store i8 %i.hc, ptr %i.gm, align 1, !alias.scope !291
  %i.hd = extractelement <16 x i8> %i.gh, i64 5
  store i8 %i.hd, ptr %i.gn, align 1, !alias.scope !291
  %i.he = extractelement <16 x i8> %i.gh, i64 6
  store i8 %i.he, ptr %i.go, align 1, !alias.scope !291
  %i.hf = extractelement <16 x i8> %i.gh, i64 7
  store i8 %i.hf, ptr %i.gp, align 1, !alias.scope !291
  %i.hg = extractelement <16 x i8> %i.gh, i64 8
  store i8 %i.hg, ptr %i.gq, align 1, !alias.scope !291
  %i.hh = extractelement <16 x i8> %i.gh, i64 9
  store i8 %i.hh, ptr %i.gr, align 1, !alias.scope !291
  %i.hi = extractelement <16 x i8> %i.gh, i64 10
  store i8 %i.hi, ptr %i.gs, align 1, !alias.scope !291
  %i.hj = extractelement <16 x i8> %i.gh, i64 11
  store i8 %i.hj, ptr %i.gt, align 1, !alias.scope !291
  %i.hk = extractelement <16 x i8> %i.gh, i64 12
  store i8 %i.hk, ptr %i.gu, align 1, !alias.scope !291
  %i.hl = extractelement <16 x i8> %i.gh, i64 13
  store i8 %i.hl, ptr %i.gv, align 1, !alias.scope !291
  %i.hm = extractelement <16 x i8> %i.gh, i64 14
  store i8 %i.hm, ptr %i.gw, align 1, !alias.scope !291
  %i.hn = extractelement <16 x i8> %i.gh, i64 15
  store i8 %i.hn, ptr %i.gx, align 1, !alias.scope !291
  %i.ho = add nsw <16 x i32> %i.dv, splat (i32 -17685) ; 2 uses
  %i.hp = add nsw <16 x i32> %i.fe, %i.ho
  %i.hq = ashr <16 x i32> %i.hp, splat (i32 6)
  %i.hr = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hq, <16 x i32> zeroinitializer)
  %i.hs = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.hr, <16 x i32> splat (i32 255))
  %i.ht = trunc nuw <16 x i32> %i.hs to <16 x i8> ; 16 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %next.gep174, i64 2
  %i.hv = getelementptr i8, ptr %i.cx, i64 10
  %i.hw = getelementptr i8, ptr %i.cy, i64 18
  %i.hx = getelementptr i8, ptr %i.cz, i64 26
  %i.hy = getelementptr i8, ptr %i.da, i64 34
  %i.hz = getelementptr i8, ptr %i.db, i64 42
  %i.ia = getelementptr i8, ptr %i.dc, i64 50
  %i.ib = getelementptr i8, ptr %i.dd, i64 58
  %i.ic = getelementptr i8, ptr %i.de, i64 66
  %i.id = getelementptr i8, ptr %i.df, i64 74
  %i.ie = getelementptr i8, ptr %i.dg, i64 82
  %i.if = getelementptr i8, ptr %i.dh, i64 90
  %i.ig = getelementptr i8, ptr %i.di, i64 98
  %i.ih = getelementptr i8, ptr %i.dj, i64 106
  %i.ii = getelementptr i8, ptr %i.dk, i64 114
  %i.ij = getelementptr i8, ptr %i.dl, i64 122
  %i.ik = extractelement <16 x i8> %i.ht, i64 0
  store i8 %i.ik, ptr %i.hu, align 1, !alias.scope !291
  %i.il = extractelement <16 x i8> %i.ht, i64 1
  store i8 %i.il, ptr %i.hv, align 1, !alias.scope !291
  %i.im = extractelement <16 x i8> %i.ht, i64 2
  store i8 %i.im, ptr %i.hw, align 1, !alias.scope !291
  %i.in = extractelement <16 x i8> %i.ht, i64 3
  store i8 %i.in, ptr %i.hx, align 1, !alias.scope !291
  %i.io = extractelement <16 x i8> %i.ht, i64 4
  store i8 %i.io, ptr %i.hy, align 1, !alias.scope !291
  %i.ip = extractelement <16 x i8> %i.ht, i64 5
  store i8 %i.ip, ptr %i.hz, align 1, !alias.scope !291
  %i.iq = extractelement <16 x i8> %i.ht, i64 6
  store i8 %i.iq, ptr %i.ia, align 1, !alias.scope !291
  %i.ir = extractelement <16 x i8> %i.ht, i64 7
  store i8 %i.ir, ptr %i.ib, align 1, !alias.scope !291
  %i.is = extractelement <16 x i8> %i.ht, i64 8
  store i8 %i.is, ptr %i.ic, align 1, !alias.scope !291
  %i.it = extractelement <16 x i8> %i.ht, i64 9
  store i8 %i.it, ptr %i.id, align 1, !alias.scope !291
  %i.iu = extractelement <16 x i8> %i.ht, i64 10
  store i8 %i.iu, ptr %i.ie, align 1, !alias.scope !291
  %i.iv = extractelement <16 x i8> %i.ht, i64 11
  store i8 %i.iv, ptr %i.if, align 1, !alias.scope !291
  %i.iw = extractelement <16 x i8> %i.ht, i64 12
  store i8 %i.iw, ptr %i.ig, align 1, !alias.scope !291
  %i.ix = extractelement <16 x i8> %i.ht, i64 13
  store i8 %i.ix, ptr %i.ih, align 1, !alias.scope !291
  %i.iy = extractelement <16 x i8> %i.ht, i64 14
  store i8 %i.iy, ptr %i.ii, align 1, !alias.scope !291
  %i.iz = extractelement <16 x i8> %i.ht, i64 15
  store i8 %i.iz, ptr %i.ij, align 1, !alias.scope !291
  %i.ja = getelementptr inbounds nuw i8, ptr %next.gep174, i64 4
  %i.jb = getelementptr i8, ptr %i.cx, i64 12
  %i.jc = getelementptr i8, ptr %i.cy, i64 20
  %i.jd = getelementptr i8, ptr %i.cz, i64 28
  %i.je = getelementptr i8, ptr %i.da, i64 36
  %i.jf = getelementptr i8, ptr %i.db, i64 44
  %i.jg = getelementptr i8, ptr %i.dc, i64 52
  %i.jh = getelementptr i8, ptr %i.dd, i64 60
  %i.ji = getelementptr i8, ptr %i.de, i64 68
  %i.jj = getelementptr i8, ptr %i.df, i64 76
  %i.jk = getelementptr i8, ptr %i.dg, i64 84
  %i.jl = getelementptr i8, ptr %i.dh, i64 92
  %i.jm = getelementptr i8, ptr %i.di, i64 100
  %i.jn = getelementptr i8, ptr %i.dj, i64 108
  %i.jo = getelementptr i8, ptr %i.dk, i64 116
  %i.jp = getelementptr i8, ptr %i.dl, i64 124
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.jr = getelementptr i8, ptr %i.ch, i64 3
  %i.js = getelementptr i8, ptr %i.ci, i64 5
  %i.jt = getelementptr i8, ptr %i.cj, i64 7
  %i.ju = getelementptr i8, ptr %i.ck, i64 9
  %i.jv = getelementptr i8, ptr %i.cl, i64 11
  %i.jw = getelementptr i8, ptr %i.cm, i64 13
  %i.jx = getelementptr i8, ptr %i.cn, i64 15
  %i.jy = getelementptr i8, ptr %i.co, i64 17
  %i.jz = getelementptr i8, ptr %i.cp, i64 19
  %i.ka = getelementptr i8, ptr %i.cq, i64 21
  %i.kb = getelementptr i8, ptr %i.cr, i64 23
  %i.kc = getelementptr i8, ptr %i.cs, i64 25
  %i.kd = getelementptr i8, ptr %i.ct, i64 27
  %i.ke = getelementptr i8, ptr %i.cu, i64 29
  %i.kf = getelementptr i8, ptr %i.cv, i64 31
  %i.kg = load i8, ptr %i.jq, align 1, !alias.scope !288
  %i.kh = load i8, ptr %i.jr, align 1, !alias.scope !288
  %i.ki = load i8, ptr %i.js, align 1, !alias.scope !288
  %i.kj = load i8, ptr %i.jt, align 1, !alias.scope !288
  %i.kk = load i8, ptr %i.ju, align 1, !alias.scope !288
  %i.kl = load i8, ptr %i.jv, align 1, !alias.scope !288
  %i.km = load i8, ptr %i.jw, align 1, !alias.scope !288
  %i.kn = load i8, ptr %i.jx, align 1, !alias.scope !288
  %i.ko = load i8, ptr %i.jy, align 1, !alias.scope !288
  %i.kp = load i8, ptr %i.jz, align 1, !alias.scope !288
  %i.kq = load i8, ptr %i.ka, align 1, !alias.scope !288
  %i.kr = load i8, ptr %i.kb, align 1, !alias.scope !288
  %i.ks = load i8, ptr %i.kc, align 1, !alias.scope !288
  %i.kt = load i8, ptr %i.kd, align 1, !alias.scope !288
  %i.ku = load i8, ptr %i.ke, align 1, !alias.scope !288
  %i.kv = load i8, ptr %i.kf, align 1, !alias.scope !288
  %i.kw = insertelement <16 x i8> poison, i8 %i.kg, i64 0
  %i.kx = insertelement <16 x i8> %i.kw, i8 %i.kh, i64 1
  %i.ky = insertelement <16 x i8> %i.kx, i8 %i.ki, i64 2
  %i.kz = insertelement <16 x i8> %i.ky, i8 %i.kj, i64 3
  %i.la = insertelement <16 x i8> %i.kz, i8 %i.kk, i64 4
  %i.lb = insertelement <16 x i8> %i.la, i8 %i.kl, i64 5
  %i.lc = insertelement <16 x i8> %i.lb, i8 %i.km, i64 6
  %i.ld = insertelement <16 x i8> %i.lc, i8 %i.kn, i64 7
  %i.le = insertelement <16 x i8> %i.ld, i8 %i.ko, i64 8
  %i.lf = insertelement <16 x i8> %i.le, i8 %i.kp, i64 9
  %i.lg = insertelement <16 x i8> %i.lf, i8 %i.kq, i64 10
  %i.lh = insertelement <16 x i8> %i.lg, i8 %i.kr, i64 11
  %i.li = insertelement <16 x i8> %i.lh, i8 %i.ks, i64 12
  %i.lj = insertelement <16 x i8> %i.li, i8 %i.kt, i64 13
  %i.lk = insertelement <16 x i8> %i.lj, i8 %i.ku, i64 14
  %i.ll = insertelement <16 x i8> %i.lk, i8 %i.kv, i64 15
  %i.lm = zext <16 x i8> %i.ll to <16 x i32>
  %i.ln = mul nuw nsw <16 x i32> %i.lm, splat (i32 19077)
  %i.lo = lshr <16 x i32> %i.ln, splat (i32 8)    ; 3 uses
  %i.lp = add nsw <16 x i32> %i.lo, %i.ff
  %i.lq = ashr <16 x i32> %i.lp, splat (i32 6)
  %i.lr = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.lq, <16 x i32> zeroinitializer)
  %i.ls = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.lr, <16 x i32> splat (i32 255))
  %i.lt = trunc nuw <16 x i32> %i.ls to <16 x i8> ; 16 uses
  %i.lu = extractelement <16 x i8> %i.lt, i64 0
  store i8 %i.lu, ptr %i.ja, align 1, !alias.scope !291
  %i.lv = extractelement <16 x i8> %i.lt, i64 1
  store i8 %i.lv, ptr %i.jb, align 1, !alias.scope !291
  %i.lw = extractelement <16 x i8> %i.lt, i64 2
  store i8 %i.lw, ptr %i.jc, align 1, !alias.scope !291
  %i.lx = extractelement <16 x i8> %i.lt, i64 3
  store i8 %i.lx, ptr %i.jd, align 1, !alias.scope !291
  %i.ly = extractelement <16 x i8> %i.lt, i64 4
  store i8 %i.ly, ptr %i.je, align 1, !alias.scope !291
  %i.lz = extractelement <16 x i8> %i.lt, i64 5
  store i8 %i.lz, ptr %i.jf, align 1, !alias.scope !291
  %i.ma = extractelement <16 x i8> %i.lt, i64 6
  store i8 %i.ma, ptr %i.jg, align 1, !alias.scope !291
  %i.mb = extractelement <16 x i8> %i.lt, i64 7
  store i8 %i.mb, ptr %i.jh, align 1, !alias.scope !291
  %i.mc = extractelement <16 x i8> %i.lt, i64 8
  store i8 %i.mc, ptr %i.ji, align 1, !alias.scope !291
  %i.md = extractelement <16 x i8> %i.lt, i64 9
  store i8 %i.md, ptr %i.jj, align 1, !alias.scope !291
  %i.me = extractelement <16 x i8> %i.lt, i64 10
  store i8 %i.me, ptr %i.jk, align 1, !alias.scope !291
  %i.mf = extractelement <16 x i8> %i.lt, i64 11
  store i8 %i.mf, ptr %i.jl, align 1, !alias.scope !291
  %i.mg = extractelement <16 x i8> %i.lt, i64 12
  store i8 %i.mg, ptr %i.jm, align 1, !alias.scope !291
  %i.mh = extractelement <16 x i8> %i.lt, i64 13
  store i8 %i.mh, ptr %i.jn, align 1, !alias.scope !291
  %i.mi = extractelement <16 x i8> %i.lt, i64 14
  store i8 %i.mi, ptr %i.jo, align 1, !alias.scope !291
  %i.mj = extractelement <16 x i8> %i.lt, i64 15
  store i8 %i.mj, ptr %i.jp, align 1, !alias.scope !291
  %i.mk = sub nsw <16 x i32> %i.lo, %i.gb
  %i.ml = add nsw <16 x i32> %i.mk, splat (i32 8708)
  %i.mm = ashr <16 x i32> %i.ml, splat (i32 6)
  %i.mn = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.mm, <16 x i32> zeroinitializer)
  %i.mo = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.mn, <16 x i32> splat (i32 255))
  %i.mp = trunc nuw <16 x i32> %i.mo to <16 x i8> ; 16 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %next.gep174, i64 5
  %i.mr = getelementptr i8, ptr %i.cx, i64 13
  %i.ms = getelementptr i8, ptr %i.cy, i64 21
  %i.mt = getelementptr i8, ptr %i.cz, i64 29
  %i.mu = getelementptr i8, ptr %i.da, i64 37
  %i.mv = getelementptr i8, ptr %i.db, i64 45
  %i.mw = getelementptr i8, ptr %i.dc, i64 53
  %i.mx = getelementptr i8, ptr %i.dd, i64 61
  %i.my = getelementptr i8, ptr %i.de, i64 69
  %i.mz = getelementptr i8, ptr %i.df, i64 77
  %i.na = getelementptr i8, ptr %i.dg, i64 85
  %i.nb = getelementptr i8, ptr %i.dh, i64 93
  %i.nc = getelementptr i8, ptr %i.di, i64 101
  %i.nd = getelementptr i8, ptr %i.dj, i64 109
  %i.ne = getelementptr i8, ptr %i.dk, i64 117
  %i.nf = getelementptr i8, ptr %i.dl, i64 125
  %i.ng = extractelement <16 x i8> %i.mp, i64 0
  store i8 %i.ng, ptr %i.mq, align 1, !alias.scope !291
  %i.nh = extractelement <16 x i8> %i.mp, i64 1
  store i8 %i.nh, ptr %i.mr, align 1, !alias.scope !291
  %i.ni = extractelement <16 x i8> %i.mp, i64 2
  store i8 %i.ni, ptr %i.ms, align 1, !alias.scope !291
  %i.nj = extractelement <16 x i8> %i.mp, i64 3
  store i8 %i.nj, ptr %i.mt, align 1, !alias.scope !291
  %i.nk = extractelement <16 x i8> %i.mp, i64 4
  store i8 %i.nk, ptr %i.mu, align 1, !alias.scope !291
  %i.nl = extractelement <16 x i8> %i.mp, i64 5
  store i8 %i.nl, ptr %i.mv, align 1, !alias.scope !291
  %i.nm = extractelement <16 x i8> %i.mp, i64 6
  store i8 %i.nm, ptr %i.mw, align 1, !alias.scope !291
  %i.nn = extractelement <16 x i8> %i.mp, i64 7
  store i8 %i.nn, ptr %i.mx, align 1, !alias.scope !291
  %i.no = extractelement <16 x i8> %i.mp, i64 8
  store i8 %i.no, ptr %i.my, align 1, !alias.scope !291
  %i.np = extractelement <16 x i8> %i.mp, i64 9
  store i8 %i.np, ptr %i.mz, align 1, !alias.scope !291
  %i.nq = extractelement <16 x i8> %i.mp, i64 10
  store i8 %i.nq, ptr %i.na, align 1, !alias.scope !291
  %i.nr = extractelement <16 x i8> %i.mp, i64 11
  store i8 %i.nr, ptr %i.nb, align 1, !alias.scope !291
  %i.ns = extractelement <16 x i8> %i.mp, i64 12
  store i8 %i.ns, ptr %i.nc, align 1, !alias.scope !291
  %i.nt = extractelement <16 x i8> %i.mp, i64 13
  store i8 %i.nt, ptr %i.nd, align 1, !alias.scope !291
  %i.nu = extractelement <16 x i8> %i.mp, i64 14
  store i8 %i.nu, ptr %i.ne, align 1, !alias.scope !291
  %i.nv = extractelement <16 x i8> %i.mp, i64 15
  store i8 %i.nv, ptr %i.nf, align 1, !alias.scope !291
  %i.nw = add nsw <16 x i32> %i.lo, %i.ho
  %i.nx = ashr <16 x i32> %i.nw, splat (i32 6)
  %i.ny = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nx, <16 x i32> zeroinitializer)
  %i.nz = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ny, <16 x i32> splat (i32 255))
  %i.oa = trunc nuw <16 x i32> %i.nz to <16 x i8> ; 16 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %next.gep174, i64 6
  %i.oc = getelementptr i8, ptr %i.cx, i64 14
  %i.od = getelementptr i8, ptr %i.cy, i64 22
  %i.oe = getelementptr i8, ptr %i.cz, i64 30
  %i.of = getelementptr i8, ptr %i.da, i64 38
  %i.og = getelementptr i8, ptr %i.db, i64 46
  %i.oh = getelementptr i8, ptr %i.dc, i64 54
  %i.oi = getelementptr i8, ptr %i.dd, i64 62
  %i.oj = getelementptr i8, ptr %i.de, i64 70
  %i.ok = getelementptr i8, ptr %i.df, i64 78
  %i.ol = getelementptr i8, ptr %i.dg, i64 86
  %i.om = getelementptr i8, ptr %i.dh, i64 94
  %i.on = getelementptr i8, ptr %i.di, i64 102
  %i.oo = getelementptr i8, ptr %i.dj, i64 110
  %i.op = getelementptr i8, ptr %i.dk, i64 118
  %i.oq = getelementptr i8, ptr %i.dl, i64 126
  %i.or = extractelement <16 x i8> %i.oa, i64 0
  store i8 %i.or, ptr %i.ob, align 1, !alias.scope !291
  %i.os = extractelement <16 x i8> %i.oa, i64 1
  store i8 %i.os, ptr %i.oc, align 1, !alias.scope !291
  %i.ot = extractelement <16 x i8> %i.oa, i64 2
  store i8 %i.ot, ptr %i.od, align 1, !alias.scope !291
  %i.ou = extractelement <16 x i8> %i.oa, i64 3
  store i8 %i.ou, ptr %i.oe, align 1, !alias.scope !291
  %i.ov = extractelement <16 x i8> %i.oa, i64 4
  store i8 %i.ov, ptr %i.of, align 1, !alias.scope !291
  %i.ow = extractelement <16 x i8> %i.oa, i64 5
  store i8 %i.ow, ptr %i.og, align 1, !alias.scope !291
  %i.ox = extractelement <16 x i8> %i.oa, i64 6
  store i8 %i.ox, ptr %i.oh, align 1, !alias.scope !291
  %i.oy = extractelement <16 x i8> %i.oa, i64 7
  store i8 %i.oy, ptr %i.oi, align 1, !alias.scope !291
  %i.oz = extractelement <16 x i8> %i.oa, i64 8
  store i8 %i.oz, ptr %i.oj, align 1, !alias.scope !291
  %i.pa = extractelement <16 x i8> %i.oa, i64 9
  store i8 %i.pa, ptr %i.ok, align 1, !alias.scope !291
  %i.pb = extractelement <16 x i8> %i.oa, i64 10
  store i8 %i.pb, ptr %i.ol, align 1, !alias.scope !291
  %i.pc = extractelement <16 x i8> %i.oa, i64 11
  store i8 %i.pc, ptr %i.om, align 1, !alias.scope !291
  %i.pd = extractelement <16 x i8> %i.oa, i64 12
  store i8 %i.pd, ptr %i.on, align 1, !alias.scope !291
  %i.pe = extractelement <16 x i8> %i.oa, i64 13
  store i8 %i.pe, ptr %i.oo, align 1, !alias.scope !291
  %i.pf = extractelement <16 x i8> %i.oa, i64 14
  store i8 %i.pf, ptr %i.op, align 1, !alias.scope !291
  %i.pg = extractelement <16 x i8> %i.oa, i64 15
  store i8 %i.pg, ptr %i.oq, align 1, !alias.scope !291
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ph = icmp eq i64 %index.next, %n.vec
  br i1 %i.ph, label %.lr.ph.i.preheader200, label %vector.body, !llvm.loop !262

.lr.ph.i.preheader200:                            ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.0.081.i.ph = phi ptr [ %i.ap, %.lr.ph.i.preheader ], [ %i.bx, %vector.body ]
  %.sroa.545.080.i.ph = phi i64 [ %i.ae, %.lr.ph.i.preheader ], [ %i.bz, %vector.body ]
  %.sroa.648.079.i.ph = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.cb, %vector.body ]
  %.sroa.949.078.i.ph = phi i64 [ %i.bk, %.lr.ph.i.preheader ], [ %i.cd, %vector.body ]
  %.sroa.051.077.i.ph = phi ptr [ %.sroa.11.0.i, %.lr.ph.i.preheader ], [ %i.ce, %vector.body ]
  %.sroa.054.076.i.ph = phi ptr [ %.sroa.17.0, %.lr.ph.i.preheader ], [ %i.cf, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader200, %bb.x
  %.sroa.0.081.i = phi ptr [ %i.qw, %bb.x ], [ %.sroa.0.081.i.ph, %.lr.ph.i.preheader200 ] ; 3 uses
  %.sroa.545.080.i = phi i64 [ %i.qv, %bb.x ], [ %.sroa.545.080.i.ph, %.lr.ph.i.preheader200 ] ; 2 uses
  %.sroa.648.079.i = phi ptr [ %i.pi, %bb.x ], [ %.sroa.648.079.i.ph, %.lr.ph.i.preheader200 ] ; 7 uses
  %.sroa.949.078.i = phi i64 [ %i.pj, %bb.x ], [ %.sroa.949.078.i.ph, %.lr.ph.i.preheader200 ]
  %.sroa.051.077.i = phi ptr [ %i.qx, %bb.x ], [ %.sroa.051.077.i.ph, %.lr.ph.i.preheader200 ] ; 4 uses
  %.sroa.054.076.i = phi ptr [ %i.qy, %bb.x ], [ %.sroa.054.076.i.ph, %.lr.ph.i.preheader200 ] ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 8
  %i.pj = add i64 %.sroa.949.078.i, -8            ; 2 uses
  %.not.i.i15.i.i.i.i.i.i = icmp eq i64 %.sroa.545.080.i, 0
  br i1 %.not.i.i15.i.i.i.i.i.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.pk = icmp eq ptr %.sroa.051.077.i, %i.bn
  br i1 %i.pk, label %._crit_edge.i, label %bb.x

._crit_edge.i:                                    ; preds = %bb.x, %bb.u, %.lr.ph.i, %bb.t
  %.sroa.054.0.lcssa.i = phi ptr [ %.sroa.17.0, %bb.t ], [ %i.qy, %bb.x ], [ %.sroa.054.076.i, %bb.u ], [ %.sroa.054.076.i, %.lr.ph.i ] ; 2 uses
  %.sroa.051.1.ph.i = phi ptr [ %.sroa.11.0.i, %bb.t ], [ %i.qx, %bb.x ], [ %i.bn, %bb.u ], [ %.sroa.051.077.i, %.lr.ph.i ] ; 2 uses
  %i.pl = icmp samesign ugt i64 %i.bj, 2
  br i1 %i.pl, label %bb.v, label %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj4_EB4_.exit

bb.v:                                             ; preds = %._crit_edge.i
  %i.pm = icmp eq ptr %.sroa.051.1.ph.i, %i.bn
end_hunk_1
begin_hunk_2_@_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_EB4_:bb.a
  %i.sm = add nsw i32 %i.sl, %i.rp
  %i.sn = ashr i32 %i.sm, 6
  %..i.i34.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.sn, i32 0)
  %i.so = call i32 @llvm.umin.i32(i32 %..i.i34.i, i32 255)
  %i.sp = trunc nuw i32 %i.so to i8
  store i8 %i.sp, ptr %i.sg, align 1, !alias.scope !291
  %reass.sub115 = sub nsw i32 %i.sl, %i.ru
  %i.sq = add nsw i32 %reass.sub115, 8708
  %i.sr = ashr i32 %i.sq, 6
  %..i.i35.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.sr, i32 0)
  %i.ss = call i32 @llvm.umin.i32(i32 %..i.i35.i, i32 255)
  %i.st = trunc nuw i32 %i.ss to i8
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 5
  store i8 %i.st, ptr %i.su, align 1, !alias.scope !291
  %i.sv = add nsw i32 %i.sl, %i.sa
  %i.sw = ashr i32 %i.sv, 6
  %..i.i36.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.sw, i32 0)
  %i.sx = call i32 @llvm.umin.i32(i32 %..i.i36.i, i32 255)
  %i.sy = trunc nuw i32 %i.sx to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 6
  store i8 %i.sy, ptr %i.sz, align 1, !alias.scope !291
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.pj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !263

_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj4_EB4_.exit: ; preds = %._crit_edge.i, %bb.v, %bb.w
  %i.ta = load i64, ptr %i.t, align 8, !alias.scope !270, !noundef !7 ; 2 uses
  %i.tb = load i64, ptr %i.u, align 8, !alias.scope !270, !noundef !7
  %i.tc = icmp ult i64 %i.ta, %i.tb
  br i1 %i.tc, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj3_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !7
  %.not14 = icmp eq i64 %5, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not15 = icmp eq i64 %7, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !7
  %i.d = load i8, ptr %6, align 1, !noundef !7
  %i.e = zext i8 %i.b to i32
  %i.f = mul nuw nsw i32 %i.e, 19077
  %i.g = lshr i32 %i.f, 8                         ; 3 uses
  %i.h = zext i8 %i.d to i32                      ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 26149
  %i.j = lshr i32 %i.i, 8
  %i.k = add nsw i32 %i.g, -14234
  %i.l = add nsw i32 %i.k, %i.j
  %i.m = ashr i32 %i.l, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.m, i32 0)
  %i.n = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %0, align 1, !alias.scope !302
  %i.p = zext i8 %i.c to i32                      ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 6419
  %i.r = lshr i32 %i.q, 8
  %i.s = mul nuw nsw i32 %i.h, 13320
  %i.t = lshr i32 %i.s, 8
  %.neg80 = add nuw nsw i32 %i.g, 8708
  %i.u = add nuw nsw i32 %i.r, %i.t
  %i.v = sub nsw i32 %.neg80, %i.u
  %i.w = ashr i32 %i.v, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.w, i32 0)
  %i.x = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.y, ptr %i.z, align 1, !alias.scope !302
  %i.aa = mul nuw nsw i32 %i.p, 33050
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.g, -17685
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %i.ah, align 1, !alias.scope !302
  %i.ai = add nsw i64 %1, -3                      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  %i.ak = urem i64 %i.ai, 6                       ; 4 uses
  %i.al = sub nuw i64 %i.ai, %i.ak                ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 3 uses
  %i.an = add nsw i64 %3, -1                      ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.ap = and i64 %i.an, 1
  %i.aq = and i64 %i.an, -2                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %.not.i.i.i.i.i.i.i90 = icmp samesign ult i64 %1, 9
  br i1 %.not.i.i.i.i.i.i.i90, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.as = sub i64 5, %i.al
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.as, i64 -6)
  %i.au = add i64 %i.at, %i.al
  %i.av = udiv i64 %i.au, 6
  %i.aw = lshr i64 %i.an, 1
  %i.ax = add nsw i64 %7, -1
  %i.ay = add nsw i64 %5, -1
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw)
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ax)
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ay) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bb, 16
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

.lr.ph.preheader134:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.19.098.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.bg, %vector.body ]
  %.sroa.16.097.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.bh, %vector.body ]
  %.sroa.10.096.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.bi, %vector.body ]
  %.sroa.754.095.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.bj, %vector.body ]
  %.sroa.0.094.ph = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.bl, %vector.body ]
  %.sroa.560.093.ph = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %i.bn, %vector.body ]
  %.sroa.662.092.ph = phi ptr [ %i.aj, %.lr.ph.preheader ], [ %i.bp, %vector.body ]
  %.sroa.9.06491.ph = phi i64 [ %i.al, %.lr.ph.preheader ], [ %i.br, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bd = and i64 %i.bc, 15                       ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = select i1 %i.be, i64 16, i64 %i.bd
  %n.vec = sub nsw i64 %i.bc, %i.bf               ; 9 uses
  %i.bg = sub i64 %7, %n.vec
  %i.bh = getelementptr i8, ptr %6, i64 %n.vec
  %i.bi = sub i64 %5, %n.vec
  %i.bj = getelementptr i8, ptr %4, i64 %n.vec
  %i.bk = shl i64 %n.vec, 1
  %i.bl = getelementptr i8, ptr %i.ao, i64 %i.bk
  %i.bm = shl i64 %n.vec, 1
  %i.bn = sub i64 %i.aq, %i.bm
  %i.bo = mul i64 %n.vec, 6
  %i.bp = getelementptr i8, ptr %i.aj, i64 %i.bo
  %i.bq = mul i64 %n.vec, -6
  %i.br = add i64 %i.al, %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %next.gep = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep106 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.bs = shl i64 %index, 1                       ; 16 uses
  %next.gep107 = getelementptr i8, ptr %i.ao, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bt, i64 2
  %i.bu = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bu, i64 4
  %i.bv = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.bv, i64 6
  %i.bw = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bw, i64 8
  %i.bx = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bx, i64 10
  %i.by = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.by, i64 12
  %i.bz = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.bz, i64 14
  %i.ca = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.ca, i64 16
  %i.cb = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.cb, i64 18
  %i.cc = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.cc, i64 20
  %i.cd = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.cd, i64 22
  %i.ce = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.ce, i64 24
  %i.cf = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.cf, i64 26
  %i.cg = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.cg, i64 28
  %i.ch = getelementptr i8, ptr %i.ao, i64 %i.bs  ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.ch, i64 30
  %i.ci = mul i64 %index, 6
  %next.gep123 = getelementptr i8, ptr %i.aj, i64 %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep106, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cl = load i8, ptr %next.gep107, align 1
  %i.cm = load i8, ptr %next.gep108, align 1
  %i.cn = load i8, ptr %next.gep109, align 1
  %i.co = load i8, ptr %next.gep110, align 1
  %i.cp = load i8, ptr %next.gep111, align 1
  %i.cq = load i8, ptr %next.gep112, align 1
  %i.cr = load i8, ptr %next.gep113, align 1
  %i.cs = load i8, ptr %next.gep114, align 1
  %i.ct = load i8, ptr %next.gep115, align 1
  %i.cu = load i8, ptr %next.gep116, align 1
  %i.cv = load i8, ptr %next.gep117, align 1
  %i.cw = load i8, ptr %next.gep118, align 1
  %i.cx = load i8, ptr %next.gep119, align 1
  %i.cy = load i8, ptr %next.gep120, align 1
  %i.cz = load i8, ptr %next.gep121, align 1
  %i.da = load i8, ptr %next.gep122, align 1
  %i.db = insertelement <16 x i8> poison, i8 %i.cl, i64 0
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 1
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 2
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 3
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 4
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 5
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 6
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 7
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 8
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 9
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 10
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 11
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 12
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 13
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 14
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep106, align 1
  %wide.load124 = load <16 x i8>, ptr %i.cj, align 1
  %i.dr = zext <16 x i8> %wide.load to <16 x i16> ; 3 uses
  %i.ds = zext <16 x i8> %wide.load124 to <16 x i16> ; 3 uses
  %i.dt = mul nuw nsw <16 x i16> %i.dr, splat (i16 9)
  %i.du = mul nuw nsw <16 x i16> %i.ds, splat (i16 3) ; 2 uses
  %i.dv = mul nuw nsw <16 x i16> %i.dr, splat (i16 3)
  %i.dw = add nuw nsw <16 x i16> %i.dv, splat (i16 8) ; 2 uses
  %i.dx = add nuw nsw <16 x i16> %i.dw, %i.dt
  %i.dy = add nuw nsw <16 x i16> %i.dx, %i.ds
  %i.dz = add nuw nsw <16 x i16> %i.dy, %i.du
  %i.ea = lshr <16 x i16> %i.dz, splat (i16 4)
  %wide.load125 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load126 = load <16 x i8>, ptr %i.ck, align 1
  %i.eb = zext <16 x i8> %wide.load125 to <16 x i16> ; 3 uses
  %i.ec = zext <16 x i8> %wide.load126 to <16 x i16> ; 3 uses
  %i.ed = mul nuw nsw <16 x i16> %i.eb, splat (i16 9)
  %i.ee = mul nuw nsw <16 x i16> %i.ec, splat (i16 3) ; 2 uses
  %i.ef = mul nuw nsw <16 x i16> %i.eb, splat (i16 3)
  %i.eg = add nuw nsw <16 x i16> %i.ef, splat (i16 8) ; 2 uses
  %i.eh = add nuw nsw <16 x i16> %i.eg, %i.ed
  %i.ei = add nuw nsw <16 x i16> %i.eh, %i.ec
  %i.ej = add nuw nsw <16 x i16> %i.ei, %i.ee
  %i.ek = lshr <16 x i16> %i.ej, splat (i16 4)
  %i.el = zext <16 x i8> %i.dq to <16 x i32>
  %i.em = mul nuw nsw <16 x i32> %i.el, splat (i32 19077)
  %i.en = lshr <16 x i32> %i.em, splat (i32 8)    ; 3 uses
  %i.eo = zext nneg <16 x i16> %i.ek to <16 x i32> ; 2 uses
  %i.ep = mul nuw nsw <16 x i32> %i.eo, splat (i32 26149)
  %i.eq = lshr <16 x i32> %i.ep, splat (i32 8)
  %i.er = add nsw <16 x i32> %i.en, splat (i32 -14234)
  %i.es = add nsw <16 x i32> %i.er, %i.eq
  %i.et = zext nneg <16 x i16> %i.ea to <16 x i32> ; 2 uses
  %i.eu = mul nuw nsw <16 x i32> %i.et, splat (i32 6419)
  %i.ev = lshr <16 x i32> %i.eu, splat (i32 8)
  %i.ew = mul nuw nsw <16 x i32> %i.eo, splat (i32 13320)
  %i.ex = lshr <16 x i32> %i.ew, splat (i32 8)
  %i.ey = add nuw nsw <16 x i32> %i.en, splat (i32 8708)
  %i.ez = add nuw nsw <16 x i32> %i.ev, %i.ex
  %i.fa = sub nsw <16 x i32> %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %next.gep107, i64 1
  %i.fc = getelementptr i8, ptr %i.bt, i64 3
  %i.fd = getelementptr i8, ptr %i.bu, i64 5
  %i.fe = getelementptr i8, ptr %i.bv, i64 7
  %i.ff = getelementptr i8, ptr %i.bw, i64 9
  %i.fg = getelementptr i8, ptr %i.bx, i64 11
  %i.fh = getelementptr i8, ptr %i.by, i64 13
  %i.fi = getelementptr i8, ptr %i.bz, i64 15
  %i.fj = getelementptr i8, ptr %i.ca, i64 17
  %i.fk = getelementptr i8, ptr %i.cb, i64 19
  %i.fl = getelementptr i8, ptr %i.cc, i64 21
  %i.fm = getelementptr i8, ptr %i.cd, i64 23
  %i.fn = getelementptr i8, ptr %i.ce, i64 25
  %i.fo = getelementptr i8, ptr %i.cf, i64 27
  %i.fp = getelementptr i8, ptr %i.cg, i64 29
  %i.fq = getelementptr i8, ptr %i.ch, i64 31
  %i.fr = load i8, ptr %i.fb, align 1
  %i.fs = load i8, ptr %i.fc, align 1
  %i.ft = load i8, ptr %i.fd, align 1
  %i.fu = load i8, ptr %i.fe, align 1
  %i.fv = load i8, ptr %i.ff, align 1
  %i.fw = load i8, ptr %i.fg, align 1
  %i.fx = load i8, ptr %i.fh, align 1
  %i.fy = load i8, ptr %i.fi, align 1
  %i.fz = load i8, ptr %i.fj, align 1
  %i.ga = load i8, ptr %i.fk, align 1
  %i.gb = load i8, ptr %i.fl, align 1
  %i.gc = load i8, ptr %i.fm, align 1
  %i.gd = load i8, ptr %i.fn, align 1
  %i.ge = load i8, ptr %i.fo, align 1
  %i.gf = load i8, ptr %i.fp, align 1
  %i.gg = load i8, ptr %i.fq, align 1
  %i.gh = insertelement <16 x i8> poison, i8 %i.fr, i64 0
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 1
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 2
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 3
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 4
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 5
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 6
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 7
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 8
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 9
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 10
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 11
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 12
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 13
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 14
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 15
  %i.gx = mul nuw nsw <16 x i16> %i.ds, splat (i16 9)
  %i.gy = add nuw nsw <16 x i16> %i.dw, %i.dr
  %i.gz = add nuw nsw <16 x i16> %i.gy, %i.gx
  %i.ha = add nuw nsw <16 x i16> %i.gz, %i.du
  %i.hb = lshr <16 x i16> %i.ha, splat (i16 4)
  %i.hc = mul nuw nsw <16 x i16> %i.ec, splat (i16 9)
  %i.hd = add nuw nsw <16 x i16> %i.eg, %i.eb
  %i.he = add nuw nsw <16 x i16> %i.hd, %i.hc
  %i.hf = add nuw nsw <16 x i16> %i.he, %i.ee
  %i.hg = lshr <16 x i16> %i.hf, splat (i16 4)
  %i.hh = zext <16 x i8> %i.gw to <16 x i32>
  %i.hi = mul nuw nsw <16 x i32> %i.hh, splat (i32 19077)
  %i.hj = lshr <16 x i32> %i.hi, splat (i32 8)    ; 3 uses
  %i.hk = zext nneg <16 x i16> %i.hg to <16 x i32> ; 2 uses
  %i.hl = zext nneg <16 x i16> %i.hb to <16 x i32> ; 2 uses
  %i.hm = mul nuw nsw <16 x i32> %i.hl, splat (i32 6419)
  %i.hn = lshr <16 x i32> %i.hm, splat (i32 8)
  %i.ho = mul nuw nsw <16 x i32> %i.hk, splat (i32 13320)
  %i.hp = lshr <16 x i32> %i.ho, splat (i32 8)
  %i.hq = add nuw nsw <16 x i32> %i.hj, splat (i32 8708)
  %i.hr = add nuw nsw <16 x i32> %i.hn, %i.hp
  %i.hs = sub nsw <16 x i32> %i.hq, %i.hr
  %i.ht = ashr <16 x i32> %i.hs, splat (i32 6)
  %i.hu = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ht, <16 x i32> zeroinitializer)
  %i.hv = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.hu, <16 x i32> splat (i32 255))
  %i.hw = trunc nuw <16 x i32> %i.hv to <16 x i8>
  %i.hx = mul nuw nsw <16 x i32> %i.hl, splat (i32 33050)
  %i.hy = lshr <16 x i32> %i.hx, splat (i32 8)
  %i.hz = add nsw <16 x i32> %i.hj, splat (i32 -17685)
  %i.ia = add nsw <16 x i32> %i.hz, %i.hy
  %i.ib = ashr <16 x i32> %i.ia, splat (i32 6)
  %i.ic = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ib, <16 x i32> zeroinitializer)
  %i.id = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ic, <16 x i32> splat (i32 255))
  %i.ie = trunc nuw <16 x i32> %i.id to <16 x i8>
  %i.if = shufflevector <16 x i32> %i.es, <16 x i32> %i.fa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ig = shufflevector <16 x i32> %i.en, <16 x i32> %i.hj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ih = add nsw <32 x i32> %i.ig, <i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234>
  %i.ii = shufflevector <16 x i32> %i.et, <16 x i32> %i.hk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ij = mul nuw nsw <32 x i32> %i.ii, <i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149>
  %i.ik = lshr <32 x i32> %i.ij, splat (i32 8)
  %i.il = add nsw <32 x i32> %i.ih, %i.ik
  %i.im = shufflevector <32 x i32> %i.if, <32 x i32> %i.il, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.in = ashr <64 x i32> %i.im, splat (i32 6)
  %i.io = tail call <64 x i32> @llvm.smax.v64i32(<64 x i32> %i.in, <64 x i32> zeroinitializer)
  %i.ip = tail call <64 x i32> @llvm.umin.v64i32(<64 x i32> %i.io, <64 x i32> splat (i32 255))
  %i.iq = trunc nuw <64 x i32> %i.ip to <64 x i8>
  %i.ir = shufflevector <16 x i8> %i.hw, <16 x i8> %i.ie, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.iq, <64 x i8> %i.ir, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep123, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %.lr.ph.preheader134, label %vector.body, !llvm.loop !294

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37
  %.sroa.19.098 = phi i64 [ %i.kn, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.19.098.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.16.097 = phi ptr [ %i.ko, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.16.097.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.10.096 = phi i64 [ %i.km, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.10.096.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.754.095 = phi ptr [ %i.kl, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.754.095.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.0.094 = phi ptr [ %i.kk, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.0.094.ph, %.lr.ph.preheader134 ] ; 3 uses
  %.sroa.560.093 = phi i64 [ %i.kj, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.560.093.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.662.092 = phi ptr [ %i.it, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.662.092.ph, %.lr.ph.preheader134 ] ; 7 uses
  %.sroa.9.06491 = phi i64 [ %i.iu, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.9.06491.ph, %.lr.ph.preheader134 ]
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 6
  %i.iu = add i64 %.sroa.9.06491, -6              ; 2 uses
  %.not.i.i15.i.i.i.i.i = icmp eq i64 %.sroa.560.093, 0
  br i1 %.not.i.i15.i.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.iv = icmp ult i64 %.sroa.10.096, 2
  %i.iw = icmp ult i64 %.sroa.19.098, 2
  %or.cond = select i1 %i.iv, i1 true, i1 %i.iw
  br i1 %or.cond, label %._crit_edge, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37

._crit_edge:                                      ; preds = %.lr.ph, %bb.j, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37, %bb.h
  %.not78 = icmp eq i64 %i.ap, 0
  br i1 %.not78, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, %._crit_edge
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.ix = getelementptr i8, ptr %4, i64 %5
  %i.iy = getelementptr i8, ptr %i.ix, i64 -1
  %i.iz = load i8, ptr %i.iy, align 1, !noundef !7
  %i.ja = getelementptr i8, ptr %6, i64 %7
  %i.jb = getelementptr i8, ptr %i.ja, i64 -1
  %i.jc = load i8, ptr %i.jb, align 1, !noundef !7
  %i.jd = load i8, ptr %i.ar, align 1, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.je = zext i8 %i.jd to i32
  %i.jf = mul nuw nsw i32 %i.je, 19077
  %i.jg = lshr i32 %i.jf, 8                       ; 3 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jh = zext i8 %i.jc to i32                    ; 2 uses
  %i.ji = mul nuw nsw i32 %i.jh, 26149
  %i.jj = lshr i32 %i.ji, 8
  %i.jk = add nsw i32 %i.jj, -14234
  %i.jl = add nsw i32 %i.jk, %i.jg
  %i.jm = ashr i32 %i.jl, 6
  %..i.i.i23 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.jm, i32 0)
  %i.jn = tail call i32 @llvm.umin.i32(i32 %..i.i.i23, i32 255)
  %i.jo = trunc nuw i32 %i.jn to i8
  store i8 %i.jo, ptr %i.am, align 1, !alias.scope !303
  %.not1.i = icmp eq i64 %i.ak, 1
  br i1 %.not1.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #9, !noalias !303
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.jp = zext i8 %i.iz to i32                    ; 2 uses
  %i.jq = mul nuw nsw i32 %i.jp, 6419
  %i.jr = lshr i32 %i.jq, 8
  %i.js = mul nuw nsw i32 %i.jh, 13320
  %i.jt = lshr i32 %i.js, 8
  %i.ju = add nuw nsw i32 %i.jr, %i.jt
  %reass.sub = sub nsw i32 %i.jg, %i.ju
  %i.jv = add nsw i32 %reass.sub, 8708
  %i.jw = ashr i32 %i.jv, 6
  %..i.i2.i25 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.jw, i32 0)
  %i.jx = tail call i32 @llvm.umin.i32(i32 %..i.i2.i25, i32 255)
  %i.jy = trunc nuw i32 %i.jx to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.jy, ptr %i.jz, align 1, !alias.scope !303
  %i.ka = icmp samesign ugt i64 %i.ak, 2
  br i1 %i.ka, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #9, !noalias !303
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #9, !noalias !303
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit: ; preds = %bb.o
  %i.kb = mul nuw nsw i32 %i.jp, 33050
  %i.kc = lshr i32 %i.kb, 8
  %i.kd = add nsw i32 %i.kc, -17685
  %i.ke = add nsw i32 %i.kd, %i.jg
  %i.kf = ashr i32 %i.ke, 6
  %..i.i3.i26 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.kf, i32 0)
  %i.kg = tail call i32 @llvm.umin.i32(i32 %..i.i3.i26, i32 255)
  %i.kh = trunc nuw i32 %i.kg to i8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 %i.kh, ptr %i.ki, align 1, !alias.scope !303
  br label %bb.k

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37: ; preds = %bb.j
  %i.kj = add i64 %.sroa.560.093, -2
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 2
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.754.095, i64 1
  %i.km = add nsw i64 %.sroa.10.096, -1
  %i.kn = add nsw i64 %.sroa.19.098, -1
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.16.097, i64 1
  %i.kp = load i8, ptr %.sroa.0.094, align 1, !noundef !7
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul nuw nsw i32 %i.kq, 19077
  %i.ks = lshr i32 %i.kr, 8                       ; 3 uses
  %i.kt = add nsw i32 %i.ks, -14234
  %.neg83 = add nuw nsw i32 %i.ks, 8708
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 1
  %i.kv = add nsw i32 %i.ks, -17685
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 2
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 3
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !noundef !7
  %i.la = load <2 x i8>, ptr %.sroa.754.095, align 1 ; 2 uses
  %i.lb = load <2 x i8>, ptr %.sroa.16.097, align 1 ; 2 uses
  %i.lc = shufflevector <2 x i8> %i.la, <2 x i8> %i.lb, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ld = zext <4 x i8> %i.lc to <4 x i16>        ; 2 uses
  %i.le = shufflevector <2 x i8> %i.la, <2 x i8> %i.lb, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.lf = zext <4 x i8> %i.le to <4 x i16>        ; 2 uses
  %i.lg = mul nuw nsw <4 x i16> %i.ld, <i16 9, i16 9, i16 1, i16 1>
  %i.lh = mul nuw nsw <4 x i16> %i.lf, splat (i16 3)
  %i.li = mul nuw nsw <4 x i16> %i.ld, splat (i16 3)
end_hunk_2
begin_hunk_3_@_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj4_EB4_:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !7
  %.not14 = icmp eq i64 %5, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not15 = icmp eq i64 %7, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !7
  %i.d = load i8, ptr %6, align 1, !noundef !7
  %i.e = zext i8 %i.b to i32
  %i.f = mul nuw nsw i32 %i.e, 19077
  %i.g = lshr i32 %i.f, 8                         ; 3 uses
  %i.h = zext i8 %i.d to i32                      ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 26149
  %i.j = lshr i32 %i.i, 8
  %i.k = add nsw i32 %i.g, -14234
  %i.l = add nsw i32 %i.k, %i.j
  %i.m = ashr i32 %i.l, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.m, i32 0)
  %i.n = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %0, align 1, !alias.scope !316
  %i.p = zext i8 %i.c to i32                      ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 6419
  %i.r = lshr i32 %i.q, 8
  %i.s = mul nuw nsw i32 %i.h, 13320
  %i.t = lshr i32 %i.s, 8
  %.neg80 = add nuw nsw i32 %i.g, 8708
  %i.u = add nuw nsw i32 %i.r, %i.t
  %i.v = sub nsw i32 %.neg80, %i.u
  %i.w = ashr i32 %i.v, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.w, i32 0)
  %i.x = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.y, ptr %i.z, align 1, !alias.scope !316
  %i.aa = mul nuw nsw i32 %i.p, 33050
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.g, -17685
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %i.ah, align 1, !alias.scope !316
  %i.ai = icmp eq i64 %1, 3
  br i1 %i.ai, label %bb.k, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = add nsw i64 %1, -4                      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  %i.al = and i64 %i.aj, 7                        ; 3 uses
  %i.am = and i64 %i.aj, -8                       ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 3 uses
  %i.ao = add nsw i64 %3, -1                      ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.aq = and i64 %i.ao, 1
  %i.ar = and i64 %i.ao, -2                       ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %.not.i.i.i.i.i.i.i90 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i90, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.at = lshr i64 %i.ao, 1
  %i.au = add nsw i64 %1, -12
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nsw i64 %7, -1
  %i.ax = add nsw i64 %5, -1
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.av)
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.aw)
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ax) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ba, 16
  br i1 %min.iters.check, label %.lr.ph.preheader150, label %vector.ph

.lr.ph.preheader150:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.19.098.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.bf, %vector.body ]
  %.sroa.16.097.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.bg, %vector.body ]
  %.sroa.10.096.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.bh, %vector.body ]
  %.sroa.754.095.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.bi, %vector.body ]
  %.sroa.0.094.ph = phi ptr [ %i.ap, %.lr.ph.preheader ], [ %i.bk, %vector.body ]
  %.sroa.560.093.ph = phi i64 [ %i.ar, %.lr.ph.preheader ], [ %i.bm, %vector.body ]
  %.sroa.662.092.ph = phi ptr [ %i.ak, %.lr.ph.preheader ], [ %i.bo, %vector.body ]
  %.sroa.9.06491.ph = phi i64 [ %i.am, %.lr.ph.preheader ], [ %i.bq, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = and i64 %i.bb, 15                       ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = select i1 %i.bd, i64 16, i64 %i.bc
  %n.vec = sub nsw i64 %i.bb, %i.be               ; 9 uses
  %i.bf = sub i64 %7, %n.vec
  %i.bg = getelementptr i8, ptr %6, i64 %n.vec
  %i.bh = sub i64 %5, %n.vec
  %i.bi = getelementptr i8, ptr %4, i64 %n.vec
  %i.bj = shl i64 %n.vec, 1
  %i.bk = getelementptr i8, ptr %i.ap, i64 %i.bj
  %i.bl = shl i64 %n.vec, 1
  %i.bm = sub i64 %i.ar, %i.bl
  %i.bn = shl i64 %n.vec, 3
  %i.bo = getelementptr i8, ptr %i.ak, i64 %i.bn
  %i.bp = shl i64 %n.vec, 3
  %i.bq = sub i64 %i.am, %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %next.gep = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep107 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.br = shl i64 %index, 1                       ; 16 uses
  %next.gep108 = getelementptr i8, ptr %i.ap, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bs, i64 2
  %i.bt = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.bt, i64 4
  %i.bu = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bu, i64 6
  %i.bv = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bv, i64 8
  %i.bw = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.bw, i64 10
  %i.bx = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.bx, i64 12
  %i.by = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.by, i64 14
  %i.bz = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.bz, i64 16
  %i.ca = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.ca, i64 18
  %i.cb = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.cb, i64 20
  %i.cc = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.cc, i64 22
  %i.cd = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.cd, i64 24
  %i.ce = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.ce, i64 26
  %i.cf = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.cf, i64 28
  %i.cg = getelementptr i8, ptr %i.ap, i64 %i.br  ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.cg, i64 30
  %i.ch = shl i64 %index, 3                       ; 16 uses
  %next.gep124 = getelementptr i8, ptr %i.ak, i64 %i.ch ; 6 uses
  %i.ci = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep125 = getelementptr i8, ptr %i.ci, i64 8
  %i.cj = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep126 = getelementptr i8, ptr %i.cj, i64 16
  %i.ck = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep127 = getelementptr i8, ptr %i.ck, i64 24
  %i.cl = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep128 = getelementptr i8, ptr %i.cl, i64 32
  %i.cm = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep129 = getelementptr i8, ptr %i.cm, i64 40
  %i.cn = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep130 = getelementptr i8, ptr %i.cn, i64 48
  %i.co = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep131 = getelementptr i8, ptr %i.co, i64 56
  %i.cp = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep132 = getelementptr i8, ptr %i.cp, i64 64
  %i.cq = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep133 = getelementptr i8, ptr %i.cq, i64 72
  %i.cr = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep134 = getelementptr i8, ptr %i.cr, i64 80
  %i.cs = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep135 = getelementptr i8, ptr %i.cs, i64 88
  %i.ct = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep136 = getelementptr i8, ptr %i.ct, i64 96
  %i.cu = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep137 = getelementptr i8, ptr %i.cu, i64 104
  %i.cv = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep138 = getelementptr i8, ptr %i.cv, i64 112
  %i.cw = getelementptr i8, ptr %i.ak, i64 %i.ch  ; 6 uses
  %next.gep139 = getelementptr i8, ptr %i.cw, i64 120
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep107, i64 1
  %i.cy = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cz = load i8, ptr %next.gep108, align 1
  %i.da = load i8, ptr %next.gep109, align 1
  %i.db = load i8, ptr %next.gep110, align 1
  %i.dc = load i8, ptr %next.gep111, align 1
  %i.dd = load i8, ptr %next.gep112, align 1
  %i.de = load i8, ptr %next.gep113, align 1
  %i.df = load i8, ptr %next.gep114, align 1
  %i.dg = load i8, ptr %next.gep115, align 1
  %i.dh = load i8, ptr %next.gep116, align 1
  %i.di = load i8, ptr %next.gep117, align 1
  %i.dj = load i8, ptr %next.gep118, align 1
  %i.dk = load i8, ptr %next.gep119, align 1
  %i.dl = load i8, ptr %next.gep120, align 1
  %i.dm = load i8, ptr %next.gep121, align 1
  %i.dn = load i8, ptr %next.gep122, align 1
  %i.do = load i8, ptr %next.gep123, align 1
  %i.dp = insertelement <16 x i8> poison, i8 %i.cz, i64 0
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 1
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 2
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 3
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 4
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 5
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 6
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 7
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 8
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 9
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 10
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 11
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 12
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 13
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 14
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep107, align 1
  %wide.load140 = load <16 x i8>, ptr %i.cx, align 1
  %i.ef = zext <16 x i8> %wide.load to <16 x i16> ; 3 uses
  %i.eg = zext <16 x i8> %wide.load140 to <16 x i16> ; 3 uses
  %i.eh = mul nuw nsw <16 x i16> %i.ef, splat (i16 9)
  %i.ei = mul nuw nsw <16 x i16> %i.eg, splat (i16 3) ; 2 uses
  %i.ej = mul nuw nsw <16 x i16> %i.ef, splat (i16 3)
  %i.ek = add nuw nsw <16 x i16> %i.ej, splat (i16 8) ; 2 uses
  %i.el = add nuw nsw <16 x i16> %i.ek, %i.eh
  %i.em = add nuw nsw <16 x i16> %i.el, %i.eg
  %i.en = add nuw nsw <16 x i16> %i.em, %i.ei
  %i.eo = lshr <16 x i16> %i.en, splat (i16 4)
  %wide.load141 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load142 = load <16 x i8>, ptr %i.cy, align 1
  %i.ep = zext <16 x i8> %wide.load141 to <16 x i16> ; 3 uses
  %i.eq = zext <16 x i8> %wide.load142 to <16 x i16> ; 3 uses
  %i.er = mul nuw nsw <16 x i16> %i.ep, splat (i16 9)
  %i.es = mul nuw nsw <16 x i16> %i.eq, splat (i16 3) ; 2 uses
  %i.et = mul nuw nsw <16 x i16> %i.ep, splat (i16 3)
  %i.eu = add nuw nsw <16 x i16> %i.et, splat (i16 8) ; 2 uses
  %i.ev = add nuw nsw <16 x i16> %i.eu, %i.er
  %i.ew = add nuw nsw <16 x i16> %i.ev, %i.eq
  %i.ex = add nuw nsw <16 x i16> %i.ew, %i.es
  %i.ey = lshr <16 x i16> %i.ex, splat (i16 4)
  %i.ez = zext <16 x i8> %i.ee to <16 x i32>
  %i.fa = mul nuw nsw <16 x i32> %i.ez, splat (i32 19077)
  %i.fb = lshr <16 x i32> %i.fa, splat (i32 8)    ; 3 uses
  %i.fc = zext nneg <16 x i16> %i.ey to <16 x i32> ; 2 uses
  %i.fd = mul nuw nsw <16 x i32> %i.fc, splat (i32 26149)
  %i.fe = lshr <16 x i32> %i.fd, splat (i32 8)
  %i.ff = add nsw <16 x i32> %i.fb, splat (i32 -14234)
  %i.fg = add nsw <16 x i32> %i.ff, %i.fe
  %i.fh = ashr <16 x i32> %i.fg, splat (i32 6)
  %i.fi = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fh, <16 x i32> zeroinitializer)
  %i.fj = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fi, <16 x i32> splat (i32 255))
  %i.fk = trunc nuw <16 x i32> %i.fj to <16 x i8> ; 16 uses
  %i.fl = extractelement <16 x i8> %i.fk, i64 0
  store i8 %i.fl, ptr %next.gep124, align 1, !alias.scope !317
  %i.fm = extractelement <16 x i8> %i.fk, i64 1
  store i8 %i.fm, ptr %next.gep125, align 1, !alias.scope !317
  %i.fn = extractelement <16 x i8> %i.fk, i64 2
  store i8 %i.fn, ptr %next.gep126, align 1, !alias.scope !317
  %i.fo = extractelement <16 x i8> %i.fk, i64 3
  store i8 %i.fo, ptr %next.gep127, align 1, !alias.scope !317
  %i.fp = extractelement <16 x i8> %i.fk, i64 4
  store i8 %i.fp, ptr %next.gep128, align 1, !alias.scope !317
  %i.fq = extractelement <16 x i8> %i.fk, i64 5
  store i8 %i.fq, ptr %next.gep129, align 1, !alias.scope !317
  %i.fr = extractelement <16 x i8> %i.fk, i64 6
  store i8 %i.fr, ptr %next.gep130, align 1, !alias.scope !317
  %i.fs = extractelement <16 x i8> %i.fk, i64 7
  store i8 %i.fs, ptr %next.gep131, align 1, !alias.scope !317
  %i.ft = extractelement <16 x i8> %i.fk, i64 8
  store i8 %i.ft, ptr %next.gep132, align 1, !alias.scope !317
  %i.fu = extractelement <16 x i8> %i.fk, i64 9
  store i8 %i.fu, ptr %next.gep133, align 1, !alias.scope !317
  %i.fv = extractelement <16 x i8> %i.fk, i64 10
  store i8 %i.fv, ptr %next.gep134, align 1, !alias.scope !317
  %i.fw = extractelement <16 x i8> %i.fk, i64 11
  store i8 %i.fw, ptr %next.gep135, align 1, !alias.scope !317
  %i.fx = extractelement <16 x i8> %i.fk, i64 12
  store i8 %i.fx, ptr %next.gep136, align 1, !alias.scope !317
  %i.fy = extractelement <16 x i8> %i.fk, i64 13
  store i8 %i.fy, ptr %next.gep137, align 1, !alias.scope !317
  %i.fz = extractelement <16 x i8> %i.fk, i64 14
  store i8 %i.fz, ptr %next.gep138, align 1, !alias.scope !317
  %i.ga = extractelement <16 x i8> %i.fk, i64 15
  store i8 %i.ga, ptr %next.gep139, align 1, !alias.scope !317
  %i.gb = zext nneg <16 x i16> %i.eo to <16 x i32> ; 2 uses
  %i.gc = mul nuw nsw <16 x i32> %i.gb, splat (i32 6419)
  %i.gd = lshr <16 x i32> %i.gc, splat (i32 8)
  %i.ge = mul nuw nsw <16 x i32> %i.fc, splat (i32 13320)
  %i.gf = lshr <16 x i32> %i.ge, splat (i32 8)
  %i.gg = add nuw nsw <16 x i32> %i.fb, splat (i32 8708)
  %i.gh = add nuw nsw <16 x i32> %i.gd, %i.gf
  %i.gi = sub nsw <16 x i32> %i.gg, %i.gh
  %i.gj = ashr <16 x i32> %i.gi, splat (i32 6)
  %i.gk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.gj, <16 x i32> zeroinitializer)
  %i.gl = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.gk, <16 x i32> splat (i32 255))
  %i.gm = trunc nuw <16 x i32> %i.gl to <16 x i8> ; 16 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %next.gep124, i64 1
  %i.go = getelementptr i8, ptr %i.ci, i64 9
  %i.gp = getelementptr i8, ptr %i.cj, i64 17
  %i.gq = getelementptr i8, ptr %i.ck, i64 25
  %i.gr = getelementptr i8, ptr %i.cl, i64 33
  %i.gs = getelementptr i8, ptr %i.cm, i64 41
  %i.gt = getelementptr i8, ptr %i.cn, i64 49
  %i.gu = getelementptr i8, ptr %i.co, i64 57
  %i.gv = getelementptr i8, ptr %i.cp, i64 65
  %i.gw = getelementptr i8, ptr %i.cq, i64 73
  %i.gx = getelementptr i8, ptr %i.cr, i64 81
  %i.gy = getelementptr i8, ptr %i.cs, i64 89
  %i.gz = getelementptr i8, ptr %i.ct, i64 97
  %i.ha = getelementptr i8, ptr %i.cu, i64 105
  %i.hb = getelementptr i8, ptr %i.cv, i64 113
  %i.hc = getelementptr i8, ptr %i.cw, i64 121
  %i.hd = extractelement <16 x i8> %i.gm, i64 0
  store i8 %i.hd, ptr %i.gn, align 1, !alias.scope !317
  %i.he = extractelement <16 x i8> %i.gm, i64 1
  store i8 %i.he, ptr %i.go, align 1, !alias.scope !317
  %i.hf = extractelement <16 x i8> %i.gm, i64 2
  store i8 %i.hf, ptr %i.gp, align 1, !alias.scope !317
  %i.hg = extractelement <16 x i8> %i.gm, i64 3
  store i8 %i.hg, ptr %i.gq, align 1, !alias.scope !317
  %i.hh = extractelement <16 x i8> %i.gm, i64 4
  store i8 %i.hh, ptr %i.gr, align 1, !alias.scope !317
  %i.hi = extractelement <16 x i8> %i.gm, i64 5
  store i8 %i.hi, ptr %i.gs, align 1, !alias.scope !317
  %i.hj = extractelement <16 x i8> %i.gm, i64 6
  store i8 %i.hj, ptr %i.gt, align 1, !alias.scope !317
  %i.hk = extractelement <16 x i8> %i.gm, i64 7
  store i8 %i.hk, ptr %i.gu, align 1, !alias.scope !317
  %i.hl = extractelement <16 x i8> %i.gm, i64 8
  store i8 %i.hl, ptr %i.gv, align 1, !alias.scope !317
  %i.hm = extractelement <16 x i8> %i.gm, i64 9
  store i8 %i.hm, ptr %i.gw, align 1, !alias.scope !317
  %i.hn = extractelement <16 x i8> %i.gm, i64 10
  store i8 %i.hn, ptr %i.gx, align 1, !alias.scope !317
  %i.ho = extractelement <16 x i8> %i.gm, i64 11
  store i8 %i.ho, ptr %i.gy, align 1, !alias.scope !317
  %i.hp = extractelement <16 x i8> %i.gm, i64 12
  store i8 %i.hp, ptr %i.gz, align 1, !alias.scope !317
  %i.hq = extractelement <16 x i8> %i.gm, i64 13
  store i8 %i.hq, ptr %i.ha, align 1, !alias.scope !317
  %i.hr = extractelement <16 x i8> %i.gm, i64 14
  store i8 %i.hr, ptr %i.hb, align 1, !alias.scope !317
  %i.hs = extractelement <16 x i8> %i.gm, i64 15
  store i8 %i.hs, ptr %i.hc, align 1, !alias.scope !317
  %i.ht = mul nuw nsw <16 x i32> %i.gb, splat (i32 33050)
  %i.hu = lshr <16 x i32> %i.ht, splat (i32 8)
  %i.hv = add nsw <16 x i32> %i.fb, splat (i32 -17685)
  %i.hw = add nsw <16 x i32> %i.hv, %i.hu
  %i.hx = ashr <16 x i32> %i.hw, splat (i32 6)
  %i.hy = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hx, <16 x i32> zeroinitializer)
  %i.hz = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.hy, <16 x i32> splat (i32 255))
  %i.ia = trunc nuw <16 x i32> %i.hz to <16 x i8> ; 16 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %next.gep124, i64 2
  %i.ic = getelementptr i8, ptr %i.ci, i64 10
  %i.id = getelementptr i8, ptr %i.cj, i64 18
  %i.ie = getelementptr i8, ptr %i.ck, i64 26
  %i.if = getelementptr i8, ptr %i.cl, i64 34
  %i.ig = getelementptr i8, ptr %i.cm, i64 42
  %i.ih = getelementptr i8, ptr %i.cn, i64 50
  %i.ii = getelementptr i8, ptr %i.co, i64 58
  %i.ij = getelementptr i8, ptr %i.cp, i64 66
  %i.ik = getelementptr i8, ptr %i.cq, i64 74
  %i.il = getelementptr i8, ptr %i.cr, i64 82
  %i.im = getelementptr i8, ptr %i.cs, i64 90
  %i.in = getelementptr i8, ptr %i.ct, i64 98
  %i.io = getelementptr i8, ptr %i.cu, i64 106
  %i.ip = getelementptr i8, ptr %i.cv, i64 114
  %i.iq = getelementptr i8, ptr %i.cw, i64 122
  %i.ir = extractelement <16 x i8> %i.ia, i64 0
  store i8 %i.ir, ptr %i.ib, align 1, !alias.scope !317
  %i.is = extractelement <16 x i8> %i.ia, i64 1
  store i8 %i.is, ptr %i.ic, align 1, !alias.scope !317
  %i.it = extractelement <16 x i8> %i.ia, i64 2
  store i8 %i.it, ptr %i.id, align 1, !alias.scope !317
  %i.iu = extractelement <16 x i8> %i.ia, i64 3
  store i8 %i.iu, ptr %i.ie, align 1, !alias.scope !317
  %i.iv = extractelement <16 x i8> %i.ia, i64 4
  store i8 %i.iv, ptr %i.if, align 1, !alias.scope !317
  %i.iw = extractelement <16 x i8> %i.ia, i64 5
  store i8 %i.iw, ptr %i.ig, align 1, !alias.scope !317
  %i.ix = extractelement <16 x i8> %i.ia, i64 6
  store i8 %i.ix, ptr %i.ih, align 1, !alias.scope !317
  %i.iy = extractelement <16 x i8> %i.ia, i64 7
  store i8 %i.iy, ptr %i.ii, align 1, !alias.scope !317
  %i.iz = extractelement <16 x i8> %i.ia, i64 8
  store i8 %i.iz, ptr %i.ij, align 1, !alias.scope !317
  %i.ja = extractelement <16 x i8> %i.ia, i64 9
  store i8 %i.ja, ptr %i.ik, align 1, !alias.scope !317
  %i.jb = extractelement <16 x i8> %i.ia, i64 10
  store i8 %i.jb, ptr %i.il, align 1, !alias.scope !317
  %i.jc = extractelement <16 x i8> %i.ia, i64 11
  store i8 %i.jc, ptr %i.im, align 1, !alias.scope !317
  %i.jd = extractelement <16 x i8> %i.ia, i64 12
  store i8 %i.jd, ptr %i.in, align 1, !alias.scope !317
  %i.je = extractelement <16 x i8> %i.ia, i64 13
  store i8 %i.je, ptr %i.io, align 1, !alias.scope !317
  %i.jf = extractelement <16 x i8> %i.ia, i64 14
  store i8 %i.jf, ptr %i.ip, align 1, !alias.scope !317
  %i.jg = extractelement <16 x i8> %i.ia, i64 15
  store i8 %i.jg, ptr %i.iq, align 1, !alias.scope !317
  %i.jh = getelementptr inbounds nuw i8, ptr %next.gep124, i64 4
  %i.ji = getelementptr i8, ptr %i.ci, i64 12
  %i.jj = getelementptr i8, ptr %i.cj, i64 20
  %i.jk = getelementptr i8, ptr %i.ck, i64 28
  %i.jl = getelementptr i8, ptr %i.cl, i64 36
  %i.jm = getelementptr i8, ptr %i.cm, i64 44
  %i.jn = getelementptr i8, ptr %i.cn, i64 52
  %i.jo = getelementptr i8, ptr %i.co, i64 60
  %i.jp = getelementptr i8, ptr %i.cp, i64 68
  %i.jq = getelementptr i8, ptr %i.cq, i64 76
  %i.jr = getelementptr i8, ptr %i.cr, i64 84
  %i.js = getelementptr i8, ptr %i.cs, i64 92
  %i.jt = getelementptr i8, ptr %i.ct, i64 100
  %i.ju = getelementptr i8, ptr %i.cu, i64 108
  %i.jv = getelementptr i8, ptr %i.cv, i64 116
  %i.jw = getelementptr i8, ptr %i.cw, i64 124
  %i.jx = getelementptr inbounds nuw i8, ptr %next.gep108, i64 1
  %i.jy = getelementptr i8, ptr %i.bs, i64 3
  %i.jz = getelementptr i8, ptr %i.bt, i64 5
  %i.ka = getelementptr i8, ptr %i.bu, i64 7
  %i.kb = getelementptr i8, ptr %i.bv, i64 9
  %i.kc = getelementptr i8, ptr %i.bw, i64 11
  %i.kd = getelementptr i8, ptr %i.bx, i64 13
  %i.ke = getelementptr i8, ptr %i.by, i64 15
  %i.kf = getelementptr i8, ptr %i.bz, i64 17
  %i.kg = getelementptr i8, ptr %i.ca, i64 19
  %i.kh = getelementptr i8, ptr %i.cb, i64 21
  %i.ki = getelementptr i8, ptr %i.cc, i64 23
  %i.kj = getelementptr i8, ptr %i.cd, i64 25
  %i.kk = getelementptr i8, ptr %i.ce, i64 27
  %i.kl = getelementptr i8, ptr %i.cf, i64 29
  %i.km = getelementptr i8, ptr %i.cg, i64 31
  %i.kn = load i8, ptr %i.jx, align 1
  %i.ko = load i8, ptr %i.jy, align 1
  %i.kp = load i8, ptr %i.jz, align 1
  %i.kq = load i8, ptr %i.ka, align 1
  %i.kr = load i8, ptr %i.kb, align 1
  %i.ks = load i8, ptr %i.kc, align 1
  %i.kt = load i8, ptr %i.kd, align 1
  %i.ku = load i8, ptr %i.ke, align 1
  %i.kv = load i8, ptr %i.kf, align 1
  %i.kw = load i8, ptr %i.kg, align 1
  %i.kx = load i8, ptr %i.kh, align 1
  %i.ky = load i8, ptr %i.ki, align 1
  %i.kz = load i8, ptr %i.kj, align 1
  %i.la = load i8, ptr %i.kk, align 1
  %i.lb = load i8, ptr %i.kl, align 1
  %i.lc = load i8, ptr %i.km, align 1
  %i.ld = insertelement <16 x i8> poison, i8 %i.kn, i64 0
  %i.le = insertelement <16 x i8> %i.ld, i8 %i.ko, i64 1
  %i.lf = insertelement <16 x i8> %i.le, i8 %i.kp, i64 2
  %i.lg = insertelement <16 x i8> %i.lf, i8 %i.kq, i64 3
  %i.lh = insertelement <16 x i8> %i.lg, i8 %i.kr, i64 4
  %i.li = insertelement <16 x i8> %i.lh, i8 %i.ks, i64 5
  %i.lj = insertelement <16 x i8> %i.li, i8 %i.kt, i64 6
  %i.lk = insertelement <16 x i8> %i.lj, i8 %i.ku, i64 7
  %i.ll = insertelement <16 x i8> %i.lk, i8 %i.kv, i64 8
  %i.lm = insertelement <16 x i8> %i.ll, i8 %i.kw, i64 9
  %i.ln = insertelement <16 x i8> %i.lm, i8 %i.kx, i64 10
  %i.lo = insertelement <16 x i8> %i.ln, i8 %i.ky, i64 11
  %i.lp = insertelement <16 x i8> %i.lo, i8 %i.kz, i64 12
  %i.lq = insertelement <16 x i8> %i.lp, i8 %i.la, i64 13
  %i.lr = insertelement <16 x i8> %i.lq, i8 %i.lb, i64 14
  %i.ls = insertelement <16 x i8> %i.lr, i8 %i.lc, i64 15
  %i.lt = mul nuw nsw <16 x i16> %i.eg, splat (i16 9)
  %i.lu = add nuw nsw <16 x i16> %i.ek, %i.ef
  %i.lv = add nuw nsw <16 x i16> %i.lu, %i.lt
  %i.lw = add nuw nsw <16 x i16> %i.lv, %i.ei
  %i.lx = lshr <16 x i16> %i.lw, splat (i16 4)
  %i.ly = mul nuw nsw <16 x i16> %i.eq, splat (i16 9)
  %i.lz = add nuw nsw <16 x i16> %i.eu, %i.ep
  %i.ma = add nuw nsw <16 x i16> %i.lz, %i.ly
  %i.mb = add nuw nsw <16 x i16> %i.ma, %i.es
  %i.mc = lshr <16 x i16> %i.mb, splat (i16 4)
  %i.md = zext <16 x i8> %i.ls to <16 x i32>
  %i.me = mul nuw nsw <16 x i32> %i.md, splat (i32 19077)
  %i.mf = lshr <16 x i32> %i.me, splat (i32 8)    ; 3 uses
  %i.mg = zext nneg <16 x i16> %i.mc to <16 x i32> ; 2 uses
  %i.mh = mul nuw nsw <16 x i32> %i.mg, splat (i32 26149)
  %i.mi = lshr <16 x i32> %i.mh, splat (i32 8)
  %i.mj = add nsw <16 x i32> %i.mf, splat (i32 -14234)
  %i.mk = add nsw <16 x i32> %i.mj, %i.mi
  %i.ml = ashr <16 x i32> %i.mk, splat (i32 6)
  %i.mm = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ml, <16 x i32> zeroinitializer)
  %i.mn = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.mm, <16 x i32> splat (i32 255))
  %i.mo = trunc nuw <16 x i32> %i.mn to <16 x i8> ; 16 uses
  %i.mp = extractelement <16 x i8> %i.mo, i64 0
  store i8 %i.mp, ptr %i.jh, align 1, !alias.scope !318
  %i.mq = extractelement <16 x i8> %i.mo, i64 1
  store i8 %i.mq, ptr %i.ji, align 1, !alias.scope !318
  %i.mr = extractelement <16 x i8> %i.mo, i64 2
  store i8 %i.mr, ptr %i.jj, align 1, !alias.scope !318
  %i.ms = extractelement <16 x i8> %i.mo, i64 3
  store i8 %i.ms, ptr %i.jk, align 1, !alias.scope !318
  %i.mt = extractelement <16 x i8> %i.mo, i64 4
  store i8 %i.mt, ptr %i.jl, align 1, !alias.scope !318
  %i.mu = extractelement <16 x i8> %i.mo, i64 5
  store i8 %i.mu, ptr %i.jm, align 1, !alias.scope !318
  %i.mv = extractelement <16 x i8> %i.mo, i64 6
  store i8 %i.mv, ptr %i.jn, align 1, !alias.scope !318
  %i.mw = extractelement <16 x i8> %i.mo, i64 7
  store i8 %i.mw, ptr %i.jo, align 1, !alias.scope !318
  %i.mx = extractelement <16 x i8> %i.mo, i64 8
  store i8 %i.mx, ptr %i.jp, align 1, !alias.scope !318
  %i.my = extractelement <16 x i8> %i.mo, i64 9
  store i8 %i.my, ptr %i.jq, align 1, !alias.scope !318
  %i.mz = extractelement <16 x i8> %i.mo, i64 10
  store i8 %i.mz, ptr %i.jr, align 1, !alias.scope !318
  %i.na = extractelement <16 x i8> %i.mo, i64 11
  store i8 %i.na, ptr %i.js, align 1, !alias.scope !318
  %i.nb = extractelement <16 x i8> %i.mo, i64 12
  store i8 %i.nb, ptr %i.jt, align 1, !alias.scope !318
  %i.nc = extractelement <16 x i8> %i.mo, i64 13
  store i8 %i.nc, ptr %i.ju, align 1, !alias.scope !318
  %i.nd = extractelement <16 x i8> %i.mo, i64 14
  store i8 %i.nd, ptr %i.jv, align 1, !alias.scope !318
  %i.ne = extractelement <16 x i8> %i.mo, i64 15
  store i8 %i.ne, ptr %i.jw, align 1, !alias.scope !318
  %i.nf = zext nneg <16 x i16> %i.lx to <16 x i32> ; 2 uses
  %i.ng = mul nuw nsw <16 x i32> %i.nf, splat (i32 6419)
  %i.nh = lshr <16 x i32> %i.ng, splat (i32 8)
  %i.ni = mul nuw nsw <16 x i32> %i.mg, splat (i32 13320)
  %i.nj = lshr <16 x i32> %i.ni, splat (i32 8)
  %i.nk = add nuw nsw <16 x i32> %i.mf, splat (i32 8708)
  %i.nl = add nuw nsw <16 x i32> %i.nh, %i.nj
  %i.nm = sub nsw <16 x i32> %i.nk, %i.nl
  %i.nn = ashr <16 x i32> %i.nm, splat (i32 6)
  %i.no = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nn, <16 x i32> zeroinitializer)
  %i.np = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.no, <16 x i32> splat (i32 255))
  %i.nq = trunc nuw <16 x i32> %i.np to <16 x i8> ; 16 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %next.gep124, i64 5
  %i.ns = getelementptr i8, ptr %i.ci, i64 13
  %i.nt = getelementptr i8, ptr %i.cj, i64 21
  %i.nu = getelementptr i8, ptr %i.ck, i64 29
  %i.nv = getelementptr i8, ptr %i.cl, i64 37
  %i.nw = getelementptr i8, ptr %i.cm, i64 45
  %i.nx = getelementptr i8, ptr %i.cn, i64 53
  %i.ny = getelementptr i8, ptr %i.co, i64 61
  %i.nz = getelementptr i8, ptr %i.cp, i64 69
  %i.oa = getelementptr i8, ptr %i.cq, i64 77
  %i.ob = getelementptr i8, ptr %i.cr, i64 85
  %i.oc = getelementptr i8, ptr %i.cs, i64 93
  %i.od = getelementptr i8, ptr %i.ct, i64 101
  %i.oe = getelementptr i8, ptr %i.cu, i64 109
  %i.of = getelementptr i8, ptr %i.cv, i64 117
  %i.og = getelementptr i8, ptr %i.cw, i64 125
  %i.oh = extractelement <16 x i8> %i.nq, i64 0
  store i8 %i.oh, ptr %i.nr, align 1, !alias.scope !318
  %i.oi = extractelement <16 x i8> %i.nq, i64 1
  store i8 %i.oi, ptr %i.ns, align 1, !alias.scope !318
  %i.oj = extractelement <16 x i8> %i.nq, i64 2
  store i8 %i.oj, ptr %i.nt, align 1, !alias.scope !318
  %i.ok = extractelement <16 x i8> %i.nq, i64 3
  store i8 %i.ok, ptr %i.nu, align 1, !alias.scope !318
  %i.ol = extractelement <16 x i8> %i.nq, i64 4
  store i8 %i.ol, ptr %i.nv, align 1, !alias.scope !318
  %i.om = extractelement <16 x i8> %i.nq, i64 5
  store i8 %i.om, ptr %i.nw, align 1, !alias.scope !318
  %i.on = extractelement <16 x i8> %i.nq, i64 6
  store i8 %i.on, ptr %i.nx, align 1, !alias.scope !318
  %i.oo = extractelement <16 x i8> %i.nq, i64 7
  store i8 %i.oo, ptr %i.ny, align 1, !alias.scope !318
  %i.op = extractelement <16 x i8> %i.nq, i64 8
  store i8 %i.op, ptr %i.nz, align 1, !alias.scope !318
  %i.oq = extractelement <16 x i8> %i.nq, i64 9
  store i8 %i.oq, ptr %i.oa, align 1, !alias.scope !318
  %i.or = extractelement <16 x i8> %i.nq, i64 10
  store i8 %i.or, ptr %i.ob, align 1, !alias.scope !318
  %i.os = extractelement <16 x i8> %i.nq, i64 11
  store i8 %i.os, ptr %i.oc, align 1, !alias.scope !318
  %i.ot = extractelement <16 x i8> %i.nq, i64 12
  store i8 %i.ot, ptr %i.od, align 1, !alias.scope !318
  %i.ou = extractelement <16 x i8> %i.nq, i64 13
  store i8 %i.ou, ptr %i.oe, align 1, !alias.scope !318
  %i.ov = extractelement <16 x i8> %i.nq, i64 14
  store i8 %i.ov, ptr %i.of, align 1, !alias.scope !318
  %i.ow = extractelement <16 x i8> %i.nq, i64 15
  store i8 %i.ow, ptr %i.og, align 1, !alias.scope !318
  %i.ox = mul nuw nsw <16 x i32> %i.nf, splat (i32 33050)
  %i.oy = lshr <16 x i32> %i.ox, splat (i32 8)
  %i.oz = add nsw <16 x i32> %i.mf, splat (i32 -17685)
  %i.pa = add nsw <16 x i32> %i.oz, %i.oy
  %i.pb = ashr <16 x i32> %i.pa, splat (i32 6)
  %i.pc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pb, <16 x i32> zeroinitializer)
  %i.pd = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pc, <16 x i32> splat (i32 255))
  %i.pe = trunc nuw <16 x i32> %i.pd to <16 x i8> ; 16 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %next.gep124, i64 6
  %i.pg = getelementptr i8, ptr %i.ci, i64 14
  %i.ph = getelementptr i8, ptr %i.cj, i64 22
  %i.pi = getelementptr i8, ptr %i.ck, i64 30
  %i.pj = getelementptr i8, ptr %i.cl, i64 38
  %i.pk = getelementptr i8, ptr %i.cm, i64 46
  %i.pl = getelementptr i8, ptr %i.cn, i64 54
  %i.pm = getelementptr i8, ptr %i.co, i64 62
  %i.pn = getelementptr i8, ptr %i.cp, i64 70
  %i.po = getelementptr i8, ptr %i.cq, i64 78
  %i.pp = getelementptr i8, ptr %i.cr, i64 86
  %i.pq = getelementptr i8, ptr %i.cs, i64 94
  %i.pr = getelementptr i8, ptr %i.ct, i64 102
  %i.ps = getelementptr i8, ptr %i.cu, i64 110
  %i.pt = getelementptr i8, ptr %i.cv, i64 118
  %i.pu = getelementptr i8, ptr %i.cw, i64 126
  %i.pv = extractelement <16 x i8> %i.pe, i64 0
  store i8 %i.pv, ptr %i.pf, align 1, !alias.scope !318
  %i.pw = extractelement <16 x i8> %i.pe, i64 1
  store i8 %i.pw, ptr %i.pg, align 1, !alias.scope !318
  %i.px = extractelement <16 x i8> %i.pe, i64 2
  store i8 %i.px, ptr %i.ph, align 1, !alias.scope !318
  %i.py = extractelement <16 x i8> %i.pe, i64 3
  store i8 %i.py, ptr %i.pi, align 1, !alias.scope !318
  %i.pz = extractelement <16 x i8> %i.pe, i64 4
  store i8 %i.pz, ptr %i.pj, align 1, !alias.scope !318
  %i.qa = extractelement <16 x i8> %i.pe, i64 5
  store i8 %i.qa, ptr %i.pk, align 1, !alias.scope !318
  %i.qb = extractelement <16 x i8> %i.pe, i64 6
  store i8 %i.qb, ptr %i.pl, align 1, !alias.scope !318
  %i.qc = extractelement <16 x i8> %i.pe, i64 7
  store i8 %i.qc, ptr %i.pm, align 1, !alias.scope !318
  %i.qd = extractelement <16 x i8> %i.pe, i64 8
  store i8 %i.qd, ptr %i.pn, align 1, !alias.scope !318
  %i.qe = extractelement <16 x i8> %i.pe, i64 9
  store i8 %i.qe, ptr %i.po, align 1, !alias.scope !318
  %i.qf = extractelement <16 x i8> %i.pe, i64 10
  store i8 %i.qf, ptr %i.pp, align 1, !alias.scope !318
  %i.qg = extractelement <16 x i8> %i.pe, i64 11
  store i8 %i.qg, ptr %i.pq, align 1, !alias.scope !318
  %i.qh = extractelement <16 x i8> %i.pe, i64 12
  store i8 %i.qh, ptr %i.pr, align 1, !alias.scope !318
  %i.qi = extractelement <16 x i8> %i.pe, i64 13
  store i8 %i.qi, ptr %i.ps, align 1, !alias.scope !318
  %i.qj = extractelement <16 x i8> %i.pe, i64 14
  store i8 %i.qj, ptr %i.pt, align 1, !alias.scope !318
  %i.qk = extractelement <16 x i8> %i.pe, i64 15
  store i8 %i.qk, ptr %i.pu, align 1, !alias.scope !318
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ql = icmp eq i64 %index.next, %n.vec
  br i1 %i.ql, label %.lr.ph.preheader150, label %vector.body, !llvm.loop !312

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader150, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37
  %.sroa.19.098 = phi i64 [ %i.sg, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.19.098.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.16.097 = phi ptr [ %i.sh, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.16.097.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.10.096 = phi i64 [ %i.sf, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.10.096.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.754.095 = phi ptr [ %i.se, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.754.095.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.0.094 = phi ptr [ %i.sd, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.0.094.ph, %.lr.ph.preheader150 ] ; 3 uses
end_hunk_3
begin_hunk_4_@_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_:bb.a
bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not26 = icmp eq i64 %7, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !7
  %i.d = load i8, ptr %6, align 1, !noundef !7
  %i.e = zext i8 %i.c to i16
  %i.f = zext i8 %i.d to i16                      ; 2 uses
  %i.g = mul nuw nsw i16 %i.e, 12
  %i.h = mul nuw nsw i16 %i.f, 3
  %i.i = add nuw nsw i16 %i.g, 8
  %i.j = add nuw nsw i16 %i.i, %i.f
  %i.k = add nuw nsw i16 %i.j, %i.h
  %i.l = lshr i16 %i.k, 4
  %.not27 = icmp eq i64 %9, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not28 = icmp eq i64 %11, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = load i8, ptr %8, align 1, !noundef !7
  %i.n = load i8, ptr %10, align 1, !noundef !7
  %i.o = zext i8 %i.m to i16
  %i.p = zext i8 %i.n to i16                      ; 2 uses
  %i.q = mul nuw nsw i16 %i.o, 12
  %i.r = mul nuw nsw i16 %i.p, 3
  %i.s = add nuw nsw i16 %i.q, 8
  %i.t = add nuw nsw i16 %i.s, %i.p
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 4
  %i.w = zext i8 %i.b to i32
  %i.x = mul nuw nsw i32 %i.w, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = zext nneg i16 %i.v to i32                ; 2 uses
  %i.aa = mul nuw nsw i32 %i.z, 26149
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.y, -14234
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %0, align 1, !alias.scope !330
  %i.ah = zext nneg i16 %i.l to i32               ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.z, 13320
  %i.al = lshr i32 %i.ak, 8
  %.neg125 = add nuw nsw i32 %i.y, 8708
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = sub nsw i32 %.neg125, %i.am
  %i.ao = ashr i32 %i.an, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ao, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !alias.scope !330
  %i.as = mul nuw nsw i32 %i.ah, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nsw i32 %i.y, -17685
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = ashr i32 %i.av, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.aw, i32 0)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !alias.scope !330
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  %i.bb = add nsw i64 %1, -3                      ; 2 uses
  %i.bc = add nsw i64 %3, -1                      ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.be = urem i64 %i.bb, 6                       ; 3 uses
  %i.bf = sub nuw i64 %i.bb, %i.be                ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 3 uses
  %i.bh = and i64 %i.bc, 1
  %i.bi = and i64 %i.bc, -2                       ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  %.not.i.i.i.i.i.i.i.i.i.i.i141 = icmp samesign ult i64 %1, 9
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bk = sub i64 5, %i.bf
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 -6)
  %i.bm = add i64 %i.bl, %i.bf
  %i.bn = udiv i64 %i.bm, 6
  %i.bo = lshr i64 %i.bc, 1
  %i.bp = add nsw i64 %11, -1
  %i.bq = add nsw i64 %9, -1
  %i.br = add nsw i64 %7, -1
  %i.bs = add nsw i64 %5, -1
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bo)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bp)
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bq)
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.br)
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bs) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bx, 16
  br i1 %min.iters.check, label %.lr.ph.preheader203, label %vector.ph

.lr.ph.preheader203:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.37.0153.ph = phi i64 [ %11, %.lr.ph.preheader ], [ %i.cc, %vector.body ]
  %.sroa.34.0152.ph = phi ptr [ %10, %.lr.ph.preheader ], [ %i.cd, %vector.body ]
  %.sroa.28.0151.ph = phi i64 [ %9, %.lr.ph.preheader ], [ %i.ce, %vector.body ]
  %.sroa.25.0150.ph = phi ptr [ %8, %.lr.ph.preheader ], [ %i.cf, %vector.body ]
  %.sroa.19.0149.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.cg, %vector.body ]
  %.sroa.16.0148.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.ch, %vector.body ]
  %.sroa.10.0147.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.ci, %vector.body ]
  %.sroa.790.0146.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.cj, %vector.body ]
  %.sroa.0.0145.ph = phi ptr [ %i.bd, %.lr.ph.preheader ], [ %i.cl, %vector.body ]
  %.sroa.599.0144.ph = phi i64 [ %i.bi, %.lr.ph.preheader ], [ %i.cn, %vector.body ]
  %.sroa.6101.0143.ph = phi ptr [ %i.ba, %.lr.ph.preheader ], [ %i.cp, %vector.body ]
  %.sroa.9102.0142.ph = phi i64 [ %i.bf, %.lr.ph.preheader ], [ %i.cr, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.bz = and i64 %i.by, 15                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 16, i64 %i.bz
  %n.vec = sub i64 %i.by, %i.cb                   ; 13 uses
  %i.cc = sub i64 %11, %n.vec
  %i.cd = getelementptr i8, ptr %10, i64 %n.vec
  %i.ce = sub i64 %9, %n.vec
  %i.cf = getelementptr i8, ptr %8, i64 %n.vec
  %i.cg = sub i64 %7, %n.vec
  %i.ch = getelementptr i8, ptr %6, i64 %n.vec
  %i.ci = sub i64 %5, %n.vec
  %i.cj = getelementptr i8, ptr %4, i64 %n.vec
  %i.ck = shl i64 %n.vec, 1
  %i.cl = getelementptr i8, ptr %i.bd, i64 %i.ck
  %i.cm = shl i64 %n.vec, 1
  %i.cn = sub i64 %i.bi, %i.cm
  %i.co = mul i64 %n.vec, 6
  %i.cp = getelementptr i8, ptr %i.ba, i64 %i.co
  %i.cq = mul i64 %n.vec, -6
  %i.cr = add i64 %i.bf, %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %next.gep = getelementptr i8, ptr %10, i64 %index ; 2 uses
  %next.gep165 = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %next.gep166 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep167 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.cs = shl i64 %index, 1                       ; 16 uses
  %next.gep168 = getelementptr i8, ptr %i.bd, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.ct, i64 2
  %i.cu = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cu, i64 4
  %i.cv = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.cv, i64 6
  %i.cw = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.cw, i64 8
  %i.cx = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.cx, i64 10
  %i.cy = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.cy, i64 12
  %i.cz = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.cz, i64 14
  %i.da = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.da, i64 16
  %i.db = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.db, i64 18
  %i.dc = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.dc, i64 20
  %i.dd = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.dd, i64 22
  %i.de = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.de, i64 24
  %i.df = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.df, i64 26
  %i.dg = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.dg, i64 28
  %i.dh = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.dh, i64 30
  %i.di = mul i64 %index, 6
  %next.gep184 = getelementptr i8, ptr %i.ba, i64 %i.di
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep167, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep166, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %next.gep165, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.dn = load i8, ptr %next.gep168, align 1
  %i.do = load i8, ptr %next.gep169, align 1
  %i.dp = load i8, ptr %next.gep170, align 1
  %i.dq = load i8, ptr %next.gep171, align 1
  %i.dr = load i8, ptr %next.gep172, align 1
  %i.ds = load i8, ptr %next.gep173, align 1
  %i.dt = load i8, ptr %next.gep174, align 1
  %i.du = load i8, ptr %next.gep175, align 1
  %i.dv = load i8, ptr %next.gep176, align 1
  %i.dw = load i8, ptr %next.gep177, align 1
  %i.dx = load i8, ptr %next.gep178, align 1
  %i.dy = load i8, ptr %next.gep179, align 1
  %i.dz = load i8, ptr %next.gep180, align 1
  %i.ea = load i8, ptr %next.gep181, align 1
  %i.eb = load i8, ptr %next.gep182, align 1
  %i.ec = load i8, ptr %next.gep183, align 1
  %i.ed = insertelement <16 x i8> poison, i8 %i.dn, i64 0
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 1
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 2
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 3
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 4
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 5
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 6
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 7
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 8
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 9
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 10
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 11
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 12
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 13
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 14
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep167, align 1
  %wide.load185 = load <16 x i8>, ptr %i.dj, align 1
  %wide.load186 = load <16 x i8>, ptr %next.gep166, align 1
  %wide.load187 = load <16 x i8>, ptr %i.dk, align 1
  %i.et = zext <16 x i8> %wide.load to <16 x i16> ; 2 uses
  %i.eu = zext <16 x i8> %wide.load185 to <16 x i16> ; 2 uses
  %i.ev = zext <16 x i8> %wide.load186 to <16 x i16> ; 2 uses
  %i.ew = zext <16 x i8> %wide.load187 to <16 x i16> ; 2 uses
  %i.ex = mul nuw nsw <16 x i16> %i.et, splat (i16 9)
  %i.ey = add nuw nsw <16 x i16> %i.ev, %i.eu
  %i.ez = mul nuw nsw <16 x i16> %i.ey, splat (i16 3)
  %i.fa = add nuw nsw <16 x i16> %i.ex, splat (i16 8)
  %i.fb = add nuw nsw <16 x i16> %i.fa, %i.ew
  %i.fc = add nuw nsw <16 x i16> %i.fb, %i.ez
  %i.fd = lshr <16 x i16> %i.fc, splat (i16 4)
  %wide.load188 = load <16 x i8>, ptr %next.gep165, align 1
  %wide.load189 = load <16 x i8>, ptr %i.dl, align 1
  %wide.load190 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load191 = load <16 x i8>, ptr %i.dm, align 1
  %i.fe = zext <16 x i8> %wide.load188 to <16 x i16> ; 2 uses
  %i.ff = zext <16 x i8> %wide.load189 to <16 x i16> ; 2 uses
  %i.fg = zext <16 x i8> %wide.load190 to <16 x i16> ; 2 uses
  %i.fh = zext <16 x i8> %wide.load191 to <16 x i16> ; 2 uses
  %i.fi = mul nuw nsw <16 x i16> %i.fe, splat (i16 9)
  %i.fj = add nuw nsw <16 x i16> %i.fg, %i.ff
  %i.fk = mul nuw nsw <16 x i16> %i.fj, splat (i16 3)
  %i.fl = add nuw nsw <16 x i16> %i.fi, splat (i16 8)
  %i.fm = add nuw nsw <16 x i16> %i.fl, %i.fh
  %i.fn = add nuw nsw <16 x i16> %i.fm, %i.fk
  %i.fo = lshr <16 x i16> %i.fn, splat (i16 4)
  %i.fp = zext <16 x i8> %i.es to <16 x i32>
  %i.fq = mul nuw nsw <16 x i32> %i.fp, splat (i32 19077)
  %i.fr = lshr <16 x i32> %i.fq, splat (i32 8)    ; 3 uses
  %i.fs = zext nneg <16 x i16> %i.fo to <16 x i32> ; 2 uses
  %i.ft = mul nuw nsw <16 x i32> %i.fs, splat (i32 26149)
  %i.fu = lshr <16 x i32> %i.ft, splat (i32 8)
  %i.fv = add nsw <16 x i32> %i.fr, splat (i32 -14234)
  %i.fw = add nsw <16 x i32> %i.fv, %i.fu
  %i.fx = zext nneg <16 x i16> %i.fd to <16 x i32> ; 2 uses
  %i.fy = mul nuw nsw <16 x i32> %i.fx, splat (i32 6419)
  %i.fz = lshr <16 x i32> %i.fy, splat (i32 8)
  %i.ga = mul nuw nsw <16 x i32> %i.fs, splat (i32 13320)
  %i.gb = lshr <16 x i32> %i.ga, splat (i32 8)
  %i.gc = add nuw nsw <16 x i32> %i.fr, splat (i32 8708)
  %i.gd = add nuw nsw <16 x i32> %i.fz, %i.gb
  %i.ge = sub nsw <16 x i32> %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %next.gep168, i64 1
  %i.gg = getelementptr i8, ptr %i.ct, i64 3
  %i.gh = getelementptr i8, ptr %i.cu, i64 5
  %i.gi = getelementptr i8, ptr %i.cv, i64 7
  %i.gj = getelementptr i8, ptr %i.cw, i64 9
  %i.gk = getelementptr i8, ptr %i.cx, i64 11
  %i.gl = getelementptr i8, ptr %i.cy, i64 13
  %i.gm = getelementptr i8, ptr %i.cz, i64 15
  %i.gn = getelementptr i8, ptr %i.da, i64 17
  %i.go = getelementptr i8, ptr %i.db, i64 19
  %i.gp = getelementptr i8, ptr %i.dc, i64 21
  %i.gq = getelementptr i8, ptr %i.dd, i64 23
  %i.gr = getelementptr i8, ptr %i.de, i64 25
  %i.gs = getelementptr i8, ptr %i.df, i64 27
  %i.gt = getelementptr i8, ptr %i.dg, i64 29
  %i.gu = getelementptr i8, ptr %i.dh, i64 31
  %i.gv = load i8, ptr %i.gf, align 1
  %i.gw = load i8, ptr %i.gg, align 1
  %i.gx = load i8, ptr %i.gh, align 1
  %i.gy = load i8, ptr %i.gi, align 1
  %i.gz = load i8, ptr %i.gj, align 1
  %i.ha = load i8, ptr %i.gk, align 1
  %i.hb = load i8, ptr %i.gl, align 1
  %i.hc = load i8, ptr %i.gm, align 1
  %i.hd = load i8, ptr %i.gn, align 1
  %i.he = load i8, ptr %i.go, align 1
  %i.hf = load i8, ptr %i.gp, align 1
  %i.hg = load i8, ptr %i.gq, align 1
  %i.hh = load i8, ptr %i.gr, align 1
  %i.hi = load i8, ptr %i.gs, align 1
  %i.hj = load i8, ptr %i.gt, align 1
  %i.hk = load i8, ptr %i.gu, align 1
  %i.hl = insertelement <16 x i8> poison, i8 %i.gv, i64 0
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 1
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 2
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 3
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 4
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 5
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 6
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 7
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 8
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 9
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 10
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 11
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 12
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 13
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 14
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 15
  %i.ib = mul nuw nsw <16 x i16> %i.eu, splat (i16 9)
  %i.ic = add nuw nsw <16 x i16> %i.ew, %i.et
  %i.id = mul nuw nsw <16 x i16> %i.ic, splat (i16 3)
  %i.ie = add nuw nsw <16 x i16> %i.ib, splat (i16 8)
  %i.if = add nuw nsw <16 x i16> %i.ie, %i.ev
  %i.ig = add nuw nsw <16 x i16> %i.if, %i.id
  %i.ih = lshr <16 x i16> %i.ig, splat (i16 4)
  %i.ii = mul nuw nsw <16 x i16> %i.ff, splat (i16 9)
  %i.ij = add nuw nsw <16 x i16> %i.fh, %i.fe
  %i.ik = mul nuw nsw <16 x i16> %i.ij, splat (i16 3)
  %i.il = add nuw nsw <16 x i16> %i.ii, splat (i16 8)
  %i.im = add nuw nsw <16 x i16> %i.il, %i.fg
  %i.in = add nuw nsw <16 x i16> %i.im, %i.ik
  %i.io = lshr <16 x i16> %i.in, splat (i16 4)
  %i.ip = zext <16 x i8> %i.ia to <16 x i32>
  %i.iq = mul nuw nsw <16 x i32> %i.ip, splat (i32 19077)
  %i.ir = lshr <16 x i32> %i.iq, splat (i32 8)    ; 3 uses
  %i.is = zext nneg <16 x i16> %i.io to <16 x i32> ; 2 uses
  %i.it = zext nneg <16 x i16> %i.ih to <16 x i32> ; 2 uses
  %i.iu = mul nuw nsw <16 x i32> %i.it, splat (i32 6419)
  %i.iv = lshr <16 x i32> %i.iu, splat (i32 8)
  %i.iw = mul nuw nsw <16 x i32> %i.is, splat (i32 13320)
  %i.ix = lshr <16 x i32> %i.iw, splat (i32 8)
  %i.iy = add nuw nsw <16 x i32> %i.ir, splat (i32 8708)
  %i.iz = add nuw nsw <16 x i32> %i.iv, %i.ix
  %i.ja = sub nsw <16 x i32> %i.iy, %i.iz
  %i.jb = ashr <16 x i32> %i.ja, splat (i32 6)
  %i.jc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.jb, <16 x i32> zeroinitializer)
  %i.jd = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.jc, <16 x i32> splat (i32 255))
  %i.je = trunc nuw <16 x i32> %i.jd to <16 x i8>
  %i.jf = mul nuw nsw <16 x i32> %i.it, splat (i32 33050)
  %i.jg = lshr <16 x i32> %i.jf, splat (i32 8)
  %i.jh = add nsw <16 x i32> %i.jg, splat (i32 -17685)
  %i.ji = add nsw <16 x i32> %i.jh, %i.ir
  %i.jj = ashr <16 x i32> %i.ji, splat (i32 6)
  %i.jk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.jj, <16 x i32> zeroinitializer)
  %i.jl = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.jk, <16 x i32> splat (i32 255))
  %i.jm = trunc nuw <16 x i32> %i.jl to <16 x i8>
  %i.jn = shufflevector <16 x i32> %i.fw, <16 x i32> %i.ge, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jo = shufflevector <16 x i32> %i.fr, <16 x i32> %i.ir, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jp = add nsw <32 x i32> %i.jo, <i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234>
  %i.jq = shufflevector <16 x i32> %i.fx, <16 x i32> %i.is, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jr = mul nuw nsw <32 x i32> %i.jq, <i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149>
  %i.js = lshr <32 x i32> %i.jr, splat (i32 8)
  %i.jt = add nsw <32 x i32> %i.jp, %i.js
  %i.ju = shufflevector <32 x i32> %i.jn, <32 x i32> %i.jt, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.jv = ashr <64 x i32> %i.ju, splat (i32 6)
  %i.jw = tail call <64 x i32> @llvm.smax.v64i32(<64 x i32> %i.jv, <64 x i32> zeroinitializer)
  %i.jx = tail call <64 x i32> @llvm.umin.v64i32(<64 x i32> %i.jw, <64 x i32> splat (i32 255))
  %i.jy = trunc nuw <64 x i32> %i.jx to <64 x i8>
  %i.jz = shufflevector <16 x i8> %i.je, <16 x i8> %i.jm, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.jy, <64 x i8> %i.jz, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep184, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ka = icmp eq i64 %index.next, %n.vec
  br i1 %i.ka, label %.lr.ph.preheader203, label %vector.body, !llvm.loop !322

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader203, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit
  %.sroa.37.0153 = phi i64 [ %i.mx, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.37.0153.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.34.0152 = phi ptr [ %i.my, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.34.0152.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.28.0151 = phi i64 [ %i.mw, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.28.0151.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.25.0150 = phi ptr [ %i.mv, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.25.0150.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.19.0149 = phi i64 [ %i.mu, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.19.0149.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.16.0148 = phi ptr [ %i.mt, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.16.0148.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.10.0147 = phi i64 [ %i.kg, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.10.0147.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.790.0146 = phi ptr [ %i.kh, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.790.0146.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.0.0145 = phi ptr [ %i.kd, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.0.0145.ph, %.lr.ph.preheader203 ] ; 3 uses
  %.sroa.599.0144 = phi i64 [ %i.ke, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.599.0144.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.6101.0143 = phi ptr [ %i.kb, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.6101.0143.ph, %.lr.ph.preheader203 ] ; 7 uses
  %.sroa.9102.0142 = phi i64 [ %i.kc, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.9102.0142.ph, %.lr.ph.preheader203 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 6
  %i.kc = add i64 %.sroa.9102.0142, -6            ; 2 uses
  %.not.i.i15.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.599.0144, 0
  br i1 %.not.i.i15.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0145, i64 2
  %i.ke = add i64 %.sroa.599.0144, -2
  %i.kf = icmp ult i64 %.sroa.10.0147, 2
  br i1 %i.kf, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kg = add nsw i64 %.sroa.10.0147, -1
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.790.0146, i64 1
  %i.ki = icmp ult i64 %.sroa.19.0149, 2
  br i1 %i.ki, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kj = icmp ult i64 %.sroa.28.0151, 2
  %i.kk = icmp ult i64 %.sroa.37.0153, 2
  %or.cond = select i1 %i.kj, i1 true, i1 %i.kk
  br i1 %or.cond, label %._crit_edge, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit

._crit_edge:                                      ; preds = %.lr.ph, %bb.n, %bb.o, %bb.p, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, %bb.l
  %.not123 = icmp eq i64 %i.bh, 0
  br i1 %.not123, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.t, %._crit_edge
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.kl = icmp samesign ugt i64 %i.be, 2
  br i1 %i.kl, label %bb.t, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.km = getelementptr i8, ptr %8, i64 %9
  %i.kn = getelementptr i8, ptr %i.km, i64 -1
  %i.ko = load i8, ptr %i.kn, align 1, !noundef !7
  %i.kp = getelementptr i8, ptr %6, i64 %7
  %i.kq = getelementptr i8, ptr %i.kp, i64 -1
  %i.kr = load i8, ptr %i.kq, align 1, !noundef !7
  %i.ks = getelementptr i8, ptr %4, i64 %5
  %i.kt = getelementptr i8, ptr %i.ks, i64 -1
  %i.ku = load i8, ptr %i.kt, align 1, !noundef !7
  %i.kv = getelementptr i8, ptr %10, i64 %11
  %i.kw = getelementptr i8, ptr %i.kv, i64 -1
  %i.kx = load i8, ptr %i.kw, align 1, !noundef !7
  %i.ky = zext i8 %i.ku to i16
  %i.kz = zext i8 %i.kr to i16                    ; 2 uses
  %i.la = mul nuw nsw i16 %i.ky, 12
  %i.lb = mul nuw nsw i16 %i.kz, 3
  %i.lc = add nuw nsw i16 %i.kz, 8
  %i.ld = add nuw nsw i16 %i.lc, %i.lb
  %i.le = add nuw nsw i16 %i.ld, %i.la
  %i.lf = lshr i16 %i.le, 4
  %i.lg = zext i8 %i.ko to i16
  %i.lh = zext i8 %i.kx to i16                    ; 2 uses
  %i.li = mul nuw nsw i16 %i.lg, 12
  %i.lj = mul nuw nsw i16 %i.lh, 3
  %i.lk = add nuw nsw i16 %i.li, 8
  %i.ll = add nuw nsw i16 %i.lk, %i.lh
  %i.lm = add nuw nsw i16 %i.ll, %i.lj
  %i.ln = lshr i16 %i.lm, 4
  %i.lo = load i8, ptr %i.bj, align 1, !noundef !7
  %i.lp = zext i8 %i.lo to i32
  %i.lq = mul nuw nsw i32 %i.lp, 19077
  %i.lr = lshr i32 %i.lq, 8                       ; 3 uses
  %i.ls = zext nneg i16 %i.ln to i32              ; 2 uses
  %i.lt = mul nuw nsw i32 %i.ls, 26149
  %i.lu = lshr i32 %i.lt, 8
  %i.lv = add nsw i32 %i.lr, -14234
  %i.lw = add nsw i32 %i.lv, %i.lu
  %i.lx = ashr i32 %i.lw, 6
  %..i.i.i40 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.lx, i32 0)
  %i.ly = tail call i32 @llvm.umin.i32(i32 %..i.i.i40, i32 255)
  %i.lz = trunc nuw i32 %i.ly to i8
  store i8 %i.lz, ptr %i.bg, align 1, !alias.scope !331
  %i.ma = zext nneg i16 %i.lf to i32              ; 2 uses
  %i.mb = mul nuw nsw i32 %i.ma, 6419
  %i.mc = lshr i32 %i.mb, 8
  %i.md = mul nuw nsw i32 %i.ls, 13320
  %i.me = lshr i32 %i.md, 8
  %.neg140 = add nuw nsw i32 %i.lr, 8708
  %i.mf = add nuw nsw i32 %i.mc, %i.me
  %i.mg = sub nsw i32 %.neg140, %i.mf
  %i.mh = ashr i32 %i.mg, 6
  %..i.i2.i42 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.mh, i32 0)
  %i.mi = tail call i32 @llvm.umin.i32(i32 %..i.i2.i42, i32 255)
  %i.mj = trunc nuw i32 %i.mi to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.mj, ptr %i.mk, align 1, !alias.scope !331
  %i.ml = mul nuw nsw i32 %i.ma, 33050
  %i.mm = lshr i32 %i.ml, 8
  %i.mn = add nsw i32 %i.lr, -17685
  %i.mo = add nsw i32 %i.mn, %i.mm
  %i.mp = ashr i32 %i.mo, 6
  %..i.i3.i43 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.mp, i32 0)
  %i.mq = tail call i32 @llvm.umin.i32(i32 %..i.i3.i43, i32 255)
  %i.mr = trunc nuw i32 %i.mq to i8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.mr, ptr %i.ms, align 1, !alias.scope !331
  br label %bb.q

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit: ; preds = %bb.p
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.16.0148, i64 1
  %i.mu = add nsw i64 %.sroa.19.0149, -1
end_hunk_4
begin_hunk_5_@_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_:bb.a

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not28 = icmp eq i64 %11, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = load i8, ptr %8, align 1, !noundef !7
  %i.n = load i8, ptr %10, align 1, !noundef !7
  %i.o = zext i8 %i.m to i16
  %i.p = zext i8 %i.n to i16                      ; 2 uses
  %i.q = mul nuw nsw i16 %i.o, 12
  %i.r = mul nuw nsw i16 %i.p, 3
  %i.s = add nuw nsw i16 %i.q, 8
  %i.t = add nuw nsw i16 %i.s, %i.p
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 4
  %i.w = zext i8 %i.b to i32
  %i.x = mul nuw nsw i32 %i.w, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = zext nneg i16 %i.v to i32                ; 2 uses
  %i.aa = mul nuw nsw i32 %i.z, 26149
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.y, -14234
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %0, align 1, !alias.scope !344
  %i.ah = zext nneg i16 %i.l to i32               ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.z, 13320
  %i.al = lshr i32 %i.ak, 8
  %.neg125 = add nuw nsw i32 %i.y, 8708
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = sub nsw i32 %.neg125, %i.am
  %i.ao = ashr i32 %i.an, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ao, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !alias.scope !344
  %i.as = mul nuw nsw i32 %i.ah, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nsw i32 %i.y, -17685
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = ashr i32 %i.av, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.aw, i32 0)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !alias.scope !344
  %i.ba = icmp eq i64 %1, 3
  br i1 %i.ba, label %bb.n, label %bb.o, !prof !5

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #9
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #9
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  %i.bc = add nsw i64 %1, -4                      ; 2 uses
  %i.bd = add nsw i64 %3, -1                      ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.bf = and i64 %i.bc, 7                        ; 2 uses
  %i.bg = and i64 %i.bc, -8                       ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg ; 3 uses
  %i.bi = and i64 %i.bd, 1
  %i.bj = and i64 %i.bd, -2                       ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  %.not.i.i.i.i.i.i.i.i.i.i.i141 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bl = lshr i64 %i.bd, 1
  %i.bm = add nsw i64 %1, -12
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nsw i64 %11, -1
  %i.bp = add nsw i64 %9, -1
  %i.bq = add nsw i64 %7, -1
  %i.br = add nsw i64 %5, -1
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bn)
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bo)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bp)
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bq)
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.br) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bw, 16
  br i1 %min.iters.check, label %.lr.ph.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.by = and i64 %i.bx, 15                       ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 16, i64 %i.by
  %n.vec = sub i64 %i.bx, %i.ca                   ; 13 uses
  %i.cb = sub i64 %11, %n.vec
  %i.cc = getelementptr i8, ptr %10, i64 %n.vec
  %i.cd = sub i64 %9, %n.vec
  %i.ce = getelementptr i8, ptr %8, i64 %n.vec
  %i.cf = sub i64 %7, %n.vec
  %i.cg = getelementptr i8, ptr %6, i64 %n.vec
  %i.ch = sub i64 %5, %n.vec
  %i.ci = getelementptr i8, ptr %4, i64 %n.vec
  %i.cj = shl i64 %n.vec, 1
  %i.ck = getelementptr i8, ptr %i.be, i64 %i.cj
  %i.cl = shl i64 %n.vec, 1
  %i.cm = sub i64 %i.bj, %i.cl
  %i.cn = shl i64 %n.vec, 3
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cn
  %i.cp = shl i64 %n.vec, 3
  %i.cq = sub i64 %i.bg, %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %next.gep = getelementptr i8, ptr %10, i64 %index ; 2 uses
  %next.gep166 = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %next.gep167 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep168 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.cr = shl i64 %index, 1                       ; 16 uses
  %next.gep169 = getelementptr i8, ptr %i.be, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cs, i64 2
  %i.ct = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ct, i64 4
  %i.cu = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.cu, i64 6
  %i.cv = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.cv, i64 8
  %i.cw = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.cw, i64 10
  %i.cx = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.cx, i64 12
  %i.cy = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.cy, i64 14
  %i.cz = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.cz, i64 16
  %i.da = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.da, i64 18
  %i.db = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.db, i64 20
  %i.dc = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.dc, i64 22
  %i.dd = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.dd, i64 24
  %i.de = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.de, i64 26
  %i.df = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.df, i64 28
  %i.dg = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.dg, i64 30
  %i.dh = shl i64 %index, 3                       ; 16 uses
  %next.gep185 = getelementptr i8, ptr %i.bb, i64 %i.dh ; 6 uses
  %i.di = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep186 = getelementptr i8, ptr %i.di, i64 8
  %i.dj = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep187 = getelementptr i8, ptr %i.dj, i64 16
  %i.dk = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep188 = getelementptr i8, ptr %i.dk, i64 24
  %i.dl = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep189 = getelementptr i8, ptr %i.dl, i64 32
  %i.dm = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep190 = getelementptr i8, ptr %i.dm, i64 40
  %i.dn = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep191 = getelementptr i8, ptr %i.dn, i64 48
  %i.do = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep192 = getelementptr i8, ptr %i.do, i64 56
  %i.dp = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep193 = getelementptr i8, ptr %i.dp, i64 64
  %i.dq = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep194 = getelementptr i8, ptr %i.dq, i64 72
  %i.dr = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep195 = getelementptr i8, ptr %i.dr, i64 80
  %i.ds = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep196 = getelementptr i8, ptr %i.ds, i64 88
  %i.dt = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep197 = getelementptr i8, ptr %i.dt, i64 96
  %i.du = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep198 = getelementptr i8, ptr %i.du, i64 104
  %i.dv = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep199 = getelementptr i8, ptr %i.dv, i64 112
  %i.dw = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep200 = getelementptr i8, ptr %i.dw, i64 120
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep168, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep167, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep166, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.eb = load i8, ptr %next.gep169, align 1
  %i.ec = load i8, ptr %next.gep170, align 1
  %i.ed = load i8, ptr %next.gep171, align 1
  %i.ee = load i8, ptr %next.gep172, align 1
  %i.ef = load i8, ptr %next.gep173, align 1
  %i.eg = load i8, ptr %next.gep174, align 1
  %i.eh = load i8, ptr %next.gep175, align 1
  %i.ei = load i8, ptr %next.gep176, align 1
  %i.ej = load i8, ptr %next.gep177, align 1
  %i.ek = load i8, ptr %next.gep178, align 1
  %i.el = load i8, ptr %next.gep179, align 1
  %i.em = load i8, ptr %next.gep180, align 1
  %i.en = load i8, ptr %next.gep181, align 1
  %i.eo = load i8, ptr %next.gep182, align 1
  %i.ep = load i8, ptr %next.gep183, align 1
  %i.eq = load i8, ptr %next.gep184, align 1
  %i.er = insertelement <16 x i8> poison, i8 %i.eb, i64 0
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 1
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 2
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 3
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 4
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 5
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 6
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 7
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 8
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 9
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 10
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 11
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 12
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 13
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 14
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep168, align 1
  %wide.load201 = load <16 x i8>, ptr %i.dx, align 1
  %wide.load202 = load <16 x i8>, ptr %next.gep167, align 1
  %wide.load203 = load <16 x i8>, ptr %i.dy, align 1
  %i.fh = zext <16 x i8> %wide.load to <16 x i16> ; 2 uses
  %i.fi = zext <16 x i8> %wide.load201 to <16 x i16> ; 2 uses
  %i.fj = zext <16 x i8> %wide.load202 to <16 x i16> ; 2 uses
  %i.fk = zext <16 x i8> %wide.load203 to <16 x i16> ; 2 uses
  %i.fl = mul nuw nsw <16 x i16> %i.fh, splat (i16 9)
  %i.fm = add nuw nsw <16 x i16> %i.fj, %i.fi
  %i.fn = mul nuw nsw <16 x i16> %i.fm, splat (i16 3)
  %i.fo = add nuw nsw <16 x i16> %i.fl, splat (i16 8)
  %i.fp = add nuw nsw <16 x i16> %i.fo, %i.fk
  %i.fq = add nuw nsw <16 x i16> %i.fp, %i.fn
  %i.fr = lshr <16 x i16> %i.fq, splat (i16 4)
  %wide.load204 = load <16 x i8>, ptr %next.gep166, align 1
  %wide.load205 = load <16 x i8>, ptr %i.dz, align 1
  %wide.load206 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load207 = load <16 x i8>, ptr %i.ea, align 1
  %i.fs = zext <16 x i8> %wide.load204 to <16 x i16> ; 2 uses
  %i.ft = zext <16 x i8> %wide.load205 to <16 x i16> ; 2 uses
  %i.fu = zext <16 x i8> %wide.load206 to <16 x i16> ; 2 uses
  %i.fv = zext <16 x i8> %wide.load207 to <16 x i16> ; 2 uses
  %i.fw = mul nuw nsw <16 x i16> %i.fs, splat (i16 9)
  %i.fx = add nuw nsw <16 x i16> %i.fu, %i.ft
  %i.fy = mul nuw nsw <16 x i16> %i.fx, splat (i16 3)
  %i.fz = add nuw nsw <16 x i16> %i.fw, splat (i16 8)
  %i.ga = add nuw nsw <16 x i16> %i.fz, %i.fv
  %i.gb = add nuw nsw <16 x i16> %i.ga, %i.fy
  %i.gc = lshr <16 x i16> %i.gb, splat (i16 4)
  %i.gd = zext <16 x i8> %i.fg to <16 x i32>
  %i.ge = mul nuw nsw <16 x i32> %i.gd, splat (i32 19077)
  %i.gf = lshr <16 x i32> %i.ge, splat (i32 8)    ; 3 uses
  %i.gg = zext nneg <16 x i16> %i.gc to <16 x i32> ; 2 uses
  %i.gh = mul nuw nsw <16 x i32> %i.gg, splat (i32 26149)
  %i.gi = lshr <16 x i32> %i.gh, splat (i32 8)
  %i.gj = add nsw <16 x i32> %i.gf, splat (i32 -14234)
  %i.gk = add nsw <16 x i32> %i.gj, %i.gi
  %i.gl = ashr <16 x i32> %i.gk, splat (i32 6)
  %i.gm = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.gl, <16 x i32> zeroinitializer)
  %i.gn = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.gm, <16 x i32> splat (i32 255))
  %i.go = trunc nuw <16 x i32> %i.gn to <16 x i8> ; 16 uses
  %i.gp = extractelement <16 x i8> %i.go, i64 0
  store i8 %i.gp, ptr %next.gep185, align 1, !alias.scope !345
  %i.gq = extractelement <16 x i8> %i.go, i64 1
  store i8 %i.gq, ptr %next.gep186, align 1, !alias.scope !345
  %i.gr = extractelement <16 x i8> %i.go, i64 2
  store i8 %i.gr, ptr %next.gep187, align 1, !alias.scope !345
  %i.gs = extractelement <16 x i8> %i.go, i64 3
  store i8 %i.gs, ptr %next.gep188, align 1, !alias.scope !345
  %i.gt = extractelement <16 x i8> %i.go, i64 4
  store i8 %i.gt, ptr %next.gep189, align 1, !alias.scope !345
  %i.gu = extractelement <16 x i8> %i.go, i64 5
  store i8 %i.gu, ptr %next.gep190, align 1, !alias.scope !345
  %i.gv = extractelement <16 x i8> %i.go, i64 6
  store i8 %i.gv, ptr %next.gep191, align 1, !alias.scope !345
  %i.gw = extractelement <16 x i8> %i.go, i64 7
  store i8 %i.gw, ptr %next.gep192, align 1, !alias.scope !345
  %i.gx = extractelement <16 x i8> %i.go, i64 8
  store i8 %i.gx, ptr %next.gep193, align 1, !alias.scope !345
  %i.gy = extractelement <16 x i8> %i.go, i64 9
  store i8 %i.gy, ptr %next.gep194, align 1, !alias.scope !345
  %i.gz = extractelement <16 x i8> %i.go, i64 10
  store i8 %i.gz, ptr %next.gep195, align 1, !alias.scope !345
  %i.ha = extractelement <16 x i8> %i.go, i64 11
  store i8 %i.ha, ptr %next.gep196, align 1, !alias.scope !345
  %i.hb = extractelement <16 x i8> %i.go, i64 12
  store i8 %i.hb, ptr %next.gep197, align 1, !alias.scope !345
  %i.hc = extractelement <16 x i8> %i.go, i64 13
  store i8 %i.hc, ptr %next.gep198, align 1, !alias.scope !345
  %i.hd = extractelement <16 x i8> %i.go, i64 14
  store i8 %i.hd, ptr %next.gep199, align 1, !alias.scope !345
  %i.he = extractelement <16 x i8> %i.go, i64 15
  store i8 %i.he, ptr %next.gep200, align 1, !alias.scope !345
  %i.hf = zext nneg <16 x i16> %i.fr to <16 x i32> ; 2 uses
  %i.hg = mul nuw nsw <16 x i32> %i.hf, splat (i32 6419)
  %i.hh = lshr <16 x i32> %i.hg, splat (i32 8)
  %i.hi = mul nuw nsw <16 x i32> %i.gg, splat (i32 13320)
  %i.hj = lshr <16 x i32> %i.hi, splat (i32 8)
  %i.hk = add nuw nsw <16 x i32> %i.gf, splat (i32 8708)
  %i.hl = add nuw nsw <16 x i32> %i.hh, %i.hj
  %i.hm = sub nsw <16 x i32> %i.hk, %i.hl
  %i.hn = ashr <16 x i32> %i.hm, splat (i32 6)
  %i.ho = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hn, <16 x i32> zeroinitializer)
  %i.hp = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ho, <16 x i32> splat (i32 255))
  %i.hq = trunc nuw <16 x i32> %i.hp to <16 x i8> ; 16 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %next.gep185, i64 1
  %i.hs = getelementptr i8, ptr %i.di, i64 9
  %i.ht = getelementptr i8, ptr %i.dj, i64 17
  %i.hu = getelementptr i8, ptr %i.dk, i64 25
  %i.hv = getelementptr i8, ptr %i.dl, i64 33
  %i.hw = getelementptr i8, ptr %i.dm, i64 41
  %i.hx = getelementptr i8, ptr %i.dn, i64 49
  %i.hy = getelementptr i8, ptr %i.do, i64 57
  %i.hz = getelementptr i8, ptr %i.dp, i64 65
  %i.ia = getelementptr i8, ptr %i.dq, i64 73
  %i.ib = getelementptr i8, ptr %i.dr, i64 81
  %i.ic = getelementptr i8, ptr %i.ds, i64 89
  %i.id = getelementptr i8, ptr %i.dt, i64 97
  %i.ie = getelementptr i8, ptr %i.du, i64 105
  %i.if = getelementptr i8, ptr %i.dv, i64 113
  %i.ig = getelementptr i8, ptr %i.dw, i64 121
  %i.ih = extractelement <16 x i8> %i.hq, i64 0
  store i8 %i.ih, ptr %i.hr, align 1, !alias.scope !345
  %i.ii = extractelement <16 x i8> %i.hq, i64 1
  store i8 %i.ii, ptr %i.hs, align 1, !alias.scope !345
  %i.ij = extractelement <16 x i8> %i.hq, i64 2
  store i8 %i.ij, ptr %i.ht, align 1, !alias.scope !345
  %i.ik = extractelement <16 x i8> %i.hq, i64 3
  store i8 %i.ik, ptr %i.hu, align 1, !alias.scope !345
  %i.il = extractelement <16 x i8> %i.hq, i64 4
  store i8 %i.il, ptr %i.hv, align 1, !alias.scope !345
  %i.im = extractelement <16 x i8> %i.hq, i64 5
  store i8 %i.im, ptr %i.hw, align 1, !alias.scope !345
  %i.in = extractelement <16 x i8> %i.hq, i64 6
  store i8 %i.in, ptr %i.hx, align 1, !alias.scope !345
  %i.io = extractelement <16 x i8> %i.hq, i64 7
  store i8 %i.io, ptr %i.hy, align 1, !alias.scope !345
  %i.ip = extractelement <16 x i8> %i.hq, i64 8
  store i8 %i.ip, ptr %i.hz, align 1, !alias.scope !345
  %i.iq = extractelement <16 x i8> %i.hq, i64 9
  store i8 %i.iq, ptr %i.ia, align 1, !alias.scope !345
  %i.ir = extractelement <16 x i8> %i.hq, i64 10
  store i8 %i.ir, ptr %i.ib, align 1, !alias.scope !345
  %i.is = extractelement <16 x i8> %i.hq, i64 11
  store i8 %i.is, ptr %i.ic, align 1, !alias.scope !345
  %i.it = extractelement <16 x i8> %i.hq, i64 12
  store i8 %i.it, ptr %i.id, align 1, !alias.scope !345
  %i.iu = extractelement <16 x i8> %i.hq, i64 13
  store i8 %i.iu, ptr %i.ie, align 1, !alias.scope !345
  %i.iv = extractelement <16 x i8> %i.hq, i64 14
  store i8 %i.iv, ptr %i.if, align 1, !alias.scope !345
  %i.iw = extractelement <16 x i8> %i.hq, i64 15
  store i8 %i.iw, ptr %i.ig, align 1, !alias.scope !345
  %i.ix = mul nuw nsw <16 x i32> %i.hf, splat (i32 33050)
  %i.iy = lshr <16 x i32> %i.ix, splat (i32 8)
  %i.iz = add nsw <16 x i32> %i.gf, splat (i32 -17685)
  %i.ja = add nsw <16 x i32> %i.iz, %i.iy
  %i.jb = ashr <16 x i32> %i.ja, splat (i32 6)
  %i.jc = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.jb, <16 x i32> zeroinitializer)
  %i.jd = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.jc, <16 x i32> splat (i32 255))
  %i.je = trunc nuw <16 x i32> %i.jd to <16 x i8> ; 16 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %next.gep185, i64 2
  %i.jg = getelementptr i8, ptr %i.di, i64 10
  %i.jh = getelementptr i8, ptr %i.dj, i64 18
  %i.ji = getelementptr i8, ptr %i.dk, i64 26
  %i.jj = getelementptr i8, ptr %i.dl, i64 34
  %i.jk = getelementptr i8, ptr %i.dm, i64 42
  %i.jl = getelementptr i8, ptr %i.dn, i64 50
  %i.jm = getelementptr i8, ptr %i.do, i64 58
  %i.jn = getelementptr i8, ptr %i.dp, i64 66
  %i.jo = getelementptr i8, ptr %i.dq, i64 74
  %i.jp = getelementptr i8, ptr %i.dr, i64 82
  %i.jq = getelementptr i8, ptr %i.ds, i64 90
  %i.jr = getelementptr i8, ptr %i.dt, i64 98
  %i.js = getelementptr i8, ptr %i.du, i64 106
  %i.jt = getelementptr i8, ptr %i.dv, i64 114
  %i.ju = getelementptr i8, ptr %i.dw, i64 122
  %i.jv = extractelement <16 x i8> %i.je, i64 0
  store i8 %i.jv, ptr %i.jf, align 1, !alias.scope !345
  %i.jw = extractelement <16 x i8> %i.je, i64 1
  store i8 %i.jw, ptr %i.jg, align 1, !alias.scope !345
  %i.jx = extractelement <16 x i8> %i.je, i64 2
  store i8 %i.jx, ptr %i.jh, align 1, !alias.scope !345
  %i.jy = extractelement <16 x i8> %i.je, i64 3
  store i8 %i.jy, ptr %i.ji, align 1, !alias.scope !345
  %i.jz = extractelement <16 x i8> %i.je, i64 4
  store i8 %i.jz, ptr %i.jj, align 1, !alias.scope !345
  %i.ka = extractelement <16 x i8> %i.je, i64 5
  store i8 %i.ka, ptr %i.jk, align 1, !alias.scope !345
  %i.kb = extractelement <16 x i8> %i.je, i64 6
  store i8 %i.kb, ptr %i.jl, align 1, !alias.scope !345
  %i.kc = extractelement <16 x i8> %i.je, i64 7
  store i8 %i.kc, ptr %i.jm, align 1, !alias.scope !345
  %i.kd = extractelement <16 x i8> %i.je, i64 8
  store i8 %i.kd, ptr %i.jn, align 1, !alias.scope !345
  %i.ke = extractelement <16 x i8> %i.je, i64 9
  store i8 %i.ke, ptr %i.jo, align 1, !alias.scope !345
  %i.kf = extractelement <16 x i8> %i.je, i64 10
  store i8 %i.kf, ptr %i.jp, align 1, !alias.scope !345
  %i.kg = extractelement <16 x i8> %i.je, i64 11
  store i8 %i.kg, ptr %i.jq, align 1, !alias.scope !345
  %i.kh = extractelement <16 x i8> %i.je, i64 12
  store i8 %i.kh, ptr %i.jr, align 1, !alias.scope !345
  %i.ki = extractelement <16 x i8> %i.je, i64 13
  store i8 %i.ki, ptr %i.js, align 1, !alias.scope !345
  %i.kj = extractelement <16 x i8> %i.je, i64 14
  store i8 %i.kj, ptr %i.jt, align 1, !alias.scope !345
  %i.kk = extractelement <16 x i8> %i.je, i64 15
  store i8 %i.kk, ptr %i.ju, align 1, !alias.scope !345
  %i.kl = getelementptr inbounds nuw i8, ptr %next.gep185, i64 4
  %i.km = getelementptr i8, ptr %i.di, i64 12
  %i.kn = getelementptr i8, ptr %i.dj, i64 20
  %i.ko = getelementptr i8, ptr %i.dk, i64 28
  %i.kp = getelementptr i8, ptr %i.dl, i64 36
  %i.kq = getelementptr i8, ptr %i.dm, i64 44
  %i.kr = getelementptr i8, ptr %i.dn, i64 52
  %i.ks = getelementptr i8, ptr %i.do, i64 60
  %i.kt = getelementptr i8, ptr %i.dp, i64 68
  %i.ku = getelementptr i8, ptr %i.dq, i64 76
  %i.kv = getelementptr i8, ptr %i.dr, i64 84
  %i.kw = getelementptr i8, ptr %i.ds, i64 92
  %i.kx = getelementptr i8, ptr %i.dt, i64 100
  %i.ky = getelementptr i8, ptr %i.du, i64 108
  %i.kz = getelementptr i8, ptr %i.dv, i64 116
  %i.la = getelementptr i8, ptr %i.dw, i64 124
  %i.lb = getelementptr inbounds nuw i8, ptr %next.gep169, i64 1
  %i.lc = getelementptr i8, ptr %i.cs, i64 3
  %i.ld = getelementptr i8, ptr %i.ct, i64 5
  %i.le = getelementptr i8, ptr %i.cu, i64 7
  %i.lf = getelementptr i8, ptr %i.cv, i64 9
  %i.lg = getelementptr i8, ptr %i.cw, i64 11
  %i.lh = getelementptr i8, ptr %i.cx, i64 13
  %i.li = getelementptr i8, ptr %i.cy, i64 15
  %i.lj = getelementptr i8, ptr %i.cz, i64 17
  %i.lk = getelementptr i8, ptr %i.da, i64 19
  %i.ll = getelementptr i8, ptr %i.db, i64 21
  %i.lm = getelementptr i8, ptr %i.dc, i64 23
  %i.ln = getelementptr i8, ptr %i.dd, i64 25
  %i.lo = getelementptr i8, ptr %i.de, i64 27
  %i.lp = getelementptr i8, ptr %i.df, i64 29
  %i.lq = getelementptr i8, ptr %i.dg, i64 31
  %i.lr = load i8, ptr %i.lb, align 1
  %i.ls = load i8, ptr %i.lc, align 1
  %i.lt = load i8, ptr %i.ld, align 1
  %i.lu = load i8, ptr %i.le, align 1
  %i.lv = load i8, ptr %i.lf, align 1
  %i.lw = load i8, ptr %i.lg, align 1
  %i.lx = load i8, ptr %i.lh, align 1
  %i.ly = load i8, ptr %i.li, align 1
  %i.lz = load i8, ptr %i.lj, align 1
  %i.ma = load i8, ptr %i.lk, align 1
  %i.mb = load i8, ptr %i.ll, align 1
  %i.mc = load i8, ptr %i.lm, align 1
  %i.md = load i8, ptr %i.ln, align 1
  %i.me = load i8, ptr %i.lo, align 1
  %i.mf = load i8, ptr %i.lp, align 1
  %i.mg = load i8, ptr %i.lq, align 1
  %i.mh = insertelement <16 x i8> poison, i8 %i.lr, i64 0
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 1
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 2
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 3
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 4
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 5
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 6
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 7
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 8
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 9
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 10
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 11
  %i.mt = insertelement <16 x i8> %i.ms, i8 %i.md, i64 12
  %i.mu = insertelement <16 x i8> %i.mt, i8 %i.me, i64 13
  %i.mv = insertelement <16 x i8> %i.mu, i8 %i.mf, i64 14
  %i.mw = insertelement <16 x i8> %i.mv, i8 %i.mg, i64 15
  %i.mx = mul nuw nsw <16 x i16> %i.fi, splat (i16 9)
  %i.my = add nuw nsw <16 x i16> %i.fk, %i.fh
  %i.mz = mul nuw nsw <16 x i16> %i.my, splat (i16 3)
  %i.na = add nuw nsw <16 x i16> %i.mx, splat (i16 8)
  %i.nb = add nuw nsw <16 x i16> %i.na, %i.fj
  %i.nc = add nuw nsw <16 x i16> %i.nb, %i.mz
  %i.nd = lshr <16 x i16> %i.nc, splat (i16 4)
  %i.ne = mul nuw nsw <16 x i16> %i.ft, splat (i16 9)
  %i.nf = add nuw nsw <16 x i16> %i.fv, %i.fs
  %i.ng = mul nuw nsw <16 x i16> %i.nf, splat (i16 3)
  %i.nh = add nuw nsw <16 x i16> %i.ne, splat (i16 8)
  %i.ni = add nuw nsw <16 x i16> %i.nh, %i.fu
  %i.nj = add nuw nsw <16 x i16> %i.ni, %i.ng
  %i.nk = lshr <16 x i16> %i.nj, splat (i16 4)
  %i.nl = zext <16 x i8> %i.mw to <16 x i32>
  %i.nm = mul nuw nsw <16 x i32> %i.nl, splat (i32 19077)
  %i.nn = lshr <16 x i32> %i.nm, splat (i32 8)    ; 3 uses
  %i.no = zext nneg <16 x i16> %i.nk to <16 x i32> ; 2 uses
  %i.np = mul nuw nsw <16 x i32> %i.no, splat (i32 26149)
  %i.nq = lshr <16 x i32> %i.np, splat (i32 8)
  %i.nr = add nsw <16 x i32> %i.nn, splat (i32 -14234)
  %i.ns = add nsw <16 x i32> %i.nr, %i.nq
  %i.nt = ashr <16 x i32> %i.ns, splat (i32 6)
  %i.nu = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nt, <16 x i32> zeroinitializer)
  %i.nv = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.nu, <16 x i32> splat (i32 255))
  %i.nw = trunc nuw <16 x i32> %i.nv to <16 x i8> ; 16 uses
  %i.nx = extractelement <16 x i8> %i.nw, i64 0
  store i8 %i.nx, ptr %i.kl, align 1, !alias.scope !346
  %i.ny = extractelement <16 x i8> %i.nw, i64 1
  store i8 %i.ny, ptr %i.km, align 1, !alias.scope !346
  %i.nz = extractelement <16 x i8> %i.nw, i64 2
  store i8 %i.nz, ptr %i.kn, align 1, !alias.scope !346
  %i.oa = extractelement <16 x i8> %i.nw, i64 3
  store i8 %i.oa, ptr %i.ko, align 1, !alias.scope !346
  %i.ob = extractelement <16 x i8> %i.nw, i64 4
  store i8 %i.ob, ptr %i.kp, align 1, !alias.scope !346
  %i.oc = extractelement <16 x i8> %i.nw, i64 5
  store i8 %i.oc, ptr %i.kq, align 1, !alias.scope !346
  %i.od = extractelement <16 x i8> %i.nw, i64 6
  store i8 %i.od, ptr %i.kr, align 1, !alias.scope !346
  %i.oe = extractelement <16 x i8> %i.nw, i64 7
  store i8 %i.oe, ptr %i.ks, align 1, !alias.scope !346
  %i.of = extractelement <16 x i8> %i.nw, i64 8
  store i8 %i.of, ptr %i.kt, align 1, !alias.scope !346
  %i.og = extractelement <16 x i8> %i.nw, i64 9
  store i8 %i.og, ptr %i.ku, align 1, !alias.scope !346
  %i.oh = extractelement <16 x i8> %i.nw, i64 10
  store i8 %i.oh, ptr %i.kv, align 1, !alias.scope !346
  %i.oi = extractelement <16 x i8> %i.nw, i64 11
  store i8 %i.oi, ptr %i.kw, align 1, !alias.scope !346
  %i.oj = extractelement <16 x i8> %i.nw, i64 12
  store i8 %i.oj, ptr %i.kx, align 1, !alias.scope !346
  %i.ok = extractelement <16 x i8> %i.nw, i64 13
  store i8 %i.ok, ptr %i.ky, align 1, !alias.scope !346
  %i.ol = extractelement <16 x i8> %i.nw, i64 14
  store i8 %i.ol, ptr %i.kz, align 1, !alias.scope !346
  %i.om = extractelement <16 x i8> %i.nw, i64 15
  store i8 %i.om, ptr %i.la, align 1, !alias.scope !346
  %i.on = zext nneg <16 x i16> %i.nd to <16 x i32> ; 2 uses
  %i.oo = mul nuw nsw <16 x i32> %i.on, splat (i32 6419)
  %i.op = lshr <16 x i32> %i.oo, splat (i32 8)
  %i.oq = mul nuw nsw <16 x i32> %i.no, splat (i32 13320)
  %i.or = lshr <16 x i32> %i.oq, splat (i32 8)
  %i.os = add nuw nsw <16 x i32> %i.nn, splat (i32 8708)
  %i.ot = add nuw nsw <16 x i32> %i.op, %i.or
  %i.ou = sub nsw <16 x i32> %i.os, %i.ot
  %i.ov = ashr <16 x i32> %i.ou, splat (i32 6)
  %i.ow = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ov, <16 x i32> zeroinitializer)
  %i.ox = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ow, <16 x i32> splat (i32 255))
  %i.oy = trunc nuw <16 x i32> %i.ox to <16 x i8> ; 16 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %next.gep185, i64 5
  %i.pa = getelementptr i8, ptr %i.di, i64 13
  %i.pb = getelementptr i8, ptr %i.dj, i64 21
  %i.pc = getelementptr i8, ptr %i.dk, i64 29
  %i.pd = getelementptr i8, ptr %i.dl, i64 37
  %i.pe = getelementptr i8, ptr %i.dm, i64 45
  %i.pf = getelementptr i8, ptr %i.dn, i64 53
  %i.pg = getelementptr i8, ptr %i.do, i64 61
  %i.ph = getelementptr i8, ptr %i.dp, i64 69
  %i.pi = getelementptr i8, ptr %i.dq, i64 77
  %i.pj = getelementptr i8, ptr %i.dr, i64 85
  %i.pk = getelementptr i8, ptr %i.ds, i64 93
  %i.pl = getelementptr i8, ptr %i.dt, i64 101
  %i.pm = getelementptr i8, ptr %i.du, i64 109
  %i.pn = getelementptr i8, ptr %i.dv, i64 117
  %i.po = getelementptr i8, ptr %i.dw, i64 125
  %i.pp = extractelement <16 x i8> %i.oy, i64 0
  store i8 %i.pp, ptr %i.oz, align 1, !alias.scope !346
  %i.pq = extractelement <16 x i8> %i.oy, i64 1
  store i8 %i.pq, ptr %i.pa, align 1, !alias.scope !346
  %i.pr = extractelement <16 x i8> %i.oy, i64 2
  store i8 %i.pr, ptr %i.pb, align 1, !alias.scope !346
  %i.ps = extractelement <16 x i8> %i.oy, i64 3
  store i8 %i.ps, ptr %i.pc, align 1, !alias.scope !346
  %i.pt = extractelement <16 x i8> %i.oy, i64 4
  store i8 %i.pt, ptr %i.pd, align 1, !alias.scope !346
  %i.pu = extractelement <16 x i8> %i.oy, i64 5
  store i8 %i.pu, ptr %i.pe, align 1, !alias.scope !346
  %i.pv = extractelement <16 x i8> %i.oy, i64 6
  store i8 %i.pv, ptr %i.pf, align 1, !alias.scope !346
  %i.pw = extractelement <16 x i8> %i.oy, i64 7
  store i8 %i.pw, ptr %i.pg, align 1, !alias.scope !346
  %i.px = extractelement <16 x i8> %i.oy, i64 8
  store i8 %i.px, ptr %i.ph, align 1, !alias.scope !346
  %i.py = extractelement <16 x i8> %i.oy, i64 9
  store i8 %i.py, ptr %i.pi, align 1, !alias.scope !346
  %i.pz = extractelement <16 x i8> %i.oy, i64 10
  store i8 %i.pz, ptr %i.pj, align 1, !alias.scope !346
  %i.qa = extractelement <16 x i8> %i.oy, i64 11
  store i8 %i.qa, ptr %i.pk, align 1, !alias.scope !346
  %i.qb = extractelement <16 x i8> %i.oy, i64 12
  store i8 %i.qb, ptr %i.pl, align 1, !alias.scope !346
  %i.qc = extractelement <16 x i8> %i.oy, i64 13
  store i8 %i.qc, ptr %i.pm, align 1, !alias.scope !346
  %i.qd = extractelement <16 x i8> %i.oy, i64 14
  store i8 %i.qd, ptr %i.pn, align 1, !alias.scope !346
  %i.qe = extractelement <16 x i8> %i.oy, i64 15
  store i8 %i.qe, ptr %i.po, align 1, !alias.scope !346
  %i.qf = mul nuw nsw <16 x i32> %i.on, splat (i32 33050)
  %i.qg = lshr <16 x i32> %i.qf, splat (i32 8)
  %i.qh = add nsw <16 x i32> %i.qg, splat (i32 -17685)
  %i.qi = add nsw <16 x i32> %i.qh, %i.nn
  %i.qj = ashr <16 x i32> %i.qi, splat (i32 6)
  %i.qk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.qj, <16 x i32> zeroinitializer)
  %i.ql = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.qk, <16 x i32> splat (i32 255))
  %i.qm = trunc nuw <16 x i32> %i.ql to <16 x i8> ; 16 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %next.gep185, i64 6
  %i.qo = getelementptr i8, ptr %i.di, i64 14
  %i.qp = getelementptr i8, ptr %i.dj, i64 22
  %i.qq = getelementptr i8, ptr %i.dk, i64 30
  %i.qr = getelementptr i8, ptr %i.dl, i64 38
  %i.qs = getelementptr i8, ptr %i.dm, i64 46
  %i.qt = getelementptr i8, ptr %i.dn, i64 54
  %i.qu = getelementptr i8, ptr %i.do, i64 62
  %i.qv = getelementptr i8, ptr %i.dp, i64 70
  %i.qw = getelementptr i8, ptr %i.dq, i64 78
  %i.qx = getelementptr i8, ptr %i.dr, i64 86
  %i.qy = getelementptr i8, ptr %i.ds, i64 94
  %i.qz = getelementptr i8, ptr %i.dt, i64 102
  %i.ra = getelementptr i8, ptr %i.du, i64 110
  %i.rb = getelementptr i8, ptr %i.dv, i64 118
  %i.rc = getelementptr i8, ptr %i.dw, i64 126
  %i.rd = extractelement <16 x i8> %i.qm, i64 0
  store i8 %i.rd, ptr %i.qn, align 1, !alias.scope !346
  %i.re = extractelement <16 x i8> %i.qm, i64 1
  store i8 %i.re, ptr %i.qo, align 1, !alias.scope !346
  %i.rf = extractelement <16 x i8> %i.qm, i64 2
  store i8 %i.rf, ptr %i.qp, align 1, !alias.scope !346
  %i.rg = extractelement <16 x i8> %i.qm, i64 3
  store i8 %i.rg, ptr %i.qq, align 1, !alias.scope !346
  %i.rh = extractelement <16 x i8> %i.qm, i64 4
  store i8 %i.rh, ptr %i.qr, align 1, !alias.scope !346
  %i.ri = extractelement <16 x i8> %i.qm, i64 5
  store i8 %i.ri, ptr %i.qs, align 1, !alias.scope !346
  %i.rj = extractelement <16 x i8> %i.qm, i64 6
  store i8 %i.rj, ptr %i.qt, align 1, !alias.scope !346
  %i.rk = extractelement <16 x i8> %i.qm, i64 7
  store i8 %i.rk, ptr %i.qu, align 1, !alias.scope !346
  %i.rl = extractelement <16 x i8> %i.qm, i64 8
  store i8 %i.rl, ptr %i.qv, align 1, !alias.scope !346
  %i.rm = extractelement <16 x i8> %i.qm, i64 9
  store i8 %i.rm, ptr %i.qw, align 1, !alias.scope !346
  %i.rn = extractelement <16 x i8> %i.qm, i64 10
  store i8 %i.rn, ptr %i.qx, align 1, !alias.scope !346
  %i.ro = extractelement <16 x i8> %i.qm, i64 11
  store i8 %i.ro, ptr %i.qy, align 1, !alias.scope !346
  %i.rp = extractelement <16 x i8> %i.qm, i64 12
  store i8 %i.rp, ptr %i.qz, align 1, !alias.scope !346
  %i.rq = extractelement <16 x i8> %i.qm, i64 13
  store i8 %i.rq, ptr %i.ra, align 1, !alias.scope !346
  %i.rr = extractelement <16 x i8> %i.qm, i64 14
  store i8 %i.rr, ptr %i.rb, align 1, !alias.scope !346
  %i.rs = extractelement <16 x i8> %i.qm, i64 15
  store i8 %i.rs, ptr %i.rc, align 1, !alias.scope !346
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rt = icmp eq i64 %index.next, %n.vec
  br i1 %i.rt, label %.lr.ph.preheader219, label %vector.body, !llvm.loop !340

.lr.ph.preheader219:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.37.0153.ph = phi i64 [ %11, %.lr.ph.preheader ], [ %i.cb, %vector.body ]
  %.sroa.34.0152.ph = phi ptr [ %10, %.lr.ph.preheader ], [ %i.cc, %vector.body ]
  %.sroa.28.0151.ph = phi i64 [ %9, %.lr.ph.preheader ], [ %i.cd, %vector.body ]
  %.sroa.25.0150.ph = phi ptr [ %8, %.lr.ph.preheader ], [ %i.ce, %vector.body ]
  %.sroa.19.0149.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.cf, %vector.body ]
end_hunk_5
