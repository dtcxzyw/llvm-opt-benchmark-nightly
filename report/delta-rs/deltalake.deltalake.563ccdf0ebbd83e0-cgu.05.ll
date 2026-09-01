Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.05?download=true
inline.NumInlined: 6673
inline.NumDeleted: 2611
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable7ipnsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB6_SBT_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB17_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2q_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, i32 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCsjyY8HP3IvQ6_12object_store10ObjectMeta7reverseCs7p2uQeJxui2_9deltalake.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCsjyY8HP3IvQ6_12object_store10ObjectMeta7reverseCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2l_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2l_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.thread
  %i.aj = lshr i64 %1, 1
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [96 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 12)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCsjyY8HP3IvQ6_12object_store10ObjectMeta7reverseCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable7ipnsortNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SBT_16sort_unstable_byNCNCNvNtBV_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection7reverseCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 56
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val11 = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val10, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.h, i64 %i.i, i64 %i.g
  %i.j = icmp slt i64 %spec.select.i.i, 0         ; 2 uses
  %.not32 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph28

.lr.ph:                                           ; preds = %.preheader22, %bb.c
  %.val9 = phi i64 [ %.val7, %bb.c ], [ %.val11, %.preheader22 ] ; 2 uses
  %.val8 = phi ptr [ %.val6, %bb.c ], [ %.val10, %.preheader22 ]
  %.sroa.01.0.i24 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader22 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i24 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val6 = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val7 = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %spec.store.select.i.i14 = tail call i64 @llvm.umin.i64(i64 %.val7, i64 %.val9)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val6, ptr nonnull readonly %.val8, i64 %spec.store.select.i.i14) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %.val7, %.val9
  %spec.select.i.i15 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i15, 0
  br i1 %i.r, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.01.0.i24, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph28:                                         ; preds = %.preheader, %bb.d
  %.val5 = phi i64 [ %.val3, %bb.d ], [ %.val11, %.preheader ] ; 2 uses
  %.val4 = phi ptr [ %.val, %bb.d ], [ %.val10, %.preheader ]
  %.sroa.01.1.i27 = phi i64 [ %i.ab, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.1.i27 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val3 = load i64, ptr %i.v, align 8, !noundef !4 ; 3 uses
  %spec.store.select.i.i16 = tail call i64 @llvm.umin.i64(i64 %.val3, i64 %.val5)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val4, i64 %spec.store.select.i.i16) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val3, %.val5
  %spec.select.i.i17 = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = icmp slt i64 %spec.select.i.i17, 0
  br i1 %i.aa, label %bb.d, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %.lr.ph28
  %i.ab = add nuw nsw i64 %.sroa.01.1.i27, 1      ; 2 uses
  %exitcond35.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond35.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph28

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %.lr.ph28, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i27, %.lr.ph28 ], [ %.sroa.01.0.i24, %.lr.ph ] ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ad, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.thread, label %bb.e

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection7reverseCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit
  %i.ae = or i64 %1, 1
  %i.af = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB17_16sort_unstable_byNCNCNvNtB19_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, i32 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection7reverseCs7p2uQeJxui2_9deltalake.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection7reverseCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB6_SB12_16sort_unstable_byNCNCNvNtB14_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.thread
  %i.aj = lshr i64 %1, 1
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionECs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [48 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 6)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection7reverseCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2V_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBY_BY_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6t_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6t_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %.sroa.0.0.i, 56         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.w, %.preheader ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i17 = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -56 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -48
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !8548, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.i, i64 -40
  %.val10.i = load i64, ptr %i.o, align 8, !noalias !8548, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -48
  %.val11.i = load ptr, ptr %i.p, align 8, !noalias !8548, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.j, i64 -40
  %.val12.i = load i64, ptr %i.q, align 8, !noalias !8548, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val10.i, i64 range(i64 0, -9223372036854775808) %.val12.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val11.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !8551, !noalias !8548 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val10.i, %.val12.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 3 uses
  %6 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  %..i = select i1 %6, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i, i64 56, i1 false), !noalias !8548
  %7 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.v = zext i1 %7 to i64
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.v ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %spec.select.i.i.i.i.i.lobit.i ; 3 uses
  %i.y = icmp eq ptr %i.w, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.ao, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.am, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.ac, align 8, !noalias !8555, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ad, align 8, !noalias !8555, !noundef !4 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  %.val.i19 = load ptr, ptr %i.ae, align 8, !noalias !8555, !nonnull !4, !noundef !4
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  %.val7.i = load i64, ptr %i.af, align 8, !noalias !8555, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !8558, !noalias !8555 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.ai, i64 %i.aj, i64 %i.ah ; 3 uses
  %8 = icmp slt i64 %spec.select.i.i.i.i.i.i21, 0
  %i.ak = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1
  %spec.select.i = select i1 %8, ptr %.sroa.0.02.i, ptr %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i, i64 56, i1 false), !noalias !8555
  %i.al = zext i1 %i.ak to i64
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.al ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22 = lshr i64 %spec.select.i.i.i.i.i.i21, 63
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ap = icmp ne ptr %i.am, %i.h
  %i.aq = icmp ne ptr %i.an, %i.f
  %or.cond.i23 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit

