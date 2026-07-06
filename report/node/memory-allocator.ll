inline.NumInlined: 827
inline.NumDeleted: 411
begin_hunk_0_@_ZN2v88internal15MemoryAllocatorC2EPNS0_7IsolateEPNS_13PageAllocatorES5_PNS0_10MemoryPoolEm:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %4, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  ret void
}

declare noundef ptr @_ZNK2v88internal7Isolate14page_allocatorEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #1

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15MemoryAllocator8TearDownEv(ptr noundef nonnull align 8 dereferenceable(312) initializes((32, 40)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef %i.c) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN2v88internal13VirtualMemory4FreeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN2v88internal10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN2v88internal13VirtualMemory4FreeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal15MemoryAllocator20GetPooledChunksCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call noundef i64 @_ZNK2v88internal10MemoryPool8GetCountEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef %i.c) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.e
}

declare noundef i64 @_ZNK2v88internal10MemoryPool8GetCountEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal15MemoryAllocator26GetSharedPooledChunksCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZNK2v88internal10MemoryPool14GetSharedCountEv(ptr noundef nonnull align 8 dereferenceable(176) %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.d
}

declare noundef i64 @_ZNK2v88internal10MemoryPool14GetSharedCountEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal15MemoryAllocator25GetTotalPooledChunksCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZNK2v88internal10MemoryPool13GetTotalCountEv(ptr noundef nonnull align 8 dereferenceable(176) %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.d
}

declare noundef i64 @_ZNK2v88internal10MemoryPool13GetTotalCountEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15MemoryAllocator30ReleasePooledChunksImmediatelyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal10MemoryPool18ReleaseImmediatelyEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef %i.c) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal10MemoryPool18ReleaseImmediatelyEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15MemoryAllocator16FreeMemoryRegionEPNS_13PageAllocatorEmm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(312) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  tail call void @_ZN2v88internal9FreePagesEPNS_13PageAllocatorEPvm(ptr noundef %1, ptr noundef %i.a, i64 noundef %3) #16
  ret void
}

declare void @_ZN2v88internal9FreePagesEPNS_13PageAllocatorEPvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal15MemoryAllocator21AllocateAlignedMemoryEmmmNS0_15AllocationSpaceENS0_13ExecutabilityEPvPNS0_13VirtualMemoryENS0_8PageSizeENS0_14AllocationHintE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i64 noundef %1, i64 %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, i32 %8, i8 %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.v8::internal::VirtualMemory", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::VirtualMemory", align 8 ; 7 uses
  %switch.tableidx = add i32 %4, -3               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 10
  br i1 %i.a, label %switch.lookup, label %_ZNK2v88internal15MemoryAllocator14page_allocatorENS0_15AllocationSpaceE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal15MemoryAllocator21AllocateAlignedMemoryEmmmNS0_15AllocationSpaceENS0_13ExecutabilityEPvPNS0_13VirtualMemoryENS0_8PageSizeENS0_14AllocationHintE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZNK2v88internal15MemoryAllocator14page_allocatorENS0_15AllocationSpaceE.exit

_ZNK2v88internal15MemoryAllocator14page_allocatorENS0_15AllocationSpaceE.exit: ; preds = %bb.a, %switch.lookup
  %.sink.i = phi i64 [ %switch.ext, %switch.lookup ], [ 8, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %.0.i = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = icmp ne i32 %5, 1                        ; 4 uses
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5
  %i.f = trunc nuw i8 %i.e to i1
  %.not54 = select i1 %i.d, i1 true, i1 %i.f
  %i.g = select i1 %.not54, i32 2, i32 3          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZN2v88internal13VirtualMemoryC1EPNS_13PageAllocatorEmNS2_14AllocationHintEmNS2_10PermissionE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %.0.i, i64 noundef %1, ptr %6, i8 %9, i64 noundef %3, i32 noundef %i.g) #16
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK2v88internal15MemoryAllocator14page_allocatorENS0_15AllocationSpaceE.exit
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 58248
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal12_GLOBAL__N_123HandleAllocationFailureEPNS0_4HeapENS0_13ExecutabilityE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 55464
  %i.o = select i1 %i.d, ptr @.str.10, ptr @.str.9
  call void @_ZN2v88internal4Heap23FatalProcessOutOfMemoryEPKc(ptr noundef nonnull align 8 dereferenceable(2992) %i.n, ptr noundef nonnull %i.o) #17
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal15MemoryAllocator14page_allocatorENS0_15AllocationSpaceE.exit
  %i.p = sub i64 0, %1
  %i.q = icmp eq i64 %i.i, %i.p
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %_ZNSt8optionalIN2v88internal13VirtualMemoryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

