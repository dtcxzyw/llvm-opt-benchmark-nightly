Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Request?download=true
inline.NumInlined: 3040
inline.NumDeleted: 1458
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5folly14RequestContext20overwriteContextDataERKNS_12RequestTokenESt10unique_ptrINS_11RequestDataESt14default_deleteIS5_EEb:bb.a
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i.thread.i.i, %.lr.ph.i.i75
  %.in.i.i76 = phi i64 [ %.pre23.i.i, %.lr.ph.i.i75 ], [ %i.ca, %.critedge.i.thread.i.i ]
  %.015.i20.i.i = phi i64 [ %i.bz, %.lr.ph.i.i75 ], [ %i.ch, %.critedge.i.thread.i.i ] ; 4 uses
  %i.ca = add i64 %.in.i.i76, -1                  ; 2 uses
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !204
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.015.i20.i.i ; 2 uses
  %i.cd = load atomic i8, ptr %i.cc acquire, align 1
  switch i8 %i.cd, label %.critedge.i.thread.i.i [
    i8 1, label %bb.r
    i8 0, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit
  ]

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.0.0.copyload.i2.i.i77 = load i32, ptr %i.ce, align 4, !tbaa !62
  %i.cf = icmp eq i32 %.sroa.0.0.copyload.i2.i.i77, %.sroa.02.0.copyload.i
  br i1 %i.cf, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11writer_findES1_.exit.i, label %.critedge.i.thread.i.i

.critedge.i.thread.i.i:                           ; preds = %bb.r, %bb.q
  %i.cg = add i64 %.015.i20.i.i, 1
  %i.ch = and i64 %i.cg, %i.bx
  %.not.i.i.i78 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i78, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit, label %bb.q

_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11writer_findES1_.exit.i: ; preds = %bb.r
  %.pre.i79 = load i64, ptr %i.n, align 8, !tbaa !213
  %.not.i80 = icmp eq i64 %.015.i20.i.i, %.pre.i79
  br i1 %.not.i80, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11writer_findES1_.exit.i
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !204
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.015.i20.i.i
  store atomic i8 2, ptr %i.cj release, align 1
  %i.ck = load atomic i64, ptr %i.o acquire, align 8
  %i.cl = add i64 %i.ck, -1
  store atomic i64 %i.cl, ptr %i.o release, align 8
  br label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit

_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit: ; preds = %bb.q, %.critedge.i.thread.i.i, %_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiE5eraseES2_.exit, %bb.p, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11writer_findES1_.exit.i, %bb.s
  br i1 %.not.i40, label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cn = load atomic i32, ptr %i.cm acquire, align 4
  %i.co = icmp eq i32 %i.cn, 4097
  br i1 %i.co, label %bb.u, label %bb.v, !prof !73

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(12) %i.as), !call_target !126, !inline_history !643
  %i.cs = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #12, !call_target !128, !inline_history !643
  br label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit

bb.v:                                             ; preds = %bb.t
  tail call void @_ZN5folly11RequestData25releaseRefClearDeleteSlowEv(ptr noundef nonnull align 8 dereferenceable(12) %i.as)
  br label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit

_ZN5folly14RequestContext5State12eraseOldDataEPNS1_8CombinedERKNS_12RequestTokenEPNS_11RequestDataEb.exit.thread: ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8IteratorC2ERKS4_m.exit72
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i35, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !240
  %i.cx = sub i64 %i.ap, %i.cw
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, -4
  %i.da = icmp ult i64 %i.cz, %i.ap
  br i1 %i.da, label %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit.thread, label %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit

_ZN5folly14RequestContext5State8Combined10needExpandEv.exit: ; preds = %_ZN5folly14RequestContext5State12eraseOldDataEPNS1_8CombinedERKNS_12RequestTokenEPNS_11RequestDataEb.exit.thread
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i35, i64 56
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !228 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i35, i64 64
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !242
  %i.df = sub i64 %i.dc, %i.de
  %i.dg = shl i64 %i.df, 2
  %i.dh = add i64 %i.dg, -4
  %i.di = icmp ult i64 %i.dh, %i.dc
  br i1 %i.di, label %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit.thread, label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit

