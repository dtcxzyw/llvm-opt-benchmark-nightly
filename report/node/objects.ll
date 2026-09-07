Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/objects?download=true
inline.NumInlined: 13178
inline.NumDeleted: 2935
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN2v88internal6Object23CreateListFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementTypesE:bb.a
  %i.ek = atomicrmw volatile add ptr %i.eg, i32 1 acq_rel, align 4, !noalias !283 ; 0 uses
  br label %bb.t

_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread.i.i: ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.em = load atomic i64, ptr %i.el monotonic, align 8
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eo = load atomic i64, ptr %i.en monotonic, align 8 ; 3 uses
  %i.ep = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.eg, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.es, align 4
  %i.et = load ptr, ptr %i.ef, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !inline_history !280
  %i.ew = load ptr, ptr %i.ef, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !inline_history !280
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.ez = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eg, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.fb = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.er, %bb.w ], [ %i.fb, %bb.x ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fc, label %bb.y, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !52

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.u, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread.i.i
  %i.fd = phi i64 [ %i.em, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread.i.i ], [ %i.eo, %bb.y ], [ %i.eo, %bb.u ], [ %i.eo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ]
  %i.fe = add i64 %i.dm, 47
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = add i64 %i.dm, 55
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = add i64 %i.fj, %i.fg
  %i.fl = icmp ugt i64 %i.fk, %i.fd
  %.pre136.pre = load i64, ptr %1, align 8
  br label %_ZNK2v88internal17JSArrayBufferView23IsDetachedOrOutOfBoundsEv.exit.i

_ZNK2v88internal17JSArrayBufferView23IsDetachedOrOutOfBoundsEv.exit.i: ; preds = %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.o
  %.pre136 = phi i64 [ %i.dm, %bb.o ], [ %.pre136.pre, %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 2 uses
  %.0.i.i = phi i1 [ false, %bb.o ], [ %i.fl, %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ]
  %i.fm = icmp ugt i64 %.0.i.i.i, 134217728
  %i.fn = or i1 %i.fm, %.0.i.i
  br i1 %i.fn, label %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK2v88internal17JSArrayBufferView23IsDetachedOrOutOfBoundsEv.exit.i
  %i.fo = add i64 %.pre136, -1
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = load atomic volatile i64, ptr %i.fp monotonic, align 8
  %i.fr = add i64 %i.fq, 14
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = lshr i8 %i.ft, 2
  %i.fv = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.fw = zext nneg i8 %i.fu to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.fz = trunc nuw nsw i64 %.0.i.i.i to i32
  %i.ga = load ptr, ptr %i.fy, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 280
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call ptr %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef %0, ptr nonnull %1, i32 noundef %i.fz) #28, !inline_history !275
  br label %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit

_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit: ; preds = %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit.i, %bb.z
  %.sroa.058.2.i = phi ptr [ %i.cq, %_ZN2v88internal8JSObject22PrototypeHasNoElementsEPNS0_7IsolateENS0_6TaggedIS1_EE.exit.i ], [ %i.gd, %bb.z ] ; 2 uses
  %i.ge = icmp eq ptr %.sroa.058.2.i, null
  br i1 %i.ge, label %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit._ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread_crit_edge, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55

_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit._ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread_crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit
  %.pre = load i64, ptr %1, align 8
  br label %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread

_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread: ; preds = %bb.j, %bb.i, %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit._ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread_crit_edge, %bb.f, %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.a, %bb.e, %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i, %bb.g, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal17JSArrayBufferView23IsDetachedOrOutOfBoundsEv.exit.i
  %i.gf = phi i64 [ %.pre, %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit._ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread_crit_edge ], [ %.pre136, %_ZNK2v88internal17JSArrayBufferView23IsDetachedOrOutOfBoundsEv.exit.i ], [ %.pre135, %bb.f ], [ %.pre134, %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.pre134, %bb.a ], [ %.pre135, %bb.e ], [ %.pre135, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.pre135, %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i ], [ %i.dm, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i ], [ %.pre135, %bb.g ], [ %.pre135, %bb.i ], [ %.pre135, %bb.j ] ; 2 uses
  %i.gg = trunc i64 %i.gf to i1
  br i1 %i.gg, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread
  %i.gh = add nsw i64 %i.gf, -1
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load atomic volatile i64, ptr %i.gi monotonic, align 8
  %i.gk = add i64 %i.gj, 11
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load atomic volatile i16, ptr %i.gl monotonic, align 2
  %i.gn = icmp ugt i16 %i.gm, 299
  br i1 %i.gn, label %bb.ab, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit.thread, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.go = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.323, i64 23, i8 noundef zeroext 0) #28 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.aa, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !52

bb.aa:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.411) #29
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.go, ptr %5, align 8
  %i.gq = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 33, ptr nonnull %5, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split

bb.ab:                                            ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.gr = call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr nonnull %1) ; 2 uses
  %.not127 = icmp eq ptr %i.gr, null
  br i1 %.not127, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = load i64, ptr %i.gr, align 8            ; 4 uses
  %i.gt = and i64 %i.gs, 1
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.ad, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.gv = icmp sgt i64 %i.gs, -1
  br i1 %i.gv, label %bb.ae, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.gw = lshr i64 %i.gs, 32
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  br label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit

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
  %wide.trip.count = zext nneg i32 %.0 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %0, ptr nonnull %1, ptr null, i64 noundef %indvars.iv, ptr nonnull %1, i32 noundef 3)
  %i.hu = load i32, ptr %i.hp, align 4
  %.not.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread, label %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread: ; preds = %bb.ai
  %i.hv = load ptr, ptr %i.hq, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aj

