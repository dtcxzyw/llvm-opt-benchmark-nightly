Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCFrameLowering?download=true
inline.NumInlined: 2456
inline.NumDeleted: 913
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  br i1 %i.ac, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.mh = load ptr, ptr %i.c, align 8, !tbaa !629 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = call noundef i64 %i.mk(ptr noundef nonnull align 8 dereferenceable(240) %i.mh, i32 %i.bn, i1 noundef zeroext true) #19, !inline_history !1128
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !604, !alias.scope !1179
  %i.mp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.mm, ptr %i.mp, align 8, !tbaa !186, !alias.scope !1179
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !427, !alias.scope !1179
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !186, !alias.scope !1179
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !186, !alias.scope !1179
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i8 0, ptr %i.mq, align 8, !tbaa !605, !alias.scope !1179
  %i.mr = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i8 7, ptr %i.mr, align 8, !tbaa !606, !alias.scope !1179
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr null, ptr %i.ms, align 8, !tbaa !607, !alias.scope !1179
  %i.mt = call noundef i32 @_ZN4llvm15MachineFunction12addFrameInstERKNS_16MCCFIInstructionE(ptr noundef nonnull align 8 dereferenceable(1065) %i.mo, ptr noundef nonnull align 8 dereferenceable(88) %6) #19
  %i.mu = load i8, ptr %i.mq, align 8, !tbaa !605
  switch i8 %i.mu, label %bb.u [
    i8 -1, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit"
    i8 0, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit"
    i8 1, label %bb.s
    i8 2, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit"
    i8 3, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit"
    i8 4, label %bb.t
    i8 5, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit"
    i8 6, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit"
  ], !prof !608

bb.s:                                             ; preds = %bb.r
  %i.mv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !609 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !28
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.na) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nb = load ptr, ptr %i.mp, align 8, !tbaa !611 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit", label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.nc = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !614 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i, label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit", label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sink26.i.i.i.i.i = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 24, %bb.t ]
  %.sink23.i.i.i.i.i = phi ptr [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nc, %bb.t ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.sink26.i.i.i.i.i
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !615
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = ptrtoint ptr %.sink23.i.i.i.i.i to i64
  %i.nh = sub i64 %i.nf, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i.i, i64 noundef %i.nh) #20
  br label %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit"

"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit": ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.sroa.0.0.copyload.i197 = load ptr, ptr %52, align 8, !tbaa !589
  %i.ni = load ptr, ptr %i.cd, align 8, !tbaa !568
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -96
  %i.nk = load ptr, ptr %i.mn, align 8, !tbaa !425 ; 2 uses
  %i.nl = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %i.nj, ptr %.sroa.0.0.copyload.i197, i1 noundef zeroext false) #19 ; 7 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.nm, ptr noundef %i.nl) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i198 = load i64, ptr %.sroa.02.0.lcssa.i.i.i.i, align 8
  %i.nn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i198, -8 ; 2 uses
  %i.no = inttoptr i64 %i.nn to ptr
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store ptr %.sroa.02.0.lcssa.i.i.i.i, ptr %i.np, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.nl, align 8
  %i.nq = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.nr = or disjoint i64 %i.nq, %i.nn
  store i64 %i.nr, ptr %i.nl, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.nl, ptr %i.ns, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.0.lcssa.i.i.i.i, align 8
  %i.nt = ptrtoint ptr %i.nl to i64
  %i.nu = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.nv = or disjoint i64 %i.nu, %i.nt
  store i64 %i.nv, ptr %.sroa.02.0.lcssa.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 16, ptr %5, align 8, !alias.scope !1180
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.nw, align 8, !tbaa !592, !alias.scope !1180
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.mt, ptr %i.nx, align 8, !tbaa !28, !alias.scope !1180
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.nl, ptr noundef nonnull align 8 dereferenceable(1065) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.v

bb.v:                                             ; preds = %"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_2clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEi.exit", %bb.q
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ny = add nsw i64 %i.bg, 32768
  %i.nz = icmp ult i64 %i.ny, 65536
  %i.oa = and i64 %i.bg, 3
  %i.ob = icmp eq i64 %i.oa, 0
  %i.oc = and i1 %i.nz, %i.ob                     ; 2 uses
  br i1 %i.oc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_4clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElRNS_8RegisterE"(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %.sroa.02.0.lcssa.i.i.i.i, i64 noundef %i.bg, i32 %i.bl)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_5clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElNS_8RegisterEbS9_"(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %.sroa.02.0.lcssa.i.i.i.i, i64 noundef %i.bg, i32 %i.bl, i1 noundef zeroext %i.oc, i32 %i.bn)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.od = icmp ult i32 %i.bc, 32769
  %i.oe = and i64 %i.be, 3
  %i.of = icmp eq i64 %i.oe, 0
  %i.og = and i1 %i.od, %i.of                     ; 4 uses
  %i.oh = icmp slt i64 %i.bf, 3
  br i1 %i.oh, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  br i1 %i.og, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_4clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElRNS_8RegisterE"(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %.sroa.02.0.lcssa.i.i.i.i, i64 noundef %i.be, i32 %i.bl)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.oi = icmp sgt i64 %i.bf, 0
  br i1 %i.oi, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.ac
  br i1 %i.ac, label %bb.ad, label %bb.aj

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.ac ]
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_5clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElNS_8RegisterEbS9_"(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %.sroa.02.0.lcssa.i.i.i.i, i64 noundef %i.be, i32 %i.bl, i1 noundef zeroext %i.og, i32 %i.bn)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bf
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1133

