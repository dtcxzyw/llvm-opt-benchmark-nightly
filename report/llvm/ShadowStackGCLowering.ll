Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ShadowStackGCLowering?download=true
inline.NumInlined: 1177
inline.NumDeleted: 788
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_125ShadowStackGCLoweringImpl13runOnFunctionERN4llvm8FunctionEPNS1_14DomTreeUpdaterE:bb.a
  %i.me = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #15 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.mf = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i16 257, ptr %i.mf, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.me, ptr noundef %i.lw, i32 noundef %i.md, ptr noundef null, i8 %i.mb, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %18) #15
  %i.mg = load ptr, ptr %i.lj, align 8, !tbaa !145, !nonnull !94, !align !95 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.lq, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !144
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(8) %i.mg, ptr noundef nonnull %i.me, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #15, !inline_history !284
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.me) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 2 ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !58
  %i.mm = and i16 %i.ml, -64
  %i.mn = and i8 %.sroa.016.0.lcssa.i, 63
  %i.mo = zext nneg i8 %i.mn to i16
  %i.mp = or disjoint i16 %i.mm, %i.mo
  store i16 %i.mp, ptr %i.mk, align 2, !tbaa !58
  %i.mq = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -24 ; 2 uses
  store ptr %i.mr, ptr %i.lp, align 8, !tbaa !335
  %i.ms = call { ptr, i64 } @_ZNK4llvm10BasicBlock27getFirstNonPHIOrDbgOrAllocaEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mr) #15 ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i64 } %i.ms, 0 ; 5 uses
  %.fca.1.extract2.i.i = extractvalue { ptr, i64 } %i.ms, 1
  %.not.i.i.i103 = icmp eq ptr %.fca.0.extract1.i.i, null
  %i.mt = trunc i64 %.fca.1.extract2.i.i to i16
  %.sroa.2.0.extract.trunc.i = select i1 %.not.i.i.i103, i16 0, i16 %i.mt
  store ptr %.fca.0.extract1.i.i, ptr %i.lq, align 8
  store i16 %.sroa.2.0.extract.trunc.i, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.mu = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.mv = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.mu, i32 noundef 0) #15 ; 2 uses
  %i.mw = load ptr, ptr %0, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.mx = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.mx, align 1, !tbaa !110
  store ptr @.str.7, ptr %16, align 8, !tbaa !111
  %i.my = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.my, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.mz = load ptr, ptr %i.lp, align 8, !tbaa !335
  %i.na = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mz) #15
  %i.nb = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.na, ptr noundef %i.mv) #15
  %i.nc = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.nd = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.nd, align 8, !tbaa !112
  %i.ne = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.ne, align 1, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.nc, ptr noundef %i.mv, ptr noundef %i.mw, ptr noundef nonnull align 8 dereferenceable(34) %13, i1 noundef zeroext false, i8 %i.nb, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %14) #15
  %i.nf = load ptr, ptr %i.lj, align 8, !tbaa !145, !nonnull !94, !align !95 ; 2 uses
  %.sroa.0.0.copyload.i.i109 = load ptr, ptr %i.lq, align 8
  %.sroa.2.0.copyload.i.i111 = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !144
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, ptr noundef nonnull %i.nc, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr %.sroa.0.0.copyload.i.i109, i64 %.sroa.2.0.copyload.i.i111) #15, !inline_history !285
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.nc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.nj = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.nk = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nj) #15
  %i.nl = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.nk, i64 noundef %i.gb, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.nm = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.nn, align 1, !tbaa !110
  store ptr @.str.8, ptr %27, align 8, !tbaa !111
  store i8 3, ptr %i.nm, align 8, !tbaa !112
  %i.no = call noundef ptr @_ZN4llvm13IRBuilderBase12CreatePtrAddEPNS_5ValueES2_RKNS_5TwineENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.me, ptr noundef %i.nl, ptr noundef nonnull align 8 dereferenceable(34) %27, i32 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.np = load ptr, ptr %i.lp, align 8, !tbaa !335
  %i.nq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.np) #15
  %i.nr = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !130
  %i.nt = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.nq, ptr noundef %i.ns) #15
  %i.nu = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #15 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.nu, ptr noundef nonnull %i.jh, ptr noundef %i.no, i1 noundef zeroext false, i8 %i.nt, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.nv = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.nv, align 8
  %i.nw = load ptr, ptr %i.lj, align 8, !tbaa !145, !nonnull !94, !align !95 ; 2 uses
  %.sroa.0.0.copyload.i.i112 = load ptr, ptr %i.lq, align 8
  %.sroa.2.0.copyload.i.i114 = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !144
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull %i.nu, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr %.sroa.0.0.copyload.i.i112, i64 %.sroa.2.0.copyload.i.i114) #15, !inline_history !286
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.nu) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.oa = shl nuw nsw i64 %i.gb, 1                ; 2 uses
  %i.ob = load ptr, ptr %i.dm, align 8, !tbaa !127
  %i.oc = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe                    ; 2 uses
  %i.og = and i64 %i.of, 68719476720
  %.not166 = icmp eq i64 %i.og, 0
  br i1 %.not166, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  %i.oh = lshr exact i64 %i.of, 4
  %i.oi = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.oj = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ok = getelementptr inbounds nuw i8, ptr %30, i64 33
  %i.ol = and i64 %i.oh, 4294967295
  br label %bb.ai

