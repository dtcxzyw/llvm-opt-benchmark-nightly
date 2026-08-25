Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86WinEHUnwindV3?download=true
inline.NumInlined: 314
inline.NumDeleted: 232
begin_hunk_0_@_ZN12_GLOBAL__N_116X86WinEHUnwindV320runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 1, ptr %i.cz, align 8, !tbaa !273
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 3, ptr %i.da, align 4, !tbaa !276
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.db, align 8, !tbaa !277
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !278
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm28DiagnosticInfoGenericWithLocE, i64 16), ptr %6, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %7, ptr %i.dd, align 8, !tbaa !281
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(13) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.sroa.013.019.i = load ptr, ptr %i.m, align 8, !tbaa !170 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.013.019.i, %i.o
  br i1 %.not20.i, label %.critedge, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.p, %._crit_edge.i66
  %.sroa.013.021.i = phi ptr [ %.sroa.013.0.i, %._crit_edge.i66 ], [ %.sroa.013.019.i, %bb.p ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !172 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i, i64 48 ; 2 uses
  %.not1617.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not1617.i, label %._crit_edge.i66, label %.lr.ph.i65

._crit_edge.i66:                                  ; preds = %bb.r, %.lr.ph23.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i, i64 8
  %.sroa.013.0.i = load ptr, ptr %i.dh, align 8, !tbaa !170 ; 2 uses
  %.not.i67 = icmp eq ptr %.sroa.013.0.i, %i.o
  br i1 %.not.i67, label %.critedge, label %.lr.ph23.i

.lr.ph.i65:                                       ; preds = %.lr.ph23.i, %bb.r
  %.sroa.010.018.i = phi ptr [ %i.ds, %bb.r ], [ %i.df, %.lr.ph23.i ] ; 7 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.018.i, align 8
  %i.di = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %.lr.ph.i65
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 44
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !235
  %i.dl = and i32 %i.dk, 8
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not34.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.dn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %.sroa.010.018.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !172 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 44
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !235
  %i.dq = and i32 %i.dp, 8
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !266

_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %.lr.ph.i65
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %.sroa.010.018.i, %.lr.ph.i65 ], [ %.sroa.010.018.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.dn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !172 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 52
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !263
  %.off.i = add i32 %i.du, -411
  %switch.i = icmp ult i32 %.off.i, 13
  br i1 %switch.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i
  %i.dv = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.010.018.i) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i
  %.not16.i = icmp eq ptr %i.ds, %i.dg
  br i1 %.not16.i, label %._crit_edge.i66, label %.lr.ph.i65

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_116X86WinEHUnwindV314analyzeFuncletERN4llvm15MachineFunctionERNS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEERj.exit
  %i.dw = load i32, ptr %i.s, align 4, !tbaa !254 ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, 31
  br i1 %i.dx, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.dz, align 1, !tbaa !269
  store ptr @.str.7, ptr %10, align 8, !tbaa !234
  store i8 3, ptr %i.dy, align 8, !tbaa !272
  %i.ea = zext i32 %i.dw to i64
  call void @_ZN4llvm27DiagnosticInfoResourceLimitC1ERKNS_8FunctionERKNS_5TwineEmmNS_18DiagnosticSeverityENS_14DiagnosticKindE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(140) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %10, i64 noundef %i.ea, i64 noundef 31, i8 noundef signext 0, i32 noundef 4) #17
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(13) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ec, align 1, !tbaa !269
  store ptr @.str.8, ptr %12, align 8, !tbaa !234
  store i8 3, ptr %i.eb, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ed = call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %i.a) #17
  call void @_ZN4llvm18DiagnosticLocationC1EPKNS_12DISubprogramE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ed) #17
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %i.ee, align 8, !tbaa !273
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 3, ptr %i.ef, align 4, !tbaa !276
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.a, ptr %i.eg, align 8, !tbaa !277
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !278
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm28DiagnosticInfoGenericWithLocE, i64 16), ptr %11, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %12, ptr %i.ei, align 8, !tbaa !281
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(13) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %.sroa.013.019.i68 = load ptr, ptr %i.m, align 8, !tbaa !170 ; 2 uses
  %.not20.i69 = icmp eq ptr %.sroa.013.019.i68, %i.o
  br i1 %.not20.i69, label %.critedge, label %.lr.ph23.i70

