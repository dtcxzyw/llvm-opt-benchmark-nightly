inline.NumInlined: 20082
inline.NumDeleted: 9324
begin_hunk_0_@_ZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS_20TemporaryMemoryStateE:bb.a
  %i.il = ashr exact i64 %i.ik, 3
  %i.im = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.il, i1 true)
  %i.in = shl nuw nsw i64 %i.im, 1
  %16 = sub nuw nsw i64 126, %i.in
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_T0_T1_"(ptr %i.ig, ptr %i.ih, i64 noundef %16, ptr nonnull %10)
          to label %.noexc207 unwind label %.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN6duckdb30BlockAllocatorThreadLocalState4FreeEPh:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %2 = sub nuw nsw i64 126, %i.aq
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ai, ptr nonnull %i.aj, i64 noundef %2)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.ai, ptr nonnull %i.aj)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit
end_hunk_1
begin_hunk_2_@_ZNK6duckdb14BlockAllocator12FreeInternalEm:bb.a
  br i1 %i.x, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %select.unfold.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12ProducerBase12dequeue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEmRT_m.exit.i
  %.1.i = phi i64 [ %i.c, %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12ProducerBase12dequeue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEmRT_m.exit.i ], [ %i.t, %select.unfold.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.z = icmp eq i64 %.1.i, 0
  br i1 %i.z, label %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit, label %bb.f
end_hunk_2
begin_hunk_3_@_ZNK6duckdb14BlockAllocator12FreeInternalEm:bb.a
  %i.aa = ptrtoint ptr %.sroa.21.0 to i64
  %i.ab = ptrtoint ptr %.sroa.0.3 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 6 uses
  %i.ae = icmp ugt i64 %.1.i, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = sub nuw i64 %.1.i, %i.ad                ; 3 uses
  %i.ag = icmp ult i64 %i.ad, 2305843009213693952
  call void @llvm.assume(i1 %i.ag)
  %3 = icmp ugt i64 %.1.i, 2305843009213693951
  br i1 %3, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i52

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.329) #47
end_hunk_3
begin_hunk_4_@_ZNK6duckdb14BlockAllocator12FreeInternalEm:bb.a
bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit36
  %i.at = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre117, i1 true)
  %i.au = shl nuw nsw i64 %i.at, 1
  %4 = sub nuw nsw i64 126, %i.au
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.0.4, ptr %.sroa.21.1, i64 noundef %4)
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.m
end_hunk_4
begin_hunk_5_@_ZN6duckdb17LocalTableStorage15AppendToIndexesERNS_15DuckTransactionERNS_18RowGroupCollectionERNS_14TableIndexListERKNS_6vectorINS_11LogicalTypeELb1ESaIS8_EEERl:bb.a
  %i.o = sdiv exact i64 %i.n, 104
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %17 = sub nuw nsw i64 126, %i.q
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb12StorageIndexESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.pre, ptr %.pre105, i64 noundef %17)
          to label %.noexc unwind label %.loopexit.split-lp

end_hunk_5
begin_hunk_6_@_ZN6duckdb14TableIndexList20InitializeIndexChunkERNS_9DataChunkERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS3_INS_12StorageIndexELb1ESaIS9_EEERNS_13DataTableInfoE:bb.a
  %i.l = sdiv exact i64 %i.k, 104
  %i.m = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = shl nuw nsw i64 %i.m, 1
  %6 = sub nuw nsw i64 126, %i.n
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb12StorageIndexESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.f, ptr %i.h, i64 noundef %6)
          to label %.noexc unwind label %.loopexit.split-lp

end_hunk_6
begin_hunk_7_@_ZN6duckdb30BlockAllocatorThreadLocalState11TryGetBatchERNS_6vectorIjLb1ESaIjEEERNS_10BlockQueueE:bb.a
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %3 = sub nuw nsw i64 126, %i.ay
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.as, ptr %i.ar, i64 noundef %3)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.as, ptr %i.ar)
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !1210
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIjSaIjEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 2305843009213693951, %i.g  ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_8
