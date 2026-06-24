inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal6Object26NoSideEffectsToMaybeStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.aue
  store i16 15395, ptr %i.auf, align 1
  %i.aug = load i32, ptr %i.atn, align 4
  %i.auh = add nsw i32 %i.aug, 2                  ; 2 uses
  store i32 %i.auh, ptr %i.atn, align 4
  %i.aui = load i32, ptr %i.atl, align 8
  %i.auj = icmp eq i32 %i.auh, %i.aui
  br i1 %i.auj, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

bb.dd:                                            ; preds = %.preheader509
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre523 = load i32, ptr %i.atn, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165: ; preds = %.preheader509, %bb.dd
  %i.auk = phi i32 [ %i.aua, %.preheader509 ], [ %.pre523, %bb.dd ] ; 2 uses
  %i.aul = load ptr, ptr %i.atr, align 8
  %i.aum = load i64, ptr %i.aul, align 8
  %i.aun = add i64 %i.aum, -1
  %i.auo = inttoptr i64 %i.aun to ptr
  %i.aup = add nsw i32 %i.auk, 1
  store i32 %i.aup, ptr %i.atn, align 4
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auo, i64 16
  %i.aur = zext i32 %i.auk to i64
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auq, i64 %i.aur
  store i8 60, ptr %i.aus, align 1
  %i.aut = load i32, ptr %i.atn, align 4
  %i.auu = load i32, ptr %i.atl, align 8
  %i.auv = icmp eq i32 %i.aut, %i.auu
  br i1 %i.auv, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

bb.de:                                            ; preds = %.critedge501.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre = load i32, ptr %i.asx, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168: ; preds = %.critedge501.preheader, %bb.de
  %i.auw = phi i32 [ %i.ati, %.critedge501.preheader ], [ %.pre, %bb.de ] ; 2 uses
  %i.aux = load ptr, ptr %i.asw, align 8
  %i.auy = load i64, ptr %i.aux, align 8
  %i.auz = add i64 %i.auy, -1
  %i.ava = inttoptr i64 %i.auz to ptr
  %i.avb = add nsw i32 %i.auw, 1
  store i32 %i.avb, ptr %i.asx, align 4
  %i.avc = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  %i.avd = zext i32 %i.auw to i64
  %i.ave = getelementptr inbounds nuw [2 x i8], ptr %i.avc, i64 %i.avd
  store i16 60, ptr %i.ave, align 2
  %i.avf = load i32, ptr %i.asx, align 4
  %i.avg = load i32, ptr %i.asy, align 8
  %i.avh = icmp eq i32 %i.avf, %i.avg
  br i1 %i.avh, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165, %bb.dc
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit168, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit165, %bb.dc
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr nonnull %.sroa.0206.0) #28
  %i.avi = load i32, ptr %i.ast, align 8
  %i.avj = icmp eq i32 %i.avi, 0
  %i.avk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.avl = load ptr, ptr %i.avk, align 8
  %i.avm = load i64, ptr %i.avl, align 8
  %i.avn = add i64 %i.avm, -1
  %i.avo = inttoptr i64 %i.avn to ptr
  %i.avp = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.avq = load i32, ptr %i.avp, align 4          ; 2 uses
  %i.avr = add nsw i32 %i.avq, 1
  store i32 %i.avr, ptr %i.avp, align 4
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avo, i64 16 ; 2 uses
  %i.avt = zext i32 %i.avq to i64                 ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.avj, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avs, i64 %i.avt
  store i8 62, ptr %i.avv, align 1
  %i.avw = load i32, ptr %i.avp, align 4
  %i.avx = load i32, ptr %i.avu, align 8
  %i.avy = icmp eq i32 %i.avw, %i.avx
  br i1 %i.avy, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

bb.dg:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit
  %i.avz = getelementptr inbounds nuw [2 x i8], ptr %i.avs, i64 %i.avt
  store i16 62, ptr %i.avz, align 2
  %i.awa = load i32, ptr %i.avp, align 4
  %i.awb = load i32, ptr %i.avu, align 8
  %i.awc = icmp eq i32 %i.awa, %i.awb
  br i1 %i.awc, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split: ; preds = %bb.dg, %bb.df
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, %bb.dg, %bb.df
  %i.awd = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28 ; 2 uses
  %i.awe = icmp eq ptr %i.awd, null
  br i1 %i.awe, label %bb.dh, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169, !prof !5

bb.dh:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit172: ; preds = %bb.cx, %.thread487, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %.critedge, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal44IsJSFunctionOrBoundFunctionOrWrappedFunctionENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, %bb.cw, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit170, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit171, %bb.m, %bb.e, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.i, %_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.0267.3 = phi ptr [ %i.aqo, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit170 ], [ %i.ac, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.bs, %_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.by, %bb.i ], [ %i.aq, %bb.e ], [ %.sroa.0246.0, %bb.m ], [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.awd, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit169 ], [ %i.sc, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit171 ], [ %.0.i142, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ null, %bb.cw ], [ null, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit ], [ null, %.thread487 ], [ null, %_ZN2v88internal44IsJSFunctionOrBoundFunctionOrWrappedFunctionENS0_6TaggedINS0_6ObjectEEE.exit ], [ %1, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.arl, %.critedge ], [ null, %bb.cx ]
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.sroa.0267.3
}

declare void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal6Object21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %3 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef %0) #28
  %i.a = call ptr @_ZN2v88internal6Object26NoSideEffectsToMaybeStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) ; 2 uses
  %.not102 = icmp eq ptr %i.a, null
  br i1 %.not102, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = add i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp ugt i16 %i.i, 299
  br i1 %i.j, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i8, ptr %i.m monotonic, align 1
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.o = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.321, i64 16, i8 noundef zeroext 0) #28 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.thread, !prof !5

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.q = call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr nonnull %1, ptr noundef null) ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %._ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit_crit_edge, !prof !5

._ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit_crit_edge: ; preds = %bb.d
  %.pre = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %._ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit_crit_edge, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.s = phi i64 [ %i.b, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.pre, %._ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit_crit_edge ]
  %.sroa.046.1 = phi ptr [ %1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.q, %._ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit_crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %i.s, ptr %4, align 8
  %i.t = call i64 @_ZN2v88internal10JSReceiver10class_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %i.z = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %bb.f
  %.0.i = phi ptr [ %i.z, %bb.f ], [ %i.v, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ] ; 4 uses
  %i.aa = ptrtoint ptr %.0.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %i.t, ptr %.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.pre.pre.i = load i64, ptr %i.ad, align 8
  %i.ae = add i64 %.pre.pre.i, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 128
  br i1 %i.ak, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ao = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ao, ptr %2, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.sroa.046.1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = ptrtoint ptr %.sroa.046.1 to i64
  store i64 %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 -1, i64 16, i1 false)
  %i.bb = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = and i16 %i.be, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bf, 32
  br i1 %.not.i21.i.i.i, label %bb.g, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.g:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.bj = load i8, ptr %i.bi, align 8, !range !16
  %i.bk = trunc nuw i8 %i.bj to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bh, true
  %i.bl = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bk
  br i1 %i.bl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bn = load i8, ptr %i.bm, align 8, !range !16, !noundef !17
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.g
  %.pn.i.i26.i.i.i = phi ptr [ %i.bq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.g ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.br = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bs = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.ad) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bs, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ad, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.au, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #28
  %i.bt = load i32, ptr %i.ap, align 4
  %.not.i30 = icmp eq i32 %i.bt, 0
  br i1 %.not.i30, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bu = load ptr, ptr %i.at, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.k:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bw = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %2, i32 noundef 0) #28
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.j, %bb.k
  %.sroa.07.0.i = phi ptr [ %i.bw, %bb.k ], [ %i.bv, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bx = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.bz = add nsw i64 %i.bx, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp ult i16 %i.ce, 128
  %spec.select = select i1 %i.cf, ptr %.sroa.07.0.i, ptr %.0.i
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.04.0 = phi ptr [ %.0.i, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %spec.select, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %0) #28
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.l, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 24 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cn, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.ck, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.ct
  store i16 91, ptr %i.cu, align 2
  %i.cv = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cw = load i32, ptr %i.cl, align 8
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.u, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

bb.l:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 26 uses
  %i.db = load i32, ptr %i.da, align 4            ; 4 uses
  %i.dc = sub nsw i32 %i.cz, %i.db
  %i.dd = icmp sgt i32 %i.dc, 9
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 8 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  br i1 %i.dd, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.dj = add nsw i32 %i.db, 1
  store i32 %i.dj, ptr %i.da, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = zext i32 %i.db to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  store i8 91, ptr %i.dm, align 1
  %i.dn = load i32, ptr %i.da, align 4            ; 2 uses
  %i.do = load i32, ptr %i.cy, align 8
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.n, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dr = zext i32 %i.db to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i64 2338603393739812699, ptr %i.ds, align 1
  %i.dt = load i32, ptr %i.da, align 4
  %i.du = add nsw i32 %i.dt, 8                    ; 2 uses
  store i32 %i.du, ptr %i.da, align 4
  %i.dv = load i32, ptr %i.cy, align 8
  %i.dw = icmp eq i32 %i.du, %i.dv
  br i1 %i.dw, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit

bb.n:                                             ; preds = %.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre114 = load i32, ptr %i.da, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit: ; preds = %.preheader, %bb.n
  %i.dx = phi i32 [ %i.dn, %.preheader ], [ %.pre114, %bb.n ] ; 2 uses
  %i.dy = load ptr, ptr %i.de, align 8
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = add i64 %i.dz, -1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = add nsw i32 %i.dx, 1
  store i32 %i.ec, ptr %i.da, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ee = zext i32 %i.dx to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 111, ptr %i.ef, align 1
  %i.eg = load i32, ptr %i.da, align 4            ; 2 uses
  %i.eh = load i32, ptr %i.cy, align 8
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.o, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1

bb.o:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre115 = load i32, ptr %i.da, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1: ; preds = %bb.o, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit
  %i.ej = phi i32 [ %.pre115, %bb.o ], [ %i.eg, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit ] ; 2 uses
  %i.ek = load ptr, ptr %i.de, align 8
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = add i64 %i.el, -1
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = add nsw i32 %i.ej, 1
  store i32 %i.eo, ptr %i.da, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = zext i32 %i.ej to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  store i8 98, ptr %i.er, align 1
  %i.es = load i32, ptr %i.da, align 4            ; 2 uses
  %i.et = load i32, ptr %i.cy, align 8
  %i.eu = icmp eq i32 %i.es, %i.et
  br i1 %i.eu, label %bb.p, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.2

bb.p:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre116 = load i32, ptr %i.da, align 4
end_hunk_0
begin_hunk_1_@_ZN2v88internal6Object21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre110 = load i32, ptr %i.ck, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.3

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.3: ; preds = %bb.x, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.2
  %i.in = phi i32 [ %.pre110, %bb.x ], [ %i.ik, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.2 ] ; 2 uses
  %i.io = load ptr, ptr %i.cj, align 8
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = add i64 %i.ip, -1
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = add nsw i32 %i.in, 1
  store i32 %i.is, ptr %i.ck, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iu = zext i32 %i.in to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.iu
  store i16 101, ptr %i.iv, align 2
  %i.iw = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.ix = load i32, ptr %i.cl, align 8
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.y, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.4

bb.y:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.3
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre111 = load i32, ptr %i.ck, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.4

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.4: ; preds = %bb.y, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.3
  %i.iz = phi i32 [ %.pre111, %bb.y ], [ %i.iw, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.3 ] ; 2 uses
  %i.ja = load ptr, ptr %i.cj, align 8
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = add i64 %i.jb, -1
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = add nsw i32 %i.iz, 1
  store i32 %i.je, ptr %i.ck, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jg = zext i32 %i.iz to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jg
  store i16 99, ptr %i.jh, align 2
  %i.ji = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.jj = load i32, ptr %i.cl, align 8
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %bb.z, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.5

bb.z:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.4
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre112 = load i32, ptr %i.ck, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.5

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.5: ; preds = %bb.z, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.4
  %i.jl = phi i32 [ %.pre112, %bb.z ], [ %i.ji, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.4 ] ; 2 uses
  %i.jm = load ptr, ptr %i.cj, align 8
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = add i64 %i.jn, -1
  %i.jp = inttoptr i64 %i.jo to ptr
  %i.jq = add nsw i32 %i.jl, 1
  store i32 %i.jq, ptr %i.ck, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.js = zext i32 %i.jl to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.js
  store i16 116, ptr %i.jt, align 2
  %i.ju = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.jv = load i32, ptr %i.cl, align 8
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %bb.aa, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.6

bb.aa:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.5
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %.pre113 = load i32, ptr %i.ck, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.6

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.6: ; preds = %bb.aa, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.5
  %i.jx = phi i32 [ %.pre113, %bb.aa ], [ %i.ju, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.5 ] ; 2 uses
  %i.jy = load ptr, ptr %i.cj, align 8
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = add i64 %i.jz, -1
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = add nsw i32 %i.jx, 1
  store i32 %i.kc, ptr %i.ck, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.ke = zext i32 %i.jx to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %i.ke
  store i16 32, ptr %i.kf, align 2
  %i.kg = load i32, ptr %i.ck, align 4
  %i.kh = load i32, ptr %i.cl, align 8
  %i.ki = icmp eq i32 %i.kg, %i.kh
  br i1 %i.ki, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.6, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.6, %bb.m
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.6, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.6, %bb.m
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr nonnull %.sroa.04.0) #28
  %i.kj = load i32, ptr %i.cg, align 8
  %i.kk = icmp eq i32 %i.kj, 0
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = load i64, ptr %i.km, align 8
  %i.ko = add i64 %i.kn, -1
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.kr = load i32, ptr %i.kq, align 4            ; 2 uses
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.ku = zext i32 %i.kr to i64                   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.kk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ku
  store i8 93, ptr %i.kw, align 1
  %i.kx = load i32, ptr %i.kq, align 4
  %i.ky = load i32, ptr %i.kv, align 8
  %i.kz = icmp eq i32 %i.kx, %i.ky
  br i1 %i.kz, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

