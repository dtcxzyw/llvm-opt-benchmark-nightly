Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/customplot?download=true
inline.NumInlined: 1068
inline.NumDeleted: 451
begin_hunk_0_@_ZN17QArrayDataPointerIPK6MarkerE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS3_:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 16
  %i.ao = getelementptr [8 x i8], ptr %i.x, i64 %i.an
  %i.ap = ashr exact i64 %.idx.sink55, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ao, ptr noundef align 1 %i.al, i64 noundef %.idx.sink55, i1 noundef false) #27
  %i.aq = load i64, ptr %i.am, align 16
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.am, align 16
  br label %_ZN9QtPrivate12QPodArrayOpsIPK6MarkerE10copyAppendEPKS3_S6_.exit

_ZN9QtPrivate12QPodArrayOpsIPK6MarkerE10copyAppendEPKS3_S6_.exit: ; preds = %_ZN9QtPrivate12QPodArrayOpsIPK6MarkerE10copyAppendEPKS3_S6_.exit.sink.split, %bb.j, %_ZNK17QArrayDataPointerIPK6MarkerE11needsDetachEv.exit31.thread, %bb.h
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load <2 x ptr>, ptr %4, align 16
  store ptr %i.as, ptr %4, align 16
  store <2 x ptr> %i.av, ptr %0, align 8
  store ptr %i.au, ptr %i.w, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ax = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 16
  store i64 %i.ay, ptr %i.ac, align 8
  store i64 %i.ax, ptr %i.aw, align 16
  br i1 %i.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9QtPrivate12QPodArrayOpsIPK6MarkerE10copyAppendEPKS3_S6_.exit
  %i.az = getelementptr i8, ptr %3, i64 8
  %i.ba = load <2 x ptr>, ptr %3, align 8
  %i.bb = load ptr, ptr %3, align 8
  store ptr %i.as, ptr %3, align 8
  store ptr %i.au, ptr %i.az, align 8
  store <2 x ptr> %i.ba, ptr %4, align 16
  %i.bc = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.ax, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.aw, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9QtPrivate12QPodArrayOpsIPK6MarkerE10copyAppendEPKS3_S6_.exit
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.as, %_ZN9QtPrivate12QPodArrayOpsIPK6MarkerE10copyAppendEPKS3_S6_.exit ] ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i32, label %_ZN17QArrayDataPointerIPK6MarkerED2Ev.exit35, label %_ZN17QArrayDataPointerIPK6MarkerE5derefEv.exit.i33

_ZN17QArrayDataPointerIPK6MarkerE5derefEv.exit.i33: ; preds = %bb.l
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i34 = icmp eq i32 %i.bf, 1
  br i1 %.not.i34, label %bb.m, label %_ZN17QArrayDataPointerIPK6MarkerED2Ev.exit35

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIPK6MarkerE5derefEv.exit.i33
  %i.bg = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 8, i64 noundef 8) #27
  br label %_ZN17QArrayDataPointerIPK6MarkerED2Ev.exit35

_ZN17QArrayDataPointerIPK6MarkerED2Ev.exit35:     ; preds = %bb.l, %_ZN17QArrayDataPointerIPK6MarkerE5derefEv.exit.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIPK6MarkerED2Ev.exit35, %_ZN9QtPrivate12QPodArrayOpsIPK6MarkerE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerIPK6MarkerE12allocateGrowERKS3_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.45) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #27 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerIPK6MarkerE5flagsEv.exit, label %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerIPK6MarkerE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerIPK6MarkerE5flagsEv.exit

_ZNK17QArrayDataPointerIPK6MarkerE5flagsEv.exit:  ; preds = %bb.d, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerIPK6MarkerE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerIPK6MarkerE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerIPK6MarkerE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerIPK6MarkerE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN5QListIPK6MarkerE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %.fr31 = freeze ptr %1                          ; 3 uses
  %.fr30 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr30 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr31 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.fr30, i64 8      ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEET_SC_SC_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %.fr31, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i29.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i29.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.fr30, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %.fr30, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i"
  %.011.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr [8 x i8], ptr %.fr30, i64 %.011.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i64 %.011.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.011.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.fr30, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %.fr30, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 48
  %.val.i.i.us.i.i.i = load double, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 48
  %.val1.i.i.us.i.i.i = load double, ptr %i.ad, align 8
  %i.ae = fcmp olt double %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr [8 x i8], ptr %.fr30, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr [8 x i8], ptr %.fr30, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !73

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %.fr30, i64 %.0911.i.i.us.i.i.i
  %.val.val.i.i.us.i.i.i = load double, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %.val.i.i.i.us.i.i.i = load double, ptr %i.am, align 8
  %i.an = fcmp olt double %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr [8 x i8], ptr %.fr30, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.011.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i", !llvm.loop !74

