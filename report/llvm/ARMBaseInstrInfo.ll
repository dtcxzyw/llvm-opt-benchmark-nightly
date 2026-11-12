Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMBaseInstrInfo?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2511
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZNK4llvm16ARMBaseInstrInfo20optimizeCompareInstrERNS_12MachineInstrENS_8RegisterES3_llPKNS_19MachineRegisterInfoE:bb.a
bb.v:                                             ; preds = %bb.u
  %i.dp = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i214, i32 3, ptr noundef nonnull %i.da, i1 noundef zeroext false, i1 noundef zeroext true) #26
  %.not348 = icmp eq i32 %i.dp, -1
  br i1 %.not348, label %bb.w, label %.thread319

bb.w:                                             ; preds = %bb.v
  %i.dq = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i214, i32 3, ptr noundef nonnull %i.da, i1 noundef zeroext false) #26
  %i.dr = icmp ne i32 %i.dq, -1
  %i.ds = icmp eq ptr %.sroa.0.1.i.i.i214, %i.bj
  %or.cond342 = or i1 %i.ds, %i.dr
  br i1 %or.cond342, label %.thread319, label %bb.t

bb.x:                                             ; preds = %bb.u
  %.not349 = icmp eq ptr %.4, null
  br i1 %.not349, label %.thread319, label %bb.y

.thread327:                                       ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit221
  %i.dt = load i8, ptr %i.a, align 1, !tbaa !520, !range !214, !noundef !92
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread327
  %.1153.ph330331 = phi ptr [ %.sroa.0.1.i.i.i214, %.thread327 ], [ null, %bb.x ] ; 2 uses
  %.1298 = phi i8 [ %i.dt, %.thread327 ], [ %.0297314, %bb.x ]
  %.5 = phi ptr [ %.sroa.0.1.i.i.i214, %.thread327 ], [ %.4, %bb.x ] ; 4 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 888
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(80) %.5) #26
  br i1 %i.dx, label %.thread319, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.dy, ptr %7, align 8, !tbaa !55
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.dz, align 8, !tbaa !56
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 4, ptr %i.ea, align 4, !tbaa !57
  %i.eb = load ptr, ptr %i.bg, align 8, !tbaa !409
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %.1153.ph330331, i64 52
  %i.ee = getelementptr inbounds nuw i8, ptr %.1153.ph330331, i64 32
  br label %.critedge186.thread

