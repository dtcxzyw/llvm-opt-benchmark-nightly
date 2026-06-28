inline.NumInlined: 24171
inline.NumDeleted: 6162
loop-unroll.NumCompletelyUnrolled: 85
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateE:bb.a
bb.ne:                                            ; preds = %.lr.ph2848
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846)
  %i.bqd = add i64 %i.ajy, 7
  %i.bqe = inttoptr i64 %i.bqd to ptr             ; 2 uses
  %i.bqf = load atomic volatile i8, ptr %i.bqe monotonic, align 1 ; 0 uses
  %i.bqg = add i64 %i.ajy, 9
  %i.bqh = inttoptr i64 %i.bqg to ptr
  %i.bqi = load atomic volatile i8, ptr %i.bqh monotonic, align 1 ; 2 uses
  %i.bqj = icmp ult i8 %i.bqi, 3
  br i1 %i.bqj, label %bb.nf, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit795

bb.nf:                                            ; preds = %bb.ne
  %i.bqk = load atomic volatile i8, ptr %i.bqe monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit795

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit795: ; preds = %bb.ne, %bb.nf
  %.0.in.in.i792 = phi i8 [ %i.bqk, %bb.nf ], [ %i.bqi, %bb.ne ]
  %.0.in.i793 = zext i8 %.0.in.in.i792 to i64
  %.0.i794 = shl nuw nsw i64 %.0.in.i793, 3
  %i.bql = add i64 %storemerge2846, 7
  %i.bqm = add i64 %.0.i794, %i.ajw
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846, i64 %i.bql, i64 %i.bqm)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ng:                                            ; preds = %.lr.ph2848
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846)
  %i.bqn = add i64 %i.ajy, 7
  %i.bqo = inttoptr i64 %i.bqn to ptr             ; 2 uses
  %i.bqp = load atomic volatile i8, ptr %i.bqo monotonic, align 1 ; 0 uses
  %i.bqq = add i64 %i.ajy, 9
  %i.bqr = inttoptr i64 %i.bqq to ptr
  %i.bqs = load atomic volatile i8, ptr %i.bqr monotonic, align 1 ; 2 uses
  %i.bqt = icmp ult i8 %i.bqs, 3
  br i1 %i.bqt, label %bb.nh, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit799

bb.nh:                                            ; preds = %bb.ng
  %i.bqu = load atomic volatile i8, ptr %i.bqo monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit799

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit799: ; preds = %bb.ng, %bb.nh
  %.0.in.in.i796 = phi i8 [ %i.bqu, %bb.nh ], [ %i.bqs, %bb.ng ]
  %.0.in.i797 = zext i8 %.0.in.in.i796 to i64
  %.0.i798 = shl nuw nsw i64 %.0.in.i797, 3
  %i.bqv = add i64 %storemerge2846, 7
  %i.bqw = add i64 %storemerge2846, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846, i64 %i.bqv, i64 %i.bqw)
  %i.bqx = add i64 %storemerge2846, 31
  %i.bqy = add i64 %.0.i798, %i.ajw
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846, i64 %i.bqx, i64 %i.bqy)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ni:                                            ; preds = %.lr.ph2848
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.nj:                                            ; preds = %.lr.ph2848
  %i.bqz = add i64 %i.ajy, 7
  %i.bra = inttoptr i64 %i.bqz to ptr
  %i.brb = load atomic volatile i8, ptr %i.bra monotonic, align 1
  %i.brc = zext i8 %i.brb to i64
  %i.brd = shl nuw nsw i64 %i.brc, 3
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846)
  %i.bre = add i64 %storemerge2846, 7
  %i.brf = add i64 %i.brd, %i.ajw
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846, i64 %i.bre, i64 %i.brf)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.nk:                                            ; preds = %.lr.ph2848
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846)
  %i.brg = add i64 %i.ajy, 7
  %i.brh = inttoptr i64 %i.brg to ptr
  %i.bri = load atomic volatile i8, ptr %i.brh monotonic, align 1 ; 0 uses
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.nl:                                            ; preds = %.lr.ph2848
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2846)
  %i.brj = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.brk = load atomic volatile i64, ptr %i.brj monotonic, align 8 ; 0 uses
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.nm:                                            ; preds = %.lr.ph2848, %.lr.ph2848
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34
  unreachable

bb.nn:                                            ; preds = %.lr.ph2848
  %i.brl = and i64 %storemerge2846, -262144
  %i.brm = inttoptr i64 %i.brl to ptr             ; 2 uses
  %i.brn = load i64, ptr %i.brm, align 262144
  %i.bro = and i64 %i.brn, 64
  %.not2783 = icmp eq i64 %i.bro, 0
  br i1 %.not2783, label %bb.no, label %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i

bb.no:                                            ; preds = %bb.nn
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brm, i64 8
  %i.brq = load ptr, ptr %i.brp, align 8
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 64
  %i.brs = load ptr, ptr %i.brr, align 8
  %i.brt = ptrtoint ptr %i.brs to i64
  %i.bru = add i64 %i.brt, -55464
  %i.brv = inttoptr i64 %i.bru to ptr
  %i.brw = inttoptr i64 %storemerge2846 to ptr
  %i.brx = inttoptr i64 %i.ajy to ptr
  %i.bry = load atomic volatile i8, ptr %i.aka monotonic, align 1
  %i.brz = zext i8 %i.bry to i64
  %i.bsa = inttoptr i64 %i.brz to ptr
  call void @_ZN2v88internal7Isolate16PushParamsAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320) %i.brv, ptr noundef nonnull %i.brw, ptr noundef %i.brx, ptr noundef %i.bsa, ptr noundef null, ptr noundef null, ptr noundef null) #31
  br label %_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i

_ZN2v88internal24GetIsolateFromHeapObjectENS0_6TaggedINS0_10HeapObjectEEEPPNS0_7IsolateE.exit.i: ; preds = %bb.nn, %bb.no
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34
  unreachable

_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit: ; preds = %.lr.ph.i.i.i789, %.lr.ph.i.i.i775, %.lr.ph.i.i.i771, %.lr.ph.i.i.i768, %.lr.ph.i.i.i765, %.lr.ph.i.i.i762, %.lr.ph.i.i.i756, %.lr.ph.i.i.i673, %bb.ir, %.lr.ph.i.i.i638, %.lr.ph.i622, %bb.gy, %.lr.ph.i.i.i615, %.lr.ph.i.i.i612, %bb.mr, %bb.mf, %bb.me, %bb.ma, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lf, %bb.jc, %bb.iq, %bb.ip, %bb.ii, %bb.ih, %bb.if, %bb.ha, %bb.gx, %bb.gv, %bb.gq, %bb.gm, %bb.gl, %bb.gk, %bb.gn, %bb.go, %bb.gp, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gw, %bb.gz, %bb.hb, %bb.hc, %_ZN2v88internal16FeedbackMetadata14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit628, %bb.hd, %bb.he, %bb.hf, %bb.hg, %bb.hh, %bb.hi, %bb.hj, %bb.hk, %_ZN2v88internal12PreparseData14BodyDescriptor11IterateBodyINS0_20MarkCompactCollector23SharedHeapObjectVisitorEEEvNS0_6TaggedINS0_3MapEEENS6_INS0_10HeapObjectEEEiPT_.exit630, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hr, %bb.hs, %bb.ht, %bb.hu, %bb.hv, %bb.hw, %bb.hx, %bb.hy, %bb.hz, %bb.ia, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.ig, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.is, %bb.it, %bb.iu, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.iz, %bb.ja, %bb.jb, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit679, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit683, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit687, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit691, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit695, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit699, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit703, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit707, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit711, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit715, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit719, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit723, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit727, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit731, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit735, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit739, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit743, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit747, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit751, %bb.kp, %bb.kq, %bb.kr, %bb.ks, %bb.kt, %bb.ku, %bb.kv, %bb.kw, %bb.kx, %bb.ky, %bb.kz, %bb.la, %bb.lb, %bb.lc, %bb.ld, %bb.le, %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit761, %bb.lo, %bb.lp, %bb.lq, %bb.lr, %bb.ls, %bb.lt, %bb.lu, %bb.lv, %bb.lw, %bb.lx, %bb.ly, %bb.lz, %bb.mb, %bb.mc, %bb.mg, %bb.mh, %bb.mi, %bb.mj, %bb.mk, %bb.ml, %bb.mm, %bb.mn, %bb.mo, %bb.mp, %bb.mq, %bb.ms, %bb.mt, %bb.mu, %bb.mv, %bb.mw, %bb.mx, %bb.my, %bb.mz, %bb.na, %bb.nb, %bb.nc, %bb.nd, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit795, %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit799, %bb.ni, %bb.nj, %bb.nk, %bb.nl
  %i.bsb = load ptr, ptr %25, align 8             ; 2 uses
  %i.bsc = load ptr, ptr %i.bsb, align 8
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 16
  %i.bse = load ptr, ptr %i.bsd, align 8
  %i.bsf = call i64 %i.bse(ptr noundef nonnull align 8 dereferenceable(8) %i.bsb) #31 ; 2 uses
  %i.bsg = icmp eq i64 %i.bsf, 0
  br i1 %i.bsg, label %._crit_edge2849, label %.lr.ph2848, !llvm.loop !223

bb.np:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal14ObjectIteratorESt14default_deleteIS2_EED2Ev.exit, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  store ptr %i.h, ptr %26, align 8
  %i.bsh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 0, ptr %i.bsh, align 8
  %i.bsi = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.bsj = getelementptr inbounds nuw i8, ptr %1, i64 55688
  %i.bsk = load ptr, ptr %i.bsj, align 8          ; 2 uses
  %i.bsl = load ptr, ptr %i.bsk, align 8
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 80
  %i.bsn = load ptr, ptr %i.bsm, align 8
  %i.bso = call noundef ptr %i.bsn(ptr noundef nonnull align 8 dereferenceable(152) %i.bsk) #31, !inline_history !224
  %i.bsp = ptrtoint ptr %i.bso to i64
  store i64 %i.bsp, ptr %i.bsi, align 8
  %i.bsq = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i8 0, ptr %i.bsq, align 8
  %i.bsr = call noundef ptr @_ZN2v88internal32OldGenerationMemoryChunkIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(32) %26) ; 2 uses
  %.not362850 = icmp eq ptr %i.bsr, null
  br i1 %.not362850, label %._crit_edge2854, label %.lr.ph2853

.lr.ph2853:                                       ; preds = %bb.np
  %i.bss = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %0, i64 905 ; 3 uses
  br label %bb.nq

._crit_edge2854:                                  ; preds = %bb.rb, %bb.np
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  ret void

bb.nq:                                            ; preds = %.lr.ph2853, %bb.rb
  %.02851 = phi ptr [ %i.bsr, %.lr.ph2853 ], [ %i.cgx, %bb.rb ] ; 10 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %.02851, i64 120
  %i.bsv = load atomic volatile i64, ptr %i.bsu acquire, align 8 ; 2 uses
  %i.bsw = inttoptr i64 %i.bsv to ptr
  %.not.i.i.i802 = icmp eq i64 %i.bsv, 0
  br i1 %.not.i.i.i802, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bsx = getelementptr inbounds nuw i8, ptr %.02851, i64 72
  %i.bsy = load i64, ptr %i.bsx, align 8
  %i.bsz = and i64 %i.bsy, -262144
  %i.bta = getelementptr inbounds nuw i8, ptr %.02851, i64 48
  %i.btb = load i64, ptr %i.bta, align 8
  %i.btc = add i64 %i.btb, 8191
  %i.btd = lshr i64 %i.btc, 13                    ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.btd, 0
  br i1 %.not22.i.i.i.i.i, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.nr, %bb.ot
  %.021.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.ot ], [ 0, %bb.nr ] ; 2 uses
  %.03819.i.i.i.i.i = phi i64 [ %i.bxm, %bb.ot ], [ 0, %bb.nr ] ; 3 uses
  %i.bte = getelementptr inbounds nuw [8 x i8], ptr %i.bsw, i64 %.03819.i.i.i.i.i ; 3 uses
  %i.btf = load atomic volatile i64, ptr %i.bte acquire, align 8 ; 2 uses
  %i.btg = inttoptr i64 %i.btf to ptr
  %.not.i.i.i.i.i = icmp eq i64 %i.btf, 0
  br i1 %.not.i.i.i.i.i, label %bb.ot, label %bb.ns

bb.ns:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bth = shl i64 %.03819.i.i.i.i.i, 10
  br label %bb.nu

bb.nt:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i
  %i.bti = icmp eq i64 %.3.i.i.i.i.i, 0
  br i1 %i.bti, label %bb.or, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i"

bb.nu:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i, %bb.ns
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %bb.ns ], [ %indvars.iv.next.i.i.i.i.i, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i ] ; 2 uses
  %.03918.i.i.i.i.i = phi i64 [ 0, %bb.ns ], [ %.3.i.i.i.i.i, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i ] ; 2 uses
  %.04317.i.i.i.i.i = phi i64 [ %i.bth, %bb.ns ], [ %i.bxh, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i ] ; 2 uses
  %i.btj = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %indvars.iv.i.i.i.i.i ; 3 uses
  %i.btk = load atomic volatile i32, ptr %i.btj acquire, align 4 ; 3 uses
  %.not48.i.i.i.i.i = icmp eq i32 %i.btk, 0
  br i1 %.not48.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.nu, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"
  %.14015.i.i.i.i.i = phi i64 [ %.2.i.i.i.i.i, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ %.03918.i.i.i.i.i, %bb.nu ]
  %.04114.i.i.i.i.i = phi i32 [ %.142.i.i.i.i.i, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ 0, %bb.nu ]
  %.04413.i.i.i.i.i = phi i32 [ %i.bwz, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ %i.btk, %bb.nu ] ; 3 uses
  %i.btl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.04413.i.i.i.i.i, i1 true) ; 2 uses
  %i.btm = shl nuw i32 1, %i.btl                  ; 4 uses
  %i.btn = zext nneg i32 %i.btl to i64
  %i.bto = or disjoint i64 %.04317.i.i.i.i.i, %i.btn
  %i.btp = shl i64 %i.bto, 3
  %i.btq = add i64 %i.btp, %i.bsz
  %i.btr = inttoptr i64 %i.btq to ptr
  %i.bts = load atomic volatile i64, ptr %i.btr monotonic, align 8 ; 6 uses
  %i.btt = trunc i64 %i.bts to i1
  %i.btu = and i64 %i.bts, 4294967295
  %i.btv = icmp ne i64 %i.btu, 3
  %i.btw = and i1 %i.btv, %i.btt
  br i1 %i.btw, label %bb.nv, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.nv:                                            ; preds = %.preheader.i.i.i.i.i
  %i.btx = and i64 %i.bts, -3
  %i.bty = and i64 %i.bts, -262144
  %i.btz = inttoptr i64 %i.bty to ptr             ; 3 uses
  %i.bua = load i64, ptr %i.btz, align 262144     ; 2 uses
  %i.bub = and i64 %i.bua, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bub, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.buc = and i64 %i.bua, 64
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.buc, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.nw
  %i.bud = load ptr, ptr %0, align 8
  %i.bue = ptrtoint ptr %i.bud to i64
  %i.buf = add i64 %i.bue, -55464
  %i.bug = inttoptr i64 %i.buf to ptr
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 55448
  %i.bui = load i8, ptr %i.buh, align 8, !range !5, !noundef !6
  %i.buj = trunc nuw i8 %i.bui to i1
  br i1 %i.buj, label %bb.nx, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.nx:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.buk = load ptr, ptr %i.bss, align 8
  %i.bul = getelementptr inbounds nuw i8, ptr %i.btz, i64 8 ; 2 uses
  %i.bum = load ptr, ptr %i.bul, align 8          ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 80
  %i.buo = load atomic ptr, ptr %i.bun seq_cst, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.buo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ny, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i, !prof !38

bb.ny:                                            ; preds = %bb.nx
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i: ; preds = %bb.nx
  %i.bup = ptrtoint ptr %i.bum to i64
  %i.buq = add i64 %i.bup, 336
  %i.bur = inttoptr i64 %i.buq to ptr
  %i.bus = lshr i64 %i.bts, 3
  %i.but = and i64 %i.bus, 63
  %i.buu = shl nuw i64 1, %i.but                  ; 2 uses
  %i.buv = lshr i64 %i.bts, 9
  %i.buw = and i64 %i.buv, 511
  %i.bux = getelementptr inbounds nuw [8 x i8], ptr %i.bur, i64 %i.buw ; 2 uses
  %i.buy = load atomic volatile i64, ptr %i.bux monotonic, align 8
  br label %bb.nz

bb.nz:                                            ; preds = %bb.oa, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i = phi i64 [ %i.buy, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i ], [ %i.bvc, %bb.oa ] ; 3 uses
  %i.buz = and i64 %.013.i.i.i.i.i.i.i.i.i, %i.buu
  %.not16.not.not.i.not.not.not.i.not.not.i.i.i.i.i.i.i = icmp eq i64 %i.buz, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not.i.i.i.i.i.i.i, label %bb.oa, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

bb.oa:                                            ; preds = %bb.nz
  %i.bva = or i64 %.013.i.i.i.i.i.i.i.i.i, %i.buu
  %i.bvb = cmpxchg volatile ptr %i.bux, i64 %.013.i.i.i.i.i.i.i.i.i, i64 %i.bva monotonic monotonic, align 8 ; 2 uses
  %i.bvc = extractvalue { i64, i1 } %i.bvb, 0
  %.not.i.i6.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.bvb, 1
  br i1 %.not.i.i6.i.i.i.i.i.i.i, label %bb.ob, label %bb.nz, !llvm.loop !225