"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.011.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8
  %.not.us.i.i.i = icmp eq i64 %.011.us.i.i.i, 0
  %i.ar = add nsw i64 %.011.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !75

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.011.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr [8 x i8], ptr %.fr30, i64 %.011.i.i.i
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp slt i64 %.011.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.011.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.fr30, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.fr30, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = load ptr, ptr %i.az, align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 48
  %.val.i.i.i.i.i = load double, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 48
  %.val1.i.i.i.i.i = load double, ptr %i.bd, align 8
  %i.be = fcmp olt double %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr [8 x i8], ptr %.fr30, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !73

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.011.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8
  store ptr %i.bk, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.011.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr [8 x i8], ptr %.fr30, i64 %.0911.i.i.i.i.i
  %.val.val.i.i.i.i.i = load double, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %.val.i.i.i.i.i.i = load double, ptr %i.bp, align 8
  %i.bq = fcmp olt double %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr [8 x i8], ptr %.fr30, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.011.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i", !llvm.loop !74

"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.bu = add nsw i64 %.011.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !75

"_ZSt11__make_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN5QListIPK6MarkerE8iteratorExS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_RT0_.exit.i.i", %"_ZSt10__pop_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_RT0_.exit.i.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_RT0_.exit.i.i" ]
  %i.bv = getelementptr i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = load ptr, ptr %.fr30, align 8
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
  %i.cg = getelementptr [8 x i8], ptr %.fr30, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %.fr30, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = load ptr, ptr %i.ci, align 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 48
  %.val.i.i.i.i21.i = load double, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.ck, i64 48
  %.val1.i.i.i.i22.i = load double, ptr %i.cm, align 8
  %i.cn = fcmp olt double %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr [8 x i8], ptr %.fr30, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !73

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
  %i.cz = getelementptr [8 x i8], ptr %.fr30, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i5.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 48
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i14.i = phi i64 [ %.1.i5.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i67.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i67.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %.fr30, i64 %.0911.i.i67.i.i.i
  %.val.val.i.i.i.i16.i = load double, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 48
  %.val.i.i.i.i.i17.i = load double, ptr %i.df, align 8
  %i.dg = fcmp olt double %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i16.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr [8 x i8], ptr %.fr30, i64 %.010.i.i.i.i14.i
  store ptr %i.de, ptr %i.dh, align 8
  %.not8.i.i.i = icmp eq i64 %.0911.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %"_ZSt10__pop_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_RT0_.exit.i.i", label %bb.k, !llvm.loop !74

"_ZSt10__pop_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i14.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_T0_.exit", !llvm.loop !76

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2754 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr31, %.lr.ph ] ; 3 uses
  %.02853 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add i64 %.02853, -1                     ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr [8 x i8], ptr %.fr30, i64 %i.dm ; 3 uses
  %i.do = getelementptr i8, ptr %storemerge2754, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8            ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 48
  %.val.i.i.i = load double, ptr %i.dr, align 8   ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 48
  %.val1.i.i.i = load double, ptr %i.ds, align 8  ; 3 uses
  %i.dt = fcmp olt double %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 48
  %.val1.i27.i.i = load double, ptr %i.dv, align 8 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph55
  %i.dw = fcmp olt double %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr30, align 8
  store ptr %i.dq, ptr %.fr30, align 8
  store ptr %i.dx, ptr %i.dn, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = fcmp olt double %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr30, align 8           ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr30, align 8
  store ptr %i.dz, ptr %i.do, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr30, align 8
  store ptr %i.dz, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph55
  %i.ea = fcmp olt double %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr30, align 8
  store ptr %i.dp, ptr %.fr30, align 8
  store ptr %i.eb, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = fcmp olt double %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr30, align 8           ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr30, align 8
  store ptr %i.ed, ptr %i.do, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr30, align 8
  store ptr %i.ed, ptr %i.dn, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i"

"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2754, %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr30, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 48
  %.val1.i.i14.i = load double, ptr %i.ef, align 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 48
  %.val.i.i15.i = load double, ptr %i.eh, align 8
  %i.ei = fcmp olt double %.val.i.i15.i, %.val1.i.i14.i
  %i.ej = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !77

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 48
  %.val1.i10.i.i = load double, ptr %i.el, align 8
  %i.em = fcmp olt double %.val1.i.i14.i, %.val1.i10.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !78

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEET_SC_SC_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_SC_T0_.exit.i", !llvm.loop !79

