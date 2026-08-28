Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtNtCsgbNVBrIJ05E_5rayon4iter3map3MapINtNtNtBX_5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2O_14UnigramTrainer21prune_sentence_pieces0EINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4B_5slice4iter6ChunksB1Y_EB2H_EE6reduceNCB2J_s0_0NCB2J_s_0EB2U_:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map7FlatMapINtNtNtBX_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2o_10BpeTrainer8do_trains_0EINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEB2g_EE7collectB5y_EB2u_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %1, align 8, !range !19, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 144, i1 false)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTTTmmElEjEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEBJ_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3s_10BpeTrainer8do_trains_0EE9from_iterB3y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.a), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map7FlatMapINtNtNtBa_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1B_10BpeTrainer8do_trains_0ENtB8_16ParallelIterator7collectINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtNtCsgbNVBrIJ05E_5rayon4iter9enumerate9EnumerateINtNtBX_5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerate9EnumerateINtNtNtB33_5slice4iter4IterB1Z_EEE3mapNCNvMs4_NtB23_7trainerNtB4E_10BpeTrainer11count_pairs0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB5q_B66_INtNtB5u_8hash_set8AHashSetjEEEEB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !3
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !28, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksB1B_EE3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3f_14UnigramTrainer10run_e_steps_0TdmINtNtB1G_3vec3VecdEEEB3l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !19, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.e, align 8
  store i64 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksB1B_EE3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3j_14UnigramTrainer21prune_sentence_pieces0TdINtNtB1J_3vec3VecdEIB4Z_IB4Z_jEEEEB3p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !19, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !91, !noalias !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !97, !noalias !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE10set_valuesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTBY_B1z_EEEBa_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.h = load atomic i32, ptr %0 monotonic, align 8, !noalias !103
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.i.i = phi i32 [ %i.h, %bb.a ], [ %i.l, %bb.c ] ; 3 uses
  %or.cond10.i.i.i = icmp ult i32 %.sroa.06.0.i.i, 1073741822
  br i1 %or.cond10.i.i.i, label %bb.c, label %.thread54

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i32 %.sroa.06.0.i.i, 1
  %i.j = cmpxchg weak ptr %0, i32 %.sroa.06.0.i.i, i32 %i.i acquire monotonic, align 4, !noalias !103 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock8try_read0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.b

_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock8try_read0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103
  invoke void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEE3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %.thread51

.thread54:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %i.m, align 8, !alias.scope !103
  store i64 1, ptr %i.g, align 8, !alias.scope !103
  br label %.thread64

.thread51:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i39, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i29, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock8try_read0ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock8try_read0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.n = load i64, ptr %i.b, align 8, !range !19, !noalias !103, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !103, !nonnull !3, !noundef !3 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !103, !nonnull !3, !align !29, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.s, align 8, !alias.scope !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.r, ptr %i.t, align 8, !alias.scope !103
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !103
  %i.u = trunc nuw i64 %i.n to i1
  br i1 %i.u, label %.thread64, label %bb.f

bb.e:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pre = load i64, ptr %i.g, align 8, !range !19
  %i.v = trunc nuw i64 %.pre to i1
  br i1 %i.v, label %.thread64, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit41

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.r, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %.not = icmp ult i64 %i.y, %i.aa
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecB2j_EEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i64, ptr %i.g, align 8, !range !19, !noundef !3
  %2 = trunc nuw i64 %i.ac to i1
  %i.ad = load ptr, ptr %i.s, align 8
  %3 = icmp ne ptr %i.ad, null
  %or.cond62 = select i1 %2, i1 %3, i1 false
  br i1 %or.cond62, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i34.a, label %.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecB2j_EEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ae = load i64, ptr %i.g, align 8, !range !19, !noundef !3
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = load ptr, ptr %i.s, align 8
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not = select i1 %i.af, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecB2j_EEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.thread51

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecB2j_EEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ah = load atomic i32, ptr %0 monotonic, align 8, !noalias !106
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.06.0.i.i11 = phi i32 [ %i.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.am, %bb.k ] ; 3 uses
  %i.ai = and i32 %.sroa.06.0.i.i11, 1073741823
  %.not63 = icmp eq i32 %i.ai, 0
  br i1 %.not63, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit31

bb.k:                                             ; preds = %bb.j
  %i.aj = or disjoint i32 %.sroa.06.0.i.i11, 1073741823
  %i.ak = cmpxchg weak ptr %0, i32 %.sroa.06.0.i.i11, i32 %i.aj acquire monotonic, align 4, !noalias !106 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  %i.am = extractvalue { i32, i1 } %i.ak, 0
  br i1 %i.al, label %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.j

_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !106
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.l, !prof !109

bb.l:                                             ; preds = %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc14 unwind label %.thread51

.noexc14:                                         ; preds = %bb.l
  %i.as = xor i1 %i.ar, true
  %i.at = zext i1 %i.as to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc14, %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.01.0.i.i = phi i8 [ %i.at, %.noexc14 ], [ 0, %_RINvMs14_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECs2JiOgHzbbc7_10tokenizers.exit.i ]
  %i.au = load atomic i8, ptr %i.an monotonic, align 8, !noalias !106
  %i.av = icmp ne i8 %i.au, 0
  invoke void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2f_3vec3VecB2b_EEENCNvMse_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.av, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %0)
          to label %bb.m unwind label %.thread51

bb.m:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit.i
  %i.aw = load i64, ptr %i.a, align 8, !range !19, !noalias !106, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !106, !nonnull !3, !align !28, !noundef !3 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !range !32, !noalias !106, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.ay, ptr %i.bb, align 8, !alias.scope !106
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i8 %i.ba, ptr %i.bc, align 8, !alias.scope !106
  store i64 %i.aw, ptr %i.e, align 8, !alias.scope !106
  %i.bd = trunc nuw i64 %i.aw to i1
  br i1 %i.bd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i29, label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ay, ptr %i.d, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.ba, ptr %i.bf, align 8
  %i.bg = load i64, ptr %i.z, align 8, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.bk = sub i64 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.bk, ptr %i.bl, align 8, !alias.scope !110, !noalias !113
  invoke void @_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBT_3vec3VecBP_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBP_B1q_EE6extendINtNtNtB2H_8adapters4take4TakeINtNtNtB2H_7sources4once4OnceB3t_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit18 unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.q ], [ %i.be, %bb.n ] ; 2 uses
  %i.bm = load i64, ptr %i.e, align 8, !range !19, !noundef !3
  %4 = trunc nuw i64 %i.bm to i1
  %i.bn = load i8, ptr %i.bc, align 8, !range !115
  %5 = icmp ne i8 %i.bn, 2
  %or.cond61 = select i1 %4, i1 %5, i1 false
  br i1 %or.cond61, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i24, label %.thread47

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit18: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bp = load i64, ptr %i.e, align 8, !range !19, !noundef !3
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = load i8, ptr %i.bc, align 8, !range !115
  %.not.i.i19 = icmp ne i8 %i.br, 2
  %or.cond60.not = select i1 %i.bq, i1 %.not.i.i19, i1 false
  br i1 %or.cond60.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit18
  call void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bb)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit41, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit31, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i34.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i24, %bb.n, %.thread
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i24: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %.thread47 unwind label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i29: ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit31 unwind label %.thread51

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit31: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1f_3vec3VecB1b_EEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %1)
  br label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i34.a: ; preds = %bb.i
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.thread unwind label %bb.s

.thread64:                                        ; preds = %bb.d, %.thread54, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !116
  %.not.i.i37 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i37, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit41, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i39

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i39: ; preds = %.thread64
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit41 unwind label %.thread51

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit41: ; preds = %.thread64, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i39, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1f_3vec3VecB1b_EEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %1)
  br label %bb.r

.thread47:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i24, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit, %.thread
  %.pn544 = phi { ptr, i32 } [ %.pn545, %.thread ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i24 ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit ]
  resume { ptr, i32 } %.pn544

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i34.a, %bb.i, %.thread51
  %.pn545 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread51 ], [ %i.ab, %bb.i ], [ %i.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i34.a ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1f_3vec3VecB1b_EEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %1) #33
          to label %.thread47 unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE3geteEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.d = load atomic i32, ptr %1 monotonic, align 8, !noalias !119
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.i.i = phi i32 [ %i.d, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %or.cond10.i.i.i = icmp ult i32 %.sroa.06.0.i.i, 1073741822
  br i1 %or.cond10.i.i.i, label %bb.c, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i32 %.sroa.06.0.i.i, 1
  %i.f = cmpxchg weak ptr %1, i32 %.sroa.06.0.i.i, i32 %i.e acquire monotonic, align 4, !noalias !119 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8, !alias.scope !119
  store i64 1, ptr %i.c, align 8, !alias.scope !119
  br label %bb.d

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119
  call void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEE3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1), !noalias !119
  %i.j = load i64, ptr %i.a, align 8, !range !19, !noalias !119, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !noalias !119
  %i.n = load ptr, ptr %i.k, align 8, !noalias !119, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  store <2 x ptr> %i.m, ptr %i.l, align 8, !alias.scope !119
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !119
  %i.o = trunc nuw i64 %i.j to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers.exit.thread, %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers.exit
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !122, !noalias !125, !noundef !3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !133, !noalias !134, !noundef !3 ; 2 uses
  %i.y = load ptr, ptr %i.n, align 8, !alias.scope !133, !noalias !134, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.ar, %bb.i ]
  %.pn.i.i.i = phi i64 [ %i.t, %.noexc ], [ %i.as, %bb.i ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.x    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !137 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.sroa.06.0.i33.i.i = phi i16 [ %i.aq, %bb.h ], [ %i.ad, %bb.g ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.x
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -48
  %i.al = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
          to label %.noexc3 unwind label %.loopexit

.noexc3:                                          ; preds = %.lr.ph.i.i
  br i1 %i.al, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, label %bb.h, !prof !109

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.i, label %select.unfold, !prof !75

bb.h:                                             ; preds = %.noexc3
  %i.ap = add i16 %.sroa.06.0.i33.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i, %i.ar
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = load i64, ptr %i.c, align 8, !range !19, !alias.scope !140, !noundef !3
  %4 = trunc nuw i64 %i.at to i1
  %i.au = load ptr, ptr %i.l, align 8, !alias.scope !140
  %.not.i.i = icmp eq ptr %i.au, null
  %or.cond.i = select i1 %4, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i: ; preds = %bb.j
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.m

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc3
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.k unwind label %.loopexit.split-lp

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.e
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %select.unfold, %bb.k, %bb.d
  %i.aw = load i64, ptr %i.c, align 8, !range !19, !alias.scope !143, !noundef !3
  %5 = trunc nuw i64 %i.aw to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !143
  %.not.i.i5 = icmp eq ptr %i.ay, null
  %or.cond.i6 = select i1 %5, i1 %.not.i.i5, i1 false
  br i1 %or.cond.i6, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit8, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i7

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i7: ; preds = %bb.l
  call void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit8: ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2H_3vec3VecB2D_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !146, !inline_history !149 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !146, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !146, !noundef !3
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !146
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE4withNCNvMs5_NtB2X_5modelNtB43_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6s_4SyncEL_EEEB31_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.n = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(80) null), !noalias !153, !inline_history !155 ; 10 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.p = load i64, ptr %i.n, align 8, !noalias !159, !noundef !3
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !109

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.n, align 8, !noalias !159
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %2, align 8, !alias.scope !161, !noalias !162, !nonnull !3, !align !28, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !159, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !159
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtB15_12random_state11RandomStateE11rustc_entryB2q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %i.t)
          to label %bb.e unwind label %.loopexit.split-lp.i.i, !noalias !159

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32, !noalias !159
  unreachable

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp.i.i:                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolEEB1f_.exit.i.i.i, %bb.m, %select.unfold.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteEB1x_.exit.i.i, %bb.i, %.noexc27.i.i, %.noexc26.i.i, %.noexc25.i.i, %.noexc.i.i, %bb.f, %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.d, align 8, !noalias !159, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.443.0.copyload.i.i = load i64, ptr %i.v, align 8, !noalias !159
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.544.0.copyload.i.i = load i64, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  %i.w = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !159 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !noalias !163, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !163, !nonnull !3, !align !28, !noundef !3
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.i.i, !noalias !159 ; 2 uses

