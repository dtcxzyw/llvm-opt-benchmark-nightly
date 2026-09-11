Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64SLSHardening?download=true
inline.NumInlined: 1044
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm13ThunkInserterIN12_GLOBAL__N_120SLSHardeningInserterENS1_9ThunksSetEE3runERNS_17MachineModuleInfoERNS_15MachineFunctionE:bb.a
  %i.hx = select i1 %i.gv, i32 536870912, i32 %i.hw ; 2 uses
  %i.hy = load i32, ptr %.0.i5.i.i.i.i, align 4, !tbaa !149, !noalias !482
  %i.hz = and i32 %i.hy, %i.hx
  %.not.i.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i.i, label %bb.u, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i.i

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_19ThunksSet3getENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 25
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !534, !range !150, !noalias !482, !noundef !145
  %i.ic = trunc nuw i8 %i.ib to i1
  switch i32 %i.hk, label %bb.z [
    i32 0, label %_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i
    i32 3, label %bb.v
    i32 4, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  br label %_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  br label %_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i

bb.x:                                             ; preds = %bb.u
  %i.id = icmp eq i32 %.sroa.096.0.i.i.i, 2
  %i.ie = add i32 %.sroa.096.0.i.i.i, -239
  %i.if = icmp eq i32 %.sroa.096.0.i.i.i, 14
  %spec.select.i.i.i68.i.i.i = select i1 %i.if, i32 31, i32 %i.ie
  %.0.i.i.i69.i.i.i = select i1 %i.id, i32 29, i32 %spec.select.i.i.i68.i.i.i
  %i.ig = zext i32 %.0.i.i.i69.i.i.i to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ig
  br label %_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i

bb.y:                                             ; preds = %bb.u
  %i.ii = icmp eq i32 %.sroa.096.0.i.i.i, 2
  %i.ij = add i32 %.sroa.096.0.i.i.i, -239
  %i.ik = icmp eq i32 %.sroa.096.0.i.i.i, 14
  %spec.select.i5.i.i65.i.i.i = select i1 %i.ik, i32 31, i32 %i.ij
  %.0.i6.i.i66.i.i.i = select i1 %i.ii, i32 29, i32 %spec.select.i5.i.i65.i.i.i
  %i.il = zext i32 %.0.i6.i.i66.i.i.i to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.il
  br label %_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i

bb.z:                                             ; preds = %bb.u
  unreachable

_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.0.i5.i67.i.i.i = phi ptr [ %i.im, %bb.y ], [ %i.cb, %bb.v ], [ %i.ca, %bb.w ], [ %i.ih, %bb.x ], [ %23, %bb.u ] ; 2 uses
  %i.in = load i32, ptr %.0.i5.i67.i.i.i, align 4, !tbaa !149, !noalias !482
  %i.io = or i32 %i.in, %i.hx
  store i32 %i.io, ptr %.0.i5.i67.i.i.i, align 4, !tbaa !149, !noalias !482
  %i.ip = load ptr, ptr %20, align 8, !tbaa !514, !noalias !482 ; 2 uses
  %i.iq = load i64, ptr %i.av, align 8, !tbaa !516, !noalias !482 ; 2 uses
  %i.ir = load i8, ptr %i.w, align 4, !tbaa !26, !range !150, !noalias !482, !noundef !145
  %i.is = trunc nuw i8 %i.ir to i1                ; 2 uses
  %i.it = load ptr, ptr %i.cc, align 8, !tbaa !666, !noalias !482 ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !754, !noalias !482, !nonnull !145, !align !146 ; 3 uses
  %i.iv = call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.iu) #17, !noalias !482
  %i.iw = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeEb(ptr noundef %i.iv, i1 noundef zeroext false) #17, !noalias !482
  %i.ix = select i1 %i.is, i32 3, i32 7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17, !noalias !482
  store i8 5, ptr %i.cd, align 8, !tbaa !531, !noalias !482
  store i8 1, ptr %i.ce, align 1, !tbaa !532, !noalias !482
  store ptr %i.ip, ptr %12, align 8, !tbaa !206, !noalias !482
  store i64 %i.iq, ptr %i.cf, align 8, !tbaa !206, !noalias !482
  %i.iy = call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 144) #17, !noalias !482 ; 6 uses
  call void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(140) %i.iy, ptr noundef %i.iw, i32 noundef %i.ix, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull %i.it) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17, !noalias !482
  br i1 %i.is, label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit.i.i.i.i, label %bb.aa

