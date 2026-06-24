inline.NumInlined: 745
inline.NumDeleted: 336
begin_hunk_0_@_ZN2v88internal20Runtime_ArrayIsArrayEiPmPNS0_7IsolateE:bb.a
  store i32 %i.ag, ptr %i.e, align 8
  %i.ah = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ah, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internalL30__RT_impl_Runtime_ArrayIsArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.e, %_ZN2v88internalL30__RT_impl_Runtime_ArrayIsArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal15Runtime_IsArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %.fr = freeze i16 %i.h
  %i.i = icmp eq i16 %.fr, 2119
  %spec.select = select i1 %i.i, i64 672, i64 680
  br label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = phi i64 [ %spec.select, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit ], [ 680, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %.in.in = ptrtoint ptr %i.k to i64
  %.in = add i64 %.in.in, -55464
  %i.l = inttoptr i64 %.in to ptr
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_ArraySpeciesConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZN2v88internalL41__RT_impl_Runtime_ArraySpeciesConstructorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef %2, ptr %1) #11 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.012.0.in = select i1 %.not, ptr %i.i, ptr %i.h
  %.sroa.012.0 = load i64, ptr %.sroa.012.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.j = load i32, ptr %i.e, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.a, !prof !7

bb.a:                                             ; preds = %_ZN2v88internalL41__RT_impl_Runtime_ArraySpeciesConstructorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.a, %_ZN2v88internalL41__RT_impl_Runtime_ArraySpeciesConstructorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_ArrayIncludes_SlowEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 10 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit11, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit11: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.not197 = icmp eq i32 %0, 1
  br i1 %.not197, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit11
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit11
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %1, align 8                ; 4 uses
  %i.n = icmp eq ptr %i.b, %i.d
  br i1 %i.n, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %bb.d
  %.0.i16 = phi ptr [ %i.o, %bb.d ], [ %i.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ] ; 4 uses
  %i.p = ptrtoint ptr %.0.i16 to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.a, align 8
  store i64 %i.m, ptr %.0.i16, align 8
  %i.s = trunc i64 %i.m to i1
  br i1 %i.s, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !10

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.t = add nsw i64 %i.m, -1
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp ugt i16 %i.y, 299
  br i1 %i.z, label %.critedge112.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !8

_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.aa = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.0.i16, ptr noundef null) #11 ; 3 uses
  %.not198 = icmp eq ptr %i.aa, null
  br i1 %.not198, label %bb.e, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge

_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %.pre = load i64, ptr %i.aa, align 8            ; 2 uses
  %.pre214 = add i64 %.pre, -1
  %.pre215 = inttoptr i64 %.pre214 to ptr
  br label %.critedge112.i

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ac = load i64, ptr %i.ab, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge112.i:                                   ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.pre-phi216 = phi ptr [ %.pre215, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %i.u, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.ad = phi i64 [ %.pre, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %i.m, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %.sroa.07.0.i173177 = phi ptr [ %i.aa, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %.0.i16, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 6 uses
  %i.ae = load atomic volatile i64, ptr %.pre-phi216 monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp eq i16 %i.ah, 2119
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.critedge112.i
  %i.aj = add i64 %i.ad, 23
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call i64 @llvm.smax.i64(i64 %i.al, i64 0)
  %spec.select = lshr i64 %i.ao, 32
  br label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.f
  %i.ap = add nsw i64 %i.al, -1
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.as = add i64 %i.ar, 11
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i16, ptr %i.at monotonic, align 2
  %i.av = icmp eq i16 %i.au, 130
  br i1 %i.av, label %bb.h, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread

bb.h:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.aw, align 8
  %i.ax = fadd double %.0.copyload.i.i.i.i.i.i, f0x4330000000000000
  %i.ay = bitcast double %i.ax to i64             ; 2 uses
  %.mask.i.i.i = and i64 %i.ay, -4294967296
  %i.az = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  %i.ba = and i64 %i.ay, 4294967295
  br i1 %i.az, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread

bb.i:                                             ; preds = %.critedge112.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %.pre.pre.i = load i64, ptr %i.bb, align 8
  %i.bc = add i64 %.pre.pre.i, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = icmp eq i16 %i.bh, 128
  br i1 %i.bi, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bm = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bm, ptr %3, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %2, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sroa.07.0.i173177, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bx = ptrtoint ptr %.sroa.07.0.i173177 to i64
  store i64 %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 -1, i64 16, i1 false)
  %i.bz = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.ca = add i64 %i.bz, 11
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i16, ptr %i.cb monotonic, align 2
  %i.cd = and i16 %i.cc, -96
  %.not.i21.i.i.i = icmp eq i16 %i.cd, 32
  br i1 %.not.i21.i.i.i, label %bb.j, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.j:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !11, !noundef !12
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.ch = load i8, ptr %i.cg, align 8, !range !11
  %i.ci = trunc nuw i8 %i.ch to i1
  %not..i.i.i23.i.i.i = xor i1 %i.cf, true
  %i.cj = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ci
  br i1 %i.cj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.cl = load i8, ptr %i.ck, align 8, !range !11, !noundef !12
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt27__throw_bad_optional_accessv() #12
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.co = load ptr, ptr %i.cn, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.j
  %.pn.i.i26.i.i.i = phi ptr [ %i.co, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.j ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.cp = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.cq = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.bb) #11
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.cq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.bb, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bs, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #11
  %i.cr = load i32, ptr %i.bn, align 4
  %.not.i17 = icmp eq i32 %i.cr, 0
  br i1 %.not.i17, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cs = load ptr, ptr %i.br, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %.critedge114.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cu = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.not199 = icmp eq ptr %i.cu, null
  br i1 %.not199, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit15, label %.critedge114.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit15: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.cw = load i64, ptr %i.cv, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge114.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i179 = phi ptr [ %i.ct, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.cu, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.cx = load i64, ptr %.sroa.0.0.i179, align 8  ; 2 uses
  %i.cy = and i64 %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.m, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

bb.m:                                             ; preds = %.critedge114.i
  %i.da = lshr i64 %i.cx, 32
  %i.db = trunc nuw i64 %i.da to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dc = zext nneg i32 %.sroa.speculated.i to i64
  %i.dd = shl nuw nsw i64 %i.dc, 32               ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.df = load ptr, ptr %i.c, align 8
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit14, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.dh = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit14

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %.critedge114.i
  %i.di = call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i179) #11 ; 2 uses
  %.not200 = icmp eq ptr %i.di, null
  br i1 %.not200, label %bb.o, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %.pre213 = load i64, ptr %i.di, align 8
  br label %.critedge116.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit14: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi ptr [ %i.dh, %bb.n ], [ %i.de, %bb.m ] ; 2 uses
  %i.dj = ptrtoint ptr %.0.i.i.i to i64
  %i.dk = add i64 %i.dj, 8
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %i.dl, ptr %i.a, align 8
  store i64 %i.dd, ptr %.0.i.i.i, align 8
  br label %.critedge116.i

bb.o:                                             ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.dn = load i64, ptr %i.dm, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge116.i:                                   ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit14
  %i.do = phi i64 [ %i.dd, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit14 ], [ %.pre213, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge ] ; 3 uses
  %i.dp = and i64 %i.do, 1
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge116.i
  %i.dr = lshr i64 %i.do, 32
  %i.ds = trunc nuw i64 %i.dr to i32
  %i.dt = sitofp i32 %i.ds to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.q:                                             ; preds = %.critedge116.i
  %i.du = add nsw i64 %i.do, -1
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.0.copyload.i.i.i.i.i.i18 = load double, ptr %i.dw, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.p, %bb.q
  %i.dx = phi double [ %i.dt, %bb.p ], [ %.0.copyload.i.i.i.i.i.i18, %bb.q ]
  %i.dy = fptosi double %i.dx to i64
  br label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit: ; preds = %bb.h, %bb.g, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %.1102.i = phi i64 [ %i.dy, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ], [ %spec.select, %bb.g ], [ %i.ba, %bb.h ] ; 6 uses
  %i.dz = icmp eq i64 %.1102.i, 0
  br i1 %i.dz, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread, label %bb.r

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread: ; preds = %bb.h, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.eb = load i64, ptr %i.ea, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.r:                                             ; preds = %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit
  %i.ec = load i64, ptr %i.l, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = icmp eq i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.l) #11 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = load i64, ptr %i.eg, align 8            ; 3 uses
  %i.ej = and i64 %i.ei, 1
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.el = lshr i64 %i.ei, 32
  %i.em = trunc nuw i64 %i.el to i32
  %i.en = sitofp i32 %i.em to double
  br label %.critedge120.i

bb.v:                                             ; preds = %bb.t
  %i.eo = add nsw i64 %i.ei, -1
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.eq, align 1 ; 6 uses
  %or.cond.i.i = fcmp ueq double %.0.copyload.i.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i.i, label %.critedge120.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.es = fcmp ueq double %i.er, +inf
  br i1 %i.es, label %.critedge120.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = fcmp ogt double %.0.copyload.i.i.i.i.i, 0.000000e+00
  br i1 %i.et, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eu = call double @llvm.floor.f64(double %.0.copyload.i.i.i.i.i)
  br label %.critedge120.i

end_hunk_0
begin_hunk_1_@_ZN2v88internal26Runtime_ArrayIncludes_SlowEiPmPNS0_7IsolateE:bb.a
.lr.ph:                                           ; preds = %.critedge.i, %_ZN2v88internal11HandleScopeD2Ev.exit
  %.3106.i207 = phi i64 [ %i.hw, %_ZN2v88internal11HandleScopeD2Ev.exit ], [ %.2105.i, %.critedge.i ] ; 2 uses
  %i.hf = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hg = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.hh = load i32, ptr %i.e, align 8
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.e, align 8
  %i.hj = sitofp i64 %.3106.i207 to double
  %i.hk = fptoui double %i.hj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %2, ptr nonnull %.sroa.07.0.i173177, ptr null, i64 noundef %i.hk, ptr nonnull %.sroa.07.0.i173177, i32 noundef 3)
  %i.hl = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #11 ; 2 uses
  %.not202 = icmp eq ptr %i.hl, null
  br i1 %.not202, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge124.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.lr.ph
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.hn = load i64, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge126.i

