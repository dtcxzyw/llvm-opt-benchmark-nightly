Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ExpandPseudo?download=true
inline.NumInlined: 1257
inline.NumDeleted: 602
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_119X86ExpandPseudoImpl9expandMBBERN4llvm17MachineBasicBlockE:bb.a
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit386.i

bb.aj:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit31
  %i.zc = and i64 %i.adb, -8
  %i.zd = inttoptr i64 %i.zc to ptr
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %.pre546.i = load ptr, ptr %i.ze, align 8, !tbaa !682
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit386.i

_ZNK4llvm12MachineInstr11memoperandsEv.exit386.i: ; preds = %bb.aj, %bb.ai
  %i.zf = phi ptr [ %i.zb, %bb.ai ], [ %.pre546.i, %bb.aj ] ; 2 uses
  %i.zg = load ptr, ptr %i.p, align 8, !tbaa !219 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.zh = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.zg, ptr noundef %i.zf, i64 noundef 0, i64 1152921508901814272) #16
  store ptr %i.zh, ptr %i.j, align 8, !tbaa !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.zi = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.zg, ptr noundef %i.zf, i64 noundef 2, i64 1152921508901814272) #16
  store ptr %i.zi, ptr %i.k, align 8, !tbaa !682
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.aay, ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr nonnull %i.j, i64 1) #16
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.abr, ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr nonnull %i.k, i64 1) #16
  %.sroa.072.0.copyload.i = load ptr, ptr %31, align 8 ; 7 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i42 = load i64, ptr %.sroa.072.0.copyload.i, align 8
  %i.zj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i42, 4
  %.not.i.i.i.i.i43 = icmp eq i64 %i.zj, 0
  br i1 %.not.i.i.i.i.i43, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i48, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i44

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i48: ; preds = %_ZNK4llvm12MachineInstr11memoperandsEv.exit386.i
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i, i64 44
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !243
  %i.zm = and i32 %i.zl, 8
  %.not34.i.i.i.i.i49 = icmp eq i32 %i.zm, 0
  br i1 %.not34.i.i.i.i.i49, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i44, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i50

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i50: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i48, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i50
  %.sroa.0.05.i.i.i.i.i51 = phi ptr [ %i.zo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i50 ], [ %.sroa.072.0.copyload.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i48 ]
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i51, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !162 ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 44
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !243
  %i.zr = and i32 %i.zq, 8
  %.not3.i.i.i.i.i52 = icmp eq i32 %i.zr, 0
  br i1 %.not3.i.i.i.i.i52, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i44, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i50, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i44: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i50, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i48, %_ZNK4llvm12MachineInstr11memoperandsEv.exit386.i
  %.sroa.0.1.i.i.i.i.i45 = phi ptr [ %.sroa.072.0.copyload.i, %_ZNK4llvm12MachineInstr11memoperandsEv.exit386.i ], [ %.sroa.072.0.copyload.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i48 ], [ %i.zo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i50 ]
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i45, i64 8
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !162 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.072.0.copyload.i, %i.zt
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i44, %.lr.ph.i.i.i
  %.sroa.03.05.i.i.i = phi ptr [ %i.zv, %.lr.ph.i.i.i ], [ %.sroa.072.0.copyload.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i44 ] ; 6 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !162 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull %.sroa.03.05.i.i.i) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i46 = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.zw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i46, -8 ; 2 uses
  %i.zx = inttoptr i64 %i.zw to ptr
  %i.zy = load ptr, ptr %i.zu, align 8, !tbaa !162 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.zy, align 8
  %i.zz = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.aaa = or disjoint i64 %i.zz, %i.zw
  store i64 %i.aaa, ptr %i.zy, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  store ptr %i.zy, ptr %i.aab, align 8, !tbaa !162
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i47 = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.aac = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i47, 7
  store i64 %i.aac, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.zu, align 8, !tbaa !162
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull %.sroa.03.05.i.i.i) #16
  %.not.i.i.i = icmp eq ptr %i.zv, %i.zt
  br i1 %.not.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !494

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %_ZN12_GLOBAL__N_119X86ExpandPseudoImpl8expandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit31: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0206.0284, i64 32
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !220 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 112
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !221
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 160
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 164
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !221 ; 2 uses
  %i.aak = load i32, ptr %i.aah, align 8          ; 2 uses
  %i.aal = load ptr, ptr %i.r, align 8, !tbaa !154
  %i.aam = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.aal, i32 %i.aaj, i32 noundef 7) #16
  %i.aan = load ptr, ptr %i.r, align 8, !tbaa !154
  %i.aao = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.aan, i32 %i.aaj, i32 noundef 8) #16
  %.sroa.086.0.copyload.i = load ptr, ptr %i.dp, align 8, !tbaa !367
  %i.aap = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %0, align 8, !tbaa !152
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 412
  %i.aat = load i8, ptr %i.aas, align 4, !tbaa !534, !range !28, !noundef !29
  %i.aau = trunc nuw i8 %i.aat to i1
  %i.aav = load ptr, ptr %i.aaq, align 8, !tbaa !368
  %.neg497.i = select i1 %i.aau, i64 -2075, i64 -2074
  %i.aaw = getelementptr inbounds [32 x i8], ptr %i.aav, i64 %.neg497.i
  %i.aax = load ptr, ptr %i.p, align 8, !tbaa !219 ; 8 uses
  %i.aay = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.aaw, ptr %.sroa.086.0.copyload.i, i1 noundef zeroext false) #16 ; 13 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.aay) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i33 = load i64, ptr %.sroa.0206.0284, align 8
  %i.aaz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i33, -8 ; 2 uses
  %i.aba = inttoptr i64 %i.aaz to ptr
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store ptr %.sroa.0206.0284, ptr %i.abb, align 8, !tbaa !162
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i34 = load i64, ptr %i.aay, align 8
  %i.abc = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i34, 7
  %i.abd = or disjoint i64 %i.abc, %i.aaz
  store i64 %i.abd, ptr %i.aay, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  store ptr %i.aay, ptr %i.abe, align 8, !tbaa !162
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i35 = load i64, ptr %.sroa.0206.0284, align 8
  %i.abf = ptrtoint ptr %i.aay to i64
  %i.abg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i35, 7
  %i.abh = or disjoint i64 %i.abg, %i.abf
  store i64 %i.abh, ptr %.sroa.0206.0284, align 8
  %.sroa.085.0.copyload.i = load ptr, ptr %31, align 8 ; 4 uses
  %.sroa.084.0.copyload.i = load ptr, ptr %i.dp, align 8, !tbaa !367
  %i.abi = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abk = load ptr, ptr %0, align 8, !tbaa !152
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 412
  %i.abm = load i8, ptr %i.abl, align 4, !tbaa !534, !range !28, !noundef !29
  %i.abn = trunc nuw i8 %i.abm to i1
  %i.abo = load ptr, ptr %i.abj, align 8, !tbaa !368
  %.neg498.i = select i1 %i.abn, i64 -2075, i64 -2074
  %i.abp = getelementptr inbounds [32 x i8], ptr %i.abo, i64 %.neg498.i
  %i.abq = load ptr, ptr %i.p, align 8, !tbaa !219 ; 8 uses
  %i.abr = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %i.abp, ptr %.sroa.084.0.copyload.i, i1 noundef zeroext false) #16 ; 13 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.abr) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i23 = load i64, ptr %.sroa.085.0.copyload.i, align 8
  %i.abs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i23, -8 ; 2 uses
  %i.abt = inttoptr i64 %i.abs to ptr
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  store ptr %.sroa.085.0.copyload.i, ptr %i.abu, align 8, !tbaa !162
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i24 = load i64, ptr %i.abr, align 8
  %i.abv = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i24, 7
  %i.abw = or disjoint i64 %i.abv, %i.abs
  store i64 %i.abw, ptr %i.abr, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  store ptr %i.abr, ptr %i.abx, align 8, !tbaa !162
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i25 = load i64, ptr %.sroa.085.0.copyload.i, align 8
  %i.aby = ptrtoint ptr %i.abr to i64
  %i.abz = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i25, 7
  %i.aca = or disjoint i64 %i.abz, %i.aby
  store i64 %i.aca, ptr %.sroa.085.0.copyload.i, align 8
  %i.acb = add nsw i64 %i.aag, 2
  %i.acc = load ptr, ptr %31, align 8, !tbaa !569
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !220
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aay, ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.ace) #16
  %i.acf = load ptr, ptr %31, align 8, !tbaa !569
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !220
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abr, ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %i.ach) #16
  %.pre.i = load ptr, ptr %31, align 8, !tbaa !569
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre536.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !220
  %i.aci = getelementptr inbounds nuw i8, ptr %.pre536.i, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aay, ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.aci) #16
  %i.acj = load ptr, ptr %31, align 8, !tbaa !569
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 32
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !220
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abr, ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %i.acm) #16
  %.pre537.i = load ptr, ptr %31, align 8, !tbaa !569
  %.phi.trans.insert538.i = getelementptr inbounds nuw i8, ptr %.pre537.i, i64 32
  %.pre539.i = load ptr, ptr %.phi.trans.insert538.i, align 8, !tbaa !220
  %i.acn = getelementptr inbounds nuw i8, ptr %.pre539.i, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aay, ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.acn) #16
  %i.aco = load ptr, ptr %31, align 8, !tbaa !569
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !220
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abr, ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %i.acr) #16
  %.pre540.i = load ptr, ptr %31, align 8, !tbaa !569
  %.phi.trans.insert541.i = getelementptr inbounds nuw i8, ptr %.pre540.i, i64 32
  %.pre542.i = load ptr, ptr %.phi.trans.insert541.i, align 8, !tbaa !220
  %i.acs = getelementptr inbounds nuw i8, ptr %.pre542.i, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aay, ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.acs) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  store i32 1, ptr %22, align 8, !alias.scope !686
  store ptr null, ptr %i.bl, align 8, !tbaa !371, !alias.scope !686
  store i64 %i.acb, ptr %i.bm, align 8, !tbaa !221, !alias.scope !686
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abr, ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  %.pre543.i = load ptr, ptr %31, align 8, !tbaa !569
  %.phi.trans.insert544.i = getelementptr inbounds nuw i8, ptr %.pre543.i, i64 32
  %.pre545.i = load ptr, ptr %.phi.trans.insert544.i, align 8, !tbaa !220
  %i.act = getelementptr inbounds nuw i8, ptr %.pre545.i, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aay, ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %i.act) #16
  %i.acu = load ptr, ptr %31, align 8, !tbaa !569
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !220
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abr, ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %i.acx) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %i.bn, align 8, !tbaa !371, !alias.scope !687
  %35 = shl i32 %i.aak, 2
  %i.acy = and i32 %35, 67108864
  %36 = xor i32 %i.acy, 67108864
  %37 = and i32 %36, %i.aak                       ; 2 uses
  store i32 %i.aam, ptr %i.bo, align 4, !tbaa !221, !alias.scope !687
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !687
  store i32 %37, ptr %4, align 8, !alias.scope !687
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aay, ptr noundef nonnull align 8 dereferenceable(1065) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr null, ptr %i.bq, align 8, !tbaa !371, !alias.scope !688
  store i32 %i.aao, ptr %i.br, align 4, !tbaa !221, !alias.scope !688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false), !alias.scope !688
  store i32 %37, ptr %5, align 8, !alias.scope !688
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.abr, ptr noundef nonnull align 8 dereferenceable(1065) %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.acz = load ptr, ptr %31, align 8, !tbaa !569
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 64 ; 2 uses
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !221 ; 4 uses
  %i.adc = icmp ugt i64 %i.adb, 7
  call void @llvm.assume(i1 %i.adc)
  %i.add = and i64 %i.adb, 7
  %i.ade = icmp eq i64 %i.add, 0
  br i1 %i.ade, label %bb.ai, label %bb.aj

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.0206.0284, i64 32
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !220 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 36
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !221
  %i.adl = load i32, ptr %i.adh, align 8          ; 2 uses
  %i.adm = lshr i32 %i.adl, 26
  %i.adn = lshr i32 %i.adl, 24
  %.lobit.i387.i = and i32 %i.adn, 1
  %i.ado = xor i32 %.lobit.i387.i, 1
  %i.adp = and i32 %i.ado, %i.adm
  %i.adq = icmp ne i32 %i.adp, 0
  call void @_ZNK4llvm12X86InstrInfo11copyPhysRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_bbb(ptr noundef nonnull align 8 dereferenceable(456) %i.adi, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nonnull %.sroa.0206.0284, ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 24, i32 %i.adk, i1 noundef zeroext %i.adq, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %.sroa.065.0.copyload.i = load ptr, ptr %i.dp, align 8, !tbaa !367
  %i.adr = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !368
  %i.adu = getelementptr inbounds i8, ptr %i.adt, i64 -91072
  %i.adv = load ptr, ptr %i.p, align 8, !tbaa !219
  %i.adw = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.adv, ptr noundef nonnull align 8 dereferenceable(32) %i.adu, ptr %.sroa.065.0.copyload.i, i1 noundef zeroext false) #16 ; 6 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.adw) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i18 = load i64, ptr %.sroa.0206.0284, align 8
  %i.adx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i18, -8 ; 2 uses
  %i.ady = inttoptr i64 %i.adx to ptr
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  store ptr %.sroa.0206.0284, ptr %i.adz, align 8, !tbaa !162
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.adw, align 8
  %i.aea = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.aeb = or disjoint i64 %i.aea, %i.adx
  store i64 %i.aeb, ptr %i.adw, align 8
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  store ptr %i.adw, ptr %i.aec, align 8, !tbaa !162
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.0206.0284, align 8
  %i.aed = ptrtoint ptr %i.adw to i64
  %i.aee = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.aef = or disjoint i64 %i.aee, %i.aed
  store i64 %i.aef, ptr %.sroa.0206.0284, align 8
  %i.aeg = load ptr, ptr %31, align 8, !tbaa !569 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 32
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !220
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 68
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !221
  %i.ael = load ptr, ptr %i.o, align 8, !tbaa !153
  call void @_ZNK4llvm12X86InstrInfo11copyPhysRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_bbb(ptr noundef nonnull align 8 dereferenceable(456) %i.ael, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %i.aeg, ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 53, i32 %i.aek, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %i.aem = load ptr, ptr %31, align 8, !tbaa !569
  %i.aen = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aem) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_119X86ExpandPseudoImpl8expandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit

bb.ak:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0206.0284, ptr %6, align 8
  store ptr %1, ptr %i.c, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr %.sroa.0206.0284, ptr %i.d, align 8, !tbaa !375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.aeo = load ptr, ptr %i.p, align 8, !tbaa !219
  store ptr %i.aeo, ptr %i.e, align 8, !tbaa !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.aep = load ptr, ptr %i.al, align 8, !tbaa !241
  store ptr %i.aep, ptr %i.f, align 8, !tbaa !377
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.aeq = load ptr, ptr %i.am, align 8, !tbaa !157
  store ptr %i.aeq, ptr %7, align 8, !tbaa !691
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.0206.0284, i64 32
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !220 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.aes, i64 32, i1 false), !tbaa.struct !692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 48
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !221
  store ptr %i.aeu, ptr %i.g, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %9, ptr %10, align 8, !tbaa !693
  store ptr %i.c, ptr %i.an, align 8, !tbaa !380
  store ptr %6, ptr %i.ao, align 8, !tbaa !382
  store ptr %i.dp, ptr %i.ap, align 8, !tbaa !694
  store ptr %0, ptr %i.aq, align 8, !tbaa !387
  store ptr %i.g, ptr %i.ar, align 8, !tbaa !695
  store ptr %i.d, ptr %i.as, align 8, !tbaa !696
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %i.e, ptr %11, align 8, !tbaa !389
  store ptr %i.f, ptr %i.at, align 8, !tbaa !697
  store ptr %i.c, ptr %i.au, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store ptr %i.c, ptr %12, align 8, !tbaa !380
  store ptr %6, ptr %i.av, align 8, !tbaa !382
  store ptr %i.dp, ptr %i.aw, align 8, !tbaa !694
  store ptr %0, ptr %i.ax, align 8, !tbaa !393
  store ptr %11, ptr %i.ay, align 8, !tbaa !11
  store ptr %i.e, ptr %i.az, align 8, !tbaa !389
  store ptr %7, ptr %i.ba, align 8, !tbaa !394
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store ptr %11, ptr %13, align 8, !tbaa !11
  store ptr %8, ptr %i.bb, align 8, !tbaa !698
  store ptr %12, ptr %i.bc, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store ptr %i.c, ptr %14, align 8, !tbaa !380
  store ptr %6, ptr %i.bd, align 8, !tbaa !382
  store ptr %i.dp, ptr %i.be, align 8, !tbaa !694
  store ptr %0, ptr %i.bf, align 8, !tbaa !397
  store ptr %i.d, ptr %i.bg, align 8, !tbaa !696
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store i64 0, ptr %i.bi, align 8
  %i.aev = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #18 ; 11 uses
  store ptr %14, ptr %i.aev, align 16, !tbaa !11
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  store ptr %10, ptr %.sroa.420.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  store ptr %13, ptr %.sroa.5.0..sroa_idx21.i, align 16, !tbaa !11
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 24
  store ptr %15, ptr %.sroa.623.0..sroa_idx.i, align 8, !tbaa !399
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 32
  store ptr %11, ptr %.sroa.7.0..sroa_idx.i, align 16, !tbaa !11
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 40
  store ptr %12, ptr %.sroa.824.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 48
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx.i, align 16, !tbaa !389
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 56
  store ptr %7, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !394
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 64
  store ptr %i.c, ptr %.sroa.11.0..sroa_idx.i, align 16, !tbaa !380
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 72
  store ptr %6, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !382
  store ptr %i.aev, ptr %15, align 8, !tbaa !11
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvjjEZN12_GLOBAL__N_119X86ExpandPseudoImpl23expandICallBranchFunnelEPN4llvm17MachineBasicBlockENS3_26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvjjEZN12_GLOBAL__N_119X86ExpandPseudoImpl23expandICallBranchFunnelEPN4llvm17MachineBasicBlockENS3_26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEEE3$_0E9_M_invokeERKSt9_Any_dataOjSE_">, ptr %i.bh, align 8, !tbaa !11
  %i.aew = load ptr, ptr %i.d, align 8, !tbaa !375
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 40
  %i.aey = load i24, ptr %i.aex, align 8
  %i.aez = zext i24 %i.aey to i32
  %i.afa = add nsw i32 %i.aez, -2
  %i.afb = lshr i32 %i.afa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.a, align 4, !tbaa !373
  store i32 %i.afb, ptr %i.b, align 4, !tbaa !373
  call void @"_ZNSt17_Function_handlerIFvjjEZN12_GLOBAL__N_119X86ExpandPseudoImpl23expandICallBranchFunnelEPN4llvm17MachineBasicBlockENS3_26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEEE3$_0E9_M_invokeERKSt9_Any_dataOjSE_"(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #16, !inline_history !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.afc = load ptr, ptr %8, align 8, !tbaa !699  ; 2 uses
  %i.afd = load ptr, ptr %i.bj, align 8, !tbaa !699 ; 2 uses
  %.not25.i = icmp eq ptr %i.afc, %i.afd
  br i1 %.not25.i, label %._crit_edge.i12, label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i

._crit_edge.i12:                                  ; preds = %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i, %bb.ak
  %i.afe = load ptr, ptr %i.d, align 8, !tbaa !375 ; 7 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i13 = load i64, ptr %i.afe, align 8
  %i.aff = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i13, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aff, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i: ; preds = %._crit_edge.i12
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afe, i64 44
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !243
  %i.afi = and i32 %i.afh, 8
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.afi, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i.i = phi ptr [ %i.afk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ], [ %i.afe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ]
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !162 ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 44
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !243
  %i.afn = and i32 %i.afm, 8
  %.not3.i.i.i.i.i.i.i = icmp eq i32 %i.afn, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %._crit_edge.i12
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %i.afe, %._crit_edge.i12 ], [ %i.afe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ], [ %i.afk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ]
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !162 ; 2 uses
  %.not4.i.i.i.i.i14 = icmp eq ptr %i.afe, %i.afp
  br i1 %.not4.i.i.i.i.i14, label %_ZN4llvm17MachineBasicBlock5eraseEPNS_12MachineInstrE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.03.05.i.i.i.i.i = phi ptr [ %i.afr, %.lr.ph.i.i.i.i.i ], [ %i.afe, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i ] ; 6 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 8 ; 3 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !162 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull %.sroa.03.05.i.i.i.i.i) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i.i, align 8
  %i.afs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.aft = inttoptr i64 %i.afs to ptr
  %i.afu = load ptr, ptr %i.afq, align 8, !tbaa !162 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afu, align 8
end_hunk_0