_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !noalias !482 ; 2 uses
  %i.jb = and i32 %i.ja, -49
  %i.jc = and i32 %i.ja, 15
  %.not.i.i.i.i = icmp eq i32 %i.jc, 9
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i32 16, i32 16400
  %spec.select.i.i.i.i = or i32 %spec.select.v.i.i.i.i, %i.jb
  store i32 %spec.select.i.i.i.i, ptr %i.iz, align 8, !noalias !482
  %i.jd = call noundef ptr @_ZN4llvm6Module17getOrInsertComdatENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.it, ptr %i.ip, i64 %i.iq) #17, !noalias !482
  call void @_ZN4llvm12GlobalObject9setComdatEPNS_6ComdatE(ptr noundef nonnull align 8 dereferenceable(60) %i.iy, ptr noundef %i.jd) #17, !noalias !482
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit.i.i.i.i, %_ZN12_GLOBAL__N_19ThunksSet3setENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17, !noalias !482
  store ptr %i.iu, ptr %13, align 8, !tbaa !755, !noalias !482
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !756, !noalias !482
  store i32 0, ptr %i.ci, align 8, !tbaa !757, !noalias !482
  store i32 8, ptr %i.cj, align 4, !tbaa !758, !noalias !482
  %i.je = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %13, i32 noundef 45) #17, !noalias !482 ; 0 uses
  %i.jf = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %13, i32 noundef 21) #17, !noalias !482 ; 0 uses
  br i1 %i.ic, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread3.i.i.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i.i.i: ; preds = %bb.aa
  %i.jg = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %13, ptr nonnull @.str.21, i64 15, ptr nonnull @.str.8, i64 6) #17, !noalias !482 ; 0 uses
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread3.i.i.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread3.i.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i.i.i, %bb.aa
  call void @_ZN4llvm8Function10addFnAttrsERKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(140) %i.iy, ptr noundef nonnull align 8 dereferenceable(88) %13) #17, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17, !noalias !482
  store i8 1, ptr %i.cl, align 1, !tbaa !532, !noalias !482
  store ptr @.str.22, ptr %14, align 8, !tbaa !206, !noalias !482
  store i8 3, ptr %i.ck, align 8, !tbaa !531, !noalias !482
  %i.jh = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19, !noalias !482 ; 4 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr noundef nonnull %i.iy, ptr noundef null) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17, !noalias !482
  %i.ji = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.jh) #17, !noalias !482 ; 2 uses
  store ptr null, ptr %15, align 8, !tbaa !759, !noalias !482
  store ptr %i.ji, ptr %i.co, align 8, !tbaa !755, !noalias !482
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !761, !noalias !482
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !763, !noalias !482
  store ptr null, ptr %i.cr, align 8, !tbaa !772, !noalias !482
  store i32 0, ptr %i.cs, align 8, !tbaa !773, !noalias !482
  store i8 0, ptr %i.ct, align 4, !tbaa !774, !noalias !482
  store i8 2, ptr %i.cu, align 1, !tbaa !775, !noalias !482
  store i8 7, ptr %i.cv, align 2, !tbaa !776, !noalias !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !noalias !482
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.cm, align 8, !tbaa !28, !noalias !482
  store ptr %i.jh, ptr %i.cx, align 8, !tbaa !777, !noalias !482
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  store ptr %i.jj, ptr %i.cy, align 8, !noalias !482
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !482
  %i.jk = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #17, !noalias !482 ; 3 uses
  call void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.jk, ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef null, i32 0, ptr null, i64 0) #17, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17, !noalias !482
  store i16 257, ptr %i.cz, align 8, !noalias !482
  %i.jl = load ptr, ptr %i.cq, align 8, !tbaa !778, !noalias !482, !nonnull !145, !align !146 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !482
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !482
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !28, !noalias !482
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !482
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef nonnull %i.jk, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i.i) #17, !noalias !482, !inline_history !301
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull %i.jk) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17, !noalias !482
  %i.jp = call noundef nonnull align 8 dereferenceable(1065) ptr @_ZN4llvm17MachineModuleInfo26getOrCreateMachineFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(2288) %1, ptr noundef nonnull align 8 dereferenceable(140) %i.iy) #17, !noalias !482
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 320 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !14, !noalias !482
  %i.js = or i64 %i.jr, 8
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !14, !noalias !482
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #17, !noalias !482
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cm) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17, !noalias !482
  %i.jt = load ptr, ptr %i.cg, align 8, !tbaa !756, !noalias !482 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.ch
  br i1 %i.ju, label %_ZN4llvm13ThunkInserterIN12_GLOBAL__N_120SLSHardeningInserterENS1_9ThunksSetEE19createThunkFunctionERNS_17MachineModuleInfoENS_9StringRefEbS7_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread3.i.i.i.i
  call void @free(ptr noundef %i.jt) #17, !noalias !482
  br label %_ZN4llvm13ThunkInserterIN12_GLOBAL__N_120SLSHardeningInserterENS1_9ThunksSetEE19createThunkFunctionERNS_17MachineModuleInfoENS_9StringRefEbS7_.exit.i.i.i