.critedge186.thread:                              ; preds = %.critedge186.thread.backedge, %bb.z
  %.sroa.0254.3377 = phi ptr [ %1, %bb.z ], [ %i.ep, %.critedge186.thread.backedge ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0254.3377) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i223 = load i64, ptr %.sroa.0254.3377, align 8
  %i.ef = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i223, 4
  %.not.i.i.i224 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i224, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i226, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i226: ; preds = %.critedge186.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0254.3377, i64 44
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !233
  %i.ei = and i32 %i.eh, 8
  %.not34.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i227

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i227: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i226, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i227
  %.sroa.0.05.i.i.i = phi ptr [ %i.ek, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i227 ], [ %.sroa.0254.3377, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i226 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !222 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 44
  %i.em = load i32, ptr %i.el, align 4, !tbaa !233
  %i.en = and i32 %i.em, 8
  %.not3.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i227, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i227, %.critedge186.thread, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i226
  %.sroa.0.1.i.i.i225 = phi ptr [ %.sroa.0254.3377, %.critedge186.thread ], [ %.sroa.0254.3377, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i226 ], [ %i.ek, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i227 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i225, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !222 ; 5 uses
  %.not350 = icmp eq ptr %i.ep, %i.ec
  br i1 %.not350, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load i24, ptr %i.eq, align 8            ; 2 uses
  %.not384 = icmp eq i24 %i.er, 0
  br i1 %.not384, label %.critedge186.thread.backedge, label %.lr.ph372

.critedge186.thread.backedge:                     ; preds = %.critedge186, %bb.aa
  br label %.critedge186.thread

.lr.ph372:                                        ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 52
  %i.eu = zext i24 %i.er to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph372, %.critedge186
  %indvars.iv = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next, %.critedge186 ] ; 4 uses
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !238 ; 3 uses
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 8            ; 2 uses
  %trunc = trunc i32 %i.ex to i8
  switch i8 %trunc, label %.critedge186 [
    i8 12, label %bb.ac
    i8 0, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !239
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !52
  %i.fb = and i32 %i.fa, 8
  %.not.i.i228 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i228, label %.critedge187, label %.critedge186

bb.ad:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !239
  %.not351 = icmp eq i32 %i.fd, 3
  br i1 %.not351, label %bb.ae, label %.critedge186

bb.ae:                                            ; preds = %bb.ad
  %i.fe = and i32 %i.ex, 16777216
  %.not352 = icmp eq i32 %i.fe, 0
  br i1 %.not352, label %bb.af, label %.critedge187

bb.af:                                            ; preds = %bb.ae
  %i.ff = load i32, ptr %i.et, align 4, !tbaa !237
  switch i32 %i.ff, label %bb.ag [
    i32 3521, label %bb.ak
    i32 3523, label %bb.ak
    i32 3522, label %bb.ak
    i32 3527, label %bb.ah
    i32 3529, label %bb.ah
    i32 3528, label %bb.ah
    i32 3524, label %bb.ai
    i32 3526, label %bb.ai
    i32 3525, label %bb.ai
    i32 3530, label %bb.aj
    i32 3532, label %bb.aj
    i32 3531, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fg = add nuw i64 %indvars.iv, 4294967295
  %i.fh = and i64 %i.fg, 4294967295
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !239
  %i.fl = trunc i64 %i.fk to i32
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af, %bb.af, %bb.af
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af, %bb.af, %bb.af
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af, %bb.af, %bb.af
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0163 = phi i32 [ %i.fl, %bb.ag ], [ 6, %bb.aj ], [ 12, %bb.ah ], [ 10, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.af ], [ 0, %bb.af ] ; 5 uses
  %.0162 = phi i1 [ false, %bb.ag ], [ true, %bb.aj ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.af ], [ true, %bb.af ], [ true, %bb.af ] ; 2 uses
  br i1 %i.dn, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fm = load i32, ptr %i.ed, align 4, !tbaa !237 ; 2 uses
  switch i32 %i.fm, label %.thread335 [
    i32 4520, label %bb.am
    i32 4518, label %bb.am
    i32 4385, label %bb.am
    i32 4383, label %bb.am
    i32 2056, label %bb.am
    i32 2055, label %bb.am
    i32 4519, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  br i1 %.not344, label %.critedge186, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not174334 = icmp eq i32 %i.fm, 4520
  %i.fn = select i1 %.not174334, i64 2, i64 1
  %i.fo = load ptr, ptr %i.ee, align 8, !tbaa !238
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %i.fn ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !239
  %i.fs = icmp eq i32 %i.fr, %3
  br i1 %i.fs, label %bb.ao, label %.critedge186

bb.ao:                                            ; preds = %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !239
  %i.fv = icmp eq i32 %i.fu, %2
  br i1 %i.fv, label %bb.ap, label %.critedge186

bb.ap:                                            ; preds = %bb.ao
  %.0162.not = xor i1 %.0162, true
  %i.fw = icmp ult i32 %.0163, 14
  %or.cond447 = select i1 %.0162.not, i1 %i.fw, i1 false
  %switch.maskindex = trunc i32 %.0163 to i16
  %switch.shifted = lshr i16 16143, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond457 = select i1 %or.cond447, i1 %switch.lobit, i1 false
  br i1 %or.cond457, label %switch.lookup, label %.critedge186.thread.thread

.thread335:                                       ; preds = %bb.al
  br i1 %.0162, label %.critedge186.thread.thread, label %bb.aq

bb.aq:                                            ; preds = %.thread335
  %switch.tableidx = add i32 %.0163, -2           ; 3 uses
  %i.fx = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex451 = trunc i32 %switch.tableidx to i8
  %switch.shifted452 = lshr i8 51, %switch.maskindex451
  %switch.lobit453 = trunc i8 %switch.shifted452 to i1
  %or.cond458 = select i1 %i.fx, i1 %switch.lobit453, i1 false
  br i1 %or.cond458, label %switch.lookup450, label %.critedge186.thread.thread

switch.lookup:                                    ; preds = %bb.ap
  %8 = zext nneg i32 %.0163 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm16ARMBaseInstrInfo20optimizeCompareInstrERNS_12MachineInstrENS_8RegisterES3_llPKNS_19MachineRegisterInfoE, i64 %8
  br label %bb.ar

switch.lookup450:                                 ; preds = %bb.aq
  %9 = zext nneg i32 %switch.tableidx to i64
  %switch.gep454 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm16ARMBaseInstrInfo20optimizeCompareInstrERNS_12MachineInstrENS_8RegisterES3_llPKNS_19MachineRegisterInfoE.83, i64 %9
  br label %bb.ar

bb.ar:                                            ; preds = %switch.lookup450, %switch.lookup
  %switch.load455.sink.in = phi ptr [ %switch.gep454, %switch.lookup450 ], [ %switch.gep, %switch.lookup ]
  %switch.load455.sink = load i8, ptr %switch.load455.sink.in, align 1
  %switch.ext456 = zext i8 %switch.load455.sink to i32 ; 2 uses
  %i.fy = add nuw i64 %indvars.iv, 4294967295
  %i.fz = and i64 %i.fy, 4294967295
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.dz, align 8, !tbaa !56 ; 2 uses
  %i.gc = load i32, ptr %i.ea, align 4, !tbaa !57
  %.not.i231 = icmp ult i32 %i.gb, %i.gc
  br i1 %.not.i231, label %bb.at, label %bb.as, !prof !241

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14MachineOperandENS_5ARMCC9CondCodesEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.ga, i32 %switch.ext456)
  br label %.critedge186

bb.at:                                            ; preds = %bb.ar
  %i.gd = zext i32 %i.gb to i64
  %i.ge = load ptr, ptr %7, align 8, !tbaa !55
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gd ; 2 uses
  store ptr %i.ga, ptr %i.gf, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i32 %switch.ext456, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.gg = load i32, ptr %i.dz, align 8, !tbaa !56
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.dz, align 8, !tbaa !56
  br label %.critedge186

bb.au:                                            ; preds = %bb.ak
  %switch.tableidx459 = add i32 %.0163, -2        ; 2 uses
  %i.gi = icmp ult i32 %switch.tableidx459, 12
  %switch.maskindex462 = trunc i32 %switch.tableidx459 to i16
  %switch.shifted463 = lshr i16 4083, %switch.maskindex462
  %switch.lobit464 = trunc i16 %switch.shifted463 to i1
  %or.cond465 = select i1 %i.gi, i1 %switch.lobit464, i1 false
  br i1 %or.cond465, label %.critedge186.thread.thread, label %.critedge186

.critedge186:                                     ; preds = %bb.au, %bb.ab, %bb.ao, %bb.as, %bb.at, %bb.am, %bb.an, %bb.ac, %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not385 = icmp eq i64 %indvars.iv.next, %i.eu
  br i1 %.not385, label %.critedge186.thread.backedge, label %bb.ab, !llvm.loop !1670

.critedge:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %i.gj = load ptr, ptr %i.bg, align 8, !tbaa !409 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 112
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !55 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 120
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !56 ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %.idx = shl nuw nsw i64 %i.go, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx
  %.not177378 = icmp eq i32 %i.gn, 0
  br i1 %.not177378, label %.critedge187, label %.lr.ph380

bb.av:                                            ; preds = %.lr.ph380
  %i.gq = getelementptr inbounds nuw i8, ptr %.0156379, i64 8 ; 2 uses
  %.not177 = icmp eq ptr %i.gq, %i.gp
  br i1 %.not177, label %.critedge187, label %.lr.ph380

.lr.ph380:                                        ; preds = %.critedge, %bb.av
  %.0156379 = phi ptr [ %i.gq, %bb.av ], [ %i.gl, %.critedge ] ; 2 uses
  %i.gr = load ptr, ptr %.0156379, align 8, !tbaa !217
  %i.gs = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.gr, i32 3, i64 -1) #26
  br i1 %i.gs, label %.critedge186.thread.thread, label %bb.av

.critedge187:                                     ; preds = %bb.ac, %bb.ae, %bb.av, %.critedge
  %i.gt = trunc nuw i8 %.1298 to i1
  br i1 %i.gt, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge187
  %i.gu = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.5) #26
  %i.gv = add i32 %i.gu, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %.5, i64 32 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !238
  %i.gy = zext i32 %i.gv to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %i.gy
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, i32 3) #26
  %i.ha = load ptr, ptr %i.gw, align 8, !tbaa !238
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %i.gy
  call void @_ZN4llvm14MachineOperand8setIsDefEb(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, i1 noundef zeroext true) #26
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.critedge187
  %i.hc = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #26 ; 0 uses
  %i.hd = load ptr, ptr %7, align 8, !tbaa !55    ; 3 uses
  %i.he = load i32, ptr %i.dz, align 8, !tbaa !56 ; 2 uses
  %i.hf = zext i32 %i.he to i64
  %.idx386 = shl nuw nsw i64 %i.hf, 4             ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx386
  %.not178381 = icmp eq i32 %i.he, 0
  br i1 %.not178381, label %._crit_edge, label %.lr.ph383.preheader