bb.ac:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi9EEEvRAT__Kc.exit
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.ku
  store i16 93, ptr %i.la, align 2
  %i.lb = load i32, ptr %i.kq, align 4
  %i.lc = load i32, ptr %i.kv, align 8
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split: ; preds = %bb.ac, %bb.ab
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, %bb.ac, %bb.ab
  %i.le = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #28 ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.ad, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !5

bb.ad:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.thread

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %.sroa.051.2 = phi ptr [ %i.o, %bb.b ], [ %i.le, %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit ], [ %i.a, %bb.a ]
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.sroa.051.2
}

declare ptr @_ZN2v88internal6BigInt21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal15JSBoundFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal17JSWrappedFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal10JSFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.k = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !16
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !16, !noundef !17
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #28
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.07.0 = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.sroa.07.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Isolate15error_to_stringEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 2095
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i, align 8
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %4 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 54 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !16
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #28
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i53 = icmp eq i32 %i.aq, 0
  br i1 %.not.i53, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #28
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.at, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.au = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp ult i16 %i.bb, 128
  br i1 %i.bc, label %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %.sroa.04.0.i = phi ptr [ %i.bd, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %.sroa.07.0.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 6648 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.pre.pre.i54 = load i64, ptr %i.be, align 8
  %i.bf = add i64 %.pre.pre.i54, -1
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = icmp eq i16 %i.bk, 128
  br i1 %i.bl, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i67, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i55

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i67:  ; preds = %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = trunc i32 %i.bn to i1
  br i1 %i.bo, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i56, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i55

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i55: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i67, %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i56

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i56: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i55, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i67
  %i.bp = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i55 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i67 ]
  store i32 %i.bp, ptr %2, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.be, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.w, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 -1, i64 16, i1 false)
  %i.cb = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = and i16 %i.ce, -96
  %.not.i21.i.i.i57 = icmp eq i16 %i.cf, 32
  br i1 %.not.i21.i.i.i57, label %bb.g, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i58

bb.g:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i56
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.cj = load i8, ptr %i.ci, align 8, !range !16
  %i.ck = trunc nuw i8 %i.cj to i1
  %not..i.i.i23.i.i.i62 = xor i1 %i.ch, true
  %i.cl = select i1 %not..i.i.i23.i.i.i62, i1 true, i1 %i.ck
  br i1 %i.cl, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i64, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.cn = load i8, ptr %i.cm, align 8, !range !16, !noundef !17
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i63, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i63: ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i64

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i64: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i63, %bb.g
  %.pn.i.i26.i.i.i65 = phi ptr [ %i.cq, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i63 ], [ %0, %bb.g ]
  %.in.i.i27.i.i.i66 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i65, i64 58464
  %i.cr = load ptr, ptr %.in.i.i27.i.i.i66, align 8
  %i.cs = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.be) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i58

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i58: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i64, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i56
  %.sroa.05.0.i22.i.i.i59 = phi ptr [ %i.cs, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i64 ], [ %i.be, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i56 ]
  store ptr %.sroa.05.0.i22.i.i.i59, ptr %i.bv, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #28
  %i.ct = load i32, ptr %i.bq, align 4
  %.not.i60 = icmp eq i32 %i.ct, 0
  br i1 %.not.i60, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i58
  %i.cu = load ptr, ptr %i.bu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit68

bb.k:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i58
  %i.cw = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %2, i32 noundef 0) #28
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit68

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit68: ; preds = %bb.j, %bb.k
  %.sroa.07.0.i61 = phi ptr [ %i.cw, %bb.k ], [ %i.cv, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.cx = load i64, ptr %.sroa.07.0.i61, align 8  ; 2 uses
  %i.cy = trunc i64 %i.cx to i1
  br i1 %i.cy, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i71, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i69

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i71: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit68
  %i.cz = add nsw i64 %i.cx, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2
  %i.df = icmp ult i16 %i.de, 128
  br i1 %i.df, label %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit72, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i69

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i69: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i71, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit68
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit72

_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit72: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i71, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i69
  %.sroa.04.0.i70 = phi ptr [ %i.dg, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i69 ], [ %.sroa.07.0.i61, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i71 ] ; 4 uses
  %i.dh = load i64, ptr %.sroa.04.0.i, align 8
  %i.di = add i64 %i.dh, -1
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.au, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_115AsStringOrEmptyEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit72
  %i.dn = load i64, ptr %.sroa.04.0.i70, align 8
  %i.do = add i64 %i.dn, -1
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.au, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.dr, i32 22)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %0) #28
  %i.dt = load i64, ptr %.sroa.04.0.i, align 8
  %i.du = add i64 %i.dt, -1
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.dx = load i32, ptr %i.dw, align 4            ; 2 uses
  %i.dy = add nuw nsw i32 %.sroa.speculated, -536870887
  %i.dz = add i32 %i.dy, %i.dx
  %i.ea = icmp ult i32 %i.dz, -536870889
  br i1 %i.ea, label %bb.n, label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.eb = add i32 %i.dx, -29
  %i.ec = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.04.0.i, i32 noundef 0, i32 noundef %i.eb) #28
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %i.ec) #28
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.o, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.n
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 18 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ej = load ptr, ptr %i.eg, align 8
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = add i64 %i.ek, -1
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load i32, ptr %i.eh, align 4            ; 2 uses
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.eh, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eq = zext i32 %i.en to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.eq
  store i16 46, ptr %i.er, align 2
  %i.es = load i32, ptr %i.eh, align 4            ; 2 uses
  %i.et = load i32, ptr %i.ei, align 8
  %i.eu = icmp eq i32 %i.es, %i.et
  br i1 %i.eu, label %bb.v, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit50

bb.o:                                             ; preds = %bb.n
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 20 uses
  %i.ey = load i32, ptr %i.ex, align 4            ; 4 uses
  %i.ez = sub nsw i32 %i.ew, %i.ey
  %i.fa = icmp sgt i32 %i.ez, 7
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr               ; 2 uses
  br i1 %i.fa, label %bb.p, label %.preheader135

.preheader135:                                    ; preds = %bb.o
  %i.fg = add nsw i32 %i.ey, 1
  store i32 %i.fg, ptr %i.ex, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = zext i32 %i.ey to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  store i8 46, ptr %i.fj, align 1
  %i.fk = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.fl = load i32, ptr %i.ev, align 8
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.q, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit47

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fo = zext i32 %i.ey to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fp, ptr noundef nonnull align 1 dereferenceable(7) @__const._ZN2v88internal12_GLOBAL__N_126NoSideEffectsErrorToStringEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE.connector, i64 6, i1 false)
  %i.fq = load i32, ptr %i.ex, align 4
  %i.fr = add nsw i32 %i.fq, 6                    ; 2 uses
  store i32 %i.fr, ptr %i.ex, align 4
  %i.fs = load i32, ptr %i.ev, align 8
  %i.ft = icmp eq i32 %i.fr, %i.fs
  br i1 %i.ft, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi7EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi7EEEvRAT__Kc.exit