.critedge124.i:                                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ho = load i64, ptr %i.j, align 8
  %i.hp = load i64, ptr %i.hl, align 8
  %i.hq = call noundef zeroext i1 @_ZN2v88internal6Object13SameValueZeroENS0_6TaggedIS1_EES3_(i64 %i.ho, i64 %i.hp) #11
  br i1 %i.hq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge124.i
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.hs = load i64, ptr %i.hr, align 8
  br label %.critedge126.i

bb.am:                                            ; preds = %.critedge124.i
  store ptr %i.hf, ptr %i.a, align 8
  %i.ht = load i32, ptr %i.e, align 8
  %i.hu = add nsw i32 %i.ht, -1
  store i32 %i.hu, ptr %i.e, align 8
  %i.hv = load ptr, ptr %i.c, align 8
  %.not.i7 = icmp eq ptr %i.hv, %i.hg
  br i1 %.not.i7, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  store ptr %i.hg, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.an, %bb.am
  %i.hw = add i64 %.3106.i207, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hw, %.1102.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %.critedge.i
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.hy = load i64, ptr %i.hx, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge126.i:                                   ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.al
  %.sroa.092.2 = phi i64 [ %i.hs, %bb.al ], [ %i.hn, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 2 uses
  store ptr %i.hf, ptr %i.a, align 8
  %i.hz = load i32, ptr %i.e, align 8
  %i.ia = add nsw i32 %i.hz, -1
  store i32 %i.ia, ptr %i.e, align 8
  %i.ib = load ptr, ptr %i.c, align 8
  %.not.i4 = icmp eq ptr %i.ib, %i.hg
  br i1 %.not.i4, label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.ao, !prof !7

bb.ao:                                            ; preds = %.critedge126.i
  store ptr %i.hg, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %.critedge126.i, %bb.ao, %._crit_edge, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread, %bb.e, %_ZNKR2v85MaybeIbE8FromJustEv.exit, %bb.ak, %bb.ab, %bb.aa, %bb.o, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit15
  %.sroa.092.4 = phi i64 [ %i.eb, %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit.thread ], [ %i.cw, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit15 ], [ %i.hy, %._crit_edge ], [ %i.ac, %bb.e ], [ %i.hd, %_ZNKR2v85MaybeIbE8FromJustEv.exit ], [ %i.ey, %bb.aa ], [ %i.hb, %bb.ak ], [ %i.fc, %bb.ab ], [ %i.dn, %bb.o ], [ %.sroa.092.2, %bb.ao ], [ %.sroa.092.2, %.critedge126.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ic = load i32, ptr %i.e, align 8
  %i.id = add nsw i32 %i.ic, -1
  store i32 %i.id, ptr %i.e, align 8
  %i.ie = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ie, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit3, label %bb.ap, !prof !7

bb.ap:                                            ; preds = %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit3

_ZN2v88internal11HandleScopeD2Ev.exit3:           ; preds = %bb.ap, %_ZN2v88internalL36__RT_impl_Runtime_ArrayIncludes_SlowENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.092.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal20Runtime_ArrayIndexOfEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 10 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.not187 = icmp eq i32 %0, 1
  br i1 %.not187, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit8
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %1, align 8                ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !10

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %.critedge112.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !8

_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.v = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %1, ptr noundef nonnull @.str.6) #11 ; 3 uses
  %.not188 = icmp eq ptr %i.v, null
  br i1 %.not188, label %bb.d, label %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge

_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %.pre = load i64, ptr %i.v, align 8             ; 2 uses
  %.pre201 = add i64 %.pre, -1
  %.pre202 = inttoptr i64 %.pre201 to ptr
  br label %.critedge112.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.x = load i64, ptr %i.w, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge112.i:                                   ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.pre-phi203 = phi ptr [ %.pre202, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %i.p, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.y = phi i64 [ %.pre, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %i.m, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %.sroa.07.0.i152156 = phi ptr [ %i.v, %_ZN2v88internal6Object8ToObjectIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit..critedge112.i_crit_edge ], [ %1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 6 uses
  %i.z = load atomic volatile i64, ptr %.pre-phi203 monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 2119
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.critedge112.i
  %i.ae = add i64 %i.y, 23
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 0)
  %spec.select193 = lshr i64 %i.aj, 32
  br label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.e
  %i.ak = add nsw i64 %i.ag, -1
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 130
  br i1 %i.aq, label %bb.g, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ar, align 8
  %i.as = fadd double %.0.copyload.i.i.i.i.i.i, f0x4330000000000000
  %i.at = bitcast double %i.as to i64             ; 2 uses
  %.mask.i.i.i = and i64 %i.at, -4294967296
  %i.au = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  %i.av = and i64 %i.at, 4294967295
  br i1 %i.au, label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

bb.h:                                             ; preds = %.critedge112.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %.pre.pre.i = load i64, ptr %i.aw, align 8
  %i.ax = add i64 %.pre.pre.i, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 128
  br i1 %i.bd, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.h
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bh = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bh, ptr %3, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %2, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.aw, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sroa.07.0.i152156, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bs = ptrtoint ptr %.sroa.07.0.i152156 to i64
  store i64 %i.bs, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 -1, i64 16, i1 false)
  %i.bu = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.bv = add i64 %i.bu, 11
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i16, ptr %i.bw monotonic, align 2
  %i.by = and i16 %i.bx, -96
  %.not.i21.i.i.i = icmp eq i16 %i.by, 32
  br i1 %.not.i21.i.i.i, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !11, !noundef !12
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.cc = load i8, ptr %i.cb, align 8, !range !11
  %i.cd = trunc nuw i8 %i.cc to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ca, true
  %i.ce = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.cd
  br i1 %i.ce, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.cg = load i8, ptr %i.cf, align 8, !range !11, !noundef !12
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #12
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.i
  %.pn.i.i26.i.i.i = phi ptr [ %i.cj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.i ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ck = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.cl = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aw) #11
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.cl, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.aw, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.bn, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #11
  %i.cm = load i32, ptr %i.bi, align 4
  %.not.i13 = icmp eq i32 %i.cm, 0
  br i1 %.not.i13, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cn = load ptr, ptr %i.bm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %.critedge114.i

_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.cp = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.not189 = icmp eq ptr %i.cp, null
  br i1 %.not189, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit11, label %.critedge114.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit11: ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.cr = load i64, ptr %i.cq, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge114.i:                                   ; preds = %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread
  %.sroa.0.0.i158 = phi ptr [ %i.co, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit.thread ], [ %i.cp, %_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE.exit ] ; 2 uses
  %i.cs = load i64, ptr %.sroa.0.0.i158, align 8  ; 2 uses
  %i.ct = and i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.l, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

bb.l:                                             ; preds = %.critedge114.i
  %i.cv = lshr i64 %i.cs, 32
  %i.cw = trunc nuw i64 %i.cv to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.cw, i32 0)
  %i.cx = zext nneg i32 %.sroa.speculated.i to i64
  %i.cy = shl nuw nsw i64 %i.cx, 32               ; 2 uses
  %i.cz = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.da = load ptr, ptr %i.c, align 8
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.m, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit10, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.dc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit10

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %.critedge114.i
  %i.dd = call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i158) #11 ; 2 uses
  %.not190 = icmp eq ptr %i.dd, null
  br i1 %.not190, label %bb.n, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %.pre199 = load i64, ptr %i.dd, align 8
  br label %.critedge116.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit10: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.de = ptrtoint ptr %.0.i.i.i to i64
  %i.df = add i64 %i.de, 8
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.dg, ptr %i.a, align 8
  store i64 %i.cy, ptr %.0.i.i.i, align 8
  br label %.critedge116.i

