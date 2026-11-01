Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs1_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB6_6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter23IndexedParallelIterator13with_producerINtNvNtB1F_8plumbing6bridge8CallbackINtNtB1F_3map11MapConsumerINtNtB1F_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB46_14UnigramTrainer21prune_sentence_piecess0_0NCB41_s_0ENCB41_0EEEB4c_:bb.a
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !4, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load <2 x i64>, ptr %i.c, align 8
  store <2 x i64> %i.e, ptr %i.d, align 8
  call void @_RINvXNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtB7_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB24_14UnigramTrainer21prune_sentence_piecess0_0NCB1Z_s_0ENCB1Z_0EEINtB5_16ProducerCallbackRSTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEE8callbackINtNtNtB9_5slice6chunks14ChunksProducerB4t_EEB2a_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsgbNVBrIJ05E_5rayon4iter3mapINtB6_9MapFolderINtNtB8_4fold10FoldFolderINtNtB8_6reduce12ReduceFolderNCINvNvNtB8_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0INtNtB2O_6option6OptionjEEB3l_NCINvB1Q_8opt_foldjB2F_E0ENCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodings0EINtNtB8_8plumbing6FolderRNtNtNtB4n_9tokenizer8encoding8EncodingE12consume_iterINtNtNtB2O_5slice4iter4IterB5H_EEB4n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8 ; 2 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  store ptr %2, ptr %i.b, align 8, !alias.scope !1712, !noalias !1713
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !1712, !noalias !1713
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1712, !noalias !1713
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i8 0, ptr %i.f, align 8, !alias.scope !1714, !noalias !1710
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.g, align 8, !alias.scope !1714, !noalias !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1715
  store ptr %i.g, ptr %i.a, align 8, !noalias !1716
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.65.0.copyload, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !1716
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1716
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %.sroa.58.0..sroa_idx, ptr %i.h, align 8, !noalias !1715
  %i.i = icmp eq ptr %2, %3
  br i1 %i.i, label %_RINvXs3_NtNtCsgbNVBrIJ05E_5rayon4iter4foldINtB6_10FoldFolderINtNtB8_6reduce12ReduceFolderNCINvNvNtB8_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0INtNtB2s_6option6OptionjEEB2Z_NCINvB1u_8opt_foldjB2j_E0EINtNtB8_8plumbing6FolderjE12consume_iterINtNtNtNtB2s_4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingERNCNvNtNtB5D_5utils7padding13pad_encodings0EEB5D_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.sroa.0.016.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %.sroa.43.0.copyload, %bb.a ]
  %.sroa.7.015.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i ], [ %.sroa.54.0.copyload, %bb.a ]
  %i.j = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !1718, !noalias !1715, !nonnull !3, !align !4, !noundef !3
  %i.m = call noundef i64 @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodings0INtB6_5FnMutTRNtNtNtBV_9tokenizer8encoding8EncodingEE8call_mutBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.j), !noalias !1719
  %i.n = call { i64, i64 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter16ParallelIterator11reduce_with8opt_foldjRNvYjNtNtBa_3cmp3Ord3maxE0INtB6_5FnMutTINtNtBa_6option6OptionjEjEE8call_mutCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.48.0..sroa_idx.i.i.i, i64 noundef range(i64 0, 2) %.sroa.0.016.i.i.i.i.i, i64 %.sroa.7.015.i.i.i.i.i, i64 noundef %i.m), !noalias !1720 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %i.q = icmp eq ptr %i.k, %3
  br i1 %i.q, label %_RINvXs3_NtNtCsgbNVBrIJ05E_5rayon4iter4foldINtB6_10FoldFolderINtNtB8_6reduce12ReduceFolderNCINvNvNtB8_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0INtNtB2s_6option6OptionjEEB2Z_NCINvB1u_8opt_foldjB2j_E0EINtNtB8_8plumbing6FolderjE12consume_iterINtNtNtNtB2s_4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingERNCNvNtNtB5D_5utils7padding13pad_encodings0EEB5D_.exit, label %.lr.ph.i.i.i.i.i

_RINvXs3_NtNtCsgbNVBrIJ05E_5rayon4iter4foldINtB6_10FoldFolderINtNtB8_6reduce12ReduceFolderNCINvNvNtB8_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0INtNtB2s_6option6OptionjEEB2Z_NCINvB1u_8opt_foldjB2j_E0EINtNtB8_8plumbing6FolderjE12consume_iterINtNtNtNtB2s_4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingERNCNvNtNtB5D_5utils7padding13pad_encodings0EEB5D_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.sroa.7.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.43.0.copyload, %bb.a ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1710
  store i64 %.sroa.0.0.lcssa.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx, align 8
  store i64 %.sroa.7.0.lcssa.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs_NtNtCsgbNVBrIJ05E_5rayon4iter8for_eachINtB5_15ForEachConsumerNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB19_8Encoding3pad0EINtNtB7_8plumbing6FolderQB1W_E12consume_iterINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB1W_EEB1d_(ptr noalias noundef readonly returned align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !noalias !1723
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachRNCNvMBV_BT_3pad0EBZ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.c, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtBS_8Encoding3pad0INtB6_5FnMutTQB1F_EE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(256) %.sroa.0.03.i)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.c, %2
  br i1 %i.d, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachRNCNvMBV_BT_3pad0EBZ_.exit, label %.lr.ph.i

