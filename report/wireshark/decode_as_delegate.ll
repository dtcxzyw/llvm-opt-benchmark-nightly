Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/decode_as_delegate?download=true
inline.NumInlined: 1199
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17QArrayDataPointerIhE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 16
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.am, ptr noundef align 1 %i.aj, i64 noundef %spec.select, i1 noundef false) #20
  %i.an = load i64, ptr %i.ak, align 16
  %i.ao = add i64 %i.an, %spec.select
  store i64 %i.ao, ptr %i.ak, align 16
  br label %_ZN9QtPrivate12QPodArrayOpsIhE10copyAppendEPKhS3_.exit

_ZN9QtPrivate12QPodArrayOpsIhE10copyAppendEPKhS3_.exit: ; preds = %_ZN9QtPrivate12QPodArrayOpsIhE10copyAppendEPKhS3_.exit.sink.split, %bb.j, %_ZNK17QArrayDataPointerIhE11needsDetachEv.exit31.thread, %bb.h
  %i.ap = load ptr, ptr %0, align 8               ; 3 uses
  %i.aq = getelementptr i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = load <2 x ptr>, ptr %4, align 16
  store ptr %i.ap, ptr %4, align 16
  store <2 x ptr> %i.as, ptr %0, align 8
  store ptr %i.ar, ptr %i.u, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.av = load i64, ptr %i.at, align 16
  store i64 %i.av, ptr %i.aa, align 8
  store i64 %i.au, ptr %i.at, align 16
  br i1 %i.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9QtPrivate12QPodArrayOpsIhE10copyAppendEPKhS3_.exit
  %i.aw = getelementptr i8, ptr %3, i64 8
  %i.ax = load <2 x ptr>, ptr %3, align 8
  %i.ay = load ptr, ptr %3, align 8
  store ptr %i.ap, ptr %3, align 8
  store ptr %i.ar, ptr %i.aw, align 8
  store <2 x ptr> %i.ax, ptr %4, align 16
  %i.az = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.au, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.at, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9QtPrivate12QPodArrayOpsIhE10copyAppendEPKhS3_.exit
  %i.bb = phi ptr [ %i.ay, %bb.k ], [ %i.ap, %_ZN9QtPrivate12QPodArrayOpsIhE10copyAppendEPKhS3_.exit ] ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i32, label %_ZN17QArrayDataPointerIhED2Ev.exit35, label %_ZN17QArrayDataPointerIhE5derefEv.exit.i33

_ZN17QArrayDataPointerIhE5derefEv.exit.i33:       ; preds = %bb.l
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %.not.i34 = icmp eq i32 %i.bc, 1
  br i1 %.not.i34, label %bb.m, label %_ZN17QArrayDataPointerIhED2Ev.exit35

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIhE5derefEv.exit.i33
  %i.bd = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bd, i64 noundef 1, i64 noundef 8) #20
  br label %_ZN17QArrayDataPointerIhED2Ev.exit35

_ZN17QArrayDataPointerIhED2Ev.exit35:             ; preds = %bb.l, %_ZN17QArrayDataPointerIhE5derefEv.exit.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIhED2Ev.exit35, %_ZN9QtPrivate12QPodArrayOpsIhE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerIhE12allocateGrowERKS0_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.18) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
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
  %i.o = and i64 %i.n, -8                         ; 2 uses
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %.neg = sub i64 %i.o, %i.p
  %i.q = add i64 %i.o, %i.g
  %i.r = sub i64 %i.h, %i.q
  %.neg50 = add i64 %i.r, %i.p
  %.ph.neg = select i1 %i.j, i64 %.neg50, i64 %.neg
  %i.s = add i64 %i.i, %.ph.neg                   ; 2 uses
  %i.t = getelementptr i8, ptr %i.c, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 1
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.s, i64 %i.g)
  br label %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit
  %i.w = phi i64 [ %i.e, %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.s, %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.x = phi i64 [ 0, %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit.thread ]
  %i.y = icmp sle i64 %i.w, %i.x
  %i.z = zext i1 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.aa = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8, i64 noundef %i.w, i32 noundef %i.z) #20 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 8) ]
  %i.ab = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not = icmp ne ptr %i.ab, null
  %i.ac = icmp ne ptr %i.aa, null
  %i.ad = and i1 %i.ac, %.not
  br i1 %i.ad, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit31
  %i.ae = icmp eq i32 %3, 1
  br i1 %i.ae, label %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %1, align 8               ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZNK17QArrayDataPointerIhE5flagsEv.exit, label %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = add i64 %i.aj, 23
  %i.al = and i64 %i.ak, -8
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.am, %i.al
  %i.ao = getelementptr i8, ptr %i.aa, i64 %i.an
  br label %bb.e