_ZN5folly14RequestContext5State8Combined10needExpandEv.exit.thread: ; preds = %_ZN5folly14RequestContext5State12eraseOldDataEPNS1_8CombinedERKNS_12RequestTokenEPNS_11RequestDataEb.exit.thread, %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit
  %i.dj = tail call noundef ptr @_ZN5folly14RequestContext5State6expandEPNS1_8CombinedE(ptr nonnull align 8 poison, ptr noundef nonnull %.0.i35) ; 11 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8, !noalias !662
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit.thread
  %i.do = load i64, ptr %i.dk, align 8, !tbaa !213 ; 5 uses
  %i.dp = icmp eq i64 %i.do, 0                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8            ; 3 uses
  %i.ds = select i1 %i.dp, ptr null, ptr %i.dr
  br i1 %i.dp, label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %bb.w, %bb.x
  %.sroa.13.5.i = phi i64 [ %i.dw, %bb.x ], [ 0, %bb.w ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.sroa.13.5.i
  %i.du = load atomic i8, ptr %i.dt acquire, align 1
  %i.dv = icmp eq i8 %i.du, 1
  br i1 %i.dv, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i3.i
  %i.dw = add nuw i64 %.sroa.13.5.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dw, %i.do
  br i1 %exitcond.not.i, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i, label %.lr.ph.i3.i, !llvm.loop !15

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i: ; preds = %bb.x, %.lr.ph.i3.i
  %.sroa.13.1.ph.i = phi i64 [ %.sroa.13.5.i, %.lr.ph.i3.i ], [ %i.do, %bb.x ] ; 2 uses
  %.pre.i81 = load i64, ptr %i.dk, align 8, !tbaa !213, !noalias !663
  %i.dx = icmp eq i64 %.sroa.13.1.ph.i, %.pre.i81
  br i1 %i.dx, label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i
  %.sroa.13.023.i = phi i64 [ %.sroa.13.2.i.lcssa, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i ], [ %.sroa.13.1.ph.i, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %.sroa.13.023.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load atomic ptr, ptr %i.dz monotonic, align 8 ; 2 uses
  %.not.i83 = icmp eq ptr %i.ea, null
  br i1 %.not.i83, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i82
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = atomicrmw add ptr %i.eb, i32 4097 monotonic, align 4 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i82
  %.sroa.13.2.i327 = add i64 %.sroa.13.023.i, 1   ; 3 uses
  %i.ed = icmp ult i64 %.sroa.13.2.i327, %i.do
  br i1 %i.ed, label %.lr.ph329, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i

bb.aa:                                            ; preds = %.lr.ph329
  %.sroa.13.2.i = add i64 %.sroa.13.2.i328, 1     ; 3 uses
  %i.ee = icmp ult i64 %.sroa.13.2.i, %i.do
  br i1 %i.ee, label %.lr.ph329, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i, !llvm.loop !15

.lr.ph329:                                        ; preds = %bb.z, %bb.aa
  %.sroa.13.2.i328 = phi i64 [ %.sroa.13.2.i, %bb.aa ], [ %.sroa.13.2.i327, %bb.z ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %.sroa.13.2.i328
  %i.eg = load atomic i8, ptr %i.ef acquire, align 1
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i_crit_edge, label %bb.aa, !llvm.loop !15

._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i_crit_edge: ; preds = %.lr.ph329
  br label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i, !llvm.loop !15

_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i: ; preds = %bb.aa, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i_crit_edge, %bb.z
  %.sroa.13.2.i.lcssa = phi i64 [ %.sroa.13.2.i328, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i_crit_edge ], [ %.sroa.13.2.i327, %bb.z ], [ %.sroa.13.2.i, %bb.aa ] ; 2 uses
  %i.ei = load i64, ptr %i.dk, align 8, !tbaa !213, !noalias !663
  %.not21.i = icmp eq i64 %.sroa.13.2.i.lcssa, %i.ei
  br i1 %.not21.i, label %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit, label %.lr.ph.i82, !llvm.loop !16

_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit: ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i, %bb.u, %bb.v, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i, %bb.w, %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit.thread, %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit
  %.016.i = phi ptr [ null, %bb.u ], [ null, %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit ], [ %i.dj, %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit.thread ], [ %i.dj, %bb.w ], [ %i.dj, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i ], [ null, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit ], [ null, %bb.v ], [ %i.dj, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i ] ; 3 uses
  %.0.i58 = phi ptr [ %.0.i35, %bb.u ], [ %.0.i35, %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit ], [ %i.dj, %_ZN5folly14RequestContext5State8Combined10needExpandEv.exit.thread ], [ %i.dj, %bb.w ], [ %i.dj, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i ], [ %.0.i35, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5eraseES1_.exit ], [ %.0.i35, %bb.v ], [ %i.dj, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i ] ; 2 uses
  %i.ej = load ptr, ptr %2, align 8, !tbaa !264   ; 3 uses
  %.not228 = icmp eq ptr %i.ej, null
  br i1 %.not228, label %_ZN5folly14RequestContext5State13insertNewDataEPNS1_8CombinedERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS8_EEb.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !120
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(12) %i.ej), !call_target !219, !inline_history !18
  br i1 %i.en, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i58, i64 56
  %i.ep = load ptr, ptr %2, align 8, !tbaa !264
  %i.eq = tail call noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiE6insertES2_i(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef %i.ep, i32 noundef 1) ; 0 uses
  %i.er = load ptr, ptr %2, align 8, !tbaa !264   ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !120
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(12) %i.er), !call_target !265, !inline_history !18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pr = load ptr, ptr %2, align 8, !tbaa !264    ; 2 uses
  %.not229 = icmp eq ptr %.pr, null
  br i1 %.not229, label %_ZN5folly14RequestContext5State13insertNewDataEPNS1_8CombinedERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS8_EEb.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ew = atomicrmw add ptr %i.ev, i32 4097 monotonic, align 4 ; 0 uses
  %.pre263 = load ptr, ptr %2, align 8, !tbaa !264
  br label %_ZN5folly14RequestContext5State13insertNewDataEPNS1_8CombinedERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS8_EEb.exit

_ZN5folly14RequestContext5State13insertNewDataEPNS1_8CombinedERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS8_EEb.exit: ; preds = %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit, %bb.ad, %bb.ae
  %i.ex = phi ptr [ null, %_ZN5folly14RequestContext5State8Combined15acquireDataRefsEv.exit ], [ null, %bb.ad ], [ %.pre263, %bb.ae ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i58, i64 24
  %.sroa.0.0.copyload.i59 = load i32, ptr %1, align 4, !tbaa !62
  store ptr null, ptr %2, align 8, !tbaa !264
  %i.ez = tail call noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE6insertES1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, i32 %.sroa.0.0.copyload.i59, ptr noundef %i.ex) ; 0 uses
  %.not39.i24 = icmp eq ptr %.016.i, null
  br i1 %.not39.i24, label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit33, label %bb.af

bb.af:                                            ; preds = %_ZN5folly14RequestContext5State13insertNewDataEPNS1_8CombinedERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS8_EEb.exit
  %i.fa = ptrtoint ptr %0 to i64
  %i.fb = or disjoint i64 %i.fa, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !151
  store atomic ptr %.016.i, ptr %i.c release, align 8
  br label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit33

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr %0, ptr %6, align 8, !tbaa !215
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !81
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i8 0, ptr %i.ff, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.fg = load atomic i32, ptr %i.fe acquire, align 8 ; 4 uses
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !62
  %i.fh = and i32 %i.fg, -1312
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ah, label %.critedge.i.i.i.i.i, !prof !73

bb.ah:                                            ; preds = %bb.ag
  %i.fj = or disjoint i32 %i.fg, 128
  %i.fk = cmpxchg ptr %i.fe, i32 %i.fg, i32 %i.fj seq_cst seq_cst, align 4 ; 2 uses
  %i.fl = extractvalue { i32, i1 } %i.fk, 1
  br i1 %i.fl, label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, !prof !70

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.fm = extractvalue { i32, i1 } %i.fk, 0
  store i32 %i.fm, ptr %i.b, align 4
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, %bb.ag
  %i.fn = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.fe, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 0 uses
  br label %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit

_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit: ; preds = %bb.ah, %.critedge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  store i8 1, ptr %i.ff, align 8, !tbaa !82
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fp = load atomic ptr, ptr %i.fo acquire, align 8 ; 2 uses
  %.not.i36 = icmp eq ptr %i.fp, null
  br i1 %.not.i36, label %bb.ai, label %.noexc

bb.ai:                                            ; preds = %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %i.fq = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #42
          to label %bb.aj unwind label %bb.cc     ; 9 uses

bb.aj:                                            ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !139
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i64 4, ptr %i.ft, align 8, !tbaa !213
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i8 0, i64 24, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  store i64 4, ptr %i.fv, align 8, !tbaa !228
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fw, i8 0, i64 48, i1 false)
  %i.fx = ptrtoint ptr %0 to i64
  %i.fy = or disjoint i64 %i.fx, 1
  store i64 %i.fy, ptr %i.fs, align 8, !tbaa !151
  store atomic ptr %i.fq, ptr %i.fo release, align 8
  br label %.noexc

