inline.NumInlined: 575
inline.NumDeleted: 348
begin_hunk_0_@_ZN2v88internal22JSFinalizationRegistry32RemoveCellFromUnregisterTokenMapEPNS0_7IsolateENS0_6TaggedINS0_8WeakCellEEE:bb.a

bb.al:                                            ; preds = %bb.aj, %bb.ak
  store atomic volatile i64 %i.b, ptr %i.e monotonic, align 8
  %i.fj = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.fk = load i64, ptr %i.fc, align 262144       ; 2 uses
  %i.fl = and i64 %i.fk, 32
  %.not.i.i.i.i.i46 = icmp eq i64 %i.fl, 0
  %i.fm = and i64 %i.fk, 25
  %.not38.i.i.i.i.i47 = icmp eq i64 %i.fm, 0
  br i1 %.not38.i.i.i.i.i47, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fn = and i64 %i.b, -262144
  %i.fo = inttoptr i64 %i.fn to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i48 = load i64, ptr %i.fo, align 262144
  %i.fp = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i48, 25
  %.not39.i.i.i.i.i49 = icmp eq i64 %i.fp, 0
  br i1 %.not39.i.i.i.i.i49, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ez, i64 noundef %i.fj, i64 %i.b) #8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br i1 %.not.i.i.i.i.i46, label %bb.aq, label %bb.ap, !prof !5

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ez, i64 %i.fj, i64 %i.b) #8
  br label %bb.aq

_ZN2v88internal8WeakCell17set_key_list_prevENS0_6TaggedINS0_5UnionIJS1_NS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit50: ; preds = %_ZN2v88internal10DictionaryINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit
  store atomic volatile i64 %i.b, ptr %i.e monotonic, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store atomic volatile i64 %i.b, ptr %i.fq monotonic, align 8
  br label %_ZN2v88internal8WeakCell17set_key_list_nextENS0_6TaggedINS0_5UnionIJS1_NS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit55

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  store atomic volatile i64 %i.b, ptr %i.fr monotonic, align 8
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = load i64, ptr %i.fc, align 262144       ; 2 uses
  %i.fu = and i64 %i.ft, 32
  %.not.i.i.i.i.i51 = icmp eq i64 %i.fu, 0
  %i.fv = and i64 %i.ft, 25
  %.not38.i.i.i.i.i52 = icmp eq i64 %i.fv, 0
  br i1 %.not38.i.i.i.i.i52, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fw = and i64 %i.b, -262144
  %i.fx = inttoptr i64 %i.fw to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i53 = load i64, ptr %i.fx, align 262144
  %i.fy = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i53, 25
  %.not39.i.i.i.i.i54 = icmp eq i64 %i.fy, 0
  br i1 %.not39.i.i.i.i.i54, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ez, i64 noundef %i.fs, i64 %i.b) #8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  br i1 %.not.i.i.i.i.i51, label %_ZN2v88internal8WeakCell17set_key_list_nextENS0_6TaggedINS0_5UnionIJS1_NS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit55, label %bb.au, !prof !5

bb.au:                                            ; preds = %bb.at
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ez, i64 %i.fs, i64 %i.b) #8
  br label %_ZN2v88internal8WeakCell17set_key_list_nextENS0_6TaggedINS0_5UnionIJS1_NS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit55