._crit_edge:                                      ; preds = %bb.ak, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  %.088.lcssa = phi i64 [ %i.oa, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit ], [ %i.pk, %bb.ak ] ; 3 uses
  %i.om = icmp ugt i64 %i.fz, %.088.lcssa
  br i1 %i.om, label %bb.al, label %bb.am

bb.ai:                                            ; preds = %.lr.ph, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 3 uses
  %.088168 = phi i64 [ %i.oa, %.lr.ph ], [ %i.pk, %bb.ak ] ; 3 uses
  %i.on = load ptr, ptr %i.ds, align 8, !tbaa !48
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %indvars.iv ; 2 uses
  %.sroa.0135.0.copyload = load i64, ptr %i.oo, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.op = icmp ugt i64 %.sroa.0135.0.copyload, %.088168
  br i1 %i.op, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.oq = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.or = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.oq) #15
  %i.os = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.or, i64 noundef %.088168, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store i16 257, ptr %i.oi, align 8
  %i.ot = call noundef ptr @_ZN4llvm13IRBuilderBase12CreatePtrAddEPNS_5ValueES2_RKNS_5TwineENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.me, ptr noundef %i.os, ptr noundef nonnull align 8 dereferenceable(34) %28, i32 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.ou = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.ov = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ou) #15
  %i.ow = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ov, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #15
  %i.ox = sub nuw i64 %.sroa.0135.0.copyload, %.088168
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, i8 0, i64 40, i1 false)
  %i.oy = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.oz = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.oy) #15
  %i.pa = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.oz, i64 noundef %i.ox, i1 noundef zeroext false, i1 noundef zeroext false) #15
  %i.pb = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateMemSetEPNS_5ValueES2_S2_NS_10MaybeAlignEbRKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef %i.ot, ptr noundef %i.ow, ptr noundef %i.pa, i16 256, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %29) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.pc = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.pd = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.pc) #15
  %i.pe = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.pd, i64 noundef %.sroa.0135.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  store i8 1, ptr %i.ok, align 1, !tbaa !110
  store ptr @.str.10, ptr %30, align 8, !tbaa !111
  store i8 3, ptr %i.oj, align 8, !tbaa !112
  %i.pf = call noundef ptr @_ZN4llvm13IRBuilderBase12CreatePtrAddEPNS_5ValueES2_RKNS_5TwineENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.me, ptr noundef %i.pe, ptr noundef nonnull align 8 dereferenceable(34) %30, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  %i.pg = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.pg, i64 %indvars.iv
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !312 ; 2 uses
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.pf, ptr noundef %i.pj) #15
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.pj, ptr noundef nonnull %i.pf) #15
  %i.pk = add i64 %.sroa.7.0.copyload, %.sroa.0135.0.copyload ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.ol
  br i1 %.not, label %._crit_edge, label %bb.ai, !llvm.loop !287