.noexc:                                           ; preds = %bb.aj, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit
  %.0.i37 = phi ptr [ %i.fp, %_ZN5folly14RequestContext5State9LockGuardC2ERS1_.exit ], [ %i.fq, %bb.aj ] ; 21 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i37, i64 24 ; 8 uses
  %.sroa.06.0.copyload.i = load i32, ptr %1, align 4, !tbaa !62 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i37, i64 40 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8, !noalias !664
  %i.gc = icmp eq i64 %i.gb, 0
  %.pre255 = load i64, ptr %i.fz, align 8, !tbaa !213, !noalias !664 ; 4 uses
  br i1 %i.gc, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, label %bb.ak

bb.ak:                                            ; preds = %.noexc
  %i.gd = add i64 %.pre255, -1                    ; 2 uses
  %.not.i.i.i238 = icmp eq i64 %.pre255, 0
  br i1 %.not.i.i.i238, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak
  %i.ge = zext i32 %.sroa.06.0.copyload.i to i64
  %i.gf = and i64 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i37, i64 48
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %.critedge.i.i.i.thread
  %.in = phi i64 [ %.pre255, %.lr.ph ], [ %i.gh, %.critedge.i.i.i.thread ]
  %.015.i.i.i239 = phi i64 [ %i.gf, %.lr.ph ], [ %i.go, %.critedge.i.i.i.thread ] ; 6 uses
  %i.gh = add i64 %.in, -1                        ; 2 uses
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !204, !noalias !664
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %.015.i.i.i239 ; 2 uses
  %i.gk = load atomic i8, ptr %i.gj acquire, align 1, !noalias !664
  switch i8 %i.gk, label %.critedge.i.i.i.thread [
    i8 1, label %bb.am
    i8 0, label %.thread213.loopexit
  ]

bb.am:                                            ; preds = %bb.al
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %.sroa.0.0.copyload.i2.i.i = load i32, ptr %i.gl, align 4, !tbaa !62, !noalias !664
  %i.gm = icmp eq i32 %.sroa.0.0.copyload.i2.i.i, %.sroa.06.0.copyload.i
  br i1 %i.gm, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, label %.critedge.i.i.i.thread

.critedge.i.i.i.thread:                           ; preds = %bb.al, %bb.am
  %i.gn = add i64 %.015.i.i.i239, 1
  %i.go = and i64 %i.gn, %i.gd
  %.not.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i.i, label %.thread213.loopexit, label %bb.al

