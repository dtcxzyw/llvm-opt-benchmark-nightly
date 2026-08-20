inline.NumInlined: 4591
inline.NumDeleted: 1452
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal29Runtime_ClearFunctionFeedbackEiPmPNS0_7IsolateE:bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.h = load i64, ptr %1, align 8
  store i64 %i.h, ptr %3, align 8
  call void @_ZN2v88internal10JSFunction34ClearAllTypeFeedbackInfoForTestingEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.i = load i64, ptr %1, align 8
  %i.j = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10688
  %i.l = add i64 %i.i, 23
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i32, ptr %i.m monotonic, align 4
  %i.o = lshr i32 %i.n, 8
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noundef !10
  %i.q = trunc nuw i8 %i.p to i1
  %.not.i.i = xor i1 %i.q, true
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.s
  br i1 %or.cond.i.i, label %bb.b, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.t, -1
  br i1 %.not11.i.i, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.t, i32 noundef 0) #29
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = zext nneg i32 %i.o to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %i.y = icmp ugt i64 %i.x, -281474976710657
  br i1 %i.y, label %bb.d, label %_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #30
  unreachable

_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i: ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, 1
  %i.ad = add nuw nsw i64 %i.ac, 39
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  store atomic i64 %i.af, ptr %i.w monotonic, align 8
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !9, !noundef !10
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not8.i.i = xor i1 %i.ah, true
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !9
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond10.i.i = select i1 %.not8.i.i, i1 true, i1 %i.aj
  br i1 %or.cond10.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.ak, -1
  br i1 %.not12.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ak, i32 noundef 2) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.am = load i64, ptr %i.al, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.an = load i32, ptr %i.e, align 8
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.h, %bb.g
  ret i64 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_NotifyContextDisposedEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.i = tail call noundef i32 @_ZN2v88internal4Heap21NotifyContextDisposedEb(ptr noundef nonnull align 8 dereferenceable(2992) %i.h, i1 noundef zeroext true) #29 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.k = load i64, ptr %i.j, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.l = load i32, ptr %i.e, align 8
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.e, align 8
  %i.n = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal28Runtime_SetAllocationTimeoutEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -2
  %switch = icmp eq i32 %i.a, 2
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !9
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %switch, i1 true, i1 %i.c, !prof !15
  br i1 %or.cond, label %_ZN2v88internalL38__RT_impl_Runtime_SetAllocationTimeoutENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #30
  unreachable

_ZN2v88internalL38__RT_impl_Runtime_SetAllocationTimeoutENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.a
  %.sroa.07.0.in = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.07.0 = load i64, ptr %.sroa.07.0.in, align 8
  ret i64 %.sroa.07.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal28Runtime_SimulateNewspaceFullEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::PauseAllocationObserversScope", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 55464 ; 5 uses
  tail call void @_ZN2v88internal4Heap35FreeMainThreadLinearAllocationAreasEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.h) #29
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 55632 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1754), align 2, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 57336
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.p = load atomic i8, ptr %i.o seq_cst, align 1, !range !9, !noundef !10
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal4Heap28EnsureYoungSweepingCompletedEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.h) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 55680
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 2 uses
  tail call void @_ZN2v88internal21PagedSpaceForNewSpace34AllocatePageUpToCapacityForTestingEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t) #29
  tail call void @_ZN2v88internal14PagedSpaceBase13ResetFreeListEv(ptr noundef nonnull align 8 dereferenceable(152) %i.t) #29
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 55680
  %i.v = load ptr, ptr %i.u, align 8              ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121FillUpOneNewSpacePageEPNS0_7IsolateEPNS0_4HeapEPNS0_17SemiSpaceNewSpaceE.exit, %bb.e
  call void @_ZN2v88internal4Heap35FreeMainThreadLinearAllocationAreasEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.h) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN2v88internal29PauseAllocationObserversScopeC1EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.h) #29
  %i.w = call noundef i32 @_ZN2v88internal17SemiSpaceNewSpace40GetSpaceRemainingOnCurrentPageForTestingEv(ptr noundef nonnull align 8 dereferenceable(432) %i.v) #29
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121FillUpOneNewSpacePageEPNS0_7IsolateEPNS0_4HeapEPNS0_17SemiSpaceNewSpaceE.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %i.y = call noundef i32 @_ZN2v88internal17SemiSpaceNewSpace40GetSpaceRemainingOnCurrentPageForTestingEv(ptr noundef nonnull align 8 dereferenceable(432) %i.v) #29 ; 2 uses
  %5 = add nsw i32 %i.y, -16
  %6 = sdiv i32 %5, 8
  %7 = icmp sgt i32 %i.y, 131079
  %.sroa.speculated.i.i = select i1 %7, i32 16382, i32 %6 ; 2 uses
  %i.z = icmp sgt i32 %.sroa.speculated.i.i, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.aa = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.sroa.speculated.i.i, i8 noundef zeroext 0, i8 0) #29
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ae = or disjoint i64 %i.ac, 1
  store i64 %i.ae, ptr %3, align 8
  %i.af = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.ag = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.af) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  call void @_ZN2v88internal17SemiSpaceNewSpace25FillCurrentPageForTestingEv(ptr noundef nonnull align 8 dereferenceable(432) %i.v) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN2v88internal4Heap35FreeMainThreadLinearAllocationAreasEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.h) #29
  %i.ah = call noundef i32 @_ZN2v88internal17SemiSpaceNewSpace40GetSpaceRemainingOnCurrentPageForTestingEv(ptr noundef nonnull align 8 dereferenceable(432) %i.v) #29
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121FillUpOneNewSpacePageEPNS0_7IsolateEPNS0_4HeapEPNS0_17SemiSpaceNewSpaceE.exit, !llvm.loop !49

