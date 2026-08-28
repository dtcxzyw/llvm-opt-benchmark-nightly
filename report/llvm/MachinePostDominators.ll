Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachinePostDominators?download=true
inline.NumInlined: 3623
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS2_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev:bb.a
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS3_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS3_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS3_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ah = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS3_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ai = and i32 %i.ah, 1
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.e, label %_ZN4llvm13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS2_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS3_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !237 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS2_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !237
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 72
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #17
  br label %_ZN4llvm13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS2_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS2_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_17MachineBasicBlockENS_9GraphDiffIS3_Lb1EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #3

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4llvm15callDefaultCtorINS_35MachinePostDominatorTreeWrapperPassEEEPNS_4PassEv() #0 comdat {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #19 ; 2 uses
  tail call void @_ZN4llvm35MachinePostDominatorTreeWrapperPassC1Ev(ptr noundef nonnull align 8 dereferenceable(296) %i.a) #17
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.h = ptrtoint ptr %.07.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %sum.shift.i = lshr i64 %i.j, 4
  %i.k = trunc i64 %sum.shift.i to i32
  %i.l = and i32 %i.k, 2147483647
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.m to i64
  %i.n = shl nuw nsw i64 448, %.sroa.speculated.i.i
  %i.o = load ptr, ptr %.07.i, align 8, !tbaa !277
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.o, i64 noundef %i.n, i64 noundef 16) #17
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i, !llvm.loop !278

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit, %.lr.ph.i1
  %.011.i = phi ptr [ %i.z, %.lr.ph.i1 ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 3 uses
  %i.w = load ptr, ptr %.011.i, align 8, !tbaa !274
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !276
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.y, i64 noundef 16) #17
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 16 ; 2 uses
  %.not.i2 = icmp eq ptr %i.z, %i.v
  br i1 %.not.i2, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, label %.lr.ph.i1

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit: ; preds = %.lr.ph.i1
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !8
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit
  %i.aa = phi ptr [ %.pre, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit
  tail call void @free(ptr noundef %i.aa) #17
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit, %bb.b
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #17
  br label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit

_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, %bb.c
  ret void
}

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSt16__is_permutationIPKPN4llvm17MachineBasicBlockES4_N9__gnu_cxx5__ops19_Iter_equal_to_iterEEbT_S8_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %.not57 = icmp eq ptr %0, %1
  br i1 %.not57, label %.critedge42, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.03159 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ] ; 8 uses
  %.03258 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.03159, align 8, !tbaa !227
  %i.c = load ptr, ptr %.03258, align 8, !tbaa !227
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSt9__advanceIPKPN4llvm17MachineBasicBlockElEvRT_T0_St26random_access_iterator_tag.exit

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.03159, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03258, i64 8
  %.not = icmp eq ptr %i.e, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.critedge42, label %.lr.ph, !llvm.loop !353

_ZSt9__advanceIPKPN4llvm17MachineBasicBlockElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %.lr.ph
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.03159 to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %.03258, i64 %i.i
  %.not3868 = icmp eq ptr %.03159, %1
  br i1 %.not3868, label %.critedge42, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZSt9__advanceIPKPN4llvm17MachineBasicBlockElEvRT_T0_St26random_access_iterator_tag.exit
  %i.k = add i64 %i.g, -8
  %i.l = shl i64 %indvar, 3
  %i.m = add i64 %i.l, %i.a
  %i.n = sub i64 %i.k, %i.m                       ; 3 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.n, 24
  %n.vec114 = and i64 %i.p, 4611686018427387900   ; 3 uses
  %i.q = shl i64 %n.vec114, 3
  %i.r = getelementptr i8, ptr %.03258, i64 %i.q
  %cmp.n127 = icmp eq i64 %i.p, %n.vec114
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph70, %.critedge
  %indvar107 = phi i64 [ 0, %.lr.ph70 ], [ %indvar.next108, %.critedge ] ; 2 uses
  %.03569 = phi ptr [ %.03159, %.lr.ph70 ], [ %i.cj, %.critedge ] ; 12 uses
  %i.s = shl i64 %indvar107, 3
  %i.t = sub i64 %i.n, %i.s                       ; 2 uses
  %3 = lshr i64 %i.t, 3
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.u = ptrtoint ptr %.03569 to i64              ; 2 uses
  %i.v = sub i64 %i.u, %i.h                       ; 3 uses
  %i.w = ashr i64 %i.v, 5                         ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = load ptr, ptr %.03569, align 8, !tbaa !227 ; 4 uses
  %i.z = and i64 %i.v, -32
  %scevgep.i.i = getelementptr i8, ptr %.03159, i64 %i.z ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.047.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.am, %bb.h ] ; 2 uses
  %.02946.i.i = phi ptr [ %.03159, %.lr.ph.i.i ], [ %i.al, %bb.h ] ; 9 uses
  %i.aa = load ptr, ptr %.02946.i.i, align 8, !tbaa !227
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !227
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !227
  %i.ah = icmp eq ptr %i.ag, %i.y
  br i1 %i.ah, label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !227
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 32
  %i.am = add nsw i64 %.047.i.i, -1
  %i.an = icmp sgt i64 %.047.i.i, 1
  br i1 %i.an, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !354

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre54.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre55.i.i = sub i64 %i.u, %.pre54.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi56.i.i = phi i64 [ %.pre55.i.i, %._crit_edge.loopexit.i.i ], [ %i.v, %bb.c ]
  %.029.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %.03159, %bb.c ] ; 5 uses
  %i.ao = ashr exact i64 %.pre-phi56.i.i, 3
  switch i64 %i.ao, label %bb.n [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i
  ]

