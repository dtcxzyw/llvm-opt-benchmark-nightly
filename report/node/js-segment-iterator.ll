inline.NumInlined: 539
inline.NumDeleted: 333
begin_hunk_0_@_ZN2v88internal17JSSegmentIterator6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEPN6icu_7813BreakIteratorENS0_11JSSegmenter11GranularityE:bb.a
bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #10
  br label %_ZNSt12__shared_ptrIN6icu_7813BreakIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

_ZNSt12__shared_ptrIN6icu_7813BreakIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.at
  ret ptr %i.ct
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7ManagedIN6icu_7813BreakIteratorEE4FromEPNS0_7IsolateEmSt10shared_ptrIS3_ENS0_14AllocationTypeE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 48) #10 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8
  store ptr null, ptr %i.c, align 8
  store <2 x ptr> %i.d, ptr %i.b, align 8
  store ptr null, ptr %2, align 8
  store i64 %1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN2v88internal6detailL10DestructorIN6icu_7813BreakIteratorEEEvPv, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr null, ptr %i.h, align 8
  tail call void @_ZN2v823ExternalMemoryAccounter8IncreaseEPNS_7IsolateEm(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef %0, i64 noundef %1) #10
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 7
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i8, ptr %i.m monotonic, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 3
  %i.q = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE26AllocateRawWithImmortalMapEiNS0_14AllocationTypeENS0_6TaggedINS0_3MapEEENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.p, i8 noundef zeroext %3, i64 %i.k, i8 noundef zeroext 0, i8 0) #10 ; 5 uses
  %i.r = add i64 %i.q, 7                          ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  store i64 %i.i, ptr %i.s, align 8
  %i.t = and i64 %i.q, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 262144
  %i.w = and i64 %i.v, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE44EEEvNS0_17IsolateForSandboxEm.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_19ExternalPointerSlotE(i64 %i.q, i64 %i.r) #10
  br label %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE44EEEvNS0_17IsolateForSandboxEm.exit.i

_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE44EEEvNS0_17IsolateForSandboxEm.exit.i: ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal7Factory10NewForeignILNS0_18ExternalPointerTagE44EEENS0_6HandleINS0_7ForeignEEEmNS0_14AllocationTypeE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE44EEEvNS0_17IsolateForSandboxEm.exit.i
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  br label %_ZN2v88internal7Factory10NewForeignILNS0_18ExternalPointerTagE44EEENS0_6HandleINS0_7ForeignEEEmNS0_14AllocationTypeE.exit

_ZN2v88internal7Factory10NewForeignILNS0_18ExternalPointerTagE44EEENS0_6HandleINS0_7ForeignEEEmNS0_14AllocationTypeE.exit: ; preds = %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE44EEEvNS0_17IsolateForSandboxEm.exit.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.ac, %bb.c ], [ %i.y, %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE44EEEvNS0_17IsolateForSandboxEm.exit.i ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.q, ptr %.0.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 58848
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i64 %i.q) #10 ; 2 uses
  store ptr %i.ai, ptr %i.h, align 8
  tail call void @_ZN2v88internal13GlobalHandles8MakeWeakEPmPvPFvRKNS_16WeakCallbackInfoIvEEENS_16WeakCallbackTypeE(ptr noundef %i.ai, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN2v88internal22ManagedObjectFinalizerERKNS_16WeakCallbackInfoIvEE, i32 noundef 0) #10
  tail call void @_ZN2v88internal7Isolate28RegisterManagedPtrDestructorEPNS0_20ManagedPtrDestructorE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef nonnull %i.a) #10
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7ManagedIN6icu_7813UnicodeStringEE4FromEPNS0_7IsolateEmSt10shared_ptrIS3_ENS0_14AllocationTypeE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 48) #10 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8
  store ptr null, ptr %i.c, align 8
  store <2 x ptr> %i.d, ptr %i.b, align 8
  store ptr null, ptr %2, align 8
  store i64 %1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN2v88internal6detailL10DestructorIN6icu_7813UnicodeStringEEEvPv, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr null, ptr %i.h, align 8
  tail call void @_ZN2v823ExternalMemoryAccounter8IncreaseEPNS_7IsolateEm(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef %0, i64 noundef %1) #10
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 7
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i8, ptr %i.m monotonic, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 3
  %i.q = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE26AllocateRawWithImmortalMapEiNS0_14AllocationTypeENS0_6TaggedINS0_3MapEEENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.p, i8 noundef zeroext %3, i64 %i.k, i8 noundef zeroext 0, i8 0) #10 ; 5 uses
  %i.r = add i64 %i.q, 7                          ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  store i64 %i.i, ptr %i.s, align 8
  %i.t = and i64 %i.q, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 262144
  %i.w = and i64 %i.v, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE45EEEvNS0_17IsolateForSandboxEm.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_19ExternalPointerSlotE(i64 %i.q, i64 %i.r) #10
  br label %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE45EEEvNS0_17IsolateForSandboxEm.exit.i