_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit: ; preds = %bb.ai
  %i.hx = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not128 = icmp eq ptr %i.hx, null
  br i1 %.not128, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55, label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread
  %.sroa.05.0.i124 = phi ptr [ %i.hw, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit.thread ], [ %i.hx, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ] ; 5 uses
  br i1 %cond1, label %bb.ak, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.hy = load i64, ptr %.sroa.05.0.i124, align 8 ; 2 uses
  %i.hz = trunc i64 %i.hy to i1
  br i1 %i.hz, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ak
  %i.ia = add nsw i64 %i.hy, -1
  %i.ib = inttoptr i64 %i.ia to ptr               ; 2 uses
  %i.ic = load atomic volatile i64, ptr %i.ib monotonic, align 8
  %i.id = add i64 %i.ic, 11
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = load atomic volatile i16, ptr %i.ie monotonic, align 2
  %i.ig = icmp ult i16 %i.if, 129
  br i1 %i.ig, label %bb.al, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ak, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.05.0.i124, ptr %3, align 8
  %i.ih = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 131, ptr nonnull %3, i64 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split

bb.al:                                            ; preds = %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ii = load atomic volatile i64, ptr %i.ib monotonic, align 8
  %i.ij = add i64 %i.ii, 11
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = load atomic volatile i16, ptr %i.ik monotonic, align 2
  %i.im = and i16 %i.il, -96
  %.not.i57 = icmp eq i16 %i.im, 32
  br i1 %.not.i57, label %bb.am, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.am:                                            ; preds = %bb.al
  %i.in = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !54, !noundef !55
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = load i8, ptr %i.hr, align 8, !range !54
  %i.iq = trunc nuw i8 %i.ip to i1
  %not..i.i.i = xor i1 %i.io, true
  %i.ir = select i1 %not..i.i.i, i1 true, i1 %i.iq
  br i1 %i.ir, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.is = load i8, ptr %i.hs, align 8, !range !54, !noundef !55
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.an
  %i.iu = load ptr, ptr %i.ht, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.am
  %.pn.i.i = phi ptr [ %i.iu, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %0, %bb.am ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.iv = load ptr, ptr %.in.i.i, align 8
  %i.iw = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.sroa.05.0.i124) #28
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i, %bb.al, %bb.aj
  %.sroa.066.0 = phi ptr [ %.sroa.05.0.i124, %bb.aj ], [ %i.iw, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.05.0.i124, %bb.al ]
  %i.ix = load i64, ptr %i.ho, align 8
  %i.iy = add i64 %i.ix, -1                       ; 3 uses
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = load i64, ptr %.sroa.066.0, align 8     ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.ja, ptr %i.jc monotonic, align 8
  %i.jd = trunc i64 %i.ja to i1
  br i1 %i.jd, label %bb.ap, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.ap:                                            ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  %i.je = or disjoint i64 %i.iy, 1                ; 2 uses
  %i.jf = ptrtoint ptr %i.jc to i64               ; 2 uses
  %i.jg = and i64 %i.iy, -262144
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = load i64, ptr %i.jh, align 262144       ; 2 uses
  %i.jj = and i64 %i.ji, 32
  %.not.i.i.i.i.i59 = icmp eq i64 %i.jj, 0
  %i.jk = and i64 %i.ji, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not37.i.i.i.i.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.jl = and i64 %i.ja, -262144
  %i.jm = inttoptr i64 %i.jl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.jm, align 262144
  %i.jn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.jn, 0
  br i1 %.not38.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.je, i64 noundef %i.jf, i64 %i.ja) #28
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br i1 %.not.i.i.i.i.i59, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.at, !prof !58

bb.at:                                            ; preds = %bb.as
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.je, i64 %i.jf, i64 %i.ja) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit, %bb.as, %bb.at
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55, label %bb.ai, !llvm.loop !281

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sink147 = phi ptr [ %i.ih, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.hn, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread ], [ %i.gq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ]
  %i.jo = load i64, ptr %.sink147, align 8
  %i.jp = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.jo, ptr noundef null) #28 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split, %bb.ah, %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit, %bb.ab
  %.sroa.081.4 = phi ptr [ %.sroa.058.2.i, %_ZN2v88internal12_GLOBAL__N_131CreateListFromArrayLikeFastPathEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_12ElementTypesE.exit ], [ %i.ho, %bb.ah ], [ null, %bb.ab ], [ null, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit55.sink.split ], [ %i.ho, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ null, %_ZN2v88internal10JSReceiver10GetElementEPNS0_7IsolateENS0_12DirectHandleIS1_EEj.exit ]
  ret ptr %.sroa.081.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
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
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
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
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !54, !noundef !55
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !54
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !54, !noundef !55
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30, !inline_history !41
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a) #28, !inline_history !41
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #28, !inline_history !41
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.e

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false), !inline_history !41 ; 2 uses
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
  br i1 %i.bf, label %bb.g, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !52

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
end_hunk_0
