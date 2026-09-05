Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonVExtract?download=true
inline.NumInlined: 601
inline.NumDeleted: 377
begin_hunk_0_@_ZN12_GLOBAL__N_115HexagonVExtract20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %.sroa.05.0.i20.i = phi ptr [ %i.ej, %bb.n ], [ %.02024.i13.i, %._crit_edge.i18.i ]
  %i.el = icmp ult i32 %i.ek, %i.cr
  br i1 %i.el, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

bb.p:                                             ; preds = %bb.i
  %i.em = icmp ult i32 %i.du, %i.cr
  br i1 %i.em, label %bb.q, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.en = load ptr, ptr %i.x, align 8, !tbaa !309 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %.08.lcssa.i.i.i11.i
  br i1 %i.eo, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i11.i) #22 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !292
  %i.es = icmp ult i32 %i.cr, %i.er
  br i1 %i.es, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i11.i, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !52
  %i.ev = icmp eq ptr %i.eu, null                 ; 2 uses
  %spec.select72.i = select i1 %i.ev, ptr null, ptr %i.ep
  %spec.select73.i = select i1 %i.ev, ptr %.08.lcssa.i.i.i11.i, ptr %i.ep
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread

bb.t:                                             ; preds = %bb.r
  %.02022.i30.i = load ptr, ptr %i.v, align 8, !tbaa !309 ; 2 uses
  %.not23.i31.i = icmp eq ptr %.02022.i30.i, null
  br i1 %.not23.i31.i, label %._crit_edge.thread.i47.i, label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %bb.t, %.lr.ph.i32.i
  %.02024.i33.i = phi ptr [ %.020.i36.i, %.lr.ph.i32.i ], [ %.02022.i30.i, %bb.t ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02024.i33.i, i64 32
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !292 ; 2 uses
  %i.ey = icmp ult i32 %i.cr, %i.ex               ; 2 uses
  %.in.v.i34.i = select i1 %i.ey, i64 16, i64 24
  %.in.i35.i = getelementptr inbounds nuw i8, ptr %.02024.i33.i, i64 %.in.v.i34.i
  %.020.i36.i = load ptr, ptr %.in.i35.i, align 8, !tbaa !309 ; 2 uses
  %.not.i37.i = icmp eq ptr %.020.i36.i, null
  br i1 %.not.i37.i, label %._crit_edge.i38.i, label %.lr.ph.i32.i, !llvm.loop !127

._crit_edge.i38.i:                                ; preds = %.lr.ph.i32.i
  br i1 %i.ey, label %._crit_edge.thread.i47.i, label %bb.v

._crit_edge.thread.i47.i:                         ; preds = %._crit_edge.i38.i, %bb.t
  %.019.lcssa29.i48.i = phi ptr [ %.02024.i33.i, %._crit_edge.i38.i ], [ %i.u, %bb.t ] ; 4 uses
  %i.ez = load ptr, ptr %i.w, align 8, !tbaa !296
  %i.fa = icmp eq ptr %.019.lcssa29.i48.i, %i.ez
  br i1 %i.fa, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread.i47.i
  %i.fb = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48.i) #22 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !292
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i38.i
  %i.fc = phi i32 [ %.pre.i, %bb.u ], [ %i.ex, %._crit_edge.i38.i ]
  %.019.lcssa28.i39.i = phi ptr [ %.019.lcssa29.i48.i, %bb.u ], [ %.02024.i33.i, %._crit_edge.i38.i ]
  %.sroa.05.0.i40.i = phi ptr [ %i.fb, %bb.u ], [ %.02024.i33.i, %._crit_edge.i38.i ]
  %i.fd = icmp ult i32 %i.fc, %i.cr
  br i1 %i.fd, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit: ; preds = %bb.j, %bb.q
  %.sroa.070.2.i = phi ptr [ null, %bb.q ], [ %i.dw, %bb.j ] ; 2 uses
  %.sroa.12.2.i = phi ptr [ %i.en, %bb.q ], [ %i.dw, %bb.j ] ; 2 uses
  %.not.i103 = icmp eq ptr %.sroa.12.2.i, null
  br i1 %.not.i103, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread: ; preds = %bb.v, %bb.o, %bb.h, %._crit_edge.thread.i47.i, %._crit_edge.thread.i27.i, %._crit_edge.thread.i.i, %bb.s, %bb.e, %bb.l, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit
  %.sroa.12.2.i239 = phi ptr [ %.sroa.12.2.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit ], [ %.019.lcssa28.i19.i, %bb.o ], [ %.019.lcssa28.i.i, %bb.h ], [ %spec.select71.i, %bb.l ], [ %.019.lcssa29.i48.i, %._crit_edge.thread.i47.i ], [ %.019.lcssa29.i28.i, %._crit_edge.thread.i27.i ], [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %spec.select73.i, %bb.s ], [ %i.dh, %bb.e ], [ %.019.lcssa28.i39.i, %bb.v ] ; 3 uses
  %.sroa.070.2.i238 = phi ptr [ %.sroa.070.2.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit ], [ null, %bb.o ], [ null, %bb.h ], [ %spec.select.i, %bb.l ], [ null, %._crit_edge.thread.i47.i ], [ null, %._crit_edge.thread.i27.i ], [ null, %._crit_edge.thread.i.i ], [ %spec.select72.i, %bb.s ], [ null, %bb.e ], [ null, %bb.v ]
  %.not.i.i.i104 = icmp ne ptr %.sroa.070.2.i238, null
  %i.fe = icmp eq ptr %.sroa.12.2.i239, %i.u
  %or.cond.i.i.i = select i1 %.not.i.i.i104, i1 true, i1 %i.fe
  br i1 %or.cond.i.i.i, label %.thread.i105, label %bb.w

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i239, i64 32
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !292
  %i.fh = icmp ult i32 %i.cr, %i.fg
  br label %.thread.i105