bb.ad:                                            ; preds = %._crit_edge
  %.sroa.042.0.copyload = load i32, ptr %53, align 4, !tbaa !186
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_1clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterE"(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %.sroa.02.0.lcssa.i.i.i.i, i32 %.sroa.042.0.copyload)
  br label %bb.aj

bb.ae:                                            ; preds = %bb.z
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_4clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElRNS_8RegisterE"(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %.sroa.02.0.lcssa.i.i.i.i, i64 noundef %i.bf, i32 %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  %.sroa.041.0.copyload = load ptr, ptr %52, align 8, !tbaa !589
  store ptr %.sroa.041.0.copyload, ptr %62, align 8, !tbaa !589
  %i.oj = getelementptr inbounds nuw i8, ptr %62, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oj, i8 0, i64 24, i1 false)
  %i.ok = load i8, ptr %i.b, align 1, !tbaa !562, !range !21, !noundef !22
  %i.ol = trunc nuw i8 %i.ok to i1
  %i.om = load ptr, ptr %i.cd, align 8, !tbaa !568
  %.neg330 = select i1 %i.ol, i64 -1548, i64 -1547
  %i.on = getelementptr inbounds [32 x i8], ptr %i.om, i64 %.neg330
  %i.oo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.0.lcssa.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %i.on) ; 2 uses
  %i.op = extractvalue { ptr, ptr } %i.oo, 0
  %i.oq = extractvalue { ptr, ptr } %i.oo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.or, align 8, !tbaa !592, !alias.scope !1181
  %i.os = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bl, ptr %i.os, align 4, !tbaa !28, !alias.scope !1181
  %i.ot = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ot, i8 0, i64 16, i1 false), !alias.scope !1181
  store i32 67108864, ptr %4, align 8, !alias.scope !1181
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.oq, ptr noundef nonnull align 8 dereferenceable(1065) %i.op, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  br i1 %i.og, label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_4clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElRNS_8RegisterE"(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %.sroa.02.0.lcssa.i.i.i.i, i64 noundef %i.be, i32 %i.bl)
  br label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.af, %bb.ae
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !351 ; 6 uses
  %i.ow = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %i.aw, i64 undef, i8 0) #19 ; 15 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef %i.ow) #19
  %i.oy = load ptr, ptr %i.ov, align 8, !tbaa !1152 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store ptr %i.ov, ptr %i.oz, align 8, !tbaa !351
  store ptr %i.oy, ptr %i.ow, align 8, !tbaa !1152
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store ptr %i.ow, ptr %i.pa, align 8, !tbaa !351
  store ptr %i.ow, ptr %i.ov, align 8, !tbaa !1152
  %i.pb = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %i.aw, i64 undef, i8 0) #19 ; 13 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef %i.pb) #19
  %i.pc = load ptr, ptr %i.ov, align 8, !tbaa !1152 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store ptr %i.ov, ptr %i.pd, align 8, !tbaa !351
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !1152
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store ptr %i.pb, ptr %i.pe, align 8, !tbaa !351
  store ptr %i.pb, ptr %i.ov, align 8, !tbaa !1152
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ow, i64 48 ; 5 uses
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_5clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElNS_8RegisterEbS9_"(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(360) %i.ow, ptr nonnull %i.pf, i64 noundef %i.be, i32 %i.bl, i1 noundef zeroext %i.og, i32 %i.bn)
  %.sroa.010.0.copyload = load ptr, ptr %52, align 8, !tbaa !589
  %i.pg = load i8, ptr %i.b, align 1, !tbaa !562, !range !21, !noundef !22
  %i.ph = trunc nuw i8 %i.pg to i1
  %i.pi = load ptr, ptr %i.cd, align 8, !tbaa !568
  %.neg331 = select i1 %i.ph, i64 -609, i64 -608
  %i.pj = getelementptr inbounds [32 x i8], ptr %i.pi, i64 %.neg331
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !425 ; 2 uses
  %i.pm = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %i.pj, ptr %.sroa.010.0.copyload, i1 noundef zeroext false) #19 ; 7 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.pn, ptr noundef %i.pm) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i199 = load i64, ptr %i.pf, align 8
  %i.po = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i199, -8 ; 2 uses
  %i.pp = inttoptr i64 %i.po to ptr
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store ptr %i.pf, ptr %i.pq, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i200 = load i64, ptr %i.pm, align 8
  %i.pr = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i200, 7
  %i.ps = or disjoint i64 %i.pr, %i.po
  store i64 %i.ps, ptr %i.pm, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store ptr %i.pm, ptr %i.pt, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i201 = load i64, ptr %i.pf, align 8
  %i.pu = ptrtoint ptr %i.pm to i64
  %i.pv = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i201, 7
  %i.pw = or disjoint i64 %i.pv, %i.pu
  store i64 %i.pw, ptr %i.pf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.px, align 8, !tbaa !592, !alias.scope !1182
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ow, ptr %i.py, align 8, !tbaa !28, !alias.scope !1182
  store i32 4, ptr %3, align 8, !alias.scope !1182
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.pm, ptr noundef nonnull align 8 dereferenceable(1065) %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.ow, ptr noundef nonnull %i.pb, i32 -1) #19
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.ow, ptr noundef nonnull %i.ow, i32 -1) #19
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pb, i64 48 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.0.lcssa.i.i.i.i, align 8
  %i.qa = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i202 = icmp eq i64 %i.qa, 0
  br i1 %.not.i.i.i.i202, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i.i, i64 44
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !368
  %i.qd = and i32 %i.qc, 8
  %.not34.i.i.i.i = icmp eq i32 %i.qd, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.qf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.02.0.lcssa.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !356 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 44
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !368
  %i.qi = and i32 %i.qh, 8
  %.not3.i.i.i.i204 = icmp eq i32 %i.qi, 0
  br i1 %.not3.i.i.i.i204, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.02.0.lcssa.i.i.i.i, %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ %.sroa.02.0.lcssa.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.qf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !356 ; 7 uses
  %i.ql = icmp eq ptr %i.qk, %i.af
  %i.qm = icmp eq ptr %i.pb, %2
  %or.cond.i.i = or i1 %i.qm, %i.ql
  br i1 %or.cond.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %i.qn, ptr %i.qk, ptr nonnull %i.af) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i205 = load i64, ptr %i.af, align 8
  %i.qp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i205, -8 ; 2 uses
  %i.qq = inttoptr i64 %i.qp to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i = load i64, ptr %i.qk, align 8
  %i.qr = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i, -8
  %i.qs = inttoptr i64 %i.qr to ptr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store ptr %i.af, ptr %i.qt, align 8, !tbaa !356
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i = load i64, ptr %i.qk, align 8
  %i.qu = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %i.af, align 8
  %i.qv = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i, 7
  %i.qw = or disjoint i64 %i.qv, %i.qu
  store i64 %i.qw, ptr %i.af, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i = load i64, ptr %i.pz, align 8
  %i.qx = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %i.qy = inttoptr i64 %i.qx to ptr
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store ptr %i.pz, ptr %i.qz, align 8, !tbaa !356
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i = load i64, ptr %i.qk, align 8
  %i.ra = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i, 7
  %i.rb = or disjoint i64 %i.ra, %i.qx
  store i64 %i.rb, ptr %i.qk, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store ptr %i.qk, ptr %i.rc, align 8, !tbaa !356
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i = load i64, ptr %i.pz, align 8
  %i.rd = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i, 7
  %i.re = or disjoint i64 %i.rd, %i.qp
  store i64 %i.re, ptr %i.pz, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.ag
  call void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.pb, ptr noundef nonnull %2) #19
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull %i.ow, i32 -1) #19
  br i1 %i.ac, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !356
  %.sroa.02.0.copyload = load i32, ptr %53, align 4, !tbaa !186
  call fastcc void @"_ZZNK4llvm16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockEENK3$_1clES4_NS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterE"(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(360) %i.pb, ptr %i.rg, i32 %.sroa.02.0.copyload)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store ptr %i.pb, ptr %i.d, align 8, !tbaa !581
  %i.rh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ow, ptr %i.rh, align 8, !tbaa !581
  call void @_ZN4llvm21fullyRecomputeLiveInsENS_8ArrayRefIPNS_17MachineBasicBlockEEE(ptr nonnull %i.d, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad, %._crit_edge, %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i, %bb.p
  %i.ri = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.0.lcssa.i.i.i.i) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZN4llvm7find_ifIRNS_17MachineBasicBlockEZNKS_16PPCFrameLowering16inlineStackProbeERNS_15MachineFunctionES2_E3$_0EEDaOT_T0_.exit", %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !368
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425  ; 6 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !589
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload.i, i1 noundef zeroext false) #19 ; 6 uses
  %i.g = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef %i.f) #19 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !625  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.i) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !626  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.k) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