_ZN4llvm13ThunkInserterIN12_GLOBAL__N_120SLSHardeningInserterENS1_9ThunksSetEE19createThunkFunctionERNS_17MachineModuleInfoENS_9StringRefEbS7_.exit.i.i.i: ; preds = %bb.ab, %_ZN4llvmneENS_9StringRefES0_.exit.thread3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17, !noalias !482
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i.i: ; preds = %_ZN4llvm13ThunkInserterIN12_GLOBAL__N_120SLSHardeningInserterENS1_9ThunksSetEE19createThunkFunctionERNS_17MachineModuleInfoENS_9StringRefEbS7_.exit.i.i.i, %_ZN12_GLOBAL__N_19ThunksSet3getENS_9ThunkKind11ThunkKindIdEN4llvm8RegisterES4_.exit.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !496, !noalias !482
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -68384
  %i.jy = load ptr, ptr %i.fx, align 8, !tbaa !201, !noalias !482 ; 2 uses
  %i.jz = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %i.jx, ptr %.sroa.038.0.copyload.i.i.i, i1 noundef zeroext false) #17, !noalias !482 ; 11 uses
  %i.ka = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.016.022.i, ptr nonnull %.sroa.010.016.i.i, ptr noundef %i.jz) #17, !noalias !482 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17, !noalias !482
  store ptr null, ptr %i.da, align 8, !tbaa !214, !alias.scope !779, !noalias !482
  store ptr %i.hj, ptr %i.db, align 8, !tbaa !206, !alias.scope !779, !noalias !482
  store i32 0, ptr %i.dc, align 4, !tbaa !206, !alias.scope !779, !noalias !482
  store i32 0, ptr %i.dd, align 8, !tbaa !206, !alias.scope !779, !noalias !482
  store i32 15, ptr %10, align 8, !alias.scope !779, !noalias !482
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, ptr noundef nonnull align 8 dereferenceable(1065) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %10) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17, !noalias !482
  %i.kb = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.jz) #17, !noalias !482 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.kd = load i24, ptr %i.kc, align 8, !noalias !482 ; 2 uses
  %i.ke = zext i24 %i.kd to i32
  %i.kf = icmp ult i32 %i.kb, %i.ke
  br i1 %i.kf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !499, !noalias !482
  %i.ki = zext nneg i32 %i.kb to i64
  %wide.trip.count.i.i.i = zext i24 %i.kd to i64
  br label %bb.ac