.thread.i105:                                     ; preds = %bb.w, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread
  %i.fi = phi i1 [ %i.fh, %bb.w ], [ true, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit.thread ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fi, ptr noundef nonnull %i.cz, ptr noundef nonnull %.sroa.12.2.i239, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #18
  %i.fj = load i64, ptr %i.y, align 8, !tbaa !298
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.y, align 8, !tbaa !298
  br label %_ZNSt3mapIjN4llvm11SmallVectorIPNS0_12MachineInstrELj4EEESt4lessIjESaISt4pairIKjS4_EEEixEOj.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.o, %bb.h, %bb.v, %bb.p, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit
  %.sroa.070.2.i248 = phi ptr [ %.sroa.070.2.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_.exit ], [ %.sroa.05.0.i20.i, %bb.o ], [ %.sroa.05.0.i.i, %bb.h ], [ %.sroa.05.0.i40.i, %bb.v ], [ %.08.lcssa.i.i.i11.i, %bb.p ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 88) #21
  br label %_ZNSt3mapIjN4llvm11SmallVectorIPNS0_12MachineInstrELj4EEESt4lessIjESaISt4pairIKjS4_EEEixEOj.exit

_ZNSt3mapIjN4llvm11SmallVectorIPNS0_12MachineInstrELj4EEESt4lessIjESaISt4pairIKjS4_EEEixEOj.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, %.thread.i105, %bb.c
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %i.cz, %.thread.i105 ], [ %.sroa.070.2.i248, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIPNS2_12MachineInstrELj4EEEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !51 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 52
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !317
  %.not.i = icmp ult i32 %i.fn, %i.fp
  br i1 %.not.i, label %bb.y, label %bb.x, !prof !318

bb.x:                                             ; preds = %_ZNSt3mapIjN4llvm11SmallVectorIPNS0_12MachineInstrELj4EEESt4lessIjESaISt4pairIKjS4_EEEixEOj.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull %.sroa.0200.0269)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.y:                                             ; preds = %_ZNSt3mapIjN4llvm11SmallVectorIPNS0_12MachineInstrELj4EEESt4lessIjESaISt4pairIKjS4_EEEixEOj.exit
  %i.fq = zext i32 %i.fn to i64
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !16
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  store ptr %.sroa.0200.0269, ptr %i.fs, align 1
  %i.ft = load i32, ptr %i.fm, align 8, !tbaa !51
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fm, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.y, %bb.x, %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0200.0269) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0200.0269, align 8
  %i.fv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0200.0269, i64 44
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !319
  %i.fy = and i32 %i.fx, 8
  %.not34.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.ga, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.0200.0269, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !43 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 44
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !319
  %i.gd = and i32 %i.gc, 8
  %.not3.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !128

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0200.0269, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ], [ %.sroa.0200.0269, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.ga, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.0200.0 = load ptr, ptr %i.ge, align 8, !tbaa !43 ; 2 uses
  %.not256 = icmp eq ptr %.sroa.0200.0, %i.ck
  br i1 %.not256, label %._crit_edge, label %.lr.ph

._crit_edge285:                                   ; preds = %.loopexit
  %i.gf = trunc nuw i8 %.sroa.6190.1 to i1
  %i.gg = zext nneg i8 %.sroa.0189.1 to i64       ; 2 uses
  %.not = icmp ne i32 %.sroa.0.0.copyload.i93, 0
  %or.cond = select i1 %.not, i1 %i.gf, i1 false
  br i1 %or.cond, label %bb.al, label %._crit_edge285.thread

bb.z:                                             ; preds = %.lr.ph284, %.loopexit
  %.0282 = phi i1 [ false, %.lr.ph284 ], [ %.2, %.loopexit ] ; 2 uses
  %.sroa.0186.0281 = phi ptr [ %.pre, %.lr.ph284 ], [ %i.ow, %.loopexit ] ; 4 uses
  %.sroa.0189.0280 = phi i8 [ undef, %.lr.ph284 ], [ %.sroa.0189.1, %.loopexit ] ; 2 uses
  %.sroa.6190.0279 = phi i8 [ 0, %.lr.ph284 ], [ %.sroa.6190.1, %.loopexit ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0186.0281, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !316 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0186.0281, i64 40
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0186.0281, i64 48 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !51
  %i.gm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL17VExtractThreshold, i64 120), align 8, !tbaa !58
  %.not90 = icmp ugt i32 %i.gl, %i.gm
  br i1 %.not90, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.loopexit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.z
  %i.gn = and i32 %i.gi, 2147483647
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.go
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.gq, align 8
  %i.gr = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = load ptr, ptr %i.ac, align 8, !tbaa !340
  %i.gu = load i32, ptr %i.ad, align 8, !tbaa !341
  %i.gv = load i32, ptr %i.ae, align 8, !tbaa !342
  %i.gw = mul i32 %i.gv, %i.gu
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 20 ; 3 uses
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !345
  %i.gz = zext i16 %i.gy to i32
  %i.ha = add i32 %i.gw, %i.gz
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !347
  %i.hf = lshr i32 %i.he, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hg, i1 false)
  %i.hi = trunc nuw nsw i64 %i.hh to i8
  %i.hj = sub nsw i8 63, %i.hi                    ; 3 uses
  %26 = trunc nuw i8 %.sroa.6190.0279 to i1
  %27 = call i8 @llvm.umax.i8(i8 %.sroa.0189.0280, i8 %i.hj)
  %.sroa.046.0.copyload.sroa.speculated = select i1 %26, i8 %27, i8 %i.hj ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !348
  %i.hm = lshr i32 %i.hl, 3
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.q, i64 noundef %i.hn, i8 %i.hj, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #18 ; 2 uses
  %i.hp = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.o, i32 %i.gi) #18 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !43 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !349 ; 3 uses
  %i.hu = load i16, ptr %i.gx, align 4, !tbaa !345
  %i.hv = icmp eq i16 %i.hu, 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 72 ; 2 uses
  %.sroa.031.0.copyload = load ptr, ptr %i.hw, align 8, !tbaa !59
  %i.hx = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr nonnull @.str.4, i64 0) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  store ptr %.sroa.031.0.copyload, ptr %24, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.hy = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !351
  %i.ib = getelementptr inbounds [32 x i8], ptr %i.ia, i64 %.neg.i
  %i.ic = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ht, ptr %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.ib, i32 %i.hx) ; 2 uses
  %i.id = extractvalue { ptr, ptr } %i.ic, 0      ; 3 uses
  %i.ie = extractvalue { ptr, ptr } %i.ic, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br i1 %.not16.i, label %_ZNK4llvm8TypeSizecvmEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  store ptr null, ptr %i.ag, align 8, !tbaa !62, !alias.scope !352
  store i32 %.sroa.0.0.copyload.i93, ptr %i.ah, align 4, !tbaa !49, !alias.scope !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !alias.scope !352
  store i32 0, ptr %23, align 8, !alias.scope !352
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ie, ptr noundef nonnull align 8 dereferenceable(1065) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i32 5, ptr %22, align 8, !alias.scope !353
  store ptr null, ptr %i.aj, align 8, !tbaa !62, !alias.scope !353
  store i32 %i.ho, ptr %i.ak, align 8, !tbaa !49, !alias.scope !353
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ie, ptr noundef nonnull align 8 dereferenceable(1065) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  store i32 1, ptr %21, align 8, !alias.scope !354
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ie, ptr noundef nonnull align 8 dereferenceable(1065) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %.sroa.029.0.copyload = load ptr, ptr %i.hw, align 8, !tbaa !59
  %i.if = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !351
  %.neg = select i1 %i.hv, i64 -2744, i64 -503
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.ih, i64 %.neg
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !106 ; 4 uses
  %i.il = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %i.ii, ptr %.sroa.029.0.copyload, i1 noundef zeroext false) #18 ; 9 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef %i.il) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hr, align 8
  %i.in = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.hr, ptr %i.ip, align 8, !tbaa !43
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.il, align 8
  %i.iq = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.ir = or disjoint i64 %i.iq, %i.in
  store i64 %i.ir, ptr %i.il, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr %i.il, ptr %i.is, align 8, !tbaa !43
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.hr, align 8
  %i.it = ptrtoint ptr %i.il to i64
  %i.iu = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.iv = or disjoint i64 %i.iu, %i.it
  store i64 %i.iv, ptr %i.hr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store ptr null, ptr %i.am, align 8, !tbaa !62, !alias.scope !355
  store i32 %i.hx, ptr %i.an, align 4, !tbaa !49, !alias.scope !355
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !355
  store i32 0, ptr %20, align 8, !alias.scope !355
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.il, ptr noundef nonnull align 8 dereferenceable(1065) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store i32 1, ptr %19, align 8, !alias.scope !356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.il, ptr noundef nonnull align 8 dereferenceable(1065) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr null, ptr %i.aq, align 8, !tbaa !62, !alias.scope !357
  store i32 %i.gi, ptr %i.ar, align 4, !tbaa !49, !alias.scope !357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !357
  store i32 0, ptr %18, align 8, !alias.scope !357
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.il, ptr noundef nonnull align 8 dereferenceable(1065) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.iw = load ptr, ptr %i.gj, align 8, !tbaa !16 ; 2 uses
  %i.ix = load i32, ptr %i.gk, align 8, !tbaa !51 ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %.idx = shl nuw nsw i64 %i.iy, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.idx
  %.not91276 = icmp eq i32 %i.ix, 0
  br i1 %.not91276, label %.loopexit, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.lr.ph

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.lr.ph: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ja = load ptr, ptr %i.ac, align 8, !tbaa !340
  %i.jb = load i32, ptr %i.ae, align 8, !tbaa !342
  %i.jc = load i32, ptr %i.ad, align 8, !tbaa !341
  %i.jd = mul i32 %i.jb, %i.jc
  %i.je = load i16, ptr %i.gx, align 4, !tbaa !345
  %i.jf = zext i16 %i.je to i32
  %i.jg = add i32 %i.jd, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !358
  %i.jk = lshr i32 %i.jj, 4
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.lr.ph, %_ZN4llvm17MachineBasicBlock5eraseEPNS_12MachineInstrE.exit
  %.089277 = phi ptr [ %i.iw, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.lr.ph ], [ %i.ov, %_ZN4llvm17MachineBasicBlock5eraseEPNS_12MachineInstrE.exit ] ; 2 uses
  %i.jl = load ptr, ptr %.089277, align 8, !tbaa !359 ; 28 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32 ; 4 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !308
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = load i32, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !349 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 72 ; 2 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.js, align 8, !tbaa !59
  %i.jt = and i32 %i.jp, 1048320
  %i.ju = icmp eq i32 %i.jt, 0
  %i.jv = select i1 %i.ju, i32 0, i32 %i.jk
  %i.jw = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr nonnull @.str.4, i64 0) #18 ; 3 uses
  %i.jx = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !351
  %i.ka = getelementptr inbounds [32 x i8], ptr %i.jz, i64 %.neg.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !106 ; 5 uses
  %i.kd = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %i.ka, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #18 ; 10 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jr, i64 40 ; 3 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr noundef %i.kd) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i106 = load i64, ptr %i.jl, align 8
  %i.kf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i106, -8 ; 2 uses
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %i.jl, ptr %i.kh, align 8, !tbaa !43
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i107 = load i64, ptr %i.kd, align 8
  %i.ki = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i107, 7
  %i.kj = or disjoint i64 %i.ki, %i.kf
  store i64 %i.kj, ptr %i.kd, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.kd, ptr %i.kk, align 8, !tbaa !43
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i108 = load i64, ptr %i.jl, align 8
  %i.kl = ptrtoint ptr %i.kd to i64
  %i.km = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i108, 7
  %i.kn = or disjoint i64 %i.km, %i.kl
  store i64 %i.kn, ptr %i.jl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr null, ptr %i.at, align 8, !tbaa !62, !alias.scope !360
  store i32 %i.jw, ptr %i.au, align 4, !tbaa !49, !alias.scope !360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !alias.scope !360
  store i32 16777216, ptr %7, align 8, !alias.scope !360
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.not16.i, label %"_ZZN12_GLOBAL__N_115HexagonVExtract20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocEij.exit99", label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr null, ptr %i.aw, align 8, !tbaa !62, !alias.scope !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !361
  store <2 x i32> %i.ci, ptr %17, align 8, !alias.scope !361
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %"_ZZN12_GLOBAL__N_115HexagonVExtract20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocEij.exit99"

