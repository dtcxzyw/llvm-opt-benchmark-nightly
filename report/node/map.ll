inline.NumInlined: 2716
inline.NumDeleted: 953
begin_hunk_0_@_ZN2v88internal3Map31FindElementsKindTransitionedMapEPNS0_7IsolateENS_10MemorySpanINS0_12DirectHandleIS1_EEEENS0_15ConcurrencyModeE:bb.a
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = trunc i64 %i.av to i1
  br i1 %i.az, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i, label %_ZNK2v88internal3Map11FindRootMapENS0_16PtrComprCageBaseE.exit

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i: ; preds = %_ZNK2v88internal3Map17TryGetBackPointerENS0_16PtrComprCageBaseEPNS0_6TaggedIS1_EE.exit.i
  %i.ba = add nsw i64 %i.av, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %i.bd = icmp eq i64 %i.bc, %i.ay
  br i1 %i.bd, label %_ZNK2v88internal3Map17TryGetBackPointerENS0_16PtrComprCageBaseEPNS0_6TaggedIS1_EE.exit.i, label %_ZNK2v88internal3Map11FindRootMapENS0_16PtrComprCageBaseE.exit, !llvm.loop !16

_ZNK2v88internal3Map11FindRootMapENS0_16PtrComprCageBaseE.exit: ; preds = %_ZNK2v88internal3Map17TryGetBackPointerENS0_16PtrComprCageBaseEPNS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i
  %i.be = tail call noundef zeroext i1 @_ZNK2v88internal3Map25EquivalentToForTransitionENS0_6TaggedIS1_EENS0_15ConcurrencyModeENS0_12DirectHandleINS0_10HeapObjectEEE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, i64 %.sroa.03.0.i, i8 noundef zeroext %4, ptr null)
  br i1 %i.be, label %bb.f, label %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread85