_ZN2v88internal12_GLOBAL__N_121FillUpOneNewSpacePageEPNS0_7IsolateEPNS0_4HeapEPNS0_17SemiSpaceNewSpaceE.exit: ; preds = %bb.i, %bb.f
  call void @_ZN2v88internal29PauseAllocationObserversScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.aj = call noundef zeroext i1 @_ZN2v88internal17SemiSpaceNewSpace12AddFreshPageEv(ptr noundef nonnull align 8 dereferenceable(432) %i.v) #29
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_121FillUpOneNewSpacePageEPNS0_7IsolateEPNS0_4HeapEPNS0_17SemiSpaceNewSpaceE.exit, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = atomicrmw sub ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.an = load i32, ptr %i.e, align 8
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.j, !prof !5

bb.j:                                             ; preds = %.loopexit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.j, %.loopexit
  ret i64 %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_ScheduleGCInStackCheckEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN2v88internal7Isolate16RequestInterruptEPFvPNS_7IsolateEPvES4_(ptr noundef nonnull align 8 dereferenceable(64320) %2, ptr noundef nonnull @_ZZN2v88internalL40__RT_impl_Runtime_ScheduleGCInStackCheckENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEENUlPNS_7IsolateEPvE_8__invokeES7_S8_, ptr noundef null) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal24Runtime_TakeHeapSnapshotEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.715", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"struct.v8::HeapProfiler::HeapSnapshotOptions", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.d = load i64, ptr %i.c, align 8
  br label %_ZN2v88internalL34__RT_impl_Runtime_TakeHeapSnapshotENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #33 ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.e, ptr noundef nonnull align 1 dereferenceable(17) @.str.30, i64 17, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  store i8 0, ptr %i.f, align 1
  %i.g = icmp sgt i32 %0, 0
  br i1 %i.g, label %bb.c, label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.o = load i64, ptr %1, align 8
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.715") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef null) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.r = load ptr, ptr %3, align 8                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #29 ; 8 uses
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.f, label %._crit_edge.i.i2

bb.f:                                             ; preds = %bb.e
  %i.w = icmp slt i64 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = add nuw i64 %i.u, 1                      ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3: ; preds = %bb.h
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #33 ; 2 uses
  store ptr %i.z, ptr %4, align 8
  store i64 %i.u, ptr %i.s, align 8
  br label %._crit_edge.i.i2

._crit_edge.i.i2:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3, %bb.e
  %i.aa = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3 ], [ %i.s, %bb.e ] ; 3 uses
  switch i64 %i.u, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit4
  ]

bb.j:                                             ; preds = %._crit_edge.i.i2
  %i.ab = load i8, ptr %i.r, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit4