_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE45EEEvNS0_17IsolateForSandboxEm.exit.i: ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal7Factory10NewForeignILNS0_18ExternalPointerTagE45EEENS0_6HandleINS0_7ForeignEEEmNS0_14AllocationTypeE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE45EEEvNS0_17IsolateForSandboxEm.exit.i
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  br label %_ZN2v88internal7Factory10NewForeignILNS0_18ExternalPointerTagE45EEENS0_6HandleINS0_7ForeignEEEmNS0_14AllocationTypeE.exit

_ZN2v88internal7Factory10NewForeignILNS0_18ExternalPointerTagE45EEENS0_6HandleINS0_7ForeignEEEmNS0_14AllocationTypeE.exit: ; preds = %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE45EEEvNS0_17IsolateForSandboxEm.exit.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.ac, %bb.c ], [ %i.y, %_ZN2v88internal7Foreign20init_foreign_addressILNS0_18ExternalPointerTagE45EEEvNS0_17IsolateForSandboxEm.exit.i ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.q, ptr %.0.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 58848
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i64 %i.q) #10 ; 2 uses
  store ptr %i.ai, ptr %i.h, align 8
  tail call void @_ZN2v88internal13GlobalHandles8MakeWeakEPmPvPFvRKNS_16WeakCallbackInfoIvEEENS_16WeakCallbackTypeE(ptr noundef %i.ai, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN2v88internal22ManagedObjectFinalizerERKNS_16WeakCallbackInfoIvEE, i32 noundef 0) #10
  tail call void @_ZN2v88internal7Isolate28RegisterManagedPtrDestructorEPNS0_20ManagedPtrDestructorE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef nonnull %i.a) #10
  ret ptr %.0.i.i.i
}

