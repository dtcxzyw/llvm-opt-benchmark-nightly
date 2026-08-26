Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/paged-spaces?download=true
inline.NumInlined: 588
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal14PagedSpaceBase23RemovePageFromSpaceImplEPNS0_12PageMetadataE:bb.a

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.not17.i = icmp eq ptr %i.l, null
  br i1 %.not17.i, label %_ZN2v88internal4heap4ListINS0_19MutablePageMetadataEE6RemoveEPS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  store ptr %i.j, ptr %i.n, align 8
  br label %_ZN2v88internal4heap4ListINS0_19MutablePageMetadataEE6RemoveEPS3_.exit

_ZN2v88internal4heap4ListINS0_19MutablePageMetadataEE6RemoveEPS3_.exit: ; preds = %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @_ZN2v88internal8FreeList18EvictFreeListItemsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull %1) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 3
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal4heap4ListINS0_19MutablePageMetadataEE6RemoveEPS3_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, -55464
  %i.aa = inttoptr i64 %i.z to ptr
  tail call void @_ZN2v88internal7Isolate21RemoveCodeMemoryChunkEPNS0_19MutablePageMetadataE(ptr noundef nonnull align 8 dereferenceable(64320) %i.aa, ptr noundef nonnull %1) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal4heap4ListINS0_19MutablePageMetadataEE6RemoveEPS3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = atomicrmw sub ptr %i.ad, i64 %i.ac seq_cst, align 8 ; 0 uses
  %i.af = tail call noundef i64 @_ZNK2v88internal19MutablePageMetadata23CommittedPhysicalMemoryEv(ptr noundef nonnull align 8 dereferenceable(4448) %1) #16 ; 2 uses
  %i.ag = tail call noundef zeroext i1 @_ZN2v84base2OS14HasLazyCommitsEv() #16
  %i.ah = icmp ne i64 %i.af, 0
  %or.cond.not.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.not.i, label %bb.j, label %_ZN2v88internal14PagedSpaceBase32DecrementCommittedPhysicalMemoryEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = atomicrmw sub ptr %i.ai, i64 %i.af monotonic, align 8 ; 0 uses
  br label %_ZN2v88internal14PagedSpaceBase32DecrementCommittedPhysicalMemoryEm.exit

_ZN2v88internal14PagedSpaceBase32DecrementCommittedPhysicalMemoryEm.exit: ; preds = %bb.i, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = atomicrmw sub ptr %i.ak, i64 %i.ap seq_cst, align 8 ; 0 uses
  ret void
}

