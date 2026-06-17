inline.NumInlined: 6065
inline.NumDeleted: 2754
begin_hunk_0_@_ZN2v88internal4wasm15InstanceBuilder12Build_Phase1ERKNS0_27DisallowJavascriptExecutionE:bb.a
  %i.sk = and i32 %.sroa.063.0.copyload, 268435427
  switch i32 %i.sk, label %bb.du [
    i32 3841, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
    i32 769, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
    i32 1537, label %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
  ]

_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit: ; preds = %bb.dt, %bb.dt, %bb.dt
  br label %bb.du

bb.du:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit, %bb.dt, %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit
  %.sink = phi i64 [ 664, %_ZNK2v88internal4wasm13ValueTypeBase13use_wasm_nullEv.exit ], [ 2104, %bb.dt ], [ 2104, %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit ]
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rw, i64 %.sink
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rd, i64 17
  %i.sn = load i8, ptr %i.sm, align 1
  %i.so = ptrtoint ptr %i.sl to i64
  %i.sp = call ptr @_ZN2v88internal15WasmTableObject3NewEPNS0_7IsolateENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEENS0_4wasm9ValueTypeENS7_18CanonicalValueTypeEjbmNS4_INS0_6ObjectEEENS7_11AddressTypeEPNS4_INS0_17WasmDispatchTableEEE(ptr noundef %i.rw, ptr %.sroa.0.0.copyload.i319, i32 %.sroa.063.0.copyload, i32 %.sroa.02.0.i, i32 noundef %i.sc, i1 noundef zeroext %i.sf, i64 noundef %i.sh, i64 %i.so, i8 noundef zeroext %i.sn, ptr noundef nonnull %4) #22
  %i.sq = load i8, ptr %i.rx, align 2, !range !7, !noundef !8
  %i.sr = trunc nuw i8 %i.sq to i1
  %.sroa.0.0.copyload.i188.sroa.speculated = select i1 %i.sr, ptr %.sroa.0453.0, ptr %i.op
  %i.ss = load i64, ptr %.sroa.0.0.copyload.i188.sroa.speculated, align 8
  %i.st = add i64 %i.ss, -1                       ; 3 uses
  %i.su = inttoptr i64 %i.st to ptr
  %i.sv = load i64, ptr %i.sp, align 8            ; 5 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.sw, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.sv, ptr %i.sx monotonic, align 8
  %i.sy = trunc i64 %i.sv to i1
  br i1 %i.sy, label %bb.dv, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit324

bb.dv:                                            ; preds = %bb.du
  %i.sz = or disjoint i64 %i.st, 1                ; 2 uses
  %i.ta = ptrtoint ptr %i.sx to i64               ; 2 uses
  %i.tb = and i64 %i.st, -262144
  %i.tc = inttoptr i64 %i.tb to ptr
  %i.td = load i64, ptr %i.tc, align 262144       ; 2 uses
  %i.te = and i64 %i.td, 32
  %.not.i.i.i.i.i320 = icmp eq i64 %i.te, 0
  %i.tf = and i64 %i.td, 25
  %.not38.i.i.i.i.i321 = icmp eq i64 %i.tf, 0
  br i1 %.not38.i.i.i.i.i321, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.tg = and i64 %i.sv, -262144
  %i.th = inttoptr i64 %i.tg to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i322 = load i64, ptr %i.th, align 262144
  %i.ti = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i322, 25
  %.not39.i.i.i.i.i323 = icmp eq i64 %i.ti, 0
  br i1 %.not39.i.i.i.i.i323, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.sz, i64 noundef %i.ta, i64 %i.sv) #22
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv
  br i1 %.not.i.i.i.i.i320, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit324, label %bb.dz, !prof !6

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.sz, i64 %i.ta, i64 %i.sv) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit324

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit324: ; preds = %bb.du, %bb.dy, %bb.dz
  %i.tj = load ptr, ptr %4, align 8               ; 2 uses
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit324
  %i.tl = load i8, ptr %i.rx, align 2, !range !7, !noundef !8
  %i.tm = trunc nuw i8 %i.tl to i1
  %.sroa.0.0.copyload.i219.sroa.speculated = select i1 %i.tm, ptr %.sroa.0452.0, ptr %i.or
  %i.tn = load i64, ptr %.sroa.0.0.copyload.i219.sroa.speculated, align 8
  %i.to = add i64 %i.tn, -1                       ; 3 uses
  %i.tp = inttoptr i64 %i.to to ptr
  %i.tq = load i64, ptr %i.tj, align 8            ; 5 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.tr, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.tq, ptr %i.ts monotonic, align 8
  %i.tt = trunc i64 %i.tq to i1
  br i1 %i.tt, label %bb.eb, label %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit

bb.eb:                                            ; preds = %bb.ea
  %i.tu = or disjoint i64 %i.to, 1                ; 2 uses
  %i.tv = ptrtoint ptr %i.ts to i64               ; 2 uses
  %i.tw = and i64 %i.to, -262144
  %i.tx = inttoptr i64 %i.tw to ptr
  %i.ty = load i64, ptr %i.tx, align 262144       ; 2 uses
  %i.tz = and i64 %i.ty, 32
  %.not.i.i.i.i.i325 = icmp eq i64 %i.tz, 0
  %i.ua = and i64 %i.ty, 25
  %.not38.i.i.i.i.i326 = icmp eq i64 %i.ua, 0
  br i1 %.not38.i.i.i.i.i326, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.ub = and i64 %i.tq, -262144
  %i.uc = inttoptr i64 %i.ub to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i327 = load i64, ptr %i.uc, align 262144
  %i.ud = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i327, 25
  %.not39.i.i.i.i.i328 = icmp eq i64 %i.ud, 0
  br i1 %.not39.i.i.i.i.i328, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.tu, i64 noundef %i.tv, i64 %i.tq) #22
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  br i1 %.not.i.i.i.i.i325, label %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit, label %bb.ef, !prof !6

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.tu, i64 %i.tv, i64 %i.tq) #22
  br label %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.ea, %bb.ee, %bb.ef
  %i.ue = icmp eq i64 %indvars.iv, 0
  br i1 %i.ue, label %bb.eg, label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit

bb.eg:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit
  %i.uf = load i8, ptr %i.rx, align 2, !range !7, !noundef !8
  %i.ug = trunc nuw i8 %i.uf to i1
  %.v.i329 = select i1 %i.ug, i64 88, i64 80
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i329
  %.sroa.0.0.copyload.i330 = load ptr, ptr %i.uh, align 8
  %i.ui = load i64, ptr %.sroa.0.0.copyload.i330, align 8 ; 4 uses
  %i.uj = load ptr, ptr %4, align 8
  %i.uk = load i64, ptr %i.uj, align 8            ; 4 uses
  %i.ul = add i64 %i.ui, 7                        ; 3 uses
  %i.um = inttoptr i64 %i.ul to ptr
  store atomic volatile i64 %i.uk, ptr %i.um monotonic, align 8
  %i.un = and i64 %i.uk, -262144
  %i.uo = inttoptr i64 %i.un to ptr
  %i.up = load i64, ptr %i.uo, align 262144
  %i.uq = and i64 %i.up, 1
  %.not.i.i333 = icmp eq i64 %i.uq, 0
  br i1 %.not.i.i333, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.ui, i64 %i.ul, i64 %i.uk) #22
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.ur = and i64 %i.ui, -262144
  %i.us = inttoptr i64 %i.ur to ptr
  %i.ut = load i64, ptr %i.us, align 262144
  %i.uu = and i64 %i.ut, 32
  %.not.i.i.i334 = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i334, label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, label %bb.ej, !prof !6

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %i.ui, i64 %i.ul, i64 %i.uk) #22
  br label %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.ej, %bb.ei, %_ZN2v88internal15TaggedArrayBaseINS0_19ProtectedFixedArrayENS0_19ProtectedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_5UnionIJNS0_13TrustedObjectENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit324
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond742.not = icmp eq i32 %lftr.wideiv, %i.nh
  br i1 %exitcond742.not, label %_ZN2v88internal23WasmTrustedInstanceData10set_tablesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit295, label %.lr.ph732, !llvm.loop !44

_ZN2v88internal23WasmTrustedInstanceData10set_tablesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit295: ; preds = %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_table0ENS0_6TaggedINS0_17WasmDispatchTableEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal23WasmTrustedInstanceData19set_dispatch_tablesENS0_6TaggedINS0_19ProtectedFixedArrayEEENS0_16WriteBarrierModeE.exit318, %bb.cz, %bb.cy, %bb.cu, %_ZN2v88internal23WasmTrustedInstanceData10set_tablesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.uv = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 320
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 328
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = icmp eq ptr %i.ux, %i.uz
  br i1 %i.va, label %.critedge187, label %bb.ek