.noexc25.i.i:                                     ; preds = %.noexc.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !3, !noalias !163, !nonnull !3
  %i.ad = invoke noundef i64 %i.ac(ptr noundef nonnull %i.x)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.i.i, !noalias !159, !inline_history !170

.noexc26.i.i:                                     ; preds = %.noexc25.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, i64 noundef %i.ad)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.i.i, !noalias !159

.noexc27.i.i:                                     ; preds = %.noexc26.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @31, i64 32, i1 false), !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171
  store i64 %.sroa.544.0.copyload.i.i, ptr %i.b, align 8, !noalias !171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !171
  %i.ah = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE14insert_no_growB2g_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %.sroa.443.0.copyload.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc28.i.i unwind label %.loopexit.split-lp.i.i, !noalias !159

.noexc28.i.i:                                     ; preds = %.noexc27.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.v, align 8, !noalias !159, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc28.i.i
  %.pn.i.i.i = phi ptr [ %i.ah, %.noexc28.i.i ], [ %i.ai, %bb.g ] ; 4 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !161, !noalias !162, !nonnull !3, !align !28, !noundef !3 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !159, !nonnull !3, !noundef !3 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !159, !noundef !3 ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !172, !noalias !175, !noundef !3
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %select.unfold.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -32
  %i.as = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.an)
          to label %.noexc31.i.i unwind label %.loopexit.split-lp.i.i, !noalias !159 ; 2 uses

.noexc31.i.i:                                     ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.at = lshr i64 %i.as, 57
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !183, !noalias !184, !noundef !3 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !alias.scope !183, !noalias !184, !nonnull !3, !noundef !3 ; 2 uses
  %i.ay = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.noexc31.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc31.i.i ], [ %i.bq, %bb.l ]
  %.pn.i.i.i.i.i = phi i64 [ %i.as, %.noexc31.i.i ], [ %i.br, %bb.l ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.aw ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.ba, align 1, !noalias !187 ; 2 uses
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.az
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.bp, %bb.k ], [ %i.bc, %bb.j ] ; 3 uses
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.01.0.i.i.i.i.i, %i.be
  %i.bg = and i64 %i.bf, %i.aw
  %i.bh = sub nsw i64 0, %i.bg
end_hunk_0
begin_hunk_1_@_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB1Q_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB1O_3map11MapConsumerINtNtB1O_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5h_14UnigramTrainer10run_e_steps1_0NCB5c_s0_0ENCB5c_s_0EE0NCB1H_s_0TdmINtNtB3E_3vec3VecdEEB7i_E0TB7i_B7i_EEB5n_:bb.a
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load <2 x ptr>, ptr %i.a, align 16       ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 16 ; 4 uses
  %i.j = icmp ne i64 %.sroa.5.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.sroa.5.0.copyload, -9223372036854775808
  %i.l = icmp slt i64 %.sroa.5.0.copyload, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.e [
    i64 0, label %.noexc
    i64 1, label %bb.f
    i64 2, label %.noexc12
  ], !prof !210

bb.e:                                             ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc12:                                         ; preds = %bb.d
  %i.n = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !492, !noalias !498
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx4.i, align 8, !alias.scope !492, !noalias !498
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx16, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6E_14UnigramTrainer10run_e_steps1_0NCB6z_s0_0ENCB6z_s_0EE0NCB34_s_0TdmINtNtB51_3vec3VecdEEB8F_E0TB8F_B8F_EE0B98_EEB6K_.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6E_14UnigramTrainer10run_e_steps1_0NCB6z_s0_0ENCB6z_s_0EE0NCB34_s_0TdmINtNtB51_3vec3VecdEEB8F_E0TB8F_B8F_EE0B98_EEB6K_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB1Q_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB1O_3map11MapConsumerINtNtB1O_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5l_14UnigramTrainer21prune_sentence_piecess0_0NCB5g_s_0ENCB5g_0EE0NCB1H_s_0TdINtNtB3H_3vec3VecdEIB7x_IB7x_jEEEB7u_E0TB7u_B7u_EEB5r_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6f_14UnigramTrainer21prune_sentence_piecess0_0NCB6a_s_0ENCB6a_0EE0NCB2B_s_0TdINtNtB4B_3vec3VecdEIB8r_IB8r_jEEEB8o_E0TB8o_B8o_EE0B93_ENtB5_3Job7executeB6l_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !109

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  %i.j = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.sroa.0.0.copyload, -9223372036854775808
  %i.l = icmp slt i64 %.sroa.0.0.copyload, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.e [
    i64 0, label %.noexc
    i64 1, label %bb.f
    i64 2, label %.noexc11
  ], !prof !210

bb.e:                                             ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.n = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !500, !noalias !506
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !alias.scope !500, !noalias !506
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx15, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6I_14UnigramTrainer21prune_sentence_piecess0_0NCB6D_s_0ENCB6D_0EE0NCB34_s_0TdINtNtB54_3vec3VecdEIB8U_IB8U_jEEEB8R_E0TB8R_B8R_EE0B9w_EEB6O_.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1o_IB1o_jEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6I_14UnigramTrainer21prune_sentence_piecess0_0NCB6D_s_0ENCB6D_0EE0NCB34_s_0TdINtNtB54_3vec3VecdEIB8U_IB8U_jEEEB8R_E0TB8R_B8R_EE0B9w_EEB6O_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1p_(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val.i = load ptr, ptr %i.a, align 8           ; 22 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !3 ; 26 uses
  %i.c = icmp ult i64 %.val1.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %.8.val, %.val1.i
  br i1 %i.d, label %_RNvXs6_CskEsHVYarYHE_9dary_heapINtB5_13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 %.val1.i, %.8.val                ; 3 uses
  %i.f = icmp ult i64 %.8.val, %i.e
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %.val1.i, 1025
  %i.h = shl nuw nsw i64 %.val1.i, 2              ; 2 uses
  br i1 %i.g, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %bb.c
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8.val, i1 false)
  %i.j = sub nsw i64 63, %i.i
  %i.k = mul nsw i64 %i.j, 3
  %i.l = mul i64 %i.k, %i.e
  %i.m = icmp ult i64 %i.h, %i.l
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = mul i64 %i.e, 27
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.i.i
  %i.p = icmp ult i64 %.8.val, %.val1.i
  br i1 %i.p, label %.lr.ph.i.i, label %_RNvXs6_CskEsHVYarYHE_9dary_heapINtB5_13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %bb.k

