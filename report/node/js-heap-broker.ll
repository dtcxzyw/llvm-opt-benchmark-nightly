inline.NumInlined: 11774
inline.NumDeleted: 2379
begin_hunk_0_@_ZN2v88internal8compiler12JSHeapBroker35ProcessFeedbackMapsForElementAccessERNS0_10ZoneVectorINS1_6MapRefEEERKNS1_15KeyedAccessModeENS0_16FeedbackSlotKindE:bb.a
  br i1 %i.ao, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.ap = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %.092) #24
  %i.aq = icmp ult i8 %i.ap, 6
  br i1 %i.aq, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ar = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %.092) #24
  %.not38 = icmp eq i8 %i.ar, 0
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %.092) #24
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %7)
  %.pre.i.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit

_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit: ; preds = %bb.e, %bb.f
  %i.ax = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.b, align 8
  store i64 %i.at, ptr %i.ax, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit, %bb.d, %bb.c, %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.n
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge97.loopexit:                           ; preds = %bb.ai
  %.pre105 = load ptr, ptr %i.r, align 8
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %._crit_edge
  %i.ba = phi ptr [ %.pre105, %._crit_edge97.loopexit ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = icmp ult i64 %i.bf, 40
  br i1 %i.bg, label %bb.h, label %_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit, !prof !5

bb.h:                                             ; preds = %._crit_edge97
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 noundef 40) #24
  %.pre.i.i = load i64, ptr %i.bd, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit: ; preds = %._crit_edge97, %bb.h
  %i.bh = phi i64 [ %.pre.i.i, %bb.h ], [ %i.be, %._crit_edge97 ] ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 8 uses
  %i.bj = add i64 %i.bh, 40
  store i64 %i.bj, ptr %i.bd, align 8
  store i32 4, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i8 %3, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bl, ptr noundef nonnull readonly align 1 dereferenceable(3) %2, i64 3, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.u
  br i1 %i.bp, label %._crit_edge100.thread, label %.lr.ph99, !prof !25

.lr.ph99:                                         ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  br label %bb.aj

bb.i:                                             ; preds = %.lr.ph96, %bb.ai
  %.03694 = phi ptr [ %i.q, %.lr.ph96 ], [ %i.fr, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bs = load i64, ptr %.03694, align 8
  store i64 %i.bs, ptr %9, align 8
  %i.bt = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br i1 %i.bt, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.bu = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  %.pre104 = load ptr, ptr %0, align 8            ; 2 uses
  br i1 %.not.i, label %bb.k, label %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre104, i64 63936
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit

_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit: ; preds = %bb.j, %bb.k
  %i.bx = phi ptr [ %i.bw, %bb.k ], [ %i.bu, %bb.j ] ; 2 uses
  store ptr %i.aa, ptr %10, align 8
  %i.by = load i32, ptr %i.aa, align 8            ; 2 uses
  store i32 %i.by, ptr %i.ab, align 8
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  store ptr null, ptr %i.ac, align 8
  br i1 %i.bz, label %bb.l, label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit

bb.l:                                             ; preds = %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre104, i64 58720 ; 2 uses
  store ptr %i.cb, ptr %i.ac, align 8
  %i.cc = call noundef zeroext i1 @_ZN2v84base5Mutex7TryLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #24
  br i1 %i.cc, label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !7, !noundef !8
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load ptr, ptr %i.ca, align 8
  %i.ch = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN2v88internal4Heap5stackEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.cg) #24 ; 2 uses
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.ca, ptr %6, align 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull %6, ptr noundef nonnull @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit

bb.o:                                             ; preds = %bb.m
  %i.ci = call noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ca, ptr %4, align 8
  store ptr %i.ac, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 %i.ci, ptr %5, align 8
  store ptr %4, ptr %i.ae, align 8
  call void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull %5, ptr noundef nonnull @_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit

_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit: ; preds = %bb.o, %bb.n, %_ZNK2v88internal8compiler12JSHeapBroker24local_isolate_or_isolateEv.exit, %bb.l
  %i.cj = load ptr, ptr %10, align 8              ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.cm = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  %i.cn = load i64, ptr %i.cm, align 8
  store i64 %i.cn, ptr %11, align 8
  %i.co = load ptr, ptr %0, align 8
  %i.cp = load ptr, ptr %7, align 8               ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  %i.cv = call i64 @_ZN2v88internal3Map31FindElementsKindTransitionedMapEPNS0_7IsolateENS_10MemorySpanINS0_12DirectHandleIS1_EEEENS0_15ConcurrencyModeE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.co, ptr %i.cp, i64 %i.cu, i8 noundef zeroext 1) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.cw = load ptr, ptr %10, align 8              ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN2v88internal18ParkedMutexGuardIfC2EPNS0_9LocalHeapEPNS_4base5MutexEb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.da = icmp eq i64 %i.cv, 0
  br i1 %i.da, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.i, %bb.q
  %.sroa.010.0.copyload = load ptr, ptr %9, align 8
  %i.db = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 6 uses
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = sub i64 %i.dd, %i.df
  %i.dh = icmp ult i64 %i.dg, 8
  br i1 %i.dh, label %bb.r, label %.lr.ph.i, !prof !5

bb.r:                                             ; preds = %.thread
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.db, i64 noundef 8) #24
  %.pre.i.i.i39 = load i64, ptr %i.de, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.thread
  %i.di = phi i64 [ %.pre.i.i.i39, %bb.r ], [ %i.df, %.thread ] ; 5 uses
  %i.dj = inttoptr i64 %i.di to ptr               ; 3 uses
  %i.dk = add i64 %i.di, 8
  store i64 %i.dk, ptr %i.de, align 8
  %i.dl = ptrtoint ptr %.sroa.010.0.copyload to i64
  store i64 %i.dl, ptr %i.dj, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.dm = load i64, ptr %9, align 8
  store i64 %i.dm, ptr %12, align 8
  store ptr %i.db, ptr %i.ak, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.dn = ptrtoint ptr %14 to i64                 ; 2 uses
  %i.do = sub i64 %i.dn, %i.di                    ; 7 uses
  %.not.i45.not = icmp eq i64 %i.di, %i.dn
  br i1 %.not.i45.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.dp = getelementptr inbounds nuw i8, ptr null, i64 %i.do
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit

bb.t:                                             ; preds = %.lr.ph.i
  %i.dq = icmp sgt i64 %i.do, -1
  br i1 %i.dq, label %bb.v, label %bb.u, !prof !6

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #25
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dr = load i64, ptr %i.dc, align 8
  %i.ds = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ugt i64 %i.do, %i.dt
  br i1 %i.du, label %bb.w, label %bb.x, !prof !5

bb.w:                                             ; preds = %bb.v
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.db, i64 noundef %i.do) #24
  %.pre.i.i.i47 = load i64, ptr %i.de, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dv = phi i64 [ %.pre.i.i.i47, %bb.w ], [ %i.ds, %bb.v ] ; 2 uses
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = add i64 %i.dv, %i.do
  store i64 %i.dx, ptr %i.de, align 8
  store ptr %i.dw, ptr %i.al, align 8
  %i.dy = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dw, ptr nonnull align 8 %i.dj, i64 %i.do, i1 false)
  %.pre.i46 = load ptr, ptr %i.al, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 %i.do ; 2 uses
  store ptr %i.dz, ptr %i.am, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit: ; preds = %bb.s, %bb.x
  %storemerge131 = phi ptr [ %i.dz, %bb.x ], [ %i.dp, %bb.s ]
  store ptr %storemerge131, ptr %i.an, align 8
  %i.ea = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler6MapRefESt4pairIKS3_NS1_10ZoneVectorIS3_EEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE16_M_insert_uniqueIS8_EES4_ISt17_Rb_tree_iteratorIS8_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(40) %12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ai

bb.y:                                             ; preds = %bb.q
  %i.eb = call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef nonnull %0, i64 %i.cv, i32 3) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i, label %bb.z, label %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_3MapEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit, !prof !5

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43) #25
  unreachable