bb.q:                                             ; preds = %.preheader135
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  %.pre166 = load i32, ptr %i.ex, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit47

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit47: ; preds = %.preheader135, %bb.q
  %i.fu = phi i32 [ %i.fk, %.preheader135 ], [ %.pre166, %bb.q ] ; 2 uses
  %i.fv = load ptr, ptr %i.fb, align 8
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = add i64 %i.fw, -1
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = add nsw i32 %i.fu, 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal6Object3AddEPNS0_7IsolateENS0_6HandleIS1_EES5_:bb.a

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47.thread, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.eh = and i64 %i.db, 1
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ej = add nsw i64 %i.db, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i64, ptr %i.ek monotonic, align 8
  %i.em = add i64 %i.el, 11
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load atomic volatile i16, ptr %i.en monotonic, align 2
  %i.ep = icmp eq i16 %i.eo, 130
  br i1 %i.ep, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.eq = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i63192198) ; 2 uses
  %.not = icmp eq ptr %i.eq, null
  br i1 %.not, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %.sroa.05.0.i184190, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.er = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge ], [ %i.cs, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.cs, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %.sroa.07.0.i71216220 = phi ptr [ %i.eq, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218_crit_edge ], [ %.sroa.05.0.i63192198, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.sroa.05.0.i63192198, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  %i.es = and i64 %i.er, 1
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218
  %i.eu = add nsw i64 %i.er, -1
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load atomic volatile i64, ptr %i.ev monotonic, align 8
  %i.ex = add i64 %i.ew, 11
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i16, ptr %i.ey monotonic, align 2
  %i.fa = icmp eq i16 %i.ez, 130
  br i1 %i.fa, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72
  %i.fb = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.05.0.i184190) ; 2 uses
  %.not227 = icmp eq ptr %i.fb, null
  br i1 %.not227, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit, label %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74
  %.pre228 = load i64, ptr %i.fb, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72
  %i.fc = phi i64 [ %.pre228, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224_crit_edge ], [ %i.er, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i72 ], [ %i.er, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread218 ] ; 3 uses
  %i.fd = and i64 %i.fc, 1
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224
  %i.ff = lshr i64 %i.fc, 32
  %i.fg = trunc nuw i64 %i.ff to i32
  %i.fh = sitofp i32 %i.fg to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76

bb.m:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit56.thread224
  %i.fi = add nsw i64 %i.fc, -1
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.0.copyload.i.i.i.i.i75 = load double, ptr %i.fk, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76: ; preds = %bb.l, %bb.m
  %i.fl = phi double [ %i.fh, %bb.l ], [ %.0.copyload.i.i.i.i.i75, %bb.m ]
  %i.fm = load i64, ptr %.sroa.07.0.i71216220, align 8 ; 3 uses
  %i.fn = and i64 %i.fm, 1
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76
  %i.fp = lshr i64 %i.fm, 32
  %i.fq = trunc nuw i64 %i.fp to i32
  %i.fr = sitofp i32 %i.fq to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit76
  %i.fs = add nsw i64 %i.fm, -1
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.0.copyload.i.i.i.i.i77 = load double, ptr %i.fu, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78: ; preds = %bb.n, %bb.o
  %i.fv = phi double [ %i.fr, %bb.n ], [ %.0.copyload.i.i.i.i.i77, %bb.o ]
  %i.fw = fadd double %i.fl, %i.fv
  %i.fx = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %i.fw)
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit, %bb.h, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit55.thread211, %bb.k
  %.sroa.0100.1 = phi ptr [ %i.ba, %bb.h ], [ %i.bw, %bb.k ], [ %i.eg, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleINS0_6ObjectEEEbPNS0_6HandleIT_EE.exit55.thread211 ], [ null, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ null, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit64 ], [ null, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit70 ], [ null, %_ZN2v88internal6Object11ToPrimitiveIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_NS0_15ToPrimitiveHintE.exit ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.fx, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit78 ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ null, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit74 ]
  ret ptr %.sroa.0100.1
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object19OrdinaryHasInstanceEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 13
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i8, ptr %i.g monotonic, align 1
  %i.i = and i8 %i.h, 2
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.k = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 2063
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %0, ptr %5, align 8
  %i.p = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.e, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br i1 %i.t, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.u = load i64, ptr %1, align 8
  %i.v = add i64 %i.u, 23
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ad = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %i.x, ptr %.0.i.i, align 8
  %i.ah = call ptr @_ZN2v88internal6Object10InstanceOfEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef nonnull %0, ptr %2, ptr nonnull %.0.i.i)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.g:                                             ; preds = %_ZN2v88internal17IsJSBoundFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ai = load i64, ptr %2, align 8               ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36: ; preds = %bb.g
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp ugt i16 %i.ap, 299
  br i1 %i.aq, label %bb.h, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 680
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.h:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.pre.pre.i = load i64, ptr %i.as, align 8
  %i.at = add i64 %.pre.pre.i, -1
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp eq i16 %i.ay, 128
  br i1 %i.az, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.h
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bd = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bd, ptr %4, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.as, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bo = ptrtoint ptr %1 to i64
  store i64 %i.bo, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 -1, i64 16, i1 false)
  %i.bq = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = and i16 %i.bt, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bu, 32
  br i1 %.not.i21.i.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.by = load i8, ptr %i.bx, align 8, !range !16
  %i.bz = trunc nuw i8 %i.by to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bw, true
  %i.ca = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bz
  br i1 %i.ca, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.cc = load i8, ptr %i.cb, align 8, !range !16, !noundef !17
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.cf = load ptr, ptr %i.ce, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.i
  %.pn.i.i26.i.i.i = phi ptr [ %i.cf, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.i ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cg = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ch = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.as) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ch, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.as, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bj, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #28
  %i.ci = load i32, ptr %i.be, align 4
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cj = load ptr, ptr %i.bi, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.l

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cl = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not113 = icmp eq ptr %i.cl, null
  br i1 %.not113, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i110 = phi ptr [ %i.ck, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.cl, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 3 uses
  %i.cm = load i64, ptr %.sroa.0.0.i110, align 8  ; 2 uses
  %i.cn = trunc i64 %i.cm to i1
  br i1 %i.cn, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l
  %i.co = add nsw i64 %i.cm, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.cr = add i64 %i.cq, 11
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load atomic volatile i16, ptr %i.cs monotonic, align 2
  %i.cu = icmp ugt i16 %i.ct, 299
  br i1 %i.cu, label %bb.m, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.0.0.i110, ptr %3, align 8
  %i.cv = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 81, ptr nonnull %3, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cw, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.m:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cy = call i16 @_ZN2v88internal10JSReceiver19HasInPrototypeChainEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEE(ptr noundef nonnull %0, ptr nonnull %2, ptr nonnull %.sroa.0.0.i110) #28 ; 2 uses
  %i.cz = trunc i16 %i.cy to i1
  br i1 %i.cz, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.m
  %i.da = and i16 %i.cy, 256
  %.not114 = icmp eq i16 %i.da, 0
  %.sroa.04.0.v.i = select i1 %.not114, i64 680, i64 672
  %.sroa.04.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.v.i
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %bb.m, %_ZNKR2v85MaybeIbE8FromJustEv.exit, %bb.d, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread, %_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.057.3 = phi ptr [ %i.ah, %_ZN2v88internal6HandleINS0_5UnionIJNS0_15JSBoundFunctionENS0_10JSFunctionENS0_8JSObjectENS0_7JSProxyENS0_17JSWrappedFunctionEEEEEC2ENS0_6TaggedIS8_EEPNS0_7IsolateE.exit ], [ null, %bb.d ], [ %i.j, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.ar, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit36.thread ], [ null, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ], [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.04.0.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ null, %bb.m ]
  ret ptr %.sroa.057.3
}

declare noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object10InstanceOfEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ugt i16 %i.h, 299
  br i1 %i.i, label %bb.b, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 110, ptr null, i64 0) #28
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.k, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.n = tail call ptr @_ZN2v88internal6Object9GetMethodEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %2, ptr nonnull %i.m) ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %1, ptr %3, align 8
  %i.s = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %0, ptr nonnull %i.n, ptr nonnull %2, ptr nonnull %3, i64 1) #28 ; 2 uses
  %.not103 = icmp eq ptr %i.s, null
  br i1 %.not103, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8
  %i.u = call noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %i.t, ptr noundef nonnull %0)
  %.sroa.04.0.v.i = select i1 %i.u, i64 672, i64 680
  %.sroa.04.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.v.i
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.d, %bb.e
  %.sroa.056.0 = phi ptr [ %.sroa.04.0.i, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37

bb.f:                                             ; preds = %bb.c
  %i.v = load i64, ptr %2, align 8                ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 13
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i8, ptr %i.ab monotonic, align 1
  %i.ad = and i8 %i.ac, 2
  %.not104 = icmp eq i8 %i.ad, 0
  br i1 %.not104, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.g

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.f, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ae = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 105, ptr null, i64 0) #28
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.af, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37

bb.g:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ah = tail call ptr @_ZN2v88internal6Object19OrdinaryHasInstanceEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESG_(ptr noundef nonnull %0, ptr nonnull %2, ptr %1)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit37: ; preds = %bb.g, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.b, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.056.3 = phi ptr [ null, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %bb.b ], [ null, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.056.0, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.ah, %bb.g ]
  ret ptr %.sroa.056.3
}

declare i16 @_ZN2v88internal10JSReceiver19HasInPrototypeChainEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object9GetMethodEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [3 x %"class.v8::internal::DirectHandle"], align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.k, ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !16
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !16, !noundef !17
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #28
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.e

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false), !inline_history !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.050.052 = phi ptr [ %i.ar, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 3 uses
  %i.au = load i64, ptr %.sroa.050.052, align 8   ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.au, %i.ax
  br i1 %i.ay, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit: ; preds = %bb.e
  %i.az = load i64, ptr %i.av, align 8
  %i.ba = icmp eq i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.bb = trunc i64 %i.au to i1
  br i1 %i.bb, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.bc = add nsw i64 %i.au, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 13
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i8, ptr %i.bg monotonic, align 1
  %i.bi = and i8 %i.bh, 2
  %.not56 = icmp eq i8 %i.bi, 0
  br i1 %.not56, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.f, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.050.052, ptr %3, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.bk, align 8
  %i.bl = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 149, ptr nonnull %3, i64 3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bm, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %bb.e, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.024.0 = phi ptr [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %i.av, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit ], [ null, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %.sroa.050.052, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.av, %bb.e ]
  ret ptr %.sroa.024.0
}

declare ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object23CreateListFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementTypesE(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 7 uses
  %5 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.959", align 8 ; 5 uses
  %i.b = icmp eq i32 %2, 0
  %.pre134 = load i64, ptr %1, align 8            ; 8 uses
  %i.c = trunc i64 %.pre134 to i1
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.d = add nsw i64 %.pre134, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 2119
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  br i1 %i.j, label %bb.b, label %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.l = add i64 %i.k, 23
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i.i3.i.i = load i64, ptr %i.o, align 8
  %i.p = add i64 %.sroa.0.0.copyload.i.i.i3.i.i, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 31
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.u, 639
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #28
  br label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i

_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.ae = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %i.x, ptr %.0.i.i.i.i.i, align 8
  %i.ah = icmp eq i64 %i.n, %i.x
  %.pre135 = load i64, ptr %1, align 8            ; 9 uses
  br i1 %i.ah, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i
  %i.ai = add i64 %.pre135, 23
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8            ; 4 uses
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.an = icmp sgt i64 %i.ak, -1
  br i1 %i.an, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread103.i, label %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread103.i: ; preds = %bb.e
  %i.ao = lshr i64 %i.ak, 32
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  br label %bb.g

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN2v88internal6Object23CreateListFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementTypesE:bb.a

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.ac
  %i.gy = add nsw i64 %i.gs, -1
  %i.gz = inttoptr i64 %i.gy to ptr               ; 2 uses
  %i.ha = load atomic volatile i64, ptr %i.gz monotonic, align 8
  %i.hb = add i64 %i.ha, 11
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = load atomic volatile i16, ptr %i.hc monotonic, align 2
  %i.he = icmp eq i16 %i.hd, 130
  br i1 %i.he, label %bb.af, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread

bb.af:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.hf, align 8 ; 2 uses
  %i.hg = fadd double %.0.copyload.i.i.i.i.i, f0x4330000000000000
  %i.hh = bitcast double %i.hg to i64             ; 2 uses
  %.mask.i.i = and i64 %i.hh, -4294967296
  %i.hi = icmp eq i64 %.mask.i.i, 4841369599423283200
  br i1 %i.hi, label %bb.ag, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  %i.hk = uitofp i32 %i.hj to double
  %i.hl = fcmp oeq double %.0.copyload.i.i.i.i.i, %i.hk
  br label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit: ; preds = %bb.ae, %bb.ag
  %.0 = phi i32 [ %i.gx, %bb.ae ], [ %i.hj, %bb.ag ] ; 4 uses
  %.1.i = phi i1 [ true, %bb.ae ], [ %i.hl, %bb.ag ]
  %i.hm = icmp ult i32 %.0, 134217729
  %or.cond.not = select i1 %.1.i, i1 %i.hm, i1 false
  br i1 %or.cond.not, label %bb.ah, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread

_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.ad, %bb.af, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit
  %i.hn = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split

bb.ah:                                            ; preds = %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit
  %i.ho = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.0, i8 noundef zeroext 0, i8 0) #28 ; 3 uses
  %.not130.not = icmp eq i32 %.0, 0
  br i1 %.not130.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %cond1 = icmp eq i32 %2, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 64080
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.051131 = phi i32 [ 0, %.lr.ph ], [ %i.jq, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.hu = zext i32 %.051131 to i64
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %0, ptr nonnull %1, ptr null, i64 noundef %i.hu, ptr nonnull %1, i32 noundef 3)
  %i.hv = load i32, ptr %i.hp, align 4
  %.not.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread: ; preds = %bb.ai
  %i.hw = load ptr, ptr %i.hq, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aj

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit: ; preds = %bb.ai
  %i.hy = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not128 = icmp eq ptr %i.hy, null
  br i1 %.not128, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55, label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread
  %.sroa.05.0.i124 = phi ptr [ %i.hx, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread ], [ %i.hy, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ] ; 5 uses
  br i1 %cond1, label %bb.ak, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.hz = load i64, ptr %.sroa.05.0.i124, align 8 ; 2 uses
  %i.ia = trunc i64 %i.hz to i1
  br i1 %i.ia, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ak
  %i.ib = add nsw i64 %i.hz, -1
  %i.ic = inttoptr i64 %i.ib to ptr               ; 2 uses
  %i.id = load atomic volatile i64, ptr %i.ic monotonic, align 8
  %i.ie = add i64 %i.id, 11
  %i.if = inttoptr i64 %i.ie to ptr
  %i.ig = load atomic volatile i16, ptr %i.if monotonic, align 2
  %i.ih = icmp ult i16 %i.ig, 129
  br i1 %i.ih, label %bb.al, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ak, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.05.0.i124, ptr %3, align 8
  %i.ii = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 131, ptr nonnull %3, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split