bb.ob:                                            ; preds = %bb.oa
  %i.bvd = load ptr, ptr %i.buk, align 8          ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 8 ; 3 uses
  %i.bvf = load ptr, ptr %i.bve, align 8          ; 4 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 2
  %i.bvh = load i16, ptr %i.bvg, align 2          ; 2 uses
  %i.bvi = load i16, ptr %i.bvf, align 2
  %i.bvj = icmp eq i16 %i.bvh, %i.bvi
  br i1 %i.bvj, label %bb.oc, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i, !prof !38

bb.oc:                                            ; preds = %bb.ob
  %i.bvk = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bvf, %i.bvk
  br i1 %.not.i.i.i.i.i.i, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bvl = load ptr, ptr %i.bvd, align 8, !nonnull !6, !align !53 ; 4 uses
  %i.bvm = load ptr, ptr %i.bve, align 8          ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bvl) #31
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvl, i64 8 ; 2 uses
  %i.bvo = load ptr, ptr %i.bvn, align 8
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvm, i64 8
  store ptr %i.bvo, ptr %i.bvp, align 8
  store ptr %i.bvm, ptr %i.bvn, align 8
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvl, i64 16
  %i.bvr = atomicrmw add ptr %i.bvq, i64 1 monotonic, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bvl) #31
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i: ; preds = %bb.od, %bb.oc
  %i.bvs = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !5, !noundef !6
  %i.bvt = trunc nuw i8 %i.bvs to i1
  %i.bvu = call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #37 ; 7 uses
  br i1 %i.bvt, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i
  %i.bvv = call noundef i64 @malloc_usable_size(ptr noundef %i.bvu) #31
  %i.bvw = add i64 %i.bvv, 524272
  %i.bvx = lshr i64 %i.bvw, 3
  %i.bvy = trunc i64 %i.bvx to i16
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i = phi i16 [ %i.bvy, %bb.oe ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i ]
  %.not.i.i53.i.i.i.i.i = icmp eq ptr %i.bvu, null
  br i1 %.not.i.i53.i.i.i.i.i, label %bb.og, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i

bb.og:                                            ; preds = %bb.of
  call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.265) #34
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i: ; preds = %bb.of
  store i16 %.sroa.6.0.i.i.i.i.i.i.i, ptr %i.bvu, align 2
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvu, i64 2 ; 2 uses
  store i16 0, ptr %i.bvz, align 2
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvu, i64 8
  store ptr null, ptr %i.bwa, align 8
  store ptr %i.bvu, ptr %i.bve, align 8
  %.pre.i.i.i.i.i.i.i.i = load i16, ptr %i.bvz, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i, %bb.ob
  %i.bwb = phi i16 [ %i.bvh, %bb.ob ], [ %.pre.i.i.i.i.i.i.i.i, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i ] ; 2 uses
  %i.bwc = phi ptr [ %i.bvf, %bb.ob ], [ %i.bvu, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i ] ; 2 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 2
  %i.bwe = add i16 %i.bwb, 1
  store i16 %i.bwe, ptr %i.bwd, align 2
  %i.bwf = zext i16 %i.bwb to i64
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwc, i64 16
  %i.bwh = getelementptr inbounds nuw [8 x i8], ptr %i.bwg, i64 %i.bwf
  store i64 %i.btx, ptr %i.bwh, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.nz, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i
  %i.bwi = load i8, ptr %i.bst, align 1, !range !5, !noundef !6
  %i.bwj = trunc nuw i8 %i.bwi to i1
  br i1 %i.bwj, label %bb.oh, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", !prof !38

bb.oh:                                            ; preds = %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i
  %i.bwk = load ptr, ptr %i.bul, align 8          ; 3 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 80
  %i.bwm = load atomic ptr, ptr %i.bwl seq_cst, align 8
  %.not.i7.i.i.i.i.i.i.i = icmp eq ptr %i.bwm, null
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.oi, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i, !prof !38

bb.oi:                                            ; preds = %bb.oh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i: ; preds = %bb.oh
  %i.bwn = load i64, ptr %i.btz, align 262144     ; 3 uses
  %i.bwo = and i64 %i.bwn, 512
  %.not36.i.i.i.i.i.i.i = icmp eq i64 %i.bwo, 0
  br i1 %.not36.i.i.i.i.i.i.i, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i
  call void @_ZN2v88internal20MarkCompactCollector42ReportAbortedEvacuationCandidateDueToFlagsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef nonnull %i.bwk)
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.ok:                                            ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i
  %i.bwp = and i64 %i.bwn, 24
  %i.bwq = icmp eq i64 %i.bwp, 0
  %i.bwr = and i64 %i.bwn, 256
  %i.bws = icmp ne i64 %i.bwr, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bwq, %i.bws
  br i1 %or.cond.i.i.i.i.i.i.i, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwk, i64 88 ; 2 uses
  %i.bwu = load i32, ptr %i.bwt, align 8          ; 2 uses
  %i.bwv = and i32 %i.bwu, 64
  %.not37.i.i.i.i.i.i.i = icmp eq i32 %i.bwv, 0
  br i1 %.not37.i.i.i.i.i.i.i, label %bb.om, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.om:                                            ; preds = %bb.ol
  %i.bww = or disjoint i32 %i.bwu, 64
  store i32 %i.bww, ptr %i.bwt, align 8
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i": ; preds = %bb.om, %bb.ol, %bb.ok, %bb.oj, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i, %bb.nw, %bb.nv, %.preheader.i.i.i.i.i
  %i.bwx = phi i64 [ 0, %bb.nv ], [ 0, %.preheader.i.i.i.i.i ], [ 1, %bb.om ], [ 1, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i ], [ 1, %bb.oj ], [ 1, %bb.ok ], [ 1, %.critedge.i.i.i.i.i.i.i.i ], [ 1, %bb.ol ], [ 1, %bb.nw ]
  %i.bwy = phi i32 [ %i.btm, %bb.nv ], [ %i.btm, %.preheader.i.i.i.i.i ], [ 0, %bb.om ], [ 0, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.oj ], [ 0, %bb.ok ], [ 0, %.critedge.i.i.i.i.i.i.i.i ], [ 0, %bb.ol ], [ 0, %bb.nw ]
  %.142.i.i.i.i.i = or i32 %i.bwy, %.04114.i.i.i.i.i ; 4 uses
  %.2.i.i.i.i.i = add i64 %i.bwx, %.14015.i.i.i.i.i ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateE:bb.a
  %i.caa = and i64 %.013.i.i.i.i.i.i, %i.bzv
  %.not16.not.not.i.not.not.not.i.not.not.i.i.i.i = icmp eq i64 %i.caa, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not.i.i.i.i, label %bb.pi, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i

bb.pi:                                            ; preds = %bb.ph
  %i.cab = or i64 %.013.i.i.i.i.i.i, %i.bzv
  %i.cac = cmpxchg volatile ptr %i.bzy, i64 %.013.i.i.i.i.i.i, i64 %i.cab monotonic monotonic, align 8 ; 2 uses
  %i.cad = extractvalue { i64, i1 } %i.cac, 0
  %.not.i.i11.i.i.i.i = extractvalue { i64, i1 } %i.cac, 1
  br i1 %.not.i.i11.i.i.i.i, label %bb.pj, label %bb.ph, !llvm.loop !225

bb.pj:                                            ; preds = %bb.pi
  %i.cae = load ptr, ptr %i.bzl, align 8          ; 2 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 8 ; 3 uses
  %i.cag = load ptr, ptr %i.caf, align 8          ; 4 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cag, i64 2
  %i.cai = load i16, ptr %i.cah, align 2          ; 2 uses
  %i.caj = load i16, ptr %i.cag, align 2
  %i.cak = icmp eq i16 %i.cai, %i.caj
  br i1 %i.cak, label %bb.pk, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i, !prof !38

bb.pk:                                            ; preds = %bb.pj
  %i.cal = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %.not.i857 = icmp eq ptr %i.cag, %i.cal
  br i1 %.not.i857, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.cam = load ptr, ptr %i.cae, align 8, !nonnull !6, !align !53 ; 4 uses
  %i.can = load ptr, ptr %i.caf, align 8          ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cam) #31
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cam, i64 8 ; 2 uses
  %i.cap = load ptr, ptr %i.cao, align 8
  %i.caq = getelementptr inbounds nuw i8, ptr %i.can, i64 8
  store ptr %i.cap, ptr %i.caq, align 8
  store ptr %i.can, ptr %i.cao, align 8
  %i.car = getelementptr inbounds nuw i8, ptr %i.cam, i64 16
  %i.cas = atomicrmw add ptr %i.car, i64 1 monotonic, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cam) #31
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.pk, %bb.pl
  %i.cat = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !5, !noundef !6
  %i.cau = trunc nuw i8 %i.cat to i1
  %i.cav = call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #37 ; 7 uses
  br i1 %i.cau, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.caw = call noundef i64 @malloc_usable_size(ptr noundef %i.cav) #31
  %i.cax = add i64 %i.caw, 524272
  %i.cay = lshr i64 %i.cax, 3
  %i.caz = trunc i64 %i.cay to i16
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i = phi i16 [ %i.caz, %bb.pm ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i856 = icmp eq ptr %i.cav, null
  br i1 %.not.i.i856, label %bb.po, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.po:                                            ; preds = %bb.pn
  call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.265) #34
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.pn
  store i16 %.sroa.6.0.i.i, ptr %i.cav, align 2
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cav, i64 2 ; 2 uses
  store i16 0, ptr %i.cba, align 2
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cav, i64 8
  store ptr null, ptr %i.cbb, align 8
  store ptr %i.cav, ptr %i.caf, align 8
  %.pre.i.i.i.i.i = load i16, ptr %i.cba, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit, %bb.pj
  %i.cbc = phi i16 [ %i.cai, %bb.pj ], [ %.pre.i.i.i.i.i, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.cbd = phi ptr [ %i.cag, %bb.pj ], [ %i.cav, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cbd, i64 2
  %i.cbf = add i16 %i.cbc, 1
  store i16 %i.cbf, ptr %i.cbe, align 2
  %i.cbg = zext i16 %i.cbc to i64
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbd, i64 16
  %i.cbi = getelementptr inbounds nuw [8 x i8], ptr %i.cbh, i64 %i.cbg
  store i64 %.sroa.030.0.i.i.i.i.i, ptr %i.cbi, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i: ; preds = %bb.ph, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i
  %i.cbj = load i8, ptr %i.bst, align 1, !range !5, !noundef !6
  %i.cbk = trunc nuw i8 %i.cbj to i1
  br i1 %i.cbk, label %bb.pp, label %bb.pv, !prof !38

bb.pp:                                            ; preds = %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i
  %i.cbl = load ptr, ptr %i.bzm, align 8          ; 3 uses
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbl, i64 80
  %i.cbn = load atomic ptr, ptr %i.cbm seq_cst, align 8
  %.not.i12.i.i.i.i = icmp eq ptr %i.cbn, null
  br i1 %.not.i12.i.i.i.i, label %bb.pq, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i, !prof !38

bb.pq:                                            ; preds = %bb.pp
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i: ; preds = %bb.pp
  %i.cbo = load i64, ptr %i.bza, align 262144     ; 3 uses
  %i.cbp = and i64 %i.cbo, 512
  %.not22.i.i.i.i = icmp eq i64 %i.cbp, 0
  br i1 %.not22.i.i.i.i, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i
  call void @_ZN2v88internal20MarkCompactCollector42ReportAbortedEvacuationCandidateDueToFlagsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef nonnull %i.cbl)
  br label %bb.pv

bb.ps:                                            ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i
  %i.cbq = and i64 %i.cbo, 24
  %i.cbr = icmp eq i64 %i.cbq, 0
  %i.cbs = and i64 %i.cbo, 256
  %i.cbt = icmp ne i64 %i.cbs, 0
  %or.cond.i.i.i.i = or i1 %i.cbr, %i.cbt
  br i1 %or.cond.i.i.i.i, label %bb.pv, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbl, i64 88 ; 2 uses
  %i.cbv = load i32, ptr %i.cbu, align 8          ; 2 uses
  %i.cbw = and i32 %i.cbv, 64
  %.not23.i.i.i.i = icmp eq i32 %i.cbw, 0
  br i1 %.not23.i.i.i.i, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  %i.cbx = or disjoint i32 %i.cbv, 64
  store i32 %i.cbx, ptr %i.cbu, align 8
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt, %bb.ps, %bb.pr, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.pe
  %i.cby = add nsw i32 %.12649.i.i.i, 1
  br label %bb.pw

"_ZZN2v88internal20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEENK3$_1clENS0_8SlotTypeEm.exit.i.i.i": ; preds = %_ZN2v88internal21UpdateTypedSlotHelper15GetTargetObjectEPNS0_4HeapENS0_8SlotTypeEm.exit.i.i.i.i
  store i32 -1073741824, ptr %.sroa.033.048.i.i.i, align 4
  br label %bb.pw

bb.pw:                                            ; preds = %"_ZZN2v88internal20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEENK3$_1clENS0_8SlotTypeEm.exit.i.i.i", %bb.pv, %.lr.ph.i.i.i804
  %.3.i.i.i = phi i32 [ %.12649.i.i.i, %.lr.ph.i.i.i804 ], [ %i.cby, %bb.pv ], [ %.12649.i.i.i, %"_ZZN2v88internal20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEENK3$_1clENS0_8SlotTypeEm.exit.i.i.i" ] ; 2 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %.sroa.033.048.i.i.i, i64 4 ; 2 uses
  %i.cca = icmp eq ptr %i.cbz, %i.bxx
  br i1 %i.cca, label %.loopexit.i.i.i, label %.lr.ph.i.i.i804

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET_.exit": ; preds = %.loopexit.i.i.i
  %i.ccb = icmp eq i32 %.126.lcssa.i.i.i, 0
  br i1 %i.ccb, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET_.exit.thread", label %bb.px

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET_.exit.thread": ; preds = %bb.ov, %bb.ou, %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET_.exit"
  call void @_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %.02851, i32 noundef 3) #31
  br label %bb.px

bb.px:                                            ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET_.exit.thread", %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET_.exit"
  %i.ccc = getelementptr inbounds nuw i8, ptr %.02851, i64 144
  %i.ccd = load atomic volatile i64, ptr %i.ccc acquire, align 8 ; 2 uses
  %i.cce = inttoptr i64 %i.ccd to ptr
  %.not.i.i.i810 = icmp eq i64 %i.ccd, 0
  br i1 %.not.i.i.i810, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.ccf = getelementptr inbounds nuw i8, ptr %.02851, i64 72
  %i.ccg = load i64, ptr %i.ccf, align 8
  %i.cch = and i64 %i.ccg, -262144
  %i.cci = getelementptr inbounds nuw i8, ptr %.02851, i64 48
  %i.ccj = load i64, ptr %i.cci, align 8
  %i.cck = add i64 %i.ccj, 8191
  %i.ccl = lshr i64 %i.cck, 13                    ; 2 uses
  %.not22.i.i.i.i.i811 = icmp eq i64 %i.ccl, 0
  br i1 %.not22.i.i.i.i.i811, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %.lr.ph.i.i.i.i.i813

.lr.ph.i.i.i.i.i813:                              ; preds = %bb.py, %bb.ra
  %.021.i.i.i.i.i814 = phi i64 [ %.1.i.i.i.i.i836, %bb.ra ], [ 0, %bb.py ] ; 2 uses
  %.03819.i.i.i.i.i815 = phi i64 [ %i.cgu, %bb.ra ], [ 0, %bb.py ] ; 3 uses
  %i.ccm = getelementptr inbounds nuw [8 x i8], ptr %i.cce, i64 %.03819.i.i.i.i.i815 ; 3 uses
  %i.ccn = load atomic volatile i64, ptr %i.ccm acquire, align 8 ; 2 uses
  %i.cco = inttoptr i64 %i.ccn to ptr
  %.not.i.i.i.i.i816 = icmp eq i64 %i.ccn, 0
  br i1 %.not.i.i.i.i.i816, label %bb.ra, label %bb.pz

bb.pz:                                            ; preds = %.lr.ph.i.i.i.i.i813
  %i.ccp = shl i64 %.03819.i.i.i.i.i815, 10
  br label %bb.qb

bb.qa:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i832
  %i.ccq = icmp eq i64 %.3.i.i.i.i.i833, 0
  br i1 %i.ccq, label %bb.qy, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i"

bb.qb:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i832, %bb.pz
  %indvars.iv.i.i.i.i.i817 = phi i64 [ 0, %bb.pz ], [ %indvars.iv.next.i.i.i.i.i834, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i832 ] ; 2 uses
  %.03918.i.i.i.i.i818 = phi i64 [ 0, %bb.pz ], [ %.3.i.i.i.i.i833, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i832 ] ; 2 uses
  %.04317.i.i.i.i.i819 = phi i64 [ %i.ccp, %bb.pz ], [ %i.cgp, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i832 ] ; 2 uses
  %i.ccr = getelementptr inbounds nuw [4 x i8], ptr %i.cco, i64 %indvars.iv.i.i.i.i.i817 ; 3 uses
  %i.ccs = load atomic volatile i32, ptr %i.ccr acquire, align 4 ; 3 uses
  %.not48.i.i.i.i.i820 = icmp eq i32 %i.ccs, 0
  br i1 %.not48.i.i.i.i.i820, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i832, label %.preheader.i.i.i.i.i821