_ZNSt8optionalIN2v88internal13VirtualMemoryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load ptr, ptr %10, align 8
  store ptr %i.w, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  store i8 1, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @_ZN2v88internal13VirtualMemoryC1EPNS_13PageAllocatorEmNS2_14AllocationHintEmNS2_10PermissionE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %.0.i, i64 noundef %1, ptr %6, i8 %9, i64 noundef %3, i32 noundef %i.g) #16
  %i.x = load ptr, ptr %11, align 8
  store ptr %i.x, ptr %10, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.z = load i64, ptr %i.h, align 8              ; 2 uses
  %.not55 = icmp eq i64 %i.z, 0
  br i1 %.not55, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNSt8optionalIN2v88internal13VirtualMemoryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 58248
  %i.ac = load i8, ptr %i.ab, align 8, !range !5, !noundef !6
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal12_GLOBAL__N_123HandleAllocationFailureEPNS0_4HeapENS0_13ExecutabilityE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 55464
  %i.af = select i1 %i.d, ptr @.str.10, ptr @.str.9
  call void @_ZN2v88internal4Heap23FatalProcessOutOfMemoryEPKc(ptr noundef nonnull align 8 dereferenceable(2992) %i.ae, ptr noundef nonnull %i.af) #17
  unreachable

bb.i:                                             ; preds = %_ZNSt8optionalIN2v88internal13VirtualMemoryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, %bb.d
  %i.ag = phi i64 [ %i.z, %_ZNSt8optionalIN2v88internal13VirtualMemoryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit ], [ %i.i, %bb.d ] ; 10 uses
  br i1 %i.d, label %.split, label %.split35

.split:                                           ; preds = %bb.i
  %i.ah = add i64 %i.ag, %1                       ; 3 uses
  %cond = icmp eq i32 %5, 0
  br i1 %cond, label %bb.j, label %_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit

bb.j:                                             ; preds = %.split
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load atomic i64, ptr %i.ai monotonic, align 8 ; 2 uses
  %.old17.i = icmp ult i64 %i.ag, %i.aj
  br i1 %.old17.i, label %.preheader82.i, label %.critedge.i

.preheader82.i:                                   ; preds = %bb.j, %.preheader82.i
  %.0.i40 = phi i64 [ %i.am, %.preheader82.i ], [ %i.aj, %bb.j ]
  %i.ak = cmpxchg weak ptr %i.ai, i64 %.0.i40, i64 %i.ag acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 2 uses
  %i.an = icmp uge i64 %i.ag, %i.am
  %or.cond.not.i = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond.not.i, label %.critedge.i, label %.preheader82.i, !llvm.loop !8

.critedge.i:                                      ; preds = %.preheader82.i, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %.old20.i = icmp ugt i64 %i.ah, %i.ap
  br i1 %.old20.i, label %.preheader.i, label %_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %.1.i = phi i64 [ %i.as, %.preheader.i ], [ %i.ap, %.critedge.i ]
  %i.aq = cmpxchg weak ptr %i.ao, i64 %.1.i, i64 %i.ah acq_rel acquire, align 8 ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = extractvalue { i64, i1 } %i.aq, 0       ; 2 uses
  %i.at = icmp ule i64 %i.ah, %i.as
  %or.cond75.not.i = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond75.not.i, label %_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit, label %.preheader.i, !llvm.loop !10

.split35:                                         ; preds = %bb.i
  call void @_ZN2v88internal15ThreadIsolation15RegisterJitPageEmm(i64 noundef %i.ag, i64 noundef %1) #16
  %i.au = add i64 %i.ag, %1                       ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aw = load atomic i64, ptr %i.av monotonic, align 8 ; 2 uses
  %.old24.i41 = icmp ult i64 %i.ag, %i.aw
  br i1 %.old24.i41, label %.preheader85.i47, label %.critedge4.i42

.preheader85.i47:                                 ; preds = %.split35, %.preheader85.i47
  %.2.i48 = phi i64 [ %i.az, %.preheader85.i47 ], [ %i.aw, %.split35 ]
  %i.ax = cmpxchg weak ptr %i.av, i64 %.2.i48, i64 %i.ag acq_rel acquire, align 8 ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0       ; 2 uses
  %i.ba = icmp uge i64 %i.ag, %i.az
  %or.cond78.not.i49 = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond78.not.i49, label %.critedge4.i42, label %.preheader85.i47, !llvm.loop !11