.lr.ph383.preheader:                              ; preds = %bb.ax
  %i.hh = add nsw i64 %.idx386, -16               ; 2 uses
  %i.hi = lshr exact i64 %i.hh, 4
  %i.hj = add nuw nsw i64 %i.hi, 1
  %xtraiter = and i64 %i.hj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph383.prol.loopexit, label %.lr.ph383.prol

.lr.ph383.prol:                                   ; preds = %.lr.ph383.preheader, %.lr.ph383.prol
  %.0154382.prol = phi ptr [ %i.hp, %.lr.ph383.prol ], [ %i.hd, %.lr.ph383.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph383.prol ], [ 0, %.lr.ph383.preheader ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.0154382.prol, i64 8
  %i.hl = load ptr, ptr %.0154382.prol, align 8, !tbaa !434
  %i.hm = load i32, ptr %i.hk, align 8, !tbaa !1673
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !239
  %i.hp = getelementptr inbounds nuw i8, ptr %.0154382.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph383.prol.loopexit, label %.lr.ph383.prol, !llvm.loop !1671

.lr.ph383.prol.loopexit:                          ; preds = %.lr.ph383.prol, %.lr.ph383.preheader
  %.0154382.unr = phi ptr [ %i.hd, %.lr.ph383.preheader ], [ %i.hp, %.lr.ph383.prol ]
  %i.hq = icmp ult i64 %i.hh, 112
  br i1 %i.hq, label %._crit_edge, label %.lr.ph383

._crit_edge:                                      ; preds = %.lr.ph383.prol.loopexit, %.lr.ph383, %bb.ax
  call void @_ZN4llvm12MachineInstr18clearRegisterDeadsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80) %.5, i32 3) #26
  br label %.critedge186.thread.thread

