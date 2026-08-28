Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4t_14UnigramTrainer21prune_sentence_piecess0_0NCB4o_s_0ENCB4o_0EE0NCBR_s_0TdINtNtB2R_3vec3VecdEIB6E_IB6E_jEEEB6B_E0B4z_:bb.a

bb.af:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ca)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1288
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit: ; preds = %bb.ac, %bb.ab, %bb.y, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ai:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.cw = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cx = icmp eq i64 %i.cw, 3
  br i1 %i.cx, label %.loopexit105, label %bb.aj, !prof !109

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit105 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.q, %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.g) #33
          to label %.thread102 unwind label %bb.am

bb.al:                                            ; preds = %.loopexit105
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx66, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.670.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.3.0.copyload, ptr %i.cz, align 8
  %.sroa.4.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.468.0.copyload, ptr %.sroa.4.0..sroa_idx64, align 8
  %.sroa.5.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.569.0.copyload, ptr %.sroa.5.0..sroa_idx65, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ah

bb.am:                                            ; preds = %bb.ao, %.thread96, %bb.ak
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread96:                                        ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.w, %bb.ad, %bb.ae
  %.sroa.021.2.lpad-body = phi i1 [ false, %bb.w ], [ false, %bb.ae ], [ false, %bb.ad ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.w ], [ %i.co, %bb.ae ], [ %i.co, %bb.ad ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit106, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.j) #33
          to label %bb.b unwind label %bb.am

bb.an:                                            ; preds = %bb.j
  unreachable