.preheader.i.i.i.i.i821:                          ; preds = %bb.qb, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"
  %.14015.i.i.i.i.i822 = phi i64 [ %.2.i.i.i.i.i826, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ %.03918.i.i.i.i.i818, %bb.qb ]
  %.04114.i.i.i.i.i823 = phi i32 [ %.142.i.i.i.i.i825, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ 0, %bb.qb ]
  %.04413.i.i.i.i.i824 = phi i32 [ %i.cgh, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ %i.ccs, %bb.qb ] ; 3 uses
  %i.cct = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.04413.i.i.i.i.i824, i1 true) ; 2 uses
  %i.ccu = shl nuw i32 1, %i.cct                  ; 4 uses
  %i.ccv = zext nneg i32 %i.cct to i64
  %i.ccw = or disjoint i64 %.04317.i.i.i.i.i819, %i.ccv
  %i.ccx = shl i64 %i.ccw, 3
  %i.ccy = add i64 %i.ccx, %i.cch
  %i.ccz = inttoptr i64 %i.ccy to ptr
  %i.cda = load atomic volatile i64, ptr %i.ccz monotonic, align 8 ; 6 uses
  %i.cdb = trunc i64 %i.cda to i1
  %i.cdc = and i64 %i.cda, 4294967295
  %i.cdd = icmp ne i64 %i.cdc, 3
  %i.cde = and i1 %i.cdd, %i.cdb
  br i1 %i.cde, label %bb.qc, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.qc:                                            ; preds = %.preheader.i.i.i.i.i821
  %i.cdf = and i64 %i.cda, -3
  %i.cdg = and i64 %i.cda, -262144
  %i.cdh = inttoptr i64 %i.cdg to ptr             ; 3 uses
  %i.cdi = load i64, ptr %i.cdh, align 262144     ; 2 uses
  %i.cdj = and i64 %i.cdi, 1
  %.not.i.i.i.i.i.i.i839 = icmp eq i64 %i.cdj, 0
  br i1 %.not.i.i.i.i.i.i.i839, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.cdk = and i64 %i.cdi, 64
  %.not.i.i.i.i.i.i.i.i840 = icmp eq i64 %i.cdk, 0
  br i1 %.not.i.i.i.i.i.i.i.i840, label %.critedge.i.i.i.i.i.i.i.i841, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

.critedge.i.i.i.i.i.i.i.i841:                     ; preds = %bb.qd
  %i.cdl = load ptr, ptr %0, align 8
  %i.cdm = ptrtoint ptr %i.cdl to i64
  %i.cdn = add i64 %i.cdm, -55464
  %i.cdo = inttoptr i64 %i.cdn to ptr
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 55448
  %i.cdq = load i8, ptr %i.cdp, align 8, !range !5, !noundef !6
  %i.cdr = trunc nuw i8 %i.cdq to i1
  br i1 %i.cdr, label %bb.qe, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.qe:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i841
  %i.cds = load ptr, ptr %i.bss, align 8
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cdh, i64 8 ; 2 uses
  %i.cdu = load ptr, ptr %i.cdt, align 8          ; 2 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdu, i64 80
  %i.cdw = load atomic ptr, ptr %i.cdv seq_cst, align 8
  %.not.i.i.i.i.i.i.i.i.i842 = icmp eq ptr %i.cdw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i842, label %bb.qf, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i843, !prof !38

bb.qf:                                            ; preds = %bb.qe
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i843: ; preds = %bb.qe
  %i.cdx = ptrtoint ptr %i.cdu to i64
  %i.cdy = add i64 %i.cdx, 336
  %i.cdz = inttoptr i64 %i.cdy to ptr
  %i.cea = lshr i64 %i.cda, 3
  %i.ceb = and i64 %i.cea, 63
  %i.cec = shl nuw i64 1, %i.ceb                  ; 2 uses
  %i.ced = lshr i64 %i.cda, 9
  %i.cee = and i64 %i.ced, 511
  %i.cef = getelementptr inbounds nuw [8 x i8], ptr %i.cdz, i64 %i.cee ; 2 uses
  %i.ceg = load atomic volatile i64, ptr %i.cef monotonic, align 8
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qh, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i843
  %.013.i.i.i.i.i.i.i.i.i844 = phi i64 [ %i.ceg, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i843 ], [ %i.cek, %bb.qh ] ; 3 uses
  %i.ceh = and i64 %.013.i.i.i.i.i.i.i.i.i844, %i.cec
  %.not16.not.not.i.not.not.not.i.not.not.i.i.i.i.i.i.i845 = icmp eq i64 %i.ceh, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not.i.i.i.i.i.i.i845, label %bb.qh, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i846

bb.qh:                                            ; preds = %bb.qg
  %i.cei = or i64 %.013.i.i.i.i.i.i.i.i.i844, %i.cec
  %i.cej = cmpxchg volatile ptr %i.cef, i64 %.013.i.i.i.i.i.i.i.i.i844, i64 %i.cei monotonic monotonic, align 8 ; 2 uses
  %i.cek = extractvalue { i64, i1 } %i.cej, 0
  %.not.i.i8.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.cej, 1
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.qi, label %bb.qg, !llvm.loop !225

bb.qi:                                            ; preds = %bb.qh
  %i.cel = load ptr, ptr %i.cds, align 8          ; 2 uses
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cel, i64 8 ; 3 uses
  %i.cen = load ptr, ptr %i.cem, align 8          ; 4 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 2
  %i.cep = load i16, ptr %i.ceo, align 2          ; 2 uses
  %i.ceq = load i16, ptr %i.cen, align 2
  %i.cer = icmp eq i16 %i.cep, %i.ceq
  br i1 %i.cer, label %bb.qj, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i849, !prof !38

bb.qj:                                            ; preds = %bb.qi
  %i.ces = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %.not.i.i.i.i.i.i850 = icmp eq ptr %i.cen, %i.ces
  br i1 %.not.i.i.i.i.i.i850, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i851, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.cet = load ptr, ptr %i.cel, align 8, !nonnull !6, !align !53 ; 4 uses
  %i.ceu = load ptr, ptr %i.cem, align 8          ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cet) #31
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cet, i64 8 ; 2 uses
  %i.cew = load ptr, ptr %i.cev, align 8
  %i.cex = getelementptr inbounds nuw i8, ptr %i.ceu, i64 8
  store ptr %i.cew, ptr %i.cex, align 8
  store ptr %i.ceu, ptr %i.cev, align 8
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cet, i64 16
  %i.cez = atomicrmw add ptr %i.cey, i64 1 monotonic, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cet) #31
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i851

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i851: ; preds = %bb.qk, %bb.qj
  %i.cfa = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !5, !noundef !6
  %i.cfb = trunc nuw i8 %i.cfa to i1
  %i.cfc = call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #37 ; 7 uses
  br i1 %i.cfb, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i851
  %i.cfd = call noundef i64 @malloc_usable_size(ptr noundef %i.cfc) #31
  %i.cfe = add i64 %i.cfd, 524272
  %i.cff = lshr i64 %i.cfe, 3
  %i.cfg = trunc i64 %i.cff to i16
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i851
  %.sroa.6.0.i.i.i.i.i.i.i852 = phi i16 [ %i.cfg, %bb.ql ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit.i.i.i.i.i851 ]
  %.not.i.i53.i.i.i.i.i853 = icmp eq ptr %i.cfc, null
  br i1 %.not.i.i53.i.i.i.i.i853, label %bb.qn, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i854

bb.qn:                                            ; preds = %bb.qm
  call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.265) #34
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i854: ; preds = %bb.qm
  store i16 %.sroa.6.0.i.i.i.i.i.i.i852, ptr %i.cfc, align 2
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfc, i64 2 ; 2 uses
  store i16 0, ptr %i.cfh, align 2
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfc, i64 8
  store ptr null, ptr %i.cfi, align 8
  store ptr %i.cfc, ptr %i.cem, align 8
  %.pre.i.i.i.i.i.i.i.i855 = load i16, ptr %i.cfh, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i849

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i849: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i854, %bb.qi
  %i.cfj = phi i16 [ %i.cep, %bb.qi ], [ %.pre.i.i.i.i.i.i.i.i855, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i854 ] ; 2 uses
  %i.cfk = phi ptr [ %i.cen, %bb.qi ], [ %i.cfc, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit.i.i.i.i.i854 ] ; 2 uses
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfk, i64 2
  %i.cfm = add i16 %i.cfj, 1
  store i16 %i.cfm, ptr %i.cfl, align 2
  %i.cfn = zext i16 %i.cfj to i64
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfk, i64 16
  %i.cfp = getelementptr inbounds nuw [8 x i8], ptr %i.cfo, i64 %i.cfn
  store i64 %i.cdf, ptr %i.cfp, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i846

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i846: ; preds = %bb.qg, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i849
  %i.cfq = load i8, ptr %i.bst, align 1, !range !5, !noundef !6
  %i.cfr = trunc nuw i8 %i.cfq to i1
  br i1 %i.cfr, label %bb.qo, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", !prof !38

bb.qo:                                            ; preds = %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i846
  %i.cfs = load ptr, ptr %i.cdt, align 8          ; 3 uses
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfs, i64 80
  %i.cfu = load atomic ptr, ptr %i.cft seq_cst, align 8
  %.not.i9.i.i.i.i.i.i.i = icmp eq ptr %i.cfu, null
  br i1 %.not.i9.i.i.i.i.i.i.i, label %bb.qp, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i847, !prof !38

bb.qp:                                            ; preds = %bb.qo
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i847: ; preds = %bb.qo
  %i.cfv = load i64, ptr %i.cdh, align 262144     ; 3 uses
  %i.cfw = and i64 %i.cfv, 512
  %.not40.i.i.i.i.i.i.i = icmp eq i64 %i.cfw, 0
  br i1 %.not40.i.i.i.i.i.i.i, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i847
  call void @_ZN2v88internal20MarkCompactCollector42ReportAbortedEvacuationCandidateDueToFlagsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef nonnull %i.cfs)
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.qr:                                            ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i.i.i.i.i847
  %i.cfx = and i64 %i.cfv, 24
  %i.cfy = icmp eq i64 %i.cfx, 0
  %i.cfz = and i64 %i.cfv, 256
  %i.cga = icmp ne i64 %i.cfz, 0
  %or.cond.i.i.i.i.i.i.i848 = or i1 %i.cfy, %i.cga
  br i1 %or.cond.i.i.i.i.i.i.i848, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cfs, i64 88 ; 2 uses
  %i.cgc = load i32, ptr %i.cgb, align 8          ; 2 uses
  %i.cgd = and i32 %i.cgc, 64
  %.not41.i.i.i.i.i.i.i = icmp eq i32 %i.cgd, 0
  br i1 %.not41.i.i.i.i.i.i.i, label %bb.qt, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.qt:                                            ; preds = %bb.qs
  %i.cge = or disjoint i32 %i.cgc, 64
  store i32 %i.cge, ptr %i.cgb, align 8
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateEE3$_2EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i": ; preds = %bb.qt, %bb.qs, %bb.qr, %bb.qq, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i846, %.critedge.i.i.i.i.i.i.i.i841, %bb.qd, %bb.qc, %.preheader.i.i.i.i.i821
  %i.cgf = phi i64 [ 0, %bb.qc ], [ 0, %.preheader.i.i.i.i.i821 ], [ 1, %bb.qt ], [ 1, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i846 ], [ 1, %bb.qq ], [ 1, %bb.qr ], [ 1, %.critedge.i.i.i.i.i.i.i.i841 ], [ 1, %bb.qs ], [ 1, %bb.qd ]
  %i.cgg = phi i32 [ %i.ccu, %bb.qc ], [ %i.ccu, %.preheader.i.i.i.i.i821 ], [ 0, %bb.qt ], [ 0, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i846 ], [ 0, %bb.qq ], [ 0, %bb.qr ], [ 0, %.critedge.i.i.i.i.i.i.i.i841 ], [ 0, %bb.qs ], [ 0, %bb.qd ]
  %.142.i.i.i.i.i825 = or i32 %i.cgg, %.04114.i.i.i.i.i823 ; 4 uses
  %.2.i.i.i.i.i826 = add i64 %i.cgf, %.14015.i.i.i.i.i822 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEv:bb.a
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = icmp eq i64 %i.bk, %i.bt
  br i1 %i.bu, label %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load i32, ptr %i.s, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bw
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = icmp eq i64 %i.bk, %i.by
  br i1 %i.bz, label %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load i32, ptr %i.t, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cb
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = icmp eq i64 %i.bk, %i.cd
  br i1 %i.ce, label %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = load i32, ptr %i.u, align 4
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cg
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = icmp eq i64 %i.bk, %i.ci
  br i1 %i.cj, label %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load i32, ptr %i.v, align 4
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = icmp eq i64 %i.bk, %i.cn
  br i1 %i.co, label %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %i.w, align 4
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cq
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = icmp eq i64 %i.bk, %i.cs
  %spec.select.i.i.i.i = select i1 %i.ct, i64 %i.bk, i64 %i.bh
  br label %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i"

"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit23.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.o ], [ %i.bk, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit23.i.i.i.i ], [ %i.bk, %bb.j ], [ %i.bk, %bb.k ], [ %i.bk, %bb.l ], [ %i.bk, %bb.m ], [ %i.bk, %bb.n ] ; 2 uses
  tail call void @_ZN2v88internal15JSDispatchTable34SetCodeAndEntrypointNoWriteBarrierENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_6TaggedINS0_4CodeEEEm(ptr noundef nonnull align 8 dereferenceable(44) %i.b, i32 %i.ai, i64 %.sroa.025.036.i.i.i.i, i64 noundef %.0.i.i.i.i.i)
  %i.cu = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ak ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv monotonic, align 8
  %i.cx = icmp ugt i64 %i.cw, -281474976710657
  br i1 %i.cx, label %bb.p, label %_ZNK2v88internal15JSDispatchEntry13GetEntrypointEv.exit.i.i.i.i.i, !prof !38

bb.p:                                             ; preds = %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i"
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.237) #34
  unreachable

_ZNK2v88internal15JSDispatchEntry13GetEntrypointEv.exit.i.i.i.i.i: ; preds = %"_ZZZN2v88internal20MarkCompactCollector29UpdatePointersInPointerTablesEvENK3$_0clENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEENKUlvE_clEv.exit.i.i.i.i"
  %i.cy = load atomic i64, ptr %i.cv monotonic, align 8
  %i.cz = load atomic i64, ptr %i.cv monotonic, align 8
  %i.da = icmp ugt i64 %i.cz, -281474976710657
  br i1 %i.da, label %bb.q, label %_ZN2v88internal15JSDispatchTable18IsTieringRequestedENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK2v88internal15JSDispatchEntry13GetEntrypointEv.exit.i.i.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.237) #34
  unreachable

_ZN2v88internal15JSDispatchTable18IsTieringRequestedENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i: ; preds = %_ZNK2v88internal15JSDispatchEntry13GetEntrypointEv.exit.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = load atomic i64, ptr %i.db monotonic, align 8
  %i.dd = lshr i64 %i.dc, 16
  %i.de = or i64 %i.dd, 1
  %i.df = add nuw nsw i64 %i.de, 39
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = icmp ne i64 %i.dh, %i.cy
  %i.dj = icmp ne i64 %i.bk, %.0.i.i.i.i.i
  %.not22.i.i.i.i = and i1 %i.dj, %i.di
  br i1 %.not22.i.i.i.i, label %bb.r, label %"_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_20MarkCompactCollector29UpdatePointersInPointerTablesEvE3$_0EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i", !prof !38

bb.r:                                             ; preds = %_ZN2v88internal15JSDispatchTable18IsTieringRequestedENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.289) #34
  unreachable

"_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_20MarkCompactCollector29UpdatePointersInPointerTablesEvE3$_0EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i": ; preds = %_ZN2v88internal15JSDispatchTable18IsTieringRequestedENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i, %bb.g, %bb.c
  %.pre7 = phi ptr [ %i.cu, %_ZN2v88internal15JSDispatchTable18IsTieringRequestedENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i ], [ %.pre8, %bb.g ], [ %.pre8, %bb.c ] ; 2 uses
  %i.dk = phi ptr [ %i.cu, %_ZN2v88internal15JSDispatchTable18IsTieringRequestedENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i ], [ %i.ad, %bb.g ], [ %i.ad, %bb.c ]
  %i.dl = add i32 %.08.i.i, 1                     ; 2 uses
  %.not.i.i = icmp ugt i32 %i.dl, %i.aa
  br i1 %.not.i.i, label %bb.b, label %bb.c, !llvm.loop !615

"_ZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_20MarkCompactCollector29UpdatePointersInPointerTablesEvE3$_0EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_.exit": ; preds = %bb.b, %bb.a
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.i41.i.i.i.i.i = alloca i64, align 8    ; 5 uses
  %.sroa.0.i34.i.i.i.i.i = alloca i64, align 8    ; 5 uses
  %.sroa.0.i27.i.i.i.i.i = alloca i64, align 8    ; 5 uses
  %.sroa.0.i.i.i.i.i.i = alloca i64, align 8      ; 5 uses
  %2 = alloca %"class.v8::internal::WritableRelocInfo", align 8 ; 7 uses
  %.sroa.0.i.i.i.i.i = alloca i64, align 8        ; 5 uses
  %3 = alloca %"class.v8::internal::WritableJitAllocation", align 8 ; 10 uses
  %4 = alloca %"class.v8::internal::MemoryChunkIterator", align 8 ; 7 uses
  %5 = alloca %"class.v8::internal::WritableJitPage", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 55464
  call void @_ZN2v88internal13SpaceIteratorC1EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.cd, %bb.a
  %i.m = phi ptr [ %.pr, %bb.cd ], [ null, %bb.a ] ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.n = call noundef zeroext i1 @_ZN2v88internal13SpaceIterator7HasNextEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #31
  br i1 %i.n, label %bb.c, label %_ZN2v88internal19MemoryChunkIterator7HasNextEv.exit

