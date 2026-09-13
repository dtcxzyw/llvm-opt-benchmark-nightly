Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-import-wrapper-cache?download=true
inline.NumInlined: 1261
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE16FillSegmentsPoolEb:bb.a
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 %i.ab, ptr %i.ac release, align 8
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.d, %.split.us.2
  %i.ad = load ptr, ptr %.pre19, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(44) %.pre19, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #14 ; 2 uses
  %.not.us.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.us.3, label %.split15.us, label %bb.e

bb.e:                                             ; preds = %.split.us.3
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %i.ag, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store atomic i32 %i.al, ptr %i.am release, align 4
  br label %.split15.us

.split15.us:                                      ; preds = %.split.us.3, %bb.e, %.split15.us.loopexit
  %.sroa.09.0.insert.insert = phi i64 [ %i.cd, %.split15.us.loopexit ], [ 0, %bb.e ], [ 0, %.split.us.3 ]
  ret i64 %.sroa.09.0.insert.insert

bb.f:                                             ; preds = %.split.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.pre20, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = sub i64 %i.g, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = lshr i32 %i.aq, 14
  br label %.split.1

.split.1:                                         ; preds = %bb.f, %.split.preheader
  %.sroa.09.1 = phi i32 [ undef, %.split.preheader ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.2.1 = phi i8 [ 0, %.split.preheader ], [ 1, %bb.f ] ; 2 uses
  %i.as = load ptr, ptr %.pre20, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(44) %.pre20, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #14 ; 2 uses
  %.not.1 = icmp eq i64 %i.av, 0
  %.pre21 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %.not.1, label %.split.2, label %bb.g

bb.g:                                             ; preds = %.split.1
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre21, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = trunc nuw i8 %.sroa.2.1 to i1
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = lshr i32 %i.az, 14
  br label %.split.2

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store atomic i32 %i.az, ptr %i.bc release, align 4
  br label %.split.2

.split.2:                                         ; preds = %bb.i, %bb.h, %.split.1
  %.sroa.09.1.1 = phi i32 [ %.sroa.09.1, %.split.1 ], [ %.sroa.09.1, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.2.1.1 = phi i8 [ %.sroa.2.1, %.split.1 ], [ 1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.bd = load ptr, ptr %.pre21, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef i64 %i.bf(ptr noundef nonnull align 8 dereferenceable(44) %.pre21, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #14 ; 2 uses
  %.not.2 = icmp eq i64 %i.bg, 0
  %.pre22 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %.not.2, label %.split.3, label %bb.j

bb.j:                                             ; preds = %.split.2
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre22, i64 24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = trunc nuw i8 %.sroa.2.1.1 to i1
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = lshr i32 %i.bk, 14
  br label %.split.3

bb.l:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 %i.bk, ptr %i.bn release, align 8
  br label %.split.3

.split.3:                                         ; preds = %bb.l, %bb.k, %.split.2
  %.sroa.09.1.2 = phi i32 [ %.sroa.09.1.1, %.split.2 ], [ %.sroa.09.1.1, %bb.l ], [ %i.bm, %bb.k ] ; 2 uses
  %.sroa.2.1.2 = phi i8 [ %.sroa.2.1.1, %.split.2 ], [ 1, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.bo = load ptr, ptr %.pre22, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(44) %.pre22, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #14 ; 2 uses
  %.not.3 = icmp eq i64 %i.br, 0
  br i1 %.not.3, label %.split15.us.loopexit, label %bb.m

bb.m:                                             ; preds = %.split.3
  %i.bs = load ptr, ptr %i.a, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = trunc nuw i8 %.sroa.2.1.2 to i1
  br i1 %i.bx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = lshr i32 %i.bw, 14
  br label %.split15.us.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 36
  store atomic i32 %i.bw, ptr %i.bz release, align 4
  br label %.split15.us.loopexit

.split15.us.loopexit:                             ; preds = %bb.o, %bb.n, %.split.3
  %.sroa.09.1.3 = phi i32 [ %.sroa.09.1.2, %.split.3 ], [ %.sroa.09.1.2, %bb.o ], [ %i.by, %bb.n ]
  %.sroa.2.1.3 = phi i8 [ %.sroa.2.1.2, %.split.3 ], [ 1, %bb.o ], [ 1, %bb.n ]
  %i.ca = zext nneg i8 %.sroa.2.1.3 to i64
  %i.cb = shl nuw nsw i64 %i.ca, 32
  %i.cc = zext i32 %.sroa.09.1.3 to i64
  %i.cd = or disjoint i64 %i.cb, %i.cc
  br label %.split15.us
}

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal4wasm8WasmCode27DecRefOnPotentiallyDeadCodeEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

declare void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !53
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN2v88internal4wasm8WasmCode16ConcatenateBytesESt16initializer_listINS_4base6VectorIKhEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.eo, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i.us.i.i.i = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val1.i.i.us.i.i.i = load ptr, ptr %i.ad, align 8
  %i.ae = icmp ult ptr %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !55

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %.val.val.i.i.us.i.i.i = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val.i.i.i.us.i.i.i = load ptr, ptr %i.am, align 8
  %i.an = icmp ult ptr %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i", !llvm.loop !56

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !57

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = load ptr, ptr %i.az, align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bd, align 8
  %i.be = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !55

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8
  store ptr %i.bk, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %.val.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8
  %i.bq = icmp ult ptr %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", !llvm.loop !56

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !57

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = load ptr, ptr %.fr29, align 8
  store ptr %i.bx, ptr %i.bv, align 8
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = load ptr, ptr %i.ci, align 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %.val.i.i.i.i21.i = load ptr, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  %.val1.i.i.i.i22.i = load ptr, ptr %i.cm, align 8
  %i.cn = icmp ult ptr %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !55

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i14.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %.val.val.i.i.i.i16.i = load ptr, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %.val.i.i.i.i.i17.i = load ptr, ptr %i.df, align 8
  %i.dg = icmp ult ptr %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i16.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i14.i
  store ptr %i.de, ptr %i.dh, align 8
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %bb.k, !llvm.loop !56

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i14.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !58

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.ep, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8            ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  %.val.i.i.i = load ptr, ptr %i.dr, align 8      ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ds, align 8     ; 3 uses
  %i.dt = icmp ult ptr %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %.val1.i27.i.i = load ptr, ptr %i.dv, align 8   ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dw = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr29, align 8
  store ptr %i.dq, ptr %.fr29, align 8
  store ptr %i.dx, ptr %i.dn, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr29, align 8
  store ptr %i.dz, ptr %i.do, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr29, align 8
  store ptr %i.dz, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.ea = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr29, align 8
  store ptr %i.dp, ptr %.fr29, align 8
  store ptr %i.eb, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr29, align 8
  store ptr %i.ed, ptr %i.do, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr29, align 8
  store ptr %i.ed, ptr %i.dn, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader", %bb.y
  %.sroa.014.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr29, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %.val1.i.i13.i = load ptr, ptr %i.ef, align 8   ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.014.1.i.i, align 8 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %.val.i.i14.i = load ptr, ptr %i.eh, align 8
  %i.ei = icmp ult ptr %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !59

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %.val1.i11.i.i = load ptr, ptr %i.el, align 8
  %i.em = icmp ult ptr %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !60

bb.x:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEET_SI_SI_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.014.1.i.i, align 8
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_SI_T0_.exit.i", !llvm.loop !61

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEET_SI_SI_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2653, i64 noundef %i.dl)
  %i.en = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.eo = sub i64 %i.en, %i.a                     ; 2 uses
  %i.ep = ashr exact i64 %i.eo, 3                 ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, 16
  br i1 %i.eq, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !54

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal4wasm8WasmCodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_22WasmImportWrapperCache4FreeERSA_E3$_0EEEvT_SI_SI_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal4wasm17WasmCodeAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %2, align 8
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #18 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8
  %.pre82 = load i64, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8                ; 8 uses
  %i.y = load i64, ptr %i.w, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !62

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #18 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN2v88internal4wasm8WasmCodeEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
end_hunk_0