bb.ek:                                            ; preds = %_ZN2v88internal23WasmTrustedInstanceData10set_tablesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit295
  %i.vb = call noundef i32 @_ZN2v88internal4wasm15InstanceBuilder14ProcessImportsEv(ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.vc = icmp sgt i32 %i.vb, -1
  br i1 %i.vc, label %..critedge187_crit_edge, label %.critedge183

..critedge187_crit_edge:                          ; preds = %bb.ek
  %.pre743 = load ptr, ptr %i.ae, align 8
  br label %.critedge187

.critedge187:                                     ; preds = %..critedge187_crit_edge, %_ZN2v88internal23WasmTrustedInstanceData10set_tablesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit295
  %i.vd = phi ptr [ %.pre743, %..critedge187_crit_edge ], [ %i.uv, %_ZN2v88internal23WasmTrustedInstanceData10set_tablesENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit295 ] ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 176
  %i.vf = load ptr, ptr %i.ve, align 8            ; 5 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 184
  %i.vh = load ptr, ptr %i.vg, align 8            ; 3 uses
  %i.vi = icmp eq ptr %i.vf, %i.vh
  br i1 %i.vi, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.critedge187
  %i.vj = load ptr, ptr %0, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 4 ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.vh
  br i1 %i.vl, label %_ZNK2v88internal4wasm10WasmModule21MaxCanonicalTypeIndexEv.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.el
  %.pre.i.i.i = load i32, ptr %i.vf, align 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.vm = phi i32 [ %6, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.vn = phi ptr [ %i.vp, %.lr.ph.i.i.i ], [ %i.vk, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.02.09.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.vf, %.lr.ph.preheader.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.vn, align 4 ; 2 uses
  %i.vo = icmp ult i32 %i.vm, %.sroa.01.0.copyload.i.i.i.i
  %6 = call i32 @llvm.umax.i32(i32 %i.vm, i32 %.sroa.01.0.copyload.i.i.i.i)
  %spec.select.i.i.i = select i1 %i.vo, ptr %i.vn, ptr %.sroa.02.09.i.i.i ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4 ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.vh
  br i1 %i.vq, label %_ZNK2v88internal4wasm10WasmModule21MaxCanonicalTypeIndexEv.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZNK2v88internal4wasm10WasmModule21MaxCanonicalTypeIndexEv.exit: ; preds = %.lr.ph.i.i.i, %bb.el
  %.sroa.02.2.i.i.i = phi ptr [ %i.vf, %bb.el ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.02.0.copyload.i335 = load i32, ptr %.sroa.02.2.i.i.i, align 4
  call void @_ZN2v88internal4wasm17TypeCanonicalizer25PrepareForCanonicalTypeIdEPNS0_7IsolateENS1_18CanonicalTypeIndexE(ptr noundef %i.vj, i32 %.sroa.02.0.copyload.i335) #22
  %.pre744 = load ptr, ptr %i.ae, align 8
  br label %bb.em

bb.em:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule21MaxCanonicalTypeIndexEv.exit, %.critedge187
  %i.vr = phi ptr [ %.pre744, %_ZNK2v88internal4wasm10WasmModule21MaxCanonicalTypeIndexEv.exit ], [ %i.vd, %.critedge187 ] ; 2 uses
  %i.vs = load ptr, ptr %0, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 152
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 160
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = load ptr, ptr %i.vt, align 8
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = sub i64 %i.vx, %i.vy
  %i.wa = sdiv exact i64 %i.vz, 24
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.vs, i32 noundef %i.wb, i8 noundef zeroext 0, i8 0) #22 ; 2 uses
  br i1 %i.ai, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.wd = load ptr, ptr %0, align 8
  %i.we = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 152
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 160
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = load ptr, ptr %i.wf, align 8
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = sub i64 %i.wj, %i.wk
  %i.wm = sdiv exact i64 %i.wl, 24
  %i.wn = trunc i64 %i.wm to i32
  %i.wo = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.wd, i32 noundef %i.wn, i8 noundef zeroext 5, i8 0) #22
  br label %bb.eo

bb.eo:                                            ; preds = %bb.em, %bb.en
  %.sroa.0424.0 = phi ptr [ %i.wo, %bb.en ], [ null, %bb.em ] ; 2 uses
  %i.wp = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 152
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 160
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = load ptr, ptr %i.wq, align 8            ; 2 uses
  %.not739 = icmp eq ptr %i.ws, %i.wt
  br i1 %.not739, label %._crit_edge, label %.lr.ph734

._crit_edge:                                      ; preds = %.lr.ph734, %bb.eo
  %.sroa.0.0.copyload.i196 = load ptr, ptr %i.n, align 8
  %i.wu = load i64, ptr %.sroa.0.0.copyload.i196, align 8 ; 4 uses
  %i.wv = load i64, ptr %i.wc, align 8            ; 5 uses
  %i.ww = add i64 %i.wu, 239                      ; 3 uses
  %i.wx = inttoptr i64 %i.ww to ptr
  store atomic volatile i64 %i.wv, ptr %i.wx monotonic, align 8
  %i.wy = trunc i64 %i.wv to i1
  br i1 %i.wy, label %bb.ep, label %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.ep:                                            ; preds = %._crit_edge
  %i.wz = and i64 %i.wu, -262144
  %i.xa = inttoptr i64 %i.wz to ptr
  %i.xb = load i64, ptr %i.xa, align 262144       ; 2 uses
  %i.xc = and i64 %i.xb, 32
  %.not.i.i.i339 = icmp eq i64 %i.xc, 0
  %i.xd = and i64 %i.xb, 25
  %.not38.i.i.i340 = icmp eq i64 %i.xd, 0
  br i1 %.not38.i.i.i340, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.xe = and i64 %i.wv, -262144
  %i.xf = inttoptr i64 %i.xe to ptr
  %.sroa.0.0.copyload.i28.i.i.i341 = load i64, ptr %i.xf, align 262144
  %i.xg = and i64 %.sroa.0.0.copyload.i28.i.i.i341, 25
  %.not39.i.i.i342 = icmp eq i64 %i.xg, 0
  br i1 %.not39.i.i.i342, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.wu, i64 noundef %i.ww, i64 %i.wv) #22
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep
  br i1 %.not.i.i.i339, label %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.et, !prof !6

bb.et:                                            ; preds = %bb.es
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.wu, i64 %i.ww, i64 %i.wv) #22
  br label %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %._crit_edge, %bb.es, %bb.et
  br i1 %i.ai, label %bb.eu, label %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit349