bb.al:                                            ; preds = %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ij = load atomic volatile i64, ptr %i.ic monotonic, align 8
  %i.ik = add i64 %i.ij, 11
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load atomic volatile i16, ptr %i.il monotonic, align 2
  %i.in = and i16 %i.im, -96
  %.not.i57 = icmp eq i16 %i.in, 32
  br i1 %.not.i57, label %bb.am, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.am:                                            ; preds = %bb.al
  %i.io = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = load i8, ptr %i.hr, align 8, !range !16
  %i.ir = trunc nuw i8 %i.iq to i1
  %not..i.i.i = xor i1 %i.ip, true
  %i.is = select i1 %not..i.i.i, i1 true, i1 %i.ir
  br i1 %i.is, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.it = load i8, ptr %i.hs, align 8, !range !16, !noundef !17
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.an
  %i.iv = load ptr, ptr %i.ht, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.am
  %.pn.i.i = phi ptr [ %i.iv, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %0, %bb.am ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.iw = load ptr, ptr %.in.i.i, align 8
  %i.ix = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.iw, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.05.0.i124) #28
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i, %bb.al, %bb.aj
  %.sroa.066.0 = phi ptr [ %.sroa.05.0.i124, %bb.aj ], [ %i.ix, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.05.0.i124, %bb.al ]
  %i.iy = load i64, ptr %i.ho, align 8
  %i.iz = add i64 %i.iy, -1                       ; 3 uses
  %i.ja = inttoptr i64 %i.iz to ptr
  %i.jb = load i64, ptr %.sroa.066.0, align 8     ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jd = sext i32 %.051131 to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jd ; 2 uses
  store atomic volatile i64 %i.jb, ptr %i.je monotonic, align 8
  %i.jf = trunc i64 %i.jb to i1
  br i1 %i.jf, label %bb.ap, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.ap:                                            ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  %i.jg = or disjoint i64 %i.iz, 1                ; 2 uses
  %i.jh = ptrtoint ptr %i.je to i64               ; 2 uses
  %i.ji = and i64 %i.iz, -262144
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load i64, ptr %i.jj, align 262144       ; 2 uses
  %i.jl = and i64 %i.jk, 32
  %.not.i.i.i.i.i59 = icmp eq i64 %i.jl, 0
  %i.jm = and i64 %i.jk, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not37.i.i.i.i.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.jn = and i64 %i.jb, -262144
  %i.jo = inttoptr i64 %i.jn to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.jo, align 262144
  %i.jp = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not38.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.jg, i64 noundef %i.jh, i64 %i.jb) #28
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br i1 %.not.i.i.i.i.i59, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.at, !prof !28

bb.at:                                            ; preds = %bb.as
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.jg, i64 %i.jh, i64 %i.jb) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit, %bb.as, %bb.at
  %i.jq = add nuw i32 %.051131, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.jq, %.0
  br i1 %exitcond.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55, label %bb.ai, !llvm.loop !274

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sink147 = phi ptr [ %i.ii, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.hn, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread ], [ %i.gq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ]
  %i.jr = load i64, ptr %.sink147, align 8
  %i.js = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.jr, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split, %bb.ah, %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit, %bb.ab
  %.sroa.081.4 = phi ptr [ %.sroa.058.2.i, %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit ], [ %i.ho, %bb.ah ], [ null, %bb.ab ], [ null, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split ], [ %i.ho, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ null, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ]
  ret ptr %.sroa.081.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !16
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30, !inline_history !264
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a) #28, !inline_history !264
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #28, !inline_history !264
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.e

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false), !inline_history !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i16 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.au = load i64, ptr %.sroa.07.0.i16, align 8  ; 2 uses
  %i.av = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ax = lshr i64 %i.au, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %i.az = zext nneg i32 %.sroa.speculated.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.bg = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.bg, %bb.g ], [ %i.bc, %bb.f ] ; 3 uses
  %i.bh = ptrtoint ptr %.0.i.i.i to i64
  %i.bi = add i64 %i.bh, 8
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bj, ptr %i.bb, align 8
  store i64 %i.ba, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.h:                                             ; preds = %bb.e
  %i.bk = call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %.sroa.07.0.i16)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.h, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.011.0 = phi ptr [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.bk, %bb.h ]
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit, %bb.a
  %i.d = load i32, ptr %i.c, align 4
  switch i32 %i.d, label %bb.z [
    i32 9, label %bb.c
    i32 5, label %bb.d
    i32 8, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit
    i32 4, label %bb.m
    i32 3, label %bb.n
    i32 6, label %bb.p
    i32 2, label %bb.q
    i32 7, label %bb.r
    i32 1, label %bb.s
    i32 0, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i75 = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = load i64, ptr %.sroa.0.0.copyload.i75, align 8 ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.d
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp eq i16 %i.m, 303
  br i1 %i.n, label %bb.e, label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.o = add i64 %i.f, 31
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 560 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN2v88internal12DirectHandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.y = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.s) #28
  br label %_ZN2v88internal12DirectHandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  %i.z = ptrtoint ptr %.0.i.i.i to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8
  store i64 %i.q, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.d, %_ZN2v88internal12DirectHandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.0102.0 = phi ptr [ %.0.i.i.i, %_ZN2v88internal12DirectHandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.sroa.0.0.copyload.i75, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.sroa.0.0.copyload.i75, %bb.d ]
  br i1 %1, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %_ZN2v88internal14LookupIterator7GetNameEv.exit

end_hunk_3
begin_hunk_4_@_ZN2v88internal6Object13SameValueZeroENS0_6TaggedIS1_EES3_:bb.a
  %or.cond = and i1 %i.ar, %i.as
  br i1 %or.cond, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit39
  %i.at = add nsw i64 %1, -1
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp ult i16 %i.ay, 128
  br i1 %i.az, label %bb.j, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40

bb.j:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ba = or disjoint i64 %i.al, 1
  %i.bb = icmp eq i64 %1, %i.ba
  br i1 %i.bb, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = and i16 %i.bf, -96
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = and i16 %i.bl, -96
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bo = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 %1) #28
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit39, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bp = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = icmp eq i16 %i.bs, 129
  %or.cond114 = and i1 %i.bt, %i.as
  br i1 %or.cond114, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40
  %i.bu = add nsw i64 %1, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = add i64 %i.bw, 11
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load atomic volatile i16, ptr %i.by monotonic, align 2
  %i.ca = icmp eq i16 %i.bz, 129
  br i1 %i.ca, label %bb.n, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.n:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cb = tail call noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) #28
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.i, %bb.m, %bb.l, %bb.j, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43, %bb.h, %bb.g, %bb.a, %bb.n
  %.0 = phi i1 [ %i.aj, %bb.h ], [ true, %bb.a ], [ false, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit40 ], [ %i.cb, %bb.n ], [ true, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit43 ], [ false, %bb.g ], [ false, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bo, %bb.m ], [ true, %bb.j ], [ false, %bb.l ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 375
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal7Isolate14array_functionEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #28
  br label %_ZN2v88internal7Isolate14array_functionEv.exit

_ZN2v88internal7Isolate14array_functionEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 5 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 27), align 1, !range !16, !noundef !17
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %_ZN2v88internal7Isolate14array_functionEv.exit
  %i.v = load i64, ptr %1, align 8                ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 2119
  br i1 %i.ad, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ae = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.af = add i64 %i.ae, 23
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.0.0.copyload.i.i.i3.i = load i64, ptr %i.a, align 8
  %i.ai = add i64 %.sroa.0.0.copyload.i.i.i3.i, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = add i64 %i.ak, 31
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, 639
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.ar = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.as = load ptr, ptr %i.m, align 8
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.au = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #28
  br label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit

_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.au, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.av = ptrtoint ptr %.0.i.i.i.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.ax, ptr %i.k, align 8
  store i64 %i.aq, ptr %.0.i.i.i.i, align 8
  %i.ay = icmp eq i64 %i.ah, %i.aq
  br i1 %i.ay, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 9120
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, 23
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, -4294967295
  %i.bf = icmp eq i64 %i.be, 4294967296
  br i1 %i.bf, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.bh = load i64, ptr %1, align 8               ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bk = add nsw i64 %i.bh, -1
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = icmp eq i16 %i.bp, 2119
  br i1 %i.bq, label %.critedge237, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bs = add i64 %i.br, 11
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i16, ptr %i.bt monotonic, align 2
  %i.bv = icmp eq i16 %i.bu, 302
  br i1 %i.bv, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.h
  %i.bw = tail call i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr nonnull %1) ; 2 uses
  %i.bx = trunc i16 %i.bw to i1
  br i1 %i.bx, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit
  %.sroa.5.0.extract.trunc = icmp samesign ugt i16 %i.bw, 255
  br i1 %.sroa.5.0.extract.trunc, label %.critedge237, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

.critedge237:                                     ; preds = %bb.g, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8808 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.pre.pre.i = load i64, ptr %i.by, align 8
  %i.bz = add i64 %.pre.pre.i, -1
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp eq i16 %i.ce, 128
  br i1 %i.cf, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %.critedge237
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = trunc i32 %i.ch to i1
  br i1 %i.ci, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %.critedge237
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.cj = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.cj, ptr %3, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.by, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cu = ptrtoint ptr %1 to i64
  store i64 %i.cu, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 -1, i64 16, i1 false)
  %i.cw = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cx = add i64 %i.cw, 11
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load atomic volatile i16, ptr %i.cy monotonic, align 2
  %i.da = and i16 %i.cz, -96
  %.not.i21.i.i.i = icmp eq i16 %i.da, 32
  br i1 %.not.i21.i.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.de = load i8, ptr %i.dd, align 8, !range !16
  %i.df = trunc nuw i8 %i.de to i1
  %not..i.i.i23.i.i.i = xor i1 %i.dc, true
  %i.dg = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.df
  br i1 %i.dg, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.di = load i8, ptr %i.dh, align 8, !range !16, !noundef !17
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.j
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.i
  %.pn.i.i26.i.i.i = phi ptr [ %i.dl, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.i ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.dm = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.dn = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.by) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.dn, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.by, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.cp, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #28
  %i.do = load i32, ptr %i.ck, align 4
  %.not.i = icmp eq i32 %i.do, 0
  br i1 %.not.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.dp = load ptr, ptr %i.co, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.l

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.dr = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.not = icmp eq ptr %i.dr, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i220 = phi ptr [ %i.dq, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.dr, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 7 uses
  %i.ds = load i64, ptr %.sroa.0.0.i220, align 8  ; 2 uses
  %i.dt = trunc i64 %i.ds to i1
  br i1 %i.dt, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread

_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51: ; preds = %bb.l
  %i.du = add nsw i64 %i.ds, -1
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i64, ptr %i.dv monotonic, align 8
  %i.dx = add i64 %i.dw, 13
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i8, ptr %i.dy monotonic, align 1
  %i.ea = and i8 %i.dz, 64
  %.not232 = icmp eq i8 %i.ea, 0
  br i1 %.not232, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51
  %i.eb = call ptr @_ZN2v88internal10JSReceiver16GetFunctionRealmENS0_12DirectHandleIS1_EE(ptr nonnull %.sroa.0.0.i220) #28 ; 3 uses
  %.not233 = icmp eq ptr %i.eb, null
  br i1 %.not233, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = load i64, ptr %i.eb, align 8
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %i.a, align 8
  %i.ed = add i64 %.sroa.0.0.copyload.i.i63, -1
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i64, ptr %i.ee monotonic, align 8
  %i.eg = add i64 %i.ef, 31
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ej = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ek = load ptr, ptr %i.m, align 8
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.o, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.em = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #28
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.em, %bb.o ], [ %i.ej, %bb.n ] ; 2 uses
  %i.en = ptrtoint ptr %.0.i.i to i64
  %i.eo = add i64 %i.en, 8
  %i.ep = inttoptr i64 %i.eo to ptr
  store ptr %i.ep, ptr %i.k, align 8
  store i64 %i.ei, ptr %.0.i.i, align 8
  %.not234 = icmp eq i64 %i.ec, %i.ei
  br i1 %.not234, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  %i.eq = load i64, ptr %.sroa.0.0.i220, align 8
  %i.er = load i64, ptr %i.eb, align 8
  %i.es = add i64 %i.er, 375
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load atomic volatile i64, ptr %i.et monotonic, align 8
  %i.ev = icmp eq i64 %i.eq, %i.eu
  %spec.select = select i1 %i.ev, ptr %i.bg, ptr %.sroa.0.0.i220
  br label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread

_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread: ; preds = %bb.p, %_ZN2v88internal7Isolate14native_contextEv.exit, %bb.l, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51
  %.sroa.0100.1 = phi ptr [ %.sroa.0.0.i220, %bb.l ], [ %.sroa.0.0.i220, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51 ], [ %.sroa.0.0.i220, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %spec.select, %bb.p ] ; 5 uses
  %i.ew = load i64, ptr %.sroa.0100.1, align 8    ; 2 uses
  %i.ex = trunc i64 %i.ew to i1
  br i1 %i.ex, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread
  %i.ey = add nsw i64 %i.ew, -1
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = load atomic volatile i64, ptr %i.ez monotonic, align 8
  %i.fb = add i64 %i.fa, 11
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load atomic volatile i16, ptr %i.fc monotonic, align 2
  %i.fe = icmp ugt i16 %i.fd, 299
  br i1 %i.fe, label %bb.q, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.q:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8872 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.pre.pre.i66 = load i64, ptr %i.ff, align 8
  %i.fg = add i64 %.pre.pre.i66, -1
  %i.fh = inttoptr i64 %i.fg to ptr               ; 3 uses
  %i.fi = load atomic volatile i64, ptr %i.fh monotonic, align 8
  %i.fj = add i64 %i.fi, 11
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load atomic volatile i16, ptr %i.fk monotonic, align 2
  %i.fm = icmp eq i16 %i.fl, 128
  br i1 %i.fm, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i77, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i67

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i77:  ; preds = %bb.q
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = trunc i32 %i.fo to i1
  br i1 %i.fp, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i68, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i67

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i67: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i77, %bb.q
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i68

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i68: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i67, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i77
  %i.fq = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i67 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i77 ]
  store i32 %i.fq, ptr %2, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.ff, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.sroa.0100.1, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gb = ptrtoint ptr %.sroa.0100.1 to i64
  store i64 %i.gb, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 -1, i64 16, i1 false)
  %i.gd = load atomic volatile i64, ptr %i.fh monotonic, align 8
  %i.ge = add i64 %i.gd, 11
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load atomic volatile i16, ptr %i.gf monotonic, align 2
  %i.gh = and i16 %i.gg, -96
  %.not.i21.i.i.i69 = icmp eq i16 %i.gh, 32
  br i1 %.not.i21.i.i.i69, label %bb.r, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.r:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i68
  %i.gi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.gl = load i8, ptr %i.gk, align 8, !range !16
  %i.gm = trunc nuw i8 %i.gl to i1
  %not..i.i.i23.i.i.i72 = xor i1 %i.gj, true
  %i.gn = select i1 %not..i.i.i23.i.i.i72, i1 true, i1 %i.gm
  br i1 %i.gn, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i74, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.gp = load i8, ptr %i.go, align 8, !range !16, !noundef !17
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i73, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZSt27__throw_bad_optional_accessv() #30, !inline_history !264
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i73: ; preds = %bb.s
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.gs = load ptr, ptr %i.gr, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i74

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i74: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i73, %bb.r
  %.pn.i.i26.i.i.i75 = phi ptr [ %i.gs, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i73 ], [ %0, %bb.r ]
  %.in.i.i27.i.i.i76 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i75, i64 58464
  %i.gt = load ptr, ptr %.in.i.i27.i.i.i76, align 8
  %i.gu = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.ff) #28, !inline_history !264
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i74, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i68
  %.sroa.05.0.i22.i.i.i70 = phi ptr [ %i.gu, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i74 ], [ %i.ff, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i68 ]
  store ptr %.sroa.05.0.i22.i.i.i70, ptr %i.fw, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #28, !inline_history !264
  %i.gv = load i32, ptr %i.fr, align 4
  %.not.i71 = icmp eq i32 %i.gv, 0
  br i1 %.not.i71, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.gw = load ptr, ptr %i.fv, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.u

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.gy = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false), !inline_history !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not235 = icmp eq ptr %i.gy, null
  br i1 %.not235, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i228 = phi ptr [ %i.gx, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.gy, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.gz = load i64, ptr %.sroa.07.0.i228, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = icmp eq i64 %i.gz, %i.hb
  %spec.select231 = select i1 %i.hc, ptr %i.bg, ptr %.sroa.07.0.i228
  br label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.h, %.critedge, %bb.u, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.sroa.0100.2 = phi ptr [ %.sroa.0100.1, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit51.thread ], [ %spec.select231, %bb.u ], [ %.sroa.0100.1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bg, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ %i.bg, %.critedge ], [ %i.bg, %bb.h ] ; 2 uses
  %i.hd = load i64, ptr %.sroa.0100.2, align 8    ; 3 uses
  %i.he = load i64, ptr %i.bg, align 8
  %i.hf = icmp eq i64 %i.hd, %i.he
  br i1 %i.hf, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.hg = trunc i64 %i.hd to i1
  br i1 %i.hg, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.v
  %i.hh = add nsw i64 %i.hd, -1
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = load atomic volatile i64, ptr %i.hi monotonic, align 8
  %i.hk = add i64 %i.hj, 13
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = load atomic volatile i8, ptr %i.hl monotonic, align 1
  %i.hn = and i8 %i.hm, 64
  %.not236 = icmp eq i8 %i.hn, 0
  br i1 %.not236, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.v, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ho = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 382, ptr null, i64 0) #28
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.hp, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %bb.m, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit, %bb.f, %_ZN2v88internal7Isolate14array_functionEv.exit
  %.sroa.0112.2 = phi ptr [ %.0.i.i.i, %_ZN2v88internal7Isolate14array_functionEv.exit ], [ %.0.i.i.i, %bb.f ], [ null, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit ], [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %.0.i.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %bb.m ], [ null, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ], [ %.sroa.0100.2, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.0112.2
}

declare ptr @_ZN2v88internal10JSReceiver16GetFunctionRealmENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object18SpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_10JSFunctionEEE(ptr noundef %0, ptr %1, ptr nofree readnone captures(ret: address, provenance) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8808 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !16
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30, !inline_history !264
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a) #28, !inline_history !264
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #28, !inline_history !264
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.e

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false), !inline_history !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i111 = phi ptr [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.at, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 3 uses
  %i.au = load i64, ptr %.sroa.07.0.i111, align 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc i64 %i.au to i1
  br i1 %i.ay, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.az = add nsw i64 %i.au, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = icmp ugt i16 %i.be, 299
  br i1 %i.bf, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split

bb.g:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8872 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.pre.pre.i34 = load i64, ptr %i.bg, align 8
  %i.bh = add i64 %.pre.pre.i34, -1
  %i.bi = inttoptr i64 %i.bh to ptr               ; 3 uses
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.bk = add i64 %i.bj, 11
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = icmp eq i16 %i.bm, 128
  br i1 %i.bn, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47:  ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47, %bb.g
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47
  %i.br = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47 ]
  store i32 %i.br, ptr %3, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.bg, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sroa.07.0.i111, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cc = ptrtoint ptr %.sroa.07.0.i111 to i64
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 -1, i64 16, i1 false)
  %i.ce = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.cf = add i64 %i.ce, 11
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i16, ptr %i.cg monotonic, align 2
  %i.ci = and i16 %i.ch, -96
  %.not.i21.i.i.i37 = icmp eq i16 %i.ci, 32
  br i1 %.not.i21.i.i.i37, label %bb.h, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38

bb.h:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.cm = load i8, ptr %i.cl, align 8, !range !16
  %i.cn = trunc nuw i8 %i.cm to i1
  %not..i.i.i23.i.i.i42 = xor i1 %i.ck, true
  %i.co = select i1 %not..i.i.i23.i.i.i42, i1 true, i1 %i.cn
  br i1 %i.co, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.cq = load i8, ptr %i.cp, align 8, !range !16, !noundef !17
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZSt27__throw_bad_optional_accessv() #30, !inline_history !264
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43: ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43, %bb.h
  %.pn.i.i26.i.i.i45 = phi ptr [ %i.ct, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43 ], [ %0, %bb.h ]
  %.in.i.i27.i.i.i46 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i45, i64 58464
  %i.cu = load ptr, ptr %.in.i.i27.i.i.i46, align 8
  %i.cv = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.bg) #28, !inline_history !264
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36
  %.sroa.05.0.i22.i.i.i39 = phi ptr [ %i.cv, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44 ], [ %i.bg, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36 ]
  store ptr %.sroa.05.0.i22.i.i.i39, ptr %i.bx, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #28, !inline_history !264
  %i.cw = load i32, ptr %i.bs, align 4
  %.not.i40 = icmp eq i32 %i.cw, 0
  br i1 %.not.i40, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38
  %i.cx = load ptr, ptr %i.bw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.k

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38
  %i.cz = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false), !inline_history !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.not118 = icmp eq ptr %i.cz, null
  br i1 %.not118, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48.thread
  %.sroa.07.0.i41115 = phi ptr [ %i.cy, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48.thread ], [ %i.cz, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48 ] ; 2 uses
  %i.da = load i64, ptr %.sroa.07.0.i41115, align 8 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit: ; preds = %bb.k
  %i.de = load i64, ptr %i.av, align 8
  %i.df = icmp eq i64 %i.da, %i.de
  br i1 %i.df, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.dg = trunc i64 %i.da to i1
  br i1 %i.dg, label %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split