.thread213.loopexit:                              ; preds = %bb.al, %.critedge.i.i.i.thread
  %.pre = load i64, ptr %i.fz, align 8, !tbaa !213, !noalias !664
  br label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread: ; preds = %.thread213.loopexit, %bb.ak, %.noexc
  %.ph298 = phi i64 [ %.pre255, %.noexc ], [ 0, %bb.ak ], [ %.pre, %.thread213.loopexit ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i37, i64 48
  br label %.noexc5

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i: ; preds = %bb.am
  %.pre256 = load i64, ptr %i.fz, align 8, !tbaa !213 ; 5 uses
  %i.gq = icmp eq i64 %.015.i.i.i239, %.pre256
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i37, i64 48 ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 8            ; 2 uses
  %i.gt = select i1 %i.gq, ptr null, ptr %i.gs    ; 2 uses
  %i.gu = icmp ult i64 %.015.i.i.i239, %.pre256
  br i1 %i.gu, label %.lr.ph.i85, label %.noexc5

.lr.ph.i85:                                       ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i, %bb.an
  %.sroa.7.0 = phi i64 [ %i.gy, %bb.an ], [ %.015.i.i.i239, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %.sroa.7.0
  %i.gw = load atomic i8, ptr %i.gv acquire, align 1
  %i.gx = icmp eq i8 %i.gw, 1
  br i1 %i.gx, label %.noexc5.loopexit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i85
  %i.gy = add i64 %.sroa.7.0, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.gy, %.pre256
  br i1 %exitcond.not, label %.noexc5.loopexit, label %.lr.ph.i85, !llvm.loop !15

.noexc5.loopexit:                                 ; preds = %.lr.ph.i85, %bb.an
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0, %.lr.ph.i85 ], [ %.pre256, %bb.an ]
  %.pre257 = load i64, ptr %i.fz, align 8, !tbaa !213, !noalias !665
  br label %.noexc5

.noexc5:                                          ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread, %.noexc5.loopexit, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i
  %i.gz = phi ptr [ %i.gt, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %i.gs, %.noexc5.loopexit ], [ null, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ]
  %i.ha = phi ptr [ %i.gr, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %i.gr, %.noexc5.loopexit ], [ %i.gp, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 2 uses
  %i.hb = phi i64 [ %.pre256, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %.pre257, %.noexc5.loopexit ], [ %.ph298, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 3 uses
  %.sroa.7.1 = phi i64 [ %.015.i.i.i239, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i ], [ %.sroa.7.1.ph, %.noexc5.loopexit ], [ %.ph298, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11reader_findES1_.exit.i.thread ] ; 2 uses
  %.not = icmp eq i64 %.sroa.7.1, %i.hb
  br i1 %.not, label %.thread217, label %bb.ao

bb.ao:                                            ; preds = %.noexc5
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %.sroa.7.1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load atomic ptr, ptr %i.hd monotonic, align 8 ; 7 uses
  %.not.i42 = icmp eq ptr %i.he, null
  br i1 %.not.i42, label %.noexc48.thread216, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !120
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef zeroext i1 %i.hh(ptr noundef nonnull align 8 dereferenceable(12) %i.he)
          to label %.noexc46 unwind label %bb.cc, !inline_history !17

.noexc46:                                         ; preds = %bb.ap
  br i1 %i.hi, label %bb.aq, label %.noexc48.thread

bb.aq:                                            ; preds = %.noexc46
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !120
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(12) %i.he)
          to label %.noexc47 unwind label %bb.cc, !inline_history !17

.noexc47:                                         ; preds = %bb.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i37, i64 56 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i37, i64 72 ; 3 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8
  %i.hp = icmp eq i64 %i.ho, 0
  %.pre18.i.i90 = load i64, ptr %i.hm, align 8, !tbaa !228 ; 3 uses
  br i1 %i.hp, label %.noexc48.thread, label %bb.ar

bb.ar:                                            ; preds = %.noexc47
  %i.hq = add i64 %.pre18.i.i90, -1               ; 2 uses
  %.not.i14.i.i91 = icmp eq i64 %.pre18.i.i90, 0
  br i1 %.not.i14.i.i91, label %.noexc48.thread, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %bb.ar
  %i.hr = ptrtoint ptr %i.he to i64
  %i.hs = and i64 %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i37, i64 80 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.i.i92
  %.in.i.i93 = phi i64 [ %.pre18.i.i90, %.lr.ph.i.i92 ], [ %i.hu, %bb.au ]
  %.015.i15.i.i94 = phi i64 [ %i.hs, %.lr.ph.i.i92 ], [ %i.ic, %bb.au ] ; 4 uses
  %i.hu = add i64 %.in.i.i93, -1                  ; 2 uses
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !202
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %.015.i15.i.i94 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly14RequestContext20overwriteContextDataERKNS_12RequestTokenESt10unique_ptrINS_11RequestDataESt14default_deleteIS5_EEb:bb.a
  br i1 %.not.i135, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i133
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = atomicrmw add ptr %i.ks, i32 4097 monotonic, align 4 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i133
  %.sroa.13.2.i137316 = add i64 %.sroa.13.023.i134, 1 ; 3 uses
  %i.ku = icmp ult i64 %.sroa.13.2.i137316, %i.kf
  br i1 %i.ku, label %.lr.ph318, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138

bb.bk:                                            ; preds = %.lr.ph318
  %.sroa.13.2.i137 = add i64 %.sroa.13.2.i137317, 1 ; 3 uses
  %i.kv = icmp ult i64 %.sroa.13.2.i137, %i.kf
  br i1 %i.kv, label %.lr.ph318, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138, !llvm.loop !15

.lr.ph318:                                        ; preds = %bb.bj, %bb.bk
  %.sroa.13.2.i137317 = phi i64 [ %.sroa.13.2.i137, %bb.bk ], [ %.sroa.13.2.i137316, %bb.bj ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.ki, i64 %.sroa.13.2.i137317
  %i.kx = load atomic i8, ptr %i.kw acquire, align 1
  %i.ky = icmp eq i8 %i.kx, 1
  br i1 %i.ky, label %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138_crit_edge, label %bb.bk, !llvm.loop !15

._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138_crit_edge: ; preds = %.lr.ph318
  br label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138, !llvm.loop !15

_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138: ; preds = %bb.bk, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138_crit_edge, %bb.bj
  %.sroa.13.2.i137.lcssa = phi i64 [ %.sroa.13.2.i137317, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138_crit_edge ], [ %.sroa.13.2.i137316, %bb.bj ], [ %.sroa.13.2.i137, %bb.bk ] ; 2 uses
  %i.kz = load i64, ptr %i.je, align 8, !tbaa !213, !noalias !667
  %.not21.i139 = icmp eq i64 %.sroa.13.2.i137.lcssa, %i.kz
  br i1 %.not21.i139, label %.loopexit, label %.lr.ph.i133, !llvm.loop !16

bb.bl:                                            ; preds = %.noexc52
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.ba, %_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapINS0_12RequestTokenEPNS0_11RequestDataEE4ElemEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i.i.i.i, %bb.bl
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.la, %bb.bl ], [ %i.jg, %_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapINS0_12RequestTokenEPNS0_11RequestDataEE4ElemEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i.i.i.i ], [ %i.jg, %bb.ba ]
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef 112) #44
  br label %.body

.loopexit:                                        ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138, %bb.ax, %.critedge.i.thread.i.i106, %.noexc53, %bb.bg, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i130, %.noexc48.thread216, %bb.aw, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11writer_findES1_.exit.i108, %bb.az
  %.0.i43 = phi ptr [ null, %bb.aw ], [ null, %.noexc48.thread216 ], [ null, %bb.az ], [ null, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE11writer_findES1_.exit.i108 ], [ %i.iy, %bb.bg ], [ %i.iy, %.noexc53 ], [ null, %bb.ax ], [ %i.iy, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i130 ], [ null, %.critedge.i.thread.i.i106 ], [ %i.iy, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i138 ] ; 2 uses
  %.not.i3 = icmp eq ptr %.0.i43, null            ; 2 uses
  %spec.select.i = select i1 %.not.i3, ptr %.0.i37, ptr %.0.i43 ; 2 uses
  %spec.select41.i = select i1 %.not.i3, ptr null, ptr %.0.i37
  br label %.noexc65

.thread217:                                       ; preds = %.noexc5
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i37, i64 32
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !240
  %i.ld = sub i64 %i.hb, %i.lc
  %i.le = shl i64 %i.ld, 2
  %i.lf = add i64 %i.le, -4
  %i.lg = icmp ult i64 %i.lf, %i.hb
  br i1 %i.lg, label %.noexc63.thread, label %.noexc63

.noexc63:                                         ; preds = %.thread217
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i37, i64 56
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !228 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.i37, i64 64
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !242
  %i.ll = sub i64 %i.li, %i.lk
  %i.lm = shl i64 %i.ll, 2
  %i.ln = add i64 %i.lm, -4
  %i.lo = icmp ult i64 %i.ln, %i.li
  br i1 %i.lo, label %.noexc63.thread, label %.noexc65

.noexc63.thread:                                  ; preds = %.thread217, %.noexc63
  %i.lp = invoke noundef ptr @_ZN5folly14RequestContext5State6expandEPNS1_8CombinedE(ptr nonnull align 8 poison, ptr noundef nonnull %.0.i37)
          to label %.noexc64 unwind label %bb.cc  ; 11 uses

.noexc64:                                         ; preds = %.noexc63.thread
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.ls = load atomic i64, ptr %i.lr acquire, align 8, !noalias !668
  %i.lt = icmp eq i64 %i.ls, 0
  br i1 %i.lt, label %.noexc65, label %bb.bm

bb.bm:                                            ; preds = %.noexc64
  %i.lu = load i64, ptr %i.lq, align 8, !tbaa !213 ; 5 uses
  %i.lv = icmp eq i64 %i.lu, 0                    ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.lx = load ptr, ptr %i.lw, align 8            ; 3 uses
  %i.ly = select i1 %i.lv, ptr null, ptr %i.lx
  br i1 %i.lv, label %.noexc65, label %.lr.ph.i3.i142

.lr.ph.i3.i142:                                   ; preds = %bb.bm, %bb.bn
  %.sroa.13.5.i143 = phi i64 [ %i.mc, %bb.bn ], [ 0, %bb.bm ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %.sroa.13.5.i143
  %i.ma = load atomic i8, ptr %i.lz acquire, align 1
  %i.mb = icmp eq i8 %i.ma, 1
  br i1 %i.mb, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i3.i142
  %i.mc = add nuw i64 %.sroa.13.5.i143, 1         ; 2 uses
  %exitcond.not.i144 = icmp eq i64 %i.mc, %i.lu
  br i1 %exitcond.not.i144, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145, label %.lr.ph.i3.i142, !llvm.loop !15

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145: ; preds = %bb.bn, %.lr.ph.i3.i142
  %.sroa.13.1.ph.i146 = phi i64 [ %.sroa.13.5.i143, %.lr.ph.i3.i142 ], [ %i.lu, %bb.bn ] ; 2 uses
  %.pre.i147 = load i64, ptr %i.lq, align 8, !tbaa !213, !noalias !669
  %i.md = icmp eq i64 %.sroa.13.1.ph.i146, %.pre.i147
  br i1 %i.md, label %.noexc65, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153
  %.sroa.13.023.i149 = phi i64 [ %.sroa.13.2.i152.lcssa, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153 ], [ %.sroa.13.1.ph.i146, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145 ] ; 2 uses
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.lx, i64 %.sroa.13.023.i149
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load atomic ptr, ptr %i.mf monotonic, align 8 ; 2 uses
  %.not.i150 = icmp eq ptr %i.mg, null
  br i1 %.not.i150, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i148
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = atomicrmw add ptr %i.mh, i32 4097 monotonic, align 4 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i148
  %.sroa.13.2.i152321 = add i64 %.sroa.13.023.i149, 1 ; 3 uses
  %i.mj = icmp ult i64 %.sroa.13.2.i152321, %i.lu
  br i1 %i.mj, label %.lr.ph323, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153

bb.bq:                                            ; preds = %.lr.ph323
  %.sroa.13.2.i152 = add i64 %.sroa.13.2.i152322, 1 ; 3 uses
  %i.mk = icmp ult i64 %.sroa.13.2.i152, %i.lu
  br i1 %i.mk, label %.lr.ph323, label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153, !llvm.loop !15

.lr.ph323:                                        ; preds = %bb.bp, %bb.bq
  %.sroa.13.2.i152322 = phi i64 [ %.sroa.13.2.i152, %bb.bq ], [ %.sroa.13.2.i152321, %bb.bp ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.lx, i64 %.sroa.13.2.i152322
  %i.mm = load atomic i8, ptr %i.ml acquire, align 1
  %i.mn = icmp eq i8 %i.mm, 1
  br i1 %i.mn, label %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153_crit_edge, label %bb.bq, !llvm.loop !15

._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153_crit_edge: ; preds = %.lr.ph323
  br label %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153, !llvm.loop !15

_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153: ; preds = %bb.bq, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153_crit_edge, %bb.bp
  %.sroa.13.2.i152.lcssa = phi i64 [ %.sroa.13.2.i152322, %._ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153_crit_edge ], [ %.sroa.13.2.i152321, %bb.bp ], [ %.sroa.13.2.i152, %bb.bq ] ; 2 uses
  %i.mo = load i64, ptr %i.lq, align 8, !tbaa !213, !noalias !669
  %.not21.i154 = icmp eq i64 %.sroa.13.2.i152.lcssa, %i.mo
  br i1 %.not21.i154, label %.noexc65, label %.lr.ph.i148, !llvm.loop !16

.noexc65:                                         ; preds = %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153, %.loopexit, %.noexc64, %bb.bm, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145, %.noexc63
  %.1.i2223 = phi ptr [ %spec.select41.i, %.loopexit ], [ null, %.noexc63 ], [ null, %.noexc64 ], [ null, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145 ], [ null, %bb.bm ], [ null, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153 ]
  %.131.i221 = phi ptr [ %spec.select.i, %.loopexit ], [ %.0.i37, %.noexc63 ], [ %.0.i37, %.noexc64 ], [ %.0.i37, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145 ], [ %.0.i37, %bb.bm ], [ %.0.i37, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153 ] ; 2 uses
  %.016.i60 = phi ptr [ null, %.loopexit ], [ null, %.noexc63 ], [ %i.lp, %.noexc64 ], [ %i.lp, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145 ], [ %i.lp, %bb.bm ], [ %i.lp, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153 ] ; 2 uses
  %.0.i61 = phi ptr [ %spec.select.i, %.loopexit ], [ %.0.i37, %.noexc63 ], [ %i.lp, %.noexc64 ], [ %i.lp, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE5beginEv.exit.i145 ], [ %i.lp, %bb.bm ], [ %i.lp, %_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8Iterator4nextEv.exit.i153 ] ; 2 uses
  %i.mp = load ptr, ptr %2, align 8, !tbaa !264   ; 3 uses
  %.not225 = icmp eq ptr %i.mp, null
  br i1 %.not225, label %.noexc68.thread, label %bb.br

bb.br:                                            ; preds = %.noexc65
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !120
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = invoke noundef zeroext i1 %i.ms(ptr noundef nonnull align 8 dereferenceable(12) %i.mp)
          to label %.noexc66 unwind label %bb.cc, !inline_history !18

.noexc66:                                         ; preds = %bb.br
  br i1 %i.mt, label %bb.bs, label %.noexc68

bb.bs:                                            ; preds = %.noexc66
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i61, i64 56
  %i.mv = load ptr, ptr %2, align 8, !tbaa !264
  %i.mw = invoke noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiE6insertES2_i(ptr noundef nonnull align 8 dereferenceable(32) %i.mu, ptr noundef %i.mv, i32 noundef 1)
          to label %.noexc67 unwind label %bb.cc  ; 0 uses

.noexc67:                                         ; preds = %bb.bs
  %i.mx = load ptr, ptr %2, align 8, !tbaa !264   ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !120
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  invoke void %i.na(ptr noundef nonnull align 8 dereferenceable(12) %i.mx)
          to label %.noexc68 unwind label %bb.cc, !inline_history !18

.noexc68:                                         ; preds = %.noexc67, %.noexc66
  %.pr224 = load ptr, ptr %2, align 8, !tbaa !264 ; 2 uses
  %.not226 = icmp eq ptr %.pr224, null
  br i1 %.not226, label %.noexc68.thread, label %bb.bt

bb.bt:                                            ; preds = %.noexc68
  %i.nb = getelementptr inbounds nuw i8, ptr %.pr224, i64 8
  %i.nc = atomicrmw add ptr %i.nb, i32 4097 monotonic, align 4 ; 0 uses
  %.pre258 = load ptr, ptr %2, align 8, !tbaa !264
  br label %.noexc68.thread

.noexc68.thread:                                  ; preds = %.noexc65, %bb.bt, %.noexc68
  %i.nd = phi ptr [ null, %.noexc65 ], [ %.pre258, %bb.bt ], [ null, %.noexc68 ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.0.i61, i64 24
  %.sroa.0.0.copyload.i62 = load i32, ptr %1, align 4, !tbaa !62
  store ptr null, ptr %2, align 8, !tbaa !264
  %i.nf = invoke noundef zeroext i1 @_ZN5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE6insertES1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ne, i32 %.sroa.0.0.copyload.i62, ptr noundef %i.nd)
          to label %.noexc7 unwind label %bb.cc   ; 0 uses

.noexc7:                                          ; preds = %.noexc68.thread
  %.not39.i = icmp eq ptr %.016.i60, null         ; 2 uses
  %spec.select43.i = select i1 %.not39.i, ptr %.1.i2223, ptr %.131.i221 ; 2 uses
  %.not40.i = icmp eq ptr %spec.select43.i, null
  br i1 %.not40.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.noexc7
  %spec.select42.i = select i1 %.not39.i, ptr %.131.i221, ptr %.016.i60 ; 2 uses
  %i.ng = ptrtoint ptr %0 to i64
  %i.nh = or disjoint i64 %i.ng, 1
  %i.ni = getelementptr inbounds nuw i8, ptr %spec.select42.i, i64 16
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !151
  store atomic ptr %spec.select42.i, ptr %i.fo release, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.noexc7
  %i.nj = load ptr, ptr %6, align 8, !tbaa !234, !nonnull !87, !align !121
  %i.nk = invoke noundef i64 @_ZN5folly20processLocalUniqueIdEv()
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  store atomic i64 %i.nk, ptr %i.nl release, align 8
  %i.nm = load i8, ptr %i.ff, align 8, !tbaa !82, !range !88, !noundef !87
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bx, label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit

bb.bx:                                            ; preds = %bb.bw
  %i.no = load ptr, ptr %i.fd, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i156, label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.np = atomicrmw and ptr %i.no, i32 -401 seq_cst, align 4 ; 2 uses
  %i.nq = and i32 %i.np, -401
  store i32 %i.nq, ptr %i.a, align 4, !tbaa !62
  %i.nr = and i32 %i.np, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.bz, !prof !73

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.no, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.ca

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit

bb.ca:                                            ; preds = %bb.bz
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #38
  unreachable

bb.cb:                                            ; preds = %bb.bv
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #38
  unreachable

_ZN5folly14RequestContext5State9LockGuardD2Ev.exit: ; preds = %bb.bw, %bb.bx, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit33

bb.cc:                                            ; preds = %.noexc68.thread, %.noexc67, %bb.bs, %bb.br, %.noexc63.thread, %.noexc48.thread, %bb.aq, %bb.ap, %bb.ai
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cc, %.body113
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body114, %.body113 ], [ %i.nw, %bb.cc ]
  call void @_ZN5folly14RequestContext5State9LockGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %eh.lpad-body

_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit33: ; preds = %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit, %_ZN5folly14RequestContext5State13insertNewDataEPNS1_8CombinedERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS8_EEb.exit, %bb.af
  %spec.select43.i26.pn = phi ptr [ %spec.select43.i, %_ZN5folly14RequestContext5State9LockGuardD2Ev.exit ], [ null, %_ZN5folly14RequestContext5State13insertNewDataEPNS1_8CombinedERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS8_EEb.exit ], [ %.0.i35, %bb.af ] ; 9 uses
  %.not25.i = icmp eq ptr %spec.select43.i26.pn, null
  br i1 %.not25.i, label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit33
  %i.nx = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i, label %bb.ce, label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i, !prof !89

bb.ce:                                            ; preds = %bb.cd
  %i.ny = call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb1EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg) #12
  br label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i

_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i: ; preds = %bb.ce, %bb.cd
  %i.nz = phi ptr [ %i.ny, %bb.ce ], [ %i.nx, %bb.cd ]
  %i.oa = getelementptr inbounds nuw i8, ptr %spec.select43.i26.pn, i64 8 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !139
  %.not.i.i.i164 = icmp eq ptr %i.ob, %spec.select43.i26.pn
  br i1 %.not.i.i.i164, label %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  call void @_ZN5folly10hazptr_objISt6atomicE21pre_retire_check_failEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select43.i26.pn) #12
  br label %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i