bb.ao:                                            ; preds = %.thread, %bb.b
  %.pn.pn88 = phi { ptr, i32 } [ %i.s, %.thread ], [ %eh.lpad-body, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB2l_IB2l_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3h_5slice6chunks14ChunksProducerTjRTNtNtB2p_6string6StringmEEEINtNtB3f_3map11MapConsumerINtNtB3f_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6x_14UnigramTrainer21prune_sentence_piecess0_0NCB6s_s_0ENCB6s_0EEs_0E0B2i_EEB6D_(ptr noalias noundef align 8 dereferenceable(160) %i.k) #33
          to label %.thread102 unwind label %bb.am

.thread102:                                       ; preds = %bb.ak, %bb.b, %bb.ao
  %.pn.pn87 = phi { ptr, i32 } [ %eh.lpad-body, %bb.b ], [ %.pn.pn88, %bb.ao ], [ %i.cy, %bb.ak ]
  resume { ptr, i32 } %.pn.pn87
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1308, !noalias !1311, !align !28, !noundef !3 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1308, !noalias !1311
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !32, !noalias !1314, !noundef !3
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit, !prof !75

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #32, !noalias !1314
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #32, !noalias !1314
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !1314, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1314
  call void %i.f(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !noalias !1314, !inline_history !1315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1314
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumerINtB2_15CollectConsumerTTTmmElEjEE8appenderCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !512, !noundef !3
  %i.e = sub nsw i64 %i.d, %i.b
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !75

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs0_CskqoA5J4kFRc_10rayon_condINtB5_12CondIteratorINtNtNtCsgbNVBrIJ05E_5rayon4iter3map3MapINtNtBW_5slice4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1S_5utils7padding13pad_encodings0EINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB3B_5slice4iter4IterB1M_EB2L_EE3maxB1S_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1m_5utils7padding13pad_encodings0ENtNtNtB9_6traits8iterator8Iterator3maxB1m_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !1316, !noundef !3
  %i.j = tail call noundef i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1t_5utils7padding13pad_encodings0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvB33_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1t_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i64 noundef %.val.i.i.i.i)
  br label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1m_5utils7padding13pad_encodings0ENtNtNtB9_6traits8iterator8Iterator3maxB1m_.exit

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1m_5utils7padding13pad_encodings0ENtNtNtB9_6traits8iterator8Iterator3maxB1m_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i.i.i = phi i64 [ %i.j, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.3.0.i.i.i, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.e, align 8, !noundef !3
  %i.n = tail call { i64, i64 } @_RNvYINtNtNtCsgbNVBrIJ05E_5rayon4iter3map3MapINtNtB9_5slice4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB15_5utils7padding13pad_encodings0ENtB7_16ParallelIterator3maxB15_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1m_5utils7padding13pad_encodings0ENtNtNtB9_6traits8iterator8Iterator3maxB1m_.exit
  %.pn = phi { i64, i64 } [ %i.l, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1m_5utils7padding13pad_encodings0ENtNtNtB9_6traits8iterator8Iterator3maxB1m_.exit ], [ %i.n, %bb.d ]
  ret { i64, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [71 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !1319 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1319, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1319, !nonnull !3, !align !28, !noundef !3
  %i.g = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !1319 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !3, !noalias !1319, !nonnull !3
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull %i.d), !noalias !1319, !inline_history !67
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, i64 noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBQ_3vec3VecBM_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE24with_capacity_and_hasherCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.sroa.5.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 0, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5, i64 71, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %1, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE5clearB9_(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = cmpxchg weak ptr %0, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !1322
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %0), !noalias !1322
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1322
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE5writeCs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !109

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path(), !noalias !1322
  %i.j = xor i1 %i.i, true
  %i.k = zext i1 %i.j to i8
  br label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE5writeCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE5writeCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load atomic i8, ptr %i.l monotonic, align 8, !noalias !1322
  %i.n = icmp ne i8 %i.m, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2f_3vec3VecB2b_EEENCNvMse_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %i.n, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.o = load i64, ptr %i.b, align 8, !range !19, !alias.scope !1325, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2u_3vec3VecB2q_EEEINtBM_11PoisonErrorBH_EE6unwrapCs2JiOgHzbbc7_10tokenizers.exit, !prof !75

bb.e:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE5writeCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1325
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1325, !nonnull !3, !align !28, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !32, !alias.scope !1325, !noundef !3
  store ptr %i.r, ptr %i.a, align 8, !noalias !1325
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.t, ptr %i.u, align 8, !noalias !1325
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #32
          to label %bb.g unwind label %bb.f, !noalias !1325

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1325
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.ad, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2u_3vec3VecB2q_EEEINtBM_11PoisonErrorBH_EE6unwrapCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE5writeCs2JiOgHzbbc7_10tokenizers.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1325, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !32, !alias.scope !1325, !noundef !3
  store ptr %i.y, ptr %i.c, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBT_3vec3VecBP_EEE5clearCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2u_3vec3VecB2q_EEEINtBM_11PoisonErrorBH_EE6unwrapCs2JiOgHzbbc7_10tokenizers.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2u_3vec3VecB2q_EEEINtBM_11PoisonErrorBH_EE6unwrapCs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE6resizeB9_(ptr noalias noundef align 8 dereferenceable(88) initializes((80, 88)) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.e = load atomic i32, ptr %0 monotonic, align 8, !noalias !1328
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.i.i = phi i32 [ %i.e, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %i.f = and i32 %.sroa.06.0.i.i, 1073741823
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit6

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %.sroa.06.0.i.i, 1073741823
  %i.i = cmpxchg weak ptr %0, i32 %.sroa.06.0.i.i, i32 %i.h acquire monotonic, align 4, !noalias !1328 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0
  br i1 %i.j, label %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.b

_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1328
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1328
  %i.n = and i64 %i.m, 9223372036854775807
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !109

bb.d:                                             ; preds = %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.p = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path(), !noalias !1328
  %i.q = xor i1 %i.p, true
  %i.r = zext i1 %i.q to i8
  br label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.r, %bb.d ], [ 0, %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i ]
  %i.s = load atomic i8, ptr %i.l monotonic, align 8, !noalias !1328
  %i.t = icmp ne i8 %i.s, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2f_3vec3VecB2b_EEENCNvMse_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.t, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %0), !noalias !1328
  %i.u = load i64, ptr %i.a, align 8, !range !19, !noalias !1328, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1328, !nonnull !3, !align !28, !noundef !3 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !32, !noalias !1328, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1328
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.z, align 8, !alias.scope !1328
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i8 %i.y, ptr %i.aa, align 8, !alias.scope !1328
  store i64 %i.u, ptr %i.c, align 8, !alias.scope !1328
  %i.ab = trunc nuw i64 %i.u to i1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i5, label %bb.f

bb.e:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %i.c, align 8, !range !19
  %.pre10 = load i8, ptr %i.aa, align 8, !range !115
  %i.ac = trunc nuw i64 %.pre to i1
  %i.ad = icmp ne i8 %.pre10, 2
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit6

bb.f:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.w, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.y, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBU_3vec3VecBQ_EEE9shrink_toNCINvNtB8_3map11make_hasherBQ_B1r_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g, %bb.i
  %.pn = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.ai, %bb.g ]
  %i.aj = load i64, ptr %i.c, align 8, !range !19, !noundef !3
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = load i8, ptr %i.aa, align 8, !range !115
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word9merge_all:bb.a
  %i.cx = icmp ule i32 %.val6.i.i.i.i.i, %.val4.i.i.i.i.i
  %i.cy = icmp ule i64 %.val5.i.i.i.i.i, %.val.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.cy, i1 %i.cx
  %i.cz = zext i1 %.sroa.0.0.i.i.i.i.i.i.i to i64
  %i.da = add nuw nsw i64 %.sroa.05.09.i.i.i, %i.cz ; 3 uses
  %i.db = add nuw nsw i64 %.sroa.05.09.i.i.i, 2   ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.db ; 2 uses
  %i.dd = add nuw nsw i64 %.sroa.05.09.i.i.i, 3   ; 2 uses
  %i.de = icmp samesign ult i64 %i.dd, %i.aw
  call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.dd ; 2 uses
  %.val.i12.i.i.i.i = load i64, ptr %i.dc, align 8, !noalias !1384
  %i.dg = getelementptr i8, ptr %i.dc, i64 8
  %.val4.i13.i.i.i.i = load i32, ptr %i.dg, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.val5.i14.i.i.i.i = load i64, ptr %i.df, align 8, !noalias !1384
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  %.val6.i15.i.i.i.i = load i32, ptr %i.dh, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.not.i.i.i16.i.i.i.i = icmp eq i32 %.val4.i13.i.i.i.i, %.val6.i15.i.i.i.i
  %i.di = icmp ule i32 %.val6.i15.i.i.i.i, %.val4.i13.i.i.i.i
  %i.dj = icmp ule i64 %.val5.i14.i.i.i.i, %.val.i12.i.i.i.i
  %.sroa.0.0.i.i.i17.i.i.i.i = select i1 %.not.i.i.i16.i.i.i.i, i1 %i.dj, i1 %i.di
  %i.dk = zext i1 %.sroa.0.0.i.i.i17.i.i.i.i to i64
  %i.dl = add nuw nsw i64 %i.db, %i.dk            ; 3 uses
  %i.dm = icmp samesign ult i64 %i.da, %i.aw
  call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.da ; 2 uses
  %i.do = icmp samesign ult i64 %i.dl, %i.aw
  call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.dl ; 2 uses
  %.val.i21.i.i.i = load i64, ptr %i.dn, align 8, !noalias !1384
  %i.dq = getelementptr i8, ptr %i.dn, i64 8
  %.val5.i.i.i.i = load i32, ptr %i.dq, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.val6.i22.i.i.i = load i64, ptr %i.dp, align 8, !noalias !1384
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  %.val7.i23.i.i.i = load i32, ptr %i.dr, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.not.i.i.i24.i.i.i = icmp eq i32 %.val5.i.i.i.i, %.val7.i23.i.i.i
  %i.ds = icmp ule i32 %.val7.i23.i.i.i, %.val5.i.i.i.i
  %i.dt = icmp ule i64 %.val6.i22.i.i.i, %.val.i21.i.i.i
  %.sroa.0.0.i.i.i25.i.i.i = select i1 %.not.i.i.i24.i.i.i, i1 %i.dt, i1 %i.ds
  %spec.select.i26.i.i.i = select i1 %.sroa.0.0.i.i.i25.i.i.i, i64 %i.dl, i64 %i.da ; 4 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %spec.select.i26.i.i.i
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.14.08.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !noalias !1384
  %i.dw = shl nuw nsw i64 %spec.select.i26.i.i.i, 2 ; 2 uses
  %i.dx = or disjoint i64 %i.dw, 1                ; 2 uses
  %.not.not.i.i.i = icmp samesign ult i64 %i.dw, %i.be
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E19sift_down_to_bottomBQ_.exit.i.i: ; preds = %bb.n, %.lr.ph.i27.i.i.i, %bb.m
  %.sroa.1414.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.m ], [ %.sroa.1414.027.i.i.i.i, %.lr.ph.i27.i.i.i ], [ 0, %bb.n ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.1414.0.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.023.0.copyload.i.i.i.i, ptr %i.dy, align 8, !noalias !1384
  %.sroa.13.16..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store <2 x i32> %i.ci, ptr %.sroa.13.16..sroa_idx6.i.i.i.i, align 8, !noalias !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E19sift_down_to_bottomBQ_.exit.i.i
  %.sroa.698.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !1381 ; 9 uses
  %.sroa.698.sroa.7.0.copyload = load i32, ptr %.sroa.698.sroa.7.0..sroa_idx, align 4, !noalias !1381 ; 2 uses
  %i.dz = load <2 x i32>, ptr %.sroa.698.sroa.6.0..sroa_idx, align 8, !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1383
  br i1 %i.ap, label %bb.p, label %bb.w

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E3popBQ_.exit: ; preds = %.backedge, %bb.h
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0EBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ea = invoke noundef nonnull ptr @_RNvNtNtCseKCDlm5CXZl_4rand4rngs6thread3rng()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc:                                           ; preds = %bb.p
  store ptr %i.ea, ptr %i.b, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 336 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 16, !alias.scope !1387, !noalias !1390, !noundef !3 ; 2 uses
  %i.ee = icmp ugt i64 %i.ed, 63
  br i1 %i.ee, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.noexc
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  invoke void @_RNvXs2_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ef, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.eb)
          to label %._crit_edge.i unwind label %bb.r

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !1393
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.eh = load ptr, ptr %i.b, align 8, !alias.scope !1409, !nonnull !3, !noundef !3 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !1409, !noundef !3
  %i.ej = add i64 %i.ei, -1                       ; 2 uses
  store i64 %i.ej, ptr %i.eh, align 8, !noalias !1409
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.v

bb.t:                                             ; preds = %._crit_edge.i, %.noexc
  %i.el = phi ptr [ %i.ea, %.noexc ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.em = phi i64 [ %i.ed, %.noexc ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !alias.scope !1387, !noalias !1390, !noundef !3
  %i.ep = add nuw nsw i64 %i.em, 1
  store i64 %i.ep, ptr %i.ec, align 16, !alias.scope !1387, !noalias !1390
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.eq = load i64, ptr %i.el, align 8, !noalias !1393, !noundef !3
  %i.er = add i64 %i.eq, -1                       ; 2 uses
  store i64 %i.er, ptr %i.el, align 8, !noalias !1393
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %bb.s
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.w:                                             ; preds = %bb.o, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBM_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.x:                                             ; preds = %bb.t, %bb.u
  %i.eu = lshr i32 %i.eo, 8
  %i.ev = uitofp nneg i32 %i.eu to float
  %i.ew = fmul nnan float %i.ev, f0x33800000
  %i.ex = fcmp olt float %i.ew, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ex, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ey = load i64, ptr %i.ah, align 8, !alias.scope !1413, !noalias !1416, !noundef !3 ; 3 uses
  %i.ez = load i64, ptr %i.k, align 8, !range !512, !alias.scope !1413, !noalias !1416, !noundef !3
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.z, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit: ; preds = %bb.z, %bb.y
  %i.fb = load ptr, ptr %i.ag, align 8, !alias.scope !1413, !noalias !1416, !nonnull !3, !noundef !3
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.ey ; 2 uses
  store i64 %.sroa.698.sroa.0.0.copyload, ptr %i.fc, align 8
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store <2 x i32> %i.dz, ptr %.sroa.6101.0..sroa_idx, align 8
  %i.fd = add i64 %i.ey, 1
  store i64 %i.fd, ptr %i.ah, align 8, !alias.scope !1413, !noalias !1416
  br label %.backedge

bb.aa:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.fe = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1418, !noalias !1421, !noundef !3 ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 576460752303423488
  call void @llvm.assume(i1 %i.ff)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.j, i64 40, i1 false), !alias.scope !1424, !noalias !1418
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEINtB4_10SpecExtendBS_INtNtB6_5drain5DrainBS_EE11spec_extendB10_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.ac unwind label %bb.ab, !noalias !1421

bb.ab:                                            ; preds = %bb.aa
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1p_(ptr nonnull align 8 dereferenceable(24) %i.l, i64 %i.fe) #33, !noalias !1421
  br label %.body

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1423
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1p_(ptr nonnull align 8 dereferenceable(24) %i.l, i64 %i.fe), !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fh = icmp ult i64 %.sroa.698.sroa.0.0.copyload, %i.at
  br i1 %i.fh, label %bb.ad, label %.invoke

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %.sroa.698.sroa.0.0.copyload ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !3
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.backedge, label %bb.af

bb.ae:                                            ; preds = %bb.e
  unreachable

.backedge:                                        ; preds = %bb.bb, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread, %bb.ad, %bb.af
  %i.fm = phi i64 [ %i.at, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread ], [ %i.at, %bb.af ], [ %i.at, %bb.ad ], [ %i.at, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit ], [ %i.hm, %bb.bb ]
  %i.fn = phi ptr [ %i.au, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread ], [ %i.au, %bb.af ], [ %i.au, %bb.ad ], [ %i.au, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit ], [ %i.ho, %bb.bb ]
  %i.fo = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1428, !noalias !1379, !noundef !3 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E3popBQ_.exit, label %bb.i

bb.af:                                            ; preds = %bb.ad
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !noundef !3 ; 7 uses
  %i.fs = icmp eq i64 %i.fr, -1
  br i1 %i.fs, label %.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ft = icmp ult i64 %i.fr, %i.at
  br i1 %i.ft, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.fr ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load i32, ptr %i.fv, align 8, !noundef !3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !3 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !noundef !3
  store i32 %i.gc, ptr %i.i, align 4
  store i32 %i.fw, ptr %i.aq, align 4
  %i.gd = load ptr, ptr %i.m, align 8, !nonnull !3, !align !28, !noundef !3 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !1430, !noalias !1433, !noundef !3
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gi = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gh, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc36:                                         ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.gj = lshr i64 %i.gi, 57
  %i.gk = trunc nuw nsw i64 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !1441, !noalias !1442, !noundef !3 ; 2 uses
  %i.gn = load ptr, ptr %i.gd, align 8, !alias.scope !1441, !noalias !1442, !nonnull !3, !noundef !3 ; 2 uses
  %i.go = insertelement <16 x i8> poison, i8 %i.gk, i64 0
  %i.gp = shufflevector <16 x i8> %i.go, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.noexc36
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc36 ], [ %i.hg, %bb.al ]
  %.pn.i.i.i = phi i64 [ %i.gi, %.noexc36 ], [ %i.hh, %bb.al ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.gm   ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.gq, align 1, !noalias !1445 ; 2 uses
  %i.gr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.gp
  %i.gs = bitcast <16 x i1> %i.gr to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.gs, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.ak
  %.sroa.06.0.i33.i.i = phi i16 [ %i.hf, %bb.ak ], [ %i.gs, %bb.aj ] ; 3 uses
  %i.gt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.gu = zext nneg i16 %i.gt to i64
  %i.gv = add i64 %.sroa.01.0.i.i.i, %i.gu
  %i.gw = and i64 %i.gv, %i.gm
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [16 x i8], ptr %i.gn, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -16
  %i.ha = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.gz)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc37:                                         ; preds = %.lr.ph.i.i
  br i1 %i.ha, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ak, !prof !109

._crit_edge.i.i:                                  ; preds = %bb.ak, %bb.aj
  %i.hb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.hc = bitcast <16 x i1> %i.hb to i16
  %i.hd = icmp eq i16 %i.hc, 0
  br i1 %i.hd, label %bb.al, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread, !prof !75

bb.ak:                                            ; preds = %.noexc37
  %i.he = add i16 %.sroa.06.0.i33.i.i, -1
  %i.hf = and i16 %i.he, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.hf, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.hg = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.hh = add i64 %.sroa.01.0.i.i.i, %i.hg
  br label %bb.aj

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc37
  %i.hi = getelementptr inbounds i8, ptr %i.gy, i64 -4
  %i.hj = load i32, ptr %i.hi, align 4, !noundef !3
  %.not26 = icmp eq i32 %i.hj, %.sroa.698.sroa.7.0.copyload
  br i1 %.not26, label %bb.am, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %._crit_edge.i.i, %bb.ah, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.backedge

bb.am:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  store i32 %.sroa.698.sroa.7.0.copyload, ptr %i.gb, align 8
  %i.hk = load i64, ptr %i.fj, align 8, !noundef !3
  %i.hl = add i64 %i.hk, %i.ga
  store i64 %i.hl, ptr %i.fj, align 8
  store i64 %i.fy, ptr %i.fq, align 8
  %i.hm = load i64, ptr %i.n, align 8, !noundef !3 ; 11 uses
  %i.hn = icmp ult i64 %i.fr, %i.hm
  br i1 %i.hn, label %bb.an, label %.invoke

bb.an:                                            ; preds = %bb.am
  %i.ho = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3 ; 6 uses
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.fr
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 0, ptr %i.hq, align 8
  %i.hr = icmp sgt i64 %i.fy, -1
  br i1 %i.hr, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  %i.hs = icmp ult i64 %.sroa.698.sroa.0.0.copyload, %i.hm
  br i1 %i.hs, label %bb.ar, label %.invoke

bb.ap:                                            ; preds = %bb.an
  %i.ht = icmp ult i64 %i.hm, 288230376151711744
  call void @llvm.assume(i1 %i.ht)
  %i.hu = icmp samesign ult i64 %i.fy, %i.hm
  br i1 %i.hu, label %bb.aq, label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.fy
  store i64 %.sroa.698.sroa.0.0.copyload, ptr %i.hv, align 8
  br label %bb.ao

bb.ar:                                            ; preds = %bb.ao
  %i.hw = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %.sroa.698.sroa.0.0.copyload ; 4 uses
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !3 ; 5 uses
  %i.hy = icmp sgt i64 %i.hx, -1
  br i1 %i.hy, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53.thread, %bb.ar
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !noundef !3 ; 2 uses
  %i.ib = icmp ult i64 %i.hm, 288230376151711744
  call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp ult i64 %i.ia, %i.hm
  br i1 %i.ic, label %bb.bc, label %bb.bb

bb.at:                                            ; preds = %bb.ar
  %i.id = icmp ult i64 %i.hx, %i.hm
  br i1 %i.id, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.hx
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load i32, ptr %i.if, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.ii = load i32, ptr %i.ih, align 8, !noundef !3
  store i32 %i.ig, ptr %i.h, align 4
  store i32 %i.ii, ptr %i.ar, align 4
  %i.ij = load ptr, ptr %i.m, align 8, !nonnull !3, !align !28, !noundef !3 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !1448, !noalias !1451, !noundef !3
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.io = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.in, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %i.ip = lshr i64 %i.io, 57
  %i.iq = trunc nuw nsw i64 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !1459, !noalias !1460, !noundef !3 ; 2 uses
  %i.it = load ptr, ptr %i.ij, align 8, !alias.scope !1459, !noalias !1460, !nonnull !3, !noundef !3 ; 2 uses
  %i.iu = insertelement <16 x i8> poison, i8 %i.iq, i64 0
  %i.iv = shufflevector <16 x i8> %i.iu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.noexc51
  %.sroa.9.0.i.i.i38 = phi i64 [ 0, %.noexc51 ], [ %i.jm, %bb.ay ]
  %.pn.i.i.i39 = phi i64 [ %i.io, %.noexc51 ], [ %i.jn, %bb.ay ]
  %.sroa.01.0.i.i.i40 = and i64 %.pn.i.i.i39, %i.is ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 %.sroa.01.0.i.i.i40
  %.sroa.0.0.copyload.i26.i.i41 = load <16 x i8>, ptr %i.iw, align 1, !noalias !1463 ; 2 uses
  %i.ix = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i41, %i.iv
  %i.iy = bitcast <16 x i1> %i.ix to i16          ; 2 uses
  %.not.i.not32.i.i42 = icmp eq i16 %i.iy, 0
  br i1 %.not.i.not32.i.i42, label %._crit_edge.i.i46, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.aw, %bb.ax
  %.sroa.06.0.i33.i.i44 = phi i16 [ %i.jl, %bb.ax ], [ %i.iy, %bb.aw ] ; 3 uses
  %i.iz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i44, i1 true)
