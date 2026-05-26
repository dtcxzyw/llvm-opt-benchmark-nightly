inline.NumInlined: 4247
inline.NumDeleted: 967
begin_hunk_0_@_ZN2v88internal4Heap33CreateEarlyReadOnlyMapsAndObjectsEv:bb.a
  br i1 %i.sa, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit697, label %.lr.ph1570

.lr.ph1570:                                       ; preds = %bb.dq
  %i.sb = add i64 %i.rq, -1
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph1570, %bb.dr
  %.sroa.01110.01569 = phi ptr [ %i.rx, %.lr.ph1570 ], [ %i.sf, %bb.dr ] ; 2 uses
  %i.sc = load ptr, ptr %.sroa.01110.01569, align 8 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = load ptr, ptr %i.sd, align 8
  tail call void %i.se(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, i64 noundef %i.sb, i32 noundef 72) #10, !inline_history !9
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.01110.01569, i64 8 ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.rz
  br i1 %i.sg, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit697, label %bb.dr

_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit697: ; preds = %bb.dr, %bb.dq, %bb.dp
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 992 ; 2 uses
  store i64 %i.rq, ptr %i.sh, align 8
  %i.si = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.sj = tail call noundef zeroext i1 @_ZN2v88internal20PerThreadAssertScopeILb1EJLNS0_19PerThreadAssertTypeE2EEE9IsAllowedEv() #10
  br i1 %i.sj, label %bb.dt, label %bb.ds, !prof !7

bb.ds:                                            ; preds = %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit697
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #11
  unreachable

bb.dt:                                            ; preds = %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit697
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 8 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2784
  %i.sn = load i8, ptr %i.sm, align 8, !range !5, !noundef !6
  %i.so = trunc nuw i8 %i.sn to i1
  br i1 %i.so, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.sp = load ptr, ptr %i.si, align 8            ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 9
  %i.sr = load atomic i8, ptr %i.sq monotonic, align 1 ; 2 uses
  %i.ss = trunc i8 %i.sr to i1
  %i.st = and i8 %i.sr, 6
  %i.su = icmp eq i8 %i.st, 0
  %.not1.i698 = or i1 %i.su, %i.ss
  br i1 %.not1.i698, label %bb.dw, label %bb.dv, !prof !7

bb.dv:                                            ; preds = %bb.du
  tail call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.sp) #10
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %i.sv = getelementptr inbounds nuw i8, ptr %i.si, i64 120
  %i.sw = load ptr, ptr %i.sv, align 8
  %i.sx = tail call i64 @_ZN2v88internal13ReadOnlySpace11AllocateRawEiNS0_19AllocationAlignmentE(ptr noundef nonnull align 8 dereferenceable(120) %i.sw, i32 noundef 72, i8 noundef zeroext 0) #10 ; 4 uses
  %.not1485 = icmp eq i64 %i.sx, 0
  br i1 %.not1485, label %.critedge510, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.sy = load ptr, ptr %i.si, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load i8, ptr %i.sz, align 8, !range !5, !noundef !6
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.dy, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit701

bb.dy:                                            ; preds = %bb.dx
  %i.tc = load ptr, ptr %i.sk, align 8            ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 2808
  %i.te = load ptr, ptr %i.td, align 8            ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 2816
  %i.tg = load ptr, ptr %i.tf, align 8            ; 2 uses
  %i.th = icmp eq ptr %i.te, %i.tg
  br i1 %i.th, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit701, label %.lr.ph1572

.lr.ph1572:                                       ; preds = %bb.dy
  %i.ti = add i64 %i.sx, -1
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph1572, %bb.dz
  %.sroa.01103.01571 = phi ptr [ %i.te, %.lr.ph1572 ], [ %i.tm, %bb.dz ] ; 2 uses
  %i.tj = load ptr, ptr %.sroa.01103.01571, align 8 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = load ptr, ptr %i.tk, align 8
  tail call void %i.tl(ptr noundef nonnull align 8 dereferenceable(8) %i.tj, i64 noundef %i.ti, i32 noundef 72) #10, !inline_history !9
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.01103.01571, i64 8 ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.tg
  br i1 %i.tn, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit701, label %bb.dz