bb.f:                                             ; preds = %_ZNK2v88internal3Map11FindRootMapENS0_16PtrComprCageBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 %.sroa.03.0.i, ptr %7, align 8
  %i.bf = call i64 @_ZN2v88internal3Map27LookupElementsTransitionMapEPNS0_7IsolateENS0_12ElementsKindENS0_15ConcurrencyModeE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i8 noundef zeroext %i.al, i8 noundef zeroext %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %1, ptr %6, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = add i64 %i.bf, 63
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj acquire, align 8 ; 5 uses
  store i64 %i.bk, ptr %i.bh, align 8
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = and i64 %i.bk, 4294967295
  %i.bo = icmp eq i64 %i.bn, 3
  %or.cond.i.i.i = or i1 %i.bm, %i.bo
  br i1 %or.cond.i.i.i, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = and i64 %i.bk, 3
  switch i64 %i.bp, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i [
    i64 3, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bq = add nsw i64 %i.bk, -1
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load atomic volatile i64, ptr %i.br monotonic, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i16, ptr %i.bu monotonic, align 2
  %i.bw = icmp eq i16 %i.bv, 258
  br i1 %i.bw, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load atomic volatile i64, ptr %i.br monotonic, align 8
  %i.by = add i64 %i.bx, 11
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i16, ptr %i.bz monotonic, align 2
  %i.cb = icmp eq i16 %i.ca, 162
  %..i.i.i = select i1 %i.cb, i32 0, i32 2
  br label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable

_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i.i.i = phi i32 [ 4, %bb.h ], [ 1, %bb.f ], [ 3, %bb.g ], [ %..i.i.i, %bb.i ]
  %i.cc = icmp eq i8 %4, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ce = zext i1 %i.cc to i8                     ; 3 uses
  store i32 %.0.i.i.i, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %i.ce, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 7880 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = call i64 @_ZN2v88internal19TransitionsAccessor13SearchSpecialENS0_6TaggedINS0_6SymbolEEE(ptr noundef nonnull align 8 dereferenceable(29) %6, i64 %i.ch) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread85, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit
  %.idx.i = shl nuw nsw i64 %.fr, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 2 uses
  %.not.i33 = icmp eq i64 %.fr, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  br i1 %.not.i33, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us
  %.sroa.056.093.us = phi i64 [ %i.do, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us ], [ %i.ci, %.lr.ph ] ; 3 uses
  %i.cp = add i64 %.sroa.056.093.us, 14
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = icmp ult i8 %i.cr, 24
  br i1 %i.cs, label %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread.us, label %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread85

_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread.us: ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %1, ptr %5, align 8
  store i64 %.sroa.056.093.us, ptr %i.cl, align 8
  %i.ct = add i64 %.sroa.056.093.us, 63
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load atomic volatile i64, ptr %i.cu acquire, align 8 ; 5 uses
  store i64 %i.cv, ptr %i.cm, align 8
  %i.cw = and i64 %i.cv, 1
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = and i64 %i.cv, 4294967295
  %i.cz = icmp eq i64 %i.cy, 3
  %or.cond.i.i.i40.us = or i1 %i.cx, %i.cz
  br i1 %or.cond.i.i.i40.us, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread.us
  %i.da = and i64 %i.cv, 3
  switch i64 %i.da, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i43 [
    i64 3, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.db = add nsw i64 %i.cv, -1
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.de = add i64 %i.dd, 11
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i16, ptr %i.df monotonic, align 2
  %i.dh = icmp eq i16 %i.dg, 258
  br i1 %i.dh, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.dj = add i64 %i.di, 11
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load atomic volatile i16, ptr %i.dk monotonic, align 2
  %i.dm = icmp eq i16 %i.dl, 162
  %..i.i.i41.us = select i1 %i.dm, i32 0, i32 2
  br label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us

_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us: ; preds = %bb.l, %bb.k, %bb.j, %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread.us
  %.0.i.i.i42.us = phi i32 [ 4, %bb.k ], [ 1, %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread.us ], [ 3, %bb.j ], [ %..i.i.i41.us, %bb.l ]
  store i32 %.0.i.i.i42.us, ptr %i.cn, align 8
  store i8 %i.ce, ptr %i.co, align 4
  %i.dn = load i64, ptr %i.cg, align 8
  %i.do = call i64 @_ZN2v88internal19TransitionsAccessor13SearchSpecialENS0_6TaggedINS0_6SymbolEEE(ptr noundef nonnull align 8 dereferenceable(29) %5, i64 %i.dn) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread85, label %.lr.ph.split.us, !llvm.loop !21

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44
  %.03295 = phi i1 [ %.3, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44 ], [ %i.ap, %.lr.ph ] ; 6 uses
  %.sroa.063.094 = phi i64 [ %.sroa.063.2, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44 ], [ 0, %.lr.ph ] ; 6 uses
  %.sroa.056.093 = phi i64 [ %i.fl, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44 ], [ %i.ci, %.lr.ph ] ; 4 uses
  %i.dq = add i64 %.sroa.056.093, 14
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load i8, ptr %i.dr, align 1             ; 2 uses
  %i.dt = icmp ult i8 %i.ds, 24
  br i1 %i.dt, label %.lr.ph.i, label %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread85

.lr.ph.i:                                         ; preds = %.lr.ph.split, %.critedge8.i
  %.sroa.013.022.i = phi ptr [ %i.ec, %.critedge8.i ], [ %2, %.lr.ph.split ] ; 2 uses
  %i.du = load i64, ptr %.sroa.013.022.i, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.critedge8.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.dw = inttoptr i64 %i.du to ptr
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = add i64 %i.dx, 14
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load i8, ptr %i.dz, align 1
  %.unshifted = xor i8 %i.ea, %i.ds
  %i.eb = icmp ult i8 %.unshifted, 4
  br i1 %i.eb, label %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit, label %.critedge8.i

.critedge8.i:                                     ; preds = %bb.m, %.lr.ph.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %i.ec, %i.ck
  br i1 %.not25.i, label %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread, label %.lr.ph.i

_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i64 %.sroa.056.093, ptr %8, align 8
  %.sroa.06.0.copyload = load i64, ptr %0, align 8
  %i.ed = call i64 @_ZN2v88internal3Map28TryReplayPropertyTransitionsEPNS0_7IsolateENS0_6TaggedIS1_EENS0_15ConcurrencyModeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, i64 %.sroa.06.0.copyload, i8 noundef zeroext %4) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit
  %i.ef = call noundef zeroext i1 @_ZNK2v88internal3Map22InstancesNeedRewritingENS0_6TaggedIS1_EENS0_15ConcurrencyModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %i.ed, i8 noundef zeroext %4)
  br i1 %i.ef, label %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eg = add i64 %i.ed, 14
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load i8, ptr %i.eh, align 1             ; 2 uses
  %i.ej = and i8 %i.ei, 4
  %9 = icmp ne i8 %i.ej, 0
  %10 = icmp ugt i8 %i.ei, 19
  %.not98 = or i1 %10, %9                         ; 2 uses
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.o, %.critedge8.i37
  %.sroa.012.019.i = phi ptr [ %i.ep, %.critedge8.i37 ], [ %2, %bb.o ] ; 2 uses
  %i.ek = load i64, ptr %.sroa.012.019.i, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.critedge8.i37, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i36
  %i.em = inttoptr i64 %i.ek to ptr
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = icmp eq i64 %i.en, %i.ed
  br i1 %i.eo, label %_ZN2v88internalL11ContainsMapENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_6TaggedIS3_EE.exit, label %.critedge8.i37

