inline.NumInlined: 803
inline.NumDeleted: 465
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal26GlobalBackingStoreRegistry5PurgeEPNS0_7IsolateE:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp eq ptr %i.cj, %0
  br i1 %i.ck, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit58, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.cm = add nsw i64 %.052.i.i.i, -1
  %i.cn = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cn, label %bb.ab, label %._crit_edge.loopexit.i.i.i, !llvm.loop !46

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.af
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bu, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNK2v88internal12BackingStore27get_shared_wasm_memory_dataEv.exit
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bw, %_ZNK2v88internal12BackingStore27get_shared_wasm_memory_dataEv.exit ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.br, %_ZNK2v88internal12BackingStore27get_shared_wasm_memory_dataEv.exit ] ; 5 uses
  %i.co = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.co, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread [
    i64 3, label %bb.ag
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.cp = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.cq = icmp eq ptr %i.cp, %0
  br i1 %i.cq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.ah
  %.sroa.032.1.i.i.i = phi ptr [ %i.cr, %bb.ah ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cs = load ptr, ptr %.sroa.032.1.i.i.i, align 8
  %i.ct = icmp eq ptr %i.cs, %0
  br i1 %i.ct, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ai
  %.sroa.032.2.i.i.i = phi ptr [ %i.cu, %bb.ai ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.032.2.i.i.i, align 8
  %i.cw = icmp eq ptr %i.cv, %0
  %spec.select.i.i.i = select i1 %i.cw, ptr %.sroa.032.2.i.i.i, ptr %i.bt
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit56: ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit58: ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.ab, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit56, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit58, %bb.ag, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.ag ], [ %i.cz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit58 ], [ %i.cy, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit56 ], [ %i.cx, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.ab ] ; 2 uses
  %i.da = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bt
  br i1 %i.da, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.db = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.dc = load ptr, ptr %i.db, align 8
  store ptr %i.dc, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  %i.dd = load ptr, ptr %i.bs, align 8
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  store ptr %i.de, ptr %i.bs, align 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, %bb.aj, %bb.w, %_ZNSt6vectorISt10shared_ptrIN2v88internal12BackingStoreEESaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit
  %i.df = load ptr, ptr %i.e, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dg, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4
  %i.dl = load ptr, ptr %i.df, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #16, !inline_history !47
  %i.do = load ptr, ptr %i.df, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #16, !inline_history !47
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.dr = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i17 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i17, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i = phi i32 [ %i.dj, %bb.an ], [ %i.dt, %bb.ao ]
  %i.du = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.du, label %bb.ap, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7IsolateESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.sroa.021.0 = load ptr, ptr %.sroa.021.037, align 8 ; 2 uses
  %i.dv = icmp eq ptr %.sroa.021.0, null
  br i1 %i.dv, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12BackingStore29UpdateSharedWasmMemoryObjectsEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal26GlobalBackingStoreRegistry29UpdateSharedWasmMemoryObjectsEPNS0_7IsolateE(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal26GlobalBackingStoreRegistry29UpdateSharedWasmMemoryObjectsEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.528", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 15
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32                        ; 2 uses
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

._crit_edge:                                      ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %.pre = load i32, ptr %i.e, align 8
  %.pre56 = load ptr, ptr %i.c, align 8
  %i.p = add nsw i32 %.pre, -1
  %i.q = icmp eq ptr %.pre56, %i.d
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.p, ptr %i.e, align 8
  br i1 %i.q, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %._crit_edge
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %._crit_edge.thread, %bb.b, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.r = load i64, ptr %i.h, align 8
  %i.s = shl nuw nsw i64 %indvars.iv, 3
  %i.t = add nuw nsw i64 %i.s, 23
  %i.u = add i64 %i.r, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 3 uses
  %i.x = trunc i64 %i.w to i1
  %i.y = and i64 %i.w, 4294967295
  %i.z = icmp ne i64 %i.y, 3
  %i.aa = and i1 %i.z, %i.x
  br i1 %i.aa, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ab = and i64 %i.w, -3                        ; 3 uses
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.af = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
  %.0.i16 = phi ptr [ %i.af, %bb.d ], [ %i.ac, %bb.c ] ; 3 uses
  %i.ag = ptrtoint ptr %.0.i16 to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.a, align 8
  store i64 %i.ab, ptr %.0.i16, align 8
  %i.aj = add i64 %i.ab, 23
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, 71
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i32, ptr %i.an monotonic, align 4
  %i.ap = and i32 %i.ao, 32
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 %i.ab, ptr %1, align 8
  call void @_ZN2v88internal16WasmMemoryObject15UpdateInstancesEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.aq = call ptr @_ZN2v88internal16WasmMemoryObject19RefreshSharedBufferEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_13ResizableFlagE(ptr noundef nonnull %0, ptr nonnull %.0.i16, i8 noundef zeroext 0) #16 ; 0 uses
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.e, %bb.f, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49
}

; Function Attrs: mustprogress norecurse nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal12BackingStore27MakeWasmMemoryResizableByJSEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(58) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load atomic i16, ptr %i.a monotonic, align 8 ; 4 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = or i16 %i.b, 2
  %i.d = cmpxchg weak ptr %i.a, i16 %i.b, i16 %i.c monotonic monotonic, align 2 ; 2 uses
  %i.e = extractvalue { i16, i1 } %i.d, 1
  br i1 %i.e, label %_ZN2v88internal12BackingStore8set_flagENS1_4FlagE.exit, label %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i

_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i: ; preds = %bb.b, %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i
  %i.f = phi { i16, i1 } [ %i.i, %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i ], [ %i.d, %bb.b ]
  %i.g = extractvalue { i16, i1 } %i.f, 0         ; 2 uses
  %i.h = or i16 %i.g, 2
  %i.i = cmpxchg weak ptr %i.a, i16 %i.g, i16 %i.h monotonic monotonic, align 2 ; 2 uses
  %i.j = extractvalue { i16, i1 } %i.i, 1
  br i1 %i.j, label %_ZN2v88internal12BackingStore8set_flagENS1_4FlagE.exit, label %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i, !llvm.loop !17

bb.c:                                             ; preds = %bb.a
  %i.k = and i16 %i.b, -3
  %i.l = cmpxchg weak ptr %i.a, i16 %i.b, i16 %i.k monotonic monotonic, align 2 ; 2 uses
  %i.m = extractvalue { i16, i1 } %i.l, 1
  br i1 %i.m, label %_ZN2v88internal12BackingStore8set_flagENS1_4FlagE.exit, label %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i1

_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i1: ; preds = %bb.c, %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i1
  %i.n = phi { i16, i1 } [ %i.q, %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i1 ], [ %i.l, %bb.c ]
  %i.o = extractvalue { i16, i1 } %i.n, 0         ; 2 uses
  %i.p = and i16 %i.o, -3
  %i.q = cmpxchg weak ptr %i.a, i16 %i.o, i16 %i.p monotonic monotonic, align 2 ; 2 uses
  %i.r = extractvalue { i16, i1 } %i.q, 1
  br i1 %i.r, label %_ZN2v88internal12BackingStore8set_flagENS1_4FlagE.exit, label %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i1, !llvm.loop !12

_ZN2v88internal12BackingStore8set_flagENS1_4FlagE.exit: ; preds = %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i1, %_ZNSt6atomicIN2v84base7EnumSetINS0_8internal12BackingStore4FlagEtEEE21compare_exchange_weakERS6_S6_St12memory_orderS9_.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal12BackingStore13ResizeInPlaceEPNS0_7IsolateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(58) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal16AllocatePageSizeEv() #16 ; 6 uses
  %i.b = icmp ugt i64 %2, 9007199254740991
  br i1 %i.b, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -1                         ; 2 uses
  %i.d = add i64 %i.c, %2
  %i.e = sub nsw i64 0, %i.a                      ; 2 uses
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp ugt i64 %i.f, 9007199254740991
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !50

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = udiv i64 %i.f, %i.a                      ; 3 uses
  %i.h = mul i64 %i.g, %i.a                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ult i64 %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  %i.n = load atomic i64, ptr %i.i seq_cst, align 8
  %i.o = sub i64 %i.n, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  %i.p = load atomic i64, ptr %i.i seq_cst, align 8 ; 2 uses
  %i.q = icmp ugt i64 %i.p, 9007199254740991
  br i1 %i.q, label %bb.g, label %bb.f, !prof !50

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %i.c, %i.p
  %i.s = and i64 %i.r, %i.e                       ; 2 uses
  %.not.i23 = icmp ugt i64 %i.s, 9007199254740991
  br i1 %.not.i23, label %bb.g, label %bb.h, !prof !50

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = udiv i64 %i.s, %i.a                      ; 2 uses
  %i.u = icmp samesign ult i64 %i.g, %i.t
  br i1 %i.u, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #16
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.h
  %i.y = sub nuw nsw i64 %i.t, %i.g
  %i.z = mul i64 %i.y, %i.a
  %i.aa = tail call noundef zeroext i1 @_ZN2v88internal14SetPermissionsEPNS_13PageAllocatorEPvmNS1_10PermissionE(ptr noundef %i.v, ptr noundef %i.x, i64 noundef %i.z, i32 noundef 0) #16
  br i1 %i.aa, label %.sink.split, label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.ab = load atomic i64, ptr %i.i seq_cst, align 8
  %i.ac = icmp eq i64 %2, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #16
  %i.ae = load ptr, ptr %0, align 8
  %i.af = tail call noundef zeroext i1 @_ZN2v88internal14SetPermissionsEPNS_13PageAllocatorEPvmNS1_10PermissionE(ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef %i.h, i32 noundef 2) #16
  br i1 %i.af, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.h, %bb.i
  store atomic i64 %2, ptr %i.i seq_cst, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.i, %bb.k, %bb.j
  %.2 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ], [ 1, %bb.i ], [ 0, %.sink.split ]
  ret i32 %.2
}