_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i: ; preds = %bb.cf, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  store ptr @_ZZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE11set_reclaimEvENUlPNS_10hazptr_objIS4_EERNS_15hazptr_obj_listIS4_EEE_8__invokeESA_SD_, ptr %spec.select43.i26.pn, align 8, !tbaa !140
  %i.oc = getelementptr inbounds nuw i8, ptr %spec.select43.i26.pn, i64 16
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !151
  %i.oe = and i64 %i.od, -2                       ; 2 uses
  %.not.i.i165 = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i165, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i
  %i.of = inttoptr i64 %i.oe to ptr
  call void @_ZN5folly17hazptr_obj_cohortISt6atomicE8push_objEPNS_10hazptr_objIS1_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.of, ptr noundef nonnull align 8 dereferenceable(24) %spec.select43.i26.pn)
  br label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit

bb.ch:                                            ; preds = %_ZN5folly15hazptr_obj_baseINS_14RequestContext5State8CombinedESt6atomicSt14default_deleteIS3_EE10pre_retireES6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %spec.select43.i26.pn, ptr %4, align 8, !tbaa !142
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %spec.select43.i26.pn, ptr %i.og, align 8, !tbaa !166
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.oh, align 8, !tbaa !168
  store ptr null, ptr %i.oa, align 8, !tbaa !139
  invoke void @_ZN5folly13hazptr_domainISt6atomicE9push_listERNS_15hazptr_obj_listIS1_EE(ptr noundef nonnull align 64 dereferenceable(449) %i.nz, ptr noundef nonnull align 8 dereferenceable(20) %4)
          to label %_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #38
  unreachable