._crit_edge._crit_edge52.i.i:                     ; preds = %._crit_edge.i.i
  %.pre53.i.i = load ptr, ptr %.03569, align 8, !tbaa !227
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load ptr, ptr %.03569, align 8, !tbaa !227
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = load ptr, ptr %.029.lcssa.i.i, align 8, !tbaa !227
  %i.aq = load ptr, ptr %.03569, align 8, !tbaa !227 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.at = phi ptr [ %i.aq, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.as, %bb.j ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.au = load ptr, ptr %.1.i.i, align 8, !tbaa !227
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge52.i.i
  %i.ax = phi ptr [ %i.at, %bb.l ], [ %.pre53.i.i, %._crit_edge._crit_edge52.i.i ]
  %.2.i.i = phi ptr [ %i.aw, %bb.l ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge52.i.i ] ; 2 uses
  %i.ay = load ptr, ptr %.2.i.i, align 8, !tbaa !227
  %i.az = icmp eq ptr %i.ay, %i.ax
  br i1 %i.az, label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  br label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 8
  br label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 16
  br label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 24
  br label %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit: ; preds = %bb.d, %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92, %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94, %bb.i, %bb.k, %bb.m, %bb.n
  %.028.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %.03569, %bb.n ], [ %.2.i.i, %bb.m ], [ %.029.lcssa.i.i, %bb.i ], [ %i.bc, %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94 ], [ %i.ba, %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit ], [ %i.bb, %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92 ], [ %.02946.i.i, %bb.d ]
  %.not39 = icmp eq ptr %.03569, %.028.i.i
  br i1 %.not39, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit
  %i.bd = load ptr, ptr %.03569, align 8, !tbaa !227 ; 4 uses
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert115 = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat116 = shufflevector <2 x ptr> %broadcast.splatinsert115, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next124, %vector.body117 ] ; 2 uses
  %vec.phi119 = phi <2 x i64> [ zeroinitializer, %vector.ph113 ], [ %i.bk, %vector.body117 ]
  %vec.phi120 = phi <2 x i64> [ zeroinitializer, %vector.ph113 ], [ %i.bl, %vector.body117 ]
  %i.be = shl i64 %index118, 3
  %next.gep121 = getelementptr i8, ptr %.03258, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <2 x ptr>, ptr %next.gep121, align 8, !tbaa !227
  %wide.load123 = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !227
  %i.bg = icmp eq <2 x ptr> %wide.load122, %broadcast.splat116
  %i.bh = icmp eq <2 x ptr> %wide.load123, %broadcast.splat116
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi119, %i.bi        ; 2 uses
  %i.bl = add <2 x i64> %vec.phi120, %i.bj        ; 2 uses
  %index.next124 = add nuw i64 %index118, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next124, %n.vec114
  br i1 %i.bm, label %middle.block125, label %vector.body117, !llvm.loop !355