declare noundef i64 @_ZN2v88internal16AllocatePageSizeEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN2v88internal12BackingStore11GrowInPlaceEPNS0_7IsolateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(58) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN2v88internal16AllocatePageSizeEv() #16 ; 3 uses
  %i.b = icmp ugt i64 %2, 9007199254740991
  br i1 %i.b, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %2, -1
  %i.d = add i64 %i.c, %i.a
  %i.e = sub nsw i64 0, %i.a
  %i.f = and i64 %i.d, %i.e                       ; 3 uses
  %.not.i = icmp ugt i64 %i.f, 9007199254740991
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !50

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = urem i64 %i.f, %i.a
  %i.h = sub nuw nsw i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8 ; 2 uses
  %i.k = icmp ult i64 %2, %i.j
  br i1 %i.k, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit
  %.01521 = phi i64 [ %i.r, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = icmp eq i64 %2, %.01521
  br i1 %i.l, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.m = tail call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #16
  %i.n = load ptr, ptr %0, align 8
  %i.o = tail call noundef zeroext i1 @_ZN2v88internal14SetPermissionsEPNS_13PageAllocatorEPvmNS1_10PermissionE(ptr noundef %i.m, ptr noundef %i.n, i64 noundef %i.h, i32 noundef 2) #16
  br i1 %i.o, label %bb.f, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = cmpxchg weak ptr %i.i, i64 %.01521, i64 %2 seq_cst seq_cst, align 8 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit: ; preds = %bb.f
  %i.r = extractvalue { i64, i1 } %i.p, 0         ; 2 uses
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.thread, label %.lr.ph, !llvm.loop !51

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.thread: ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit, %.lr.ph, %bb.e, %bb.f, %bb.d
  %.0 = phi i32 [ 2, %bb.d ], [ 1, %bb.e ], [ 0, %.lr.ph ], [ 0, %bb.f ], [ 2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12BackingStore14WrapAllocationEPvmPFvS2_mS2_ES2_NS0_10SharedFlagE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %3, @_ZN2v812BackingStore12EmptyDeleterEPvmS1_
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 9 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
end_hunk_0