bb.al:                                            ; preds = %._crit_edge
  %i.pl = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.pm = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.pl) #15
  %i.pn = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.pm, i64 noundef %.088.lcssa, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  %i.po = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i16 257, ptr %i.po, align 8
  %i.pp = call noundef ptr @_ZN4llvm13IRBuilderBase12CreatePtrAddEPNS_5ValueES2_RKNS_5TwineENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.me, ptr noundef %i.pn, ptr noundef nonnull align 8 dereferenceable(34) %31, i32 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %i.pq = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.pr = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.pq) #15
  %i.ps = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.pr, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #15
  %i.pt = sub nuw i64 %i.fz, %.088.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %32, i8 0, i64 40, i1 false)
  %i.pu = load ptr, ptr %i.lh, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.pv = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.pu) #15
  %i.pw = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.pv, i64 noundef %i.pt, i1 noundef zeroext false, i1 noundef zeroext false) #15
  %i.px = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateMemSetEPNS_5ValueES2_S2_NS_10MaybeAlignEbRKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef %i.pp, ptr noundef %i.ps, ptr noundef %i.pw, i16 256, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %32) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge
  %i.py = getelementptr inbounds i8, ptr %.fca.0.extract1.i.i, i64 -24
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !295
  %i.qa = icmp eq i8 %i.pz, 64
  br i1 %i.qa, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %bb.am, %.lr.ph172
  %.sroa.0139.0170 = phi ptr [ %i.qc, %.lr.ph172 ], [ %.fca.0.extract1.i.i, %bb.am ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0139.0170, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !294 ; 3 uses
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -24
  %i.qe = load i8, ptr %i.qd, align 8, !tbaa !295
  %i.qf = icmp eq i8 %i.qe, 64
  br i1 %i.qf, label %.lr.ph172, label %._crit_edge173, !llvm.loop !288

._crit_edge173:                                   ; preds = %.lr.ph172, %bb.am
  %.sroa.0139.0.lcssa169 = phi ptr [ %.fca.0.extract1.i.i, %bb.am ], [ %i.qc, %.lr.ph172 ] ; 4 uses
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.2.0.copyload.i, %bb.am ], [ 0, %.lr.ph172 ]
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0139.0.lcssa169, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !325 ; 3 uses
  store ptr %i.qh, ptr %i.lp, align 8, !tbaa !335
  store ptr %.sroa.0139.0.lcssa169, ptr %i.lq, align 8
  %.sroa.45.0.extract.trunc.i = trunc i64 %.sroa.11.0.lcssa to i16
  store i16 %.sroa.45.0.extract.trunc.i, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 48
  %.not.i106 = icmp eq ptr %.sroa.0139.0.lcssa169, %i.qi
  br i1 %.not.i106, label %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit, label %bb.an

bb.an:                                            ; preds = %._crit_edge173
  %i.qj = getelementptr inbounds i8, ptr %.sroa.0139.0.lcssa169, i64 -24
  %i.qk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.qj) #15
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !336
  store i64 %i.ql, ptr %25, align 8, !tbaa !336
  %.pre = load ptr, ptr %i.lp, align 8, !tbaa !335
  br label %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit

_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit: ; preds = %._crit_edge173, %bb.an
  %i.qm = phi ptr [ %i.qh, %._crit_edge173 ], [ %.pre, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.qn = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.qm) #15
  %i.qo = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !130
  %i.qq = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.qn, ptr noundef %i.qp) #15
  %i.qr = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #15 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.qr, ptr noundef nonnull %i.nc, ptr noundef nonnull %i.me, i1 noundef zeroext false, i8 %i.qq, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.qs = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.qs, align 8
  %i.qt = load ptr, ptr %i.lj, align 8, !tbaa !145, !nonnull !94, !align !95 ; 2 uses
  %.sroa.0.0.copyload.i.i115 = load ptr, ptr %i.lq, align 8
  %.sroa.2.0.copyload.i.i117 = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !144
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8
  call void %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qt, ptr noundef nonnull %i.qr, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i.i115, i64 %.sroa.2.0.copyload.i.i117) #15, !inline_history !286
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.qr) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.qx = load ptr, ptr %0, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.qy = load ptr, ptr %i.lp, align 8, !tbaa !335
  %i.qz = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.qy) #15
  %i.ra = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !130
  %i.rc = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.qz, ptr noundef %i.rb) #15
  %i.rd = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #15 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.rd, ptr noundef nonnull %i.me, ptr noundef %i.qx, i1 noundef zeroext false, i8 %i.rc, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.re = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.re, align 8
  %i.rf = load ptr, ptr %i.lj, align 8, !tbaa !145, !nonnull !94, !align !95 ; 2 uses
  %.sroa.0.0.copyload.i.i118 = load ptr, ptr %i.lq, align 8
  %.sroa.2.0.copyload.i.i120 = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !144
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef nonnull %i.rd, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr %.sroa.0.0.copyload.i.i118, i64 %.sroa.2.0.copyload.i.i120) #15, !inline_history !286
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull %i.rd) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  store ptr %1, ptr %33, align 8, !tbaa !338
  %i.rj = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @.str.11, ptr %i.rj, align 8, !tbaa !347
  %i.rk = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.rl = load ptr, ptr %i.ad, align 8, !tbaa !23
  store ptr %i.rl, ptr %i.rk, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr %i.ae, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.ro = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #15
  %i.rp = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %33, i64 128 ; 3 uses
  store ptr null, ptr %i.rn, align 8, !tbaa !326
  %i.rr = getelementptr inbounds nuw i8, ptr %33, i64 64
  store ptr %i.ro, ptr %i.rr, align 8, !tbaa !327
  %i.rs = getelementptr inbounds nuw i8, ptr %33, i64 72
  store ptr %i.rp, ptr %i.rs, align 8, !tbaa !328
  %i.rt = getelementptr inbounds nuw i8, ptr %33, i64 80
  store ptr %i.rq, ptr %i.rt, align 8, !tbaa !329
  %i.ru = getelementptr inbounds nuw i8, ptr %33, i64 88
  store ptr null, ptr %i.ru, align 8, !tbaa !330
  %i.rv = getelementptr inbounds nuw i8, ptr %33, i64 96
  store i32 0, ptr %i.rv, align 8, !tbaa !331
  %i.rw = getelementptr inbounds nuw i8, ptr %33, i64 100
  store i8 0, ptr %i.rw, align 4, !tbaa !332
  %i.rx = getelementptr inbounds nuw i8, ptr %33, i64 101
  store i8 2, ptr %i.rx, align 1, !tbaa !333
  %i.ry = getelementptr inbounds nuw i8, ptr %33, i64 102
  store i8 7, ptr %i.ry, align 2, !tbaa !334
  %i.rz = getelementptr inbounds nuw i8, ptr %33, i64 104
  %i.sa = getelementptr inbounds nuw i8, ptr %33, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.sa, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rz, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.rp, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.rq, align 8, !tbaa !144
  %i.sb = getelementptr inbounds nuw i8, ptr %33, i64 136
  store i8 0, ptr %i.sb, align 8, !tbaa !348
  %i.sc = getelementptr inbounds nuw i8, ptr %33, i64 137
  store i8 1, ptr %i.sc, align 1, !tbaa !349
  %i.sd = getelementptr inbounds nuw i8, ptr %33, i64 144
  store ptr %2, ptr %i.sd, align 8, !tbaa !350
  %i.se = call noundef ptr @_ZN4llvm16EscapeEnumerator4NextEv(ptr noundef nonnull align 8 dereferenceable(152) %33) #15 ; 2 uses
  %.not91177 = icmp eq ptr %i.se, null
  br i1 %.not91177, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %15, i64 33
  %i.sg = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.si = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph178, %bb.ao
  %i.sk = phi ptr [ %i.se, %.lr.ph178 ], [ %i.tk, %bb.ao ] ; 7 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 32
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !146, !nonnull !94, !align !95
  %i.sn = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.sm, i32 noundef 0) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store i8 1, ptr %i.sf, align 1, !tbaa !110
  store ptr @.str.12, ptr %15, align 8, !tbaa !111
  store i8 3, ptr %i.sg, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !335
  %i.sq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.sp) #15
  %i.sr = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.sq, ptr noundef %i.sn) #15
  %i.ss = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i8 1, ptr %i.sh, align 8, !tbaa !112
  store i8 1, ptr %i.si, align 1, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.ss, ptr noundef %i.sn, ptr noundef nonnull %i.me, ptr noundef nonnull align 8 dereferenceable(34) %5, i1 noundef zeroext false, i8 %i.sr, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %6) #15
  %i.st = getelementptr inbounds nuw i8, ptr %i.sk, i64 48 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !145, !nonnull !94, !align !95 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sk, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i121 = load ptr, ptr %i.sv, align 8
  %.sroa.2.0..sroa_idx.i.i122 = getelementptr inbounds nuw i8, ptr %i.sk, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i123 = load i64, ptr %.sroa.2.0..sroa_idx.i.i122, align 8
  %i.sw = load ptr, ptr %i.su, align 8, !tbaa !144
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(8) %i.su, ptr noundef nonnull %i.ss, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr %.sroa.0.0.copyload.i.i121, i64 %.sroa.2.0.copyload.i.i123) #15, !inline_history !285
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.sk, ptr noundef nonnull %i.ss) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.sz = load ptr, ptr %0, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ta = load ptr, ptr %i.so, align 8, !tbaa !335
  %i.tb = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ta) #15
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !130
  %i.te = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.tb, ptr noundef %i.td) #15
  %i.tf = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #15 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.tf, ptr noundef nonnull %i.ss, ptr noundef %i.sz, i1 noundef zeroext false, i8 %i.te, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i16 257, ptr %i.sj, align 8
  %i.tg = load ptr, ptr %i.st, align 8, !tbaa !145, !nonnull !94, !align !95 ; 2 uses
  %.sroa.0.0.copyload.i.i124 = load ptr, ptr %i.sv, align 8
  %.sroa.2.0.copyload.i.i126 = load i64, ptr %.sroa.2.0..sroa_idx.i.i122, align 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !144
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(8) %i.tg, ptr noundef nonnull %i.tf, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i.i124, i64 %.sroa.2.0.copyload.i.i126) #15, !inline_history !286
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.sk, ptr noundef nonnull %i.tf) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.tk = call noundef ptr @_ZN4llvm16EscapeEnumerator4NextEv(ptr noundef nonnull align 8 dereferenceable(152) %33) #15 ; 2 uses
  %.not91 = icmp eq ptr %i.tk, null
  br i1 %.not91, label %._crit_edge179, label %bb.ao