declare ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, ptr, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal17JSSegmentIterator4NextEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 10 uses
  %3 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %0, ptr %3, align 8
  %i.a = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  br i1 %i.e, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.f = load i64, ptr %1, align 8
  %i.g = add i64 %i.f, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 7
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(128) %i.p) #10 ; 10 uses
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.p) #10 ; 3 uses
  %i.y = icmp eq i32 %i.x, -1                     ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %1, align 8               ; 2 uses
  %i.ab = add i64 %i.aa, 47
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 3                        ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = add nsw i32 %i.x, -1
  %i.aj = icmp eq i32 %i.t, %i.ai
  %i.ak = select i1 %i.ah, i1 %i.aj, i1 false
  %i.al = add i64 %i.aa, 31
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  br i1 %i.ak, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.ao = add i64 %i.an, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !15
  %i.ap = inttoptr i64 %i.ao to ptr               ; 8 uses
  %i.aq = load atomic volatile i64, ptr %i.ap acquire, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = and i16 %i.at, 15
  switch i16 %i.au, label %bb.o [
    i16 8, label %bb.h
    i16 0, label %bb.i
    i16 9, label %bb.j
    i16 1, label %bb.j
    i16 10, label %bb.k
    i16 2, label %bb.l
    i16 11, label %bb.m
    i16 3, label %bb.m
    i16 13, label %bb.n
    i16 5, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = zext i32 %i.t to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = zext i32 %i.t to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.be = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.ap, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.k:                                             ; preds = %bb.g
  %i.bf = call noundef zeroext i8 @_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.ap, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.bg = zext i8 %i.bf to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.l:                                             ; preds = %bb.g
  %i.bh = call noundef zeroext i16 @_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.ap, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.m:                                             ; preds = %bb.g, %bb.g
  %i.bi = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.ap, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %bb.g, %bb.g
  %i.bj = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.ap, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #12
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi i16 [ %i.az, %bb.h ], [ %i.bd, %bb.i ], [ %i.be, %bb.j ], [ %i.bg, %bb.k ], [ %i.bh, %bb.l ], [ %i.bi, %bb.m ], [ %i.bj, %bb.n ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !18, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  store i8 0, ptr %i.bk, align 8
  br i1 %i.bm, label %bb.p, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.p:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.bn = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #10
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.bo = icmp ugt i16 %.0.i, 255
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.bp = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1) %0, i16 noundef zeroext %.0.i) #10
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %bb.r
  %.sroa.0108.0 = phi ptr [ %i.bp, %bb.r ], [ null, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i58 = load i64, ptr %i.bq, align 8
  %i.br = add i64 %.sroa.0.0.copyload.i.i58, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.bu = add i64 %i.bt, 31
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.t, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.t:                                             ; preds = %bb.s
  %i.cc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #10
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.s, %bb.t
  %.0.i.i59 = phi ptr [ %i.cc, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %i.cd = ptrtoint ptr %.0.i.i59 to i64
  %i.ce = add i64 %i.cd, 8
  %i.cf = inttoptr i64 %i.ce to ptr
  store ptr %i.cf, ptr %i.bx, align 8
  store i64 %i.bw, ptr %.0.i.i59, align 8
  %i.cg = add i64 %i.bw, 871
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i64, ptr %i.ch monotonic, align 8
  %i.cj = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.ck = load ptr, ptr %i.bz, align 8
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.u, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.u:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.cm = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #10
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit, %bb.u
  %.0.i.i = phi ptr [ %i.cm, %bb.u ], [ %i.cj, %_ZN2v88internal7Isolate14native_contextEv.exit ] ; 3 uses
  %i.cn = ptrtoint ptr %.0.i.i to i64
  %i.co = add i64 %i.cn, 8
  %i.cp = inttoptr i64 %i.co to ptr
  store ptr %i.cp, ptr %i.bx, align 8
  store i64 %i.ci, ptr %.0.i.i, align 8
  %i.cq = call ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 0) #10 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 3 uses
  %i.cs = icmp ult i16 %.0.i, 256
  %i.ct = zext nneg i16 %.0.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3272
  %.sroa.06.0.in = select i1 %i.cs, ptr %i.cv, ptr %.sroa.0108.0
  %.sroa.06.0 = load i64, ptr %.sroa.06.0.in, align 8
  %i.cw = add i64 %i.cr, 23
  %i.cx = inttoptr i64 %i.cw to ptr
  store atomic volatile i64 %.sroa.06.0, ptr %i.cx monotonic, align 8
  %i.cy = sext i32 %i.t to i64
  %i.cz = shl nsw i64 %i.cy, 32
  %i.da = add i64 %i.cr, 31
  %i.db = inttoptr i64 %i.da to ptr
  store atomic volatile i64 %i.cz, ptr %i.db monotonic, align 8
  %i.dc = load i64, ptr %1, align 8
  %i.dd = add i64 %i.dc, 31
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.cr, 39
  %i.dh = inttoptr i64 %i.dg to ptr
  store atomic volatile i64 %i.df, ptr %i.dh monotonic, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.v:                                             ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = icmp eq ptr %i.dj, %i.dl
  br i1 %i.dm, label %bb.w, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.dn = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #10
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.v, %bb.w
  %.0.i.i55 = phi ptr [ %i.dn, %bb.w ], [ %i.dj, %bb.v ] ; 3 uses
  %i.do = ptrtoint ptr %.0.i.i55 to i64
  %i.dp = add i64 %i.do, 8
  %i.dq = inttoptr i64 %i.dp to ptr
  store ptr %i.dq, ptr %i.di, align 8
  store i64 %i.an, ptr %.0.i.i55, align 8
  %i.dr = load i64, ptr %1, align 8
  %i.ds = add i64 %i.dr, 39
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = add i64 %i.du, 7
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call ptr @_ZN2v88internal10JSSegments23CreateSegmentDataObjectEPNS0_7IsolateENS0_11JSSegmenter11GranularityEPN6icu_7813BreakIteratorENS0_12DirectHandleINS0_6StringEEERKNS6_13UnicodeStringEii(ptr noundef nonnull %0, i32 noundef %i.ag, ptr noundef nonnull %i.p, ptr nonnull %.0.i.i55, ptr noundef nonnull align 8 dereferenceable(64) %i.eb, i32 noundef %i.t, i32 noundef %i.x) #10 ; 2 uses
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.e
  %.sroa.0112.0.sink = phi ptr [ %i.z, %bb.e ], [ %i.ec, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.cq, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.ed = call ptr @_ZN2v88internal7Factory19NewJSIteratorResultENS0_12DirectHandleINS0_6ObjectEEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.0112.0.sink, i1 noundef zeroext %i.y) #10
  br label %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %.sroa.0120.2 = phi ptr [ null, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.c ], [ %i.ed, %_ZNK2v88internal11MaybeHandleINS0_19JSSegmentDataObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ]
  ret ptr %.sroa.0120.2
}

declare noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @_ZN2v88internal7Factory19NewJSIteratorResultENS0_12DirectHandleINS0_6ObjectEEEb(ptr noundef nonnull align 1 dereferenceable(1), ptr, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext) local_unnamed_addr #1

declare ptr @_ZN2v88internal10JSSegments23CreateSegmentDataObjectEPNS0_7IsolateENS0_11JSSegmenter11GranularityEPN6icu_7813BreakIteratorENS0_12DirectHandleINS0_6StringEEERKNS6_13UnicodeStringEii(ptr noundef, i32 noundef, ptr noundef, ptr, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !20
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
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #1

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #1

declare noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

declare noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #10, !inline_history !21
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #10, !inline_history !21
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  ret i8 %i.u
}

declare void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #10, !inline_history !22
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #10, !inline_history !22
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  ret i16 %i.u
}

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6icu_7813BreakIteratorELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6icu_7813BreakIteratorELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(128) %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6icu_7813BreakIteratorELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN6icu_7813BreakIteratorELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}
end_hunk_0
