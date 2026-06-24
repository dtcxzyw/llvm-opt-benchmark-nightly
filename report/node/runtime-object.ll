inline.NumInlined: 3035
inline.NumDeleted: 949
begin_hunk_0_@_ZN2v88internal31Runtime_HasOwnConstDataPropertyEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.021.0.in = phi ptr [ %.sroa.03.0.in.i, %bb.e ], [ %.sroa.03.0.in.i6, %bb.f ], [ %i.am, %bb.g ]
  %.sroa.021.0 = load i64, ptr %.sroa.021.0.in, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.k

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.c, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ao = load i64, ptr %i.an, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.j, %bb.b
  %.sroa.021.1 = phi i64 [ %.sroa.021.0, %bb.j ], [ %i.ao, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.c, ptr %i.b, align 8
  %i.ap = load i32, ptr %i.f, align 8
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.f, align 8
  %i.ar = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.ar, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.l, %bb.k
  ret i64 %.sroa.021.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal42Runtime_IsDictPropertyConstTrackingEnabledEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 680
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_AddDictionaryPropertyEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.543", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.not48 = icmp eq i32 %0, 1
  br i1 %.not48, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !10

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %1, align 8
  %i.n = add i64 %i.m, 7
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.s = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 10624
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1336
  %i.w = load i64, ptr %i.v, align 8
  br label %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit

_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.d
  %.sroa.05.0.i.i = phi i64 [ %i.w, %bb.d ], [ %i.p, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ]
  %i.x = icmp eq ptr %i.b, %i.d
  br i1 %i.x, label %bb.e, label %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !10

bb.e:                                             ; preds = %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit
  %i.y = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit, %bb.e
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ %i.b, %_ZNK2v88internal10JSReceiver19property_dictionaryEv.exit ] ; 3 uses
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.a, align 8
  store i64 %.sroa.05.0.i.i, ptr %.0.i.i, align 8
  %i.ac = tail call ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE3AddINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_NS6_INS0_4NameEEENS6_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef nonnull %2, ptr nonnull %.0.i.i, ptr %i.j, ptr %i.l, i32 0, ptr noundef null) #19 ; 2 uses
  %i.ad = load i64, ptr %i.j, align 8
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ah = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = icmp eq i16 %i.ak, 128
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 8
  %.not.i8 = icmp eq i32 %i.ao, 0
  br i1 %.not.i8, label %bb.g, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal6HandleINS0_14NameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 7616
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.ag, %i.aq
  br i1 %i.ar, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit

_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 6192
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.ag, %i.at
  br i1 %i.au, label %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread, label %bb.h

_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread: ; preds = %bb.f, %bb.g, %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit
  %i.av = load i64, ptr %i.ac, align 8
  %i.aw = add i64 %i.av, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %.mask.i = and i64 %i.az, -8589934592
  %sext.i = or disjoint i64 %.mask.i, 4294967296
  store atomic volatile i64 %sext.i, ptr %i.ay monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit.thread, %_ZN2v88internal4Name13IsInterestingEPNS0_7IsolateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ba = load i64, ptr %1, align 8
  store i64 %i.ba, ptr %3, align 8
  %i.bb = load i64, ptr %i.ac, align 8
  call void @_ZN2v88internal10JSReceiver13SetPropertiesENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.bb) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bc = load i64, ptr %i.l, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.bd = load i32, ptr %i.e, align 8
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.e, align 8
  %i.bf = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.bf, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.i, %bb.h
  ret i64 %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal23Runtime_AddPrivateBrandEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.0"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6SymbolEEENS0_6HandleIT_EEi.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6SymbolEEENS0_6HandleIT_EEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.i = add i64 %i.h, -8                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %.not59 = icmp eq i32 %0, 1
  br i1 %.not59, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_7ContextEEENS0_6HandleIT_EEi.exit, !prof !10

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6SymbolEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_7ContextEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6SymbolEEENS0_6HandleIT_EEi.exit
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = icmp ugt i32 %0, 2
  br i1 %i.m, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_7ContextEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_7ContextEEENS0_6HandleIT_EEi.exit
  %i.n = add i64 %i.h, -24
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.s = icmp eq i64 %i.i, 0
  %.pre.pre = load i64, ptr %i.j, align 8
  %.pre66 = add i64 %.pre.pre, -1
  %.pre = inttoptr i64 %.pre66 to ptr             ; 3 uses
  br i1 %i.s, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  %i.t = load atomic volatile i64, ptr %.pre monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 128
  br i1 %i.x, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %not. = and i32 %i.z, 1
  %spec.select = xor i32 %not., 1
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit, %bb.e
  %i.aa = phi i32 [ %spec.select, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ], [ 1, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit ], [ 1, %bb.e ]
  store i32 %i.aa, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.h, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 -1, i64 16, i1 false)
  %i.am = load atomic volatile i64, ptr %.pre monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = and i16 %i.ap, -96
  %.not.i21.i.i = icmp eq i16 %i.aq, 32
  br i1 %.not.i21.i.i, label %bb.f, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !5, !noundef !6
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.au = load i8, ptr %i.at, align 8, !range !5
  %i.av = trunc nuw i8 %i.au to i1
  %not..i.i.i23.i.i = xor i1 %i.as, true
  %i.aw = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.av
  br i1 %i.aw, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.ay = load i8, ptr %i.ax, align 8, !range !5, !noundef !6
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.f
  %.pn.i.i26.i.i = phi ptr [ %i.bb, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %2, %bb.f ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.bc = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.bd = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.j) #19
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.bd, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.j, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.ag, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #19
  %i.be = load i32, ptr %i.ab, align 4
  %.not60 = icmp eq i32 %i.be, 0
  br i1 %.not60, label %.preheader, label %bb.i