._crit_edge.i.i.i:                                ; preds = %.critedge2.i.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i.i
  %.0102.lcssa.i.i.i = phi i32 [ -1, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i.i ], [ %.2.i.i.i, %.critedge2.i.i.i ] ; 2 uses
  %.0101.lcssa.i.i.i = phi i32 [ -1, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i.i ], [ %.1.i.i.i, %.critedge2.i.i.i ] ; 2 uses
  %.sroa.speculated79.i.i.i = call i32 @llvm.smax.i32(i32 %.0102.lcssa.i.i.i, i32 %.0101.lcssa.i.i.i)
  %.sroa.speculated.i.i.i = call i32 @llvm.smin.i32(i32 %.0101.lcssa.i.i.i, i32 %.0102.lcssa.i.i.i)
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, i32 noundef %.sroa.speculated79.i.i.i) #17, !noalias !482
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, i32 noundef %.sroa.speculated.i.i.i) #17, !noalias !482
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, ptr noundef nonnull align 8 dereferenceable(1065) %i.gl, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.010.016.i.i) #17, !noalias !482
  call void @_ZN4llvm15MachineFunction22moveAdditionalCallInfoEPKNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(1065) %i.gl, ptr noundef nonnull %.sroa.010.016.i.i, ptr noundef nonnull %i.jz) #17, !noalias !482
  %i.kj = load ptr, ptr %i.ge, align 8, !tbaa !499, !noalias !482 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17, !noalias !482
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !206, !noalias !482
  %i.km = load i32, ptr %i.kj, align 8, !noalias !482 ; 2 uses
  %24 = lshr i32 %i.km, 26
  %25 = lshr i32 %i.km, 24
  %.lobit.i.i.peel.i.i = and i32 %25, 1
  %i.kn = xor i32 %.lobit.i.i.peel.i.i, 1
  %i.ko = and i32 %i.kn, %24
  %.not107.i.peel.i.i = icmp eq i32 %i.ko, 0
  store ptr null, ptr %i.de, align 8, !tbaa !214, !alias.scope !780, !noalias !482
  %26 = select i1 %.not107.i.peel.i.i, i32 33554432, i32 100663296
  store i32 %i.kl, ptr %i.df, align 4, !tbaa !206, !alias.scope !780, !noalias !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false), !alias.scope !780, !noalias !482
  store i32 %26, ptr %22, align 8, !alias.scope !780, !noalias !482
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, ptr noundef nonnull align 8 dereferenceable(32) %22) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17, !noalias !482
  br i1 %i.gd, label %.loopexit.i.i, label %bb.ag

bb.ac:                                            ; preds = %.critedge2.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.ki, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.critedge2.i.i.i ] ; 4 uses
  %.0101111.i.i.i = phi i32 [ -1, %.lr.ph.i.i.i ], [ %.1.i.i.i, %.critedge2.i.i.i ] ; 4 uses
  %.0102110.i.i.i = phi i32 [ -1, %.lr.ph.i.i.i ], [ %.2.i.i.i, %.critedge2.i.i.i ] ; 4 uses
  %i.kp = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %indvars.iv.i.i.i ; 2 uses
  %.sroa.072.0.copyload.i.i.i = load i32, ptr %i.kp, align 8, !tbaa !206, !noalias !482 ; 3 uses
  %i.kq = and i32 %.sroa.072.0.copyload.i.i.i, 255
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %bb.ad, label %.critedge2.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %.sroa.6.0.copyload.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !tbaa !206, !noalias !482
  switch i32 %.sroa.6.0.copyload.i.i.i, label %.critedge2.i.i.i [
    i32 6, label %bb.ae
    i32 8, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ks = and i32 %.sroa.072.0.copyload.i.i.i, 16777216
  %.not109.i.i.i = icmp eq i32 %i.ks, 0
  %i.kt = trunc nuw i64 %indvars.iv.i.i.i to i32
  %spec.select.i.i.i = select i1 %.not109.i.i.i, i32 %.0102110.i.i.i, i32 %i.kt
  br label %.critedge2.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ku = and i32 %.sroa.072.0.copyload.i.i.i, 16777216
  %.not108.i.i.i = icmp eq i32 %i.ku, 0
  %i.kv = trunc nuw i64 %indvars.iv.i.i.i to i32
  %spec.select106.i.i.i = select i1 %.not108.i.i.i, i32 %i.kv, i32 %.0101111.i.i.i
  br label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ae ], [ %.0102110.i.i.i, %bb.af ], [ %.0102110.i.i.i, %bb.ac ], [ %.0102110.i.i.i, %bb.ad ] ; 2 uses
  %.1.i.i.i = phi i32 [ %.0101111.i.i.i, %bb.ae ], [ %spec.select106.i.i.i, %bb.af ], [ %.0101111.i.i.i, %bb.ac ], [ %.0101111.i.i.i, %bb.ad ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.ac, !llvm.loop !306

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i
  %i.kw = load ptr, ptr %i.ge, align 8, !tbaa !499, !noalias !482 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17, !noalias !482
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 36
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !206, !noalias !482
  %i.la = load i32, ptr %i.kx, align 8, !noalias !482 ; 2 uses
  %27 = lshr i32 %i.la, 26
  %28 = lshr i32 %i.la, 24
  %.lobit.i.i.i.i = and i32 %28, 1
  %i.lb = xor i32 %.lobit.i.i.i.i, 1
  %i.lc = and i32 %i.lb, %27
  %.not107.i.i.i = icmp eq i32 %i.lc, 0
  store ptr null, ptr %i.de, align 8, !tbaa !214, !alias.scope !780, !noalias !482
  %29 = select i1 %.not107.i.i.i, i32 33554432, i32 100663296
  store i32 %i.kz, ptr %i.df, align 4, !tbaa !206, !alias.scope !780, !noalias !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false), !alias.scope !780, !noalias !482
  store i32 %29, ptr %22, align 8, !alias.scope !780, !noalias !482
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, ptr noundef nonnull align 8 dereferenceable(32) %22) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17, !noalias !482
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.i, %._crit_edge.i.i.i
  %i.ld = call ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.016.022.i, ptr nonnull %.sroa.010.016.i.i) #17, !noalias !482 ; 0 uses
  %i.le = load ptr, ptr %20, align 8, !tbaa !514, !noalias !482 ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.au
  br i1 %i.lf, label %_ZN12_GLOBAL__N_120SLSHardeningInserter14convertBLRToBLERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockENS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS_9ThunksSetE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.le) #17, !noalias !482
  br label %_ZN12_GLOBAL__N_120SLSHardeningInserter14convertBLRToBLERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockENS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS_9ThunksSetE.exit.i.i