bb.f:                                             ; preds = %.split.i.i, %bb.b
  %i.q = icmp samesign ult i64 %.val1.i, 2
  br i1 %i.q, label %_RNvXs6_CskEsHVYarYHE_9dary_heapINtB5_13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.d
  %i.r = add nsw i64 %.val1.i, -1
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 576460752303423488) %.val1.i, i64 4) ; 2 uses
  %i.v = add nsw i64 %.val1.i, -3
  %lcmp.mod.not = trunc i64 %.val1.i to i1
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i, %.thread.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.t, %.thread.i.i ], [ %i.w, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i ]
  %i.w = add nsw i64 %.sroa.0.03.i.i.i, -1        ; 7 uses
  %i.x = icmp ult i64 %i.w, %.val1.i
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.w ; 2 uses
  %.sroa.036.0.copyload.i.i.i.i = load i64, ptr %i.y, align 8 ; 3 uses
  %.sroa.437.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.z = load <2 x i32>, ptr %.sroa.437.0..sroa_idx.i.i.i.i, align 8
  %.sroa.437.0.copyload.i.i.i.i = load i32, ptr %.sroa.437.0..sroa_idx.i.i.i.i, align 8 ; 4 uses
  %.sroa.01.0.in42.i.i.i.i = shl nuw nsw i64 %i.w, 2 ; 4 uses
  %.sroa.01.043.i.i.i.i = or disjoint i64 %.sroa.01.0.in42.i.i.i.i, 1 ; 2 uses
  %.not.not44.i.i.i.i = icmp samesign ult i64 %.sroa.01.0.in42.i.i.i.i, %i.u
  br i1 %.not.not44.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.g
  %.sroa.2625.0.lcssa.i.i.i.i = phi i64 [ %i.w, %bb.g ], [ %spec.select.i29.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.01.0.in.lcssa.i.i.i.i = phi i64 [ %.sroa.01.0.in42.i.i.i.i, %bb.g ], [ %.sroa.01.0.in.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ %.sroa.01.043.i.i.i.i, %bb.g ], [ %.sroa.01.0.i.i.i.i, %bb.j ] ; 5 uses
  %.sroa.04.01.i.i.i.i.i = or disjoint i64 %.sroa.01.0.in.lcssa.i.i.i.i, 2 ; 5 uses
  %i.aa = icmp samesign ult i64 %.sroa.04.01.i.i.i.i.i, %.val1.i
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.01.0.lcssa.i.i.i.i ; 2 uses
  %.val.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8 ; 3 uses
  %.phi.trans.insert5.i.i.i.i.i = getelementptr i8, ptr %.phi.trans.insert.i.i.i.i.i, i64 8
  %.val6.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert5.i.i.i.i.i, align 8 ; 4 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = icmp ult i64 %.sroa.01.0.lcssa.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp samesign ult i64 %.sroa.04.01.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.04.01.i.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.i.prol = load i64, ptr %i.ad, align 8 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val8.i.i.i.i.i.prol = load i32, ptr %i.ae, align 8, !noundef !3 ; 3 uses
  %.not.i.i.i.i.i.i.i.prol = icmp eq i32 %.val6.pre.i.i.i.i.i, %.val8.i.i.i.i.i.prol
  %i.af = icmp ule i32 %.val8.i.i.i.i.i.prol, %.val6.pre.i.i.i.i.i
  %i.ag = icmp ule i64 %.val7.i.i.i.i.i.prol, %.val.pre.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.prol = select i1 %.not.i.i.i.i.i.i.i.prol, i1 %i.ag, i1 %i.af ; 3 uses
  %spec.select.i.i.i.i.i.prol = select i1 %.sroa.0.0.i.i.i.i.i.i.i.prol, i64 %.sroa.04.01.i.i.i.i.i, i64 %.sroa.01.0.lcssa.i.i.i.i ; 2 uses
  %.sroa.04.0.i.i.i.i.i.prol = or disjoint i64 %.sroa.01.0.in.lcssa.i.i.i.i, 3
  %i.ah = select i1 %.sroa.0.0.i.i.i.i.i.i.i.prol, i64 %.val7.i.i.i.i.i.prol, i64 %.val.pre.i.i.i.i.i
  %i.ai = select i1 %.sroa.0.0.i.i.i.i.i.i.i.prol, i32 %.val8.i.i.i.i.i.prol, i32 %.val6.pre.i.i.i.i.i
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i
  %spec.select.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.val6.i.i.i.i.i.unr = phi i32 [ %.val6.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.val.i.i.i.i.i.unr = phi i64 [ %.val.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %.sroa.04.03.i.i.i.i.i.unr = phi i64 [ %.sroa.04.01.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.02.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %i.v, %.sroa.01.0.in.lcssa.i.i.i.i
  br i1 %i.aj, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.new
  %.val6.i.i.i.i.i = phi i32 [ %i.ay, %.lr.ph.i.i.i.i.i.new ], [ %.val6.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.val.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.new ], [ %.val.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.04.03.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.new ], [ %.sroa.04.03.i.i.i.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.02.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.new ], [ %.sroa.0.02.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.0.02.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i64 %.sroa.04.03.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.04.03.i.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.i = load i64, ptr %i.am, align 8 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 8, !noundef !3 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val6.i.i.i.i.i, %.val8.i.i.i.i.i
  %i.ao = icmp ule i32 %.val8.i.i.i.i.i, %.val6.i.i.i.i.i
  %i.ap = icmp ule i64 %.val7.i.i.i.i.i, %.val.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.ap, i1 %i.ao ; 3 uses
  %spec.select.i.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.04.03.i.i.i.i.i, i64 %.sroa.0.02.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = add nuw nsw i64 %.sroa.04.03.i.i.i.i.i, 1 ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i.i.i.i.i.i, i64 %.val7.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %i.ar = select i1 %.sroa.0.0.i.i.i.i.i.i.i, i32 %.val8.i.i.i.i.i, i32 %.val6.i.i.i.i.i ; 3 uses
  %i.as = icmp samesign ult i64 %.sroa.04.0.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.i.1 = load i64, ptr %i.at, align 8 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val8.i.i.i.i.i.1 = load i32, ptr %i.au, align 8, !noundef !3 ; 3 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i32 %i.ar, %.val8.i.i.i.i.i.1
  %i.av = icmp ule i32 %.val8.i.i.i.i.i.1, %i.ar
  %i.aw = icmp ule i64 %.val7.i.i.i.i.i.1, %i.aq
  %.sroa.0.0.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i1 %i.aw, i1 %i.av ; 3 uses
  %spec.select.i.i.i.i.i.1 = select i1 %.sroa.0.0.i.i.i.i.i.i.i.1, i64 %.sroa.04.0.i.i.i.i.i, i64 %spec.select.i.i.i.i.i ; 2 uses
  %.sroa.04.0.i.i.i.i.i.1 = add nuw nsw i64 %.sroa.04.03.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.04.0.i.i.i.i.i.1, %.val1.i
  %i.ax = select i1 %.sroa.0.0.i.i.i.i.i.i.i.1, i64 %.val7.i.i.i.i.i.1, i64 %i.aq
  %i.ay = select i1 %.sroa.0.0.i.i.i.i.i.i.i.1, i32 %.val8.i.i.i.i.i.1, i32 %i.ar
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.new

_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.new, %._crit_edge.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.01.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.new ] ; 3 uses
  %i.az = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i.i, %.val1.i
  br i1 %i.az, label %bb.h, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i

bb.h:                                             ; preds = %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.0.lcssa.i.i.i.i.i ; 3 uses
  %.val18.i.i.i.i = load i64, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val19.i.i.i.i = load i32, ptr %i.bb, align 8, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.437.0.copyload.i.i.i.i, %.val19.i.i.i.i
  %i.bc = icmp ult i32 %.val19.i.i.i.i, %.sroa.437.0.copyload.i.i.i.i
  %i.bd = icmp ult i64 %.val18.i.i.i.i, %.sroa.036.0.copyload.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.bd, i1 %i.bc
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.2625.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  br label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.j
  %.sroa.01.047.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i, %bb.j ], [ %.sroa.01.043.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.01.0.in46.i.i.i.i = phi i64 [ %.sroa.01.0.in.i.i.i.i, %bb.j ], [ %.sroa.01.0.in42.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.2625.045.i.i.i.i = phi i64 [ %spec.select.i29.i.i.i.i, %bb.j ], [ %i.w, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.01.047.i.i.i.i ; 2 uses
  %i.bg = or disjoint i64 %.sroa.01.0.in46.i.i.i.i, 2 ; 2 uses
  %i.bh = icmp samesign ult i64 %i.bg, %.val1.i
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.bg ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.bf, align 8
  %i.bj = getelementptr i8, ptr %i.bf, i64 8
  %.val4.i.i.i.i.i.i = load i32, ptr %i.bj, align 8, !noundef !3 ; 2 uses
  %.val5.i.i.i.i.i.i = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  %.val6.i.i.i.i.i.i = load i32, ptr %i.bk, align 8, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val4.i.i.i.i.i.i, %.val6.i.i.i.i.i.i
  %i.bl = icmp ule i32 %.val6.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  %i.bm = icmp ule i64 %.val5.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.bm, i1 %i.bl
  %i.bn = zext i1 %.sroa.0.0.i.i.i.i.i.i.i.i to i64
  %i.bo = add nuw nsw i64 %.sroa.01.047.i.i.i.i, %i.bn ; 3 uses
  %i.bp = or disjoint i64 %.sroa.01.0.in46.i.i.i.i, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.bp ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.01.0.in46.i.i.i.i, 4 ; 2 uses
  %i.bs = icmp samesign ult i64 %i.br, %.val1.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.br ; 2 uses
  %.val.i12.i.i.i.i.i = load i64, ptr %i.bq, align 8
  %i.bu = getelementptr i8, ptr %i.bq, i64 8
  %.val4.i13.i.i.i.i.i = load i32, ptr %i.bu, align 8, !noundef !3 ; 2 uses
  %.val5.i14.i.i.i.i.i = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  %.val6.i15.i.i.i.i.i = load i32, ptr %i.bv, align 8, !noundef !3 ; 2 uses
  %.not.i.i.i16.i.i.i.i.i = icmp eq i32 %.val4.i13.i.i.i.i.i, %.val6.i15.i.i.i.i.i
  %i.bw = icmp ule i32 %.val6.i15.i.i.i.i.i, %.val4.i13.i.i.i.i.i
  %i.bx = icmp ule i64 %.val5.i14.i.i.i.i.i, %.val.i12.i.i.i.i.i
  %.sroa.0.0.i.i.i17.i.i.i.i.i = select i1 %.not.i.i.i16.i.i.i.i.i, i1 %i.bx, i1 %i.bw
  %i.by = zext i1 %.sroa.0.0.i.i.i17.i.i.i.i.i to i64
  %i.bz = add nuw nsw i64 %i.bp, %i.by            ; 3 uses
  %i.ca = icmp ult i64 %i.bo, %.val1.i
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.bo ; 2 uses
  %i.cc = icmp samesign ult i64 %i.bz, %.val1.i
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.bz ; 2 uses
  %.val.i24.i.i.i.i = load i64, ptr %i.cb, align 8
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %.val5.i.i.i.i.i = load i32, ptr %i.ce, align 8, !noundef !3 ; 2 uses
  %.val6.i25.i.i.i.i = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  %.val7.i26.i.i.i.i = load i32, ptr %i.cf, align 8, !noundef !3 ; 2 uses
  %.not.i.i.i27.i.i.i.i = icmp eq i32 %.val5.i.i.i.i.i, %.val7.i26.i.i.i.i
  %i.cg = icmp ule i32 %.val7.i26.i.i.i.i, %.val5.i.i.i.i.i
  %i.ch = icmp ule i64 %.val6.i25.i.i.i.i, %.val.i24.i.i.i.i
  %.sroa.0.0.i.i.i28.i.i.i.i = select i1 %.not.i.i.i27.i.i.i.i, i1 %i.ch, i1 %i.cg
  %spec.select.i29.i.i.i.i = select i1 %.sroa.0.0.i.i.i28.i.i.i.i, i64 %i.bz, i64 %i.bo ; 4 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %spec.select.i29.i.i.i.i ; 3 uses
  %.val22.i.i.i.i = load i64, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val23.i.i.i.i = load i32, ptr %i.cj, align 8, !noundef !3 ; 2 uses
  %.not.i.i30.i.i.i.i = icmp eq i32 %.sroa.437.0.copyload.i.i.i.i, %.val23.i.i.i.i
  %i.ck = icmp uge i32 %.val23.i.i.i.i, %.sroa.437.0.copyload.i.i.i.i
  %i.cl = icmp uge i64 %.val22.i.i.i.i, %.sroa.036.0.copyload.i.i.i.i
  %.sroa.0.0.i.i31.i.i.i.i = select i1 %.not.i.i30.i.i.i.i, i1 %i.cl, i1 %i.ck
  br i1 %.sroa.0.0.i.i31.i.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.2625.045.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false)
  %.sroa.01.0.in.i.i.i.i = shl nuw nsw i64 %spec.select.i29.i.i.i.i, 2 ; 4 uses
  %.sroa.01.0.i.i.i.i = or disjoint i64 %.sroa.01.0.in.i.i.i.i, 1 ; 2 uses
  %.not.not.i.i.i.i = icmp samesign ult i64 %.sroa.01.0.in.i.i.i.i, %i.u
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.i, %bb.h, %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i
  %.sroa.2625.045.lcssa.sink.i.i.i.i = phi i64 [ %.sroa.2625.0.lcssa.i.i.i.i, %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i.i.i, %bb.i ], [ %.sroa.2625.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.2625.045.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.2625.045.lcssa.sink.i.i.i.i ; 2 uses
  store i64 %.sroa.036.0.copyload.i.i.i.i, ptr %i.cn, align 8
  %.sroa.24.16..sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store <2 x i32> %i.z, ptr %.sroa.24.16..sroa_idx17.i.i.i.i, align 8
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_RNvXs6_CskEsHVYarYHE_9dary_heapINtB5_13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_.exit, label %bb.g

bb.k:                                             ; preds = %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E7sift_upBQ_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.04.i.i = phi i64 [ %.8.val, %.lr.ph.i.i ], [ %i.co, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E7sift_upBQ_.exit.i.i ] ; 4 uses
  %i.co = add nuw nsw i64 %.sroa.0.04.i.i, 1      ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.04.i.i ; 2 uses
  %.sroa.023.0.copyload.i.i.i = load i64, ptr %i.cp, align 8 ; 2 uses
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cq = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8
  %.sroa.424.0.copyload.i.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.not26.i.i.i = icmp eq i64 %.sroa.0.04.i.i, 0
  br i1 %.not26.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E7sift_upBQ_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.sroa.1414.027.i.i.i = phi i64 [ %i.cs, %bb.l ], [ %.sroa.0.04.i.i, %bb.k ] ; 3 uses
  %i.cr = add i64 %.sroa.1414.027.i.i.i, -1
  %i.cs = lshr i64 %i.cr, 2                       ; 4 uses
  %i.ct = icmp samesign ult i64 %i.cs, %.val1.i
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.cs ; 3 uses
  %.val2.i.i.i = load i64, ptr %i.cu, align 8
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val3.i.i.i = load i32, ptr %i.cv, align 8, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.424.0.copyload.i.i.i, %.val3.i.i.i
  %i.cw = icmp ule i32 %.val3.i.i.i, %.sroa.424.0.copyload.i.i.i
  %i.cx = icmp ule i64 %.val2.i.i.i, %.sroa.023.0.copyload.i.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.cx, i1 %i.cw
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E7sift_upBQ_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.1414.027.i.i.i
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE3newB9_:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5, i64 71, i1 false)
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
  %.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.ai, %bb.g ]
  %i.aj = load i64, ptr %i.c, align 8, !range !19, !noundef !3
  %2 = trunc nuw i64 %i.aj to i1
  %i.ak = load i8, ptr %i.aa, align 8, !range !115
  %3 = icmp ne i8 %i.ak, 2
  %or.cond = select i1 %2, i1 %3, i1 false
  br i1 %or.cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit
  resume { ptr, i32 } %.pn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2o_3vec3VecB2k_EEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i5: ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers.exit, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit6: ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison12TryLockErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2I_3vec3VecB2E_EEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i5, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs2_CskqoA5J4kFRc_10rayon_condINtB5_12CondIteratorINtNtCsgbNVBrIJ05E_5rayon5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB1p_EE9enumerateB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !19, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.sink2 = select i1 %i.b, ptr %i.d, ptr null
  %.sink = select i1 %i.b, i64 0, i64 %i.f
  %.val.cast = inttoptr i64 %i.f to ptr
  %.sink1 = select i1 %i.b, ptr %.val.cast, ptr %i.d
  store ptr %.sink2, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word13with_capacity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.b = load i64, ptr %i.a, align 8, !range !19, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !74, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word3add(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = add nsw i64 %i.b, -1                     ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.b, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.01.0 = phi i64 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.i = load i64, ptr %0, align 8, !range !512, !alias.scope !1331, !noalias !1334, !noundef !3
  %i.j = icmp eq i64 %i.b, %i.i
  br i1 %i.j, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8push_mutBM_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !1334
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8push_mutBM_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8push_mutBM_.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1331, !noalias !1334, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.b ; 4 uses
  store i64 %.sroa.01.0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = add nuw nsw i64 %i.b, 1
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !1331, !noalias !1334
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word5merge(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 10 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 8 uses
  %i.h = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  %.not77.not = icmp eq i64 %i.g, 0
  br i1 %.not77.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %bb.a, label %bb.o

bb.a:                                             ; preds = %.lr.ph
  %.not135 = icmp eq i64 %i.g, 1
  br i1 %.not135, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load i32, ptr %i.n, align 8, !noundef !3
  %i.p = icmp eq i32 %i.o, %3
  br i1 %i.p, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !3
  %i.s = load i64, ptr %i.j, align 8, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noundef !3
  %i.x = add i64 %i.w, %i.r                       ; 2 uses
  %i.y = load i64, ptr %1, align 8, !range !512, !alias.scope !1336, !noalias !1339, !noundef !3
  %i.z = icmp eq i64 %i.g, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %..noexc30.peel_crit_edge unwind label %.loopexit.loopexit.split-lp

..noexc30.peel_crit_edge:                         ; preds = %bb.d
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !1336, !noalias !1339
  br label %bb.e

bb.e:                                             ; preds = %..noexc30.peel_crit_edge, %bb.c
  %i.aa = phi ptr [ %.pre, %..noexc30.peel_crit_edge ], [ %i.j, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = shl nuw nsw i64 %i.g, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ac, i1 false), !noalias !1339
  store i64 %i.s, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %.sroa.5.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx.peel, align 8
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %4, ptr %.sroa.6.0..sroa_idx.peel, align 8
  %i.ad = add nuw nsw i64 %i.g, 1
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !1336, !noalias !1339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6removeBL_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61)
end_hunk_2
begin_hunk_3_@_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word9merge_all:bb.a
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.12.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 4                 ; 6 uses
  %i.h = alloca [8 x i8], align 4                 ; 6 uses
  %i.i = alloca [8 x i8], align 4                 ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 20 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 5 uses
  %i.p = icmp ult i64 %i.o, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1363
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 288230376151711744) %i.o, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !1363
  %i.q = load i64, ptr %i.e, align 8, !range !19, !noalias !1363, !noundef !3
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !74, !noalias !1363, !noundef !3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %_RNvMs7_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E13with_capacityBQ_.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !1363
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #32, !noalias !1363
  unreachable

_RNvMs7_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E13with_capacityBQ_.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !noalias !1363, !nonnull !3, !noundef !3
  %i.x = icmp samesign ule i64 %i.o, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1363
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !1363
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1363
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.d unwind label %bb.c

.body94:                                          ; preds = %bb.bk, %bb.c, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.c ], [ %i.mo, %bb.bk ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #33
          to label %common.resume unwind label %bb.bp

bb.c:                                             ; preds = %bb.bl, %bb.e, %_RNvMs7_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E13with_capacityBQ_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.d:                                             ; preds = %_RNvMs7_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E13with_capacityBQ_.exit
  %i.z = load i64, ptr %i.f, align 8, !range !19, !noundef !3
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !74, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !75

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #32
          to label %bb.ae unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ac, ptr %i.k, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1366, !noalias !1369, !noundef !3 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 576460752303423488
  tail call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1371
  store ptr %i.aj, ptr %i.d, align 8, !alias.scope !1372, !noalias !1366
  %.sroa.4.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx96, align 8, !alias.scope !1372, !noalias !1366
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1372, !noalias !1366
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1372, !noalias !1366
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1372, !noalias !1366
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2b_9enumerate9EnumerateINtNtNtB2f_5slice4iter7WindowsNtBS_6SymbolEENCNvMs3_BS_NtBS_4Word9merge_all0EE11spec_extendBY_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.h unwind label %bb.g, !noalias !1369

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1p_(ptr nonnull align 8 dereferenceable(24) %i.l, i64 %i.ak) #33, !noalias !1369
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i62
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i43
  %lpad.loopexit129 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i
  %lpad.loopexit132 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bh, %bb.bd, %bb.az, %bb.av, %bb.ai, %bb.z, %bb.u, %bb.p, %bb.w
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E3popBQ_.exit
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.r, %bb.s, %bb.ab, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ff, %bb.ab ], [ %i.ef, %bb.r ], [ %i.ef, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit129, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit132, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit136, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp137, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #33
          to label %.body94 unwind label %bb.bp

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1371
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1p_(ptr nonnull align 8 dereferenceable(24) %i.l, i64 %i.ak), !noalias !1369
  %i.an = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1376, !noalias !1379, !noundef !3 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E3popBQ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %.sroa.698.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.698.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ap = trunc nuw i32 %2 to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.backedge
  %i.at = phi i64 [ %i.o, %.lr.ph ], [ %i.fl, %.backedge ] ; 8 uses
  %i.au = phi ptr [ %i.aj, %.lr.ph ], [ %i.fm, %.backedge ] ; 6 uses
  %i.av = phi i64 [ %i.an, %.lr.ph ], [ %i.fn, %.backedge ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.aw = add nsw i64 %i.av, -1                   ; 15 uses
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1381, !noalias !1379
  %i.ax = load i64, ptr %i.l, align 8, !range !512, !alias.scope !1381, !noalias !1379, !noundef !3
  %i.ay = icmp samesign ult i64 %i.aw, %i.ax
  call void @llvm.assume(i1 %i.ay)
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1381, !noalias !1379, !nonnull !3, !noundef !3 ; 21 uses
  %i.ba = icmp samesign ult i64 %i.av, 576460752303423489
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !noalias !1383
  %i.bc = icmp eq i64 %i.aw, 0
  br i1 %i.bc, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.az, i64 noundef 2)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i unwind label %bb.k, !noalias !1384

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31, !noalias !1384
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !noalias !1384
  %i.be = add nsw i64 %i.av, -5
  %.not7.i.i.i = icmp samesign ult i64 %i.av, 6
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i
  %.sroa.14.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i ], [ %spec.select.i26.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i ], [ %i.dw, %.lr.ph.i.i.i ] ; 7 uses
  %.sroa.04.01.i.i.i.i = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, 1 ; 5 uses
  %i.bf = icmp samesign ult i64 %.sroa.04.01.i.i.i.i, %i.aw
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.05.0.lcssa.i.i.i ; 2 uses
  %.val.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !1384 ; 3 uses
  %.phi.trans.insert5.i.i.i.i = getelementptr i8, ptr %.phi.trans.insert.i.i.i.i, i64 8
  %.val6.pre.i.i.i.i = load i32, ptr %.phi.trans.insert5.i.i.i.i, align 8, !noalias !1384 ; 4 uses
  %i.bg = add nsw i64 %i.av, -3
  %4 = trunc i64 %i.av to i1
  br i1 %4, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i
  %i.bh = icmp ult i64 %.sroa.04.01.i.i.i.i, %i.aw
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.04.01.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.prol = load i64, ptr %i.bi, align 8, !noalias !1384 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %.val8.i.i.i.i.prol = load i32, ptr %i.bj, align 8, !noalias !1384, !noundef !3 ; 3 uses
  %.not.i.i.i.i.i.i.prol = icmp eq i32 %.val6.pre.i.i.i.i, %.val8.i.i.i.i.prol
  %i.bk = icmp ule i32 %.val8.i.i.i.i.prol, %.val6.pre.i.i.i.i
  %i.bl = icmp ule i64 %.val7.i.i.i.i.prol, %.val.pre.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.prol = select i1 %.not.i.i.i.i.i.i.prol, i1 %i.bl, i1 %i.bk ; 3 uses
  %spec.select.i.i.i.i.prol = select i1 %.sroa.0.0.i.i.i.i.i.i.prol, i64 %.sroa.04.01.i.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 2 uses
  %.sroa.04.0.i.i.i.i.prol = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, 2
  %i.bm = select i1 %.sroa.0.0.i.i.i.i.i.i.prol, i64 %.val7.i.i.i.i.prol, i64 %.val.pre.i.i.i.i
  %i.bn = select i1 %.sroa.0.0.i.i.i.i.i.i.prol, i32 %.val8.i.i.i.i.prol, i32 %.val6.pre.i.i.i.i
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.val6.i.i.i.i.unr = phi i32 [ %.val6.pre.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.val.i.i.i.i.unr = phi i64 [ %.val.pre.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  %.sroa.04.03.i.i.i.i.unr = phi i64 [ %.sroa.04.01.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.02.i.i.i.i.unr = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.bo = icmp eq i64 %i.bg, %.sroa.05.0.lcssa.i.i.i
  br i1 %i.bo, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.new
  %.val6.i.i.i.i = phi i32 [ %i.cc, %.lr.ph.i.i.i.i.new ], [ %.val6.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.val.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.new ], [ %.val.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.04.03.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.1, %.lr.ph.i.i.i.i.new ], [ %.sroa.04.03.i.i.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.02.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.1, %.lr.ph.i.i.i.i.new ], [ %.sroa.0.02.i.i.i.i.unr, %.prol.loopexit ]
  %i.bp = icmp ult i64 %.sroa.04.03.i.i.i.i, %i.aw
  call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.04.03.i.i.i.i ; 2 uses
  %.val7.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !1384 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %.val8.i.i.i.i = load i32, ptr %i.br, align 8, !noalias !1384, !noundef !3 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.val6.i.i.i.i, %.val8.i.i.i.i
  %i.bs = icmp ule i32 %.val8.i.i.i.i, %.val6.i.i.i.i
  %i.bt = icmp ule i64 %.val7.i.i.i.i, %.val.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.bt, i1 %i.bs ; 3 uses
  %spec.select.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.04.03.i.i.i.i, i64 %.sroa.0.02.i.i.i.i
  %.sroa.04.0.i.i.i.i = add nuw nsw i64 %.sroa.04.03.i.i.i.i, 1 ; 3 uses
  %i.bu = select i1 %.sroa.0.0.i.i.i.i.i.i, i64 %.val7.i.i.i.i, i64 %.val.i.i.i.i ; 2 uses
  %i.bv = select i1 %.sroa.0.0.i.i.i.i.i.i, i32 %.val8.i.i.i.i, i32 %.val6.i.i.i.i ; 3 uses
  %i.bw = icmp ult i64 %.sroa.04.0.i.i.i.i, %i.aw
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.1 = load i64, ptr %i.bx, align 8, !noalias !1384 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %.val8.i.i.i.i.1 = load i32, ptr %i.by, align 8, !noalias !1384, !noundef !3 ; 3 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i32 %i.bv, %.val8.i.i.i.i.1
  %i.bz = icmp ule i32 %.val8.i.i.i.i.1, %i.bv
  %i.ca = icmp ule i64 %.val7.i.i.i.i.1, %i.bu
  %.sroa.0.0.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.1, i1 %i.ca, i1 %i.bz ; 3 uses
  %spec.select.i.i.i.i.1 = select i1 %.sroa.0.0.i.i.i.i.i.i.1, i64 %.sroa.04.0.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.sroa.04.0.i.i.i.i.1 = add nuw nsw i64 %.sroa.04.03.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %.sroa.04.0.i.i.i.i.1, %i.aw
  %i.cb = select i1 %.sroa.0.0.i.i.i.i.i.i.1, i64 %.val7.i.i.i.i.1, i64 %i.bu
  %i.cc = select i1 %.sroa.0.0.i.i.i.i.i.i.1, i32 %.val8.i.i.i.i.1, i32 %i.bv
  br i1 %exitcond.not.i.i.i.i.1, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i, label %.lr.ph.i.i.i.i.new

_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.new, %._crit_edge.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %spec.select.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.i.i.1, %.lr.ph.i.i.i.i.new ] ; 3 uses
  %i.cd = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i, %i.aw
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.0.0.lcssa.i.i.i.i
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.14.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !1384
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i
  %.sroa.14.1.i.i.i = phi i64 [ %.sroa.0.0.lcssa.i.i.i.i, %bb.l ], [ %.sroa.14.0.lcssa.i.i.i, %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.14.1.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i.i.i, i64 16, i1 false), !noalias !1384
  %.sroa.023.0.copyload.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !1384 ; 2 uses
  %.sroa.424.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ch = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i.i.i, align 8, !noalias !1384
  %.sroa.424.0.copyload.i.i.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i.i.i, align 8, !noalias !1384 ; 2 uses
  %.not26.i.i.i.i = icmp eq i64 %.sroa.14.1.i.i.i, 0
  br i1 %.not26.i.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E19sift_down_to_bottomBQ_.exit.i.i, label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.sroa.1414.027.i.i.i.i = phi i64 [ %i.cj, %bb.n ], [ %.sroa.14.1.i.i.i, %bb.m ] ; 3 uses
  %i.ci = add nsw i64 %.sroa.1414.027.i.i.i.i, -1
  %i.cj = lshr i64 %i.ci, 2                       ; 4 uses
  %i.ck = icmp samesign ult i64 %i.cj, %i.aw
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.cj ; 3 uses
  %.val2.i.i.i.i = load i64, ptr %i.cl, align 8, !noalias !1384
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %.val3.i.i.i.i = load i32, ptr %i.cm, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq i32 %.sroa.424.0.copyload.i.i.i.i, %.val3.i.i.i.i
  %i.cn = icmp ule i32 %.val3.i.i.i.i, %.sroa.424.0.copyload.i.i.i.i
  %i.co = icmp ule i64 %.val2.i.i.i.i, %.sroa.023.0.copyload.i.i.i.i
  %.sroa.0.0.i.i.i29.i.i.i = select i1 %.not.i.i.i28.i.i.i, i1 %i.co, i1 %i.cn
  br i1 %.sroa.0.0.i.i.i29.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E19sift_down_to_bottomBQ_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i27.i.i.i
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.1414.027.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !1384
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E19sift_down_to_bottomBQ_.exit.i.i, label %.lr.ph.i27.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.09.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i ] ; 5 uses
  %.sroa.14.08.i.i.i = phi i64 [ %spec.select.i26.i.i.i, %.lr.ph.i.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEB18_.exit.i.i ]
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.05.09.i.i.i ; 2 uses
  %i.cr = add nuw nsw i64 %.sroa.05.09.i.i.i, 1   ; 2 uses
  %i.cs = icmp samesign ult i64 %i.cr, %i.aw
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.cr ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.cq, align 8, !noalias !1384
  %i.cu = getelementptr i8, ptr %i.cq, i64 8
  %.val4.i.i.i.i.i = load i32, ptr %i.cu, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %i.ct, align 8, !noalias !1384
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  %.val6.i.i.i.i.i = load i32, ptr %i.cv, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val4.i.i.i.i.i, %.val6.i.i.i.i.i
  %i.cw = icmp ule i32 %.val6.i.i.i.i.i, %.val4.i.i.i.i.i
  %i.cx = icmp ule i64 %.val5.i.i.i.i.i, %.val.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.cx, i1 %i.cw
  %i.cy = zext i1 %.sroa.0.0.i.i.i.i.i.i.i to i64
  %i.cz = add nuw nsw i64 %.sroa.05.09.i.i.i, %i.cy ; 3 uses
  %i.da = add nuw nsw i64 %.sroa.05.09.i.i.i, 2   ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.da ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.05.09.i.i.i, 3   ; 2 uses
  %i.dd = icmp samesign ult i64 %i.dc, %i.aw
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.dc ; 2 uses
  %.val.i12.i.i.i.i = load i64, ptr %i.db, align 8, !noalias !1384
  %i.df = getelementptr i8, ptr %i.db, i64 8
  %.val4.i13.i.i.i.i = load i32, ptr %i.df, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.val5.i14.i.i.i.i = load i64, ptr %i.de, align 8, !noalias !1384
  %i.dg = getelementptr i8, ptr %i.de, i64 8
  %.val6.i15.i.i.i.i = load i32, ptr %i.dg, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.not.i.i.i16.i.i.i.i = icmp eq i32 %.val4.i13.i.i.i.i, %.val6.i15.i.i.i.i
  %i.dh = icmp ule i32 %.val6.i15.i.i.i.i, %.val4.i13.i.i.i.i
  %i.di = icmp ule i64 %.val5.i14.i.i.i.i, %.val.i12.i.i.i.i
  %.sroa.0.0.i.i.i17.i.i.i.i = select i1 %.not.i.i.i16.i.i.i.i, i1 %i.di, i1 %i.dh
  %i.dj = zext i1 %.sroa.0.0.i.i.i17.i.i.i.i to i64
  %i.dk = add nuw nsw i64 %i.da, %i.dj            ; 3 uses
  %i.dl = icmp samesign ult i64 %i.cz, %i.aw
  call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.cz ; 2 uses
  %i.dn = icmp samesign ult i64 %i.dk, %i.aw
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.dk ; 2 uses
  %.val.i21.i.i.i = load i64, ptr %i.dm, align 8, !noalias !1384
  %i.dp = getelementptr i8, ptr %i.dm, i64 8
  %.val5.i.i.i.i = load i32, ptr %i.dp, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.val6.i22.i.i.i = load i64, ptr %i.do, align 8, !noalias !1384
  %i.dq = getelementptr i8, ptr %i.do, i64 8
  %.val7.i23.i.i.i = load i32, ptr %i.dq, align 8, !noalias !1384, !noundef !3 ; 2 uses
  %.not.i.i.i24.i.i.i = icmp eq i32 %.val5.i.i.i.i, %.val7.i23.i.i.i
  %i.dr = icmp ule i32 %.val7.i23.i.i.i, %.val5.i.i.i.i
  %i.ds = icmp ule i64 %.val6.i22.i.i.i, %.val.i21.i.i.i
  %.sroa.0.0.i.i.i25.i.i.i = select i1 %.not.i.i.i24.i.i.i, i1 %i.ds, i1 %i.dr
  %spec.select.i26.i.i.i = select i1 %.sroa.0.0.i.i.i25.i.i.i, i64 %i.dk, i64 %i.cz ; 4 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %spec.select.i26.i.i.i
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.14.08.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !noalias !1384
  %i.dv = shl nuw nsw i64 %spec.select.i26.i.i.i, 2 ; 2 uses
  %i.dw = or disjoint i64 %i.dv, 1                ; 2 uses
  %.not.not.i.i.i = icmp samesign ult i64 %i.dv, %i.be
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E19sift_down_to_bottomBQ_.exit.i.i: ; preds = %bb.n, %.lr.ph.i27.i.i.i, %bb.m
  %.sroa.1414.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.m ], [ %.sroa.1414.027.i.i.i.i, %.lr.ph.i27.i.i.i ], [ 0, %bb.n ]
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.1414.0.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.023.0.copyload.i.i.i.i, ptr %i.dx, align 8, !noalias !1384
  %.sroa.13.16..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store <2 x i32> %i.ch, ptr %.sroa.13.16..sroa_idx6.i.i.i.i, align 8, !noalias !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E19sift_down_to_bottomBQ_.exit.i.i
  %.sroa.698.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !1381 ; 9 uses
  %.sroa.698.sroa.7.0.copyload = load i32, ptr %.sroa.698.sroa.7.0..sroa_idx, align 4, !noalias !1381 ; 2 uses
  %i.dy = load <2 x i32>, ptr %.sroa.698.sroa.6.0..sroa_idx, align 8, !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1383
  br i1 %i.ap, label %bb.p, label %bb.w

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E3popBQ_.exit: ; preds = %.backedge, %bb.h
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6retainNCNvMs3_BG_NtBG_4Word9merge_alls1_0EBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dz = invoke noundef nonnull ptr @_RNvNtNtCseKCDlm5CXZl_4rand4rngs6thread3rng()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc:                                           ; preds = %bb.p
  store ptr %i.dz, ptr %i.b, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 336 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 16, !alias.scope !1387, !noalias !1390, !noundef !3 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word9merge_all:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1j_.exit unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_.exit
  %i.mq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body94, %bb.bn
  %common.resume.op = phi { ptr, i32 } [ %i.mq, %bb.bn ], [ %.pn, %.body94 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1j_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bp:                                            ; preds = %.body, %.body94
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice12nbest_tokens(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(112) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5nbest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBT_NtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterIBT_INtNtB8_2rc2RcINtNtB26_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENCNvMs6_B3S_NtB3S_7Lattice12nbest_tokens0EE9from_iterB3Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice12sample_nbest(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1, i64 noundef %2, double noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5nbest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 4 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.j unwind label %bb.e

bb.d:                                             ; preds = %bb.m, %bb.e
  %.pn11 = phi { ptr, i32 } [ %i.k, %bb.e ], [ %lpad.phi, %bb.m ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #33
          to label %common.resume unwind label %bb.ai

bb.e:                                             ; preds = %bb.k, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.d, %.body20, %bb.am, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.am ], [ %i.l, %bb.g ], [ %.pn11, %bb.d ], [ %.pn9, %.body20 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit23, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit
  ret void

bb.j:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !range !19, !noundef !3
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !74, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.k, label %bb.l, !prof !75

bb.k:                                             ; preds = %bb.j
  %i.s = load i64, ptr %i.r, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #32
          to label %bb.y unwind label %bb.e

bb.l:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.u = icmp samesign ule i64 %i.h, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.q, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %.idx = mul nuw nsw i64 %i.z, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdE8push_mutCs2JiOgHzbbc7_10tokenizers.exit
  %i.ac = phi i64 [ %i.bl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdE8push_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ 0, %bb.l ] ; 3 uses
  %.sroa.0.024 = phi ptr [ %i.ad, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdE8push_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.y, %bb.l ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !3 ; 4 uses
  switch i64 %i.ah, label %.preheader.preheader.new [
    i64 0, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit
    i64 1, label %.preheader.epil.preheader
  ]

.preheader.preheader.new:                         ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ah, -2
  br label %.preheader

.preheader:                                       ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.1, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ax, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.1 ] ; 3 uses
  %.sroa.02.0.i = phi double [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aw, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.1 ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.1 ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.04.0.i
  %.val.i = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1504, !noundef !3
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i, label %.loopexit32, !prof !109

.loopexit32:                                      ; preds = %.preheader.epil.preheader, %.preheader, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit32
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i: ; preds = %.preheader
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.04.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val.i.1 = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1504, !noundef !3
  %i.aq = icmp ult i64 %i.ap, 9223372036854775807
  br i1 %i.aq, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.1, label %.loopexit32, !prof !109

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.1: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  %i.as = load double, ptr %i.ar, align 8, !noundef !3
  %i.at = fadd double %.sroa.02.0.i, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 72
  %i.av = load double, ptr %i.au, align 8, !noundef !3
  %i.aw = fadd double %i.at, %i.av                ; 3 uses
  %i.ax = add nuw i64 %.sroa.04.0.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit.loopexit.unr-lcssa, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdE8push_mutCs2JiOgHzbbc7_10tokenizers.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_indexINtB3_13WeightedIndexdE3newRINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.o unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %._crit_edge, %.loopexit32
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.e) #33
          to label %bb.d unwind label %bb.ai

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit.loopexit.unr-lcssa: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.1
  %lcmp.mod.not = trunc i64 %i.ah to i1
  br i1 %lcmp.mod.not, label %.preheader.epil.preheader, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit

.preheader.epil.preheader:                        ; preds = %.lr.ph, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit.loopexit.unr-lcssa
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ax, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ -0.000000e+00, %.lr.ph ], [ %i.aw, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.04.0.i.epil.init
  %.val.i.epil = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.epil, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noalias !1504, !noundef !3
  %i.bb = icmp ult i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.epil, label %.loopexit32, !prof !109

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.epil: ; preds = %.preheader.epil.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.epil, i64 72
  %i.bd = load double, ptr %i.bc, align 8, !noundef !3
  %i.be = fadd double %.sroa.02.0.i.epil.init, %i.bd
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.epil, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit.loopexit.unr-lcssa, %.lr.ph
  %.sroa.0.0.i = phi double [ -0.000000e+00, %.lr.ph ], [ %i.aw, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit.loopexit.unr-lcssa ], [ %i.be, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBa_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEddNCNvMs6_B1M_NtB1M_7Lattice12sample_nbest0NCINvXs26_NtNtB8_6traits5accumdNtB3D_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2O_EE0E0B1S_.exit.i.epil ]
  %i.bf = fmul double %3, %.sroa.0.0.i
  %i.bg = call double @llvm.exp.f64(double %i.bf)
  %i.bh = load i64, ptr %i.e, align 8, !range !512, !alias.scope !1507, !noundef !3
  %i.bi = icmp eq i64 %i.ac, %i.bh
  br i1 %i.bi, label %bb.n, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdE8push_mutCs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdE8push_mutCs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdE8push_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB2O_8adapters3map8map_foldRBQ_ddNCNvMs6_B1H_NtB1H_7Lattice12sample_nbest0NCINvXs26_NtB2M_5accumdNtB4X_3Sum3sumINtB3y_3MapBF_B48_EE0E0EB1N_.exit
  %i.bj = load ptr, ptr %i.v, align 8, !alias.scope !1507, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ac
  store double %i.bg, ptr %i.bk, align 8
  %i.bl = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.bl, ptr %i.w, align 8, !alias.scope !1507
  %i.bm = icmp eq ptr %i.ad, %i.aa
  br i1 %i.bm, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %._crit_edge
  %i.bn = load i64, ptr %i.d, align 8, !range !191, !noundef !3
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = load i64, ptr %i.g, align 8, !noundef !3
  %.not = icmp eq i64 %i.bp, 0
  br i1 %.not, label %bb.ak, label %bb.aj

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bq = invoke noundef nonnull ptr @_RNvNtNtCseKCDlm5CXZl_4rand4rngs6thread3rng()
          to label %bb.s unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.t, %bb.u, %bb.r
  %.pn = phi { ptr, i32 } [ %i.br, %bb.r ], [ %i.bt, %bb.u ], [ %i.bt, %bb.t ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %i.c) #33
          to label %.body unwind label %bb.ai

bb.r:                                             ; preds = %bb.aa, %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.q
  store ptr %i.bq, ptr %i.b, align 8
  %i.bs = invoke noundef i64 @_RINvXs3_NtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_indexINtB6_13WeightedIndexdEINtNtBa_12distribution12DistributionjE6sampleNtNtNtBc_4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.v unwind label %bb.t       ; 3 uses

bb.t:                                             ; preds = %bb.x, %bb.w, %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.bu = load ptr, ptr %i.b, align 8, !alias.scope !1519, !nonnull !3, !noundef !3 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !1519, !noundef !3
  %i.bw = add i64 %i.bv, -1                       ; 2 uses
  store i64 %i.bw, ptr %i.bu, align 8, !noalias !1519
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ai

bb.v:                                             ; preds = %bb.s
  %i.by = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.bz = icmp ult i64 %i.bs, %i.by
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bs
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.z unwind label %bb.t

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #32
          to label %bb.y unwind label %bb.t

bb.y:                                             ; preds = %bb.ak, %bb.x, %bb.k
  unreachable

bb.z:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.cc = load ptr, ptr %i.b, align 8, !alias.scope !1529, !nonnull !3, !noundef !3 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !1529, !noundef !3
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !noalias !1529
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit17

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit17 unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit17: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit17
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit17
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ad

.body:                                            ; preds = %bb.ad, %bb.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit
  %.pn7 = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ci, %bb.ad ], [ %i.cg, %bb.ab ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.e) #33
          to label %.body20 unwind label %bb.ai

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ak, %bb.aj
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body20 unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ai:                                            ; preds = %bb.u, %.body20, %.body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit, %bb.m, %bb.d
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aj:                                            ; preds = %bb.p
  %i.cm = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm)
          to label %bb.ae unwind label %bb.ad

bb.ak:                                            ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #32
          to label %bb.y unwind label %bb.ad

.body20:                                          ; preds = %bb.al, %bb.af, %.body
  %.pn9 = phi { ptr, i32 } [ %.pn7, %.body ], [ %i.cn, %bb.al ], [ %i.cj, %bb.af ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #33
          to label %common.resume unwind label %bb.ai

bb.al:                                            ; preds = %bb.ag
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
end_hunk_4
begin_hunk_5_@_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E3popBQ_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gd, ptr noundef nonnull align 8 dereferenceable(80) %i.fv, i64 80, i1 false), !noalias !2117
  %.not.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E19sift_down_to_bottomBQ_.exit.i, label %.lr.ph.i25.i.i

bb.ah:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.6.i.i.i = phi i1 [ %i.fb, %bb.aa ], [ %i.fm, %bb.ac ], [ %i.fh, %bb.ab ]
  %spec.select.6.i.i.i = select i1 %.sroa.0.0.i.i.6.i.i.i, i64 %.sroa.05.0.5.i.i.i, i64 %spec.select.5.i.i.i ; 4 uses
  %i.ge = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %spec.select.6.i.i.i
  %i.gf = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.14.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gf, ptr noundef nonnull align 8 dereferenceable(80) %i.ge, i64 80, i1 false), !noalias !2117
  %i.gg = shl nuw nsw i64 %spec.select.6.i.i.i, 3 ; 2 uses
  %i.gh = or disjoint i64 %i.gg, 1                ; 2 uses
  %.not.not.i.i = icmp samesign ult i64 %i.gg, %i.o
  br i1 %.not.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E19sift_down_to_bottomBQ_.exit.i: ; preds = %bb.ag, %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i27.i.i, %.split29.i.i.i, %.split.i.i.i, %bb.ae
  %.sroa.15.0.lcssa.i.i.i = phi i64 [ 0, %bb.ae ], [ 0, %bb.ag ], [ %.sroa.15.034.i.i.i, %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i27.i.i ], [ %.sroa.15.034.i.i.i, %.split.i.i.i ], [ %.sroa.15.034.i.i.i, %.split29.i.i.i ]
  %i.gi = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.15.0.lcssa.i.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gi, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12.i.i, i64 64, i1 false), !noalias !2117
  %.sroa.12.16..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  store i32 %.sroa.426.0.copyload.i.i.i, ptr %.sroa.12.16..sroa_idx4.i.i.i, align 8, !noalias !2117
  %.sroa.13.16..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 68
  store i32 %.sroa.527.0.copyload.i.i.i, ptr %.sroa.13.16..sroa_idx8.i.i.i, align 4, !noalias !2117
  %.sroa.14.16..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  store i64 %.sroa.628.0.copyload.i.i.i, ptr %.sroa.14.16..sroa_idx12.i.i.i, align 8, !noalias !2117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  br label %_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E3pop0BS_.exit

_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E3pop0BS_.exit: ; preds = %bb.c, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E19sift_down_to_bottomBQ_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E3pop0BS_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E4pushBQ_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9.i = alloca [64 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 8 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !512, !alias.scope !2228, !noalias !2231, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8push_mutBM_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8push_mutBM_.exit unwind label %bb.c, !noalias !2231

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeEBJ_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeEBJ_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8push_mutBM_.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2228, !noalias !2231, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.k = add nuw nsw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !2228, !noalias !2231
  %.val = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.b ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.426.0.copyload.i = load i32, ptr %.sroa.426.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %.sroa.527.0.copyload.i = load i32, ptr %.sroa.527.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.628.0.copyload.i = load i64, ptr %.sroa.628.0..sroa_idx.i, align 8 ; 3 uses
  %.not33.i = icmp eq i64 %i.b, 0
  br i1 %.not33.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E7sift_upBQ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8push_mutBM_.exit, %bb.f
  %.sroa.15.034.i = phi i64 [ %i.n, %bb.f ], [ %i.b, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8push_mutBM_.exit ] ; 5 uses
  %i.m = add nsw i64 %.sroa.15.034.i, -1
  %i.n = lshr i64 %i.m, 3                         ; 4 uses
  %i.o = icmp samesign ule i64 %i.n, %i.b
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.n ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2233, !noalias !2238, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.628.0.copyload.i, %i.r
  br i1 %.not.i.i.i, label %bb.e, label %.split.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !2233, !noalias !2238, !noundef !3 ; 2 uses
  %i.u = icmp eq i32 %i.t, %.sroa.426.0.copyload.i
  br i1 %i.u, label %.split29.i, label %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i

.split.i:                                         ; preds = %.lr.ph.i
  %.not30.i = icmp ugt i64 %.sroa.628.0.copyload.i, %i.r
  br i1 %.not30.i, label %bb.f, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E7sift_upBQ_.exit

.split29.i:                                       ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !2233, !noalias !2238, !noundef !3
  %.not32.i = icmp ugt i32 %i.w, %.sroa.527.0.copyload.i
  br i1 %.not32.i, label %bb.f, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E7sift_upBQ_.exit

_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i: ; preds = %bb.e
  %.not31.i = icmp ugt i32 %i.t, %.sroa.426.0.copyload.i
  br i1 %.not31.i, label %bb.f, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E7sift_upBQ_.exit

bb.f:                                             ; preds = %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i, %.split29.i, %.split.i
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.15.034.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E7sift_upBQ_.exit, label %.lr.ph.i

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E7sift_upBQ_.exit: ; preds = %.split.i, %.split29.i, %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i, %bb.f, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8push_mutBM_.exit
  %.sroa.15.0.lcssa.i = phi i64 [ 0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8push_mutBM_.exit ], [ 0, %bb.f ], [ %.sroa.15.034.i, %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i ], [ %.sroa.15.034.i, %.split.i ], [ %.sroa.15.034.i, %.split29.i ]
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.15.0.lcssa.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.i, i64 64, i1 false)
  %.sroa.12.16..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i32 %.sroa.426.0.copyload.i, ptr %.sroa.12.16..sroa_idx4.i, align 8
  %.sroa.13.16..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  store i32 %.sroa.527.0.copyload.i, ptr %.sroa.13.16..sroa_idx8.i, align 4
  %.sroa.14.16..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i64 %.sroa.628.0.copyload.i, ptr %.sroa.14.16..sroa_idx12.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E3popBQ_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.12.i.i = alloca [32 x i8], align 8       ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 7 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1                     ; 13 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load i64, ptr %1, align 8, !range !512, !noundef !3
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 20 uses
  %i.j = icmp ult i64 %i.c, 288230376151711745
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E3pop0BS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i unwind label %bb.e, !noalias !2241

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31, !noalias !2241
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !2241
  %i.n = add nsw i64 %i.c, -5
  %.not7.i.i = icmp samesign ult i64 %i.c, 6
  br i1 %.not7.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i
  %.sroa.14.0.lcssa.i.i = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i ], [ %spec.select.i22.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i = phi i64 [ 1, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i ], [ %i.bq, %.lr.ph.i.i ] ; 7 uses
  %.sroa.04.01.i.i.i = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, 1 ; 5 uses
  %i.o = icmp samesign ult i64 %.sroa.04.01.i.i.i, %i.e
  br i1 %i.o, label %.lr.ph.i.i.i, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE14max_sibling_toKj4_EBN_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i
  %.phi.trans.insert4.i.i.i = getelementptr i8, ptr %.phi.trans.insert.i.i.i, i64 16
  %.val.pre.i.i.i = load double, ptr %.phi.trans.insert4.i.i.i, align 8, !noalias !2241 ; 3 uses
  %i.p = add nsw i64 %i.c, -3
  %2 = trunc i64 %i.c to i1
  br i1 %2, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i
  %i.q = icmp ult i64 %.sroa.04.01.i.i.i, %i.e
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.04.01.i.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %.val6.i.i.i.prol = load double, ptr %i.s, align 8, !noalias !2241, !noundef !3 ; 2 uses
  %i.t = fcmp olt double %.val.pre.i.i.i, %.val6.i.i.i.prol ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.t, i64 %.sroa.04.01.i.i.i, i64 %.sroa.05.0.lcssa.i.i ; 2 uses
  %.sroa.04.0.i.i.i.prol = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, 2
  %i.u = select i1 %i.t, double %.val6.i.i.i.prol, double %.val.pre.i.i.i
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.val.i.i.i.unr = phi double [ %.val.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.sroa.04.03.i.i.i.unr = phi i64 [ %.sroa.04.01.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.04.0.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.02.i.i.i.unr = phi i64 [ %.sroa.05.0.lcssa.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.v = icmp eq i64 %i.p, %.sroa.05.0.lcssa.i.i
  br i1 %i.v, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE14max_sibling_toKj4_EBN_.exit.i.i, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.val.i.i.i = phi double [ %i.ae, %.lr.ph.i.i.i.new ], [ %.val.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.04.03.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.1, %.lr.ph.i.i.i.new ], [ %.sroa.04.03.i.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.sroa.0.02.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i.i.i.new ], [ %.sroa.0.02.i.i.i.unr, %.prol.loopexit ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.04.03.i.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %.val6.i.i.i = load double, ptr %i.x, align 8, !noalias !2241, !noundef !3 ; 2 uses
  %i.y = fcmp olt double %.val.i.i.i, %.val6.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.y, i64 %.sroa.04.03.i.i.i, i64 %.sroa.0.02.i.i.i
  %.sroa.04.0.i.i.i = add nuw nsw i64 %.sroa.04.03.i.i.i, 1 ; 3 uses
  %i.z = select i1 %i.y, double %.val6.i.i.i, double %.val.i.i.i ; 2 uses
  %i.aa = icmp ult i64 %.sroa.04.0.i.i.i, %i.e
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %.val6.i.i.i.1 = load double, ptr %i.ac, align 8, !noalias !2241, !noundef !3 ; 2 uses
  %i.ad = fcmp olt double %i.z, %.val6.i.i.i.1    ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.ad, i64 %.sroa.04.0.i.i.i, i64 %spec.select.i.i.i ; 2 uses
  %.sroa.04.0.i.i.i.1 = add nuw nsw i64 %.sroa.04.03.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %.sroa.04.0.i.i.i.1, %i.e
  %i.ae = select i1 %i.ad, double %.val6.i.i.i.1, double %i.z
  br i1 %exitcond.not.i.i.i.1, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE14max_sibling_toKj4_EBN_.exit.i.i, label %.lr.ph.i.i.i.new

_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE14max_sibling_toKj4_EBN_.exit.i.i: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new, %._crit_edge.i.i
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ], [ %spec.select.i.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i.i.i.new ] ; 3 uses
  %i.af = icmp ult i64 %.sroa.0.0.lcssa.i.i.i, %i.e
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE14max_sibling_toKj4_EBN_.exit.i.i
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.0.lcssa.i.i.i
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.14.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !2241
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE14max_sibling_toKj4_EBN_.exit.i.i
  %.sroa.14.1.i.i = phi i64 [ %.sroa.0.0.lcssa.i.i.i, %bb.f ], [ %.sroa.14.0.lcssa.i.i, %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE14max_sibling_toKj4_EBN_.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.14.1.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i, i64 32, i1 false), !noalias !2241
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.422.0.copyload.i.i.i = load double, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !2241 ; 2 uses
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.523.0.copyload.i.i.i = load i64, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !noalias !2241
  %.not24.i.i.i = icmp eq i64 %.sroa.14.1.i.i, 0
  br i1 %.not24.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E19sift_down_to_bottomBQ_.exit.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.1312.025.i.i.i = phi i64 [ %i.ak, %bb.h ], [ %.sroa.14.1.i.i, %bb.g ] ; 3 uses
  %i.aj = add nsw i64 %.sroa.1312.025.i.i.i, -1
  %i.ak = lshr i64 %i.aj, 2                       ; 4 uses
  %i.al = icmp samesign ult i64 %i.ak, %i.e
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.ak ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %.val1.i.i.i = load double, ptr %i.an, align 8, !noalias !2241, !noundef !3
  %i.ao = fcmp olt double %.sroa.422.0.copyload.i.i.i, %.val1.i.i.i
  br i1 %i.ao, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E19sift_down_to_bottomBQ_.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i23.i.i
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.1312.025.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !2241
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E19sift_down_to_bottomBQ_.exit.i, label %.lr.ph.i23.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i, %.lr.ph.i.i
  %.sroa.05.09.i.i = phi i64 [ %i.bq, %.lr.ph.i.i ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i ] ; 4 uses
  %.sroa.14.08.i.i = phi i64 [ %spec.select.i22.i.i, %.lr.ph.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEB18_.exit.i ]
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.05.09.i.i ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %.val.i.i.i.i = load double, ptr %i.ar, align 8, !noalias !2241, !noundef !3
  %i.as = getelementptr i8, ptr %i.aq, i64 48
  %.val4.i.i.i.i = load double, ptr %i.as, align 8, !noalias !2241, !noundef !3
  %i.at = fcmp olt double %.val.i.i.i.i, %.val4.i.i.i.i
  %i.au = zext i1 %i.at to i64
  %i.av = add nuw nsw i64 %.sroa.05.09.i.i, %i.au ; 3 uses
  %i.aw = add nuw nsw i64 %.sroa.05.09.i.i, 2     ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.aw
  %i.ay = add nuw nsw i64 %.sroa.05.09.i.i, 3     ; 2 uses
  %i.az = icmp samesign ult i64 %i.ay, %i.e
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.ax, i64 16
  %.val.i10.i.i.i = load double, ptr %i.bb, align 8, !noalias !2241, !noundef !3
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val4.i11.i.i.i = load double, ptr %i.bc, align 8, !noalias !2241, !noundef !3
  %i.bd = fcmp olt double %.val.i10.i.i.i, %.val4.i11.i.i.i
  %i.be = zext i1 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.aw, %i.be            ; 3 uses
  %i.bg = icmp samesign ult i64 %i.av, %i.e
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.av
  %i.bi = icmp samesign ult i64 %i.bf, %i.e
  call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.bf
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %.val.i21.i.i = load double, ptr %i.bk, align 8, !noalias !2241, !noundef !3
  %i.bl = getelementptr i8, ptr %i.bj, i64 16
  %.val5.i.i.i = load double, ptr %i.bl, align 8, !noalias !2241, !noundef !3
  %i.bm = fcmp olt double %.val.i21.i.i, %.val5.i.i.i
  %spec.select.i22.i.i = select i1 %i.bm, i64 %i.bf, i64 %i.av ; 4 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %spec.select.i22.i.i
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.14.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false), !noalias !2241
  %i.bp = shl nuw nsw i64 %spec.select.i22.i.i, 2 ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1                ; 2 uses
  %.not.not.i.i = icmp samesign ult i64 %i.bp, %i.n
  br i1 %.not.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E19sift_down_to_bottomBQ_.exit.i: ; preds = %bb.h, %.lr.ph.i23.i.i, %bb.g
  %.sroa.1312.0.lcssa.i.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1312.025.i.i.i, %.lr.ph.i23.i.i ]
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.1312.0.lcssa.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i.i, i64 16, i1 false), !noalias !2241
  %.sroa.12.16..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store double %.sroa.422.0.copyload.i.i.i, ptr %.sroa.12.16..sroa_idx4.i.i.i, align 8, !noalias !2241
  %.sroa.13.16..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %.sroa.523.0.copyload.i.i.i, ptr %.sroa.13.16..sroa_idx8.i.i.i, align 8, !noalias !2241
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  br label %_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E3pop0BS_.exit

_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E3pop0BS_.exit: ; preds = %bb.c, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E19sift_down_to_bottomBQ_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E3pop0BS_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levelNtB4_9ByteLevel8alphabet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_level10BYTES_CHAR, i64 64) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_level10BYTES_CHAR, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_level10BYTES_CHAR, i64 64), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2244
  call void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @_RNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_level10BYTES_CHAR)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2244
  %i.h = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !2248 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !2248, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2248, !nonnull !3, !align !28, !noundef !3
  %i.l = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !2248 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !3, !noalias !2248, !nonnull !3
  %i.p = call noundef i64 %i.o(ptr noundef nonnull %i.i), !noalias !2248, !inline_history !2251
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i64 noundef %i.p), !noalias !2244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @31, i64 32, i1 false), !noalias !2244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !2244
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtB1M_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetcEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBZ_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c, !noalias !2244

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.d, !noalias !2244

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_5
begin_hunk_6_@_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6f_14UnigramTrainer21prune_sentence_piecess0_0NCB6a_s_0ENCB6a_0EE0NCB2B_s_0TdINtNtB4B_3vec3VecdEIB8r_IB8r_jEEEB8o_E0TB8o_B8o_EE0B93_ENtB5_3Job7executeB6l_:bb.a
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
  %.sroa.8.0 = phi i64 [ %i.q, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
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
  store i64 %.sroa.8.0, ptr %i.y, align 8
  store i64 %.sroa.6.0, ptr %i.z, align 8
  br label %.body31

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.8.0, ptr %.sroa.6.0..sroa_idx6, align 8
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
end_hunk_6