bb.c:                                             ; preds = %.preheader
  %i.o = call noundef ptr @_ZN2v88internal13SpaceIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(88) %i.o) #31, !inline_history !616 ; 3 uses
  store ptr %i.s, ptr %i.b, align 8
  %.not4.i.not = icmp eq ptr %i.s, null
  br i1 %.not4.i.not, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %i.m, %bb.b ], [ %i.s, %bb.c ] ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, -262144
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.ab = load atomic volatile i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ad = load i64, ptr %i.w, align 8
  %i.ae = and i64 %i.ad, -262144
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, 8191
  %i.ai = lshr i64 %i.ah, 13                      ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.u
  %.09.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.u ], [ 0, %bb.d ] ; 2 uses
  %.0387.i.i.i.i.i = phi i64 [ %i.cq, %bb.u ], [ 0, %bb.d ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0387.i.i.i.i.i ; 3 uses
  %i.ak = load atomic volatile i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %.not.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = shl i64 %.0387.i.i.i.i.i, 10
  br label %bb.g

bb.f:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i
  %i.an = icmp eq i64 %.3.i.i.i.i.i, 0
  br i1 %i.an, label %bb.s, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i"

bb.g:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i, %bb.e
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.i.i.i.i, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i ] ; 2 uses
  %.0396.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.3.i.i.i.i.i, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i ] ; 2 uses
  %.0435.i.i.i.i.i = phi i64 [ %i.am, %bb.e ], [ %i.cl, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i.i.i.i ; 3 uses
  %i.ap = load atomic volatile i32, ptr %i.ao acquire, align 4 ; 3 uses
  %.not48.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not48.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.g, %bb.n
  %.1403.i.i.i.i.i = phi i64 [ %.2.i.i.i.i.i, %bb.n ], [ %.0396.i.i.i.i.i, %bb.g ]
  %.0412.i.i.i.i.i = phi i32 [ %.142.i.i.i.i.i, %bb.n ], [ 0, %bb.g ] ; 3 uses
  %.0441.i.i.i.i.i = phi i32 [ %i.cd, %bb.n ], [ %i.ap, %bb.g ] ; 3 uses
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0441.i.i.i.i.i, i1 true) ; 2 uses
  %i.ar = shl nuw i32 1, %i.aq                    ; 3 uses
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = or disjoint i64 %.0435.i.i.i.i.i, %i.as
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, %i.ae
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 6 uses
  %i.ay = and i64 %i.ax, 3                        ; 2 uses
  %i.az = icmp eq i64 %i.ay, 3
  %i.ba = and i64 %i.ax, 4294967295
  %i.bb = icmp ne i64 %i.ba, 3
  %i.bc = and i1 %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.preheader.i.i.i.i.i
  %i.bd = and i64 %i.ax, -262144
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = load i64, ptr %i.be, align 262144       ; 3 uses
  %i.bg = and i64 %i.bf, 64
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bh = and i64 %i.ax, -3
  %i.bi = add nsw i64 %i.bh, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8 ; 2 uses
  %i.bl = and i64 %i.bk, 3
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bn = or disjoint i64 %i.bk, 3
  store atomic volatile i64 %i.bn, ptr %i.aw monotonic, align 8
  %.pre25.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 262144
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bo = phi i64 [ %i.bf, %bb.h ], [ %i.bf, %bb.i ], [ %.pre25.i.i.i.i.i.i.i.i, %bb.j ]
  %.fr20.i.i.i.i.i = freeze i64 %i.bo
  %.not24.i.i.i.i.i.i.i.i = trunc i64 %.fr20.i.i.i.i.i to i1
  br i1 %.not24.i.i.i.i.i.i.i.i, label %bb.n, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.bp = icmp eq i64 %i.ay, 1
  br i1 %i.bp, label %bb.k, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"

bb.k:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i
  %i.bq = and i64 %i.ax, -262144
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load i64, ptr %i.br, align 262144       ; 3 uses
  %i.bt = and i64 %i.bs, 64
  %.not.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i64 %i.ax, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8 ; 2 uses
  %i.bx = and i64 %i.bw, 3
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.m, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.m:                                             ; preds = %bb.l
  %i.bz = or disjoint i64 %i.bw, 1
  store atomic volatile i64 %i.bz, ptr %i.aw monotonic, align 8
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.br, align 262144
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i": ; preds = %bb.m, %bb.l, %bb.k
  %i.ca = phi i64 [ %i.bs, %bb.k ], [ %i.bs, %bb.l ], [ %.pre.i.i.i.i.i.i.i.i, %bb.m ]
  %.fr19.i.i.i.i.i = freeze i64 %i.ca
  %.not.i.i.i.i.i.i.i.i = trunc i64 %.fr19.i.i.i.i.i to i1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i": ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i
  %i.cb = or i32 %i.ar, %.0412.i.i.i.i.i
  br label %bb.n

bb.n:                                             ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i", %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i
  %i.cc = phi i64 [ 0, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i" ], [ 1, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ 1, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i ]
  %.142.i.i.i.i.i = phi i32 [ %i.cb, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i" ], [ %.0412.i.i.i.i.i, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ], [ %.0412.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.2.i.i.i.i.i = add i64 %i.cc, %.1403.i.i.i.i.i ; 4 uses
  %i.cd = xor i32 %i.ar, %.0441.i.i.i.i.i
  %.not49.i.i.i.i.i = icmp eq i32 %i.ar, %.0441.i.i.i.i.i
  br i1 %.not49.i.i.i.i.i, label %bb.o, label %.preheader.i.i.i.i.i, !llvm.loop !617

bb.o:                                             ; preds = %bb.n
  %i.ce = and i32 %.142.i.i.i.i.i, %i.ap
  %.not50.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not50.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load atomic volatile i32, ptr %i.ao monotonic, align 4
  %i.cg = xor i32 %.142.i.i.i.i.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.013.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.p ], [ %i.ck, %bb.r ] ; 3 uses
  %i.ch = and i32 %.013.i.i.i.i.i.i.i, %.142.i.i.i.i.i
  %.not16.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not16.not.not.i.not.i.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = and i32 %.013.i.i.i.i.i.i.i, %i.cg
  %i.cj = cmpxchg volatile ptr %i.ao, i32 %.013.i.i.i.i.i.i.i, i32 %i.ci release monotonic, align 4 ; 2 uses
  %i.ck = extractvalue { i32, i1 } %i.cj, 0
  %.not.i.i.i.i.i.i.i = extractvalue { i32, i1 } %i.cj, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i, label %bb.q, !llvm.loop !227

_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.o, %bb.g
  %.3.i.i.i.i.i = phi i64 [ %.0396.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i, %bb.o ], [ %.2.i.i.i.i.i, %bb.q ], [ %.2.i.i.i.i.i, %bb.r ] ; 3 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.cl = add nuw nsw i64 %.0435.i.i.i.i.i, 32
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 32
  br i1 %exitcond.not.i.i.i.i.i, label %bb.f, label %bb.g, !llvm.loop !618

bb.s:                                             ; preds = %bb.f
  %i.cm = load atomic volatile i64, ptr %i.aj acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.aj release, align 8
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = inttoptr i64 %i.cm to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 128) #33
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i": ; preds = %bb.t, %bb.s, %bb.f
  %i.cp = add i64 %.3.i.i.i.i.i, %.09.i.i.i.i.i
  br label %bb.u

bb.u:                                             ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.1.i.i.i.i.i = phi i64 [ %i.cp, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i" ], [ %.09.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cq = add nuw nsw i64 %.0387.i.i.i.i.i, 1     ; 2 uses
  %exitcond12.not.i.i.i.i.i = icmp eq i64 %i.cq, %i.ai
  br i1 %exitcond12.not.i.i.i.i.i, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit", label %.lr.ph.i.i.i.i.i, !llvm.loop !619

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit": ; preds = %bb.u
  %i.cr = and i64 %.1.i.i.i.i.i, 4294967295
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %bb.v

bb.v:                                             ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit"
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 262144
  %i.ct = and i64 %.sroa.0.0.copyload.i, 24
  %.not62 = icmp eq i64 %i.ct, 0
  br i1 %.not62, label %bb.w, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread"

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread": ; preds = %bb.d, %.loopexit, %bb.v, %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit"
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.t, i32 noundef 3) #31
  br label %bb.w