_ZN12_GLOBAL__N_120SLSHardeningInserter14convertBLRToBLERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockENS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS_9ThunksSetE.exit.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17, !noalias !482
  br label %_ZL5isBLRRKN4llvm12MachineInstrE.exit.i.i

_ZL5isBLRRKN4llvm12MachineInstrE.exit.i.i:        ; preds = %_ZN12_GLOBAL__N_120SLSHardeningInserter14convertBLRToBLERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockENS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS_9ThunksSetE.exit.i.i, %.preheader.i12.i
  %.not.i14.i = icmp eq ptr %i.fz, %i.fw
  br i1 %.not.i14.i, label %_ZN12_GLOBAL__N_120SLSHardeningInserter10hardenBLRsERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockERNS_9ThunksSetE.exit.i, label %.preheader.i12.i, !llvm.loop !307

_ZN12_GLOBAL__N_120SLSHardeningInserter10hardenBLRsERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockERNS_9ThunksSetE.exit.i: ; preds = %_ZL5isBLRRKN4llvm12MachineInstrE.exit.i.i, %bb.g, %_ZN12_GLOBAL__N_120SLSHardeningInserter19hardenReturnsAndBRsERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockE.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.016.022.i, i64 8
  %.sroa.016.0.i = load ptr, ptr %i.lg, align 8, !tbaa !481, !noalias !482 ; 2 uses
  %.not.i7 = icmp eq ptr %.sroa.016.0.i, %i.ai
  br i1 %.not.i7, label %_ZN12_GLOBAL__N_120SLSHardeningInserter12insertThunksERN4llvm17MachineModuleInfoERNS1_15MachineFunctionENS_9ThunksSetE.exit, label %bb.b

