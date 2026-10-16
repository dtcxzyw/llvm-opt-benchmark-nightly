Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB31_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6w_14UnigramTrainer21prune_sentence_piecess0_0NCB6r_s_0ENCB6r_0EE0NCB2S_s_0TdINtNtB4S_3vec3VecdEIB8I_IB8I_jEEEB8F_E0TB8F_B8F_EE00B9k_ENtB5_3Job7executeB6C_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.q, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  ret void

bb.p:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2I_9enumerate17EnumerateProducerINtNtB2K_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs4_NtB4Y_7trainerNtB6T_10BpeTrainer11count_pairss0_0NCB6N_s_0ENCB6N_0EE0NCB2B_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8b_B8R_INtNtB8f_8hash_set8AHashSetjEEEB89_E0TB89_B89_EE0B9H_ENtB5_3Job7executeB52_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [256 x i8], align 8               ; 6 uses
  %i.c = alloca [136 x i8], align 16              ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [232 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [232 x i8], align 8    ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x ptr> %i.e, ptr %i.c, align 16
  %.sroa.13.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx56, align 16
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.14.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2362, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc49 unwind label %bb.d

.noexc49:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtB10_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs4_NtB3d_7trainerNtB56_10BpeTrainer11count_pairss0_0NCB50_s_0ENCB50_0EE0NCBR_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB6n_B73_INtNtB6r_8hash_set8AHashSetjEEEB6l_E0B3h_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.t, %bb.v, %bb.w, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.l, %bb.g ], [ %i.ak, %bb.w ], [ %i.ak, %bb.v ], [ %i.ak, %bb.t ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ab

bb.g:                                             ; preds = %bb.z, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i
  %.sroa.0.0.copyload51 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14.0..sroa_idx, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, i64 232, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.o, i64 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.066 = phi ptr [ %.sroa.0.0.copyload51, %bb.i ], [ %i.n, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.j ] ; 2 uses
  %i.q = phi <2 x ptr> [ %i.m, %bb.i ], [ %i.p, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1n_B23_INtNtB1r_8hash_set8AHashSetjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(264) %i.r)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = extractelement <2 x ptr> %i.q, i64 0
  store ptr %i.t, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = extractelement <2 x ptr> %i.q, i64 1
  store ptr %i.u, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x ptr> %i.q, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.x = load i8, ptr %i.w, align 8, !range !8, !noundef !4
  %i.y = trunc nuw i8 %i.x to i1                  ; 3 uses
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %i.v, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = load ptr, ptr %i.v, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.ac, %bb.q ], [ %i.aa, %bb.n ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ai = atomicrmw xchg ptr %i.ah, i64 3 acq_rel, align 8
  %i.aj = icmp eq i64 %i.ai, 2
  br i1 %i.aj, label %bb.s, label %bb.u

bb.q:                                             ; preds = %bb.o
  store ptr %i.ac, ptr %i.d, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ag)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.y, label %bb.v, label %.body

bb.u:                                             ; preds = %bb.s, %bb.p
  br i1 %i.y, label %bb.y, label %bb.aa

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  %i.al = load ptr, ptr %i.d, align 8, !alias.scope !2365, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2365
  %i.am = icmp eq i64 %1, 1
  br i1 %i.am, label %bb.w, label %.body

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.ao = load ptr, ptr %i.d, align 8, !alias.scope !2368, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !2368
  %i.ap = icmp eq i64 %2, 1
  br i1 %i.ap, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %bb.g

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5V_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtB4W_13CollectResultB5C_EB7q_E0TB7q_B7q_EE0B7X_ENtB5_3Job7executeB61_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2388
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2389, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2389

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerRjEINtNtB1A_8flat_map15FlatMapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4N_10BpeTrainer8do_trains_0EE0NCB1t_s_0INtB3O_13CollectResultB4u_EB6i_E0EB4T_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c) #33
          to label %.body46 unwind label %bb.f, !noalias !2390

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2390
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2389
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1052.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB49_10BpeTrainer8do_trains_0EE0NCBR_s_0INtB3b_13CollectResultB3Q_EB5D_E0B4f_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46

.body46:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body47, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body46
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body44:                                          ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.j, %.body
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.n, %bb.j ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.av, %bb.aa ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ai

