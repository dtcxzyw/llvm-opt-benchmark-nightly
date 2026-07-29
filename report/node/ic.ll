inline.NumInlined: 5609
inline.NumDeleted: 1806
begin_hunk_0_@_ZN2v88internal2IC19UpdatePolymorphicICENS0_12DirectHandleINS0_4NameEEERKNS0_23MaybeObjectDirectHandleE:bb.a
  %i.ah = load i8, ptr %i.ag, align 8, !range !6, !noundef !7
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal15MapsAndHandlers7reserveEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = icmp eq ptr %.sroa.0.0.copyload.i78, null
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.t
  %.051146 = phi i32 [ 0, %.lr.ph ], [ %.354, %bb.t ] ; 8 uses
  %.056145 = phi i32 [ -1, %.lr.ph ], [ %.359, %bb.t ] ; 4 uses
  %.061144 = phi i32 [ 0, %.lr.ph ], [ %.263, %bb.t ] ; 7 uses
  %.sroa.0.0.copyload.i79 = load i64, ptr %i.aj, align 8 ; 4 uses
  %i.ao = and i64 %.sroa.0.0.copyload.i79, 4294967295
  %i.ap = icmp eq i64 %i.ao, 3
  br i1 %i.ap, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.i, align 8             ; 6 uses
  %i.ar = and i64 %.sroa.0.0.copyload.i79, 3
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %bb.h, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.at = and i64 %.sroa.0.0.copyload.i79, -3
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 560 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 568
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.az = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.aq) #22
  br label %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.az, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %i.ba = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.bb = add i64 %i.ba, 8
  %i.bc = inttoptr i64 %i.bb to ptr
  store ptr %i.bc, ptr %i.au, align 8
  store i64 %i.at, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 560 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 568
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.j, label %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.j:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.bi = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.aq) #22
  br label %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.j, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i8.i = phi ptr [ %i.bi, %bb.j ], [ %i.be, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 2 uses
  %i.bj = ptrtoint ptr %.0.i.i8.i to i64          ; 2 uses
  %i.bk = add i64 %i.bj, 8
  %i.bl = inttoptr i64 %i.bk to ptr
  store ptr %i.bl, ptr %i.bd, align 8
  store i64 %.sroa.0.0.copyload.i79, ptr %.0.i.i8.i, align 8
  br label %_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %storemerge19.i = phi i64 [ %i.bj, %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ba, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %storemerge.i = phi i32 [ 1, %_ZN2v88internal12DirectHandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 0, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %i.bm = inttoptr i64 %storemerge19.i to ptr     ; 2 uses
  %.sroa.0.0.copyload.i81 = load i64, ptr %i.ak, align 8
  %i.bn = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 560 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 568
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.k, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !8

bb.k:                                             ; preds = %_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit
  %i.bt = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bn) #22
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit, %bb.k
  %.0.i77 = phi ptr [ %i.bt, %bb.k ], [ %i.bp, %_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit ] ; 6 uses
  %i.bu = ptrtoint ptr %.0.i77 to i64             ; 2 uses
  %i.bv = add i64 %i.bu, 8
  %i.bw = inttoptr i64 %i.bv to ptr
  store ptr %i.bw, ptr %i.bo, align 8
  store i64 %.sroa.0.0.copyload.i81, ptr %.0.i77, align 8
  %i.bx = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.by = load ptr, ptr %i.l, align 8
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.l, label %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i, !prof !8

bb.l:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %3)
  %.pre.i.i.i.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i

_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i: ; preds = %bb.l, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.ca = phi ptr [ %.pre.i.i.i.i, %bb.l ], [ %i.bx, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.k, align 8
  store i64 %i.bu, ptr %i.ca, align 8
  %i.cc = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.cd = load ptr, ptr %i.p, align 8
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.m, label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i, !prof !8

bb.m:                                             ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %.pre.i.i.i1.i = load ptr, ptr %i.o, align 8
  br label %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i

_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i: ; preds = %bb.m, %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i
  %i.cf = phi ptr [ %.pre.i.i.i1.i, %bb.m ], [ %i.cc, %_ZN2v88internal23DirectHandleSmallVectorINS0_3MapELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cg, ptr %i.o, align 8
  store i64 %storemerge19.i, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ci = load ptr, ptr %i.t, align 8
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.n, label %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit, !prof !8

bb.n:                                             ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
  %.pre.i.i.i = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit

_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit: ; preds = %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i, %bb.n
  %i.ck = phi ptr [ %.pre.i.i.i, %bb.n ], [ %i.ch, %_ZN2v88internal23DirectHandleSmallVectorINS0_6ObjectELm4EE9push_backERKNS0_12DirectHandleIS2_EE.exit.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cl, ptr %i.s, align 8
  store i32 %storemerge.i, ptr %i.ck, align 4
  %i.cm = load i64, ptr %.0.i77, align 8
  %i.cn = add i64 %i.cm, 15
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load atomic volatile i32, ptr %i.co acquire, align 4
  %i.cq = and i32 %i.cp, 16777216
  %.not140 = icmp eq i32 %i.cq, 0
  br i1 %.not140, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit
  %i.cr = add nsw i32 %.051146, 1
  br label %.thread

bb.p:                                             ; preds = %_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE.exit
  %i.cs = icmp eq ptr %.sroa.0.0.copyload.i78, %.0.i77
  br i1 %i.cs, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.al, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread124, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.q
  %i.ct = load i64, ptr %.sroa.0.0.copyload.i78, align 8
  %i.cu = load i64, ptr %.0.i77, align 8
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread124

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %bb.p, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.cw = load i32, ptr %2, align 8
  %i.cx = icmp eq i32 %i.cw, %storemerge.i
  br i1 %i.cx, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.thread

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread
  %i.cy = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not17.i = icmp eq ptr %i.cy, null
  br i1 %.not17.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i
  %i.cz = icmp eq ptr %i.cy, %i.bm
  br i1 %i.cz, label %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit.thread126, label %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit

_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit: ; preds = %bb.r
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = load i64, ptr %i.bm, align 8
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit.thread126, label %.thread

_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit.thread126: ; preds = %bb.r, %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit
  %i.dd = load i32, ptr %i.an, align 8
  %.not67 = icmp eq i32 %i.dd, 3
  br i1 %.not67, label %.thread, label %bb.u

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread124: ; preds = %bb.q, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.de = icmp eq i32 %.056145, -1
  br i1 %i.de, label %bb.s, label %.thread

bb.s:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread124
  %i.df = load i64, ptr %.0.i77, align 8
  %i.dg = load i64, ptr %.sroa.0.0.copyload.i78, align 8
  %i.dh = call noundef zeroext i1 @_ZN2v88internal2IC31IsTransitionOfMonomorphicTargetENS0_6TaggedINS0_3MapEEES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.df, i64 %i.dg)
  %spec.select = select i1 %i.dh, i32 %.061144, i32 -1
  br label %.thread

.thread:                                          ; preds = %bb.o, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread124, %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit.thread126, %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit, %bb.s, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread
  %.157 = phi i32 [ %.056145, %bb.o ], [ %.056145, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread124 ], [ %.061144, %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit ], [ %spec.select, %bb.s ], [ %.061144, %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit.thread126 ], [ %.061144, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %.061144, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread ]
  %.152 = phi i32 [ %i.cr, %bb.o ], [ %.051146, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread124 ], [ %.051146, %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit ], [ %.051146, %bb.s ], [ %.051146, %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit.thread126 ], [ %.051146, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %.051146, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread ]
  %i.di = add nsw i32 %.061144, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.f
  %.263 = phi i32 [ %.061144, %bb.f ], [ %i.di, %.thread ]
  %.359 = phi i32 [ %.056145, %bb.f ], [ %.157, %.thread ] ; 2 uses
  %.354 = phi i32 [ %.051146, %bb.f ], [ %.152, %.thread ] ; 2 uses
  call void @_ZN2v88internal16FeedbackIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #22
  %i.dj = load i8, ptr %i.ag, align 8, !range !6, !noundef !7
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._crit_edge, label %bb.f, !llvm.loop !15

bb.u:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle15is_identical_toERKS1_.exit.thread126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.t, %_ZN2v88internal15MapsAndHandlers7reserveEm.exit
  %.056.lcssa = phi i32 [ -1, %_ZN2v88internal15MapsAndHandlers7reserveEm.exit ], [ %.359, %bb.t ] ; 3 uses
  %.051.lcssa = phi i32 [ 0, %_ZN2v88internal15MapsAndHandlers7reserveEm.exit ], [ %.354, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dl = load ptr, ptr %i.k, align 8
  %i.dm = load ptr, ptr %3, align 8
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = lshr exact i64 %i.dp, 3
  %i.dr = trunc i64 %i.dq to i32                  ; 2 uses
  %i.ds = sub nsw i32 %i.dr, %.051.lcssa
  %i.dt = icmp ne i32 %.056.lcssa, -1
  %.neg = sext i1 %i.dt to i32
  %i.du = add i32 %i.ds, %.neg                    ; 2 uses
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1496), align 8 ; 2 uses
  %.not68 = icmp slt i32 %i.du, %i.dv
  %.not69 = icmp slt i32 %.051.lcssa, %i.dv
  %or.cond = and i1 %.not68, %.not69
  br i1 %or.cond, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %._crit_edge
  %i.dw = icmp eq i32 %i.dr, 0
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load i32, ptr %i.dx, align 8
  switch i32 %i.dy, label %bb.ae [
    i32 2, label %bb.x
    i32 4, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.v
  %i.dz = icmp eq i32 %i.du, 0
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload.i82 = load ptr, ptr %i.h, align 8
  %i.ea = load i8, ptr %i.a, align 4              ; 2 uses
  %i.eb = and i8 %i.ea, -2
  %i.ec = icmp eq i8 %i.eb, 6
  br i1 %i.ec, label %_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i, label %_ZNK2v88internal2IC10IsGlobalICEv.exit.i

_ZNK2v88internal2IC10IsGlobalICEv.exit.i:         ; preds = %bb.y
  switch i8 %i.ea, label %_ZNK2v88internal2IC8is_keyedEv.exit.i [
    i8 10, label %_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i
    i8 1, label %_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i
    i8 8, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i
    i8 14, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i
    i8 3, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i
    i8 15, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i
    i8 9, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i
    i8 13, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i
  ]

_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i:  ; preds = %_ZNK2v88internal2IC10IsGlobalICEv.exit.i, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i, %bb.y
  call void @_ZN2v88internal13FeedbackNexus20ConfigureHandlerModeERKNS0_23MaybeObjectDirectHandleE(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  br label %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE.exit

_ZNK2v88internal2IC8is_keyedEv.exit.thread.i:     ; preds = %_ZNK2v88internal2IC10IsGlobalICEv.exit.i, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i
  br label %_ZNK2v88internal2IC8is_keyedEv.exit.i

_ZNK2v88internal2IC8is_keyedEv.exit.i:            ; preds = %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i
  %.sroa.06.0.i = phi ptr [ %1, %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i ], [ null, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i ]
  call void @_ZN2v88internal13FeedbackNexus20ConfigureMonomorphicENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr %.sroa.06.0.i, ptr %.sroa.0.0.copyload.i82, ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  br label %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE.exit

_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE.exit: ; preds = %_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i, %_ZNK2v88internal2IC8is_keyedEv.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ed, align 8
  %i.ee = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.0.0.in.i.i.i = select i1 %i.ef, ptr %i.eg, ptr %i.ee
  %.sroa.0.0.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i, align 8
  %i.eh = load ptr, ptr %i.i, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 58640
  %i.ej = load ptr, ptr %i.ei, align 8
  call void @_ZN2v88internal14TieringManager15NotifyICChangedENS0_6TaggedINS0_14FeedbackVectorEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i64 %.sroa.0.0.i.i.i) #22
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.ek = load i8, ptr %i.a, align 4
  switch i8 %i.ek, label %.critedge [
    i8 8, label %bb.aa
    i8 14, label %bb.aa
    i8 3, label %bb.aa
    i8 15, label %bb.aa
    i8 9, label %bb.aa
    i8 13, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.el = call i64 @_ZNK2v88internal13FeedbackNexus7GetNameEv(ptr noundef nonnull align 8 dereferenceable(88) %i.af) #22
  %i.em = load i64, ptr %1, align 8
  %.not141 = icmp eq i64 %i.el, %i.em
  br i1 %.not141, label %.critedge, label %bb.ae

.critedge:                                        ; preds = %bb.z, %bb.aa
  %i.en = icmp sgt i32 %.056.lcssa, -1
  br i1 %i.en, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.critedge
  %i.eo = zext nneg i32 %.056.lcssa to i64        ; 3 uses
  %.sroa.08.0.copyload = load i32, ptr %2, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8
  %i.ep = load ptr, ptr %i.m, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = ptrtoint ptr %.sroa.210.0.copyload to i64
  store i64 %i.er, ptr %i.eq, align 8
  %i.es = load ptr, ptr %i.q, align 8
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.eo
  store i32 %.sroa.08.0.copyload, ptr %i.et, align 4
  %i.eu = load ptr, ptr %3, align 8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.eo ; 2 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.ev, align 8 ; 3 uses
  %i.ew = icmp eq ptr %.sroa.0.0.copyload.i78, %.sroa.07.0.copyload
  br i1 %i.ew, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = icmp eq ptr %.sroa.0.0.copyload.i78, null
  %i.ey = icmp eq ptr %.sroa.07.0.copyload, null
  %or.cond.i73 = or i1 %i.ex, %i.ey
  br i1 %or.cond.i73, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread137, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76: ; preds = %bb.ac
  %i.ez = load i64, ptr %.sroa.0.0.copyload.i78, align 8
  %i.fa = load i64, ptr %.sroa.07.0.copyload, align 8
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread137

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread137: ; preds = %bb.ac, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76
  store ptr %.sroa.0.0.copyload.i78, ptr %i.ev, align 8
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread

bb.ad:                                            ; preds = %.critedge
  %.sroa.03.0.copyload = load i32, ptr %2, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8
  call void @_ZN2v88internal15MapsAndHandlers12emplace_backENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleE(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr %.sroa.0.0.copyload.i78, i32 %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload)
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread: ; preds = %bb.ab, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread137, %bb.ad
  %i.fc = load i8, ptr %i.a, align 4
  switch i8 %i.fc, label %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE.exit [
    i8 8, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84
    i8 14, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84
    i8 3, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84
    i8 15, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84
    i8 9, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84
    i8 13, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84
  ]

_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84:   ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread
  br label %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE.exit

_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE.exit: ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread, %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84
  %.sroa.03.0.i = phi ptr [ %1, %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i84 ], [ null, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit76.thread ]
  call void @_ZN2v88internal13FeedbackNexus20ConfigurePolymorphicENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(152) %3) #22
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.fd, align 8
  %i.fe = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.0.0.in.i.i.i86 = select i1 %i.ff, ptr %i.fg, ptr %i.fe
  %.sroa.0.0.i.i.i87 = load i64, ptr %.sroa.0.0.in.i.i.i86, align 8
  %i.fh = load ptr, ptr %i.i, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 58640
  %i.fj = load ptr, ptr %i.fi, align 8
  call void @_ZN2v88internal14TieringManager15NotifyICChangedENS0_6TaggedINS0_14FeedbackVectorEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i64 %.sroa.0.0.i.i.i87) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.w, %bb.u, %._crit_edge, %bb.aa, %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE.exit, %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE.exit
  %.5 = phi i1 [ false, %bb.u ], [ false, %bb.w ], [ false, %._crit_edge ], [ true, %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE.exit ], [ false, %bb.aa ], [ true, %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.c, %bb.ae
  %.6 = phi i1 [ %.5, %bb.ae ], [ false, %bb.c ]
end_hunk_0