_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit

_ZN5folly14RequestContext5State16doSetContextDataERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit: ; preds = %_ZN5folly10hazptr_objISt6atomicE15push_to_retiredERNS_13hazptr_domainIS1_EE.exit.i.i, %bb.cg, %_ZN5folly14RequestContext5State22doSetContextDataHelperERKNS_12RequestTokenERSt10unique_ptrINS_11RequestDataESt14default_deleteIS6_EENS0_14DoSetBehaviourEb.exit33
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly14RequestContext14hasContextDataERKNS_12RequestTokenE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E13getLocalCacheEvE5cache) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 2 uses
  %.not.i5 = icmp eq ptr %i.b, null
  br i1 %.not.i5, label %bb.b, label %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E7getSlowERNS_6detail25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit

_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !269
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN5folly12hazptr_localILh1ESt6atomicEC2Ev.exit, !prof !89

bb.c:                                             ; preds = %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit
  tail call void @_ZN5folly9hazptr_tcISt6atomicE4fillEh(ptr noundef nonnull align 8 dereferenceable(74) %i.d, i8 noundef zeroext 1)
  br label %_ZN5folly12hazptr_localILh1ESt6atomicEC2Ev.exit

_ZN5folly12hazptr_localILh1ESt6atomicEC2Ev.exit:  ; preds = %bb.c, %_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E3getEv.exit
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !271  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  store atomic ptr %i.j, ptr %i.h release, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !165
  %i.k = load atomic ptr, ptr %i.i acquire, align 8 ; 3 uses
  %.not.i628 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i628, label %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EES9_SC_T0_.exit, label %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EEbRS9_SC_T0_.exit, !prof !117