.lr.ph734:                                        ; preds = %bb.eo, %.lr.ph734
  %i.xh = phi ptr [ %i.xv, %.lr.ph734 ], [ %i.wt, %bb.eo ]
  %i.xi = phi ptr [ %i.xr, %.lr.ph734 ], [ %i.wp, %bb.eo ]
  %i.xj = phi i64 [ %i.xq, %.lr.ph734 ], [ 0, %bb.eo ]
  %.0169733 = phi i32 [ %i.xp, %.lr.ph734 ], [ 0, %bb.eo ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %i.xh, i64 %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 22
  %i.xm = load i8, ptr %i.xl, align 2, !range !7, !noundef !8
  %i.xn = trunc nuw i8 %i.xm to i1
  %i.xo = load ptr, ptr %0, align 8
  %.sroa.045.0.copyload = select i1 %i.xn, ptr %.sroa.0424.0, ptr %i.wc
  call void @_ZN2v88internal4wasm16CreateMapForTypeEPNS0_7IsolateEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS0_12DirectHandleINS0_10FixedArrayEEE(ptr noundef %i.xo, ptr noundef nonnull %i.xi, i32 %.0169733, ptr %.sroa.045.0.copyload)
  %i.xp = add i32 %.0169733, 1                    ; 2 uses
  %i.xq = zext i32 %i.xp to i64                   ; 2 uses
  %i.xr = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 152
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 160
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = load ptr, ptr %i.xs, align 8            ; 2 uses
  %i.xw = ptrtoint ptr %i.xu to i64
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = sub i64 %i.xw, %i.xx
  %i.xz = sdiv exact i64 %i.xy, 24
  %i.ya = icmp ugt i64 %i.xz, %i.xq
  br i1 %i.ya, label %.lr.ph734, label %._crit_edge, !llvm.loop !46

bb.eu:                                            ; preds = %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i195 = load ptr, ptr %i.yb, align 8
  %i.yc = load i64, ptr %.sroa.0.0.copyload.i195, align 8 ; 4 uses
  %i.yd = load i64, ptr %.sroa.0424.0, align 8    ; 5 uses
  %i.ye = add i64 %i.yc, 239                      ; 3 uses
  %i.yf = inttoptr i64 %i.ye to ptr
  store atomic volatile i64 %i.yd, ptr %i.yf monotonic, align 8
  %i.yg = trunc i64 %i.yd to i1
  br i1 %i.yg, label %bb.ev, label %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit349

bb.ev:                                            ; preds = %bb.eu
  %i.yh = and i64 %i.yc, -262144
  %i.yi = inttoptr i64 %i.yh to ptr
  %i.yj = load i64, ptr %i.yi, align 262144       ; 2 uses
  %i.yk = and i64 %i.yj, 32
  %.not.i.i.i345 = icmp eq i64 %i.yk, 0
  %i.yl = and i64 %i.yj, 25
  %.not38.i.i.i346 = icmp eq i64 %i.yl, 0
  br i1 %.not38.i.i.i346, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.ym = and i64 %i.yd, -262144
  %i.yn = inttoptr i64 %i.ym to ptr
  %.sroa.0.0.copyload.i28.i.i.i347 = load i64, ptr %i.yn, align 262144
  %i.yo = and i64 %.sroa.0.0.copyload.i28.i.i.i347, 25
  %.not39.i.i.i348 = icmp eq i64 %i.yo, 0
  br i1 %.not39.i.i.i348, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.yc, i64 noundef %i.ye, i64 %i.yd) #22
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev
  br i1 %.not.i.i.i345, label %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit349, label %bb.ez, !prof !6