._crit_edge179:                                   ; preds = %bb.ao, %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit
  %i.tl = load ptr, ptr %i.al, align 8, !tbaa !293 ; 2 uses
  %i.tm = load ptr, ptr %i.dm, align 8, !tbaa !293 ; 2 uses
  %.not160180 = icmp eq ptr %i.tl, %i.tm
  br i1 %.not160180, label %_ZNSt6vectorISt4pairIPN4llvm8CallInstEPNS1_10AllocaInstEESaIS6_EE5clearEv.exit, label %.lr.ph183

._crit_edge184:                                   ; preds = %.lr.ph183
  %.pre193 = load ptr, ptr %i.al, align 8, !tbaa !52 ; 2 uses
  %.pre194 = load ptr, ptr %i.dm, align 8, !tbaa !127
  %i.tn = icmp eq ptr %.pre194, %.pre193
  br i1 %i.tn, label %_ZNSt6vectorISt4pairIPN4llvm8CallInstEPNS1_10AllocaInstEESaIS6_EE5clearEv.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge184
  store ptr %.pre193, ptr %i.dm, align 8, !tbaa !127
  br label %_ZNSt6vectorISt4pairIPN4llvm8CallInstEPNS1_10AllocaInstEESaIS6_EE5clearEv.exit

_ZNSt6vectorISt4pairIPN4llvm8CallInstEPNS1_10AllocaInstEESaIS6_EE5clearEv.exit: ; preds = %._crit_edge179, %._crit_edge184, %bb.ap
  %i.to = load ptr, ptr %i.ds, align 8, !tbaa !48 ; 2 uses
  %i.tp = load ptr, ptr %i.du, align 8, !tbaa !308
  %.not.i.i108 = icmp eq ptr %i.tp, %i.to
  br i1 %.not.i.i108, label %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm8CallInstEPNS1_10AllocaInstEESaIS6_EE5clearEv.exit
  store ptr %i.to, ptr %i.du, align 8, !tbaa !308
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairImmESaIS1_EE5clearEv.exit:    ; preds = %_ZNSt6vectorISt4pairIPN4llvm8CallInstEPNS1_10AllocaInstEESaIS6_EE5clearEv.exit, %bb.aq
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.rq) #15
end_hunk_0