_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_3MapEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit: ; preds = %bb.y
  %i.ec = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 6 uses
  %i.eg = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.eh = sub i64 %i.ee, %i.eg
  %i.ei = icmp ult i64 %i.eh, 8
  br i1 %i.ei, label %bb.aa, label %.lr.ph.i40, !prof !5

bb.aa:                                            ; preds = %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_3MapEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i64 noundef 8) #24
  %.pre.i.i.i42 = load i64, ptr %i.ef, align 8
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.aa, %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_3MapEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit
  %i.ej = phi i64 [ %.pre.i.i.i42, %bb.aa ], [ %i.eg, %_ZN2v88internal8compiler24MakeRefAssumeMemoryFenceINS0_3MapEEENS1_10ref_traitsIT_E8ref_typeEPNS1_12JSHeapBrokerENS0_6TaggedIS5_EEQ12is_subtype_vIS5_NS0_6ObjectEE.exit ] ; 5 uses
  %i.ek = inttoptr i64 %i.ej to ptr               ; 3 uses
  %i.el = add i64 %i.ej, 8
  store i64 %i.el, ptr %i.ef, align 8
  %i.em = ptrtoint ptr %i.eb to i64               ; 2 uses
  store i64 %i.em, ptr %i.ek, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store i64 %i.em, ptr %13, align 8
  store ptr %i.ec, ptr %i.ag, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.en = ptrtoint ptr %15 to i64                 ; 2 uses
  %i.eo = sub i64 %i.en, %i.ej                    ; 7 uses
  %.not.i48.not = icmp eq i64 %i.ej, %i.en
  br i1 %.not.i48.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i40
  %i.ep = getelementptr inbounds nuw i8, ptr null, i64 %i.eo
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit54

bb.ac:                                            ; preds = %.lr.ph.i40
  %i.eq = icmp sgt i64 %i.eo, -1
  br i1 %i.eq, label %bb.ae, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #25
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.er = load i64, ptr %i.ed, align 8
  %i.es = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.et = sub i64 %i.er, %i.es
  %i.eu = icmp ugt i64 %i.eo, %i.et
  br i1 %i.eu, label %bb.af, label %bb.ag, !prof !5