.lr.ph23.i70:                                     ; preds = %bb.t, %._crit_edge.i82
  %.sroa.013.021.i71 = phi ptr [ %.sroa.013.0.i83, %._crit_edge.i82 ], [ %.sroa.013.019.i68, %bb.t ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i71, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !172 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i71, i64 48 ; 2 uses
  %.not1617.i72 = icmp eq ptr %i.ek, %i.el
  br i1 %.not1617.i72, label %._crit_edge.i82, label %.lr.ph.i73

._crit_edge.i82:                                  ; preds = %bb.v, %.lr.ph23.i70
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i71, i64 8
  %.sroa.013.0.i83 = load ptr, ptr %i.em, align 8, !tbaa !170 ; 2 uses
  %.not.i84 = icmp eq ptr %.sroa.013.0.i83, %i.o
  br i1 %.not.i84, label %.critedge, label %.lr.ph23.i70

.lr.ph.i73:                                       ; preds = %.lr.ph23.i70, %bb.v
  %.sroa.010.018.i74 = phi ptr [ %i.ex, %bb.v ], [ %i.ek, %.lr.ph23.i70 ] ; 7 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i75 = load i64, ptr %.sroa.010.018.i74, align 8
  %i.en = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i75, 4
  %.not.i.i.i.i.i.i76 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i.i.i76, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i85, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i77

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i85: ; preds = %.lr.ph.i73
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i74, i64 44
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !235
  %i.eq = and i32 %i.ep, 8
  %.not34.i.i.i.i.i.i86 = icmp eq i32 %i.eq, 0
  br i1 %.not34.i.i.i.i.i.i86, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i77, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i87

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i87: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i85, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i87
  %.sroa.0.05.i.i.i.i.i.i88 = phi ptr [ %i.es, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i87 ], [ %.sroa.010.018.i74, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i85 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i88, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !172 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 44
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !235
  %i.ev = and i32 %i.eu, 8
  %.not3.i.i.i.i.i.i89 = icmp eq i32 %i.ev, 0
  br i1 %.not3.i.i.i.i.i.i89, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i77, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i87, !llvm.loop !266

_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i77: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i87, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i85, %.lr.ph.i73
  %.sroa.0.1.i.i.i.i.i.i78 = phi ptr [ %.sroa.010.018.i74, %.lr.ph.i73 ], [ %.sroa.010.018.i74, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i85 ], [ %i.es, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i87 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i78, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !172 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i74, i64 52
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !263
  %.off.i79 = add i32 %i.ez, -411
  %switch.i80 = icmp ult i32 %.off.i79, 13
  br i1 %switch.i80, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i77
  %i.fa = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.010.018.i74) #17 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i77
  %.not16.i81 = icmp eq ptr %i.ex, %i.el
  br i1 %.not16.i81, label %._crit_edge.i82, label %.lr.ph.i73

bb.w:                                             ; preds = %bb.s
  %i.fb = load ptr, ptr %i.p, align 8, !tbaa !171, !nonnull !19, !align !159 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 128
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call noundef ptr %i.fe(ptr noundef nonnull align 8 dereferenceable(344) %i.fb) #17 ; 2 uses
  %i.fg = load i32, ptr %i.w, align 8, !tbaa !256 ; 3 uses
  %.not143 = icmp eq i32 %i.fg, 0
  br i1 %.not143, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.fh = getelementptr i8, ptr %i.ff, i64 8
  br label %bb.x

._crit_edge:                                      ; preds = %bb.ab
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %._crit_edge.thread, label %bb.ac

bb.x:                                             ; preds = %.lr.ph, %bb.ab
  %.pre153 = phi i32 [ %i.fg, %.lr.ph ], [ %.pre154, %bb.ab ] ; 2 uses
  %i.fi = phi i32 [ %i.fg, %.lr.ph ], [ %i.gk, %bb.ab ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %.048135 = phi ptr [ null, %.lr.ph ], [ %i.fj, %bb.ab ] ; 2 uses
  %.049134 = phi i32 [ 0, %.lr.ph ], [ %.251, %bb.ab ] ; 3 uses
  %.2111131 = phi i1 [ %.1110, %.lr.ph ], [ %.4113, %bb.ab ] ; 2 uses
  %.val = load ptr, ptr %i.u, align 8, !tbaa !21  ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %indvars.iv ; 4 uses
  %.not55 = icmp eq i32 %.049134, 0
  br i1 %.not55, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fk = icmp ugt i32 %.049134, 6
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !283
  %i.fn = getelementptr inbounds nuw i8, ptr %.048135, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !283
  %i.fp = sub i32 %i.fm, %i.fo
  %i.fq = icmp ugt i32 %i.fp, 32766
  %or.cond = select i1 %i.fk, i1 true, i1 %i.fq
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.053.val60 = load ptr, ptr %.048135, align 8, !tbaa !285 ; 2 uses
  %i.fr = getelementptr i8, ptr %.053.val60, i64 24
  %.053.val60.val = load ptr, ptr %i.fr, align 8, !tbaa !286 ; 3 uses
  %i.fs = getelementptr i8, ptr %.053.val60, i64 72
  %.053.val60.val61 = load ptr, ptr %i.fs, align 8, !tbaa !287
  %.val58.val.val = load ptr, ptr %i.fh, align 8, !tbaa !177
  %i.ft = getelementptr inbounds nuw i8, ptr %.053.val60.val, i64 56
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !172 ; 4 uses
  %i.fv = getelementptr inbounds i8, ptr %.val58.val.val, i64 -13472
  %i.fw = getelementptr inbounds nuw i8, ptr %.053.val60.val, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !181
  %i.fy = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %i.fv, ptr %.053.val60.val61, i1 noundef zeroext false) #17 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.053.val60.val, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef %i.fy) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8
  %i.ga = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.fu, ptr %i.gc, align 8, !tbaa !172
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.fy, align 8
  %i.gd = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.ge = or disjoint i64 %i.gd, %i.ga
  store i64 %i.ge, ptr %i.fy, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %i.fy, ptr %i.gf, align 8, !tbaa !172
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8
  %i.gg = ptrtoint ptr %i.fy to i64
  %i.gh = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.gi = or disjoint i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %i.fu, align 8
  %.pre.pre = load i32, ptr %i.w, align 8, !tbaa !256
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.pre = phi i32 [ %.pre.pre, %bb.z ], [ %.pre153, %bb.y ] ; 2 uses
  %.3112 = phi i1 [ true, %bb.z ], [ %.2111131, %bb.y ]
  %.150 = phi i32 [ 0, %bb.z ], [ %.049134, %bb.y ]
  %i.gj = add nuw nsw i32 %.150, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pre154 = phi i32 [ %.pre153, %bb.x ], [ %.pre, %bb.aa ]
  %i.gk = phi i32 [ %i.fi, %bb.x ], [ %.pre, %bb.aa ] ; 2 uses
  %.4113 = phi i1 [ %.2111131, %bb.x ], [ %.3112, %bb.aa ] ; 3 uses
  %.251 = phi i32 [ 1, %bb.x ], [ %i.gj, %bb.aa ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = zext i32 %i.gk to i64
  %i.gm = icmp samesign ult i64 %indvars.iv.next, %i.gl
  br i1 %i.gm, label %bb.x, label %._crit_edge, !llvm.loop !288

bb.ac:                                            ; preds = %._crit_edge
  %i.gn = load i32, ptr %i.t, align 8, !tbaa !255
  %i.go = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !283
  %i.gq = sub i32 %i.gn, %i.gp
  %i.gr = icmp ugt i32 %i.gq, 32766
  br i1 %i.gr, label %bb.ad, label %._crit_edge.thread

bb.ad:                                            ; preds = %bb.ac
  %.053.val = load ptr, ptr %i.fj, align 8, !tbaa !285 ; 2 uses
  %i.gs = getelementptr i8, ptr %.053.val, i64 24
  %.053.val.val = load ptr, ptr %i.gs, align 8, !tbaa !286 ; 3 uses
  %i.gt = getelementptr i8, ptr %.053.val, i64 72
  %.053.val.val62 = load ptr, ptr %i.gt, align 8, !tbaa !287
  %i.gu = getelementptr i8, ptr %i.ff, i64 8
  %.val56.val.val = load ptr, ptr %i.gu, align 8, !tbaa !177
  %i.gv = getelementptr inbounds nuw i8, ptr %.053.val.val, i64 56
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !172 ; 4 uses
  %i.gx = getelementptr inbounds i8, ptr %.val56.val.val, i64 -13472
  %i.gy = getelementptr inbounds nuw i8, ptr %.053.val.val, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !181
  %i.ha = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %i.gx, ptr %.053.val.val62, i1 noundef zeroext false) #17 ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.053.val.val, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef %i.ha) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i91 = load i64, ptr %i.gw, align 8
  %i.hc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i91, -8 ; 2 uses
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %i.gw, ptr %i.he, align 8, !tbaa !172
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i92 = load i64, ptr %i.ha, align 8
  %i.hf = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i92, 7
  %i.hg = or disjoint i64 %i.hf, %i.hc
  store i64 %i.hg, ptr %i.ha, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.ha, ptr %i.hh, align 8, !tbaa !172
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i93 = load i64, ptr %i.gw, align 8
  %i.hi = ptrtoint ptr %i.ha to i64
  %i.hj = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i93, 7
  %i.hk = or disjoint i64 %i.hj, %i.hi
  store i64 %i.hk, ptr %i.gw, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.ad, %bb.ac, %._crit_edge
  %.5114 = phi i1 [ %.4113, %._crit_edge ], [ true, %bb.ad ], [ %.4113, %bb.ac ], [ %.1110, %bb.w ] ; 2 uses
  %i.hl = load ptr, ptr %i.u, align 8, !tbaa !21  ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.v
  br i1 %i.hm, label %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread
  call void @free(ptr noundef %i.hl) #17
  br label %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit

_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit:          ; preds = %._crit_edge.thread, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not115 = icmp eq ptr %.sroa.0100.2, %i.o
  br i1 %.not115, label %.loopexit, label %bb.e, !llvm.loop !289

.critedge:                                        ; preds = %._crit_edge.i82, %._crit_edge.i66, %bb.t, %bb.p
  store i8 0, ptr %i.d, align 1, !tbaa !160
  %i.hn = load ptr, ptr %i.u, align 8, !tbaa !21  ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.v
  br i1 %i.ho, label %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit94, label %bb.af

bb.af:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.hn) #17
  br label %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit94

_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit94:        ; preds = %.critedge, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit, %bb.d, %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit94, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit94 ], [ false, %bb.d ], [ %.5114, %_ZN12_GLOBAL__N_111FuncletInfoD2Ev.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm21requireWinX64UnwindV3ERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #6

declare noundef i32 @_ZNK4llvm6Module21getWinX64EHUnwindModeEv(ptr noundef nonnull align 8 dereferenceable(1288)) local_unnamed_addr #6

declare void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #6

declare void @_ZN4llvm27DiagnosticInfoResourceLimitC1ERKNS_8FunctionERKNS_5TwineEmmNS_18DiagnosticSeverityENS_14DiagnosticKindE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(34), i64 noundef, i64 noundef, i8 noundef signext, i32 noundef) unnamed_addr #6

declare noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #6

declare void @_ZN4llvm18DiagnosticLocationC1EPKNS_12DISubprogramE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360), ptr) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116EpilogSplitPointELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %1, i32 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !256
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #17
  %.val = load ptr, ptr %0, align 8, !tbaa !21
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !256
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.f ; 2 uses
  store ptr %1, ptr %i.g, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !256
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !256
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