.critedge8.i37:                                   ; preds = %bb.p, %.lr.ph.i36
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.ep, %i.ck
  br i1 %.not22.i, label %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread, label %.lr.ph.i36

_ZN2v88internalL11ContainsMapENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_6TaggedIS3_EE.exit: ; preds = %bb.p
  %or.cond.not = or i1 %.03295, %.not98
  %spec.select = select i1 %or.cond.not, i64 %i.ed, i64 %.sroa.063.094
  %not.or.cond = xor i1 %.not98, true
  %spec.select90 = select i1 %not.or.cond, i1 %.03295, i1 false
  br label %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread

_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread: ; preds = %.critedge8.i, %.critedge8.i37, %_ZN2v88internalL11ContainsMapENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_6TaggedIS3_EE.exit, %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit, %bb.n
  %.sroa.063.2 = phi i64 [ %.sroa.063.094, %.critedge8.i37 ], [ %.sroa.063.094, %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit ], [ %.sroa.063.094, %bb.n ], [ %spec.select, %_ZN2v88internalL11ContainsMapENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_6TaggedIS3_EE.exit ], [ %.sroa.063.094, %.critedge8.i ] ; 2 uses
  %.3 = phi i1 [ %.03295, %.critedge8.i37 ], [ %.03295, %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit ], [ %.03295, %bb.n ], [ %spec.select90, %_ZN2v88internalL11ContainsMapENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_6TaggedIS3_EE.exit ], [ %.03295, %.critedge8.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %1, ptr %5, align 8
  store i64 %.sroa.056.093, ptr %i.cl, align 8
  %i.eq = add i64 %.sroa.056.093, 63
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load atomic volatile i64, ptr %i.er acquire, align 8 ; 5 uses
  store i64 %i.es, ptr %i.cm, align 8
  %i.et = and i64 %i.es, 1
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = and i64 %i.es, 4294967295
  %i.ew = icmp eq i64 %i.ev, 3
  %or.cond.i.i.i40 = or i1 %i.eu, %i.ew
  br i1 %or.cond.i.i.i40, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread
  %i.ex = and i64 %i.es, 3
  switch i64 %i.ex, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i43 [
    i64 3, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ey = add nsw i64 %i.es, -1
  %i.ez = inttoptr i64 %i.ey to ptr               ; 2 uses
  %i.fa = load atomic volatile i64, ptr %i.ez monotonic, align 8
  %i.fb = add i64 %i.fa, 11
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load atomic volatile i16, ptr %i.fc monotonic, align 2
  %i.fe = icmp eq i16 %i.fd, 258
  br i1 %i.fe, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ff = load atomic volatile i64, ptr %i.ez monotonic, align 8
  %i.fg = add i64 %i.ff, 11
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load atomic volatile i16, ptr %i.fh monotonic, align 2
  %i.fj = icmp eq i16 %i.fi, 162
  %..i.i.i41 = select i1 %i.fj, i32 0, i32 2
  br label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i43: ; preds = %bb.q, %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable

_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44: ; preds = %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread, %bb.q, %bb.r, %bb.s
  %.0.i.i.i42 = phi i32 [ 4, %bb.r ], [ 1, %_ZN2v88internalL15HasElementsKindENS_10MemorySpanINS0_12DirectHandleINS0_3MapEEEEENS0_12ElementsKindE.exit.thread ], [ 3, %bb.q ], [ %..i.i.i41, %bb.s ]
  store i32 %.0.i.i.i42, ptr %i.cn, align 8
  store i8 %i.ce, ptr %i.co, align 4
  %i.fk = load i64, ptr %i.cg, align 8
  %i.fl = call i64 @_ZN2v88internal19TransitionsAccessor13SearchSpecialENS0_6TaggedINS0_6SymbolEEE(ptr noundef nonnull align 8 dereferenceable(29) %5, i64 %i.fk) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread85, label %.lr.ph.split, !llvm.loop !21

_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread85: ; preds = %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44, %.lr.ph.split, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us, %.lr.ph.split.us, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit, %_ZNK2v88internal3Map11FindRootMapENS0_16PtrComprCageBaseE.exit, %bb.a, %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread, %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit
  %.sroa.066.2 = phi i64 [ 0, %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit ], [ 0, %_ZNK2v88internal3Map11FindRootMapENS0_16PtrComprCageBaseE.exit ], [ 0, %bb.a ], [ 0, %_ZNK2v88internal3Map10IsDetachedEPNS0_7IsolateE.exit.thread ], [ 0, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit ], [ 0, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44.us ], [ 0, %.lr.ph.split.us ], [ %.sroa.063.2, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit44 ], [ %.sroa.063.094, %.lr.ph.split ]
  ret i64 %.sroa.066.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal3Map37EquivalentToForElementsKindTransitionENS0_6TaggedIS1_EENS0_15ConcurrencyModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i8 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2v88internal3Map25EquivalentToForTransitionENS0_6TaggedIS1_EENS0_15ConcurrencyModeENS0_12DirectHandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i8 noundef zeroext %2, ptr null)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal3Map27LookupElementsTransitionMapEPNS0_7IsolateENS0_12ElementsKindENS0_15ConcurrencyModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::TransitionsAccessor", align 8 ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = icmp eq i8 %3, 1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = zext i1 %i.c to i8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7880
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i, %bb.a
  %.sroa.013.0.i = phi i64 [ %.sroa.0.0.copyload, %bb.a ], [ %i.ac, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i ] ; 5 uses
  %.04.in.in.in.i = add i64 %.sroa.013.0.i, 14
  %.04.in.in.i = inttoptr i64 %.04.in.in.in.i to ptr ; 2 uses
  %.04.in.i = load i8, ptr %.04.in.in.i, align 1
  %.04.i = lshr i8 %.04.in.i, 2
  %.not.i = icmp eq i8 %.04.i, %2
  br i1 %.not.i, label %_ZN2v88internalL29FindClosestElementsTransitionEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS0_12ElementsKindENS0_15ConcurrencyModeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %1, ptr %4, align 8
  store i64 %.sroa.013.0.i, ptr %i.a, align 8
  %i.h = add i64 %.sroa.013.0.i, 63
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i acquire, align 8 ; 5 uses
  store i64 %i.j, ptr %i.b, align 8
  %i.k = and i64 %i.j, 1
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %i.j, 4294967295
  %i.n = icmp eq i64 %i.m, 3
  %or.cond.i.i.i.i = or i1 %i.l, %i.n
  br i1 %or.cond.i.i.i.i, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %i.j, 3
  switch i64 %i.o, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i [
    i64 3, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i64 %i.j, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 258
  br i1 %i.v, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 162
  %..i.i.i.i = select i1 %i.aa, i32 0, i32 2
  br label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i: ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable

_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ 4, %bb.e ], [ 1, %bb.c ], [ 3, %bb.d ], [ %..i.i.i.i, %bb.f ]
  store i32 %.0.i.i.i.i, ptr %i.d, align 8
  store i8 %i.e, ptr %i.f, align 4
  %i.ab = load i64, ptr %i.g, align 8
  %i.ac = call i64 @_ZN2v88internal19TransitionsAccessor13SearchSpecialENS0_6TaggedINS0_6SymbolEEE(ptr noundef nonnull align 8 dereferenceable(29) %4, i64 %i.ab) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i._ZN2v88internalL29FindClosestElementsTransitionEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS0_12ElementsKindENS0_15ConcurrencyModeE.exit_crit_edge, label %bb.b, !llvm.loop !22

_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i._ZN2v88internalL29FindClosestElementsTransitionEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS0_12ElementsKindENS0_15ConcurrencyModeE.exit_crit_edge: ; preds = %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i
  %.pre = load i8, ptr %.04.in.in.i, align 1
  %.pre17 = lshr i8 %.pre, 2
  %i.ae = icmp eq i8 %.pre17, %2
  %i.af = select i1 %i.ae, i64 %.sroa.013.0.i, i64 0
  br label %_ZN2v88internalL29FindClosestElementsTransitionEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS0_12ElementsKindENS0_15ConcurrencyModeE.exit, !llvm.loop !22

_ZN2v88internalL29FindClosestElementsTransitionEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS0_12ElementsKindENS0_15ConcurrencyModeE.exit: ; preds = %bb.b, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i._ZN2v88internalL29FindClosestElementsTransitionEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS0_12ElementsKindENS0_15ConcurrencyModeE.exit_crit_edge
  %.pre-phi = phi i64 [ %i.af, %_ZN2v88internal3Map21ElementsTransitionMapEPNS0_7IsolateENS0_15ConcurrencyModeE.exit.i._ZN2v88internalL29FindClosestElementsTransitionEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS0_12ElementsKindENS0_15ConcurrencyModeE.exit_crit_edge ], [ %.sroa.013.0.i, %bb.b ]
  ret i64 %.pre-phi
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal3Map26IsMapInArrayPrototypeChainEPNS0_7IsolateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 639
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal7Isolate23initial_array_prototypeEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %1) #16
  br label %_ZN2v88internal7Isolate23initial_array_prototypeEv.exit

_ZN2v88internal7Isolate23initial_array_prototypeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  %i.t = add i64 %i.j, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %.sroa.01.0.copyload = load i64, ptr %0, align 8
  %i.w = icmp eq i64 %i.v, %.sroa.01.0.copyload
  br i1 %i.w, label %bb.e, label %bb.c

end_hunk_0