bb.w:                                             ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_0EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.cv = load atomic volatile i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = inttoptr i64 %i.cv to ptr
  %.not.i.i.i19 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i19, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load i64, ptr %i.w, align 8
  %i.cy = and i64 %i.cx, -262144
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = add i64 %i.da, 8191
  %i.dc = lshr i64 %i.db, 13                      ; 2 uses
  %.not10.i.i.i.i.i20 = icmp eq i64 %i.dc, 0
  br i1 %.not10.i.i.i.i.i20, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %bb.x, %bb.ak
  %.09.i.i.i.i.i22 = phi i64 [ %.1.i.i.i.i.i44, %bb.ak ], [ 0, %bb.x ] ; 2 uses
  %.0387.i.i.i.i.i23 = phi i64 [ %i.eu, %bb.ak ], [ 0, %bb.x ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0387.i.i.i.i.i23 ; 3 uses
  %i.de = load atomic volatile i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = inttoptr i64 %i.de to ptr
  %.not.i.i.i.i.i24 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i.i.i24, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.dg = shl i64 %.0387.i.i.i.i.i23, 10
  br label %bb.aa

bb.z:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40
  %i.dh = icmp eq i64 %.3.i.i.i.i.i41, 0
  br i1 %i.dh, label %bb.ai, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, %bb.y
  %indvars.iv.i.i.i.i.i25 = phi i64 [ 0, %bb.y ], [ %indvars.iv.next.i.i.i.i.i42, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40 ] ; 2 uses
  %.0396.i.i.i.i.i26 = phi i64 [ 0, %bb.y ], [ %.3.i.i.i.i.i41, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40 ] ; 2 uses
  %.0435.i.i.i.i.i27 = phi i64 [ %i.dg, %bb.y ], [ %i.ep, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i.i25 ; 3 uses
  %i.dj = load atomic volatile i32, ptr %i.di acquire, align 4 ; 3 uses
  %.not48.i.i.i.i.i28 = icmp eq i32 %i.dj, 0
  br i1 %.not48.i.i.i.i.i28, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, label %.preheader.i.i.i.i.i29

.preheader.i.i.i.i.i29:                           ; preds = %bb.aa, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"
  %.1403.i.i.i.i.i30 = phi i64 [ %.2.i.i.i.i.i34, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i" ], [ %.0396.i.i.i.i.i26, %bb.aa ]
  %.0412.i.i.i.i.i31 = phi i32 [ %.142.i.i.i.i.i33, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i" ], [ 0, %bb.aa ]
  %.0441.i.i.i.i.i32 = phi i32 [ %i.eh, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i" ], [ %i.dj, %bb.aa ] ; 3 uses
  %i.dk = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0441.i.i.i.i.i32, i1 true) ; 2 uses
  %i.dl = shl nuw i32 1, %i.dk                    ; 4 uses
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = or disjoint i64 %.0435.i.i.i.i.i27, %i.dm
  %i.do = shl i64 %i.dn, 3
  %i.dp = add i64 %i.do, %i.cy
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  %i.dr = load atomic volatile i64, ptr %i.dq monotonic, align 8 ; 3 uses
  %i.ds = trunc i64 %i.dr to i1
  br i1 %i.ds, label %bb.ab, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"

bb.ab:                                            ; preds = %.preheader.i.i.i.i.i29
  %i.dt = and i64 %i.dr, -262144
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.dv = load i64, ptr %i.du, align 262144       ; 3 uses
  %i.dw = and i64 %i.dv, 64
  %.not.i.i.i.i.i.i.i.i.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47, label %bb.ac, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.ac:                                            ; preds = %bb.ab
  %i.dx = add nsw i64 %i.dr, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i64, ptr %i.dy monotonic, align 8 ; 2 uses
  %i.ea = and i64 %i.dz, 3
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ad, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

bb.ad:                                            ; preds = %bb.ac
  %i.ec = or disjoint i64 %i.dz, 1
  store atomic volatile i64 %i.ec, ptr %i.dq monotonic, align 8
  %.pre.i.i.i.i.i.i.i.i48 = load i64, ptr %i.du, align 262144
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i": ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ed = phi i64 [ %i.dv, %bb.ab ], [ %i.dv, %bb.ac ], [ %.pre.i.i.i.i.i.i.i.i48, %bb.ad ]
  %.fr.i.i.i.i.i = freeze i64 %i.ed               ; 2 uses
  %i.ee = trunc i64 %.fr.i.i.i.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %i.ee, i32 0, i32 %i.dl
  %i.ef = and i64 %.fr.i.i.i.i.i, 1
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i": ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", %.preheader.i.i.i.i.i29
  %.0.i.i.i18.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i29 ], [ %i.ef, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ]
  %i.eg = phi i32 [ %i.dl, %.preheader.i.i.i.i.i29 ], [ %spec.select.i.i.i.i.i, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ]
  %.142.i.i.i.i.i33 = or i32 %i.eg, %.0412.i.i.i.i.i31 ; 4 uses
  %.2.i.i.i.i.i34 = add i64 %.0.i.i.i18.i.i.i.i.i, %.1403.i.i.i.i.i30 ; 4 uses
  %i.eh = xor i32 %i.dl, %.0441.i.i.i.i.i32
  %.not49.i.i.i.i.i35 = icmp eq i32 %i.dl, %.0441.i.i.i.i.i32
  br i1 %.not49.i.i.i.i.i35, label %bb.ae, label %.preheader.i.i.i.i.i29, !llvm.loop !620

bb.ae:                                            ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"
  %i.ei = and i32 %.142.i.i.i.i.i33, %i.dj
  %.not50.i.i.i.i.i36 = icmp eq i32 %i.ei, 0
  br i1 %.not50.i.i.i.i.i36, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = load atomic volatile i32, ptr %i.di monotonic, align 4
  %i.ek = xor i32 %.142.i.i.i.i.i33, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.013.i.i.i.i.i.i.i37 = phi i32 [ %i.ej, %bb.af ], [ %i.eo, %bb.ah ] ; 3 uses
  %i.el = and i32 %.013.i.i.i.i.i.i.i37, %.142.i.i.i.i.i33
  %.not16.not.not.i.not.i.i.i.i.i.i38 = icmp eq i32 %i.el, 0
  br i1 %.not16.not.not.i.not.i.i.i.i.i.i38, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = and i32 %.013.i.i.i.i.i.i.i37, %i.ek
  %i.en = cmpxchg volatile ptr %i.di, i32 %.013.i.i.i.i.i.i.i37, i32 %i.em release monotonic, align 4 ; 2 uses
  %i.eo = extractvalue { i32, i1 } %i.en, 0
  %.not.i.i.i.i.i.i.i39 = extractvalue { i32, i1 } %i.en, 1
  br i1 %.not.i.i.i.i.i.i.i39, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, label %bb.ag, !llvm.loop !227

_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40: ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.aa
  %.3.i.i.i.i.i41 = phi i64 [ %.0396.i.i.i.i.i26, %bb.aa ], [ %.2.i.i.i.i.i34, %bb.ae ], [ %.2.i.i.i.i.i34, %bb.ag ], [ %.2.i.i.i.i.i34, %bb.ah ] ; 3 uses
  %indvars.iv.next.i.i.i.i.i42 = add nuw nsw i64 %indvars.iv.i.i.i.i.i25, 1 ; 2 uses
  %i.ep = add nuw nsw i64 %.0435.i.i.i.i.i27, 32
  %exitcond.not.i.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i.i42, 32
  br i1 %exitcond.not.i.i.i.i.i43, label %bb.z, label %bb.aa, !llvm.loop !621

bb.ai:                                            ; preds = %bb.z
  %i.eq = load atomic volatile i64, ptr %i.dd acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.dd release, align 8
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = inttoptr i64 %i.eq to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 128) #33
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i": ; preds = %bb.aj, %bb.ai, %bb.z
  %i.et = add i64 %.3.i.i.i.i.i41, %.09.i.i.i.i.i22
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i21
  %.1.i.i.i.i.i44 = phi i64 [ %i.et, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i" ], [ %.09.i.i.i.i.i22, %.lr.ph.i.i.i.i.i21 ] ; 2 uses
  %i.eu = add nuw nsw i64 %.0387.i.i.i.i.i23, 1   ; 2 uses
  %exitcond12.not.i.i.i.i.i45 = icmp eq i64 %i.eu, %i.dc
  br i1 %exitcond12.not.i.i.i.i.i45, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit", label %.lr.ph.i.i.i.i.i21, !llvm.loop !622

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit": ; preds = %bb.ak
  %i.ev = and i64 %.1.i.i.i.i.i44, 4294967295
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %bb.al

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread": ; preds = %bb.x, %bb.w, %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit"
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.t, i32 noundef 6) #31
  br label %bb.al

bb.al:                                            ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit"
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = and i32 %i.ey, 16
  %.not63 = icmp eq i32 %i.ez, 0
  br i1 %.not63, label %bb.cd, label %bb.am, !llvm.loop !623

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.fa = load i64, ptr %i.w, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = sub i64 %i.fc, %i.fa
  call void @_ZN2v88internal15ThreadIsolation21LookupWritableJitPageEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::WritableJitPage") align 8 %5, i64 noundef %i.fa, i64 noundef %i.fd) #31
  %i.fe = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.ff = load atomic volatile i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = inttoptr i64 %i.ff to ptr               ; 2 uses
  %.not.i49 = icmp eq i64 %i.ff, 0
  br i1 %.not.i49, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.045.i.i.i = load ptr, ptr %i.fh, align 8      ; 2 uses
  %.not46.i.i.i = icmp eq ptr %.045.i.i.i, null
  br i1 %.not46.i.i.i, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", label %.lr.ph49.i.i.i

.lr.ph49.i.i.i:                                   ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  br label %bb.ao

.loopexit.i.i.i:                                  ; preds = %bb.bx, %bb.ao
  %.126.lcssa.i.i.i = phi i32 [ %.02547.i.i.i, %bb.ao ], [ %.3.i.i.i, %bb.bx ] ; 2 uses
  %.0.i.i.i51 = load ptr, ptr %.048.i.i.i, align 8 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.0.i.i.i51, null
  br i1 %.not.i.i.i52, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit", label %bb.ao, !llvm.loop !624

bb.ao:                                            ; preds = %.loopexit.i.i.i, %.lr.ph49.i.i.i
  %.048.i.i.i = phi ptr [ %.045.i.i.i, %.lr.ph49.i.i.i ], [ %.0.i.i.i51, %.loopexit.i.i.i ] ; 3 uses
  %.02547.i.i.i = phi i32 [ 0, %.lr.ph49.i.i.i ], [ %.126.lcssa.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = icmp eq ptr %i.fk, %i.fm
  br i1 %i.fn, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %bb.bx
  %.12644.i.i.i = phi i32 [ %.3.i.i.i, %bb.bx ], [ %.02547.i.i.i, %bb.ao ] ; 3 uses
  %.sroa.033.043.i.i.i = phi ptr [ %i.kt, %bb.bx ], [ %i.fk, %bb.ao ] ; 3 uses
  %i.fo = load i32, ptr %.sroa.033.043.i.i.i, align 4 ; 2 uses
  %i.fp = lshr i32 %i.fo, 29                      ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.fp, 6
  br i1 %.not31.i.i.i, label %bb.bx, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.fq = trunc nuw nsw i32 %i.fp to i8
  %i.fr = and i32 %i.fo, 536870911
  %i.fs = load i64, ptr %i.fi, align 8
  %i.ft = zext nneg i32 %i.fr to i64
  %i.fu = add i64 %i.fs, %i.ft                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.fv = call { i64, ptr } @_ZN2v88internal15ThreadIsolation16JitPageReference20AllocationContainingEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.fu) #31, !noalias !625 ; 2 uses
  %i.fw = extractvalue { i64, ptr } %i.fv, 0
  %i.fx = extractvalue { i64, ptr } %i.fv, 1      ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !625
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !noalias !625
  store i64 %i.fw, ptr %3, align 8
  store i8 0, ptr %i.d, align 1
  store i8 0, ptr %i.f, align 8
  store i64 %i.fy, ptr %i.g, align 8
  store i32 %i.ga, ptr %i.h, align 8
  store i8 0, ptr %i.i, align 8
  switch i8 %i.fq, label %bb.bp [
    i8 2, label %bb.aq
    i8 5, label %bb.aw
    i8 1, label %bb.bb
    i8 0, label %bb.bf
    i8 4, label %bb.bj
    i8 3, label %bb.bk
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store i64 %i.fu, ptr %2, align 8
  store i8 1, ptr %i.j, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %3, ptr %i.l, align 8
  %i.gb = inttoptr i64 %i.fu to ptr
  %.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.gb, align 1
  %i.gc = sext i32 %.0.copyload.i.i.i.i.i.i.i.i to i64
end_hunk_2
begin_hunk_3_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSJ_PFvSJ_hmmE:bb.a
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %.lr.ph
  %i.al = and i64 %i.ai, 15
  %i.am = add i64 %i.al, %i.af
  %i.an = and i64 %i.am, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.af, %i.b
  %.not.i = icmp ult i64 %i.ao, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.af, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.at, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %i.ap, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ah, i64 noundef %i.t, i64 noundef %i.af) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.aw, %bb.g ], [ %i.an, %bb.d ] ; 3 uses
  %i.ax = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ah, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.ba = load i64, ptr %i.u, align 8
  store i64 %i.ba, ptr %i.az, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = add i16 %.sroa.052.061, -1
  %i.bc = and i16 %i.bb, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef zeroext i1 @_ZNK2v88internal19MutablePageMetadata16ContainsAnySlotsEv(ptr noundef nonnull align 8 dereferenceable(4448)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItemD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem7ProcessEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.i37.i.i.i.i.i.i.i = alloca i64, align 8 ; 5 uses
  %.sroa.0.i32.i.i.i.i.i.i.i = alloca i64, align 8 ; 5 uses
  %.sroa.0.i27.i.i.i.i.i.i.i = alloca i64, align 8 ; 5 uses
  %.sroa.0.i.i.i.i.i.i.i1.i = alloca i64, align 8 ; 5 uses
  %1 = alloca %"class.v8::internal::WritableRelocInfo", align 8 ; 7 uses
  %.sroa.0.i.i.i.i.i.i2.i = alloca i64, align 8   ; 5 uses
  %2 = alloca %"class.v8::internal::WritableJitAllocation", align 8 ; 10 uses
  %.sroa.0.i52.i.i.i.i.i.i.i = alloca i64, align 8 ; 5 uses
  %.sroa.0.i41.i.i.i.i.i.i.i = alloca i64, align 8 ; 5 uses
  %.sroa.0.i30.i.i.i.i.i.i.i = alloca i64, align 8 ; 5 uses
  %.sroa.0.i.i.i.i.i.i.i.i = alloca i64, align 8  ; 5 uses
  %3 = alloca %"class.v8::internal::WritableRelocInfo", align 8 ; 7 uses
  %.sroa.0.i.i.i.i.i.i.i = alloca i64, align 8    ; 5 uses
  %4 = alloca %"class.v8::internal::WritableJitAllocation", align 8 ; 10 uses
  %5 = alloca %"class.v8::internal::WritableJitPage", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::WritableJitPage", align 8 ; 3 uses
  %7 = alloca %"class.v8::internal::WritableJitPage", align 8 ; 3 uses
  %8 = alloca [2 x %"class.std::unique_ptr.1522"], align 16 ; 6 uses
  %9 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem7ProcessEvE29trace_event_unique_atomic5278 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #31 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.33) #31 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem7ProcessEvE29trace_event_unique_atomic5278 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr null, ptr %9, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not7 = icmp eq i8 %i.j, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #31 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.284, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, i32 noundef 0) #31, !inline_history !35
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #31, !inline_history !36
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %8, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #31, !inline_history !36
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.284, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %9, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 22 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load atomic volatile i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, -262144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, 8191
  %i.an = lshr i64 %i.am, 13                      ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.0389.i.i.i.i.i.i.i = phi i64 [ %i.eb, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.0389.i.i.i.i.i.i.i
  %i.aq = load atomic volatile i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.as = shl i64 %.0389.i.i.i.i.i.i.i, 10
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i.i.i.i.i.i, %bb.h
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %.0437.i.i.i.i.i.i.i = phi i64 [ %i.as, %bb.h ], [ %i.ea, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.au = load atomic volatile i32, ptr %i.at acquire, align 4 ; 2 uses
  %.not48.i.i.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not48.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.i, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i
  %.0444.i.i.i.i.i.i.i = phi i32 [ %i.dz, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %i.au, %bb.i ] ; 3 uses
  %i.av = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0444.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.aw = shl nuw i32 1, %i.av                    ; 2 uses
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = or disjoint i64 %.0437.i.i.i.i.i.i.i, %i.ax
  %i.az = shl i64 %i.ay, 3                        ; 3 uses
  %i.ba = add i64 %i.az, %i.aj                    ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr               ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 5 uses
  %i.bd = trunc i64 %i.bc to i1
  %i.be = and i64 %i.bc, 4294967295
  %i.bf = icmp ne i64 %i.be, 3
  %i.bg = and i1 %i.bf, %i.bd
  br i1 %i.bg, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.bh = and i64 %i.bc, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 262144
  %i.bj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 11 uses
  %i.bl = and i64 %i.bk, 3                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 3
  %i.bn = and i64 %i.bk, 4294967295
  %i.bo = icmp ne i64 %i.bn, 3
  %i.bp = and i1 %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bq = and i64 %i.bk, -262144
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load i64, ptr %i.br, align 262144
  %i.bt = and i64 %i.bs, 64
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bu = and i64 %i.bk, -3
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8 ; 2 uses
  %i.by = and i64 %i.bx, 3
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ca = or disjoint i64 %i.bx, 3
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.cb = icmp eq i64 %i.bl, 1
  br i1 %i.cb, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = and i64 %i.bk, -262144
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 262144
  %i.cf = and i64 %i.ce, 64
  %.not.i4.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i4.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.cg = add nsw i64 %i.bk, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i64, ptr %i.ch monotonic, align 8 ; 2 uses
  %i.cj = and i64 %i.ci, 3
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.cl = or disjoint i64 %i.ci, 1
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.n
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.q ], [ %i.ca, %bb.n ] ; 2 uses
  store atomic volatile i64 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bb monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %bb.o, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.l, %bb.j, %.preheader.i.i.i.i.i.i.i
  %i.cm = phi i64 [ %i.bc, %.preheader.i.i.i.i.i.i.i ], [ %i.bc, %bb.j ], [ %i.bk, %bb.l ], [ %i.bk, %bb.m ], [ %i.bk, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.o ], [ %i.bk, %bb.p ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cn = load i8, ptr %i.ao, align 8, !range !5, !noundef !6
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.r, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i
  %i.cp = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.cq = trunc i64 %i.cm to i1
  %i.cr = and i64 %i.cm, 4294967295
  %i.cs = icmp ne i64 %i.cr, 3
  %i.ct = and i1 %i.cs, %i.cq
  br i1 %i.ct, label %bb.s, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cu = and i64 %i.cm, -262144
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load i64, ptr %i.cv, align 262144
  %i.cx = and i64 %i.cw, 1
  %.not.i4.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i4.i.i.i.i.i.i.i.i.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = and i64 %i.cz, -262144
  %i.db = sub i64 %i.ba, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.df = call noundef ptr @_ZN2v88internal19MutablePageMetadata15AllocateSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.cp, i32 noundef 3) #31
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.df, %bb.u ], [ %i.dd, %bb.t ] ; 2 uses
  %i.dg = lshr i64 %i.db, 13                      ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.di = load i64, ptr %i.dh, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dg, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, !prof !10

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.233) #34
  unreachable

_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.dj = trunc i64 %i.az to i32
  %i.dk = lshr i64 %i.az, 8
  %i.dl = and i64 %i.dk, 31
  %i.dm = lshr exact i32 %i.dj, 3
  %i.dn = and i32 %i.dm, 31
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dg ; 2 uses
  %i.dp = load atomic volatile i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = icmp eq i64 %i.dp, 0
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ds = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #35 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ds, i8 0, i64 128, i1 false)
  store ptr %i.ds, ptr %i.do, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.x ], [ %i.dq, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dt = shl nuw i32 1, %i.dn                    ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dl ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = and i32 %i.dv, %i.dt
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.z, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.dy = or i32 %i.dv, %i.dt
  store i32 %i.dy, ptr %i.du, align 4
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.s, %bb.r, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i.i
  %i.dz = xor i32 %i.aw, %.0444.i.i.i.i.i.i.i
  %.not49.i.i.i.i.i.i.i = icmp eq i32 %i.aw, %.0444.i.i.i.i.i.i.i
  br i1 %.not49.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !775

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, %bb.i
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ea = add nuw nsw i64 %.0437.i.i.i.i.i.i.i, 32
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, 32
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.i, !llvm.loop !776

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.eb = add nuw nsw i64 %.0389.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond14.not.i.i.i.i.i.i.i = icmp eq i64 %i.eb, %i.an
  br i1 %exitcond14.not.i.i.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !777

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i: ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %bb.g, %bb.f
  %i.ec = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.ec, i32 noundef 0) #31
  %.pre.i = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvv.exit.i

_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvv.exit.i: ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, %bb.e
  %i.ed = phi ptr [ %i.ac, %bb.e ], [ %.pre.i, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_0EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 104 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %.not.i1.i = icmp eq ptr %i.ef, null
  br i1 %.not.i1.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvv.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvv.exit.i
  %i.eg = load atomic volatile i64, ptr %i.ee acquire, align 8 ; 2 uses
  %i.eh = inttoptr i64 %i.eg to ptr
  %.not.i.i.i.i2.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i2.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = and i64 %i.ej, -262144
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.em = load i64, ptr %i.el, align 8
  %i.en = add i64 %i.em, 8191
  %i.eo = lshr i64 %i.en, 13                      ; 2 uses
  %.not12.i.i.i.i.i.i3.i = icmp eq i64 %i.eo, 0
  br i1 %.not12.i.i.i.i.i.i3.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i.i4.i

.lr.ph.i.preheader.i.i.i.i.i4.i:                  ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i.i.i.i.i.i5.i

.lr.ph.i.i.i.i.i.i5.i:                            ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i4.i
  %.0389.i.i.i.i.i.i6.i = phi i64 [ %i.ic, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i4.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.0389.i.i.i.i.i.i6.i
  %i.er = load atomic volatile i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr
  %.not.i.i.i.i.i.i7.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i.i.i.i7.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i5.i
  %i.et = shl i64 %.0389.i.i.i.i.i.i6.i, 10
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i.i.i.i.i.i15.i, %bb.ac
  %indvars.iv.i.i.i.i.i.i8.i = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next.i.i.i.i.i.i16.i, %.loopexit.i.i.i.i.i.i15.i ] ; 2 uses
  %.0437.i.i.i.i.i.i9.i = phi i64 [ %i.et, %bb.ac ], [ %i.ib, %.loopexit.i.i.i.i.i.i15.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.i.i.i.i8.i
  %i.ev = load atomic volatile i32, ptr %i.eu acquire, align 4 ; 2 uses
  %.not48.i.i.i.i.i.i10.i = icmp eq i32 %i.ev, 0
  br i1 %.not48.i.i.i.i.i.i10.i, label %.loopexit.i.i.i.i.i.i15.i, label %.preheader.i.i.i.i.i.i11.i

.preheader.i.i.i.i.i.i11.i:                       ; preds = %bb.ad, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i
  %.0444.i.i.i.i.i.i12.i = phi i32 [ %i.ia, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %i.ev, %bb.ad ] ; 3 uses
  %i.ew = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0444.i.i.i.i.i.i12.i, i1 true) ; 2 uses
  %i.ex = shl nuw i32 1, %i.ew                    ; 2 uses
  %i.ey = zext nneg i32 %i.ew to i64
  %i.ez = or disjoint i64 %.0437.i.i.i.i.i.i9.i, %i.ey
  %i.fa = shl i64 %i.ez, 3                        ; 3 uses
  %i.fb = add i64 %i.fa, %i.ek                    ; 2 uses
  %i.fc = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8            ; 5 uses
  %i.fe = trunc i64 %i.fd to i1
  %i.ff = and i64 %i.fd, 4294967295
  %i.fg = icmp ne i64 %i.ff, 3
  %i.fh = and i1 %i.fg, %i.fe
  br i1 %i.fh, label %bb.ae, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i

bb.ae:                                            ; preds = %.preheader.i.i.i.i.i.i11.i
  %i.fi = and i64 %i.fd, -262144
  %i.fj = inttoptr i64 %i.fi to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i24.i = load i64, ptr %i.fj, align 262144
  %i.fk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i24.i, 24
  %.not.i.i.i.i.i.i.i.i.i25.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i25.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = load atomic volatile i64, ptr %i.fc monotonic, align 8 ; 11 uses
  %i.fm = and i64 %i.fl, 3                        ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 3
  %i.fo = and i64 %i.fl, 4294967295
  %i.fp = icmp ne i64 %i.fo, 3
  %i.fq = and i1 %i.fn, %i.fp
  br i1 %i.fq, label %bb.ag, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i26.i

bb.ag:                                            ; preds = %bb.af
  %i.fr = and i64 %i.fl, -262144
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load i64, ptr %i.fs, align 262144
  %i.fu = and i64 %i.ft, 64
  %.not.i.i.i.i.i.i.i.i.i.i.i30.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i30.i, label %bb.ah, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i

bb.ah:                                            ; preds = %bb.ag
  %i.fv = and i64 %i.fl, -3
  %i.fw = add nsw i64 %i.fv, -1
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load atomic volatile i64, ptr %i.fx monotonic, align 8 ; 2 uses
  %i.fz = and i64 %i.fy, 3
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ai, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i

bb.ai:                                            ; preds = %bb.ah
  %i.gb = or disjoint i64 %i.fy, 3
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i28.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i26.i: ; preds = %bb.af
  %i.gc = icmp eq i64 %i.fm, 1
  br i1 %i.gc, label %bb.aj, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i

bb.aj:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i26.i
  %i.gd = and i64 %i.fl, -262144
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load i64, ptr %i.ge, align 262144
  %i.gg = and i64 %i.gf, 64
  %.not.i4.i.i.i.i.i.i.i.i.i.i27.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i4.i.i.i.i.i.i.i.i.i.i27.i, label %bb.ak, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i

bb.ak:                                            ; preds = %bb.aj
  %i.gh = add nsw i64 %i.fl, -1
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load atomic volatile i64, ptr %i.gi monotonic, align 8 ; 2 uses
  %i.gk = and i64 %i.gj, 3
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.al, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i

bb.al:                                            ; preds = %bb.ak
  %i.gm = or disjoint i64 %i.gj, 1
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i28.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i28.i: ; preds = %bb.al, %bb.ai
  %.sink.i.i.i.i.i.i.i.i.i.i29.i = phi i64 [ %i.gm, %bb.al ], [ %i.gb, %bb.ai ] ; 2 uses
  store atomic volatile i64 %.sink.i.i.i.i.i.i.i.i.i.i29.i, ptr %i.fc monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i

_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i: ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i28.i, %bb.ak, %bb.aj, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i26.i, %bb.ah, %bb.ag, %bb.ae, %.preheader.i.i.i.i.i.i11.i
  %i.gn = phi i64 [ %i.fd, %.preheader.i.i.i.i.i.i11.i ], [ %i.fd, %bb.ae ], [ %i.fl, %bb.ag ], [ %i.fl, %bb.ah ], [ %i.fl, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i26.i ], [ %i.fl, %bb.aj ], [ %i.fl, %bb.ak ], [ %.sink.i.i.i.i.i.i.i.i.i.i29.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i28.i ] ; 3 uses
  %i.go = load i8, ptr %i.ep, align 8, !range !5, !noundef !6
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.am, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i
  %i.gq = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.gr = trunc i64 %i.gn to i1
  %i.gs = and i64 %i.gn, 4294967295
  %i.gt = icmp ne i64 %i.gs, 3
  %i.gu = and i1 %i.gt, %i.gr
  br i1 %i.gu, label %bb.an, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.gv = and i64 %i.gn, -262144
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load i64, ptr %i.gw, align 262144
  %i.gy = and i64 %i.gx, 1
  %.not.i4.i.i.i.i.i.i.i.i19.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i4.i.i.i.i.i.i.i.i19.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 72
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = and i64 %i.ha, -262144
  %i.hc = sub i64 %i.fb, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gq, i64 120
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hg = call noundef ptr @_ZN2v88internal19MutablePageMetadata15AllocateSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.gq, i32 noundef 3) #31
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i20.i = phi ptr [ %i.hg, %bb.ap ], [ %i.he, %bb.ao ] ; 2 uses
  %i.hh = lshr i64 %i.hc, 13                      ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i.i20.i, i64 -8
  %i.hj = load i64, ptr %i.hi, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i21.i = icmp ult i64 %i.hh, %i.hj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i21.i, label %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i, label %bb.ar, !prof !10

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.233) #34
  unreachable