_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit701: ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.to = getelementptr inbounds nuw i8, ptr %i.c, i64 1000 ; 2 uses
  store i64 %i.sx, ptr %i.to, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.it, i64 %i.it, i16 noundef zeroext 276, i32 noundef 72)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.ka, i64 %i.it, i16 noundef zeroext 131, i32 noundef 48)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.lh, i64 %i.it, i16 noundef zeroext 131, i32 noundef 48)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.mo, i64 %i.it, i16 noundef zeroext 131, i32 noundef 48)
  %i.tp = add i64 %i.mo, 11
  %i.tq = inttoptr i64 %i.tp to ptr
  %i.tr = load atomic volatile i16, ptr %i.tq monotonic, align 2
  %i.ts = icmp ult i16 %i.tr, 132
  br i1 %i.ts, label %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit, label %bb.ea, !prof !7

bb.ea:                                            ; preds = %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit701
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #11
  unreachable

_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit: ; preds = %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit701
  %i.tt = add i64 %i.mo, 8
  %i.tu = inttoptr i64 %i.tt to ptr
  store atomic volatile i8 53, ptr %i.tu monotonic, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.nv, i64 %i.it, i16 noundef zeroext 130, i32 noundef 16)
  %i.tv = add i64 %i.nv, 11
  %i.tw = inttoptr i64 %i.tv to ptr
  %i.tx = load atomic volatile i16, ptr %i.tw monotonic, align 2
  %i.ty = icmp ult i16 %i.tx, 132
  br i1 %i.ty, label %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit703, label %bb.eb, !prof !7

bb.eb:                                            ; preds = %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #11
  unreachable

_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit703: ; preds = %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit
  %i.tz = add i64 %i.nv, 8
  %i.ua = inttoptr i64 %i.tz to ptr
  store atomic volatile i8 -87, ptr %i.ua monotonic, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.pc, i64 %i.it, i16 noundef zeroext 129, i32 noundef 0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.qj, i64 %i.it, i16 noundef zeroext 271, i32 noundef 0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.rq, i64 %i.it, i16 noundef zeroext 270, i32 noundef 8)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.sx, i64 %i.it, i16 noundef zeroext 270, i32 noundef 16)
  br label %bb.ee

bb.ec:                                            ; preds = %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit707
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.hm, i64 %i.it, i16 noundef zeroext 128, i32 noundef 24)
  %i.ub = add i64 %i.hm, 11
  %i.uc = inttoptr i64 %i.ub to ptr
  %i.ud = load atomic volatile i16, ptr %i.uc monotonic, align 2
  %i.ue = icmp ult i16 %i.ud, 132
  br i1 %i.ue, label %bb.eg, label %bb.ed, !prof !7

bb.ed:                                            ; preds = %bb.ec
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #11
  unreachable

bb.ee:                                            ; preds = %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit703, %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit707
  %.0470.idx1573 = phi i64 [ 0, %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit703 ], [ %.0470.add, %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit707 ] ; 2 uses
  %.0470.ptr = getelementptr inbounds nuw i8, ptr @_ZGRN2v88internal12_GLOBAL__N_116kStringTypeTableE_, i64 %.0470.idx1573 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0470.ptr, i64 8
  %i.ug = load i16, ptr %i.uf, align 4
  %i.uh = zext i16 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.uh
  %i.uj = load i64, ptr %i.ui, align 8            ; 4 uses
  %i.uk = load i16, ptr %.0470.ptr, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %.0470.ptr, i64 4
  %i.um = load i32, ptr %i.ul, align 4
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120InitializePartialMapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEES6_NS0_12InstanceTypeEi(i64 %i.uj, i64 %i.it, i16 noundef zeroext %i.uk, i32 noundef %i.um)
  %i.un = add i64 %i.uj, 11
  %i.uo = inttoptr i64 %i.un to ptr
  %i.up = load atomic volatile i16, ptr %i.uo monotonic, align 2
  %i.uq = icmp ult i16 %i.up, 132
  br i1 %i.uq, label %_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit707, label %bb.ef, !prof !7