_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EEbRS9_SC_T0_.exit: ; preds = %_ZN5folly12hazptr_localILh1ESt6atomicEC2Ev.exit, %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EEbRS9_SC_T0_.exit
  %i.l = phi ptr [ %i.m, %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EEbRS9_SC_T0_.exit ], [ %i.k, %_ZN5folly12hazptr_localILh1ESt6atomicEC2Ev.exit ] ; 2 uses
  store atomic ptr null, ptr %i.h release, align 8
  store atomic ptr %i.l, ptr %i.h release, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !165
  %i.m = load atomic ptr, ptr %i.i acquire, align 8 ; 3 uses
  %.not.i6 = icmp eq ptr %i.l, %i.m
  br i1 %.not.i6, label %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EES9_SC_T0_.exit, label %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EEbRS9_SC_T0_.exit, !prof !118

_ZN5folly13hazptr_holderISt6atomicE7protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EES9_SC_T0_.exit: ; preds = %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EEbRS9_SC_T0_.exit, %_ZN5folly12hazptr_localILh1ESt6atomicEC2Ev.exit
  %.lcssa = phi ptr [ %i.k, %_ZN5folly12hazptr_localILh1ESt6atomicEC2Ev.exit ], [ %i.m, %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EEbRS9_SC_T0_.exit ] ; 4 uses
  %.not.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i, label %_ZNK5folly14RequestContext5State14hasContextDataERKNS_12RequestTokenE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EES9_SC_T0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !62 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.p = load atomic i64, ptr %i.o acquire, align 8
  %i.q = icmp eq i64 %i.p, 0
  %.pre35 = load i64, ptr %i.n, align 8, !tbaa !213 ; 3 uses
  br i1 %i.q, label %_ZNK5folly14RequestContext5State14hasContextDataERKNS_12RequestTokenE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %.pre35, -1                      ; 2 uses
  %.not.i.i.i29 = icmp eq i64 %.pre35, 0
  br i1 %.not.i.i.i29, label %_ZNK5folly14RequestContext5State14hasContextDataERKNS_12RequestTokenE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.s = zext i32 %.sroa.0.0.copyload.i to i64
  %i.t = and i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge.i.i.i.thread
  %.in = phi i64 [ %.pre35, %.lr.ph ], [ %i.v, %.critedge.i.i.i.thread ]
  %.015.i.i.i30 = phi i64 [ %i.t, %.lr.ph ], [ %i.ac, %.critedge.i.i.i.thread ] ; 3 uses
  %i.v = add i64 %.in, -1                         ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !204
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.015.i.i.i30 ; 2 uses
  %i.y = load atomic i8, ptr %i.x acquire, align 1
  switch i8 %i.y, label %.critedge.i.i.i.thread [
    i8 1, label %bb.g
    i8 0, label %_ZNK5folly14RequestContext5State14hasContextDataERKNS_12RequestTokenE.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0.0.copyload.i2.i.i = load i32, ptr %i.z, align 4, !tbaa !62
  %i.aa = icmp eq i32 %.sroa.0.0.copyload.i2.i.i, %.sroa.0.0.copyload.i
  br i1 %i.aa, label %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8containsES1_.exit.loopexit, label %.critedge.i.i.i.thread

.critedge.i.i.i.thread:                           ; preds = %bb.f, %bb.g
  %i.ab = add i64 %.015.i.i.i30, 1
  %i.ac = and i64 %i.ab, %i.r
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %_ZNK5folly14RequestContext5State14hasContextDataERKNS_12RequestTokenE.exit, label %bb.f

_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8containsES1_.exit.loopexit: ; preds = %bb.g
  %.pre36 = load i64, ptr %i.n, align 8, !tbaa !213
  %i.ad = icmp ult i64 %.015.i.i.i30, %.pre36
  br label %_ZNK5folly14RequestContext5State14hasContextDataERKNS_12RequestTokenE.exit

_ZNK5folly14RequestContext5State14hasContextDataERKNS_12RequestTokenE.exit: ; preds = %.critedge.i.i.i.thread, %bb.f, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8containsES1_.exit.loopexit, %bb.e, %bb.d, %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EES9_SC_T0_.exit
  %i.ae = phi i1 [ false, %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14RequestContext5State8CombinedEZNS2_7protectIS6_EEPT_RKS1_IS9_EEUlPS6_E_EES9_SC_T0_.exit ], [ %i.ad, %_ZNK5folly24SingleWriterFixedHashMapINS_12RequestTokenEPNS_11RequestDataEE8containsES1_.exit.loopexit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %.critedge.i.i.i.thread ]
  store atomic ptr null, ptr %i.h release, align 8
  ret i1 %i.ae
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly9hazptr_tcISt6atomicE4fillEh(ptr noundef nonnull align 8 dereferenceable(74) %0, i8 noundef zeroext %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb1EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg) #12
  br label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit

_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit, %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i
  %i.g = phi i64 [ %i.t, %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i ], [ %i.e, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit ] ; 4 uses
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = or disjoint i64 %i.g, 1
  %i.k = cmpxchg weak ptr %i.d, i64 %i.g, i64 %i.j acq_rel acquire, align 8
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.g to ptr                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.013.i.i.i = phi i8 [ 1, %bb.d ], [ %i.q, %bb.e ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.m, %bb.d ], [ %.012.i.i.i, %bb.e ] ; 2 uses
  %.012.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %.012.i.i.i = load ptr, ptr %.012.in.i.i.i, align 16, !tbaa !275 ; 3 uses
  %i.n = icmp ne ptr %.012.i.i.i, null
  %i.o = icmp ult i8 %.013.i.i.i, %1
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  %i.q = add nuw i8 %.013.i.i.i, 1
  br i1 %i.p, label %bb.e, label %_ZN5folly13hazptr_domainISt6atomicE33pop_available_hprecs_release_lockEhPNS_10hazptr_recIS1_EE.exit.i.i, !llvm.loop !670

_ZN5folly13hazptr_domainISt6atomicE33pop_available_hprecs_release_lockEhPNS_10hazptr_recIS1_EE.exit.i.i: ; preds = %bb.e
  %.012.in.i.i.i.le = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.r = ptrtoint ptr %.012.i.i.i to i64
  store atomic i64 %i.r, ptr %i.d release, align 8
  store ptr null, ptr %.012.in.i.i.i.le, align 16, !tbaa !275
  br label %_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.s = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i

_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i: ; preds = %bb.f, %bb.c
  %i.t = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i, label %.lr.ph.i.i

_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i: ; preds = %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i, %_ZN5folly13hazptr_domainISt6atomicE33pop_available_hprecs_release_lockEhPNS_10hazptr_recIS1_EE.exit.i.i, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit
  %.sroa.0.1.ph.i.i = phi i8 [ %.013.i.i.i, %_ZN5folly13hazptr_domainISt6atomicE33pop_available_hprecs_release_lockEhPNS_10hazptr_recIS1_EE.exit.i.i ], [ 0, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit ], [ 0, %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i ] ; 2 uses
  %.sroa.3.1.ph.i.i = phi ptr [ %i.m, %_ZN5folly13hazptr_domainISt6atomicE33pop_available_hprecs_release_lockEhPNS_10hazptr_recIS1_EE.exit.i.i ], [ null, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit ], [ null, %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i ] ; 2 uses
  %i.v = icmp ult i8 %.sroa.0.1.ph.i.i, %1
  br i1 %i.v, label %.lr.ph.i, label %_ZN5folly13hazptr_domainISt6atomicE14acquire_hprecsEh.exit

.lr.ph.i:                                         ; preds = %_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i, %.lr.ph.i
  %.sroa.0.014.i = phi i8 [ %.sroa.0.1.ph.i.i, %.lr.ph.i ], [ %i.an, %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i ]
  %.sroa.610.013.i = phi ptr [ %.sroa.3.1.ph.i.i, %.lr.ph.i ], [ %i.al, %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i ]
  %i.x = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i, !prof !89

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly13hazptr_domainISt6atomicE25get_or_create_hprecs_slowEv(ptr noundef nonnull align 64 dereferenceable(449) %i.c)
  br label %_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i

_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.y, %bb.h ], [ %i.x, %bb.g ] ; 3 uses
  %i.aa = atomicrmw add ptr %i.w, i32 1 monotonic, align 4
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8
  %i.ae = icmp ugt i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !73

bb.i:                                             ; preds = %_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  br label %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i
end_hunk_1