_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ap = getelementptr i8, ptr %i.ab, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.b, align 8
  %i.as = add i64 %2, %i.ar
  %i.at = sub i64 %i.aq, %i.as
  %i.au = sdiv i64 %i.at, 2
  %i.av = call noundef i64 @llvm.smax.i64(i64 %i.au, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 %2     ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerIhE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33
  %i.ay = phi ptr [ %i.ao, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33.thread ], [ %i.ax, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33 ]
  %.pr63 = phi ptr [ %i.af, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33 ]
  %i.az = getelementptr i8, ptr %.pr63, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  br label %_ZNK17QArrayDataPointerIhE5flagsEv.exit

_ZNK17QArrayDataPointerIhE5flagsEv.exit:          ; preds = %bb.d, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bb = phi ptr [ %i.ay, %bb.e ], [ %i.ax, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33 ], [ %i.aa, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.ba, %bb.e ], [ 0, %_ZNK17QArrayDataPointerIhE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.bc = getelementptr i8, ptr %i.ab, i64 4
  store i32 %.sroa.0.0.i, ptr %i.bc, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerIhE5flagsEv.exit
  %.sink = phi ptr [ %i.bb, %_ZNK17QArrayDataPointerIhE5flagsEv.exit ], [ %i.aa, %_ZNK17QArrayDataPointerIhE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ab, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.be, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN5QListIP17_dissector_info_tE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 43 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.fr28, i64 8      ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph47

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.di, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph47, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fc, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i27.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i27.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %.fr28, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.011.us.i.i.i = phi i64 [ %i.aq, %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr [8 x i8], ptr %.fr28, i64 %.011.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i64 %.011.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.011.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.fr28, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %.fr28, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.aa, ptr noundef align 8 dereferenceable(24) %i.ab)
  %i.ad = icmp slt i32 %i.ac, 0
  %spec.select.i.us.i.i.i = select i1 %i.ad, i64 %i.y, i64 %i.w ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %.fr28, i64 %spec.select.i.us.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr [8 x i8], ptr %.fr28, i64 %.034.i.us.i.i.i
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ah, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !111

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ai = getelementptr [8 x i8], ptr %.fr28, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.aj, ptr noundef align 8 dereferenceable(24) %i.t)
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.c, label %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr [8 x i8], ptr %.fr28, i64 %.010.i.i.us.i.i.i
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = icmp sgt i64 %.0911.i.i.us.i.i.i, %.011.us.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !112

"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.011.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.ap = getelementptr [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.ap, align 8
  %.not.us.i.i.i = icmp eq i64 %.011.us.i.i.i, 0
  %i.aq = add nsw i64 %.011.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !113

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.011.i.i.i = phi i64 [ %i.bs, %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ar = getelementptr [8 x i8], ptr %.fr28, i64 %.011.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i64 %.011.i.i.i, %i.m
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.011.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.au = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.av = add i64 %i.au, 2                        ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.fr28, i64 %i.av
  %i.ax = or disjoint i64 %i.au, 1                ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %.fr28, i64 %i.ax
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = load ptr, ptr %i.ay, align 8
  %i.bb = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.az, ptr noundef align 8 dereferenceable(24) %i.ba)
  %i.bc = icmp slt i32 %i.bb, 0
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.ax, i64 %i.av ; 4 uses
  %i.bd = getelementptr [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr [8 x i8], ptr %.fr28, i64 %.034.i.i.i.i
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !111

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.011.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bh = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = load ptr, ptr %i.q, align 8
  store ptr %i.bi, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bj = icmp sgt i64 %.1.i.i.i.i, %.011.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bk = getelementptr [8 x i8], ptr %.fr28, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.bl, ptr noundef align 8 dereferenceable(24) %i.as)
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bk, align 8
  %i.bp = getelementptr [8 x i8], ptr %.fr28, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = icmp sgt i64 %.0911.i.i.i.i.i, %.011.i.i.i
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !112

"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.br = getelementptr [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.as, ptr %i.br, align 8
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.bs = add nsw i64 %.011.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !113

"_ZSt11__make_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN5QListIP17_dissector_info_tE8iteratorExS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.bt, %"_ZSt10__pop_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_RT0_.exit.i.i" ]
  %i.bt = getelementptr i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = load ptr, ptr %.fr28, align 8
  store ptr %i.bv, ptr %i.bt, align 8
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bw, %i.a                     ; 3 uses
  %i.by = ashr exact i64 %i.bx, 3                 ; 3 uses
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = icmp sgt i64 %i.by, 2
  br i1 %i.cb, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i17.i
  %.034.i.i.i18.i = phi i64 [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.cc = shl i64 %.034.i.i.i18.i, 1              ; 2 uses
  %i.cd = add i64 %i.cc, 2                        ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %.fr28, i64 %i.cd
  %i.cf = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %.fr28, i64 %i.cf
  %i.ch = load ptr, ptr %i.ce, align 8
  %i.ci = load ptr, ptr %i.cg, align 8
  %i.cj = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.ch, ptr noundef align 8 dereferenceable(24) %i.ci)
  %i.ck = icmp slt i32 %i.cj, 0
  %spec.select.i.i.i19.i = select i1 %i.ck, i64 %i.cf, i64 %i.cd ; 4 uses
  %i.cl = getelementptr [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i19.i
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr [8 x i8], ptr %.fr28, i64 %.034.i.i.i18.i
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = icmp slt i64 %spec.select.i.i.i19.i, %i.ca
  br i1 %i.co, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i, !llvm.loop !111

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i17.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ] ; 5 uses
  %i.cp = and i64 %i.bx, 8
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cr = add nsw i64 %i.by, -2
  %i.cs = ashr exact i64 %i.cr, 1
  %i.ct = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cs
  br i1 %i.ct, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cu = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cv = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %.fr28, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cx, ptr %i.cy, align 8
  br label %.lr.ph.i.i.i.i13.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i.preheader

.lr.ph.i.i.i.i13.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i14.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.cv, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %.lr.ph.i.i.i.i13.i.preheader, %bb.i
  %.010.i.i.i.i14.i = phi i64 [ %.0911.i.i45.i.i.i, %bb.i ], [ %.010.i.i.i.i14.i.ph, %.lr.ph.i.i.i.i13.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i45.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %.fr28, i64 %.0911.i.i45.i.i.i ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.da, ptr noundef align 8 dereferenceable(24) %i.bu)
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.i, label %"_ZSt10__pop_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.dd = load ptr, ptr %i.cz, align 8
  %i.de = getelementptr [8 x i8], ptr %.fr28, i64 %.010.i.i.i.i14.i
  store ptr %i.dd, ptr %i.de, align 8
  %.not6.i.i.i = icmp eq i64 %.0911.i.i45.i.i.i, 0
  br i1 %.not6.i.i.i, label %"_ZSt10__pop_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i, !llvm.loop !112

"_ZSt10__pop_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i13.i, %bb.h
  %.0.lcssa.i.i.i.i16.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i14.i, %.lr.ph.i.i.i.i13.i ], [ 0, %bb.i ]
  %i.df = getelementptr [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16.i
  store ptr %i.bu, ptr %i.df, align 8
  %i.dg = icmp sgt i64 %i.bx, 8
  br i1 %i.dg, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !114

.lr.ph47:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2546 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02645 = phi i64 [ %i.di, %bb.b ], [ %2, %.lr.ph ]
  %i.dh = phi i64 [ %i.fd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.di = add i64 %.02645, -1                     ; 3 uses
  %i.dj = lshr i64 %i.dh, 1
  %i.dk = getelementptr [8 x i8], ptr %.fr28, i64 %i.dj ; 7 uses
  %i.dl = getelementptr i8, ptr %storemerge2546, i64 -8 ; 7 uses
  %i.dm = load ptr, ptr %i.f, align 8
  %i.dn = load ptr, ptr %i.dk, align 8
  %i.do = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.dm, ptr noundef align 8 dereferenceable(24) %i.dn)
  %i.dp = icmp slt i32 %i.do, 0
  %i.dq = load ptr, ptr %i.dl, align 8            ; 2 uses
  br i1 %i.dp, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph47
  %i.dr = load ptr, ptr %i.dk, align 8
  %i.ds = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.dr, ptr noundef align 8 dereferenceable(24) %i.dq)
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.du = load ptr, ptr %.fr28, align 8
  %i.dv = load ptr, ptr %i.dk, align 8
  store ptr %i.dv, ptr %.fr28, align 8
  store ptr %i.du, ptr %i.dk, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dw = load ptr, ptr %i.f, align 8
  %i.dx = load ptr, ptr %i.dl, align 8
  %i.dy = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.dw, ptr noundef align 8 dereferenceable(24) %i.dx)
  %i.dz = icmp slt i32 %i.dy, 0
  %i.ea = load ptr, ptr %.fr28, align 8           ; 2 uses
  br i1 %i.dz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eb = load ptr, ptr %i.dl, align 8
  store ptr %i.eb, ptr %.fr28, align 8
  store ptr %i.ea, ptr %i.dl, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.ec = load ptr, ptr %i.f, align 8
  store ptr %i.ec, ptr %.fr28, align 8
  store ptr %i.ea, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph47
  %i.ed = load ptr, ptr %i.f, align 8
  %i.ee = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.ed, ptr noundef align 8 dereferenceable(24) %i.dq)
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = load <2 x ptr>, ptr %.fr28, align 8
  %i.eh = shufflevector <2 x ptr> %i.eg, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.eh, ptr %.fr28, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.ei = load ptr, ptr %i.dk, align 8
  %i.ej = load ptr, ptr %i.dl, align 8
  %i.ek = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.ei, ptr noundef align 8 dereferenceable(24) %i.ej)
  %i.el = icmp slt i32 %i.ek, 0
  %i.em = load ptr, ptr %.fr28, align 8           ; 2 uses
  br i1 %i.el, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.en = load ptr, ptr %i.dl, align 8
  store ptr %i.en, ptr %.fr28, align 8
  store ptr %i.em, ptr %i.dl, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.eo = load ptr, ptr %i.dk, align 8
  store ptr %i.eo, ptr %.fr28, align 8
  store ptr %i.em, ptr %i.dk, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.et, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2546, %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.et, %bb.t ] ; 9 uses
  %i.ep = load ptr, ptr %.sroa.010.1.i.i, align 8
  %i.eq = load ptr, ptr %.fr28, align 8
  %i.er = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.ep, ptr noundef align 8 dereferenceable(24) %i.eq)
  %i.es = icmp slt i32 %i.er, 0
  %i.et = getelementptr i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.es, label %bb.t, label %.preheader.i.i, !llvm.loop !115

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.eu = load ptr, ptr %.fr28, align 8
  %i.ev = load ptr, ptr %.sroa.0.1.i.i, align 8
  %i.ew = tail call noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.eu, ptr noundef align 8 dereferenceable(24) %i.ev)
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.preheader.i.i, label %bb.u, !llvm.loop !116