_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachRNCNvMBV_BT_3pad0EBZ_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs_NtNtCsgbNVBrIJ05E_5rayon4iter8for_eachINtB5_15ForEachConsumerNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodingss_0EINtNtB7_8plumbing6FolderQNtNtNtB1c_9tokenizer8encoding8EncodingE12consume_iterINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB2y_EEB1c_(ptr noalias noundef readonly returned align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !noalias !1726
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachRNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.c, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodingss_0INtB6_5FnMutTQNtNtNtBV_9tokenizer8encoding8EncodingEE8call_mutBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(256) %.sroa.0.03.i)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.c, %2
  br i1 %i.d, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachRNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_.exit, label %.lr.ph.i

_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachRNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter3map3MapINtNtB8_9enumerate9EnumerateINtNtBa_5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENCNvMs4_NtB1w_7trainerNtB2v_10BpeTrainer11count_pairs0ENtB8_16ParallelIterator6reduceNCB2p_s0_0NCB2p_s_0EB1A_(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter6reduce6reduceINtNtB4_3map3MapINtNtB4_9enumerate9EnumerateINtNtB6_5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENCNvMs4_NtB1O_7trainerNtB2N_10BpeTrainer11count_pairs0ENCB2H_s0_0NCB2H_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB3T_B4z_INtNtB3X_8hash_set8AHashSetjEEEEB1S_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter3map3MapINtNtNtBa_5slice6chunks6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer10run_e_steps_0ENtB8_16ParallelIterator6reduceNCB1S_s1_0NCB1S_s0_0EB23_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter6reduce6reduceINtNtB4_3map3MapINtNtNtB6_5slice6chunks6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2f_14UnigramTrainer10run_e_steps_0ENCB2a_s1_0NCB2a_s0_0TdmINtNtB1y_3vec3VecdEEEB2l_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter3map3MapINtNtNtBa_5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_pieces0ENtB8_16ParallelIterator6reduceNCB1W_s0_0NCB1W_s_0EB27_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter6reduce6reduceINtNtB4_3map3MapINtNtNtB6_5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer21prune_sentence_pieces0ENCB2e_s0_0NCB2e_s_0TdINtNtB1B_3vec3VecdEIB4j_IB4j_jEEEEB2p_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter9enumerate17EnumerateProducerINtNtBa_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB8_8plumbing8Producer9fold_withINtNtB8_3map9MapFolderINtNtB8_6reduce12ReduceFolderNCNvMs4_NtB1y_7trainerNtB3V_10BpeTrainer11count_pairss0_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB4K_B5q_INtNtB4O_8hash_set8AHashSetjEEEENCB3P_0EEB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %2, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1736, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1736, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1736, !noundef !3 ; 2 uses
  %i.k = add i64 %i.j, %i.g
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtB5_7ZipImplBW_B1o_E3newB1W_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h)
          to label %_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB7_8plumbing8Producer9into_iterB1H_.exit unwind label %bb.c