bb.n:                                             ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.di = load i64, ptr %i.dh, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge116.i:                                   ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit10
  %i.dj = phi i64 [ %i.cy, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit10 ], [ %.pre199, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge116.i_crit_edge ] ; 3 uses
  %i.dk = and i64 %i.dj, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge116.i
  %i.dm = lshr i64 %i.dj, 32
  %i.dn = trunc nuw i64 %i.dm to i32
  %i.do = sitofp i32 %i.dn to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.p:                                             ; preds = %.critedge116.i
  %i.dp = add nsw i64 %i.dj, -1
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.0.copyload.i.i.i.i.i.i14 = load double, ptr %i.dr, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.o, %bb.p
  %i.ds = phi double [ %i.do, %bb.o ], [ %.0.copyload.i.i.i.i.i.i14, %bb.p ]
  %i.dt = fptosi double %i.ds to i64
  br label %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit: ; preds = %bb.g, %bb.f, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %.1104.i = phi i64 [ %i.dt, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ], [ %spec.select193, %bb.f ], [ %i.av, %bb.g ] ; 8 uses
  %i.du = icmp eq i64 %.1104.i, 0
  br i1 %i.du, label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj.exit
  %i.dv = call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr %i.l) #11 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = load i64, ptr %i.dv, align 8            ; 3 uses
  %i.dy = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ea = lshr i64 %i.dx, 32
  %i.eb = trunc nuw i64 %i.ea to i32
  %i.ec = sitofp i32 %i.eb to double
  br label %.critedge120.i

bb.t:                                             ; preds = %bb.r
  %i.ed = add nsw i64 %i.dx, -1
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ef, align 1 ; 6 uses
  %or.cond.i.i = fcmp ueq double %.0.copyload.i.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i.i, label %.critedge120.i.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i)
  %i.eh = fcmp ueq double %i.eg, +inf
  br i1 %i.eh, label %.critedge120.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = fcmp ogt double %.0.copyload.i.i.i.i.i, 0.000000e+00
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ej = call double @llvm.floor.f64(double %.0.copyload.i.i.i.i.i)
  br label %.critedge120.i

bb.x:                                             ; preds = %bb.v
  %i.ek = call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i.i)
  %i.el = fadd double %i.ek, 0.000000e+00
  br label %.critedge120.i

bb.y:                                             ; preds = %bb.q
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.en = load i64, ptr %i.em, align 8
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIndexOfENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

.critedge120.i:                                   ; preds = %bb.s, %bb.u, %bb.w, %bb.x
  %.0150.ph = phi double [ %i.ec, %bb.s ], [ %i.el, %bb.x ], [ %.0.copyload.i.i.i.i.i, %bb.u ], [ %i.ej, %bb.w ] ; 3 uses
end_hunk_1