.lr.ph383:                                        ; preds = %.lr.ph383.prol.loopexit, %.lr.ph383
  %.0154382 = phi ptr [ %i.jm, %.lr.ph383 ], [ %.0154382.unr, %.lr.ph383.prol.loopexit ] ; 17 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0154382, i64 8
  %i.hs = load ptr, ptr %.0154382, align 8, !tbaa !434
  %i.ht = load i32, ptr %i.hr, align 8, !tbaa !1673
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !239
  %i.hw = getelementptr inbounds nuw i8, ptr %.0154382, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %.0154382, i64 24
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !434
  %i.hz = load i32, ptr %i.hx, align 8, !tbaa !1673
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !239
  %i.ic = getelementptr inbounds nuw i8, ptr %.0154382, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %.0154382, i64 40
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !434
  %i.if = load i32, ptr %i.id, align 8, !tbaa !1673
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !239
  %i.ii = getelementptr inbounds nuw i8, ptr %.0154382, i64 48
  %i.ij = getelementptr inbounds nuw i8, ptr %.0154382, i64 56
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !434
  %i.il = load i32, ptr %i.ij, align 8, !tbaa !1673
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 %i.im, ptr %i.in, align 8, !tbaa !239
  %i.io = getelementptr inbounds nuw i8, ptr %.0154382, i64 64
  %i.ip = getelementptr inbounds nuw i8, ptr %.0154382, i64 72
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !434
  %i.ir = load i32, ptr %i.ip, align 8, !tbaa !1673
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 %i.is, ptr %i.it, align 8, !tbaa !239
  %i.iu = getelementptr inbounds nuw i8, ptr %.0154382, i64 80
  %i.iv = getelementptr inbounds nuw i8, ptr %.0154382, i64 88
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !434
  %i.ix = load i32, ptr %i.iv, align 8, !tbaa !1673
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !239
  %i.ja = getelementptr inbounds nuw i8, ptr %.0154382, i64 96
  %i.jb = getelementptr inbounds nuw i8, ptr %.0154382, i64 104
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !434
  %i.jd = load i32, ptr %i.jb, align 8, !tbaa !1673
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !239
  %i.jg = getelementptr inbounds nuw i8, ptr %.0154382, i64 112
  %i.jh = getelementptr inbounds nuw i8, ptr %.0154382, i64 120
  %i.ji = load ptr, ptr %i.jg, align 8, !tbaa !434
  %i.jj = load i32, ptr %i.jh, align 8, !tbaa !1673
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !239
  %i.jm = getelementptr inbounds nuw i8, ptr %.0154382, i64 128 ; 2 uses
  %.not178.7 = icmp eq ptr %i.jm, %i.hg
  br i1 %.not178.7, label %._crit_edge, label %.lr.ph383