_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l
  %i.dh = add nsw i64 %i.da, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i64, ptr %i.di monotonic, align 8
  %i.dk = add i64 %i.dj, 13
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i8, ptr %i.dl monotonic, align 1
  %i.dn = and i8 %i.dm, 64
  %.not119 = icmp eq i8 %i.dn, 0
  br i1 %.not119, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split: ; preds = %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit, %bb.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, %bb.f
  %.sink = phi i32 [ 55, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit ], [ 55, %bb.f ], [ 382, %bb.l ], [ 382, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit ]
  %i.do = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.sink, ptr null, i64 0) #28
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.dp, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split, %bb.k, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit, %bb.e, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %.sroa.063.1 = phi ptr [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %2, %bb.e ], [ %.sroa.07.0.i41115, %_ZN2v88internal13IsConstructorENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48 ], [ %2, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit ], [ %2, %bb.k ], [ null, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.sink.split ]
  ret ptr %.sroa.063.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6Object29IterationHasObservableEffectsENS0_6TaggedIS1_EE(i64 %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.b = add nsw i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  br i1 %i.h, label %bb.b, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 23
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.n = add nsw i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = icmp ugt i16 %i.s, 302
  br i1 %i.t, label %bb.c, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.u = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.v = add i64 %i.u, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 31
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10624
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.af = load i64, ptr %i.ae, align 8
  %.not = icmp eq i64 %i.aa, %i.af
  br i1 %.not, label %bb.d, label %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit: ; preds = %bb.c
  %i.ag = add i64 %i.aa, 639
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %.not59 = icmp eq i64 %i.ai, %i.l
  br i1 %.not59, label %bb.e, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %_ZNOSt8optionalIN2v88internal6TaggedINS1_13NativeContextEEEE5valueEv.exit
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9168
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, 23
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -4294967295
  %i.ar = icmp eq i64 %i.aq, 4294967296
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.as = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.at = add i64 %i.as, 14
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i8, ptr %i.au, align 1             ; 3 uses
  %i.aw = and i8 %i.av, 4                         ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  %i.ay = icmp ult i8 %i.av, 20
  %i.az = and i1 %i.ay, %i.ax
  br i1 %i.az, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp ne i8 %i.aw, 0
  %i.bb = icmp ult i8 %i.av, 24
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %bb.h, label %bb.i
end_hunk_4
begin_hunk_5_@_ZNK2v88internal10HeapObject14NeedsRehashingENS0_12InstanceTypeE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  switch i16 %i.f, label %bb.f [
    i16 2112, label %bb.g
    i16 2113, label %bb.g
    i16 212, label %bb.b
    i16 213, label %bb.b
    i16 247, label %bb.e
    i16 209, label %bb.g
    i16 210, label %bb.g
    i16 215, label %bb.g
    i16 208, label %bb.g
    i16 211, label %bb.g
    i16 217, label %bb.g
    i16 290, label %bb.g
    i16 253, label %bb.g
    i16 254, label %bb.g
    i16 258, label %bb.g
    i16 245, label %bb.c
    i16 246, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.o = add i64 %.sroa.0.0.copyload.i.i, 15
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.f ], [ %i.r, %bb.e ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15DescriptorArray19GeneralizeAllFieldsEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2 ; 2 uses
  %i.e = sext i16 %i.d to i64
  %.not28 = icmp eq i16 %i.d, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit
  %.sroa.023.029 = phi i64 [ %i.ar, %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8
  %i.f = mul i64 %.sroa.023.029, 103079215104     ; 2 uses
  %sext.i = add i64 %i.f, 137438953472
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = or disjoint i64 %i.g, 7                  ; 2 uses
  %i.i = add i64 %.sroa.01.0.copyload.i, %i.h
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = and i32 %i.m, -449
  %i.o = or disjoint i32 %i.n, 256                ; 3 uses
  %i.p = and i32 %i.m, 32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.r = and i32 %i.o, -227
  %spec.select = select i1 %1, i32 %i.r, i32 %i.o ; 3 uses
  %i.s = tail call i64 @_ZN2v88internal9FieldType3AnyEv() #28 ; 5 uses
  %.sroa.05.0.copyload.i = load i64, ptr %0, align 8
  %i.t = ashr exact i64 %i.f, 32
  %i.u = add nsw i64 %i.t, 47                     ; 2 uses
  %i.v = add i64 %.sroa.05.0.copyload.i, %i.u
  %i.w = inttoptr i64 %i.v to ptr
  store atomic volatile i64 %i.s, ptr %i.w monotonic, align 8
  %.sroa.03.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.x = add i64 %.sroa.03.0.copyload.i, %i.u     ; 2 uses
  %i.y = trunc i64 %i.s to i1
  %i.z = and i64 %i.s, 4294967295
  %i.aa = icmp ne i64 %i.z, 3
  %i.ab = and i1 %i.aa, %i.y
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = and i64 %i.s, -3                        ; 2 uses
  %i.ad = and i64 %.sroa.03.0.copyload.i, -262144
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 262144       ; 2 uses
  %i.ag = and i64 %i.af, 32
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %i.af, 25
  %.not37.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not37.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = and i64 %i.s, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.aj, align 262144
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not38.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.03.0.copyload.i, i64 noundef %i.x, i64 %i.ac) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.03.0.copyload.i, i64 %i.x, i64 %i.ac) #28
  br label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit: ; preds = %bb.g, %bb.f, %bb.b, %.lr.ph
  %.sroa.018.1 = phi i32 [ %i.o, %.lr.ph ], [ %spec.select, %bb.b ], [ %spec.select, %bb.f ], [ %spec.select, %bb.g ]
  %.sroa.01.0.copyload.i16 = load i64, ptr %0, align 8
  %i.al = shl i32 %.sroa.018.1, 1
  %i.am = ashr exact i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32
  %i.ap = add i64 %.sroa.01.0.copyload.i16, %i.h
  %i.aq = inttoptr i64 %i.ap to ptr
  store atomic volatile i64 %i.ao, ptr %i.aq monotonic, align 8
  %i.ar = add i64 %.sroa.023.029, 1               ; 2 uses
  %.not = icmp eq i64 %i.ar, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare i64 @_ZN2v88internal9FieldType3AnyEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, ptr %3, i32 noundef %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %.pre.pre = load i64, ptr %2, align 8
  %i.b = add i64 %.pre.pre, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.l = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.l, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !16
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #28
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.a, align 1
  %i.ar = call i16 @_ZN2v88internal6Object19SetPropertyInternalEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginEPb(ptr noundef nonnull %6, ptr %3, i64 %5, i32 noundef %4, ptr noundef nonnull %i.a)
  %i.as = load i8, ptr %i.a, align 1, !range !16, !noundef !17
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.at, label %_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.au = call noundef zeroext i1 @_ZN2v88internal6Object36CheckContextualStoreToJSGlobalObjectEPNS0_14LookupIteratorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %6, i64 %5)
  br i1 %i.au, label %bb.g, label %_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.av = call i16 @_ZN2v88internal6Object15AddDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginENS0_22EnforceDefineSemanticsE(ptr noundef nonnull %6, ptr %3, i32 noundef 0, i64 %5, i32 noundef %4, i32 noundef 0)
  br label %_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit

_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit: ; preds = %bb.e, %bb.g
  %.sroa.014.0.i = phi i16 [ %i.av, %bb.g ], [ %i.ar, %bb.e ]
  %i.aw = trunc i16 %.sroa.014.0.i to i1
  %spec.select = select i1 %i.aw, ptr %3, ptr null
  br label %_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit.thread

_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit.thread: ; preds = %_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit, %bb.f
  %.sroa.011.0 = phi ptr [ null, %bb.f ], [ %spec.select, %_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.a, align 1
  %i.d = call i16 @_ZN2v88internal6Object19SetPropertyInternalEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginEPb(ptr noundef nonnull %0, ptr %1, i64 %3, i32 noundef %2, ptr noundef nonnull %i.a)
  %i.e = load i8, ptr %i.a, align 1, !range !16, !noundef !17
  %i.f = trunc nuw i8 %i.e to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal6Object36CheckContextualStoreToJSGlobalObjectEPNS0_14LookupIteratorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, i64 %3)
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i16 @_ZN2v88internal6Object15AddDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginENS0_22EnforceDefineSemanticsE(ptr noundef nonnull %0, ptr %1, i32 noundef 0, i64 %3, i32 noundef %2, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.014.0 = phi i16 [ %i.h, %bb.d ], [ %i.d, %bb.b ], [ 0, %bb.c ]
  ret i16 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal6Object19SetPropertyInternalEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginEPb(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.959", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.959", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal14LookupIterator15UpdateProtectorENS0_17MaybeDirectHandleINS0_6ObjectEEES4_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.02.0.copyload.i = load ptr, ptr %i.e, align 8 ; 2 uses
  %i.f = load i64, ptr %.sroa.02.0.copyload.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8808
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8896
  %i.j = load i64, ptr %i.i, align 8
  %i.k = sub i64 %i.f, %i.h
  %i.l = sub i64 %i.j, %i.h
  %.not.i.i = icmp ugt i64 %i.k, %i.l
  br i1 %.not.i.i, label %_ZN2v88internal14LookupIterator15UpdateProtectorENS0_17MaybeDirectHandleINS0_6ObjectEEES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.03.0.copyload.i = load ptr, ptr %i.m, align 8
  tail call void @_ZN2v88internal14LookupIterator23InternalUpdateProtectorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS0_17MaybeDirectHandleINS0_6ObjectEEESL_(ptr noundef nonnull %i.d, ptr %.sroa.03.0.copyload.i, ptr nonnull %.sroa.02.0.copyload.i, ptr null, ptr null) #28
  br label %_ZN2v88internal14LookupIterator15UpdateProtectorENS0_17MaybeDirectHandleINS0_6ObjectEEES4_.exit

_ZN2v88internal14LookupIterator15UpdateProtectorENS0_17MaybeDirectHandleINS0_6ObjectEEES4_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.aw, %_ZN2v88internal14LookupIterator15UpdateProtectorENS0_17MaybeDirectHandleINS0_6ObjectEEES4_.exit
  %i.p = load i32, ptr %i.o, align 4
  switch i32 %i.p, label %bb.av [
    i32 3, label %bb.e
    i32 5, label %bb.g
    i32 8, label %bb.aw
    i32 4, label %bb.k
    i32 6, label %bb.t
    i32 2, label %bb.ad
    i32 7, label %.loopexit
    i32 0, label %.loopexit227
    i32 9, label %.loopexit227
    i32 1, label %bb.aq
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef zeroext i1 @_ZNK2v88internal14LookupIterator9HasAccessEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #28
  br i1 %i.q, label %bb.aw, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i16 @_ZN2v88internal8JSObject32SetPropertyWithFailedAccessCheckEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr %1, i64 %2) #28 ; 2 uses
  %.sroa.18.0.extract.shift = and i16 %i.r, -256
  br label %.critedge85

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i92 = load ptr, ptr %i.s, align 8 ; 3 uses
  %i.t = load i64, ptr %.sroa.0.0.copyload.i92, align 8 ; 3 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.g
  %i.v = add nsw i64 %i.t, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 303
  br i1 %i.ab, label %bb.h, label %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.h:                                             ; preds = %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ac = add i64 %i.t, 31
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal7JSProxy17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE:bb.a
  %i.cn = call i16 @_ZN2v88internal10JSReceiver24GetOwnPropertyDescriptorEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %2, ptr noundef nonnull %14) #28 ; 2 uses
  %i.co = trunc i16 %i.cn to i1
  br i1 %i.co, label %bb.s, label %.critedge117

bb.s:                                             ; preds = %bb.r
  %i.cp = call i16 @_ZN2v88internal10JSReceiver12IsExtensibleEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i) #28 ; 2 uses
  %i.cq = trunc i16 %i.cp to i1
  br i1 %i.cq, label %_ZNKR2v85MaybeIbE8FromJustEv.exit122, label %.critedge117

_ZNKR2v85MaybeIbE8FromJustEv.exit122:             ; preds = %bb.s
  %i.cr = and i16 %i.cp, 256
  %i.cs = icmp ne i16 %i.cr, 0                    ; 2 uses
  %i.ct = load i8, ptr %3, align 8
  %i.cu = and i8 %i.ct, 12
  %i.cv = icmp ne i8 %i.cu, 8                     ; 2 uses
  %i.cw = and i16 %i.cn, 256
  %.not274 = icmp eq i16 %i.cw, 0
  br i1 %.not274, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit122
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr %.sroa.0157.0, ptr %9, align 8
  %i.cx = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 155, ptr nonnull %9, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge117.sink.split

bb.v:                                             ; preds = %bb.t
  br i1 %i.cv, label %.critedge117, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %.sroa.0157.0, ptr %8, align 8
  %i.cy = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 153, ptr nonnull %8, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge117.sink.split