bb.j:                                             ; preds = %bb.ag, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2388
  %.sroa.0.0.copyload51 = load ptr, ptr %i.d, align 8
  %.sroa.1052.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1052.0.copyload56 = load ptr, ptr %.sroa.1052.0..sroa_idx55, align 8
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx58, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body46
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.068 = phi ptr [ %.sroa.0.0.copyload51, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1052.064 = phi ptr [ %.sroa.1052.0.copyload56, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !2391, !noundef !4
  %switch.i = icmp samesign ult i64 %i.r, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2391 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !2391, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2391 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i)
          to label %bb.q unwind label %bb.s, !noalias !2391

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !16, !invariant.load !4, !noalias !2391 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !17, !invariant.load !4, !noalias !2391
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34, !noalias !2391
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2391 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2391
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2391
  br label %.body

.body:                                            ; preds = %bb.s, %bb.t
  store i64 %.sroa.04.0, ptr %i.q, align 8
  store ptr %.sroa.0.068, ptr %i.s, align 8
  store ptr %.sroa.1052.064, ptr %i.t, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body44

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.r, %bb.q, %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.068, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.1052.064, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load i8, ptr %i.ah, align 8, !range !8, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1                ; 3 uses
  br i1 %i.aj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ak = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  br label %bb.w

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.am = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.u
  %.pn.i = phi ptr [ %i.an, %bb.x ], [ %i.al, %bb.u ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = atomicrmw xchg ptr %i.as, i64 3 acq_rel, align 8
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  store ptr %i.an, ptr %i.e, align 8
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.w
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ar)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.aj, label %bb.ac, label %.body44

bb.ab:                                            ; preds = %bb.z, %bb.w
  br i1 %i.aj, label %bb.af, label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !2394, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !2394
  %i.ax = icmp eq i64 %1, 1
  br i1 %i.ax, label %bb.ad, label %.body44

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body44 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  %i.az = load ptr, ptr %i.e, align 8, !alias.scope !2397, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !2397
  %i.ba = icmp eq i64 %2, 1
  br i1 %i.ba, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ah unwind label %bb.j

bb.ah:                                            ; preds = %bb.af, %bb.ab, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ai:                                            ; preds = %.body44
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body44
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerNtNtB2I_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5x_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB79_3vec3VecTTTmmElEjEEEB72_E0TB72_B72_EE0B8D_ENtB5_3Job7executeB5D_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2415
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2416, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2416

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerRjEINtNtB1A_8flat_map15FlatMapConsumerNtNtB1A_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4p_10BpeTrainer8do_trains_0EE0NCB1t_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB61_3vec3VecTTTmmElEjEEEB5U_E0EB4v_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #33
          to label %.body44 unwind label %bb.f, !noalias !2417

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2417
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2416
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1050.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx51, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerNtNtBY_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3L_10BpeTrainer8do_trains_0EE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5m_3vec3VecTTTmmElEjEEEB5f_E0B3R_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body44

.body44:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body45, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body44
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.j, %bb.o
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.n, %bb.j ], [ %i.ah, %bb.z ], [ %i.ah, %bb.y ], [ %i.ah, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.j:                                             ; preds = %bb.ac, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2415
  %.sroa.0.0.copyload49 = load ptr, ptr %i.d, align 8
  %.sroa.1050.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1050.0.copyload54 = load ptr, ptr %.sroa.1050.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx56, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body44
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.063 = phi ptr [ %.sroa.0.0.copyload49, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1050.061 = phi ptr [ %.sroa.1050.0.copyload54, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTTTmmElEjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.p:                                             ; preds = %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = load i8, ptr %i.t, align 8, !range !8, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1                  ; 3 uses
  br i1 %i.v, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.z, %bb.t ], [ %i.x, %bb.q ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = atomicrmw xchg ptr %i.ae, i64 3 acq_rel, align 8
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.z, ptr %i.e, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ad)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.v, label %bb.y, label %.body

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.v, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !2420, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2420
  %i.aj = icmp eq i64 %1, 1
  br i1 %i.aj, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !2423, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2423
  %i.am = icmp eq i64 %2, 1
  br i1 %i.am, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ad unwind label %bb.j

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ae:                                            ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEEINtNtNtB2I_7collect8consumer15CollectConsumerB4h_EE0NCB2B_s_0INtB4v_13CollectResultB4h_EB5r_E0TB5r_B5r_EE0B5Y_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [104 x i8], align 8               ; 7 uses
  %i.c = alloca [104 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2443
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2444, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2444

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTTTmmElEjEEINtNtNtB1A_7collect8consumer15CollectConsumerB39_EE0NCB1t_s_0INtB3n_13CollectResultB39_EB4j_E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #33
          to label %.body46 unwind label %bb.f, !noalias !2445

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2445
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2444
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1052.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.15.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEEINtNtNtBY_7collect8consumer15CollectConsumerB2x_EE0NCBR_s_0INtB2L_13CollectResultB2x_EB3F_E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46

.body46:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body47, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body46
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body44:                                          ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.j, %.body
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.n, %bb.j ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.av, %bb.aa ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ai

bb.j:                                             ; preds = %bb.ag, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2443
  %.sroa.0.0.copyload51 = load ptr, ptr %i.d, align 8
  %.sroa.1052.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1052.0.copyload56 = load ptr, ptr %.sroa.1052.0..sroa_idx55, align 8
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx58, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body46
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.068 = phi ptr [ %.sroa.0.0.copyload51, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1052.064 = phi ptr [ %.sroa.1052.0.copyload56, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !2446, !noundef !4
  %switch.i = icmp samesign ult i64 %i.r, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2446 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !2446, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2446 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i)
          to label %bb.q unwind label %bb.s, !noalias !2446

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !16, !invariant.load !4, !noalias !2446 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !17, !invariant.load !4, !noalias !2446
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34, !noalias !2446
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2446 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2446
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2446
  br label %.body

.body:                                            ; preds = %bb.s, %bb.t
  store i64 %.sroa.04.0, ptr %i.q, align 8
  store ptr %.sroa.0.068, ptr %i.s, align 8
  store ptr %.sroa.1052.064, ptr %i.t, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body44

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.r, %bb.q, %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.0.068, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.1052.064, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load i8, ptr %i.ah, align 8, !range !8, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1                ; 3 uses
  br i1 %i.aj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ak = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  br label %bb.w

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.am = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.u
  %.pn.i = phi ptr [ %i.an, %bb.x ], [ %i.al, %bb.u ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = atomicrmw xchg ptr %i.as, i64 3 acq_rel, align 8
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  store ptr %i.an, ptr %i.e, align 8
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.w
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ar)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.aj, label %bb.ac, label %.body44

bb.ab:                                            ; preds = %bb.z, %bb.w
  br i1 %i.aj, label %bb.af, label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !2449, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !2449
  %i.ax = icmp eq i64 %1, 1
  br i1 %i.ax, label %bb.ad, label %.body44

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body44 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  %i.az = load ptr, ptr %i.e, align 8, !alias.scope !2452, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !2452
  %i.ba = icmp eq i64 %2, 1
  br i1 %i.ba, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ah unwind label %bb.j

bb.ah:                                            ; preds = %bb.af, %bb.ab, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ai:                                            ; preds = %.body44
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body44
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEENtNtB2I_6extend15ListVecConsumerE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5g_3vec3VecB4h_EEB59_E0TB59_B59_EE0B6E_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2470
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2471, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2471

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTTTmmElEjEENtNtB1A_6extend15ListVecConsumerE0NCB1t_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB48_3vec3VecB39_EEB41_E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #33
          to label %.body44 unwind label %bb.f, !noalias !2472

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2472
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2471
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1050.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx51, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEENtNtBY_6extend15ListVecConsumerE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3u_3vec3VecB2x_EEB3n_E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body44

.body44:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body45, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body44
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.j, %bb.o
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.n, %bb.j ], [ %i.ah, %bb.z ], [ %i.ah, %bb.y ], [ %i.ah, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.j:                                             ; preds = %bb.ac, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2470
  %.sroa.0.0.copyload49 = load ptr, ptr %i.d, align 8
  %.sroa.1050.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1050.0.copyload54 = load ptr, ptr %.sroa.1050.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx56, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body44
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.063 = phi ptr [ %.sroa.0.0.copyload49, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1050.061 = phi ptr [ %.sroa.1050.0.copyload54, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTTTmmElEjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.p:                                             ; preds = %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load i8, ptr %i.t, align 8, !range !8, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1                  ; 3 uses
  br i1 %i.v, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.z, %bb.t ], [ %i.x, %bb.q ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = atomicrmw xchg ptr %i.ae, i64 3 acq_rel, align 8
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.z, ptr %i.e, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ad)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.v, label %bb.y, label %.body

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.v, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !2475, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2475
  %i.aj = icmp eq i64 %1, 1
  br i1 %i.aj, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !2478, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2478
  %i.am = icmp eq i64 %2, 1
  br i1 %i.am, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ad unwind label %bb.j

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ae:                                            ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_3map11MapConsumerINtNtB2I_4fold12FoldConsumerINtNtB2I_6reduce14ReduceConsumerNCINvNvNtB2I_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB7J_6option6OptionjENtNtB7J_7default7Default7defaultEB8g_NCINvB6K_8opt_foldjB7A_E0ENCNvNtNtB4o_5utils7padding13pad_encodings0EE0NCB2B_s_0B8j_B8j_E0TB8j_B8j_EE0BaL_ENtB5_3Job7executeB4o_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 120, i1 false)
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !2498, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.i, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCINvMs4_NtB1k_8registryNtB2O_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4e_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4c_3map11MapConsumerINtNtB4c_4fold12FoldConsumerINtNtB4c_6reduce14ReduceConsumerNCINvNvNtB4c_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9u_NCINvB8e_8opt_foldjB94_E0ENCNvNtNtB5S_5utils7padding13pad_encodings0EE0NCB45_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5S_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc60 unwind label %bb.d

.noexc60:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCINvMs4_NtB1k_8registryNtB2O_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4e_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4c_3map11MapConsumerINtNtB4c_4fold12FoldConsumerINtNtB4c_6reduce14ReduceConsumerNCINvNvNtB4c_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9u_NCINvB8e_8opt_foldjB94_E0ENCNvNtNtB5S_5utils7padding13pad_encodings0EE0NCB45_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5S_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_3map11MapConsumerINtNtBY_4fold12FoldConsumerINtNtBY_6reduce14ReduceConsumerNCINvNvNtBY_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB5V_6option6OptionjENtNtB5V_7default7Default7defaultEB6s_NCINvB4X_8opt_foldjB5M_E0ENCNvNtNtB2E_5utils7padding13pad_encodings0EE0NCBR_s_0B6v_B6v_E0B2E_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCINvMs4_NtB1k_8registryNtB2O_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4e_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4c_3map11MapConsumerINtNtB4c_4fold12FoldConsumerINtNtB4c_6reduce14ReduceConsumerNCINvNvNtB4c_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9u_NCINvB8e_8opt_foldjB94_E0ENCNvNtNtB5S_5utils7padding13pad_encodings0EE0NCB45_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5S_.exit.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body58:                                          ; preds = %bb.x, %bb.z, %bb.aa, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.n, %bb.g ], [ %i.ax, %bb.aa ], [ %i.ax, %bb.z ], [ %i.ax, %bb.x ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

bb.g:                                             ; preds = %bb.ad, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCINvMs4_NtB1k_8registryNtB2O_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4e_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4c_3map11MapConsumerINtNtB4c_4fold12FoldConsumerINtNtB4c_6reduce14ReduceConsumerNCINvNvNtB4c_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9u_NCINvB8e_8opt_foldjB94_E0ENCNvNtNtB5S_5utils7padding13pad_encodings0EE0NCB45_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5S_.exit.i
  %.sroa.0.0.copyload63 = load i64, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload65 = load ptr, ptr %.sroa.9.0..sroa_idx64, align 8
  %.sroa.13.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload67 = load ptr, ptr %.sroa.13.0..sroa_idx66, align 8
  %.sroa.14.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.14.0.copyload69 = load i64, ptr %.sroa.14.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.o = extractvalue { ptr, ptr } %i.l, 0
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.8.0 = phi i64 [ %.sroa.14.0.copyload69, %bb.i ], [ undef, %bb.j ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.13.0.copyload67, %bb.i ], [ %i.p, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.9.0.copyload65, %bb.i ], [ %i.o, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.copyload63, %bb.i ], [ 4, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  %i.q = load i64, ptr %0, align 8, !range !19, !alias.scope !2499, !noundef !4 ; 3 uses
  %i.r = icmp ne i64 %i.q, 3
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i64 %i.q, 2
  %i.t = and i64 %i.q, 6
  %switch2.i = icmp eq i64 %i.t, 2
  %switch.i = or i1 %i.s, %switch2.i
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !2499 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !2499, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2499 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p, !noalias !2499

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !16, !invariant.load !4, !noalias !2499 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !17, !invariant.load !4, !noalias !2499
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #34, !noalias !2499
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.p:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !16, !invariant.load !4, !noalias !2499 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !17, !invariant.load !4, !noalias !2499
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #34, !noalias !2499
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  store ptr %.sroa.6.0, ptr %i.u, align 8
  store ptr %.sroa.7.0, ptr %i.v, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx15, align 8
  br label %.body58

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.n, %bb.k
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx17, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1                ; 3 uses
  br i1 %i.al, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  %i.am = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ap, %bb.u ], [ %i.an, %bb.r ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = atomicrmw xchg ptr %i.au, i64 3 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 2
  br i1 %i.aw, label %bb.w, label %bb.y

bb.u:                                             ; preds = %bb.s
  store ptr %i.ap, ptr %i.d, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.at)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.al, label %bb.z, label %.body58

bb.y:                                             ; preds = %bb.w, %bb.t
  br i1 %i.al, label %bb.ac, label %bb.ae

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.ay = load ptr, ptr %i.d, align 8, !alias.scope !2502, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !2502
  %i.az = icmp eq i64 %1, 1
  br i1 %i.az, label %bb.aa, label %.body58

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body58 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !2505, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !2505
  %i.bc = icmp eq i64 %2, 1
  br i1 %i.bc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ae unwind label %bb.g

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.af:                                            ; preds = %.body58
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body58
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvMB4n_B4l_3pad0EE0NCB2B_s_0uuE0TuuEE0B6r_ENtB5_3Job7executeB4r_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2522, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_8for_each15ForEachConsumerNCNvMB2D_B2B_3pad0EE0NCBR_s_0uuE0B2H_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body28:                                          ; preds = %bb.x, %bb.z, %bb.aa, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.x, %.body ], [ %i.k, %bb.g ], [ %i.as, %bb.aa ], [ %i.as, %bb.z ], [ %i.as, %bb.x ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

bb.g:                                             ; preds = %bb.ad, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ undef, %bb.i ], [ %i.m, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ undef, %bb.i ], [ %i.l, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.j ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !2523, !noundef !4
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !2523 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !2523, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2523 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p, !noalias !2523

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !noalias !2523 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !4, !noalias !2523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #34, !noalias !2523
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit

bb.p:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !16, !invariant.load !4, !noalias !2523 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !17, !invariant.load !4, !noalias !2523
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #34, !noalias !2523
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.n, %bb.k
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1                ; 3 uses
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ah = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ak, %bb.u ], [ %i.ai, %bb.r ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = atomicrmw xchg ptr %i.ap, i64 3 acq_rel, align 8
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.w, label %bb.y

bb.u:                                             ; preds = %bb.s
  store ptr %i.ak, ptr %i.c, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ao)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ag, label %bb.z, label %.body28

bb.y:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ag, label %bb.ac, label %bb.ae

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  %i.at = load ptr, ptr %i.c, align 8, !alias.scope !2526, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !2526
  %i.au = icmp eq i64 %1, 1
  br i1 %i.au, label %bb.aa, label %.body28

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body28 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.aw = load ptr, ptr %i.c, align 8, !alias.scope !2529, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !2529
  %i.ax = icmp eq i64 %2, 1
  br i1 %i.ax, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ae unwind label %bb.g

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.af:                                            ; preds = %.body28
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvNtNtB4r_5utils7padding13pad_encodingss_0EE0NCB2B_s_0uuE0TuuEE0B6R_ENtB5_3Job7executeB4r_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2546, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_8for_each15ForEachConsumerNCNvNtNtB2H_5utils7padding13pad_encodingss_0EE0NCBR_s_0uuE0B2H_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body28:                                          ; preds = %bb.x, %bb.z, %bb.aa, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.x, %.body ], [ %i.k, %bb.g ], [ %i.as, %bb.aa ], [ %i.as, %bb.z ], [ %i.as, %bb.x ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

bb.g:                                             ; preds = %bb.ad, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ undef, %bb.i ], [ %i.m, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ undef, %bb.i ], [ %i.l, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.j ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !2547, !noundef !4
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !2547 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !2547, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2547 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p, !noalias !2547

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !noalias !2547 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !4, !noalias !2547
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #34, !noalias !2547
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit

bb.p:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !16, !invariant.load !4, !noalias !2547 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !17, !invariant.load !4, !noalias !2547
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #34, !noalias !2547
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.n, %bb.k
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1                ; 3 uses
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ah = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ak, %bb.u ], [ %i.ai, %bb.r ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = atomicrmw xchg ptr %i.ap, i64 3 acq_rel, align 8
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.w, label %bb.y

bb.u:                                             ; preds = %bb.s
  store ptr %i.ak, ptr %i.c, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ao)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ag, label %bb.z, label %.body28

bb.y:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ag, label %bb.ac, label %bb.ae

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  %i.at = load ptr, ptr %i.c, align 8, !alias.scope !2550, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !2550
  %i.au = icmp eq i64 %1, 1
  br i1 %i.au, label %bb.aa, label %.body28

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body28 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  %i.aw = load ptr, ptr %i.c, align 8, !alias.scope !2553, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !2553
  %i.ax = icmp eq i64 %2, 1
  br i1 %i.ax, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ae unwind label %bb.g

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.af:                                            ; preds = %.body28
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6b_14UnigramTrainer10run_e_steps1_0NCB66_s0_0ENCB66_s_0EE0NCB2B_s_0TdmINtNtB4y_3vec3VecdEEB8c_E0TB8c_B8c_EE0B8F_ENtB5_3Job7executeB6h_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [136 x i8], align 16              ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  store <2 x ptr> %i.f, ptr %i.c, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !2571, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.h, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc55 unwind label %bb.d

.noexc55:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4p_14UnigramTrainer10run_e_steps1_0NCB4k_s0_0ENCB4k_s_0EE0NCBR_s_0TdmINtNtB2O_3vec3VecdEEB6p_E0B4v_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.t, %bb.v, %bb.w, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.p, %bb.l ], [ %i.m, %bb.g ], [ %i.af, %bb.w ], [ %i.af, %bb.v ], [ %i.af, %bb.t ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ab

bb.g:                                             ; preds = %bb.z, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i
  %.sroa.0.0.copyload58 = load ptr, ptr %i.b, align 8
  %.sroa.959.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.959.0.copyload61 = load ptr, ptr %.sroa.959.0..sroa_idx60, align 8
  %.sroa.13.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload63 = load i64, ptr %.sroa.13.0..sroa_idx62, align 8
  %.sroa.14.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.0..sroa_idx64, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, i64 56, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.072 = phi ptr [ %.sroa.0.0.copyload58, %bb.i ], [ %i.n, %bb.j ] ; 2 uses
  %.sroa.959.070 = phi ptr [ %.sroa.959.0.copyload61, %bb.i ], [ %i.o, %bb.j ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.13.0.copyload63, %bb.i ], [ -9223372036854775806, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(80) %0)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.072, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.959.070, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  store ptr %.sroa.0.072, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.959.070, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load i8, ptr %i.r, align 8, !range !8, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !4, !align !6, !noundef !4
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !4, !align !6, !noundef !4
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.x, %bb.q ], [ %i.v, %bb.n ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.s, label %bb.u

bb.q:                                             ; preds = %bb.o
  store ptr %i.x, ptr %i.d, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.v, label %.body

bb.u:                                             ; preds = %bb.s, %bb.p
  br i1 %i.t, label %bb.y, label %bb.aa

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  %i.ag = load ptr, ptr %i.d, align 8, !alias.scope !2574, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !2574
  %i.ah = icmp eq i64 %1, 1
  br i1 %i.ah, label %bb.w, label %.body

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %i.aj = load ptr, ptr %i.d, align 8, !alias.scope !2577, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !2577
  %i.ak = icmp eq i64 %2, 1
  br i1 %i.ak, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %bb.g

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6f_14UnigramTrainer21prune_sentence_piecess0_0NCB6a_s_0ENCB6a_0EE0NCB2B_s_0TdINtNtB4B_3vec3VecdEIB8r_IB8r_jEEEB8o_E0TB8o_B8o_EE0B93_ENtB5_3Job7executeB6l_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  %i.c = alloca [136 x i8], align 8               ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [88 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [88 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.959.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !2595, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.i, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc55 unwind label %bb.d

.noexc55:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4t_14UnigramTrainer21prune_sentence_piecess0_0NCB4o_s_0ENCB4o_0EE0NCBR_s_0TdINtNtB2R_3vec3VecdEIB6E_IB6E_jEEEB6B_E0B4z_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.t, %bb.v, %bb.w, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.n, %bb.g ], [ %i.ag, %bb.w ], [ %i.ag, %bb.v ], [ %i.ag, %bb.t ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ab

bb.g:                                             ; preds = %bb.z, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i
  %.sroa.0.0.copyload58 = load i64, ptr %i.b, align 8
  %.sroa.959.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.959.0.copyload61 = load ptr, ptr %.sroa.959.0..sroa_idx60, align 8
  %.sroa.13.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload63 = load ptr, ptr %.sroa.13.0..sroa_idx62, align 8
  %.sroa.14.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14.0..sroa_idx64, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, i64 88, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.o = extractvalue { ptr, ptr } %i.l, 0
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ %.sroa.13.0.copyload63, %bb.i ], [ %i.p, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.959.0.copyload61, %bb.i ], [ %i.o, %bb.j ] ; 2 uses
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
  %i.t = load i8, ptr %i.s, align 8, !range !8, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1                  ; 3 uses
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.r, align 8, !nonnull !4, !align !6, !noundef !4
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !4, !align !6, !noundef !4
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.y, %bb.q ], [ %i.w, %bb.n ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !2598, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2598
  %i.ai = icmp eq i64 %1, 1
  br i1 %i.ai, label %bb.w, label %.body

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !2601, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !2601
  %i.al = icmp eq i64 %2, 1
  br i1 %i.al, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %bb.g

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %.body
  %i.am = landingpad { ptr, i32 }
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
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %i.d = inttoptr i64 %.sroa.5.sroa.0.0.copyload to ptr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2620, !noundef !4
  %i.f = load i64, ptr %i.d, align 8, !noalias !2620, !noundef !4
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2620, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !2620, !noundef !4
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2620
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
  %.sroa.8.0 = phi i64 [ %i.r, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %i.q, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  %i.x = load i64, ptr %i.w, align 8, !range !15, !alias.scope !2621, !noundef !4
  %switch.i = icmp samesign ult i64 %i.x, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !2621 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val1.i = load ptr, ptr %i.z, align 8, !alias.scope !2621, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.aa = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2621 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2621

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2621 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2621
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2621
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !16, !invariant.load !4, !noalias !2621 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !17, !invariant.load !4, !noalias !2621
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #34, !noalias !2621
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  store i64 %.sroa.04.0, ptr %i.w, align 8
  store i64 %.sroa.6.0, ptr %i.y, align 8
  store i64 %.sroa.8.0, ptr %i.z, align 8
  br label %.body31

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx8, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i8, ptr %i.an, align 8, !range !8, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1                ; 3 uses
  br i1 %i.ap, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.aq = load ptr, ptr %i.am, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.as = load ptr, ptr %i.am, align 8, !nonnull !4, !align !6, !noundef !4
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.at, %bb.t ], [ %i.ar, %bb.q ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !2624, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !2624
  %i.bd = icmp eq i64 %1, 1
  br i1 %i.bd, label %bb.z, label %.body31

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body31 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  %i.bf = load ptr, ptr %i.c, align 8, !alias.scope !2627, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !2627
  %i.bg = icmp eq i64 %2, 1
  br i1 %i.bg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ae:                                            ; preds = %.body31
  %i.bh = landingpad { ptr, i32 }
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
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2650, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2650, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2650, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2650, !noundef !4
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  %i.s = load i64, ptr %0, align 8, !range !15, !alias.scope !2651, !noundef !4
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2651 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2651, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2651 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2651

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !4, !noalias !2651 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !4, !noalias !2651
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !2651
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !4, !noalias !2651 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !invariant.load !4, !noalias !2651
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !2651
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load i8, ptr %i.ak, align 8, !range !8, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  br i1 %i.am, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.aq, %bb.v ], [ %i.ao, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = atomicrmw xchg ptr %i.av, i64 3 acq_rel, align 8
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.x, label %bb.z

bb.v:                                             ; preds = %bb.t
  store ptr %i.aq, ptr %i.c, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.au)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.am, label %bb.aa, label %.body46

bb.z:                                             ; preds = %bb.x, %bb.u
  br i1 %i.am, label %bb.ad, label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.az = load ptr, ptr %i.c, align 8, !alias.scope !2654, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !2654
  %i.ba = icmp eq i64 %1, 1
  br i1 %i.ba, label %bb.ab, label %.body46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body46 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !2657, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !2657
  %i.bd = icmp eq i64 %2, 1
  br i1 %i.bd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ag:                                            ; preds = %.body46
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB6o_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2680, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2680, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2680, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2680, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerNtNtB6_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2S_10BpeTrainer8do_trains_0EEB2Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.sroa.7.0.copyload)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.s = load i64, ptr %0, align 8, !range !15, !alias.scope !2681, !noundef !4
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2681 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2681, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2681 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2681

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !4, !noalias !2681 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !4, !noalias !2681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !2681
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !4, !noalias !2681 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !invariant.load !4, !noalias !2681
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !2681
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !range !8, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  br i1 %i.am, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.aq, %bb.v ], [ %i.ao, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = atomicrmw xchg ptr %i.av, i64 3 acq_rel, align 8
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.x, label %bb.z

bb.v:                                             ; preds = %bb.t
  store ptr %i.aq, ptr %i.c, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.au)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.am, label %bb.aa, label %.body46

bb.z:                                             ; preds = %bb.x, %bb.u
  br i1 %i.am, label %bb.ad, label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  %i.az = load ptr, ptr %i.c, align 8, !alias.scope !2684, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !2684
  %i.ba = icmp eq i64 %1, 1
  br i1 %i.ba, label %bb.ab, label %.body46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body46 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !2687, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !2687
  %i.bd = icmp eq i64 %2, 1
  br i1 %i.bd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ag:                                            ; preds = %.body46
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.sroa.8.0.copyload = load i64, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2710, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2710, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2710, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2710, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEEINtNtNtB6_7collect8consumer15CollectConsumerB1E_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noundef %.sroa.5.sroa.7.0.copyload, i64 noundef %.sroa.5.sroa.8.0.copyload)
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