_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i: ; preds = %bb.aq
  %i.hk = trunc i64 %i.fa to i32
  %i.hl = lshr i64 %i.fa, 8
  %i.hm = and i64 %i.hl, 31
  %i.hn = lshr exact i32 %i.hk, 3
  %i.ho = and i32 %i.hn, 31
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i20.i, i64 %i.hh ; 2 uses
  %i.hq = load atomic volatile i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = icmp eq i64 %i.hq, 0
  br i1 %i.hs, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i
  %i.ht = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #35 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ht, i8 0, i64 128, i1 false)
  store ptr %i.ht, ptr %i.hp, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i23.i = phi ptr [ %i.ht, %bb.as ], [ %i.hr, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i ]
  %i.hu = shl nuw i32 1, %i.ho                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i23.i, i64 %i.hm ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4            ; 2 uses
  %i.hx = and i32 %i.hw, %i.hu
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.au, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.hz = or i32 %i.hw, %i.hu
  store i32 %i.hz, ptr %i.hv, align 4
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at, %bb.an, %bb.am, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem26CheckAndUpdateOldToNewSlotINS0_19FullMaybeObjectSlotEEEvT_NS0_16PtrComprCageBaseE.exit.i.i.i.i.i.i.i.i13.i
  %i.ia = xor i32 %i.ex, %.0444.i.i.i.i.i.i12.i
  %.not49.i.i.i.i.i.i14.i = icmp eq i32 %i.ex, %.0444.i.i.i.i.i.i12.i
  br i1 %.not49.i.i.i.i.i.i14.i, label %.loopexit.i.i.i.i.i.i15.i, label %.preheader.i.i.i.i.i.i11.i, !llvm.loop !778

.loopexit.i.i.i.i.i.i15.i:                        ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, %bb.ad
  %indvars.iv.next.i.i.i.i.i.i16.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i8.i, 1 ; 2 uses
  %i.ib = add nuw nsw i64 %.0437.i.i.i.i.i.i9.i, 32
  %exitcond.not.i.i.i.i.i.i17.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i16.i, 32
  br i1 %exitcond.not.i.i.i.i.i.i17.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.ad, !llvm.loop !779

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i15.i, %.lr.ph.i.i.i.i.i.i5.i
  %i.ic = add nuw nsw i64 %.0389.i.i.i.i.i.i6.i, 1 ; 2 uses
  %exitcond14.not.i.i.i.i.i.i18.i = icmp eq i64 %i.ic, %i.eo
  br i1 %exitcond14.not.i.i.i.i.i.i18.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i5.i, !llvm.loop !780

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i: ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.id = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.id, i32 noundef 1) #31
  %.pre105.i = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvv.exit.i

_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvv.exit.i: ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvv.exit.i
  %i.ie = phi ptr [ %i.ed, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE0EEEvv.exit.i ], [ %.pre105.i, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILS2_1EEEvvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i ] ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 112 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8
  %.not.i31.i = icmp eq ptr %i.ig, null
  br i1 %.not.i31.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEv.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvv.exit.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 88
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = and i32 %i.ii, 16
  %.not23.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not23.i.i, label %bb.bl, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  %i.il = load i64, ptr %i.ik, align 8            ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.in = load i64, ptr %i.im, align 8
  %i.io = sub i64 %i.in, %i.il
  %i.ip = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.iq = trunc nuw i8 %i.ip to i1
  %.not18.i.i = xor i1 %i.iq, true
  %i.ir = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.is = trunc nuw i8 %i.ir to i1
  %or.cond.i.i = select i1 %.not18.i.i, i1 true, i1 %i.is
  br i1 %or.cond.i.i, label %bb.ax, label %_ZN2v88internal15WritableJitPageC2Emm.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.it, -1
  br i1 %.not24.i.i, label %_ZN2v88internal15WritableJitPageC2Emm.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.it, i32 noundef 0) #31
  br label %_ZN2v88internal15WritableJitPageC2Emm.exit.i.i

_ZN2v88internal15WritableJitPageC2Emm.exit.i.i:   ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @_ZN2v88internal15ThreadIsolation13LookupJitPageEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ThreadIsolation::JitPageReference") align 8 %i.iu, i64 noundef %i.il, i64 noundef %i.io) #31
  %i.iv = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 112
  %i.ix = load atomic volatile i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = inttoptr i64 %i.ix to ptr
  %.not.i.i.i.i32.i = icmp eq i64 %i.ix, 0
  br i1 %.not.i.i.i.i32.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN2v88internal15WritableJitPageC2Emm.exit.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 72
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = and i64 %i.ja, -262144
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = add i64 %i.jd, 8191
  %i.jf = lshr i64 %i.je, 13                      ; 2 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i64 %i.jf, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i33.i

.lr.ph.i.i.i.i.i.i33.i:                           ; preds = %bb.az, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i
  %.03812.i.i.i.i.i.i.i = phi i64 [ %i.ko, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i ], [ 0, %bb.az ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.03812.i.i.i.i.i.i.i
  %i.jh = load atomic volatile i64, ptr %i.jg acquire, align 8 ; 2 uses
  %i.ji = inttoptr i64 %i.jh to ptr
  %.not.i.i.i.i.i.i34.i = icmp eq i64 %i.jh, 0
  br i1 %.not.i.i.i.i.i.i34.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i33.i
  %i.jj = shl i64 %.03812.i.i.i.i.i.i.i, 10
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.i.i.i.i.i.i39.i, %bb.ba
  %indvars.iv.i.i.i.i.i.i35.i = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next.i.i.i.i.i.i40.i, %.loopexit.i.i.i.i.i.i39.i ] ; 2 uses
  %.04310.i.i.i.i.i.i.i = phi i64 [ %i.jj, %bb.ba ], [ %i.kn, %.loopexit.i.i.i.i.i.i39.i ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.i.i.i.i.i.i35.i
  %i.jl = load atomic volatile i32, ptr %i.jk acquire, align 4 ; 2 uses
  %.not48.i.i.i.i.i.i36.i = icmp eq i32 %i.jl, 0
  br i1 %.not48.i.i.i.i.i.i36.i, label %.loopexit.i.i.i.i.i.i39.i, label %.preheader.i.i.i.i.i.i37.i

.preheader.i.i.i.i.i.i37.i:                       ; preds = %bb.bb, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i
  %.0447.i.i.i.i.i.i.i = phi i32 [ %i.km, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %i.jl, %bb.bb ] ; 3 uses
  %i.jm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0447.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.jn = shl nuw i32 1, %i.jm                    ; 2 uses
  %i.jo = zext nneg i32 %i.jm to i64
  %i.jp = or disjoint i64 %.04310.i.i.i.i.i.i.i, %i.jo
  %i.jq = shl i64 %i.jp, 3
  %i.jr = add i64 %i.jq, %i.jb                    ; 3 uses
  %i.js = call { i64, ptr } @_ZN2v88internal15ThreadIsolation16JitPageReference20AllocationContainingEm(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 noundef %i.jr) #31, !noalias !781 ; 2 uses
  %i.jt = extractvalue { i64, ptr } %i.js, 0
  %i.ju = extractvalue { i64, ptr } %i.js, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !noalias !781
  %i.jx = inttoptr i64 %i.jr to ptr               ; 2 uses
  %i.jy = load atomic volatile i64, ptr %i.jx monotonic, align 8 ; 3 uses
  %i.jz = trunc i64 %i.jy to i1
  br i1 %i.jz, label %bb.bc, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %.preheader.i.i.i.i.i.i37.i
  %i.ka = and i64 %i.jy, -262144
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = load i64, ptr %i.kb, align 262144
  %i.kd = and i64 %i.kc, 64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bd, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.ke = add nsw i64 %i.jy, -1
  %i.kf = inttoptr i64 %i.ke to ptr
  %i.kg = load atomic volatile i64, ptr %i.kf monotonic, align 8 ; 2 uses
  %i.kh = and i64 %i.kg, 3
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %bb.be, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.kj = or disjoint i64 %i.kg, 1
  %i.kk = icmp eq i32 %i.jw, 0
  br i1 %i.kk, label %bb.bg, label %bb.bf, !prof !10

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.286) #34
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.kl = sub i64 %i.jr, %i.jt
  switch i64 %i.kl, label %bb.bh [
    i64 8, label %_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i
    i64 16, label %_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34
  unreachable

_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bg
  store atomic volatile i64 %i.kj, ptr %i.jx monotonic, align 8
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i: ; preds = %_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bd, %bb.bc, %.preheader.i.i.i.i.i.i37.i
  %i.km = xor i32 %i.jn, %.0447.i.i.i.i.i.i.i
  %.not49.i.i.i.i.i.i38.i = icmp eq i32 %i.jn, %.0447.i.i.i.i.i.i.i
  br i1 %.not49.i.i.i.i.i.i38.i, label %.loopexit.i.i.i.i.i.i39.i, label %.preheader.i.i.i.i.i.i37.i, !llvm.loop !784

.loopexit.i.i.i.i.i.i39.i:                        ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, %bb.bb
  %indvars.iv.next.i.i.i.i.i.i40.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i35.i, 1 ; 2 uses
  %i.kn = add nuw nsw i64 %.04310.i.i.i.i.i.i.i, 32
  %exitcond.not.i.i.i.i.i.i41.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i40.i, 32
  br i1 %exitcond.not.i.i.i.i.i.i41.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.bb, !llvm.loop !785

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i39.i, %.lr.ph.i.i.i.i.i.i33.i
  %i.ko = add nuw nsw i64 %.03812.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond17.not.i.i.i.i.i.i.i = icmp eq i64 %i.ko, %i.jf
  br i1 %exitcond17.not.i.i.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i33.i, !llvm.loop !786

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i: ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %bb.az, %_ZN2v88internal15WritableJitPageC2Emm.exit.i.i
  %i.kp = load ptr, ptr %i.iu, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kp) #31
  br label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i.i

_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i.i: ; preds = %bb.bi, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i
  %i.kq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.kr = trunc nuw i8 %i.kq to i1
  %.not20.i.i = xor i1 %i.kr, true
  %i.ks = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.kt = trunc nuw i8 %i.ks to i1
  %or.cond22.i.i = select i1 %.not20.i.i, i1 true, i1 %i.kt
  br i1 %or.cond22.i.i, label %bb.bj, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i.i

bb.bj:                                            ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i.i
  %i.ku = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not25.i.i = icmp eq i32 %i.ku, -1
  br i1 %.not25.i.i, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ku, i32 noundef 2) #31
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i.i

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i.i: ; preds = %bb.bk, %bb.bj, %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i

bb.bl:                                            ; preds = %bb.av
  %i.kv = load atomic volatile i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.kw = inttoptr i64 %i.kv to ptr
  %.not.i.i.i3.i.i = icmp eq i64 %i.kv, 0
  br i1 %.not.i.i.i3.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = and i64 %i.ky, -262144
  %i.la = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = add i64 %i.lb, 8191
  %i.ld = lshr i64 %i.lc, 13                      ; 2 uses
  %.not12.i.i.i.i.i.i42.i = icmp eq i64 %i.ld, 0
  br i1 %.not12.i.i.i.i.i.i42.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i4.i.i

.lr.ph.i.preheader.i.i.i.i4.i.i:                  ; preds = %bb.bm
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i.i.i.i.i5.i.i

.lr.ph.i.i.i.i.i5.i.i:                            ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i4.i.i
  %.0389.i.i.i.i.i.i43.i = phi i64 [ %i.oj, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i4.i.i ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.0389.i.i.i.i.i.i43.i
  %i.lg = load atomic volatile i64, ptr %i.lf acquire, align 8 ; 2 uses
  %i.lh = inttoptr i64 %i.lg to ptr
  %.not.i.i.i.i.i6.i.i = icmp eq i64 %i.lg, 0
  br i1 %.not.i.i.i.i.i6.i.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i5.i.i
  %i.li = shl i64 %.0389.i.i.i.i.i.i43.i, 10
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit.i.i.i.i.i11.i.i, %bb.bn
  %indvars.iv.i.i.i.i.i7.i.i = phi i64 [ 0, %bb.bn ], [ %indvars.iv.next.i.i.i.i.i13.i.i, %.loopexit.i.i.i.i.i11.i.i ] ; 2 uses
  %.0437.i.i.i.i.i.i44.i = phi i64 [ %i.li, %bb.bn ], [ %i.oi, %.loopexit.i.i.i.i.i11.i.i ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i.i.i.i7.i.i
  %i.lk = load atomic volatile i32, ptr %i.lj acquire, align 4 ; 2 uses
  %.not48.i.i.i.i.i8.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not48.i.i.i.i.i8.i.i, label %.loopexit.i.i.i.i.i11.i.i, label %.preheader.i.i.i.i.i9.i.i

.preheader.i.i.i.i.i9.i.i:                        ; preds = %bb.bo, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i
  %.0444.i.i.i.i.i.i45.i = phi i32 [ %i.oh, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %i.lk, %bb.bo ] ; 3 uses
  %i.ll = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0444.i.i.i.i.i.i45.i, i1 true) ; 2 uses
  %i.lm = shl nuw i32 1, %i.ll                    ; 2 uses
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = or disjoint i64 %.0437.i.i.i.i.i.i44.i, %i.ln
  %i.lp = shl i64 %i.lo, 3                        ; 3 uses
  %i.lq = add i64 %i.lp, %i.kz                    ; 2 uses
  %i.lr = inttoptr i64 %i.lq to ptr               ; 2 uses
  %i.ls = load atomic volatile i64, ptr %i.lr monotonic, align 8 ; 11 uses
  %i.lt = and i64 %i.ls, 3                        ; 2 uses
  %i.lu = icmp eq i64 %i.lt, 3
  %i.lv = and i64 %i.ls, 4294967295
  %i.lw = icmp ne i64 %i.lv, 3
  %i.lx = and i1 %i.lu, %i.lw
  br i1 %i.lx, label %bb.bp, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %.preheader.i.i.i.i.i9.i.i
  %i.ly = and i64 %i.ls, -262144
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = load i64, ptr %i.lz, align 262144
  %i.mb = and i64 %i.ma, 64
  %.not.i.i.i.i.i.i.i.i.i17.i.i = icmp eq i64 %i.mb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i.i, label %bb.bq, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.mc = and i64 %i.ls, -3
  %i.md = add nsw i64 %i.mc, -1
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = load atomic volatile i64, ptr %i.me monotonic, align 8 ; 2 uses
  %i.mg = and i64 %i.mf, 3
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %bb.br, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.mi = or disjoint i64 %i.mf, 3
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i9.i.i
  %i.mj = icmp eq i64 %i.lt, 1
  br i1 %i.mj, label %bb.bs, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i
  %i.mk = and i64 %i.ls, -262144
  %i.ml = inttoptr i64 %i.mk to ptr
  %i.mm = load i64, ptr %i.ml, align 262144
  %i.mn = and i64 %i.mm, 64
  %.not.i4.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mn, 0
  br i1 %.not.i4.i.i.i.i.i.i.i.i.i.i, label %bb.bt, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.mo = add nsw i64 %i.ls, -1
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = load atomic volatile i64, ptr %i.mp monotonic, align 8 ; 2 uses
  %i.mr = and i64 %i.mq, 3
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.bu, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.mt = or disjoint i64 %i.mq, 1
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bu, %bb.br
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mt, %bb.bu ], [ %i.mi, %bb.br ] ; 2 uses
  store atomic volatile i64 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.lr monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.bt, %bb.bs, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i, %bb.bq, %bb.bp
  %i.mu = phi i64 [ %i.ls, %bb.bp ], [ %i.ls, %bb.bq ], [ %i.ls, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ls, %bb.bs ], [ %i.ls, %bb.bt ], [ %.sink.i.i.i.i.i.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.mv = load i8, ptr %i.le, align 8, !range !5, !noundef !6
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.bv, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i
  %i.mx = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.my = trunc i64 %i.mu to i1
  %i.mz = and i64 %i.mu, 4294967295
  %i.na = icmp ne i64 %i.mz, 3
  %i.nb = and i1 %i.na, %i.my
  br i1 %i.nb, label %bb.bw, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.nc = and i64 %i.mu, -262144
  %i.nd = inttoptr i64 %i.nc to ptr
  %i.ne = load i64, ptr %i.nd, align 262144
  %i.nf = and i64 %i.ne, 1
  %.not.i.i.i.i.i.i.i.i.i47.i = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mx, i64 72
  %i.nh = load i64, ptr %i.ng, align 8
  %i.ni = and i64 %i.nh, -262144
  %i.nj = sub i64 %i.lq, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mx, i64 120
  %i.nl = load ptr, ptr %i.nk, align 8            ; 2 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nn = call noundef ptr @_ZN2v88internal19MutablePageMetadata15AllocateSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.mx, i32 noundef 3) #31
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i.i.i.i.i48.i = phi ptr [ %i.nn, %bb.by ], [ %i.nl, %bb.bx ] ; 2 uses
  %i.no = lshr i64 %i.nj, 13                      ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i.i48.i, i64 -8
  %i.nq = load i64, ptr %i.np, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i49.i = icmp ult i64 %i.no, %i.nq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i49.i, label %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i50.i, label %bb.ca, !prof !10

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.233) #34
  unreachable