end_hunk_1
begin_hunk_2_@_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6f_14UnigramTrainer21prune_sentence_piecess0_0NCB6a_s_0ENCB6a_0EE0NCB2B_s_0TdINtNtB4B_3vec3VecdEIB8r_IB8r_jEEEB8o_E0TB8o_B8o_EE0B93_ENtB5_3Job7executeB6l_:bb.a
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.copyload58, %bb.i ], [ -9223372036854775806, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1o_IB1o_jEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(112) %0)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = load i8, ptr %i.s, align 8, !range !32, !noundef !3
  %i.u = trunc nuw i8 %i.t to i1                  ; 3 uses
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.r, align 8, !nonnull !3, !align !28, !noundef !3
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !3, !align !28, !noundef !3
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.y, %bb.q ], [ %i.w, %bb.n ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = atomicrmw xchg ptr %i.ad, i64 3 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.s, label %bb.u

bb.q:                                             ; preds = %bb.o
  store ptr %i.y, ptr %i.d, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ac)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.u, label %bb.v, label %.body

bb.u:                                             ; preds = %bb.s, %bb.p
  br i1 %i.u, label %bb.y, label %bb.aa

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !2664, !nonnull !3, !noundef !3
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2664
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.w, label %.body

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  %i.al = load ptr, ptr %i.d, align 8, !alias.scope !2671, !nonnull !3, !noundef !3
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2671
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %bb.g

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtCs4NRVxsYgnAr_4core6option6OptionjENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2C_3map11MapConsumerINtNtB2C_4fold12FoldConsumerINtNtB2C_6reduce14ReduceConsumerNCINvNvNtB2C_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB1U_3cmp3Ord3maxE0NvYB1P_NtNtB1U_7default7Default7defaultEB7V_NCINvB6E_8opt_foldjB7u_E0ENCNvNtNtB4i_5utils7padding13pad_encodings0EEs_0E0B1P_ENtB5_3Job7executeB4i_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %i.d = inttoptr i64 %.sroa.5.sroa.0.0.copyload to ptr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2672, !noundef !3
  %i.f = load i64, ptr %i.d, align 8, !noalias !2672, !noundef !3
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2672, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !2672, !noundef !3
  %i.k = invoke { i64, i64 } @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB52_6option6OptionjENtNtB52_7default7Default7defaultEB5z_NCINvB44_8opt_foldjB4T_E0ENCNvNtNtB1L_5utils7padding13pad_encodings0EEB1L_(i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.h unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body31:                                          ; preds = %bb.w, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.ag, %.body ], [ %i.p, %bb.f ], [ %i.bb, %bb.z ], [ %i.bb, %bb.y ], [ %i.bb, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.ac, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body31

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2672
  %i.q = extractvalue { i64, i64 } %i.k, 0
  %i.r = extractvalue { i64, i64 } %i.k, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.n, 0
  %i.t = extractvalue { ptr, ptr } %i.n, 1
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.8.0.a = phi i64 [ %i.q, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %i.r, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.x = load i64, ptr %i.w, align 8, !range !511, !alias.scope !2681, !noundef !3
  %switch.i = icmp samesign ult i64 %i.x, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !2681 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val1.i = load ptr, ptr %i.z, align 8, !alias.scope !2681, !nonnull !3, !align !28, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val1.i, align 8, !invariant.load !3, !noalias !2681 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2681

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !512, !invariant.load !3, !noalias !2681 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !513, !invariant.load !3, !noalias !2681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2681
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !512, !invariant.load !3, !noalias !2681 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !513, !invariant.load !3, !noalias !2681
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #34, !noalias !2681
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  store i64 %.sroa.04.0, ptr %i.w, align 8
  store i64 %.sroa.8.0.a, ptr %i.y, align 8
  store i64 %.sroa.6.0, ptr %i.z, align 8
  br label %.body31

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.8.0.a, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.6.0, ptr %.sroa.8.0..sroa_idx8, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i8, ptr %i.an, align 8, !range !32, !noundef !3
  %i.ap = trunc nuw i8 %i.ao to i1                ; 3 uses
  br i1 %i.ap, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.aq = load ptr, ptr %i.am, align 8, !nonnull !3, !align !28, !noundef !3
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !3, !noundef !3
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.as = load ptr, ptr %i.am, align 8, !nonnull !3, !align !28, !noundef !3
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.at, %bb.t ], [ %i.ar, %bb.q ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = atomicrmw xchg ptr %i.ay, i64 3 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.at, ptr %i.c, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ax)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ap, label %bb.y, label %.body31

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ap, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !2690, !nonnull !3, !noundef !3
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !2690
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.z, label %.body31

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body31 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  %i.bg = load ptr, ptr %i.c, align 8, !alias.scope !2697, !nonnull !3, !noundef !3
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !2697
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ae:                                            ; preds = %.body31
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body31
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2698, !noundef !3
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2698, !noundef !3
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2698, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2698, !noundef !3
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEENtNtB6_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.y, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.y ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ae, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.0.0.copyload50 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx51, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.061 = phi ptr [ %.sroa.0.0.copyload50, %bb.h ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.9.05258 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.14.0.copyload, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  %i.s = load i64, ptr %0, align 8, !range !511, !alias.scope !2711, !noundef !3
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2711 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2711, !nonnull !3, !align !28, !noundef !3 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !3, !noalias !2711 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2711
end_hunk_2
begin_hunk_3_@_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2f_3vec3VecB2b_EEENCNvMse_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2f_3vec3VecB2b_EEENCNvMse_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE8grow_oneB1Y_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEE8grow_oneB1I_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef align 4 dereferenceable(256)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString9lowercase(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString6filterNCNvMs_NtNtBa_11normalizers4bertNtB1x_14BertNormalizer13do_clean_text0EBa_(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString3mapNCNvMs_NtNtBa_11normalizers4bertNtB1u_14BertNormalizer13do_clean_texts_0EBa_(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString3nfd(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString6filterNCNvMs_NtNtBa_11normalizers4bertNtB1x_14BertNormalizer16do_strip_accents0EBa_(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString8for_eachNCNvMs_NtNtBa_11normalizers4bertNtB1z_14BertNormalizer23do_handle_chinese_chars0EBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15transform_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEBa_(ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #22

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvCsab9OZFjq7dt_18unicode_categories19table_binary_search(i32 noundef range(i32 0, 1114112), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism15get_parallelism() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB15_9enumerate9EnumerateINtNtNtB19_5slice4iter4IterhEENCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levelNtB2T_9ByteLevelNtNtB2X_9tokenizer10Normalizer9normalize0EEB2X_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvXs2_B39_NtB39_4WordNtNtB21_3fmt5Debug3fmt0EE9from_iterB3f_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBM_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBT_NtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterIBT_INtNtB8_2rc2RcINtNtB26_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENCNCNvXs3_B3S_NtB3S_7LatticeNtNtB26_3fmt7Display3fmt00EE9from_iterB3Y_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtB7_6string6StringEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexbE4lockCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3fmt3numiNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3fmt3numiNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs_NtNtBa_14pre_tokenizers12fixed_lengthNtB1B_11FixedLengthNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3z_EBa_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2N_5StripNtNtB2R_9tokenizer7Decoder12decode_chain0EB2k_EB2R_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4keysCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolINtNtNtBa_5slice4iter4IterB14_EEB1c_(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEE9drop_slowB1l_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { cold }
attributes #34 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!5, !7, !9, !11, !12, !14, !15, !17}
!5 = distinct !{!5, !6, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!6 = distinct !{!6, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers"}
!7 = distinct !{!7, !8, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!8 = distinct !{!8, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!9 = distinct !{!9, !10, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2JiOgHzbbc7_10tokenizers: argument 0"}
!10 = distinct !{!10, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2JiOgHzbbc7_10tokenizers"}
!11 = distinct !{!11, !10, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2JiOgHzbbc7_10tokenizers: argument 1"}
!12 = distinct !{!12, !13, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 0"}
!13 = distinct !{!13, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers"}
!14 = distinct !{!14, !13, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 1"}
!15 = distinct !{!15, !16, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 0"}
!16 = distinct !{!16, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers"}
!17 = distinct !{!17, !16, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 1"}
!18 = !{!9, !11, !12, !14, !15, !17}
!19 = !{i64 0, i64 2}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMBV_BT_3pad0EBZ_: argument 0"}
!22 = distinct !{!22, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMBV_BT_3pad0EBZ_"}
!23 = !{!24, !21}
!24 = distinct !{!24, !25, !"_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding3pad0B8_: argument 0"}
!25 = distinct !{!25, !"_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding3pad0B8_"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding3pad0B8_: argument 1"}
!28 = !{i64 8}
!29 = !{i64 4}
!30 = !{!24}
!31 = !{!24, !27, !21}
!32 = !{i8 0, i8 2}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_: argument 0"}
!35 = distinct !{!35, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_: argument 1"}
!38 = !{!39, !37}
!39 = distinct !{!39, !40, !"_RNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodingss_0B7_: argument 0"}
!40 = distinct !{!40, !"_RNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodingss_0B7_"}
!41 = !{!39, !34}
!42 = !{!39, !34, !37}
!43 = !{!34, !37}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_: argument 0"}
!46 = distinct !{!46, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_"}
!47 = distinct !{!47, !46, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_: argument 2"}
!48 = !{!45, !49}
!49 = distinct !{!49, !46, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_: argument 1"}
!50 = !{!49, !47}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon11collections8hash_set4IterjENtNtBa_4iter16ParallelIterator8flat_mapNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1I_10BpeTrainer8do_trains_0INtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1O_: argument 0"}
!53 = distinct !{!53, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon11collections8hash_set4IterjENtNtBa_4iter16ParallelIterator8flat_mapNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1I_10BpeTrainer8do_trains_0INtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1O_"}
!54 = distinct !{!54, !53, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon11collections8hash_set4IterjENtNtBa_4iter16ParallelIterator8flat_mapNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1I_10BpeTrainer8do_trains_0INtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1O_: argument 2"}
!55 = !{!56}
!56 = distinct !{!56, !53, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon11collections8hash_set4IterjENtNtBa_4iter16ParallelIterator8flat_mapNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1I_10BpeTrainer8do_trains_0INtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1O_: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairss_0Bd_: argument 0"}
!59 = distinct !{!59, !"_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairss_0Bd_"}
!60 = !{!61, !58}
!61 = distinct !{!61, !62, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new: argument 0"}
!62 = distinct !{!62, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new"}
!63 = distinct !{null, null}
!64 = !{!65, !58}
!65 = distinct !{!65, !66, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new: argument 0"}
!66 = distinct !{!66, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new"}
!67 = distinct !{null}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps0_0Bc_: argument 0"}
!70 = distinct !{!70, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps0_0Bc_"}
!71 = !{!72, !69}
!72 = distinct !{!72, !73, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers: argument 0"}
!73 = distinct !{!73, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers"}
!74 = !{i64 0, i64 -9223372036854775807}
!75 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer21prune_sentence_piecess_0Bc_: argument 0"}
!78 = distinct !{!78, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer21prune_sentence_piecess_0Bc_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers: argument 0"}
!81 = distinct !{!81, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers"}
!82 = !{!80, !77}
!83 = !{!84, !86, !87, !89}
!84 = distinct !{!84, !85, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtBX_8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEBv_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3I_10BpeTrainer8do_trains_0EEB3O_: argument 0"}
!85 = distinct !{!85, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtBX_8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEBv_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3I_10BpeTrainer8do_trains_0EEB3O_"}
!86 = distinct !{!86, !85, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtBX_8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEBv_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3I_10BpeTrainer8do_trains_0EEB3O_: argument 1"}
!87 = distinct !{!87, !88, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator7collectB1T_EB2O_: argument 0"}
!88 = distinct !{!88, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator7collectB1T_EB2O_"}
!89 = distinct !{!89, !88, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator7collectB1T_EB2O_: argument 1"}
!90 = !{!86, !89}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTdINtNtBT_3vec3VecdEIB2g_IB2g_jEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2S_14UnigramTrainer21prune_sentence_pieces0EB2Y_: argument 0"}
!93 = distinct !{!93, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTdINtNtBT_3vec3VecdEIB2g_IB2g_jEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2S_14UnigramTrainer21prune_sentence_pieces0EB2Y_"}
!94 = distinct !{!94, !93, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTdINtNtBT_3vec3VecdEIB2g_IB2g_jEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2S_14UnigramTrainer21prune_sentence_pieces0EB2Y_: argument 2"}
!95 = !{!96}
!96 = distinct !{!96, !93, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTdINtNtBT_3vec3VecdEIB2g_IB2g_jEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2S_14UnigramTrainer21prune_sentence_pieces0EB2Y_: argument 1"}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter16ParallelIterator3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer21prune_sentence_pieces0TdINtNtBW_3vec3VecdEIB3S_IB3S_jEEEEB2i_: argument 0"}
!99 = distinct !{!99, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter16ParallelIterator3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer21prune_sentence_pieces0TdINtNtBW_3vec3VecdEIB3S_IB3S_jEEEEB2i_"}
!100 = distinct !{!100, !99, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter16ParallelIterator3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer21prune_sentence_pieces0TdINtNtBW_3vec3VecdEIB3S_IB3S_jEEEEB2i_: argument 2"}
!101 = !{!102}
!102 = distinct !{!102, !99, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter16ParallelIterator3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer21prune_sentence_pieces0TdINtNtBW_3vec3VecdEIB3S_IB3S_jEEEEB2i_: argument 1"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers: argument 0"}
!105 = distinct !{!105, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers: argument 0"}
!108 = distinct !{!108, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers"}
!109 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBW_3vec3VecBS_EEENtNtNtB9_6traits8iterator8Iterator4takeCs2JiOgHzbbc7_10tokenizers: argument 0"}
!112 = distinct !{!112, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBW_3vec3VecBS_EEENtNtNtB9_6traits8iterator8Iterator4takeCs2JiOgHzbbc7_10tokenizers"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBW_3vec3VecBS_EEENtNtNtB9_6traits8iterator8Iterator4takeCs2JiOgHzbbc7_10tokenizers: argument 1"}
!115 = !{i8 0, i8 3}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!118 = distinct !{!118, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers: argument 0"}
!121 = distinct !{!121, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers: argument 0"}
!124 = distinct !{!124, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers: argument 1"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBU_3vec3VecBQ_EEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1r_E0ECs2JiOgHzbbc7_10tokenizers: argument 0"}
!129 = distinct !{!129, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBU_3vec3VecBQ_EEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1r_E0ECs2JiOgHzbbc7_10tokenizers"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!132 = distinct !{!132, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!133 = !{!131, !128, !123}
!134 = !{!135, !136, !126}
!135 = distinct !{!135, !132, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!136 = distinct !{!136, !129, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBU_3vec3VecBQ_EEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1r_E0ECs2JiOgHzbbc7_10tokenizers: argument 1"}
!137 = !{!138, !131, !135, !128}
!138 = distinct !{!138, !139, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!139 = distinct !{!139, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!142 = distinct !{!142, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!145 = distinct !{!145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs2JiOgHzbbc7_10tokenizers: argument 0"}
!148 = distinct !{!148, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs2JiOgHzbbc7_10tokenizers"}
!149 = distinct !{null}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_: argument 1"}
!152 = distinct !{!152, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_"}
!153 = !{!154, !151}
!154 = distinct !{!154, !152, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_: argument 0"}
!155 = distinct !{null}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7_3BPE19tokenize_with_cache0Bd_: argument 1"}
!158 = distinct !{!158, !"_RNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7_3BPE19tokenize_with_cache0Bd_"}
!159 = !{!160, !157, !154, !151}
!160 = distinct !{!160, !158, !"_RNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7_3BPE19tokenize_with_cache0Bd_: argument 0"}
end_hunk_3