bb.ef:                                            ; preds = %bb.ee
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #11
  unreachable

_ZN2v88internal3Map27SetConstructorFunctionIndexEi.exit707: ; preds = %bb.ee
  %i.ur = add i64 %i.uj, 8
  %i.us = inttoptr i64 %i.ur to ptr
  store atomic volatile i8 -25, ptr %i.us monotonic, align 1
  %i.ut = add i64 %i.uj, 15
  %i.uu = inttoptr i64 %i.ut to ptr               ; 2 uses
  %i.uv = load atomic volatile i32, ptr %i.uu monotonic, align 4
  %i.uw = or i32 %i.uv, 33554432
  store atomic volatile i32 %i.uw, ptr %i.uu release, align 4
  %.0470.add = add nuw nsw i64 %.0470.idx1573, 12 ; 2 uses
  %.not474 = icmp eq i64 %.0470.add, 288
  br i1 %.not474, label %bb.ec, label %bb.ee

bb.eg:                                            ; preds = %bb.ec
  %i.ux = add i64 %i.hm, 8
  %i.uy = inttoptr i64 %i.ux to ptr
  store atomic volatile i8 -23, ptr %i.uy monotonic, align 1
  %i.uz = add i64 %i.u, -1
  %i.va = inttoptr i64 %i.uz to ptr               ; 2 uses
  store atomic volatile i64 %i.ka, ptr %i.va monotonic, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 40
  store atomic volatile i64 17179869184, ptr %i.vb monotonic, align 8
  %i.vc = add i64 %i.ba, -1
  %i.vd = inttoptr i64 %i.vc to ptr               ; 2 uses
  store atomic volatile i64 %i.lh, ptr %i.vd monotonic, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  store atomic volatile i64 12884901888, ptr %i.ve monotonic, align 8
  %i.vf = add i64 %i.ev, -1
  %i.vg = inttoptr i64 %i.vf to ptr               ; 2 uses
  store atomic volatile i64 %i.mo, ptr %i.vg monotonic, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  store atomic volatile i64 4294967296, ptr %i.vh monotonic, align 8
  %i.vi = add i64 %i.do, -1
  %i.vj = inttoptr i64 %i.vi to ptr               ; 2 uses
  store atomic volatile i64 %i.mo, ptr %i.vj monotonic, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 40
  store atomic volatile i64 0, ptr %i.vk monotonic, align 8
  %i.vl = add i64 %i.ch, -1
  %i.vm = inttoptr i64 %i.vl to ptr               ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.c, i64 776
  %i.vo = load i64, ptr %i.vn, align 8
  store atomic volatile i64 %i.vo, ptr %i.vm monotonic, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 12
  store atomic volatile i32 0, ptr %i.vp monotonic, align 4
  store atomic i32 3, ptr %4 monotonic, align 8
  %i.vq = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 205, i32 noundef 0) ; 2 uses
  %.not1486 = icmp eq i64 %i.vq, 0
  br i1 %.not1486, label %.critedge510, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.vr = getelementptr inbounds nuw i8, ptr %i.c, i64 728 ; 3 uses
  store i64 %i.vq, ptr %i.vr, align 8
  %i.vs = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 196, i32 noundef 0) ; 2 uses
  %.not1487 = icmp eq i64 %i.vs, 0
  br i1 %.not1487, label %.critedge510, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.vt = getelementptr inbounds nuw i8, ptr %i.c, i64 1496 ; 2 uses
  store i64 %i.vs, ptr %i.vt, align 8
  %i.vu = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 192, i32 noundef 0) ; 2 uses
  %.not1488 = icmp eq i64 %i.vu, 0
  br i1 %.not1488, label %.critedge510, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.vv = getelementptr inbounds nuw i8, ptr %i.c, i64 1520 ; 2 uses
  store i64 %i.vu, ptr %i.vv, align 8
  %i.vw = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 257, i32 noundef 0) ; 2 uses
  %.not1489 = icmp eq i64 %i.vw, 0
  br i1 %.not1489, label %.critedge510, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vx = getelementptr inbounds nuw i8, ptr %i.c, i64 832 ; 3 uses
  store i64 %i.vw, ptr %i.vx, align 8
  %i.vy = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 198, i32 noundef 0) ; 2 uses
  %.not1490 = icmp eq i64 %i.vy, 0
  br i1 %.not1490, label %.critedge510, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vz = getelementptr inbounds nuw i8, ptr %i.c, i64 1504 ; 2 uses
  store i64 %i.vy, ptr %i.vz, align 8
  %i.wa = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 193, i32 noundef 0) ; 2 uses
  %.not1491 = icmp eq i64 %i.wa, 0
  br i1 %.not1491, label %.critedge510, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 1528 ; 2 uses
  store i64 %i.wa, ptr %i.wb, align 8
  %i.wc = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 298, i32 noundef 0) ; 2 uses
  %.not1492 = icmp eq i64 %i.wc, 0
  br i1 %.not1492, label %.critedge510, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wd = getelementptr inbounds nuw i8, ptr %i.c, i64 1464 ; 3 uses
  store i64 %i.wc, ptr %i.wd, align 8
  %i.we = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 205, i32 noundef 0) ; 2 uses
  %.not1493 = icmp eq i64 %i.we, 0
  br i1 %.not1493, label %.critedge510, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 736 ; 2 uses
  store i64 %i.we, ptr %i.wf, align 8
  %i.wg = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 253, i32 noundef 0) ; 2 uses
  %.not1494 = icmp eq i64 %i.wg, 0
  br i1 %.not1494, label %.critedge510, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 8552 ; 3 uses
  store i64 %i.wg, ptr %i.wh, align 8
  %i.wi = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext 272, i32 noundef 8) ; 2 uses
  %.not1495 = icmp eq i64 %i.wi, 0
  br i1 %.not1495, label %.critedge510, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.wj = getelementptr inbounds nuw i8, ptr %i.c, i64 1792 ; 2 uses
  store i64 %i.wi, ptr %i.wj, align 8
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.et
  %.0471.idx1574 = phi i64 [ 0, %bb.eq ], [ %.0471.add, %bb.et ] ; 2 uses
  %.0471.ptr1575 = getelementptr inbounds nuw i8, ptr @_ZGRN2v88internal12_GLOBAL__N_112kStructTableE_, i64 %.0471.idx1574 ; 3 uses
  %i.wk = load i16, ptr %.0471.ptr1575, align 4   ; 2 uses
  switch i16 %i.wk, label %bb.et [
    i16 154, label %bb.es
    i16 149, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er, %bb.er
  %i.wl = getelementptr inbounds nuw i8, ptr %.0471.ptr1575, i64 4
  %i.wm = load i32, ptr %i.wl, align 4
  %i.wn = tail call i64 @_ZN2v88internal4Heap18AllocatePartialMapENS0_12InstanceTypeEi(ptr noundef nonnull align 8 dereferenceable(2992) %0, i16 noundef zeroext %i.wk, i32 noundef %i.wm) ; 2 uses
  %.not1496 = icmp eq i64 %i.wn, 0
  br i1 %.not1496, label %.critedge510, label %select.unfold

select.unfold:                                    ; preds = %bb.es
  %i.wo = getelementptr inbounds nuw i8, ptr %.0471.ptr1575, i64 8
  %i.wp = load i16, ptr %i.wo, align 4
  %i.wq = zext i16 %i.wp to i64
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.wq
  store i64 %i.wn, ptr %i.wr, align 8
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %select.unfold
  %.0471.add = add nuw nsw i64 %.0471.idx1574, 12 ; 2 uses
  %.not475 = icmp eq i64 %.0471.add, 564
  br i1 %.not475, label %.critedge502, label %bb.er

.critedge502:                                     ; preds = %bb.et
  %i.ws = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.wt = tail call noundef zeroext i1 @_ZN2v88internal20PerThreadAssertScopeILb1EJLNS0_19PerThreadAssertTypeE2EEE9IsAllowedEv() #10
  br i1 %i.wt, label %bb.ev, label %bb.eu, !prof !7

bb.eu:                                            ; preds = %.critedge502
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #11
  unreachable

bb.ev:                                            ; preds = %.critedge502
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8 ; 2 uses
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 2784
  %i.wx = load i8, ptr %i.ww, align 8, !range !5, !noundef !6
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.wz = load ptr, ptr %i.ws, align 8            ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 9
  %i.xb = load atomic i8, ptr %i.xa monotonic, align 1 ; 2 uses
  %i.xc = trunc i8 %i.xb to i1
  %i.xd = and i8 %i.xb, 6
  %i.xe = icmp eq i8 %i.xd, 0
  %.not1.i718 = or i1 %i.xe, %i.xc
  br i1 %.not1.i718, label %bb.ey, label %bb.ex, !prof !7

bb.ex:                                            ; preds = %bb.ew
  tail call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.wz) #10
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ws, i64 120
  %i.xg = load ptr, ptr %i.xf, align 8
  %i.xh = tail call i64 @_ZN2v88internal13ReadOnlySpace11AllocateRawEiNS0_19AllocationAlignmentE(ptr noundef nonnull align 8 dereferenceable(120) %i.xg, i32 noundef 16, i8 noundef zeroext 0) #10 ; 4 uses
  %.not1497 = icmp eq i64 %i.xh, 0
  br i1 %.not1497, label %.critedge510, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xi = load ptr, ptr %i.ws, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load i8, ptr %i.xj, align 8, !range !5, !noundef !6
  %i.xl = trunc nuw i8 %i.xk to i1
  br i1 %i.xl, label %bb.fa, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit721