bb.x:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit122
  %i.cz = call i16 @_ZN2v88internal10JSReceiver30IsCompatiblePropertyDescriptorEPNS0_7IsolateEbPNS0_18PropertyDescriptorES5_NS0_12DirectHandleINS0_4NameEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, i1 noundef zeroext %i.cs, ptr noundef nonnull %3, ptr noundef nonnull %14, ptr %.sroa.0157.0, i64 1) #28 ; 2 uses
  %i.da = trunc i16 %i.cz to i1
  br i1 %i.da, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %.critedge117

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.x
  %i.db = and i16 %i.cz, 256
  %.not275 = icmp eq i16 %i.db, 0
  br i1 %.not275, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %.sroa.0157.0, ptr %7, align 8
  %i.dc = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 156, ptr nonnull %7, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge117.sink.split

bb.z:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.pre.pre = load i8, ptr %14, align 8           ; 3 uses
  %i.dd = and i8 %.pre.pre, 4
  %.not276 = icmp eq i8 %i.dd, 0
  %or.cond282 = select i1 %i.cv, i1 true, i1 %.not276
  br i1 %or.cond282, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %.sroa.0157.0, ptr %6, align 8
  %i.de = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 153, ptr nonnull %6, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge117.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.cm, align 8
  %.not.i = icmp ne ptr %i.df, null
  %i.dg = and i8 %.pre.pre, 32
  %.not277 = icmp ne i8 %i.dg, 0
  %or.cond283.not286 = select i1 %.not.i, i1 true, i1 %.not277
  %i.dh = and i8 %.pre.pre, 20
  %or.cond = icmp eq i8 %i.dh, 16
  %or.cond284 = select i1 %or.cond283.not286, i1 %or.cond, i1 false
  br i1 %or.cond284, label %bb.ac, label %.critedge117

bb.ac:                                            ; preds = %bb.ab
  %i.di = load i8, ptr %3, align 8
  %i.dj = and i8 %i.di, 48
  %or.cond270.not = icmp eq i8 %i.dj, 32
  br i1 %or.cond270.not, label %bb.ad, label %.critedge117

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %.sroa.0157.0, ptr %5, align 8
  %i.dk = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 154, ptr nonnull %5, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge117.sink.split

.critedge117.sink.split:                          ; preds = %bb.aa, %bb.y, %bb.ad, %bb.u, %bb.w
  %.sink285 = phi ptr [ %i.cy, %bb.w ], [ %i.cx, %bb.u ], [ %i.dk, %bb.ad ], [ %i.dc, %bb.y ], [ %i.de, %bb.aa ]
  %i.dl = load i64, ptr %.sink285, align 8
  %i.dm = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.dl, ptr noundef null) #28 ; 0 uses
  br label %.critedge117

.critedge117:                                     ; preds = %.critedge117.sink.split, %bb.ab, %bb.s, %bb.ac, %bb.v, %bb.x, %bb.r
  %.sroa.0184.3 = phi i8 [ 0, %bb.r ], [ 0, %bb.x ], [ 1, %bb.v ], [ 0, %bb.s ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 0, %.critedge117.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.p, %bb.n, %.critedge117, %bb.q
  %.sroa.0184.4 = phi i8 [ %.sroa.0184.3, %.critedge117 ], [ 0, %bb.n ], [ 0, %bb.q ], [ 1, %bb.p ]
  %.sroa.18.4 = phi i8 [ %.sroa.0184.3, %.critedge117 ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit123

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit123: ; preds = %bb.h, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.l, %bb.c, %bb.f
  %.sroa.0184.7 = phi i8 [ %.sroa.0184.0.extract.trunc, %bb.f ], [ 0, %bb.c ], [ 0, %bb.h ], [ %.sroa.0184.0.extract.trunc185, %bb.l ], [ %.sroa.0184.4, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ 0, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.sroa.18.7 = phi i8 [ %.sroa.18.0.extract.trunc, %bb.f ], [ 0, %bb.c ], [ 0, %bb.h ], [ %.sroa.18.0.extract.trunc189, %bb.l ], [ %.sroa.18.4, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ 0, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.sroa.18.0.insert.ext = zext i8 %.sroa.18.7 to i16
  %.sroa.18.0.insert.shift = shl nuw i16 %.sroa.18.0.insert.ext, 8
  %.sroa.0184.0.insert.ext = zext i8 %.sroa.0184.7 to i16
  %.sroa.0184.0.insert.insert = or disjoint i16 %.sroa.18.0.insert.shift, %.sroa.0184.0.insert.ext
  ret i16 %.sroa.0184.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal7JSProxy16SetPrivateSymbolEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6SymbolEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, ptr nofree noundef readonly captures(none) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.743", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  %.pre = load i8, ptr %3, align 8                ; 5 uses
  %i.c = and i8 %.pre, 32
  %.not78 = icmp eq i8 %i.c, 0
  %or.cond = select i1 %.not.i, i1 %.not78, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread

_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread: ; preds = %bb.a
  %i.d = and i8 %.pre, 3
  %.not.i33 = icmp eq i8 %i.d, 2
  %i.e = select i1 %.not.i33, i32 2, i32 0
  %i.f = and i8 %.pre, 8
  %.not1.i = icmp eq i8 %i.f, 0
  %i.g = and i8 %.pre, 4
  %i.h = xor i8 %i.g, 4
  %narrow.i = select i1 %.not1.i, i8 0, i8 %i.h
  %i.i = zext nneg i8 %narrow.i to i32
  %i.j = and i8 %.pre, 48
  %narrow5.i = icmp eq i8 %i.j, 32
  %i.k = zext i1 %narrow5.i to i32
  %i.l = or disjoint i32 %i.e, %i.k
  %i.m = or disjoint i32 %i.l, %i.i
  %.not = icmp eq i32 %i.m, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread
  %i.n = tail call noundef i32 @_ZN2v88internal14GetShouldThrowEPNS0_7IsolateENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, i64 %4)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 177, ptr null, i64 0) #28
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.q, ptr noundef null) #28 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %_ZN2v88internal18PropertyDescriptor16IsDataDescriptorEPS1_.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 648
  %spec.select = select i1 %.not.i, ptr %i.s, ptr %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.pre81.pre = load i64, ptr %2, align 8
  %i.t = add i64 %.pre81.pre, -1
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 128
  br i1 %i.z, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.d
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.ad = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.ad, ptr %5, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ao = ptrtoint ptr %1 to i64
  store i64 %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 -1, i64 16, i1 false)
  %i.aq = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = and i16 %i.at, -96
  %.not.i21.i.i = icmp eq i16 %i.au, 32
  br i1 %.not.i21.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ay = load i8, ptr %i.ax, align 8, !range !16
  %i.az = trunc nuw i8 %i.ay to i1
  %not..i.i.i23.i.i = xor i1 %i.aw, true
  %i.ba = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.az
  br i1 %i.ba, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bc = load i8, ptr %i.bb, align 8, !range !16, !noundef !17
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bf = load ptr, ptr %i.be, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.e
  %.pn.i.i26.i.i = phi ptr [ %i.bf, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.e ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.bg = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.bh = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #28
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.bh, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.aj, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #28
  %i.bi = load i32, ptr %i.ae, align 4
  %.not80 = icmp eq i32 %i.bi, 0
  br i1 %.not80, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  call void @_ZN2v88internal14LookupIterator14WriteDataValueENS0_12DirectHandleINS0_6ObjectEEEb(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr nonnull %spec.select, i1 noundef zeroext false) #28
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.bj = load i64, ptr %1, align 8
  %i.bk = add i64 %i.bj, 7
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10624
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1336
  %i.bt = load i64, ptr %i.bs, align 8
  br label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.05.0.i.i = phi i64 [ %i.bt, %bb.j ], [ %i.bm, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq ptr %i.bv, %i.bx
  br i1 %i.by, label %bb.k, label %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.k:                                             ; preds = %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit
  %i.bz = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #28
  br label %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit, %bb.k
  %.0.i.i = phi ptr [ %i.bz, %bb.k ], [ %i.bv, %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit ] ; 5 uses
  %i.ca = ptrtoint ptr %.0.i.i to i64
  %i.cb = add i64 %i.ca, 8
  %i.cc = inttoptr i64 %i.cb to ptr
  store ptr %i.cc, ptr %i.bu, align 8
  store i64 %.sroa.05.0.i.i, ptr %.0.i.i, align 8
  %i.cd = call ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3AddINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_NS6_INS0_4NameEEENS6_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %2, ptr nonnull %spec.select, i32 8, ptr noundef null) ; 2 uses
  %i.ce = icmp eq ptr %.0.i.i, %i.cd
  br i1 %i.ce, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.pre82 = load i64, ptr %i.cd, align 8          ; 2 uses
  %i.cf = load i64, ptr %.0.i.i, align 8
  %i.cg = icmp eq i64 %i.cf, %.pre82
  br i1 %i.cg, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread76

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread76: ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ch = load i64, ptr %1, align 8
  store i64 %i.ch, ptr %6, align 8
  call void @_ZN2v88internal10JSReceiver13SetPropertiesENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.pre82) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread76, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, %bb.c
  %.sroa.030.1 = phi i16 [ 257, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i16 %.sroa.030.1
}