bb.ez:                                            ; preds = %bb.ey
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.yc, i64 %i.ye, i64 %i.yd) #22
  br label %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit349

_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit349: ; preds = %bb.ez, %bb.ey, %bb.eu, %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.yp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 862), align 2, !range !7, !noundef !8
  %i.yq = trunc nuw i8 %i.yp to i1
  br i1 %i.yq, label %bb.fa, label %_ZN2v88internal23WasmTrustedInstanceData20set_feedback_vectorsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit362

bb.fa:                                            ; preds = %_ZN2v88internal23WasmTrustedInstanceData23set_managed_object_mapsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit349
  %i.yr = load ptr, ptr %i.ae, align 8
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 96
  %i.yt = load i32, ptr %i.ys, align 8            ; 2 uses
  %i.yu = load ptr, ptr %0, align 8
  %i.yv = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE23NewFixedArrayWithZeroesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.yu, i32 noundef %i.yt, i8 noundef zeroext 1) #22
  %.sroa.0.0.copyload.i194 = load ptr, ptr %i.n, align 8
  %i.yw = load i64, ptr %.sroa.0.0.copyload.i194, align 8 ; 4 uses
  %i.yx = load i64, ptr %i.yv, align 8            ; 5 uses
  %i.yy = add i64 %i.yw, 247                      ; 3 uses
  %i.yz = inttoptr i64 %i.yy to ptr
  store atomic volatile i64 %i.yx, ptr %i.yz monotonic, align 8
  %i.za = trunc i64 %i.yx to i1
  br i1 %i.za, label %bb.fb, label %_ZN2v88internal23WasmTrustedInstanceData20set_feedback_vectorsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.fb:                                            ; preds = %bb.fa
  %i.zb = and i64 %i.yw, -262144
  %i.zc = inttoptr i64 %i.zb to ptr
  %i.zd = load i64, ptr %i.zc, align 262144       ; 2 uses
  %i.ze = and i64 %i.zd, 32
  %.not.i.i.i352 = icmp eq i64 %i.ze, 0
  %i.zf = and i64 %i.zd, 25
  %.not38.i.i.i353 = icmp eq i64 %i.zf, 0
  br i1 %.not38.i.i.i353, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.zg = and i64 %i.yx, -262144
  %i.zh = inttoptr i64 %i.zg to ptr
  %.sroa.0.0.copyload.i28.i.i.i354 = load i64, ptr %i.zh, align 262144
  %i.zi = and i64 %.sroa.0.0.copyload.i28.i.i.i354, 25
  %.not39.i.i.i355 = icmp eq i64 %i.zi, 0
  br i1 %.not39.i.i.i355, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.yw, i64 noundef %i.yy, i64 %i.yx) #22
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb
end_hunk_0