_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i50.i: ; preds = %bb.bz
  %i.nr = trunc i64 %i.lp to i32
  %i.ns = lshr i64 %i.lp, 8
  %i.nt = and i64 %i.ns, 31
  %i.nu = lshr exact i32 %i.nr, 3
  %i.nv = and i32 %i.nu, 31
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i48.i, i64 %i.no ; 2 uses
  %i.nx = load atomic volatile i64, ptr %i.nw acquire, align 8 ; 2 uses
  %i.ny = inttoptr i64 %i.nx to ptr
  %i.nz = icmp eq i64 %i.nx, 0
  br i1 %i.nz, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i50.i
  %i.oa = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #35 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.oa, i8 0, i64 128, i1 false)
  store ptr %i.oa, ptr %i.nw, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i50.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i51.i = phi ptr [ %i.oa, %bb.cb ], [ %i.ny, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i50.i ]
  %i.ob = shl nuw i32 1, %i.nv                    ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i51.i, i64 %i.nt ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4            ; 2 uses
  %i.oe = and i32 %i.od, %i.ob
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %bb.cd, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.og = or i32 %i.od, %i.ob
  store i32 %i.og, ptr %i.oc, align 4
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc, %bb.bw, %bb.bv, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotINS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET_.exit.i.i.i.i.i.i.i.i.i
  %i.oh = xor i32 %i.lm, %.0444.i.i.i.i.i.i45.i
  %.not49.i.i.i.i.i10.i.i = icmp eq i32 %i.lm, %.0444.i.i.i.i.i.i45.i
  br i1 %.not49.i.i.i.i.i10.i.i, label %.loopexit.i.i.i.i.i11.i.i, label %.preheader.i.i.i.i.i9.i.i, !llvm.loop !787

.loopexit.i.i.i.i.i11.i.i:                        ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, %bb.bo
  %indvars.iv.next.i.i.i.i.i13.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i7.i.i, 1 ; 2 uses
  %i.oi = add nuw nsw i64 %.0437.i.i.i.i.i.i44.i, 32
  %exitcond.not.i.i.i.i.i14.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i13.i.i, 32
  br i1 %exitcond.not.i.i.i.i.i14.i.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.bo, !llvm.loop !788

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i11.i.i, %.lr.ph.i.i.i.i.i5.i.i
  %i.oj = add nuw nsw i64 %.0389.i.i.i.i.i.i43.i, 1 ; 2 uses
  %exitcond14.not.i.i.i.i.i.i46.i = icmp eq i64 %i.oj, %i.ld
  br i1 %exitcond14.not.i.i.i.i.i.i46.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i5.i.i, !llvm.loop !789

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i: ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %bb.bm, %bb.bl, %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i.i
  %i.ok = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.ok, i32 noundef 2) #31
  %.pre106.i = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEv.exit.i

_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEv.exit.i: ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvv.exit.i
  %i.ol = phi ptr [ %i.ie, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToNewPointersILNS0_17RememberedSetTypeE1EEEvv.exit.i ], [ %.pre106.i, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i ] ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 128 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8
  %.not.i52.i = icmp eq ptr %i.on, null
  br i1 %.not.i52.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEv.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEv.exit.i
  %i.oo = load atomic volatile i64, ptr %i.om acquire, align 8 ; 2 uses
  %i.op = inttoptr i64 %i.oo to ptr
  %.not.i.i.i.i53.i = icmp eq i64 %i.oo, 0
  br i1 %.not.i.i.i.i53.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 72
  %i.or = load i64, ptr %i.oq, align 8
  %i.os = and i64 %i.or, -262144
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ol, i64 48
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = add i64 %i.ou, 8191
  %i.ow = lshr i64 %i.ov, 13                      ; 2 uses
  %.not9.i.i.i.i.i.i.i = icmp eq i64 %i.ow, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i54.i

.lr.ph.i.i.i.i.i.i54.i:                           ; preds = %bb.cf, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i
  %.0386.i.i.i.i.i.i.i = phi i64 [ %i.qh, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i ], [ 0, %bb.cf ] ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.0386.i.i.i.i.i.i.i ; 3 uses
  %i.oy = load atomic volatile i64, ptr %i.ox acquire, align 8 ; 2 uses
  %i.oz = inttoptr i64 %i.oy to ptr
  %.not.i.i.i.i.i.i55.i = icmp eq i64 %i.oy, 0
  br i1 %.not.i.i.i.i.i.i55.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i54.i
  %i.pa = shl i64 %.0386.i.i.i.i.i.i.i, 10
  br label %bb.ci

bb.ch:                                            ; preds = %.loopexit.i.i.i.i.i.i60.i
  %i.pb = icmp eq i64 %.3.i.i.i.i.i.i.i, 0
  br i1 %i.pb, label %bb.cm, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %.loopexit.i.i.i.i.i.i60.i, %bb.cg
  %indvars.iv.i.i.i.i.i.i56.i = phi i64 [ 0, %bb.cg ], [ %indvars.iv.next.i.i.i.i.i.i61.i, %.loopexit.i.i.i.i.i.i60.i ] ; 2 uses
  %.0395.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cg ], [ %.3.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i60.i ] ; 2 uses
  %.0434.i.i.i.i.i.i.i = phi i64 [ %i.pa, %bb.cg ], [ %i.qd, %.loopexit.i.i.i.i.i.i60.i ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv.i.i.i.i.i.i56.i
  %i.pd = load atomic volatile i32, ptr %i.pc acquire, align 4 ; 2 uses
  %.not48.i.i.i.i.i.i57.i = icmp eq i32 %i.pd, 0
  br i1 %.not48.i.i.i.i.i.i57.i, label %.loopexit.i.i.i.i.i.i60.i, label %.preheader.i.i.i.i.i.i58.i

.preheader.i.i.i.i.i.i58.i:                       ; preds = %bb.ci, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i
  %.1402.i.i.i.i.i.i.i = phi i64 [ %i.qb, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %.0395.i.i.i.i.i.i.i, %bb.ci ]
  %.0441.i.i.i.i.i.i.i = phi i32 [ %i.qc, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %i.pd, %bb.ci ] ; 3 uses
  %i.pe = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0441.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.pf = shl nuw i32 1, %i.pe                    ; 2 uses
  %i.pg = zext nneg i32 %i.pe to i64
  %i.ph = or disjoint i64 %.0434.i.i.i.i.i.i.i, %i.pg
  %i.pi = shl i64 %i.ph, 3
  %i.pj = add i64 %i.pi, %i.os                    ; 2 uses
  %i.pk = inttoptr i64 %i.pj to ptr               ; 2 uses
  %i.pl = load atomic volatile i64, ptr %i.pk monotonic, align 8 ; 5 uses
  %i.pm = trunc i64 %i.pl to i1
  br i1 %i.pm, label %bb.cj, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %.preheader.i.i.i.i.i.i58.i
  %i.pn = and i64 %i.pl, -262144
  %i.po = inttoptr i64 %i.pn to ptr
  %i.pp = load i64, ptr %i.po, align 262144
  %i.pq = and i64 %i.pp, 64
  %.not.i.i.i.i.i.i.i.i.i.i63.i = icmp eq i64 %i.pq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i63.i, label %bb.ck, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_21OffHeapFullObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.pr = add nsw i64 %i.pl, -1
  %i.ps = inttoptr i64 %i.pr to ptr
  %i.pt = load atomic volatile i64, ptr %i.ps monotonic, align 8 ; 2 uses
  %i.pu = and i64 %i.pt, 3
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %bb.cl, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_21OffHeapFullObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.pw = or disjoint i64 %i.pt, 1                ; 2 uses
  store atomic volatile i64 %i.pw, ptr %i.pk monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_21OffHeapFullObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_21OffHeapFullObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.px = phi i64 [ %i.pl, %bb.cj ], [ %i.pl, %bb.ck ], [ %i.pw, %bb.cl ]
  %i.py = add i64 %i.px, 31
  %i.pz = add i64 %i.pj, 8
  %i.qa = inttoptr i64 %i.pz to ptr
  store i64 %i.py, ptr %i.qa, align 8
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_21OffHeapFullObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i58.i
  %i.qb = add i64 %.1402.i.i.i.i.i.i.i, 1         ; 2 uses
  %i.qc = xor i32 %i.pf, %.0441.i.i.i.i.i.i.i
  %.not49.i.i.i.i.i.i59.i = icmp eq i32 %i.pf, %.0441.i.i.i.i.i.i.i
  br i1 %.not49.i.i.i.i.i.i59.i, label %.loopexit.i.i.i.i.i.i60.i, label %.preheader.i.i.i.i.i.i58.i, !llvm.loop !790

.loopexit.i.i.i.i.i.i60.i:                        ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, %bb.ci
  %.3.i.i.i.i.i.i.i = phi i64 [ %.0395.i.i.i.i.i.i.i, %bb.ci ], [ %i.qb, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i61.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i56.i, 1 ; 2 uses
  %i.qd = add nuw nsw i64 %.0434.i.i.i.i.i.i.i, 32
  %exitcond.not.i.i.i.i.i.i62.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i61.i, 32
  br i1 %exitcond.not.i.i.i.i.i.i62.i, label %bb.ch, label %bb.ci, !llvm.loop !791

bb.cm:                                            ; preds = %bb.ch
  %i.qe = load atomic volatile i64, ptr %i.ox acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.ox release, align 8
  %i.qf = icmp eq i64 %i.qe, 0
  br i1 %i.qf, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qg = inttoptr i64 %i.qe to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef 128) #33
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i: ; preds = %bb.cn, %bb.cm, %bb.ch, %.lr.ph.i.i.i.i.i.i54.i
  %i.qh = add nuw nsw i64 %.0386.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond11.not.i.i.i.i.i.i.i = icmp eq i64 %i.qh, %i.ow
  br i1 %exitcond11.not.i.i.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i54.i, !llvm.loop !792

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i: ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %bb.cf, %bb.ce
  %i.qi = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.qi, i32 noundef 4) #31
  %.pre107.i = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEv.exit.i

_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEv.exit.i: ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEv.exit.i
  %i.qj = phi ptr [ %i.ol, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem29UpdateUntypedOldToOldPointersEv.exit.i ], [ %.pre107.i, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i ] ; 7 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 136 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8
  %.not.i64.i = icmp eq ptr %i.ql, null
  br i1 %.not.i64.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem21UpdateUntypedPointersEv.exit, label %bb.co

bb.co:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEv.exit.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 88
  %i.qn = load i32, ptr %i.qm, align 8
  %i.qo = and i32 %i.qn, 16
  %.not21.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not21.i.i, label %bb.dh, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 72
  %i.qq = load i64, ptr %i.qp, align 8            ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.qs = load i64, ptr %i.qr, align 8
  %i.qt = sub i64 %i.qs, %i.qq
  %i.qu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.qv = trunc nuw i8 %i.qu to i1
  %.not16.i.i = xor i1 %i.qv, true
  %i.qw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.qx = trunc nuw i8 %i.qw to i1
  %or.cond.i65.i = select i1 %.not16.i.i, i1 true, i1 %i.qx
  br i1 %or.cond.i65.i, label %bb.cq, label %_ZN2v88internal15WritableJitPageC2Emm.exit.i66.i

bb.cq:                                            ; preds = %bb.cp
  %i.qy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.qy, -1
  br i1 %.not22.i.i, label %_ZN2v88internal15WritableJitPageC2Emm.exit.i66.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.qy, i32 noundef 0) #31
  br label %_ZN2v88internal15WritableJitPageC2Emm.exit.i66.i

_ZN2v88internal15WritableJitPageC2Emm.exit.i66.i: ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.qz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @_ZN2v88internal15ThreadIsolation13LookupJitPageEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ThreadIsolation::JitPageReference") align 8 %i.qz, i64 noundef %i.qq, i64 noundef %i.qt) #31
  %i.ra = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 136
  %i.rc = load atomic volatile i64, ptr %i.rb acquire, align 8 ; 2 uses
  %i.rd = inttoptr i64 %i.rc to ptr
  %.not.i.i.i.i67.i = icmp eq i64 %i.rc, 0
  br i1 %.not.i.i.i.i67.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN2v88internal15WritableJitPageC2Emm.exit.i66.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 72
  %i.rf = load i64, ptr %i.re, align 8
  %i.rg = and i64 %i.rf, -262144
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 48
  %i.ri = load i64, ptr %i.rh, align 8
  %i.rj = add i64 %i.ri, 8191
  %i.rk = lshr i64 %i.rj, 13                      ; 2 uses
  %.not15.i.i.i.i.i.i68.i = icmp eq i64 %i.rk, 0
  br i1 %.not15.i.i.i.i.i.i68.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i69.i

.lr.ph.i.i.i.i.i.i69.i:                           ; preds = %bb.cs, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i
  %.03812.i.i.i.i.i.i70.i = phi i64 [ %i.sy, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i ], [ 0, %bb.cs ] ; 3 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %.03812.i.i.i.i.i.i70.i ; 3 uses
  %i.rm = load atomic volatile i64, ptr %i.rl acquire, align 8 ; 2 uses
  %i.rn = inttoptr i64 %i.rm to ptr
  %.not.i.i.i.i.i.i71.i = icmp eq i64 %i.rm, 0
  br i1 %.not.i.i.i.i.i.i71.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i.i.i69.i
  %i.ro = shl i64 %.03812.i.i.i.i.i.i70.i, 10
  br label %bb.cv

bb.cu:                                            ; preds = %.loopexit.i.i.i.i.i.i78.i
  %i.rp = icmp eq i64 %.3.i.i.i.i.i.i79.i, 0
  br i1 %i.rp, label %bb.dc, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %.loopexit.i.i.i.i.i.i78.i, %bb.ct
  %indvars.iv.i.i.i.i.i.i72.i = phi i64 [ 0, %bb.ct ], [ %indvars.iv.next.i.i.i.i.i.i80.i, %.loopexit.i.i.i.i.i.i78.i ] ; 2 uses
  %.03911.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ct ], [ %.3.i.i.i.i.i.i79.i, %.loopexit.i.i.i.i.i.i78.i ] ; 2 uses
  %.04310.i.i.i.i.i.i73.i = phi i64 [ %i.ro, %bb.ct ], [ %i.su, %.loopexit.i.i.i.i.i.i78.i ] ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv.i.i.i.i.i.i72.i
  %i.rr = load atomic volatile i32, ptr %i.rq acquire, align 4 ; 2 uses
  %.not48.i.i.i.i.i.i74.i = icmp eq i32 %i.rr, 0
  br i1 %.not48.i.i.i.i.i.i74.i, label %.loopexit.i.i.i.i.i.i78.i, label %.preheader.i.i.i.i.i.i75.i

.preheader.i.i.i.i.i.i75.i:                       ; preds = %bb.cv, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i
  %.1408.i.i.i.i.i.i.i = phi i64 [ %i.ss, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %.03911.i.i.i.i.i.i.i, %bb.cv ]
  %.0447.i.i.i.i.i.i76.i = phi i32 [ %i.st, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %i.rr, %bb.cv ] ; 3 uses
  %i.rs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0447.i.i.i.i.i.i76.i, i1 true) ; 2 uses
  %i.rt = shl nuw i32 1, %i.rs                    ; 2 uses
  %i.ru = zext nneg i32 %i.rs to i64
  %i.rv = or disjoint i64 %.04310.i.i.i.i.i.i73.i, %i.ru
  %i.rw = shl i64 %i.rv, 3
  %i.rx = add i64 %i.rw, %i.rg                    ; 3 uses
  %i.ry = call { i64, ptr } @_ZN2v88internal15ThreadIsolation16JitPageReference20AllocationContainingEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qz, i64 noundef %i.rx) #31, !noalias !793 ; 2 uses
  %i.rz = extractvalue { i64, ptr } %i.ry, 0
  %i.sa = extractvalue { i64, ptr } %i.ry, 1
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load i32, ptr %i.sb, align 8, !noalias !793
  %i.sd = inttoptr i64 %i.rx to ptr               ; 2 uses
  %i.se = load atomic volatile i64, ptr %i.sd monotonic, align 8 ; 3 uses
  %i.sf = trunc i64 %i.se to i1
  br i1 %i.sf, label %bb.cw, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %.preheader.i.i.i.i.i.i75.i
  %i.sg = and i64 %i.se, -262144
  %i.sh = inttoptr i64 %i.sg to ptr
  %i.si = load i64, ptr %i.sh, align 262144
  %i.sj = and i64 %i.si, 64
  %.not.i.i.i.i.i.i.i.i.i.i88.i = icmp eq i64 %i.sj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i88.i, label %bb.cx, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.sk = add nsw i64 %i.se, -1
  %i.sl = inttoptr i64 %i.sk to ptr
  %i.sm = load atomic volatile i64, ptr %i.sl monotonic, align 8 ; 2 uses
  %i.sn = and i64 %i.sm, 3
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %bb.cy, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.sp = or disjoint i64 %i.sm, 1
  %i.sq = icmp eq i32 %i.sc, 0
  br i1 %i.sq, label %bb.da, label %bb.cz, !prof !10

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.286) #34
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.sr = sub i64 %i.rx, %i.rz
  switch i64 %i.sr, label %bb.db [
    i64 8, label %_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i89.i
    i64 16, label %_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i89.i
  ]

