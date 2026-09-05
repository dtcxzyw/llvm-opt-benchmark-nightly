Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVFrameLowering?download=true
inline.NumInlined: 3146
inline.NumDeleted: 1375
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm18RISCVFrameLowering18isSupportedStackIDENS_13TargetStackID5ValueE:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK4llvm18RISCVFrameLowering28getStackIDForScalableVectorsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm18RISCVFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::DebugLoc", align 8   ; 9 uses
  %17 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %18 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.454", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.b = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.b, ptr %19, align 8, !tbaa !457
  %i.c = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !458
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 2 uses
  store i32 4, ptr %i.d, align 4, !tbaa !459
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.027.031 = load ptr, ptr %i.e, align 8, !tbaa !435 ; 2 uses
  %.not2932 = icmp eq ptr %.sroa.027.031, %i.f
  br i1 %.not2932, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.pre = load ptr, ptr %19, align 8, !tbaa !457  ; 3 uses
  %.pre40 = load i32, ptr %i.c, align 8, !tbaa !458 ; 2 uses
  %i.g = zext i32 %.pre40 to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not34 = icmp eq i32 %.pre40, 0
  br i1 %.not34, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.027.033 = phi ptr [ %.sroa.027.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.027.031, %bb.a ] ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.027.033, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !476
  switch i32 %i.av, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit [
    i32 649, label %bb.b
    i32 647, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.aw = load i32, ptr %i.c, align 8, !tbaa !458 ; 2 uses
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !459
  %.not.i = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !465

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %.sroa.027.033)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %19, align 8, !tbaa !457
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  store ptr %.sroa.027.033, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.c, align 8, !tbaa !458
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.c, align 8, !tbaa !458
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.027.033) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.027.033, align 8
  %i.bd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.027.033, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !352
  %i.bg = and i32 %i.bf, 8
  %.not34.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.bi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.027.033, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !435 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !352
  %i.bl = and i32 %i.bk, 8
  %.not3.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !5

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.027.033, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ], [ %.sroa.027.033, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.bi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.027.0 = load ptr, ptr %i.bm, align 8, !tbaa !435 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.027.0, %i.f
  br i1 %.not29, label %._crit_edge, label %.lr.ph

._crit_edge38.loopexit:                           ; preds = %bb.j
  %.pre41 = load ptr, ptr %19, align 8, !tbaa !457
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %._crit_edge
  %i.bn = phi ptr [ %.pre41, %._crit_edge38.loopexit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.b
  br i1 %i.bo, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge38
  call void @free(ptr noundef %i.bn) #19
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit: ; preds = %bb.a, %._crit_edge38, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  ret void

bb.f:                                             ; preds = %.lr.ph37, %bb.j
  %.035 = phi ptr [ %.pre, %.lr.ph37 ], [ %i.hg, %bb.j ] ; 2 uses
  %i.bp = load ptr, ptr %.035, align 8, !tbaa !1103 ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !476
  switch i32 %i.br, label %bb.j [
    i32 647, label %bb.g
    i32 649, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.bs = call ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %i.bp) #19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !477
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !171 ; 4 uses
  %i.bx = load i32, ptr %i.bq, align 4, !tbaa !476
  %i.by = icmp eq i32 %i.bx, 649
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.bs, ptr %16, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1104 ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !396 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !287, !nonnull !288, !align !289 ; 7 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !173
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(519768) %i.ce) #19, !inline_history !1076 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 656
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !440, !range !311, !noundef !288
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !173
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(519768) %i.ce) #19, !inline_history !1076
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %.sroa.0.0.copyload.i100.i = load i8, ptr %i.cp, align 4, !tbaa !171
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !173
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 144
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call noundef ptr %i.cs(ptr noundef nonnull align 8 dereferenceable(519768) %i.ce) #19, !inline_history !1076
  %i.cu = call noundef i32 @_ZNK4llvm19RISCVTargetLowering17getStackProbeSizeERKNS_15MachineFunctionENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518448) %i.ct, ptr noundef nonnull align 8 dereferenceable(1065) %i.cc, i8 %.sroa.0.0.copyload.i100.i) #19
  %20 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !528    ; 6 uses
  %22 = trunc nuw i8 %i.ck to i1
  %23 = zext i32 %i.cu to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1105
  %i.cx = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.cc, ptr noundef %i.cw, i64 undef, i8 0) #19 ; 17 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 296 ; 2 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef %i.cx) #19
  %i.cz = load ptr, ptr %21, align 8, !tbaa !1106 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %21, ptr %i.da, align 8, !tbaa !528
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !1106
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.cx, ptr %i.db, align 8, !tbaa !528
  store ptr %i.cx, ptr %21, align 8, !tbaa !1106
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !1105
  %i.dd = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.cc, ptr noundef %i.dc, i64 undef, i8 0) #19 ; 11 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef %i.dd) #19
  %i.de = load ptr, ptr %21, align 8, !tbaa !1106 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %21, ptr %i.df, align 8, !tbaa !528
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !1106
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !528
  store ptr %i.dd, ptr %21, align 8, !tbaa !1106
  call void @_ZNK4llvm14RISCVInstrInfo6movImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEmNS4_6MIFlagEbb(ptr noundef nonnull align 8 dereferenceable(440) %i.ci, ptr noundef nonnull align 8 dereferenceable(360) %i.ca, ptr nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 75, i64 noundef %23, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %.sroa.023.0.copyload.i = load ptr, ptr %16, align 8, !tbaa !336
  store ptr %.sroa.023.0.copyload.i, ptr %17, align 8, !tbaa !336
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !337
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -510272
  %i.dl = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.cx, ptr nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i32 70) ; 2 uses
  %i.dm = extractvalue { ptr, ptr } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %i.dl, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr null, ptr %i.j, align 8, !tbaa !438, !alias.scope !1107
  store i32 70, ptr %i.k, align 4, !tbaa !171, !alias.scope !1107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !1107
  store i32 0, ptr %15, align 8, !alias.scope !1107
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dn, ptr noundef nonnull align 8 dereferenceable(1065) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr null, ptr %i.m, align 8, !tbaa !438, !alias.scope !1108
  store i32 75, ptr %i.n, align 4, !tbaa !171, !alias.scope !1108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !alias.scope !1108
  store i32 0, ptr %14, align 8, !alias.scope !1108
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dn, ptr noundef nonnull align 8 dereferenceable(1065) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 44 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !352
  %i.dq = and i32 %i.dp, 12
  %i.dr = or disjoint i32 %i.dq, 1
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !352
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %.sroa.020.0.copyload.i = load ptr, ptr %16, align 8, !tbaa !336
  %i.ds = load ptr, ptr %i.di, align 8, !tbaa !337
  %.neg.i = select i1 %22, i64 -15778, i64 -15949
  %i.dt = getelementptr inbounds [32 x i8], ptr %i.ds, i64 %.neg.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !396 ; 4 uses
  %i.dw = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr %.sroa.020.0.copyload.i, i1 noundef zeroext false) #19 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 3 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef %i.dw) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8
  %i.dy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dh, ptr %i.ea, align 8, !tbaa !435
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.dw, align 8
  %i.eb = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.ec = or disjoint i64 %i.eb, %i.dy
  store i64 %i.ec, ptr %i.dw, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.dw, ptr %i.ed, align 8, !tbaa !435
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8
  %i.ee = ptrtoint ptr %i.dw to i64
  %i.ef = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.eg = or disjoint i64 %i.ef, %i.ee
  store i64 %i.eg, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr null, ptr %i.p, align 8, !tbaa !438, !alias.scope !1109
  store i32 68, ptr %i.q, align 4, !tbaa !171, !alias.scope !1109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !1109
  store i32 0, ptr %13, align 8, !alias.scope !1109
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(1065) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr null, ptr %i.s, align 8, !tbaa !438, !alias.scope !1110
  store i32 70, ptr %i.t, align 4, !tbaa !171, !alias.scope !1110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !1110
  store i32 0, ptr %12, align 8, !alias.scope !1110
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(1065) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i32 1, ptr %11, align 8, !alias.scope !1111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(1065) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 44 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !352
  %i.ej = and i32 %i.ei, 12
  %i.ek = or disjoint i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !352
  br i1 %i.by, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit110.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit120.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit110.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %.sroa.018.0.copyload.i = load ptr, ptr %16, align 8, !tbaa !336
  store ptr %.sroa.018.0.copyload.i, ptr %18, align 8, !tbaa !336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.el = load ptr, ptr %i.di, align 8, !tbaa !337
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -510272
  %i.en = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.cx, ptr nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.em, i32 %i.bw) ; 2 uses
  %i.eo = extractvalue { ptr, ptr } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.en, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr null, ptr %i.af, align 8, !tbaa !438, !alias.scope !1112
  store i32 %i.bw, ptr %i.ag, align 4, !tbaa !171, !alias.scope !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !1112
  store i32 0, ptr %10, align 8, !alias.scope !1112
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ep, ptr noundef nonnull align 8 dereferenceable(1065) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr null, ptr %i.ai, align 8, !tbaa !438, !alias.scope !1113
  store i32 75, ptr %i.aj, align 4, !tbaa !171, !alias.scope !1113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !1113
  store i32 0, ptr %9, align 8, !alias.scope !1113
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ep, ptr noundef nonnull align 8 dereferenceable(1065) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 44 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !352
  %i.es = and i32 %i.er, 12
  %i.et = or disjoint i32 %i.es, 1
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !352
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %.sroa.013.0.copyload.i = load ptr, ptr %16, align 8, !tbaa !336
  %i.eu = load ptr, ptr %i.di, align 8, !tbaa !337
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -452320
  %i.ew = load ptr, ptr %i.du, align 8, !tbaa !396 ; 4 uses
  %i.ex = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr %.sroa.013.0.copyload.i, i1 noundef zeroext false) #19 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef %i.ex) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i102.i = load i64, ptr %i.dh, align 8
  %i.ey = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i102.i, -8 ; 2 uses
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.dh, ptr %i.fa, align 8, !tbaa !435
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i103.i = load i64, ptr %i.ex, align 8
  %i.fb = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i103.i, 7
  %i.fc = or disjoint i64 %i.fb, %i.ey
  store i64 %i.fc, ptr %i.ex, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.ex, ptr %i.fd, align 8, !tbaa !435
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i104.i = load i64, ptr %i.dh, align 8
  %i.fe = ptrtoint ptr %i.ex to i64
  %i.ff = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i104.i, 7
  %i.fg = or disjoint i64 %i.ff, %i.fe
  store i64 %i.fg, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr null, ptr %i.al, align 8, !tbaa !438, !alias.scope !1114
  store i32 %i.bw, ptr %i.am, align 4, !tbaa !171, !alias.scope !1114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !1114
  store i32 0, ptr %8, align 8, !alias.scope !1114
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ex, ptr noundef nonnull align 8 dereferenceable(1065) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %i.ao, align 8, !tbaa !438, !alias.scope !1115
  store i32 75, ptr %i.ap, align 4, !tbaa !171, !alias.scope !1115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !1115
  store i32 0, ptr %7, align 8, !alias.scope !1115
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ex, ptr noundef nonnull align 8 dereferenceable(1065) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %i.ar, align 8, !tbaa !438, !alias.scope !1116
  store ptr %i.cx, ptr %i.as, align 8, !tbaa !171, !alias.scope !1116
  store i32 4, ptr %6, align 8, !alias.scope !1116
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ex, ptr noundef nonnull align 8 dereferenceable(1065) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.h

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit120.i: ; preds = %bb.g
  %.sroa.09.0.copyload.i = load ptr, ptr %16, align 8, !tbaa !336
  %i.fh = load ptr, ptr %i.di, align 8, !tbaa !337
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -452512
  %i.fj = load ptr, ptr %i.du, align 8, !tbaa !396 ; 4 uses
  %i.fk = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr %.sroa.09.0.copyload.i, i1 noundef zeroext false) #19 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef %i.fk) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i112.i = load i64, ptr %i.dh, align 8
  %i.fl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i112.i, -8 ; 2 uses
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.dh, ptr %i.fn, align 8, !tbaa !435
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i113.i = load i64, ptr %i.fk, align 8
  %i.fo = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i113.i, 7
  %i.fp = or disjoint i64 %i.fo, %i.fl
  store i64 %i.fp, ptr %i.fk, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fk, ptr %i.fq, align 8, !tbaa !435
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i114.i = load i64, ptr %i.dh, align 8
  %i.fr = ptrtoint ptr %i.fk to i64
  %i.fs = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i114.i, 7
  %i.ft = or disjoint i64 %i.fs, %i.fr
  store i64 %i.ft, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %i.w, align 8, !tbaa !438, !alias.scope !1117
  store i32 70, ptr %i.x, align 4, !tbaa !171, !alias.scope !1117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !1117
  store i32 0, ptr %5, align 8, !alias.scope !1117
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, ptr noundef nonnull align 8 dereferenceable(1065) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %i.z, align 8, !tbaa !438, !alias.scope !1118
  store i32 %i.bw, ptr %i.aa, align 4, !tbaa !171, !alias.scope !1118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !alias.scope !1118
  store i32 0, ptr %4, align 8, !alias.scope !1118
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, ptr noundef nonnull align 8 dereferenceable(1065) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %i.ac, align 8, !tbaa !438, !alias.scope !1119
  store ptr %i.cx, ptr %i.ad, align 8, !tbaa !171, !alias.scope !1119
  store i32 4, ptr %3, align 8, !alias.scope !1119
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, ptr noundef nonnull align 8 dereferenceable(1065) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit120.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit110.i
  %.sink.i = phi ptr [ %i.fk, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit120.i ], [ %i.ex, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit110.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sink.i, i64 44 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !352
  %i.fw = and i32 %i.fv, 12
  %i.fx = or disjoint i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fu, align 4, !tbaa !352
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dd, i64 48 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i121.i = load i64, ptr %i.bp, align 8
  %i.fz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i121.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.h
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !352
  %i.gc = and i32 %i.gb, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.ge, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.bp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !435 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 44
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !352
  %i.gh = and i32 %i.gg, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !5

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.h
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.bp, %bb.h ], [ %i.bp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.ge, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
end_hunk_0