.body46:                                          ; preds = %bb.w, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.p, %bb.f ], [ %i.aw, %bb.z ], [ %i.aw, %bb.y ], [ %i.aw, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.ac, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.0.0.copyload49 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx50, align 8
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
  %.sroa.0.062 = phi ptr [ %.sroa.0.0.copyload49, %bb.h ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.9.05158 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.14.0.copyload, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  %i.s = load i64, ptr %0, align 8, !range !15, !alias.scope !2711, !noundef !4
  %switch.i = icmp samesign ult i64 %i.s, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2711 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2711, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2711 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2711

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !4, !noalias !2711 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !4, !noalias !2711
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !2711
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !4, !noalias !2711 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !invariant.load !4, !noalias !2711
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !2711
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  store i64 %.sroa.04.0, ptr %0, align 8
  store ptr %.sroa.0.062, ptr %i.t, align 8
  store ptr %.sroa.9.05158, ptr %i.u, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.062, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05158, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load i8, ptr %i.ai, align 8, !range !8, !noundef !4
  %i.ak = trunc nuw i8 %i.aj to i1                ; 3 uses
  br i1 %i.ak, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.al = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !6, !noundef !4
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.an = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.ao, %bb.t ], [ %i.am, %bb.q ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = atomicrmw xchg ptr %i.at, i64 3 acq_rel, align 8
  %i.av = icmp eq i64 %i.au, 2
  br i1 %i.av, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.ao, ptr %i.c, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.as)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ak, label %bb.y, label %.body46

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ak, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !2714, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !2714
  %i.ay = icmp eq i64 %1, 1
  br i1 %i.ay, label %bb.z, label %.body46

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body46 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  %i.ba = load ptr, ptr %i.c, align 8, !alias.scope !2717, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !2717
  %i.bb = icmp eq i64 %2, 1
  br i1 %i.bb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ae:                                            ; preds = %.body46
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB5I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2740, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2740, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2740, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2740, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3g_10BpeTrainer8do_trains_0EEB3m_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
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

.body46:                                          ; preds = %bb.w, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.p, %bb.f ], [ %i.ax, %bb.z ], [ %i.ax, %bb.y ], [ %i.ax, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.ac, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2740
  %.sroa.0.0.copyload49 = load ptr, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.062 = phi ptr [ %.sroa.0.0.copyload49, %bb.h ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.9.05158 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.14.0.copyload, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.t = load i64, ptr %i.s, align 8, !range !15, !alias.scope !2741, !noundef !4
  %switch.i = icmp samesign ult i64 %i.t, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !2741 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !2741, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2741 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2741

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !16, !invariant.load !4, !noalias !2741 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !17, !invariant.load !4, !noalias !2741
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #34, !noalias !2741
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !16, !invariant.load !4, !noalias !2741 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !17, !invariant.load !4, !noalias !2741
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #34, !noalias !2741
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  store i64 %.sroa.04.0, ptr %i.s, align 8
  store ptr %.sroa.0.062, ptr %i.u, align 8
  store ptr %.sroa.9.05158, ptr %i.v, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.062, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.05158, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1                ; 3 uses
  br i1 %i.al, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.am = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.ap, %bb.t ], [ %i.an, %bb.q ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = atomicrmw xchg ptr %i.au, i64 3 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 2
  br i1 %i.aw, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.ap, ptr %i.d, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.at)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.al, label %bb.y, label %.body46

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.al, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %i.ay = load ptr, ptr %i.d, align 8, !alias.scope !2744, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !2744
  %i.az = icmp eq i64 %1, 1
  br i1 %i.az, label %bb.z, label %.body46

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body46 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  call void @llvm.experimental.noalias.scope.decl(metadata !2746)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !2747, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !2747
  %i.bc = icmp eq i64 %2, 1
  br i1 %i.bc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ae:                                            ; preds = %.body46
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1R_B2x_INtNtB1V_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3q_9enumerate17EnumerateProducerINtNtB3s_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3q_3map11MapConsumerINtNtB3q_6reduce14ReduceConsumerNCNvMs4_NtB5G_7trainerNtB7B_10BpeTrainer11count_pairss0_0NCB7v_s_0ENCB7v_0EEs_0E0B1P_ENtB5_3Job7executeB5K_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [104 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [104 x i8], align 8    ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.9.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx53, align 8
  %.sroa.13.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx55, align 8
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2768, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2768, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2768, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2768, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2768
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtB8_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs4_NtB2k_7trainerNtB4d_10BpeTrainer11count_pairss0_0NCB47_s_0ENCB47_0EEB2o_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.14.0..sroa_idx57, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.n)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.s, %bb.u, %bb.v, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.q, %bb.f ], [ %i.ap, %bb.v ], [ %i.ap, %bb.u ], [ %i.ap, %bb.s ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.y, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2768
  %.sroa.0.0.copyload50 = load ptr, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14, i64 104, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.t, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.copyload50, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.v = phi <2 x ptr> [ %i.r, %bb.h ], [ %i.u, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1m_B22_INtNtB1q_8hash_set8AHashSetjEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(136) %i.w)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = extractelement <2 x ptr> %i.v, i64 0
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = extractelement <2 x ptr> %i.v, i64 1
  store ptr %i.z, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5, i64 104, i1 false)
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <2 x ptr> %i.v, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load i8, ptr %i.ab, align 8, !range !8, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1                ; 3 uses
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !6, !noundef !4
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ah, %bb.p ], [ %i.af, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = atomicrmw xchg ptr %i.am, i64 3 acq_rel, align 8
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.r, label %bb.t

bb.p:                                             ; preds = %bb.n
  store ptr %i.ah, ptr %i.e, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.al)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ad, label %bb.u, label %.body