bb.db:                                            ; preds = %bb.da
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34
  unreachable

_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i89.i: ; preds = %bb.da, %bb.da
  store atomic volatile i64 %i.sp, ptr %i.sd monotonic, align 8
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i: ; preds = %_ZNK2v88internal18WriteProtectedSlotINS0_14FullObjectSlotEE13Relaxed_StoreENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i.i.i.i.i.i.i89.i, %bb.cx, %bb.cw, %.preheader.i.i.i.i.i.i75.i
  %i.ss = add i64 %.1408.i.i.i.i.i.i.i, 1         ; 2 uses
  %i.st = xor i32 %i.rt, %.0447.i.i.i.i.i.i76.i
  %.not49.i.i.i.i.i.i77.i = icmp eq i32 %i.rt, %.0447.i.i.i.i.i.i76.i
  br i1 %.not49.i.i.i.i.i.i77.i, label %.loopexit.i.i.i.i.i.i78.i, label %.preheader.i.i.i.i.i.i75.i, !llvm.loop !796

.loopexit.i.i.i.i.i.i78.i:                        ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, %bb.cv
  %.3.i.i.i.i.i.i79.i = phi i64 [ %.03911.i.i.i.i.i.i.i, %bb.cv ], [ %i.ss, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i80.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i72.i, 1 ; 2 uses
  %i.su = add nuw nsw i64 %.04310.i.i.i.i.i.i73.i, 32
  %exitcond.not.i.i.i.i.i.i81.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i80.i, 32
  br i1 %exitcond.not.i.i.i.i.i.i81.i, label %bb.cu, label %bb.cv, !llvm.loop !797

bb.dc:                                            ; preds = %bb.cu
  %i.sv = load atomic volatile i64, ptr %i.rl acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.rl release, align 8
  %i.sw = icmp eq i64 %i.sv, 0
  br i1 %i.sw, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sx = inttoptr i64 %i.sv to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef 128) #33
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %bb.cu, %.lr.ph.i.i.i.i.i.i69.i
  %i.sy = add nuw nsw i64 %.03812.i.i.i.i.i.i70.i, 1 ; 2 uses
  %exitcond17.not.i.i.i.i.i.i82.i = icmp eq i64 %i.sy, %i.rk
  br i1 %exitcond17.not.i.i.i.i.i.i82.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i69.i, !llvm.loop !798

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i: ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %bb.cs, %_ZN2v88internal15WritableJitPageC2Emm.exit.i66.i
  %i.sz = load ptr, ptr %i.qz, align 8            ; 2 uses
  %.not.i.i.i83.i = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i83.i, label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i84.i, label %bb.de

bb.de:                                            ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sz) #31
  br label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i84.i

_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i84.i: ; preds = %bb.de, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i
  %i.ta = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.tb = trunc nuw i8 %i.ta to i1
  %.not18.i85.i = xor i1 %i.tb, true
  %i.tc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.td = trunc nuw i8 %i.tc to i1
  %or.cond20.i.i = select i1 %.not18.i85.i, i1 true, i1 %i.td
  br i1 %or.cond20.i.i, label %bb.df, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i86.i

bb.df:                                            ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i84.i
  %i.te = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not23.i87.i = icmp eq i32 %i.te, -1
  br i1 %.not23.i87.i, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i86.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.te, i32 noundef 2) #31
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i86.i

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i86.i: ; preds = %bb.dg, %bb.df, %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i

bb.dh:                                            ; preds = %bb.co
  %i.tf = load atomic volatile i64, ptr %i.qk acquire, align 8 ; 2 uses
  %i.tg = inttoptr i64 %i.tf to ptr
  %.not.i.i.i2.i.i = icmp eq i64 %i.tf, 0
  br i1 %.not.i.i.i2.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.th = getelementptr inbounds nuw i8, ptr %i.qj, i64 72
  %i.ti = load i64, ptr %i.th, align 8
  %i.tj = and i64 %i.ti, -262144
  %i.tk = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = add i64 %i.tl, 8191
  %i.tn = lshr i64 %i.tm, 13                      ; 2 uses
  %.not9.i.i.i.i.i.i90.i = icmp eq i64 %i.tn, 0
  br i1 %.not9.i.i.i.i.i.i90.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i3.i.i

.lr.ph.i.i.i.i.i3.i.i:                            ; preds = %bb.di, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i
  %.0386.i.i.i.i.i.i91.i = phi i64 [ %i.vk, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i ], [ 0, %bb.di ] ; 3 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %.0386.i.i.i.i.i.i91.i ; 3 uses
  %i.tp = load atomic volatile i64, ptr %i.to acquire, align 8 ; 2 uses
  %i.tq = inttoptr i64 %i.tp to ptr
  %.not.i.i.i.i.i4.i.i = icmp eq i64 %i.tp, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i3.i.i
  %i.tr = shl i64 %.0386.i.i.i.i.i.i91.i, 10
  br label %bb.dl

bb.dk:                                            ; preds = %.loopexit.i.i.i.i.i9.i.i
  %i.ts = icmp eq i64 %.3.i.i.i.i.i10.i.i, 0
  br i1 %i.ts, label %bb.ds, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %.loopexit.i.i.i.i.i9.i.i, %bb.dj
  %indvars.iv.i.i.i.i.i5.i.i = phi i64 [ 0, %bb.dj ], [ %indvars.iv.next.i.i.i.i.i11.i.i, %.loopexit.i.i.i.i.i9.i.i ] ; 2 uses
  %.0395.i.i.i.i.i.i92.i = phi i64 [ 0, %bb.dj ], [ %.3.i.i.i.i.i10.i.i, %.loopexit.i.i.i.i.i9.i.i ] ; 2 uses
  %.0434.i.i.i.i.i.i93.i = phi i64 [ %i.tr, %bb.dj ], [ %i.vg, %.loopexit.i.i.i.i.i9.i.i ] ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.i.i.i.i.i5.i.i
  %i.tu = load atomic volatile i32, ptr %i.tt acquire, align 4 ; 2 uses
  %.not48.i.i.i.i.i6.i.i = icmp eq i32 %i.tu, 0
  br i1 %.not48.i.i.i.i.i6.i.i, label %.loopexit.i.i.i.i.i9.i.i, label %.preheader.i.i.i.i.i7.i.i

.preheader.i.i.i.i.i7.i.i:                        ; preds = %bb.dl, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i
  %.1402.i.i.i.i.i.i94.i = phi i64 [ %i.ve, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %.0395.i.i.i.i.i.i92.i, %bb.dl ]
  %.0441.i.i.i.i.i.i95.i = phi i32 [ %i.vf, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ], [ %i.tu, %bb.dl ] ; 3 uses
  %i.tv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0441.i.i.i.i.i.i95.i, i1 true) ; 2 uses
  %i.tw = shl nuw i32 1, %i.tv                    ; 2 uses
  %i.tx = zext nneg i32 %i.tv to i64
  %i.ty = or disjoint i64 %.0434.i.i.i.i.i.i93.i, %i.tx
  %i.tz = shl i64 %i.ty, 3
  %i.ua = add i64 %i.tz, %i.tj
  %i.ub = inttoptr i64 %i.ua to ptr               ; 2 uses
  %i.uc = load atomic volatile i64, ptr %i.ub monotonic, align 8 ; 6 uses
  %i.ud = and i64 %i.uc, 3                        ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 3
  %i.uf = and i64 %i.uc, 4294967295
  %i.ug = icmp ne i64 %i.uf, 3
  %i.uh = and i1 %i.ue, %i.ug
  br i1 %i.uh, label %bb.dm, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i96.i

bb.dm:                                            ; preds = %.preheader.i.i.i.i.i7.i.i
  %i.ui = and i64 %i.uc, -262144
  %i.uj = inttoptr i64 %i.ui to ptr
  %i.uk = load i64, ptr %i.uj, align 262144
  %i.ul = and i64 %i.uk, 64
  %.not.i.i.i.i.i.i.i.i.i15.i.i = icmp eq i64 %i.ul, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i15.i.i, label %bb.dn, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.um = and i64 %i.uc, -3
  %i.un = add nsw i64 %i.um, -1
  %i.uo = inttoptr i64 %i.un to ptr
  %i.up = load atomic volatile i64, ptr %i.uo monotonic, align 8 ; 2 uses
  %i.uq = and i64 %i.up, 3
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %bb.do, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.do:                                            ; preds = %bb.dn
  %i.us = or disjoint i64 %i.up, 3
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i99.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i96.i: ; preds = %.preheader.i.i.i.i.i7.i.i
  %i.ut = icmp eq i64 %i.ud, 1
  br i1 %i.ut, label %bb.dp, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i96.i
  %i.uu = and i64 %i.uc, -262144
  %i.uv = inttoptr i64 %i.uu to ptr
  %i.uw = load i64, ptr %i.uv, align 262144
  %i.ux = and i64 %i.uw, 64
  %.not.i4.i.i.i.i.i.i.i.i.i98.i = icmp eq i64 %i.ux, 0
  br i1 %.not.i4.i.i.i.i.i.i.i.i.i98.i, label %bb.dq, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.uy = add nsw i64 %i.uc, -1
  %i.uz = inttoptr i64 %i.uy to ptr
  %i.va = load atomic volatile i64, ptr %i.uz monotonic, align 8 ; 2 uses
  %i.vb = and i64 %i.va, 3
  %i.vc = icmp eq i64 %i.vb, 0
  br i1 %i.vc, label %bb.dr, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.vd = or disjoint i64 %i.va, 1
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i99.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i99.i: ; preds = %bb.dr, %bb.do
  %.sink.i.i.i.i.i.i.i.i.i100.i = phi i64 [ %i.vd, %bb.dr ], [ %i.us, %bb.do ]
  store atomic volatile i64 %.sink.i.i.i.i.i.i.i.i.i100.i, ptr %i.ub monotonic, align 8
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE0ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.sink.split.i.i.i.i.i.i.i.i.i99.i, %bb.dq, %bb.dp, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i.i96.i, %bb.dn, %bb.dm
  %i.ve = add i64 %.1402.i.i.i.i.i.i94.i, 1       ; 2 uses
  %i.vf = xor i32 %i.tw, %.0441.i.i.i.i.i.i95.i
  %.not49.i.i.i.i.i8.i.i = icmp eq i32 %i.tw, %.0441.i.i.i.i.i.i95.i
  br i1 %.not49.i.i.i.i.i8.i.i, label %.loopexit.i.i.i.i.i9.i.i, label %.preheader.i.i.i.i.i7.i.i, !llvm.loop !799

.loopexit.i.i.i.i.i9.i.i:                         ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i, %bb.dl
  %.3.i.i.i.i.i10.i.i = phi i64 [ %.0395.i.i.i.i.i.i92.i, %bb.dl ], [ %i.ve, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i11.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i5.i.i, 1 ; 2 uses
  %i.vg = add nuw nsw i64 %.0434.i.i.i.i.i.i93.i, 32
  %exitcond.not.i.i.i.i.i12.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i11.i.i, 32
  br i1 %exitcond.not.i.i.i.i.i12.i.i, label %bb.dk, label %bb.dl, !llvm.loop !800

bb.ds:                                            ; preds = %bb.dk
  %i.vh = load atomic volatile i64, ptr %i.to acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.to release, align 8
  %i.vi = icmp eq i64 %i.vh, 0
  br i1 %i.vi, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.vj = inttoptr i64 %i.vh to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.vj, i64 noundef 128) #33
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i: ; preds = %bb.dt, %bb.ds, %bb.dk, %.lr.ph.i.i.i.i.i3.i.i
  %i.vk = add nuw nsw i64 %.0386.i.i.i.i.i.i91.i, 1 ; 2 uses
  %exitcond11.not.i.i.i.i.i.i97.i = icmp eq i64 %i.vk, %i.tn
  br i1 %exitcond11.not.i.i.i.i.i.i97.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i, label %.lr.ph.i.i.i.i.i3.i.i, !llvm.loop !801

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i: ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i.i.i, %bb.di, %bb.dh, %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i86.i
  %i.vl = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.vl, i32 noundef 5) #31
  %.pre = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem21UpdateUntypedPointersEv.exit

_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem21UpdateUntypedPointersEv.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEv.exit.i, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i
  %i.vm = phi ptr [ %i.qj, %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem34UpdateUntypedTrustedToCodePointersEv.exit.i ], [ %.pre, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE7IterateILNS0_10AccessModeE0EZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem37UpdateUntypedTrustedToTrustedPointersEvEUlNS0_19FullMaybeObjectSlotEE0_EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.i.i ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 88
  %i.vo = load i32, ptr %i.vn, align 8
  %i.vp = and i32 %i.vo, 16
  %.not33.i = icmp eq i32 %i.vp, 0
  br i1 %.not33.i, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem19UpdateTypedPointersEv.exit, label %bb.du

bb.du:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem21UpdateUntypedPointersEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 72
  %i.vr = load i64, ptr %i.vq, align 8            ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vm, i64 56
  %i.vt = load i64, ptr %i.vs, align 8
  %i.vu = sub i64 %i.vt, %i.vr
  call void @_ZN2v88internal15ThreadIsolation21LookupWritableJitPageEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::WritableJitPage") align 8 %5, i64 noundef %i.vr, i64 noundef %i.vu) #31
  %i.vv = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 160 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8
  %i.vy = icmp eq ptr %i.vx, null
  br i1 %i.vy, label %_ZN2v88internal12_GLOBAL__N_125RememberedSetUpdatingItem27UpdateTypedOldToNewPointersERNS0_15WritableJitPageE.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vz = load atomic volatile i64, ptr %i.vw acquire, align 8 ; 2 uses
  %i.wa = inttoptr i64 %i.vz to ptr               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.vz, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem27UpdateTypedOldToNewPointersERNS0_15WritableJitPageEEUlNS0_8SlotTypeEmE_EEiPNS0_19MutablePageMetadataET_.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %.018.i.i.i.i.i = load ptr, ptr %i.wb, align 8  ; 2 uses
  %.not19.i.i.i.i.i = icmp eq ptr %.018.i.i.i.i.i, null
  br i1 %.not19.i.i.i.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem27UpdateTypedOldToNewPointersERNS0_15WritableJitPageEEUlNS0_8SlotTypeEmE_EEiPNS0_19MutablePageMetadataET_.exit.i.i, label %.lr.ph22.i.i.i.i.i

.lr.ph22.i.i.i.i.i:                               ; preds = %bb.dw
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.wi = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.wj = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.dx

.loopexit.i.i.i.i.i:                              ; preds = %bb.gk, %bb.dx
  %.0.i.i.i.i.i = load ptr, ptr %.021.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i8, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_12_GLOBAL__N_125RememberedSetUpdatingItem27UpdateTypedOldToNewPointersERNS0_15WritableJitPageEEUlNS0_8SlotTypeEmE_EEiPNS0_19MutablePageMetadataET_.exit.i.i, label %bb.dx, !llvm.loop !802

bb.dx:                                            ; preds = %.loopexit.i.i.i.i.i, %.lr.ph22.i.i.i.i.i
  %.021.i.i.i.i.i = phi ptr [ %.018.i.i.i.i.i, %.lr.ph22.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8            ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8            ; 2 uses
  %i.ws = icmp eq ptr %i.wp, %i.wr
  br i1 %i.ws, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dx, %bb.gk
  %.sroa.01.016.i.i.i.i.i = phi ptr [ %i.agj, %bb.gk ], [ %i.wp, %bb.dx ] ; 2 uses
  %i.wt = load i32, ptr %.sroa.01.016.i.i.i.i.i, align 4 ; 2 uses
  %i.wu = lshr i32 %i.wt, 29                      ; 2 uses
  %i.wv = trunc nuw nsw i32 %i.wu to i8           ; 3 uses
  %.not31.i.i.i.i.i = icmp eq i32 %i.wu, 6
  br i1 %.not31.i.i.i.i.i, label %bb.gk, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ww = and i32 %i.wt, 536870911
  %i.wx = load i64, ptr %i.wc, align 8
  %i.wy = zext nneg i32 %i.ww to i64
  %i.wz = add i64 %i.wx, %i.wy                    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.xa = call { i64, ptr } @_ZN2v88internal15ThreadIsolation16JitPageReference20AllocationContainingEm(ptr noundef nonnull align 8 dereferenceable(24) %i.wd, i64 noundef %i.wz) #31, !noalias !803 ; 2 uses
  %i.xb = extractvalue { i64, ptr } %i.xa, 0
  %i.xc = extractvalue { i64, ptr } %i.xa, 1      ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 8, !noalias !803
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xf = load i32, ptr %i.xe, align 8, !noalias !803
  store i64 %i.xb, ptr %4, align 8
  store i8 0, ptr %i.we, align 1
  store i8 0, ptr %i.wg, align 8
  store i64 %i.xd, ptr %i.wh, align 8
  store i32 %i.xf, ptr %i.wi, align 8
  store i8 0, ptr %i.wj, align 8
  switch i8 %i.wv, label %bb.fw [
    i8 2, label %bb.dz
    i8 5, label %bb.ek
    i8 1, label %bb.eu
    i8 0, label %bb.fd
    i8 4, label %bb.fm
    i8 3, label %bb.fn
  ]

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 %i.wz, ptr %3, align 8
end_hunk_3