_ZN2v88internal8WeakCell17set_key_list_nextENS0_6TaggedINS0_5UnionIJS1_NS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit55: ; preds = %_ZN2v88internal8WeakCell17set_key_list_prevENS0_6TaggedINS0_5UnionIJS1_NS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit50, %bb.at, %bb.au
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22JSFinalizationRegistry12ShrinkKeyMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 55
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %_ZN2v88internal37TorqueGeneratedJSFinalizationRegistryINS0_22JSFinalizationRegistryENS0_8JSObjectEE11set_key_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #8
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.d, ptr %.0.i, align 8
  %i.q = tail call ptr @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6ShrinkINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS8_EEEEET_IS2_EPNS0_7IsolateESD_i(ptr noundef nonnull %0, ptr nonnull %.0.i, i32 noundef 0) #8
  %i.r = load i64, ptr %1, align 8                ; 4 uses
  %i.s = load i64, ptr %i.q, align 8              ; 5 uses
  %i.t = add i64 %i.r, 55                         ; 3 uses
  %i.u = inttoptr i64 %i.t to ptr
  store atomic volatile i64 %i.s, ptr %i.u monotonic, align 8
  %i.v = trunc i64 %i.s to i1
  br i1 %i.v, label %bb.d, label %_ZN2v88internal37TorqueGeneratedJSFinalizationRegistryINS0_22JSFinalizationRegistryENS0_8JSObjectEE11set_key_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.w = and i64 %i.r, -262144
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 262144         ; 2 uses
  %i.z = and i64 %i.y, 32
  %.not.i.i.i = icmp eq i64 %i.z, 0
  %i.aa = and i64 %i.y, 25
  %.not38.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = and i64 %i.s, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.ac, align 262144
  %i.ad = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not39.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.r, i64 noundef %i.t, i64 %i.s) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %_ZN2v88internal37TorqueGeneratedJSFinalizationRegistryINS0_22JSFinalizationRegistryENS0_8JSObjectEE11set_key_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.r, i64 %i.t, i64 %i.s) #8
  br label %_ZN2v88internal37TorqueGeneratedJSFinalizationRegistryINS0_22JSFinalizationRegistryENS0_8JSObjectEE11set_key_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal37TorqueGeneratedJSFinalizationRegistryINS0_22JSFinalizationRegistryENS0_8JSObjectEE11set_key_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.h, %bb.g, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal22JSFinalizationRegistry7CleanupEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.14"], align 8 ; 4 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #8
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.l = ptrtoint ptr %.0.i.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.e, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.q = load i64, ptr %1, align 8
  %i.r = add i64 %i.q, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 299
  br i1 %i.aa, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ad = load i32, ptr %i.o, align 8
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.af = load i64, ptr %1, align 8
  store i64 %i.af, ptr %2, align 8
  %i.ag = call i64 @_ZN2v88internal22JSFinalizationRegistry14PopClearedCellEPNS0_7IsolateEPb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 2 uses
  %i.ah = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.h, align 8
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN2v88internal6HandleINS0_8WeakCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.ak = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #8
  br label %_ZN2v88internal6HandleINS0_8WeakCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_8WeakCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i22 = phi ptr [ %i.ak, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.al = ptrtoint ptr %.0.i.i22 to i64
  %i.am = add i64 %i.al, 8
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.f, align 8
  store i64 %i.ag, ptr %.0.i.i22, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ao = add i64 %i.ag, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit, !prof !10

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_8WeakCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.av = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #8
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_8WeakCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.f
  %.0.i.i23 = phi ptr [ %i.av, %bb.f ], [ %i.as, %_ZN2v88internal6HandleINS0_8WeakCellEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.aw = ptrtoint ptr %.0.i.i23 to i64
  %i.ax = add i64 %i.aw, 8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.f, align 8
  store i64 %i.ar, ptr %.0.i.i23, align 8
  store ptr %.0.i.i23, ptr %3, align 8
  %i.az = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.p, ptr nonnull %3, i64 1) #8
  %i.ba = icmp eq ptr %i.az, null                 ; 2 uses
  %i.bb = load i8, ptr %i.a, align 1, !range !11
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit
  call void @_ZN2v88internal22JSFinalizationRegistry12ShrinkKeyMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %1)
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEC2ENS0_6TaggedISC_EEPNS0_7IsolateE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  store ptr %i.ab, ptr %i.f, align 8
  %i.bd = load i32, ptr %i.o, align 8
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.o, align 8
  %i.bf = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.bf, %i.ac
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  store ptr %i.ac, ptr %i.h, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.i, %bb.h
  br i1 %i.ba, label %.loopexit, label %bb.c, !llvm.loop !12

bb.j:                                             ; preds = %bb.c
  %i.bg = load i8, ptr %i.a, align 1, !range !11, !noundef !13
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal22JSFinalizationRegistry12ShrinkKeyMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %bb.j, %bb.k
  %.sroa.018.2 = phi i16 [ 257, %bb.j ], [ 257, %bb.k ], [ 0, %_ZN2v88internal11HandleScopeD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i16 %.sroa.018.2
}

declare ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8WeakCell13WeakCellPrintERSo(ptr noundef nonnull align 4 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %3 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %5 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %6 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %7 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %8 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %9 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  tail call void @_ZN2v88internal16HeapObjectLayout11PrintHeaderERSoPKc(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 27) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %2, align 8
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 12) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %3, align 8
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 22) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.l, ptr %4, align 8
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 14) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %5, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 10) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %6, align 8
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %6) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 10) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8
  store i64 %i.x, ptr %7, align 8
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %7) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 19) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %8, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 19) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8
  store i64 %i.af, ptr %9, align 8
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %9) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) #8 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare void @_ZN2v88internal16HeapObjectLayout11PrintHeaderERSoPKc(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.499", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.501", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.505", align 8 ; 4 uses
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 2 uses
  %i.e = xor i32 %i.d, -1
  %i.f = shl i32 %i.d, 15
  %i.g = add i32 %i.f, %i.e                       ; 2 uses
  %i.h = lshr i32 %i.g, 12
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 5                          ; 2 uses
  %i.k = lshr i32 %i.j, 4
  %i.l = xor i32 %i.k, %i.j
  %i.m = mul i32 %i.l, 2057                       ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %.masked.i = and i32 %i.m, 1073741823
  %i.o = xor i32 %.masked.i, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 32
  br label %bb.aa
end_hunk_0
