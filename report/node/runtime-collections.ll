inline.NumInlined: 240
inline.NumDeleted: 118
begin_hunk_0_@_ZN2v88internal15Runtime_MapGrowEiPmPNS0_7IsolateE:bb.a
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.e

_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %_ZN2v88internal6HandleINS0_14OrderedHashMapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i4, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  tail call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.w) #6
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, %bb.c
  %i.x = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 3, i8 noundef zeroext 0) #6 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #5
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store ptr %i.x, ptr %3, align 8
  %i.z = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 277, ptr nonnull %3, i64 1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.aa, ptr noundef null) #6
  br label %_ZN2v88internalL25__RT_impl_Runtime_MapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_14OrderedHashMapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ac = load i64, ptr %1, align 8               ; 4 uses
  %i.ad = load i64, ptr %i.q, align 8             ; 5 uses
  %i.ae = add i64 %i.ac, 23                       ; 3 uses
  %i.af = inttoptr i64 %i.ae to ptr
  store atomic volatile i64 %i.ad, ptr %i.af monotonic, align 8
  %i.ag = trunc i64 %i.ad to i1
  br i1 %i.ag, label %bb.f, label %_ZN2v88internal27TorqueGeneratedJSCollectionINS0_12JSCollectionENS0_8JSObjectEE9set_tableENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = and i64 %i.ac, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 262144       ; 2 uses
  %i.ak = and i64 %i.aj, 32
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = and i64 %i.aj, 25
  %.not38.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not38.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = and i64 %i.ad, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.an, align 262144
  %i.ao = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not39.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ac, i64 noundef %i.ae, i64 %i.ad) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i, label %_ZN2v88internal27TorqueGeneratedJSCollectionINS0_12JSCollectionENS0_8JSObjectEE9set_tableENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ac, i64 %i.ae, i64 %i.ad) #6
  br label %_ZN2v88internal27TorqueGeneratedJSCollectionINS0_12JSCollectionENS0_8JSObjectEE9set_tableENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal27TorqueGeneratedJSCollectionINS0_12JSCollectionENS0_8JSObjectEE9set_tableENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.e, %bb.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.aq = load i64, ptr %i.ap, align 8
  br label %_ZN2v88internalL25__RT_impl_Runtime_MapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL25__RT_impl_Runtime_MapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal27TorqueGeneratedJSCollectionINS0_12JSCollectionENS0_8JSObjectEE9set_tableENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %.sroa.025.0 = phi i64 [ %i.aq, %_ZN2v88internal27TorqueGeneratedJSCollectionINS0_12JSCollectionENS0_8JSObjectEE9set_tableENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %i.ab, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ar = load i32, ptr %i.e, align 8
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.e, align 8
  %i.at = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %_ZN2v88internalL25__RT_impl_Runtime_MapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #6
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.k, %_ZN2v88internalL25__RT_impl_Runtime_MapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.025.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_OrderedHashMapGrowEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE23EnsureCapacityForAddingINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_(ptr noundef nonnull %2, ptr %1) #6 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.d

_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i4, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  tail call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.q) #6
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %_ZNK2v88internal11MaybeHandleINS0_14OrderedHashMapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store ptr %i.j, ptr %3, align 8
  %i.r = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 262, ptr nonnull %3, i64 1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.s = load i64, ptr %i.r, align 8
  %i.t = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.s, ptr noundef null) #6
  br label %_ZN2v88internalL36__RT_impl_Runtime_OrderedHashMapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.u = load i64, ptr %i.k, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_OrderedHashMapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL36__RT_impl_Runtime_OrderedHashMapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.d, %_ZN2v88internal7Isolate15clear_exceptionEv.exit
  %.sroa.016.0 = phi i64 [ %i.u, %bb.d ], [ %i.t, %_ZN2v88internal7Isolate15clear_exceptionEv.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.v = load i32, ptr %i.e, align 8
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.e, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.x, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %_ZN2v88internalL36__RT_impl_Runtime_OrderedHashMapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #6
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.e, %_ZN2v88internalL36__RT_impl_Runtime_OrderedHashMapGrowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.016.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal28Runtime_WeakCollectionDeleteEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  switch i32 %0, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ], !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr
  %.shift = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %3 = load i32, ptr %.shift, align 4
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal16JSWeakCollection6DeleteENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEEi(ptr %1, ptr %i.j, i32 noundef %3) #6
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, -55464
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.03.0.in.v.i = select i1 %i.m, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.r = load i32, ptr %i.e, align 8
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.t, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #6
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.e, %bb.d
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_WeakCollectionSetEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %.not26 = icmp eq i32 %0, 1
  br i1 %.not26, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4
  %i.k = icmp ugt i32 %0, 2
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.l = add i64 %i.h, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = add i64 %i.h, -24
  %i.o = inttoptr i64 %i.n to ptr
  %.shift = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %3 = load i32, ptr %.shift, align 4
  tail call void @_ZN2v88internal16JSWeakCollection3SetENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEES5_i(ptr %1, ptr %i.j, ptr %i.m, i32 noundef %3) #6
  %i.p = load i64, ptr %1, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #6
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.f, %bb.e
  ret i64 %i.p
}

declare ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE23EnsureCapacityForAddingINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_(ptr noundef, ptr) local_unnamed_addr #3

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #3

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

declare ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEET_IS2_EPNS0_7IsolateESC_(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEET_IS2_EPNS0_7IsolateESC_(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE23EnsureCapacityForAddingINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_(ptr noundef, ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal16JSWeakCollection6DeleteENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEEi(ptr, ptr, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal16JSWeakCollection3SetENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEES5_i(ptr, ptr, ptr, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
end_hunk_0