bb.u:                                             ; preds = %.preheader.i.i
  %i.ey = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ey, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEET_SJ_SJ_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.ez = load ptr, ptr %.sroa.010.1.i.i, align 8
  %i.fa = load ptr, ptr %.sroa.0.1.i.i, align 8
  store ptr %i.fa, ptr %.sroa.010.1.i.i, align 8
  store ptr %i.ez, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !117

"_ZSt27__unguarded_partition_pivotIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN5QListIP17_dissector_info_tE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_T1_"(ptr %.sroa.010.1.i.i, ptr %storemerge2546, i64 noundef %i.di)
  %i.fb = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.fc = sub i64 %i.fb, %i.a                     ; 2 uses
  %i.fd = ashr exact i64 %i.fc, 3                 ; 2 uses
  %i.fe = icmp sgt i64 %i.fd, 16
  br i1 %i.fe, label %bb.b, label %"_ZSt14__partial_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !110

"_ZSt14__partial_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QVariantC1E9QMetaTypePKv(ptr noundef align 8 dereferenceable_or_null(32), ptr, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { cold noreturn }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{!2, !10}
!3 = distinct !{!3, !10}
!4 = !{i32 8, !"cf-protection-return", i32 1}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"probe-stack", !"inline-asm"}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !"_ZN9QtPrivate21qMakeForeachContainerIRK5QListI20_packet_proto_data_tEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_"}
!16 = distinct !{!16, !15, !"_ZN9QtPrivate21qMakeForeachContainerIRK5QListI20_packet_proto_data_tEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_: argument 0"}
!17 = distinct !{!17, !"_ZN4QSetI7QStringE6insertEOS0_"}
!18 = distinct !{!18, !17, !"_ZN4QSetI7QStringE6insertEOS0_: argument 0"}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!16}
!22 = !{!18}
!23 = distinct !{!23, !"_ZN9QtPrivate21qMakeForeachContainerIRK5QListI20_packet_proto_data_tEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_"}
!24 = distinct !{!24, !23, !"_ZN9QtPrivate21qMakeForeachContainerIRK5QListI20_packet_proto_data_tEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_: argument 0"}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!24}
!28 = distinct !{!28, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_"}
!29 = distinct !{!29, !28, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_: argument 0"}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_"}
!33 = distinct !{!33, !32, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_: argument 0"}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !"_ZN9QtPrivate21qMakeForeachContainerIRK5QListI20_packet_proto_data_tEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_"}
!36 = distinct !{!36, !35, !"_ZN9QtPrivate21qMakeForeachContainerIRK5QListI20_packet_proto_data_tEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_: argument 0"}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListIhEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_"}
!39 = distinct !{!39, !38, !"_ZN9QtPrivate21qMakeForeachContainerIR5QListIhEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_: argument 0"}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !"_ZNK12DecodeAsItem16defaultDissectorEv"}
!48 = distinct !{!48, !47, !"_ZNK12DecodeAsItem16defaultDissectorEv: argument 0"}
!49 = distinct !{!49, !"_ZN14VariantPointerI17_dissector_info_tE10asQVariantEPS0_"}
!50 = distinct !{!50, !49, !"_ZN14VariantPointerI17_dissector_info_tE10asQVariantEPS0_: argument 0"}
!51 = distinct !{!51, !"_ZN14VariantPointerI17_dissector_info_tE10asQVariantEPS0_"}
!52 = distinct !{!52, !51, !"_ZN14VariantPointerI17_dissector_info_tE10asQVariantEPS0_: argument 0"}
!53 = !{!29}
!54 = !{!33}
!55 = !{!36}
!56 = !{!39}
!57 = !{!48}
!58 = !{!50}
!59 = !{!52}
!60 = distinct !{!60, !"_ZNK4QSetI7QStringE10constBeginEv"}
!61 = distinct !{!61, !60, !"_ZNK4QSetI7QStringE10constBeginEv: argument 0"}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = !{!61}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !"_ZN14VariantPointerI17_dissector_info_tE10asQVariantEPS0_"}
!67 = distinct !{!67, !66, !"_ZN14VariantPointerI17_dissector_info_tE10asQVariantEPS0_: argument 0"}
!68 = !{!67}
!69 = !{ptr @_ZN16DecodeAsDelegateD2Ev}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !"memcpy.inline"}
!74 = distinct !{!74, !73, !"memcpy.inline: argument 1"}
!75 = distinct !{!75, !73, !"memcpy.inline: argument 0"}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !10}
!78 = !{!75, !74}
!79 = distinct !{!79, !"memcpy.inline"}
!80 = distinct !{!80, !79, !"memcpy.inline: argument 1"}
!81 = distinct !{!81, !79, !"memcpy.inline: argument 0"}
!82 = distinct !{!82, !12}
!83 = !{!81, !80}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !"memcpy.inline"}
!86 = distinct !{!86, !85, !"memcpy.inline: argument 1"}
!87 = distinct !{!87, !85, !"memcpy.inline: argument 0"}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !10}
!90 = !{!87, !86}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !10}
!94 = distinct !{!94, !"memcpy.inline"}
!95 = distinct !{!95, !94, !"memcpy.inline: argument 1"}
!96 = distinct !{!96, !94, !"memcpy.inline: argument 0"}
!97 = distinct !{!97, !12}
!98 = !{!96, !95}
!99 = distinct !{!99, !10}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, !10}
!103 = distinct !{!103, !10}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = distinct !{!108, !10}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = distinct !{!112, !10}
!113 = distinct !{!113, !10}
!114 = distinct !{!114, !10}
!115 = distinct !{!115, !10}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !10}
end_hunk_0