declare ptr @_ZN2v88internal18PropertyDescriptor8ToObjectEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare i16 @_ZN2v88internal10JSReceiver30IsCompatiblePropertyDescriptorEPNS0_7IsolateEbPNS0_18PropertyDescriptorES5_NS0_12DirectHandleINS0_4NameEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal10JSReceiver13SetPropertiesENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal18PropertyDescriptor20ToPropertyDescriptorEPNS0_7IsolateENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPS1_(ptr noundef, ptr, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal18PropertyDescriptor26CompletePropertyDescriptorEPNS0_7IsolateEPS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal7JSProxy17PreventExtensionsENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr nofree readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 5 uses
  %5 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.b, ptr %4, align 8
  %i.c = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #28
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZN2v88internal15StackLimitCheck40HandleStackOverflowAndTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.g, label %.critedge, label %bb.c, !prof !5

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit48

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 7016 ; 3 uses
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %i.j = add i64 %i.i, 23
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp ult i16 %i.r, 300
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.h, ptr %3, align 8
  %i.t = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef 178, ptr nonnull %3, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.u = load i64, ptr %i.t, align 8
  %i.v = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %i.b, i64 %i.u, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit48

bb.e:                                             ; preds = %bb.c
  %i.w = add i64 %i.i, 15
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 568 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #28
end_hunk_6
begin_hunk_7_@_ZN2v88internal9JSPromise6RejectENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEEb:bb.a
bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.387) #29
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = add i64 %i.z, 23
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #28
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.an, %bb.j ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ao = ptrtoint ptr %.0.i to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.ai, align 8
  store i64 %i.ah, ptr %.0.i, align 8
  %i.ar = load i64, ptr %0, align 8               ; 4 uses
  %i.as = load i64, ptr %1, align 8               ; 5 uses
  %i.at = add i64 %i.ar, 23                       ; 3 uses
  %i.au = inttoptr i64 %i.at to ptr
  store atomic volatile i64 %i.as, ptr %i.au monotonic, align 8
  %i.av = trunc i64 %i.as to i1
  br i1 %i.av, label %bb.k, label %_ZN2v88internal24TorqueGeneratedJSPromiseINS0_9JSPromiseENS0_25JSObjectWithEmbedderSlotsEE23set_reactions_or_resultENS0_6TaggedINS0_5UnionIJNS0_6BigIntENS0_7BooleanENS0_10HeapNumberENS0_10JSReceiverENS0_4NullENS0_15PromiseReactionENS0_3SmiENS0_6StringENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.aw = and i64 %i.ar, -262144
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i64, ptr %i.ax, align 262144       ; 2 uses
  %i.az = and i64 %i.ay, 32
  %.not.i.i.i = icmp eq i64 %i.az, 0
  %i.ba = and i64 %i.ay, 25
  %.not37.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not37.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bb = and i64 %i.as, -262144
  %i.bc = inttoptr i64 %i.bb to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bc, align 262144
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not38.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ar, i64 noundef %i.at, i64 %i.as) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i, label %_ZN2v88internal24TorqueGeneratedJSPromiseINS0_9JSPromiseENS0_25JSObjectWithEmbedderSlotsEE23set_reactions_or_resultENS0_6TaggedINS0_5UnionIJNS0_6BigIntENS0_7BooleanENS0_10HeapNumberENS0_10JSReceiverENS0_4NullENS0_15PromiseReactionENS0_3SmiENS0_6StringENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ar, i64 %i.at, i64 %i.as) #28
  br label %_ZN2v88internal24TorqueGeneratedJSPromiseINS0_9JSPromiseENS0_25JSObjectWithEmbedderSlotsEE23set_reactions_or_resultENS0_6TaggedINS0_5UnionIJNS0_6BigIntENS0_7BooleanENS0_10HeapNumberENS0_10JSReceiverENS0_4NullENS0_15PromiseReactionENS0_3SmiENS0_6StringENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal24TorqueGeneratedJSPromiseINS0_9JSPromiseENS0_25JSObjectWithEmbedderSlotsEE23set_reactions_or_resultENS0_6TaggedINS0_5UnionIJNS0_6BigIntENS0_7BooleanENS0_10HeapNumberENS0_10JSReceiverENS0_4NullENS0_15PromiseReactionENS0_3SmiENS0_6StringENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.n, %bb.o
  %i.be = load i64, ptr %0, align 8
  %i.bf = add i64 %i.be, 31
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, -17179869184
  %i.bj = or disjoint i64 %i.bi, 8589934592
  store atomic volatile i64 %i.bj, ptr %i.bg monotonic, align 8
  %i.bk = load i64, ptr %0, align 8
  %i.bl = add i64 %i.bk, 31
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 17179869184
  %.not = icmp eq i64 %i.bo, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal24TorqueGeneratedJSPromiseINS0_9JSPromiseENS0_25JSObjectWithEmbedderSlotsEE23set_reactions_or_resultENS0_6TaggedINS0_5UnionIJNS0_6BigIntENS0_7BooleanENS0_10HeapNumberENS0_10JSReceiverENS0_4NullENS0_15PromiseReactionENS0_3SmiENS0_6StringENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit
  tail call void @_ZN2v88internal7Isolate19ReportPromiseRejectENS0_12DirectHandleINS0_9JSPromiseEEENS2_INS0_6ObjectEEENS_18PromiseRejectEventE(ptr noundef nonnull align 8 dereferenceable(64320) %i.b, ptr nonnull %0, ptr nonnull %1, i32 noundef 0) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN2v88internal24TorqueGeneratedJSPromiseINS0_9JSPromiseENS0_25JSObjectWithEmbedderSlotsEE23set_reactions_or_resultENS0_6TaggedINS0_5UnionIJNS0_6BigIntENS0_7BooleanENS0_10HeapNumberENS0_10JSReceiverENS0_4NullENS0_15PromiseReactionENS0_3SmiENS0_6StringENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit
  %i.bp = tail call ptr @_ZN2v88internal9JSPromise23TriggerPromiseReactionsEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS0_15PromiseReaction4TypeE(ptr noundef nonnull %i.b, ptr nonnull %.0.i, ptr nonnull %1, i32 noundef 1)
  ret ptr %i.bp
}

declare void @_ZN2v88internal5Debug15OnPromiseRejectENS0_12DirectHandleINS0_6ObjectEEES4_(ptr noundef nonnull align 8 dereferenceable(256), ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate18RunAllPromiseHooksENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), i32 noundef, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate19ReportPromiseRejectENS0_12DirectHandleINS0_9JSPromiseEEENS2_INS0_6ObjectEEENS_18PromiseRejectEventE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal9JSPromise7ResolveENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 30 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 3 uses
  tail call void @_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %i.b, i32 noundef 1, ptr %0, ptr nonnull %i.c) #28
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.e, %i.f
  %.pre = load i64, ptr %1, align 8               ; 3 uses
  br i1 %or.cond.i, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread171, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8
  %i.h = icmp eq i64 %i.g, %.pre
  br i1 %i.h, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread171

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %bb.a, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %1, ptr %3, align 8
  %i.i = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef 145, ptr nonnull %3, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.j = call ptr @_ZN2v88internal9JSPromise6RejectENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEEb(ptr %0, ptr %i.i, i1 noundef zeroext true)
  br label %bb.v

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread171: ; preds = %bb.b, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.k = trunc i64 %.pre to i1
  br i1 %i.k, label %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i, label %bb.c

_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i: ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread171
  %i.l = add nsw i64 %.pre, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp ugt i16 %i.q, 299
  br i1 %i.r, label %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread171
  %i.s = tail call ptr @_ZN2v88internal9JSPromise7FulfillENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr %0, ptr nonnull %1)
  br label %bb.v

_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i
  %i.t = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2115
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %i.y = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.z = add i64 %i.y, 23
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp eq i16 %i.ah, 2086
  br i1 %i.ai, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 9208
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, 23
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, -4294967295
  %i.ap = icmp eq i64 %i.ao, 4294967296
  br i1 %i.ap, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %.sroa.0.0.copyload.i.i.i68 = load i64, ptr %i.aq, align 8
  %i.ar = add i64 %.sroa.0.0.copyload.i.i.i68, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8
  %i.au = add i64 %i.at, 31
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, 103
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.bf = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.b) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.critedge:                                        ; preds = %bb.d, %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8832 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.pre.pre.i = load i64, ptr %i.bg, align 8
  %i.bh = add i64 %.pre.pre.i, -1
  %i.bi = inttoptr i64 %i.bh to ptr               ; 3 uses
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.bk = add i64 %i.bj, 11
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = icmp eq i16 %i.bm, 128
  br i1 %i.bn, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %.critedge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %.critedge
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.br = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.br, ptr %2, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.bg, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cc = ptrtoint ptr %1 to i64
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 -1, i64 16, i1 false)
  %i.ce = load atomic volatile i64, ptr %i.bi monotonic, align 8
  %i.cf = add i64 %i.ce, 11
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i16, ptr %i.cg monotonic, align 2
  %i.ci = and i16 %i.ch, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ci, 32
  br i1 %.not.i21.i.i.i, label %bb.h, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.h:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 55448
  %i.cm = load i8, ptr %i.cl, align 8, !range !16
  %i.cn = trunc nuw i8 %i.cm to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ck, true
  %i.co = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.cn
  br i1 %i.co, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 64088
  %i.cq = load i8, ptr %i.cp, align 8, !range !16, !noundef !17
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #30, !inline_history !264
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 64080
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.h
  %.pn.i.i26.i.i.i = phi ptr [ %i.ct, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.b, %bb.h ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cu = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.cv = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr nonnull %i.bg) #28, !inline_history !264
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.cv, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.bg, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bx, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #28, !inline_history !264
  %i.cw = load i32, ptr %i.bs, align 4
  %.not.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i, label %.thread176, label %bb.k

.thread176:                                       ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.cx = load ptr, ptr %i.bw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread179

bb.k:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.cz = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false), !inline_history !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not183 = icmp eq ptr %i.cz, null
  br i1 %.not183, label %bb.l, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread179

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.bf, %bb.g ], [ %i.bb, %bb.f ] ; 3 uses
  %i.da = ptrtoint ptr %.0.i.i.i to i64
  %i.db = add i64 %i.da, 8
  %i.dc = inttoptr i64 %i.db to ptr
  store ptr %i.dc, ptr %i.ba, align 8
  store i64 %i.az, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread179

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %.sroa.0.0.copyload.i.i69 = load i64, ptr %i.dd, align 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 656 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8
  %.not.i70 = icmp eq i64 %.sroa.0.0.copyload.i.i69, %i.df
  br i1 %.not.i70, label %bb.m, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !5

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.402) #29
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 55464
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = add i64 %i.dh, -55464
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 960
  %i.dl = load i64, ptr %i.dk, align 8
  %.not184 = icmp eq i64 %.sroa.0.0.copyload.i.i69, %i.dl
  br i1 %.not184, label %bb.v, label %_ZN2v88internal7Isolate9exceptionEv.exit73

_ZN2v88internal7Isolate9exceptionEv.exit73:       ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.n, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.n:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit73
  %i.dr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #28
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit73, %bb.n
  %.0.i = phi ptr [ %i.dr, %bb.n ], [ %i.dn, %_ZN2v88internal7Isolate9exceptionEv.exit73 ] ; 3 uses
  %i.ds = ptrtoint ptr %.0.i to i64
  %i.dt = add i64 %i.ds, 8
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %i.dm, align 8
  store i64 %.sroa.0.0.copyload.i.i69, ptr %.0.i, align 8
  %i.dv = load i64, ptr %i.de, align 8
  store i64 %i.dv, ptr %i.dd, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not.i74 = icmp eq ptr %i.dx, null
  br i1 %.not.i74, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.dx) #28
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.o
  %i.dy = call ptr @_ZN2v88internal9JSPromise6RejectENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEEb(ptr %0, ptr nonnull %.0.i, i1 noundef zeroext false)
  br label %bb.v

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread179: ; preds = %.thread176, %bb.k, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0108.0175181 = phi ptr [ %.0.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.cy, %.thread176 ], [ %i.cz, %bb.k ] ; 3 uses
  %i.dz = load i64, ptr %.sroa.0108.0175181, align 8 ; 2 uses
  %i.ea = trunc i64 %i.dz to i1
  br i1 %i.ea, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread179
  %i.eb = add nsw i64 %i.dz, -1
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i64, ptr %i.ec monotonic, align 8
  %i.ee = add i64 %i.ed, 13
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load atomic volatile i8, ptr %i.ef monotonic, align 1
  %i.eh = and i8 %i.eg, 2
  %.not185 = icmp eq i8 %i.eh, 0
  br i1 %.not185, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.p

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread179, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ei = call ptr @_ZN2v88internal9JSPromise7FulfillENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr %0, ptr nonnull %1)
  br label %bb.v

bb.p:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ej = call ptr @_ZN2v88internal10JSReceiver22GetContextForMicrotaskENS0_12DirectHandleIS1_EE(ptr nonnull %.sroa.0108.0175181) #28 ; 2 uses
  %.not186 = icmp eq ptr %i.ej, null
  br i1 %.not186, label %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %.sroa.0.0.copyload.i.i76 = load i64, ptr %i.ek, align 8
  %i.el = add i64 %.sroa.0.0.copyload.i.i76, -1
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load atomic volatile i64, ptr %i.em monotonic, align 8
  %i.eo = add i64 %i.en, 31
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = icmp eq ptr %i.es, %i.eu
  br i1 %i.ev, label %bb.q, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.q:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.ew = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.b) #28
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.q
  %.0.i.i = phi ptr [ %i.ew, %bb.q ], [ %i.es, %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 3 uses
  %i.ex = ptrtoint ptr %.0.i.i to i64
  %i.ey = add i64 %i.ex, 8
  %i.ez = inttoptr i64 %i.ey to ptr
  store ptr %i.ez, ptr %i.er, align 8
  store i64 %i.eq, ptr %.0.i.i, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_13NativeContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.p, %_ZN2v88internal7Isolate14native_contextEv.exit
  %.sroa.091.0 = phi ptr [ %.0.i.i, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %i.ej, %bb.p ] ; 2 uses
  %i.fa = call ptr @_ZN2v88internal7Factory32NewPromiseResolveThenableJobTaskENS0_12DirectHandleINS0_9JSPromiseEEENS2_INS0_10JSReceiverEEES6_NS2_INS0_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %0, ptr nonnull %1, ptr nonnull %.sroa.0108.0175181, ptr nonnull %.sroa.091.0) #28
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 59496
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load atomic i8, ptr %i.fd seq_cst, align 1, !range !16, !noundef !17
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.r, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
end_hunk_7