_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.w, %.preheader ], [ %i.ao, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.x, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.7.0 to i64
  %i.as = ptrtoint ptr %.sroa.0.0 to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.at, i1 false), !noalias !8562
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2V_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBY_BY_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %.sroa.0.0.i, 56         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.w, %.preheader ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i17 = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -56 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -48
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !8567, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.i, i64 -40
  %.val10.i = load i64, ptr %i.o, align 8, !noalias !8567, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -48
  %.val11.i = load ptr, ptr %i.p, align 8, !noalias !8567, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.j, i64 -40
  %.val12.i = load i64, ptr %i.q, align 8, !noalias !8567, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val10.i, i64 range(i64 0, -9223372036854775808) %.val12.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val11.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !8570, !noalias !8567 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val10.i, %.val12.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 3 uses
  %6 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  %..i = select i1 %6, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i, i64 56, i1 false), !noalias !8567
  %7 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.v = zext i1 %7 to i64
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.v ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %spec.select.i.i.i.i.i.lobit.i ; 3 uses
  %i.y = icmp eq ptr %i.w, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.ao, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.am, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.ac, align 8, !noalias !8574, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ad, align 8, !noalias !8574, !noundef !4 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  %.val.i19 = load ptr, ptr %i.ae, align 8, !noalias !8574, !nonnull !4, !noundef !4
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  %.val7.i = load i64, ptr %i.af, align 8, !noalias !8574, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !8577, !noalias !8574 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.ai, i64 %i.aj, i64 %i.ah ; 3 uses
  %8 = icmp slt i64 %spec.select.i.i.i.i.i.i21, 0
  %i.ak = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1
  %spec.select.i = select i1 %8, ptr %.sroa.0.02.i, ptr %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i, i64 56, i1 false), !noalias !8574
  %i.al = zext i1 %i.ak to i64
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.al ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22 = lshr i64 %spec.select.i.i.i.i.i.i21, 63
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ap = icmp ne ptr %i.am, %i.h
  %i.aq = icmp ne ptr %i.an, %i.f
  %or.cond.i23 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit

_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.w, %.preheader ], [ %i.ao, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.x, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.7.0 to i64
  %i.as = ptrtoint ptr %.sroa.0.0 to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.at, i1 false), !noalias !8581
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 17, 96076792050570582) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 -164703072086692424, 192153584101141163) %1, i64 range(i64 0, -1) %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val13, i64 %.val11)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val13, %.val11
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val17, i64 %.val15)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val14, i64 %spec.store.select.i.i19) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val17, %.val15
  %spec.select.i.i20 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i20, 0
  br i1 %i.ai, label %bb.i, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef 12)
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB15_16sort_unstable_byNCNCNvNtB17_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 33, 192153584101141163) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 -164703072086692424, 192153584101141163) %1, i64 range(i64 0, -1) %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
end_hunk_0