bb.af:                                            ; preds = %bb.ae
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i64 noundef %i.eo) #24
  %.pre.i.i.i52 = load i64, ptr %i.ef, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ev = phi i64 [ %.pre.i.i.i52, %bb.af ], [ %i.es, %bb.ae ] ; 2 uses
  %i.ew = inttoptr i64 %i.ev to ptr               ; 2 uses
  %i.ex = add i64 %i.ev, %i.eo
  store i64 %i.ex, ptr %i.ef, align 8
  store ptr %i.ew, ptr %i.ah, align 8
  %i.ey = icmp ne i64 %i.ej, 0
  call void @llvm.assume(i1 %i.ey)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ew, ptr nonnull align 8 %i.ek, i64 %i.eo, i1 false)
  %.pre.i51 = load ptr, ptr %i.ah, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 %i.eo ; 2 uses
  store ptr %i.ez, ptr %i.ai, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit54

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit54: ; preds = %bb.ab, %bb.ag
  %storemerge = phi ptr [ %i.ez, %bb.ag ], [ %i.ep, %bb.ab ]
  store ptr %storemerge, ptr %i.aj, align 8
  %i.fa = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler6MapRefESt4pairIKS3_NS1_10ZoneVectorIS3_EEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE16_M_insert_uniqueIS8_EES4_ISt17_Rb_tree_iteratorIS8_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(40) %13)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.fa, 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.fb = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 56 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 64
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = icmp ult ptr %i.fc, %i.fe
  br i1 %i.ff, label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE9push_backERKS3_.exit, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit54
  %i.fg = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = ptrtoint ptr %i.fe to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 3
  %i.fn = add nsw i64 %i.fm, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 noundef %i.fn)
  %.pre.i = load ptr, ptr %i.fb, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE9push_backERKS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE9push_backERKS3_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit54, %bb.ah
  %i.fo = phi ptr [ %i.fc, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit54 ], [ %.pre.i, %bb.ah ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fp, ptr %i.fb, align 8
  %i.fq = load i64, ptr %9, align 8
  store i64 %i.fq, ptr %i.fo, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE9push_backERKS3_.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fr = getelementptr inbounds nuw i8, ptr %.03694, i64 8 ; 2 uses
  %.not37 = icmp eq ptr %i.fr, %i.p
  br i1 %.not37, label %._crit_edge97.loopexit, label %bb.i

._crit_edge100:                                   ; preds = %_ZN2v88internal8compiler21ElementAccessFeedback8AddGroupEONS0_10ZoneVectorINS1_6MapRefEEE.exit
  %.pre106 = load ptr, ptr %i.bq, align 8
  %.pre107 = load ptr, ptr %i.bn, align 8
  %i.fs = icmp eq ptr %.pre106, %.pre107
  br i1 %i.fs, label %._crit_edge100.thread, label %bb.an, !prof !31

bb.aj:                                            ; preds = %.lr.ph99, %_ZN2v88internal8compiler21ElementAccessFeedback8AddGroupEONS0_10ZoneVectorINS1_6MapRefEEE.exit
  %.sroa.055.098 = phi ptr [ %i.bo, %.lr.ph99 ], [ %i.gs, %_ZN2v88internal8compiler21ElementAccessFeedback8AddGroupEONS0_10ZoneVectorINS1_6MapRefEEE.exit ] ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.055.098, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.055.098, i64 56 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.055.098, i64 48 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %bb.ak, label %bb.al, !prof !5

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #25
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fz = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.ga = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.gb = icmp ult ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZN2v88internal8compiler21ElementAccessFeedback8AddGroupEONS0_10ZoneVectorINS1_6MapRefEEE.exit, label %bb.am, !prof !6

bb.am:                                            ; preds = %bb.al
  %i.gc = load ptr, ptr %i.bn, align 8
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 5
  %i.gh = add nsw i64 %i.gg, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS1_INS0_8compiler6MapRefEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %i.gh)
  %.pre.i.i.i44 = load ptr, ptr %i.bq, align 8
  br label %_ZN2v88internal8compiler21ElementAccessFeedback8AddGroupEONS0_10ZoneVectorINS1_6MapRefEEE.exit

_ZN2v88internal8compiler21ElementAccessFeedback8AddGroupEONS0_10ZoneVectorINS1_6MapRefEEE.exit: ; preds = %bb.al, %bb.am
  %i.gi = phi ptr [ %i.fz, %bb.al ], [ %.pre.i.i.i44, %bb.am ] ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store ptr %i.gj, ptr %i.bq, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gi, i8 0, i64 32, i1 false)
  %i.gn = load ptr, ptr %i.ft, align 8
  store ptr %i.gn, ptr %i.gi, align 8
  %i.go = load ptr, ptr %i.fw, align 8
  store ptr %i.go, ptr %i.gk, align 8
  %i.gp = load ptr, ptr %i.fu, align 8
  store ptr %i.gp, ptr %i.gl, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.055.098, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8
  store ptr %i.gr, ptr %i.gm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i8 0, i64 24, i1 false)
  %i.gs = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.055.098) #27 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.u
  br i1 %i.gt, label %._crit_edge100, label %bb.aj

._crit_edge100.thread:                            ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit, %._crit_edge100
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22) #25
  unreachable

bb.an:                                            ; preds = %._crit_edge100
  %i.gu = load ptr, ptr %i.v, align 8
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler6MapRefESt4pairIKS3_NS1_10ZoneVectorIS3_EEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %i.bi
}

declare noundef zeroext i1 @_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN2v88internal8compiler12JSHeapBroker41ProcessFeedbackMapsForKeyedPropertyAccessERNS0_10ZoneVectorINS1_6MapRefEEERKNS1_15KeyedAccessModeENS0_16FeedbackSlotKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8560) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %2, i8 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 40
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 40) #24
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler21ElementAccessFeedbackEJPS1_RKNS3_15KeyedAccessModeERNS0_16FeedbackSlotKindEEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 8 uses
  %i.k = add i64 %i.i, 40
  store i64 %i.k, ptr %i.e, align 8
  store i32 4, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i8 %3, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(3) %2, i64 3, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
end_hunk_0