declare void @_ZN2v88internal7Isolate21RemoveCodeMemoryChunkEPNS0_19MutablePageMetadataE(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14PagedSpaceBase17GetObjectIteratorEPNS0_4HeapE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.536") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 104) #16 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal24PagedSpaceObjectIteratorE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(152) %1) #16, !inline_history !27 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.m, ptr %i.o, align 8
  tail call void @_ZN2v88internal4Heap16MakeHeapIterableEv(ptr noundef nonnull align 8 dereferenceable(2992) %2) #16
  store ptr %i.a, ptr %0, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14PagedSpaceBase27AddRangeToActiveSystemPagesEPNS0_12PageMetadataEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -262144                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sub i64 %2, %i.c
  %i.g = sub i64 %3, %i.c
  %i.h = load i64, ptr @_ZN2v88internal15MemoryAllocator22commit_page_size_bits_E, align 8
  %i.i = tail call noundef i64 @_ZN4heap4base17ActiveSystemPages3AddEmmm(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f, i64 noundef %i.g, i64 noundef %i.h) #16
  %i.j = load i64, ptr @_ZN2v88internal15MemoryAllocator17commit_page_size_E, align 8
  %i.k = mul i64 %i.j, %i.i                       ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN2v84base2OS14HasLazyCommitsEv() #16
  %i.m = icmp ne i64 %i.k, 0
  %or.cond.not.i = and i1 %i.l, %i.m
  br i1 %or.cond.not.i, label %bb.b, label %_ZN2v88internal14PagedSpaceBase32IncrementCommittedPhysicalMemoryEm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = atomicrmw add ptr %i.n, i64 %i.k monotonic, align 8 ; 0 uses
  br label %_ZN2v88internal14PagedSpaceBase32IncrementCommittedPhysicalMemoryEm.exit

_ZN2v88internal14PagedSpaceBase32IncrementCommittedPhysicalMemoryEm.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef i64 @_ZN4heap4base17ActiveSystemPages3AddEmmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14PagedSpaceBase23ReduceActiveSystemPagesEPNS0_12PageMetadataEN4heap4base17ActiveSystemPagesE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i64 @_ZN4heap4base17ActiveSystemPages6ReduceES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %2) #16
  %i.d = load i64, ptr @_ZN2v88internal15MemoryAllocator17commit_page_size_E, align 8
  %i.e = mul i64 %i.d, %i.c                       ; 2 uses
  %i.f = tail call noundef zeroext i1 @_ZN2v84base2OS14HasLazyCommitsEv() #16
  %i.g = icmp ne i64 %i.e, 0
  %or.cond.not.i = and i1 %i.f, %i.g
  br i1 %or.cond.not.i, label %bb.b, label %_ZN2v88internal14PagedSpaceBase32DecrementCommittedPhysicalMemoryEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = atomicrmw sub ptr %i.h, i64 %i.e monotonic, align 8 ; 0 uses
  br label %_ZN2v88internal14PagedSpaceBase32DecrementCommittedPhysicalMemoryEm.exit

_ZN2v88internal14PagedSpaceBase32DecrementCommittedPhysicalMemoryEm.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef i64 @_ZN4heap4base17ActiveSystemPages6ReduceES1_(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14PagedSpaceBase14RefillFreeListEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.508", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1872
  %i.d = load ptr, ptr %i.c, align 8
  call void @_ZN2v88internal7Sweeper20GetAllSweptPagesSafeEPNS0_14PagedSpaceBaseE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.508") align 8 %1, ptr noundef nonnull align 8 dereferenceable(545) %i.d, ptr noundef nonnull %0) #16
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit
  %.pre = load ptr, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EED2Ev.exit

_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit
  %.sroa.0.015 = phi ptr [ undef, %.lr.ph ], [ %.sroa.0.0, %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit ]
  %.sroa.08.014 = phi ptr [ %i.e, %.lr.ph ], [ %i.br, %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.08.014, align 8     ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 1024
  %.not11 = icmp eq i32 %i.x, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal8FreeList18EvictFreeListItemsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull %i.u) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = load i32, ptr %i.j, align 4
  %.not.i.i = icmp ne i32 %i.z, 0
  %i.aa = load i32, ptr %i.k, align 8
  %i.ab = icmp eq i32 %i.aa, 1
  %.not13 = select i1 %.not.i.i, i1 true, i1 %i.ab ; 2 uses
  br i1 %.not13, label %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexC2EPKS1_.exit, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i: ; preds = %bb.e
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #16
  br label %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexC2EPKS1_.exit

_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexC2EPKS1_.exit: ; preds = %bb.e, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i
  %.sroa.0.0 = phi ptr [ %i.l, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i ], [ %.sroa.0.015, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.ad = load atomic i64, ptr %i.ac seq_cst, align 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexC2EPKS1_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexC2EPKS1_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 240 ; 2 uses
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = sub nuw i64 %i.ag, %i.ai                ; 3 uses
  %i.al = load i32, ptr %i.k, align 8
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.m, align 8
  %i.ao = sub i64 %i.an, %i.ak
  store i64 %i.ao, ptr %i.m, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = atomicrmw sub ptr %i.n, i64 %i.ak seq_cst, align 8 ; 0 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %i.ak) #16, !inline_history !28
  br label %_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit

_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit: ; preds = %bb.g, %bb.j
  store atomic i64 0, ptr %i.af monotonic, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.au = load atomic ptr, ptr %i.at seq_cst, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i, label %_ZN2v88internal14PagedSpaceBase24RelinkFreeListCategoriesEPNS0_12PageMetadataE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i.i
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal16FreeListCategory6RelinkEPNS0_8FreeListE(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef %i.be) #16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bf = load atomic ptr, ptr %i.at seq_cst, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next.i.i, %i.bk
  br i1 %i.bl, label %bb.k, label %_ZN2v88internal14PagedSpaceBase24RelinkFreeListCategoriesEPNS0_12PageMetadataE.exit, !llvm.loop !17

_ZN2v88internal14PagedSpaceBase24RelinkFreeListCategoriesEPNS0_12PageMetadataE.exit: ; preds = %bb.k, %_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit
  %i.bm = load ptr, ptr %i.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bq = atomicrmw add ptr %i.bp, i64 %i.bo monotonic, align 8 ; 0 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, null
  %or.cond = select i1 %.not13, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal14PagedSpaceBase24RelinkFreeListCategoriesEPNS0_12PageMetadataE.exit
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0) #16
  br label %_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit

_ZN2v88internal14PagedSpaceBase25ConcurrentAllocationMutexD2Ev.exit: ; preds = %_ZN2v88internal14PagedSpaceBase24RelinkFreeListCategoriesEPNS0_12PageMetadataE.exit, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.g
  br i1 %i.bs, label %._crit_edge.loopexit, label %bb.c
}

declare void @_ZN2v88internal7Sweeper20GetAllSweptPagesSafeEPNS0_14PagedSpaceBaseE(ptr dead_on_unwind writable sret(%"class.std::vector.508") align 8, ptr noundef nonnull align 8 dereferenceable(545), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal10PagedSpace21CreateAllocatorPolicyEPNS0_13MainAllocatorE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 4 uses
  tail call void @_ZN2v88internal15AllocatorPolicyC2EPNS0_13MainAllocatorE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %1) #16
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal25PagedSpaceAllocatorPolicyE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.b, align 8
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15CompactionSpace13NotifyNewPageEPNS0_12PageMetadataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIPN2v88internal12PageMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

_ZNKSt6vectorIPN2v88internal12PageMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #19 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN2v88internal12PageMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN2v88internal12PageMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #18
  br label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.d, align 8
  br label %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN2v88internal12PageMetadataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15CompactionSpace14RefillFreeListEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1872
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.bn, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ]
  %i.f = tail call noundef ptr @_ZN2v88internal7Sweeper16GetSweptPageSafeEPNS0_14PagedSpaceBaseE(ptr noundef nonnull align 8 dereferenceable(545) %i.d, ptr noundef nonnull %0) #16 ; 11 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 1024
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8
  tail call void @_ZN2v88internal8FreeList18EvictFreeListItemsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull %i.f) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.l = load atomic ptr, ptr %i.k seq_cst, align 8 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.o = load atomic i64, ptr %i.n seq_cst, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 2 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.h, label %_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit

bb.h:                                             ; preds = %bb.g
  %i.v = sub nuw i64 %i.r, %i.t                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = sub i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.z, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.ad = atomicrmw sub ptr %i.ac, i64 %i.v seq_cst, align 8 ; 0 uses
  %i.ae = load ptr, ptr %i.l, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 noundef %i.v) #16, !inline_history !28
  br label %_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit

_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit: ; preds = %bb.g, %bb.j
  store atomic i64 0, ptr %i.q monotonic, align 8
  %i.ah = load ptr, ptr %i.l, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull %i.f) #16
  tail call void @_ZN2v88internal14PagedSpaceBase11AddPageImplEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.f)
  %i.ak = load atomic ptr, ptr %i.k seq_cst, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal14PagedSpaceBase33RefineAllocatedBytesAfterSweepingEPNS0_12PageMetadataE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ax, %bb.k ]
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.k ] ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
end_hunk_0