"_ZSt27__unguarded_partition_pivotIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEET_SC_SC_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN5QListIPK6MarkerE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_T0_T1_"(ptr %.sroa.012.1.i.i, ptr %storemerge2754, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %"_ZSt14__partial_sortIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_T0_.exit", !llvm.loop !72

"_ZSt14__partial_sortIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEET_SC_SC_T0_.exit", %"_ZSt10__pop_heapIN5QListIPK6MarkerE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK10CustomPlot14orderedMarkersES4_E3$_0EEEvT_SC_SC_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate12QPodArrayOpsIP6MarkerE7emplaceIJRS2_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit

_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit, label %bb.d

_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = add i64 %i.k, 23
  %i.m = and i64 %i.l, -8
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add i64 %i.p, %1
  %.not = icmp eq i64 %i.h, %i.q
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit
  %i.r = getelementptr [8 x i8], ptr %i.j, i64 %1
  %i.s = load ptr, ptr %2, align 8
  store ptr %i.s, ptr %i.r, align 8
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.d, align 8
  br label %bb.i

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit, %bb.b
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %_ZNK17QArrayDataPointerIP6MarkerE16freeSpaceAtBeginEv.exit, label %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit.thread

_ZNK17QArrayDataPointerIP6MarkerE16freeSpaceAtBeginEv.exit: ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.a to i64
  %i.z = add i64 %i.y, 23
  %i.aa = and i64 %i.z, -8
  %i.ab = ptrtoint ptr %i.x to i64
  %.not13 = icmp eq i64 %i.aa, %i.ab
  br i1 %.not13, label %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE16freeSpaceAtBeginEv.exit
  %i.ac = getelementptr i8, ptr %i.x, i64 -8
  %i.ad = load ptr, ptr %2, align 8
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  store ptr %i.af, ptr %i.w, align 8
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.d, align 8
  br label %bb.i

_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit.thread: ; preds = %bb.a, %bb.d, %_ZNK17QArrayDataPointerIP6MarkerE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit
  %i.ai = load ptr, ptr %2, align 8
  %i.aj = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = icmp eq i64 %1, 0
  %or.cond = and i1 %i.am, %i.al                  ; 2 uses
  %spec.store.select = zext i1 %or.cond to i32
  tail call void @_ZN17QArrayDataPointerIP6MarkerE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS1_PS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %spec.store.select, i64 noundef 1, ptr noundef null, ptr noundef null)
  %i.an = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %1 ; 5 uses
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit.thread
  %i.aq = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.ar = icmp slt i64 %1, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN9QtPrivate12QPodArrayOpsIP6MarkerE10createHoleEN10QArrayData14GrowthPositionExx.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %i.at = sub i64 %i.aq, %1
  %i.au = shl i64 %i.at, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.as, ptr noundef align 1 %i.ap, i64 noundef %i.au, i1 noundef false) #27
  br label %_ZN9QtPrivate12QPodArrayOpsIP6MarkerE10createHoleEN10QArrayData14GrowthPositionExx.exit

bb.h:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit.thread
  %i.av = getelementptr i8, ptr %i.ao, i64 -8
  store ptr %i.av, ptr %i.an, align 8
  %i.aw = getelementptr i8, ptr %i.ap, i64 -8
  br label %_ZN9QtPrivate12QPodArrayOpsIP6MarkerE10createHoleEN10QArrayData14GrowthPositionExx.exit

_ZN9QtPrivate12QPodArrayOpsIP6MarkerE10createHoleEN10QArrayData14GrowthPositionExx.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i15 = phi ptr [ %i.ap, %bb.g ], [ %i.ap, %bb.f ], [ %i.aw, %bb.h ]
  %i.ax = load i64, ptr %i.aj, align 8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aj, align 8
  store ptr %i.ai, ptr %.0.i15, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate12QPodArrayOpsIP6MarkerE10createHoleEN10QArrayData14GrowthPositionExx.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerIP6MarkerE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS1_PS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.critedge, label %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit

_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE11needsDetachEv.exit
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %_ZN17QArrayDataPointerIP6MarkerE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS1_.exit [
    i32 1, label %_ZNK17QArrayDataPointerIP6MarkerE16freeSpaceAtBeginEv.exit
    i32 0, label %_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit
  ]

_ZNK17QArrayDataPointerIP6MarkerE16freeSpaceAtBeginEv.exit: ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 3
  %.not16 = icmp slt i64 %i.k, %2
  br i1 %.not16, label %_ZN17QArrayDataPointerIP6MarkerE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS1_.exit, label %bb.j

_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit: ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = add i64 %i.p, 23
  %i.r = and i64 %i.q, -8
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.s, %i.r
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %i.x = add i64 %i.w, %i.u
  %i.y = sub i64 %i.m, %i.x
  %.not17 = icmp slt i64 %i.y, %2
  br i1 %.not17, label %_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit.i, label %bb.j

_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit
  %.not.i19 = icmp slt i64 %i.u, %2
  br i1 %.not.i19, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIP6MarkerE14freeSpaceAtEndEv.exit.i
  %i.z = mul i64 %i.w, 3
  %i.aa = shl i64 %i.m, 1
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i64 0, %i.u                     ; 2 uses
  %.idx.i.i = shl i64 %i.ac, 3                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_ZN9QtPrivate20q_relocate_overlap_nIP6MarkerxEEvPT_T0_S4_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %.idx.i.i, 0
  %i.ag = icmp eq ptr %i.o, null
  %or.cond.i.i.i = or i1 %i.af, %i.ag
  %i.ah = icmp eq ptr %i.ad, null
  %or.cond3.i.i.i = or i1 %i.ah, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nIP6MarkerxEEvPT_T0_S4_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = shl i64 %i.w, 3
end_hunk_0