middle.block125:                                  ; preds = %vector.body117
  %bin.rdx126 = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx126) ; 2 uses
  br i1 %cmp.n127, label %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %.lr.ph.i, %middle.block125
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %middle.block125 ]
  %.057.i.ph = phi ptr [ %.03258, %.lr.ph.i ], [ %i.r, %middle.block125 ]
  br label %scalar.ph111

scalar.ph111:                                     ; preds = %scalar.ph111.preheader, %scalar.ph111
  %.08.i = phi i64 [ %spec.select.i, %scalar.ph111 ], [ %.08.i.ph, %scalar.ph111.preheader ]
  %.057.i = phi ptr [ %i.br, %scalar.ph111 ], [ %.057.i.ph, %scalar.ph111.preheader ] ; 2 uses
  %i.bo = load ptr, ptr %.057.i, align 8, !tbaa !227
  %i.bp = icmp eq ptr %i.bo, %i.bd
  %i.bq = zext i1 %i.bp to i64
  %spec.select.i = add nuw nsw i64 %.08.i, %i.bq  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.j
  br i1 %.not.i, label %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, label %scalar.ph111, !llvm.loop !356

_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit: ; preds = %scalar.ph111, %middle.block125
  %spec.select.i.lcssa = phi i64 [ %i.bn, %middle.block125 ], [ %spec.select.i, %scalar.ph111 ] ; 2 uses
  %i.bs = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bs, label %.critedge42, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i44.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i44.preheader
  %n.vec = and i64 %4, 4611686018427387900        ; 3 uses
  %i.bt = shl i64 %n.vec, 3
  %i.bu = getelementptr i8, ptr %.03569, i64 %i.bt
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi109 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bv = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.03569, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !227
  %wide.load110 = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !227
  %i.bx = icmp eq <2 x ptr> %wide.load, %broadcast.splat
  %i.by = icmp eq <2 x ptr> %wide.load110, %broadcast.splat
  %i.bz = zext <2 x i1> %i.bx to <2 x i64>
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = add <2 x i64> %vec.phi, %i.bz           ; 2 uses
  %i.cc = add <2 x i64> %vec.phi109, %i.ca        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, label %.lr.ph.i44.preheader130

