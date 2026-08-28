Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.148?download=true
inline.NumInlined: 36
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID = external global { { { i64 } } }
@0 = private unnamed_addr constant [62 x i8] c";internal error: entered unreachable code: invalid Key tag: \C0\00", align 1
@1 = private unnamed_addr constant [27 x i8] c"lib/api/src/grpc/qdrant.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1A\00\00\00\00\00\00\00O\07\00\00*\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSj15partition_pointNCINvXs3_NtNtNtCsdS7EUc5kOLy_4rand5distr8weighted14weighted_indexINtBW_13WeightedIndexjEINtNtB10_12distribution12DistributionjE6sampleNtNtNtB12_4rngs3std6StdRngE0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCskKLDkoKarTP_4core5sliceSj16binary_search_byNCINvB2_15partition_pointNCINvXs3_NtNtNtCsdS7EUc5kOLy_4rand5distr8weighted14weighted_indexINtB1m_13WeightedIndexjEINtNtB1q_12distribution12DistributionjE6sampleNtNtNtB1s_4rngs3std6StdRngE0E0ECsPYQCUnoTxQ_10collection.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 1
  %.pre.i = load i64, ptr %2, align 8, !noalias !7 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.019.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.018.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.019.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.018.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %.val12.i = load i64, ptr %i.e, align 8, !alias.scope !9, !noalias !12, !noundef !14
  %.not.i16.i = icmp ugt i64 %.val12.i, %.pre.i
  %i.f = select i1 %.not.i16.i, i64 %.sroa.05.018.i, i64 %i.c, !unpredictable !14 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.019.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.i, align 8, !alias.scope !9, !noalias !12, !noundef !14
  %.not.i.i = icmp ule i64 %.val14.i, %.pre.i
  %i.j = zext i1 %.not.i.i to i64
  %i.k = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.j ; 2 uses
  %i.l = icmp ule i64 %i.k, %1
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvMNtCskKLDkoKarTP_4core5sliceSj16binary_search_byNCINvB2_15partition_pointNCINvXs3_NtNtNtCsdS7EUc5kOLy_4rand5distr8weighted14weighted_indexINtB1m_13WeightedIndexjEINtNtB1q_12distribution12DistributionjE6sampleNtNtNtB1s_4rngs3std6StdRngE0E0ECsPYQCUnoTxQ_10collection.exit

_RINvMNtCskKLDkoKarTP_4core5sliceSj16binary_search_byNCINvB2_15partition_pointNCINvXs3_NtNtNtCsdS7EUc5kOLy_4rand5distr8weighted14weighted_indexINtB1m_13WeightedIndexjEINtNtB1q_12distribution12DistributionjE6sampleNtNtNtB1s_4rngs3std6StdRngE0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ %i.k, %._crit_edge.i ]
  ret i64 %.sroa.4.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSj9fill_withNCNvMNtCsinALYEoamBN_6bitvec3vecNtBL_6BitVec6repeat0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !range !15, !noundef !14
  %i.d = zext nneg i8 %i.c to i64
  %spec.select.i = sub nsw i64 0, %i.d            ; 2 uses
  %i.e = add nsw i64 %.idx, -8                    ; 2 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %spec.select.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.j  ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.k, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.sroa.0.03.ph = phi ptr [ %0, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.03 = phi ptr [ %i.m, %scalar.ph ], [ %.sroa.0.03.ph, %scalar.ph.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  store i64 %spec.select.i, ptr %.sroa.0.03, align 8
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %._crit_edge, label %scalar.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSy9fill_withNCNvMNtCsinALYEoamBN_6bitvec3vecINtBL_6BitVecyE6repeat0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !range !15, !noundef !14
  %i.d = zext nneg i8 %i.c to i64
  %spec.select.i = sub nsw i64 0, %i.d            ; 2 uses
  %i.e = add nsw i64 %.idx, -8                    ; 2 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %spec.select.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.j  ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.k, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.sroa.0.03.ph = phi ptr [ %0, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.03 = phi ptr [ %i.m, %scalar.ph ], [ %.sroa.0.03.ph, %scalar.ph.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  store i64 %spec.select.i, ptr %.sroa.0.03, align 8
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %._crit_edge, label %scalar.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle14spawn_blockingNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtB1i_9GetResult5bytes00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtB1i_5ErrorEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = trunc nuw i64 %i.a to i1
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !14
  %.sroa.0.0.v = select i1 %i.c, i64 504, i64 568
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.v
  %i.e = tail call noundef nonnull ptr @_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtB1v_9GetResult5bytes00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtB1v_5ErrorEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle5spawnNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13flush_workersNtB15_13UpdateWorkers15flush_worker_fn0EB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(328) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %1, i64 328, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !23 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13flush_workersNtB1c_13UpdateWorkers15flush_worker_fn0EB1e_.exit

_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13flush_workersNtB1c_13UpdateWorkers15flush_worker_fn0EB1e_.exit: ; preds = %bb.b
  %i.c = call noundef nonnull ptr @_RINvMs1_NtNtCsjZG7hsAZr3B_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13flush_workersNtB1b_13UpdateWorkers15flush_worker_fn0EB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, i64 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle5spawnNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB15_13UpdateWorkers16update_worker_fn0EB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(600) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(600) %1, i64 600, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !27 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB1c_13UpdateWorkers16update_worker_fn0EB1e_.exit

_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB1c_13UpdateWorkers16update_worker_fn0EB1e_.exit: ; preds = %bb.b
  %i.c = call noundef nonnull ptr @_RINvMs1_NtNtCsjZG7hsAZr3B_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB1b_13UpdateWorkers16update_worker_fn0EB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.a, i64 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle5spawnNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB15_13UpdateWorkers22optimization_worker_fn0EB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(640) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [640 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.a, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !31 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB1c_13UpdateWorkers22optimization_worker_fn0EB1e_.exit

_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB1c_13UpdateWorkers22optimization_worker_fn0EB1e_.exit: ; preds = %bb.b
  %i.c = call noundef nonnull ptr @_RINvMs1_NtNtCsjZG7hsAZr3B_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers19optimization_workerNtB1b_13UpdateWorkers22optimization_worker_fn0EB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.a, i64 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}
end_hunk_0