.preheader:                                       ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.bf = icmp sgt i32 %i.r, 0
  br i1 %i.bf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre63 = load i64, ptr %i.l, align 8
  br label %.lr.ph

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.j, ptr %3, align 8
  %i.bg = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 325, ptr nonnull %3, i64 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bh, ptr noundef null) #19
  br label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bj = phi i64 [ %i.bm, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.pre63, %.lr.ph.preheader ]
  %.0.i62 = phi i32 [ %i.bu, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %i.bk = add i64 %i.bj, 23
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8 ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.c, align 8
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.j, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !10

bb.j:                                             ; preds = %.lr.ph
  %i.bq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.lr.ph, %bb.j
  %.0.i.i = phi ptr [ %i.bq, %bb.j ], [ %i.bn, %.lr.ph ] ; 3 uses
  %i.br = ptrtoint ptr %.0.i.i to i64
  %i.bs = add i64 %i.br, 8
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %i.a, align 8
  store i64 %i.bm, ptr %.0.i.i, align 8
  %i.bu = add nsw i32 %.0.i62, -1
  %i.bv = icmp sgt i32 %.0.i62, 1
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %.preheader
  %.sroa.019.0.lcssa = phi ptr [ %i.l, %.preheader ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.bw = call i16 @_ZN2v88internal6Object15AddDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginENS0_22EnforceDefineSemanticsE(ptr noundef nonnull %4, ptr %.sroa.019.0.lcssa, i32 noundef 7, i64 4294967297, i32 noundef 0, i32 noundef 0) #19
  %i.bx = load i64, ptr %1, align 8               ; 2 uses
  %i.by = add i64 %i.bx, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8
  %i.cb = add i64 %i.ca, 11
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i16, ptr %i.cc monotonic, align 2
  %i.ce = add i16 %i.cd, -2102
  %i.cf = icmp ult i16 %i.ce, 4
  %i.cg = trunc i16 %i.bw to i1                   ; 2 uses
  br i1 %i.cf, label %bb.k, label %bb.n, !prof !10

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.cg, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge
  br i1 %i.cg, label %bb.p, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #21
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.m
  %.sroa.032.1 = phi i64 [ %i.bi, %bb.i ], [ %i.ci, %bb.m ], [ %i.bx, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  store ptr %i.b, ptr %i.a, align 8
  %i.cj = load i32, ptr %i.e, align 8
  %i.ck = add nsw i32 %i.cj, -1
  store i32 %i.ck, ptr %i.e, align 8
  %i.cl = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.cl, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.q, %bb.p
  ret i64 %.sroa.032.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal20Runtime_ObjectCreateEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.0"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, !prof !10

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i64, ptr %1, align 8                ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, label %_ZN2v88internal2IsINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i

_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp ugt i16 %i.r, 299
  br i1 %i.s, label %bb.b, label %_ZN2v88internal2IsINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i

_ZN2v88internal2IsINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i: ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.t = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 10624
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.k, %i.x
  br i1 %i.y, label %bb.b, label %_ZN2v88internal7TryCastINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS8_ISA_EPS8_IS9_E.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal38Runtime_GetOwnPropertyDescriptorObjectEiPmPNS0_7IsolateE:bb.a
bb.g:                                             ; preds = %bb.f
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.g, %bb.f
  ret i64 %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal7Runtime16GetPrivateMemberEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.0"], align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::PrivateMember", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = call fastcc i16 @_ZN2v88internal12_GLOBAL__N_130FindPrivateMembersFromReceiverEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS0_15MessageTemplateEPNS0_13PrivateMemberE(ptr noundef %0, ptr %1, ptr %2, ptr noundef %4)
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 8
  %i.e = icmp eq i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.013.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %.sroa.013.0.copyload, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10624
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %2, ptr %3, align 8
  %i.r = call ptr @_ZN2v88internal7Factory8NewErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 331, ptr nonnull %3, i64 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.s = load i64, ptr %i.r, align 8
  %i.t = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.s, ptr noundef null) #19 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.z, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %i.k, ptr %.0.i.i, align 8
  %i.ad = tail call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr %1, ptr null, i64 0) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.d, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.a
  %.sroa.033.1 = phi ptr [ %i.ad, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.a ], [ null, %bb.d ], [ %.sroa.013.0.copyload, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %.sroa.033.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i16 0, 258) i16 @_ZN2v88internal12_GLOBAL__N_130FindPrivateMembersFromReceiverEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS0_15MessageTemplateEPNS0_13PrivateMemberE(ptr noundef %0, ptr %1, ptr %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::DirectHandle.0"], align 8 ; 4 uses
  %5 = alloca [1 x %"class.v8::internal::DirectHandle.0"], align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %7 = alloca %"class.std::vector.678", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.a = tail call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %0, ptr %1, i32 noundef 0, i32 noundef 32, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 3 uses
  %.not175.i = icmp eq ptr %i.a, null
  br i1 %.not175.i, label %_ZNSt6vectorIN2v88internal13PrivateMemberESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = add i16 %i.h, -2065
  %i.j = icmp ult i16 %i.i, 17
  br i1 %i.j, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i54.i = phi ptr [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i54.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.b, ptr %.0.i.i54.i, align 8
  %i.t = add i64 %i.b, 31
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !10

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i.i60.i = phi ptr [ %i.z, %bb.e ], [ %i.w, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %i.aa = ptrtoint ptr %.0.i.i60.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.k, align 8
  store i64 %i.v, ptr %.0.i.i60.i, align 8
  %i.ad = add i64 %i.v, 55
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i32, ptr %i.ae monotonic, align 4
  %i.ag = and i32 %i.af, 1024
  %.not176.i = icmp eq i32 %i.ag, 0
  br i1 %.not176.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ah = add i64 %i.v, 54
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 2
  %.not177.i = icmp eq i8 %i.ak, 0
  br i1 %.not177.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %1, align 8
  %i.am = add i64 %i.al, 39
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.m, align 8
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ap, %bb.g ] ; 3 uses
  %i.at = ptrtoint ptr %.0.i.i.i to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %i.k, align 8
  store i64 %i.ao, ptr %.0.i.i.i, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_144CollectPrivateMethodsAndAccessorsFromContextEPNS0_7IsolateENS0_12DirectHandleINS0_7ContextEEENS4_INS0_6StringEEENS0_6HandleINS0_6ObjectEEENS0_12IsStaticFlagEPSt6vectorINS0_13PrivateMemberESaISE_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i.i, ptr readonly %2, ptr nonnull %.0.i.i54.i, i8 noundef zeroext 1, ptr noundef nonnull %7)
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.f, %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.b
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 32
  %i.bc = trunc nuw i64 %i.bb to i32
  %.not180.i = icmp sgt i32 %i.bc, 0
  br i1 %.not180.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bp = ptrtoint ptr %1 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread169.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread169.i ] ; 2 uses
  %i.bw = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.gi, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread169.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8 ; 3 uses
  %i.ca = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.be, align 8
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.j, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.cd = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i61.i = phi ptr [ %i.cd, %bb.j ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ce = ptrtoint ptr %.0.i.i61.i to i64
  %i.cf = add i64 %i.ce, 8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %i.bd, align 8
  store i64 %i.bz, ptr %.0.i.i61.i, align 8
  %i.ch = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.ci = load ptr, ptr %i.be, align 8
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.k, label %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !10

bb.k:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ck = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.k, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i.i59.i = phi ptr [ %i.ck, %bb.k ], [ %i.ch, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 8 uses
  %i.cl = ptrtoint ptr %.0.i.i59.i to i64
  %i.cm = add i64 %i.cl, 8
  %i.cn = inttoptr i64 %i.cm to ptr
  store ptr %i.cn, ptr %i.bd, align 8
  store i64 %i.bz, ptr %.0.i.i59.i, align 8
  %i.co = add i64 %i.bz, -1
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = and i32 %i.cr, 16
  %.not178.i = icmp eq i32 %i.cs, 0
  br i1 %.not178.i, label %bb.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, !prof !10

bb.l:                                             ; preds = %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #21
  unreachable

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_6SymbolEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ct = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.cu = add i64 %i.ct, 11
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i16, ptr %i.cv monotonic, align 2
  %i.cx = icmp eq i16 %i.cw, 128
  %i.cy = trunc i32 %i.cr to i1
  %or.cond.i = and i1 %i.cx, %i.cy
  %i.cz = select i1 %or.cond.i, i32 0, i32 3
  store i32 %i.cz, ptr %6, align 8
  store i32 0, ptr %i.bf, align 4
  store i8 0, ptr %i.bg, align 8
  store i32 0, ptr %i.bh, align 4
  store i32 0, ptr %i.bi, align 8
  store ptr %0, ptr %i.bj, align 8
  store ptr null, ptr %i.bl, align 8
  store ptr %1, ptr %i.bm, align 8
  store ptr null, ptr %i.bn, align 8
  store i64 %i.bp, ptr %i.bo, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 -1, i64 16, i1 false)
  %i.da = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.db = add i64 %i.da, 11
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load atomic volatile i16, ptr %i.dc monotonic, align 2
  %i.de = and i16 %i.dd, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.de, 32
  br i1 %.not.i21.i.i.i.i, label %bb.m, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

bb.m:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !5, !noundef !6
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = load i8, ptr %i.br, align 8, !range !5
  %i.di = trunc nuw i8 %i.dh to i1
  %not..i.i.i23.i.i.i.i = xor i1 %i.dg, true
  %i.dj = select i1 %not..i.i.i23.i.i.i.i, i1 true, i1 %i.di
  br i1 %i.dj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = load i8, ptr %i.bs, align 8, !range !5, !noundef !6
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i: ; preds = %bb.n
  %i.dm = load ptr, ptr %i.bt, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i, %bb.m
  %.pn.i.i26.i.i.i.i = phi ptr [ %i.dm, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i.i ], [ %0, %bb.m ]
  %.in.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i.i, i64 58464
  %i.dn = load ptr, ptr %.in.i.i27.i.i.i.i, align 8
  %i.do = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i59.i) #19
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %.sroa.05.0.i22.i.i.i.i = phi ptr [ %i.do, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i.i ], [ %.0.i.i59.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i.i, ptr %i.bk, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #19
  %i.dp = load i32, ptr %i.bf, align 4
  %.not.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.dq = load ptr, ptr %i.bj, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.p

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i
  %i.ds = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %thread-pre-split.loopexit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i
  %.sroa.0.0.i162.i = phi ptr [ %i.dr, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread.i ], [ %i.ds, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.i ] ; 2 uses
  %i.du = load i64, ptr %.0.i.i59.i, align 8
  %i.dv = add i64 %i.du, -1
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = and i32 %i.dy, 32
  %.not179.i = icmp eq i32 %i.dz, 0
  br i1 %.not179.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = load i64, ptr %.sroa.0.0.i162.i, align 8
  %i.eb = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.be, align 8
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.r, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit52.i, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.ee = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit52.i

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit52.i: ; preds = %bb.r, %bb.q
  %.0.i.i51.i = phi ptr [ %i.ee, %bb.r ], [ %i.eb, %bb.q ] ; 3 uses
  %i.ef = ptrtoint ptr %.0.i.i51.i to i64
  %i.eg = add i64 %i.ef, 8
  %i.eh = inttoptr i64 %i.eg to ptr
  store ptr %i.eh, ptr %i.bd, align 8
  store i64 %i.ea, ptr %.0.i.i51.i, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_144CollectPrivateMethodsAndAccessorsFromContextEPNS0_7IsolateENS0_12DirectHandleINS0_7ContextEEENS4_INS0_6StringEEENS0_6HandleINS0_6ObjectEEENS0_12IsStaticFlagEPSt6vectorINS0_13PrivateMemberESaISE_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i51.i, ptr readonly %2, ptr nonnull %.0.i.i59.i, i8 noundef zeroext 0, ptr noundef nonnull %7)
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread169.i

bb.s:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ej = load i64, ptr %i.ei, align 8            ; 2 uses
  %i.ek = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.el = load ptr, ptr %i.be, align 8
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %bb.t, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.en = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #19
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.t, %bb.s
  %.0.i.i53.i = phi ptr [ %i.en, %bb.t ], [ %i.ek, %bb.s ] ; 2 uses
  %i.eo = ptrtoint ptr %.0.i.i53.i to i64
  %i.ep = add i64 %i.eo, 8
  %i.eq = inttoptr i64 %i.ep to ptr
  store ptr %i.eq, ptr %i.bd, align 8
  store i64 %i.ej, ptr %.0.i.i53.i, align 8
  %i.er = add i64 %i.ej, -1                       ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr               ; 2 uses
  %i.et = load i64, ptr %2, align 8               ; 3 uses
  %i.eu = or disjoint i64 %i.er, 1
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ew = load atomic volatile i64, ptr %i.es monotonic, align 8
  %i.ex = add i64 %i.ew, 11
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i16, ptr %i.ey monotonic, align 2
  %i.fa = and i16 %i.ez, -96
  %i.fb = icmp eq i16 %i.fa, 0
  br i1 %i.fb, label %bb.v, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.i

bb.v:                                             ; preds = %bb.u
  %i.fc = add i64 %i.et, -1
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = load atomic volatile i64, ptr %i.fd monotonic, align 8
  %i.ff = add i64 %i.fe, 11
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load atomic volatile i16, ptr %i.fg monotonic, align 2
  %i.fi = and i16 %i.fh, -96
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread169.i, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.i

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.v, %bb.u
  %i.fk = call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.es, i64 %i.et) #19
  br i1 %i.fk, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread.i, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread169.i

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.fl = ptrtoint ptr %.sroa.0.0.i162.i to i64   ; 2 uses
  %i.fm = load ptr, ptr %i.bu, align 8            ; 8 uses
  %i.fn = load ptr, ptr %i.bv, align 8
  %.not.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread.i
  store i32 0, ptr %i.fm, align 8
  %.sroa.568.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %.0.i.i59.i, ptr %.sroa.568.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fl, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store ptr %i.fo, ptr %i.bu, align 8
  br label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread169.i

bb.x:                                             ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread.i
  %i.fp = load ptr, ptr %7, align 8               ; 5 uses
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr                    ; 4 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.y, label %_ZNKSt6vectorIN2v88internal13PrivateMemberESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #21
  unreachable

_ZNKSt6vectorIN2v88internal13PrivateMemberESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.x
  %i.fu = sdiv exact i64 %i.fs, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fu, i64 1)
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.fu ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fu
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 384307168202282325)
  %i.fy = select i1 %i.fw, i64 384307168202282325, i64 %i.fx ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.fz = mul nuw nsw i64 %i.fy, 24
  %i.ga = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #22 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fs ; 3 uses
  store i32 0, ptr %i.gb, align 8
  %.sroa.568.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %.0.i.i59.i, ptr %.sroa.568.0..sroa_idx69.i, align 8
  %.sroa.6.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %i.fl, ptr %.sroa.6.0..sroa_idx71.i, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fp, %i.fm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal13PrivateMemberESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN2v88internal13PrivateMemberESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ga, %_ZNKSt6vectorIN2v88internal13PrivateMemberESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fp, %_ZNKSt6vectorIN2v88internal13PrivateMemberESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !26
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.fm
end_hunk_1