.lr.ph.i44.preheader130:                          ; preds = %.lr.ph.i44.preheader, %middle.block
  %.08.i45.ph = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.ce, %middle.block ]
  %.057.i46.ph = phi ptr [ %.03569, %.lr.ph.i44.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader130, %.lr.ph.i44
  %.08.i45 = phi i64 [ %spec.select.i47, %.lr.ph.i44 ], [ %.08.i45.ph, %.lr.ph.i44.preheader130 ]
  %.057.i46 = phi ptr [ %i.ci, %.lr.ph.i44 ], [ %.057.i46.ph, %.lr.ph.i44.preheader130 ] ; 2 uses
  %i.cf = load ptr, ptr %.057.i46, align 8, !tbaa !227
  %i.cg = icmp eq ptr %i.cf, %i.bd
  %i.ch = zext i1 %i.cg to i64
  %spec.select.i47 = add nuw nsw i64 %.08.i45, %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i46, i64 8 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ci, %1
  br i1 %.not.i48, label %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, label %.lr.ph.i44, !llvm.loop !358

_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50: ; preds = %.lr.ph.i44, %middle.block
  %spec.select.i47.lcssa = phi i64 [ %i.ce, %middle.block ], [ %spec.select.i47, %.lr.ph.i44 ]
  %.not40 = icmp eq i64 %spec.select.i47.lcssa, %spec.select.i.lcssa
  br i1 %.not40, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, %_ZSt9__find_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.03569, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.cj, %1
  %indvar.next108 = add i64 %indvar107, 1
  br i1 %.not38, label %.critedge42, label %bb.c, !llvm.loop !359

.critedge42:                                      ; preds = %bb.b, %.critedge, %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, %bb.a, %_ZSt9__advanceIPKPN4llvm17MachineBasicBlockElEvRT_T0_St26random_access_iterator_tag.exit
  %.5 = phi i1 [ true, %_ZSt9__advanceIPKPN4llvm17MachineBasicBlockElEvRT_T0_St26random_access_iterator_tag.exit ], [ true, %bb.a ], [ false, %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50 ], [ true, %.critedge ], [ false, %_ZSt10__count_ifIPKPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit ], [ true, %bb.b ]
  ret i1 %.5
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm3cfg15LegalizeUpdatesIPNS_17MachineBasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS7_EEbb(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.llvm::SmallDenseMap.220", align 8 ; 19 uses
  %6 = alloca %"struct.std::pair.223", align 8    ; 9 uses
  %7 = alloca %"struct.std::pair.223", align 8    ; 5 uses
  %8 = alloca %"struct.std::pair.223", align 8    ; 5 uses
  %i.b = zext i1 %4 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store i32 1, ptr %5, align 8
  store i32 0, ptr %i.c, align 8
  %i.d = trunc i64 %1 to i32                      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E7reserveEj.exit, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E31getMinBucketToReserveForEntriesEj.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E31getMinBucketToReserveForEntriesEj.exit.i: ; preds = %bb.a
  %i.f = shl i32 %i.d, 2
  %i.g = udiv i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q                        ; 2 uses
  %.not.i = icmp samesign ult i64 %i.s, 4
  br i1 %.not.i, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E31getMinBucketToReserveForEntriesEj.exit.i
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = add nuw i32 %i.t, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.u)
  br label %.lr.ph

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E7reserveEj.exit: ; preds = %bb.a
  %.not71 = icmp eq i64 %1, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E31getMinBucketToReserveForEntriesEj.exit.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E7reserveEj.exit
  %.idx101.pn = shl nuw nsw i64 %1, 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx101.pn ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.072.us = phi ptr [ %i.ai, %.lr.ph.split.us ], [ %0, %.lr.ph ] ; 3 uses
  %i.x = load ptr, ptr %.072.us, align 8, !tbaa !360
  %i.y = getelementptr inbounds nuw i8, ptr %.072.us, i64 8
  %.0.copyload.i.i.i.i.us = load i64, ptr %i.y, align 8 ; 2 uses
  %i.z = and i64 %.0.copyload.i.i.i.i.us, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = and i64 %.0.copyload.i.i.i.i.us, 4
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i32 1, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %i.aa, ptr %6, align 8, !tbaa !364
  store ptr %i.x, ptr %i.w, align 8, !tbaa !366
  %i.ae = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %.fca.0.extract.i.us = extractvalue { ptr, i8 } %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.us, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !350
  %i.ah = add nsw i32 %i.ag, %i.ad
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !350
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %.072.us, i64 16 ; 2 uses
  %.not.us = icmp eq ptr %i.ai, %i.v
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E7reserveEj.exit
  %.not71104 = phi i1 [ false, %.lr.ph.split.us ], [ true, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_17MachineBasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E7reserveEj.exit ], [ false, %.lr.ph.split ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !11
  %i.ak = load i32, ptr %5, align 8               ; 2 uses
  %i.al = lshr i32 %i.ak, 1                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !205
  %i.ao = icmp ugt i32 %i.al, %i.an
  br i1 %i.ao, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_3cfg6UpdateIPNS_17MachineBasicBlockEEEE7reserveEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ap = zext nneg i32 %i.al to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.aq, i64 noundef %i.ap, i64 noundef 16) #17
  %.pre = load i32, ptr %5, align 8, !noalias !367
  br label %_ZN4llvm15SmallVectorImplINS_3cfg6UpdateIPNS_17MachineBasicBlockEEEE7reserveEm.exit

_ZN4llvm15SmallVectorImplINS_3cfg6UpdateIPNS_17MachineBasicBlockEEEE7reserveEm.exit: ; preds = %._crit_edge, %bb.c
  %i.ar = phi i32 [ %i.ak, %._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %i.as = and i32 %i.ar, 1
  %.not.i.i.i.i = icmp eq i32 %i.as, 0            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !noalias !367
  %i.av = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !367
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.ax, ptr %i.c ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !noalias !367
  %i.bb = select i1 %.not.i.i.i.i, i32 %i.ba, i32 4 ; 2 uses
  %i.bc = icmp ult i32 %i.ar, 2
  %i.bd = zext i32 %i.bb to i64                   ; 4 uses
  %.idx117 = mul nuw nsw i64 %i.bd, 24            ; 2 uses
end_hunk_0