bb.k:                                             ; preds = %._crit_edge.i.i2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit4: ; preds = %._crit_edge.i.i2, %bb.j, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 %i.u, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ad, align 1
  %i.ae = load ptr, ptr %4, align 8               ; 4 uses
  %i.af = icmp eq ptr %i.ae, %i.s
  br i1 %i.af, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit4
  %i.ag = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  switch i64 %i.ag, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ai = load i8, ptr %i.ae, align 1
  store i8 %i.ai, ptr %i.e, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.aj = load i64, ptr %i.ac, align 8            ; 2 uses
  %.sroa.8.8.vec.insert64 = insertelement <2 x i64> <i64 poison, i64 17>, i64 %i.aj, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aj
  store i8 0, ptr %i.ak, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit4
  %i.al = load <2 x i64>, ptr %i.ac, align 8
  store ptr %i.e, ptr %4, align 8
  store i64 17, ptr %i.s, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  %.sroa.8.0 = phi <2 x i64> [ %.sroa.8.8.vec.insert64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i ] ; 2 uses
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.am, align 1
  %i.an = load ptr, ptr %4, align 8               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #32
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.r, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i16 @_ZN2v88internal13JSArrayBuffer6DetachENS0_12DirectHandleIS1_EEbNS2_INS0_6ObjectEEE(ptr, i1 noundef zeroext, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !117
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
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !117
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin nounwind allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", i32 2146410443, i32 1073205}
!8 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"branch_weights", i32 1073205, i32 2146410443}
!12 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!13 = distinct !{null}
!14 = !{!"branch_weights", !"expected", i32 2138901763, i32 8581885}
!15 = !{!"branch_weights", i32 4001, i32 1}
!16 = !{!"branch_weights", !"expected", i32 2138898360, i32 8585288}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{null, null}
!21 = !{!"branch_weights", !"expected", i32 2138898228, i32 8585420}
!22 = distinct !{!22, !18}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null, null}
!26 = !{!"branch_weights", !"expected", i32 2146052736, i32 1430912}
!27 = distinct !{null}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE: argument 0"}
!30 = distinct !{!30, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE: argument 0"}
!33 = distinct !{!33, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE"}
!34 = distinct !{null}
!35 = distinct !{!35, !18}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNSt6vectorIN2v88internal6TaggedINS1_18SharedFunctionInfoEEESaIS4_EE6rbeginEv: argument 0"}
!42 = distinct !{!42, !"_ZNSt6vectorIN2v88internal6TaggedINS1_18SharedFunctionInfoEEESaIS4_EE6rbeginEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNSt6vectorIN2v88internal6TaggedINS1_18SharedFunctionInfoEEESaIS4_EE4rendEv: argument 0"}
!45 = distinct !{!45, !"_ZNSt6vectorIN2v88internal6TaggedINS1_18SharedFunctionInfoEEESaIS4_EE4rendEv"}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{null, null, null, null, null}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null}
!53 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!54 = distinct !{null, null, null, null}
!55 = !{ptr @_ZN2v88internal12StderrStreamD1Ev}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = !{!"branch_weights", !"expected", i32 2145337773, i32 2145875}
!59 = distinct !{!59, !18}
!60 = !{!"branch_weights", !"expected", i32 2138898007, i32 8585641}
!61 = !{!"branch_weights", i32 1, i32 1048575}
!62 = !{!"branch_weights", !"expected", i32 2143192437, i32 4291211}
!63 = !{!"branch_weights", !"expected", i32 2138898008, i32 8585640}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!66 = distinct !{!66, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!69 = distinct !{!69, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!70 = !{!68, !65}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!73 = distinct !{!73, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!76 = distinct !{!76, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!77 = !{!75, !72}
!78 = distinct !{!78, !18}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!81 = distinct !{!81, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!82 = !{!83, !80}
!83 = distinct !{!83, !84, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!84 = distinct !{!84, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!85 = distinct !{null, null, null}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!88 = distinct !{!88, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!89 = distinct !{!89, !18}
!90 = distinct !{null}
!91 = distinct !{null}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18}
!94 = distinct !{!94, !18}
!95 = !{i64 8}
!96 = distinct !{null, null, null, null, null, null, null, null}
!97 = distinct !{null}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE: argument 0"}
!100 = distinct !{!100, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE: argument 0"}
!103 = distinct !{!103, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE"}
!104 = distinct !{!104, !18, !105, !106}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = distinct !{!107, !18, !106, !105}
!108 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!109 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!110 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!111 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!112 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
!113 = !{ptr @_ZN2v88internal12StderrStreamD0Ev, ptr @_ZN2v88internal12StderrStreamD1Ev}
!114 = !{ptr @_ZN2v88internal12StderrStreamD0Ev}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18}
!117 = distinct !{null}
end_hunk_1