_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB7_8plumbing8Producer9into_iterB1H_.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1739
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1738, !nonnull !3, !align !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.c, i64 48, i1 false), !alias.scope !1741, !noalias !1742
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !1743, !noalias !1739
  call void @_RINvXs3_NtNtCsgbNVBrIJ05E_5rayon4iter6reduceINtB6_12ReduceFolderNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB18_10BpeTrainer11count_pairss0_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2y_B3e_INtNtB2C_8hash_set8AHashSetjEEEEINtNtB8_8plumbing6FolderB2w_E12consume_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4L_3zip3ZipINtNtNtB4P_3ops5range5RangejEINtNtNtB4P_5slice4iter4IterNtNtB1a_4word4WordEERNCB12_0EEB1e_(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !alias.scope !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter3map9MapFolderINtNtBG_6reduce12ReduceFolderNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer11count_pairss0_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB3m_B42_INtNtB3q_8hash_set8AHashSetjEEEENCB1Q_0EEB22_(ptr noalias noundef align 8 dereferenceable(144) %i.d) #29
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBa_4iter8plumbing8Producer9fold_withINtNtB1G_3map9MapFolderINtNtB1G_6reduce12ReduceFolderNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3g_14UnigramTrainer10run_e_steps1_0TdmINtNtB12_3vec3VecdEEENCB3b_s_0EEB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1753, !noundef !3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @68, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %1, align 8, !alias.scope !1753, !nonnull !3, !align !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1756
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1755, !nonnull !3, !align !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  store ptr %i.h, ptr %i.a, align 8, !alias.scope !1758, !noalias !1759
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = load <2 x i64>, ptr %i.g, align 8, !alias.scope !1753
  store <2 x i64> %3, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1758, !noalias !1759
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1760, !noalias !1756
  call void @_RINvXs3_NtNtCsgbNVBrIJ05E_5rayon4iter6reduceINtB6_12ReduceFolderNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB17_14UnigramTrainer10run_e_steps1_0TdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEEINtNtB8_8plumbing6FolderB2C_E12consume_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB45_5slice4iter6ChunksTNtNtB2K_6string6StringmEERNCB12_s_0EEB1d_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !alias.scope !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter3map9MapFolderINtNtBG_6reduce12ReduceFolderNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1V_14UnigramTrainer10run_e_steps1_0TdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCB1Q_s_0EEB21_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #29
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtBa_4iter8plumbing8Producer9fold_withINtNtB1K_3map9MapFolderINtNtB1K_6reduce12ReduceFolderNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3k_14UnigramTrainer21prune_sentence_piecess0_0TdINtNtB15_3vec3VecdEIB53_IB53_jEEEENCB3f_0EEB3q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1770, !noundef !3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @68, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %1, align 8, !alias.scope !1770, !nonnull !3, !align !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1773
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1772, !nonnull !3, !align !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  store ptr %i.h, ptr %i.a, align 8, !alias.scope !1775, !noalias !1776
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = load <2 x i64>, ptr %i.g, align 8, !alias.scope !1770
  store <2 x i64> %3, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1775, !noalias !1776
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1777, !noalias !1773
  call void @_RINvXs3_NtNtCsgbNVBrIJ05E_5rayon4iter6reduceINtB6_12ReduceFolderNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB17_14UnigramTrainer21prune_sentence_piecess0_0TdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB2Q_IB2Q_jEEEEINtNtB8_8plumbing6FolderB2N_E12consume_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4s_5slice4iter6ChunksTjRTNtNtB2U_6string6StringmEEERNCB12_0EEB1d_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !alias.scope !1776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter3map9MapFolderINtNtBG_6reduce12ReduceFolderNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1V_14UnigramTrainer21prune_sentence_piecess0_0TdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB3E_IB3E_jEEEENCB1Q_0EEB21_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter3map9MapFolderINtNtBG_6reduce12ReduceFolderNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1V_14UnigramTrainer21prune_sentence_piecess0_0TdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB3E_IB3E_jEEEENCB1Q_0EEB21_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !4, !noundef !3 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !13, !noundef !3
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #30
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !inline_history !1778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTciEcuNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB19_16NormalizedString15transform_rangeINtNtNtBa_3ops5range9RangeFromjEINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBU_EINtB4_3MapNtNtNtBa_3str4iter5CharsNCNvB15_6append0EEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB5X_6StringINtNtB55_7collect6ExtendcE6extendIB41_B3a_B10_EE0E0E0B1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 0, 1114112) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [96 x i8], align 8                ; 16 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 6 uses
  %i.t = alloca [16 x i8], align 16               ; 7 uses
  %i.u = alloca [64 x i8], align 8                ; 11 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 14 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [4 x i8], align 4                ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 %1, ptr %i.aa, align 4, !noalias !1807
  %i.ac = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1807 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 4
  br i1 %i.ae, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %i.ab, align 8, !alias.scope !1807
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1807
  %i.af = icmp samesign ult i32 %1, 128
  br i1 %i.af, label %bb.f, label %bb.d

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i, %._crit_edge.i
  %i.ag = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1807, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1807
  %i.ai = icmp sgt i64 %2, 0
  br i1 %i.ai, label %bb.t, label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.aj = icmp samesign ult i32 %1, 2048
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp samesign ult i32 %1, 65536
  %.160.i = select i1 %i.ak, i64 3, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sink.i = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ %.160.i, %bb.e ]
  store i64 %.sink.i, ptr %i.z, align 8, !noalias !1807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1807
  %i.al = icmp eq i64 %2, 0
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1807
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1807
  %i.am = load i64, ptr %i.i, align 8, !range !5, !noalias !1807, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !6, !noalias !1807, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j, !prof !7

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp sgt i64 %2, 0
  br i1 %i.ar, label %bb.l, label %.split.i

bb.i:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.aq, align 8, !noalias !1807
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.as) #30, !noalias !1807
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.aq, align 8, !noalias !1807, !nonnull !3, !noundef !3 ; 2 uses
  %i.au = icmp samesign ugt i64 %i.ap, 8
  tail call void @llvm.assume(i1 %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1807
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 1 dereferenceable(9) @10, i64 9, i1 false), !noalias !1807
  store i64 %i.ap, ptr %i.y, align 8, !noalias !1807
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1807
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 9, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1807
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.split.i, %bb.j
  %i.av = load ptr, ptr %i.ab, align 8, !alias.scope !1807, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1807
  store ptr %i.aa, ptr %i.u, align 8, !noalias !1807
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsj_NtCs4NRVxsYgnAr_4core3fmtcNtB5_5Debug3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1807
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.z, ptr %i.aw, align 8, !noalias !1807
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !1807
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.y, ptr %i.ax, align 8, !noalias !1807
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !1807
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.av, ptr %i.ay, align 8, !noalias !1807
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !1807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1808
  store i64 0, ptr %i.g, align 8, !noalias !1808
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @15, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 33, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @14, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 27, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 5, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @15, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 33, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1808
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !1808
end_hunk_0