"_ZZN12_GLOBAL__N_115HexagonVExtract20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocEij.exit99": ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store i32 5, ptr %16, align 8, !alias.scope !362
  store ptr null, ptr %i.ay, align 8, !tbaa !62, !alias.scope !362
  store i32 %i.ho, ptr %i.az, align 8, !tbaa !49, !alias.scope !362
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ko = zext nneg i32 %i.jv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i32 1, ptr %15, align 8, !alias.scope !363
  store ptr null, ptr %i.ba, align 8, !tbaa !62, !alias.scope !363
  store i64 %i.ko, ptr %i.bb, align 8, !tbaa !49, !alias.scope !363
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.kp = load ptr, ptr %i.jq, align 8, !tbaa !349 ; 9 uses
  %.sroa.015.0.copyload.i = load ptr, ptr %i.js, align 8, !tbaa !59 ; 4 uses
  %i.kq = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr nonnull @.str.4, i64 0) #18 ; 5 uses
  %i.kr = load ptr, ptr %i.jm, align 8, !tbaa !308 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 64
  %i.kt = load i32, ptr %i.ks, align 8
  %i.ku = and i32 %i.kt, 1048320
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %"_ZZN12_GLOBAL__N_115HexagonVExtract20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_8DebugLocEij.exit99"
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 68
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !49
  %i.ky = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.o, i32 %i.kx) #18 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 52
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !307
  %.not.i100 = icmp eq i32 %i.la, 1055
  br i1 %.not.i100, label %.thread.i, label %bb.ak
end_hunk_0