bb.fa:                                            ; preds = %bb.ez
  %i.xm = load ptr, ptr %i.wu, align 8            ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 2808
  %i.xo = load ptr, ptr %i.xn, align 8            ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 2816
  %i.xq = load ptr, ptr %i.xp, align 8            ; 2 uses
  %i.xr = icmp eq ptr %i.xo, %i.xq
  br i1 %i.xr, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit721, label %.lr.ph1577

.lr.ph1577:                                       ; preds = %bb.fa
  %i.xs = add i64 %i.xh, -1
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph1577, %bb.fb
  %.sroa.01096.01576 = phi ptr [ %i.xo, %.lr.ph1577 ], [ %i.xw, %bb.fb ] ; 2 uses
  %i.xt = load ptr, ptr %.sroa.01096.01576, align 8 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = load ptr, ptr %i.xu, align 8
  tail call void %i.xv(ptr noundef nonnull align 8 dereferenceable(8) %i.xt, i64 noundef %i.xs, i32 noundef 16) #10, !inline_history !9
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.01096.01576, i64 8 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, %i.xq
  br i1 %i.xx, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit721, label %bb.fb

_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit721: ; preds = %bb.fb, %bb.fa, %bb.ez
  %i.xy = load i64, ptr %i.vr, align 8
  %i.xz = add i64 %i.xh, -1
  %i.ya = inttoptr i64 %i.xz to ptr               ; 2 uses
  store atomic volatile i64 %i.xy, ptr %i.ya monotonic, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store atomic volatile i64 0, ptr %i.yb monotonic, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.c, i64 864 ; 3 uses
  store i64 %i.xh, ptr %i.yc, align 8
  %i.yd = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ye = tail call noundef zeroext i1 @_ZN2v88internal20PerThreadAssertScopeILb1EJLNS0_19PerThreadAssertTypeE2EEE9IsAllowedEv() #10
  br i1 %i.ye, label %bb.fd, label %bb.fc, !prof !7

bb.fc:                                            ; preds = %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit721
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #11
  unreachable

bb.fd:                                            ; preds = %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit721
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 8 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 2784
  %i.yi = load i8, ptr %i.yh, align 8, !range !5, !noundef !6
  %i.yj = trunc nuw i8 %i.yi to i1
  br i1 %i.yj, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %i.yk = load ptr, ptr %i.yd, align 8            ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 9
  %i.ym = load atomic i8, ptr %i.yl monotonic, align 1 ; 2 uses
  %i.yn = trunc i8 %i.ym to i1
  %i.yo = and i8 %i.ym, 6
end_hunk_0