_ZN12_GLOBAL__N_120SLSHardeningInserter12insertThunksERN4llvm17MachineModuleInfoERNS1_15MachineFunctionENS_9ThunksSetE.exit: ; preds = %_ZN12_GLOBAL__N_120SLSHardeningInserter10hardenBLRsERN4llvm17MachineModuleInfoERNS1_17MachineBasicBlockERNS_9ThunksSetE.exit.i, %_ZN12_GLOBAL__N_120SLSHardeningInserter11mayUseThunkERKN4llvm15MachineFunctionE.exit.thread
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 48
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 80
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 96
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 112
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 128
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 144
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 160
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 176
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 192
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 208
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 224
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 240
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 256
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 264
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa_idx, align 8, !tbaa !206
  %i.lh = load <4 x i32>, ptr %23, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lj = load <4 x i32>, ptr %.sroa.7.0..sroa_idx, align 16
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ll = load <4 x i32>, ptr %.sroa.11.0..sroa_idx, align 16
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ln = load <4 x i32>, ptr %.sroa.15.0..sroa_idx, align 16
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.lp = load <4 x i32>, ptr %.sroa.19.0..sroa_idx, align 16
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.lr = load <4 x i32>, ptr %.sroa.23.0..sroa_idx, align 16
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.lt = load <4 x i32>, ptr %.sroa.27.0..sroa_idx, align 16
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.lv = load <4 x i32>, ptr %.sroa.31.0..sroa_idx, align 16
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.lx = load <4 x i32>, ptr %.sroa.35.0..sroa_idx, align 16
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lz = load <4 x i32>, ptr %.sroa.39.0..sroa_idx, align 16
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.mb = load <4 x i32>, ptr %.sroa.43.0..sroa_idx, align 16
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.md = load <4 x i32>, ptr %.sroa.47.0..sroa_idx, align 16
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.mf = load <4 x i32>, ptr %.sroa.51.0..sroa_idx, align 16
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.mh = load <4 x i32>, ptr %.sroa.55.0..sroa_idx, align 16
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.mj = load <4 x i32>, ptr %.sroa.59.0..sroa_idx, align 16
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ml = load <4 x i32>, ptr %.sroa.63.0..sroa_idx, align 16
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.mn = load <2 x i32>, ptr %.sroa.67.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.mo = load <4 x i32>, ptr %0, align 4, !tbaa !149
  %i.mp = or <4 x i32> %i.mo, %i.lh
  store <4 x i32> %i.mp, ptr %0, align 4, !tbaa !149
  %i.mq = load <4 x i32>, ptr %i.li, align 4, !tbaa !149
  %i.mr = or <4 x i32> %i.mq, %i.lj
  store <4 x i32> %i.mr, ptr %i.li, align 4, !tbaa !149
  %i.ms = load <4 x i32>, ptr %i.lk, align 4, !tbaa !149
  %i.mt = or <4 x i32> %i.ms, %i.ll
  store <4 x i32> %i.mt, ptr %i.lk, align 4, !tbaa !149
  %i.mu = load <4 x i32>, ptr %i.lm, align 4, !tbaa !149
  %i.mv = or <4 x i32> %i.mu, %i.ln
  store <4 x i32> %i.mv, ptr %i.lm, align 4, !tbaa !149
  %i.mw = load <4 x i32>, ptr %i.lo, align 4, !tbaa !149
  %i.mx = or <4 x i32> %i.mw, %i.lp
  store <4 x i32> %i.mx, ptr %i.lo, align 4, !tbaa !149
  %i.my = load <4 x i32>, ptr %i.lq, align 4, !tbaa !149
  %i.mz = or <4 x i32> %i.my, %i.lr
  store <4 x i32> %i.mz, ptr %i.lq, align 4, !tbaa !149
  %i.na = load <4 x i32>, ptr %i.ls, align 4, !tbaa !149
  %i.nb = or <4 x i32> %i.na, %i.lt
  store <4 x i32> %i.nb, ptr %i.ls, align 4, !tbaa !149
  %i.nc = load <4 x i32>, ptr %i.lu, align 4, !tbaa !149
  %i.nd = or <4 x i32> %i.nc, %i.lv
  store <4 x i32> %i.nd, ptr %i.lu, align 4, !tbaa !149
  %i.ne = load <4 x i32>, ptr %i.lw, align 4, !tbaa !149
  %i.nf = or <4 x i32> %i.ne, %i.lx
  store <4 x i32> %i.nf, ptr %i.lw, align 4, !tbaa !149
  %i.ng = load <4 x i32>, ptr %i.ly, align 4, !tbaa !149
  %i.nh = or <4 x i32> %i.ng, %i.lz
  store <4 x i32> %i.nh, ptr %i.ly, align 4, !tbaa !149
  %i.ni = load <4 x i32>, ptr %i.ma, align 4, !tbaa !149
  %i.nj = or <4 x i32> %i.ni, %i.mb
  store <4 x i32> %i.nj, ptr %i.ma, align 4, !tbaa !149
  %i.nk = load <4 x i32>, ptr %i.mc, align 4, !tbaa !149
  %i.nl = or <4 x i32> %i.nk, %i.md
  store <4 x i32> %i.nl, ptr %i.mc, align 4, !tbaa !149
  %i.nm = load <4 x i32>, ptr %i.me, align 4, !tbaa !149
  %i.nn = or <4 x i32> %i.nm, %i.mf
  store <4 x i32> %i.nn, ptr %i.me, align 4, !tbaa !149
  %i.no = load <4 x i32>, ptr %i.mg, align 4, !tbaa !149
  %i.np = or <4 x i32> %i.no, %i.mh
  store <4 x i32> %i.np, ptr %i.mg, align 4, !tbaa !149
  %i.nq = load <4 x i32>, ptr %i.mi, align 4, !tbaa !149
  %i.nr = or <4 x i32> %i.nq, %i.mj
  store <4 x i32> %i.nr, ptr %i.mi, align 4, !tbaa !149
  %i.ns = load <4 x i32>, ptr %i.mk, align 4, !tbaa !149
  %i.nt = or <4 x i32> %i.ns, %i.ml
  store <4 x i32> %i.nt, ptr %i.mk, align 4, !tbaa !149
  %i.nu = load <2 x i32>, ptr %i.mm, align 4, !tbaa !149
  %i.nv = or <2 x i32> %i.nu, %i.mn
  store <2 x i32> %i.nv, ptr %i.mm, align 4, !tbaa !149
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !149
  %i.ny = or i32 %i.nx, %.sroa.69.0.copyload
  store i32 %i.ny, ptr %i.nw, align 4, !tbaa !149
  br label %bb.ay

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.nz = tail call { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065) %2) #17 ; 2 uses
  %i.oa = extractvalue { ptr, i64 } %i.nz, 0
  %i.ob = extractvalue { ptr, i64 } %i.nz, 1      ; 2 uses
  %.sroa.speculated4.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ob, i64 20) ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.sroa.speculated4.i.i.i.i ; 7 uses
  %i.od = sub nuw i64 %i.ob, %.sroa.speculated4.i.i.i.i ; 5 uses
  %.not.i.i.i.i8 = icmp ult i64 %i.od, 3
  br i1 %.not.i.i.i.i8, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.thread77.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.oe = load i16, ptr %i.oc, align 1
  %i.of = xor i16 %i.oe, 24929
  %i.og = getelementptr i8, ptr %i.oc, i64 2
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = zext i8 %i.oh to i16
  %i.oj = xor i16 %i.oi, 95
  %i.ok = or i16 %i.of, %i.oj
  %i.ol = icmp ne i16 %i.ok, 0
  %i.om = zext i1 %i.ol to i32
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.thread77.i.i, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit.i.i