.critedge4.i42:                                   ; preds = %.preheader85.i47, %.split35
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bc = load atomic i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %.old28.i43 = icmp ugt i64 %i.au, %i.bc
  br i1 %.old28.i43, label %.preheader83.i44, label %_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit

.preheader83.i44:                                 ; preds = %.critedge4.i42, %.preheader83.i44
  %.3.i45 = phi i64 [ %i.bf, %.preheader83.i44 ], [ %i.bc, %.critedge4.i42 ]
  %i.bd = cmpxchg weak ptr %i.bb, i64 %.3.i45, i64 %i.au acq_rel acquire, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bg = icmp ule i64 %i.au, %i.bf
  %or.cond81.not.i46 = select i1 %i.be, i1 true, i1 %i.bg
  br i1 %or.cond81.not.i46, label %_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit, label %.preheader83.i44, !llvm.loop !12

_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit: ; preds = %.preheader83.i44, %.preheader.i, %.split, %.critedge4.i42, %.critedge.i
  %i.bh = load ptr, ptr %10, align 8
  store ptr %i.bh, ptr %7, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  br label %_ZN2v88internal12_GLOBAL__N_123HandleAllocationFailureEPNS0_4HeapENS0_13ExecutabilityE.exit

_ZN2v88internal12_GLOBAL__N_123HandleAllocationFailureEPNS0_4HeapENS0_13ExecutabilityE.exit: ; preds = %bb.g, %bb.b, %_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit
  %.0 = phi i64 [ %i.ag, %_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE.exit ], [ 0, %bb.b ], [ 0, %bb.g ]
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN2v88internal13VirtualMemoryC1EPNS_13PageAllocatorEmNS2_14AllocationHintEmNS2_10PermissionE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr, i8, i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

declare void @_ZN2v88internal15ThreadIsolation15RegisterJitPageEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZN2v88internal15MemoryAllocator26UpdateAllocatedSpaceLimitsEmmNS0_13ExecutabilityE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  switch i32 %3, label %.critedge2 [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %.old17 = icmp ult i64 %1, %i.b
  br i1 %.old17, label %.preheader82, label %.critedge

.preheader82:                                     ; preds = %bb.b, %.preheader82
  %.0 = phi i64 [ %i.e, %.preheader82 ], [ %i.b, %bb.b ]
  %i.c = cmpxchg weak ptr %i.a, i64 %.0, i64 %1 acq_rel acquire, align 8 ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0         ; 2 uses
  %i.f = icmp uge i64 %1, %i.e
  %or.cond.not = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.not, label %.critedge, label %.preheader82, !llvm.loop !8

.critedge:                                        ; preds = %.preheader82, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %.old20 = icmp ugt i64 %2, %i.h
  br i1 %.old20, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %.critedge, %.preheader
  %.1 = phi i64 [ %i.k, %.preheader ], [ %i.h, %.critedge ]
  %i.i = cmpxchg weak ptr %i.g, i64 %.1, i64 %2 acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = icmp ule i64 %2, %i.k
  %or.cond75.not = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond75.not, label %.critedge2, label %.preheader, !llvm.loop !10

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8 ; 2 uses
  %.old24 = icmp ult i64 %1, %i.n
  br i1 %.old24, label %.preheader85, label %.critedge4

.preheader85:                                     ; preds = %bb.c, %.preheader85
  %.2 = phi i64 [ %i.q, %.preheader85 ], [ %i.n, %bb.c ]
  %i.o = cmpxchg weak ptr %i.m, i64 %.2, i64 %1 acq_rel acquire, align 8 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %i.r = icmp uge i64 %1, %i.q
  %or.cond78.not = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond78.not, label %.critedge4, label %.preheader85, !llvm.loop !11

.critedge4:                                       ; preds = %.preheader85, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load atomic i64, ptr %i.s monotonic, align 8 ; 2 uses
  %.old28 = icmp ugt i64 %2, %i.t
  br i1 %.old28, label %.preheader83, label %.critedge2

.preheader83:                                     ; preds = %.critedge4, %.preheader83
  %.3 = phi i64 [ %i.w, %.preheader83 ], [ %i.t, %.critedge4 ]
  %i.u = cmpxchg weak ptr %i.s, i64 %.3, i64 %2 acq_rel acquire, align 8 ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %i.x = icmp ule i64 %2, %i.w
  %or.cond81.not = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond81.not, label %.critedge2, label %.preheader83, !llvm.loop !12

.critedge2:                                       ; preds = %.preheader83, %.preheader, %.critedge4, %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal15MemoryAllocator16ComputeChunkSizeEmNS0_15AllocationSpaceE(i64 noundef %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
end_hunk_0