bb.t:                                             ; preds = %bb.r, %bb.o
  br i1 %i.ad, label %bb.x, label %bb.z

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  %i.aq = load ptr, ptr %i.e, align 8, !alias.scope !2771, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !2771
  %i.ar = icmp eq i64 %1, 1
  br i1 %i.ar, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.at = load ptr, ptr %i.e, align 8, !alias.scope !2774, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !2774
  %i.au = icmp eq i64 %2, 1
  br i1 %i.au, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.z unwind label %bb.f

bb.z:                                             ; preds = %bb.x, %bb.t, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.aa:                                            ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_ENtB5_3Job7executeB6a_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [48 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.f = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.f, ptr %i.d, align 8
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.961.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2797, !noundef !4
  %i.h = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2797, !noundef !4
  %i.i = sub i64 %i.g, %i.h
  %i.j = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2797, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !2797, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2797
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3A_14UnigramTrainer21prune_sentence_piecess0_0NCB3v_s_0ENCB3v_0EEB3G_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef %i.j, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body55:                                          ; preds = %bb.y, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.r, %bb.f ], [ %i.be, %bb.ab ], [ %i.be, %bb.aa ], [ %i.be, %bb.y ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ae, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body55

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2797
  %.sroa.0.0.copyload60 = load i64, ptr %i.c, align 8
  %.sroa.961.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.961.0.copyload63 = load ptr, ptr %.sroa.961.0..sroa_idx62, align 8
  %.sroa.13.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.13.0.copyload65 = load ptr, ptr %.sroa.13.0..sroa_idx64, align 8
  %.sroa.14.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.p, 0
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.7.0 = phi ptr [ %.sroa.13.0.copyload65, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.961.0.copyload63, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.copyload60, %bb.h ], [ -9223372036854775806, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %i.v = load i64, ptr %i.u, align 8, !range !18, !alias.scope !2798, !noundef !4 ; 3 uses
  %i.w = icmp ne i64 %i.v, -9223372036854775807
  call void @llvm.assume(i1 %i.w)
  %i.x = xor i64 %i.v, -9223372036854775808
  %i.y = icmp slt i64 %i.v, 0
  %i.z = select i1 %i.y, i64 %i.x, i64 1
  switch i64 %i.z, label %bb.k [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !2798 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load ptr, ptr %i.ab, align 8, !alias.scope !2798, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.ac = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2798 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ac(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2798

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !16, !invariant.load !4, !noalias !2798 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !17, !invariant.load !4, !noalias !2798
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #34, !noalias !2798
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !16, !invariant.load !4, !noalias !2798 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !17, !invariant.load !4, !noalias !2798
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #34, !noalias !2798
  br label %.body

bb.q:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.ai, %bb.p ], [ %i.ai, %bb.o ]
  store i64 %.sroa.04.0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  br label %.body55

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = load i8, ptr %i.aq, align 8, !range !8, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1                ; 3 uses
  br i1 %i.as, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.at = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !6, !noundef !4
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.aw, %bb.v ], [ %i.au, %bb.s ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = atomicrmw xchg ptr %i.bb, i64 3 acq_rel, align 8
  %i.bd = icmp eq i64 %i.bc, 2
  br i1 %i.bd, label %bb.x, label %bb.z

bb.v:                                             ; preds = %bb.t
  store ptr %i.aw, ptr %i.e, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ba)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.as, label %bb.aa, label %.body55

bb.z:                                             ; preds = %bb.x, %bb.u
  br i1 %i.as, label %bb.ad, label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !2801, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !2801
  %i.bg = icmp eq i64 %1, 1
  br i1 %i.bg, label %bb.ab, label %.body55

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body55 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  %i.bi = load ptr, ptr %i.e, align 8, !alias.scope !2804, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !2804
  %i.bj = icmp eq i64 %2, 1
  br i1 %i.bj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ag:                                            ; preds = %.body55
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body55
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2C_5slice6chunks14ChunksProducerTNtNtB1X_6string6StringmEEINtNtB2A_3map11MapConsumerINtNtB2A_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5O_14UnigramTrainer10run_e_steps1_0NCB5J_s0_0ENCB5J_s_0EEs_0E0B1P_ENtB5_3Job7executeB5U_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.958.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2825, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2825, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !2825, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !2825, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2825
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3w_14UnigramTrainer10run_e_steps1_0NCB3r_s0_0ENCB3r_s_0EEB3C_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.j, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.s, %bb.u, %bb.v, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.r, %bb.f ], [ %i.al, %bb.v ], [ %i.al, %bb.u ], [ %i.al, %bb.s ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.y, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2825
  %.sroa.0.0.copyload57 = load ptr, ptr %i.c, align 8
  %.sroa.958.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.958.0.copyload60 = load ptr, ptr %.sroa.958.0..sroa_idx59, align 8
  %.sroa.13.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.13.0.copyload62 = load i64, ptr %.sroa.13.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.071 = phi ptr [ %.sroa.0.0.copyload57, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %.sroa.958.069 = phi ptr [ %.sroa.958.0.copyload60, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.13.0.copyload62, %bb.h ], [ -9223372036854775806, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.u)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.071, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.958.069, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  br label %.body

bb.l:                                             ; preds = %bb.j
  store ptr %.sroa.0.071, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.958.069, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i8, ptr %i.x, align 8, !range !8, !noundef !4
  %i.z = trunc nuw i8 %i.y to i1                  ; 3 uses
  br i1 %i.z, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.w, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = load ptr, ptr %i.w, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ad, %bb.p ], [ %i.ab, %bb.m ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = atomicrmw xchg ptr %i.ai, i64 3 acq_rel, align 8
  %i.ak = icmp eq i64 %i.aj, 2
  br i1 %i.ak, label %bb.r, label %bb.t

bb.p:                                             ; preds = %bb.n
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ah)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.z, label %bb.u, label %.body

bb.t:                                             ; preds = %bb.r, %bb.o
  br i1 %i.z, label %bb.x, label %bb.z

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  %i.am = load ptr, ptr %i.e, align 8, !alias.scope !2828, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2828
  %i.an = icmp eq i64 %1, 1
  br i1 %i.an, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  %i.ap = load ptr, ptr %i.e, align 8, !alias.scope !2831, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !2831
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.z unwind label %bb.f

bb.z:                                             ; preds = %bb.x, %bb.t, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvMB3E_B3C_3pad0EEs_0E0uENtB5_3Job7executeB3I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  %i.c = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2850, !noundef !4
  %i.d = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2850, !noundef !4
  %i.e = sub i64 %i.c, %i.d
  %i.f = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2850, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !2850, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB6_8for_each15ForEachConsumerNCNvMB1K_B1I_3pad0EEB1O_(i64 noundef %i.e, i1 noundef zeroext true, i64 noundef %i.f, i64 noundef %i.h, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.sroa.7.0.copyload)
          to label %bb.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body28:                                          ; preds = %bb.v, %bb.x, %bb.y, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.m, %bb.f ], [ %i.au, %bb.y ], [ %i.au, %bb.x ], [ %i.au, %bb.v ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ad

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.sroa.7.0 = phi ptr [ %i.o, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.n, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %i.q = load i64, ptr %i.p, align 8, !range !15, !alias.scope !2851, !noundef !4
  %switch.i = icmp samesign ult i64 %i.q, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !2851 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !2851, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.t = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2851 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n, !noalias !2851

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !4, !noalias !2851 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !17, !invariant.load !4, !noalias !2851
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #34, !noalias !2851
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !4, !noalias !2851 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !17, !invariant.load !4, !noalias !2851
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #34, !noalias !2851
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o
  store i64 %.sroa.04.0, ptr %i.p, align 8
  store ptr %.sroa.6.0, ptr %i.r, align 8
  store ptr %.sroa.7.0, ptr %i.s, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.m, %bb.l, %bb.i
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !range !8, !noundef !4
  %i.ai = trunc nuw i8 %i.ah to i1                ; 3 uses
  br i1 %i.ai, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  %i.aj = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.p
  %.pn.i = phi ptr [ %i.am, %bb.s ], [ %i.ak, %bb.p ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = atomicrmw xchg ptr %i.ar, i64 3 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.u, label %bb.w

bb.s:                                             ; preds = %bb.q
  store ptr %i.am, ptr %i.b, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.r
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.aq)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ai, label %bb.x, label %.body28

bb.w:                                             ; preds = %bb.u, %bb.r
  br i1 %i.ai, label %bb.aa, label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2853)
  %i.av = load ptr, ptr %i.b, align 8, !alias.scope !2854, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !2854
  %i.aw = icmp eq i64 %1, 1
  br i1 %i.aw, label %bb.y, label %.body28

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body28 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  %i.ay = load ptr, ptr %i.b, align 8, !alias.scope !2857, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !2857
  %i.az = icmp eq i64 %2, 1
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ac unwind label %bb.f

bb.ac:                                            ; preds = %bb.aa, %bb.w, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.ad:                                            ; preds = %.body28
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvNtNtB3I_5utils7padding13pad_encodingss_0EEs_0E0uENtB5_3Job7executeB3I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  %i.c = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2876, !noundef !4
  %i.d = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2876, !noundef !4
  %i.e = sub i64 %i.c, %i.d
  %i.f = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2876, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !2876, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB6_8for_each15ForEachConsumerNCNvNtNtB1O_5utils7padding13pad_encodingss_0EEB1O_(i64 noundef %i.e, i1 noundef zeroext true, i64 noundef %i.f, i64 noundef %i.h, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.sroa.7.0.copyload)
          to label %bb.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body28:                                          ; preds = %bb.v, %bb.x, %bb.y, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.m, %bb.f ], [ %i.au, %bb.y ], [ %i.au, %bb.x ], [ %i.au, %bb.v ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ad

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.sroa.7.0 = phi ptr [ %i.o, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.n, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  %i.q = load i64, ptr %i.p, align 8, !range !15, !alias.scope !2877, !noundef !4
  %switch.i = icmp samesign ult i64 %i.q, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !2877 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !2877, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.t = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2877 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n, !noalias !2877

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !4, !noalias !2877 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !17, !invariant.load !4, !noalias !2877
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #34, !noalias !2877
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !4, !noalias !2877 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !17, !invariant.load !4, !noalias !2877
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #34, !noalias !2877
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o
  store i64 %.sroa.04.0, ptr %i.p, align 8
  store ptr %.sroa.6.0, ptr %i.r, align 8
  store ptr %.sroa.7.0, ptr %i.s, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.m, %bb.l, %bb.i
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !range !8, !noundef !4
  %i.ai = trunc nuw i8 %i.ah to i1                ; 3 uses
  br i1 %i.ai, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  %i.aj = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.p
  %.pn.i = phi ptr [ %i.am, %bb.s ], [ %i.ak, %bb.p ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = atomicrmw xchg ptr %i.ar, i64 3 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.u, label %bb.w

bb.s:                                             ; preds = %bb.q
  store ptr %i.am, ptr %i.b, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.r
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.aq)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ai, label %bb.x, label %.body28

bb.w:                                             ; preds = %bb.u, %bb.r
  br i1 %i.ai, label %bb.aa, label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  %i.av = load ptr, ptr %i.b, align 8, !alias.scope !2880, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !2880
  %i.aw = icmp eq i64 %1, 1
  br i1 %i.aw, label %bb.y, label %.body28

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body28 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %i.ay = load ptr, ptr %i.b, align 8, !alias.scope !2883, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !2883
  %i.az = icmp eq i64 %2, 1
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ac unwind label %bb.f

bb.ac:                                            ; preds = %bb.aa, %bb.w, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.ad:                                            ; preds = %.body28
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4WordNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvXs2_B39_NtB39_4WordNtNtB21_3fmt5Debug3fmt0EE9from_iterB3f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 1)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.h, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.n, %bb.b ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #33
          to label %common.resume unwind label %bb.l

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #33
          to label %.body unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.r

bb.l:                                             ; preds = %bb.d, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs2_NtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumerINtB5_13CollectResultTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7LatticeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 7)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 8, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.l
  store ptr %i.j, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.o, align 8
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBT_NtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterIBT_INtNtB8_2rc2RcINtNtB26_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENCNCNvXs3_B3S_NtB3S_7LatticeNtNtB26_3fmt7Display3fmt00EE9from_iterB3Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.h, %bb.b, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.ac, %bb.h ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtBG_6string6StringEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #33
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.i, %bb.c, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.v
  store ptr %i.t, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.y, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBT_NtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterIBT_INtNtB8_2rc2RcINtNtB26_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENCNCNvXs3_B3S_NtB3S_7LatticeNtNtB26_3fmt7Display3fmt00EE9from_iterB3Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
          to label %bb.f unwind label %bb.e

end_hunk_0