_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit.i.i: ; preds = %bb.ai
  %i.oo = load i16, ptr %i.oc, align 1
  %i.op = xor i16 %i.oo, 25185
  %i.oq = getelementptr i8, ptr %i.oc, i64 2
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = zext i8 %i.or to i16
  %i.ot = xor i16 %i.os, 95
  %i.ou = or i16 %i.op, %i.ot
  %i.ov = icmp ne i16 %i.ou, 0
  %i.ow = zext i1 %i.ov to i32
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit28.i.i, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.i.i

_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.thread77.i.i: ; preds = %bb.ai, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %.sroa.17.1.ph.i.i = phi i8 [ 1, %bb.ai ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ]
  %.not.i.i1880.i.i = icmp ult i64 %i.od, 4
  br label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit22.i.i

_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.i.i: ; preds = %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit.i.i
  %.not.i.i18.i.i = icmp eq i64 %i.od, 3
  br i1 %.not.i.i18.i.i, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit28.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.i.i
  %i.oy = load i32, ptr %i.oc, align 1
  %i.oz = icmp ne i32 %i.oy, 1601855841
  %i.pa = zext i1 %i.oz to i32
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit28.i.i, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit22.i.i

_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit22.i.i: ; preds = %bb.aj, %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.thread77.i.i
  %.not.i.i1872.i.i = phi i1 [ %.not.i.i1880.i.i, %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.thread77.i.i ], [ false, %bb.aj ]
  %.sroa.17.2.i.i = phi i8 [ %.sroa.17.1.ph.i.i, %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit16.thread77.i.i ], [ 0, %bb.aj ] ; 2 uses
  %i.pc = trunc nuw i8 %.sroa.17.2.i.i to i1
  %or.cond.i25.i.i = or i1 %.not.i.i1872.i.i, %i.pc
  br i1 %or.cond.i25.i.i, label %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit28.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm12StringSwitchIPKN12_GLOBAL__N_19ThunkKindES4_E10StartsWithENS_13StringLiteralES4_.exit22.i.i
  %i.pd = load i32, ptr %i.oc, align 1
  %i.pe = icmp ne i32 %i.pd, 1601856097
end_hunk_0