.critedge186.thread.thread:                       ; preds = %bb.au, %bb.ap, %.thread335, %bb.aq, %.lr.ph380, %._crit_edge
  %.14 = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph380 ], [ false, %bb.aq ], [ false, %.thread335 ], [ false, %bb.ap ], [ false, %bb.au ]
  %i.jn = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.dy
  br i1 %i.jo, label %_ZN4llvm11SmallVectorISt4pairIPNS_14MachineOperandENS_5ARMCC9CondCodesEELj4EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %.critedge186.thread.thread
  call void @free(ptr noundef %i.jn) #26
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_14MachineOperandENS_5ARMCC9CondCodesEELj4EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPNS_14MachineOperandENS_5ARMCC9CondCodesEELj4EED2Ev.exit: ; preds = %.critedge186.thread.thread, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread319

.thread319:                                       ; preds = %bb.v, %bb.w, %bb.y, %bb.x, %_ZN4llvm11SmallVectorISt4pairIPNS_14MachineOperandENS_5ARMCC9CondCodesEELj4EED2Ev.exit
  %.15 = phi i1 [ false, %bb.y ], [ false, %bb.x ], [ %.14, %_ZN4llvm11SmallVectorISt4pairIPNS_14MachineOperandENS_5ARMCC9CondCodesEELj4EED2Ev.exit ], [ false, %bb.w ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZL26isOptimizeCompareCandidatePN4llvm12MachineInstrERb.exit

end_hunk_0
