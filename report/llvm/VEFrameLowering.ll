Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VEFrameLowering?download=true
inline.NumInlined: 413
inline.NumDeleted: 169
begin_hunk_0_@_ZNK4llvm15VEFrameLowering12emitPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.k, label %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 536
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(316) %i.br, ptr noundef nonnull align 8 dereferenceable(1065) %1) #11, !inline_history !0
  br i1 %i.by, label %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit, label %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit: ; preds = %bb.k
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 528
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(316) %i.br, ptr noundef nonnull align 8 dereferenceable(1065) %1) #11, !inline_history !0
  br i1 %i.cc, label %bb.l, label %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

bb.l:                                             ; preds = %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !151
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -29024
  %i.cg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i32 204) ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0      ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !206, !alias.scope !414
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 198, ptr %i.ck, align 4, !tbaa !15, !alias.scope !414
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false), !alias.scope !414
  store i32 0, ptr %4, align 8, !alias.scope !414
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(1065) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 1, ptr %3, align 8, !alias.scope !415
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(1065) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.k, %bb.j, %bb.l, %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !139, !nonnull !140, !align !141 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(519328) %i.cn) #11, !inline_history !416
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !151
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -10848
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !202
  %i.cx = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr null, i1 noundef zeroext false) #11 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef %i.cx) #11
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8
  %i.cz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.q, ptr %i.db, align 8, !tbaa !203
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.cx, align 8
  %i.dc = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.dd = or disjoint i64 %i.dc, %i.cz
  store i64 %i.dd, ptr %i.cx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.cx, ptr %i.de, align 8, !tbaa !203
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8
  %i.df = ptrtoint ptr %i.cx to i64
  %i.dg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.dh = or disjoint i64 %i.dg, %i.df
  store i64 %i.dh, ptr %i.q, align 8
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !151
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -10880
  %i.dk = load ptr, ptr %i.cv, align 8, !tbaa !202
  %i.dl = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr null, i1 noundef zeroext false) #11 ; 6 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef %i.dl) #11
  %.0.copyload.i.i.i.i.i.i.i.i.i.i13.i = load i64, ptr %i.q, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i13.i, -8 ; 2 uses
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.q, ptr %i.do, align 8, !tbaa !203
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i14.i = load i64, ptr %i.dl, align 8
  %i.dp = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i14.i, 7
  %i.dq = or disjoint i64 %i.dp, %i.dm
  store i64 %i.dq, ptr %i.dl, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dl, ptr %i.dr, align 8, !tbaa !203
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i15.i = load i64, ptr %i.q, align 8
  %i.ds = ptrtoint ptr %i.dl to i64
  %i.dt = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i15.i, 7
  %i.du = or disjoint i64 %i.dt, %i.ds
  store i64 %i.du, ptr %i.q, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK4llvm15VEFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #4 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !235, !noalias !419 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !235, !noalias !419 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !235, !alias.scope !419
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !234, !alias.scope !419
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !421
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !421
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !234, !noalias !419
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !419
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !419
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !234, !noalias !419
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !419
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !419
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !419
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !15, !alias.scope !419
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !419
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !15, !alias.scope !419
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !235, !alias.scope !419
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !234, !alias.scope !419
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #6

declare noundef i64 @_ZNK4llvm11VESubtarget20getAdjustedFrameSizeEm(ptr noundef nonnull align 8 dereferenceable(519328), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm15VEFrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #11
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !430
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %5 = load i32, ptr %4, align 4, !tbaa !431
  %6 = icmp eq i32 %5, 331
  %7 = sub nsw i64 0, %i.h
  %spec.select = select i1 %6, i64 %7, i64 %i.h   ; 2 uses
  %.not = icmp eq i64 %spec.select, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4llvm15VEFrameLowering16emitSPAdjustmentERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElNS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, i64 noundef %spec.select, i16 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !432
  %i.l = and i32 %i.k, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.n, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !432
  %i.q = and i32 %i.p, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !422

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %3, %bb.d ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.n, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !203  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %3, %i.s
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i.i
  %.sroa.03.05.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !203  ; 2 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull %.sroa.03.05.i.i.i) #11
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.w = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !203  ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.aa = or disjoint i64 %i.z, %i.w
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !203
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  store i64 %i.ac, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.u, align 8, !tbaa !203
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull %.sroa.03.05.i.i.i) #11
  %.not.i.i.i = icmp eq ptr %i.v, %i.s
  br i1 %.not.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !423

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  ret ptr %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15VEFrameLowering12emitEpilogueERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MIMetadata", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.c = tail call ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %2, i1 noundef zeroext true) #11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139, !nonnull !140, !align !141 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(519328) %i.g) #11
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !145, !range !146, !noundef !140
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -29024
  %i.r = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 198) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !206, !alias.scope !438
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 196, ptr %i.v, align 4, !tbaa !15, !alias.scope !438
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !438
  store i32 0, ptr %4, align 8, !alias.scope !438
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 1, ptr %3, align 8, !alias.scope !439
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !236
  tail call void @_ZNK4llvm15VEFrameLowering16emitSPAdjustmentERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEElNS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %i.c, i64 noundef %i.z, i16 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZNK4llvm15VEFrameLowering17emitEpilogueInsnsERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %i.c, i64 poison, i1 zeroext poison)
  ret void
}

declare ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm15VEFrameLowering9hasFPImplERKNS_15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !440, !nonnull !140, !align !141 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #11 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !208  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !441, !nonnull !140, !align !141
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1288
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm13TargetOptions23DisableFramePointerElimERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440) %i.k, ptr noundef nonnull align 8 dereferenceable(1065) %1) #11
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 536
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(316) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %1) #11, !inline_history !1
  br i1 %i.p, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 528
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(316) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %1) #11, !inline_history !1
  br i1 %i.t, label %bb.d, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.b, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.v = load i8, ptr %i.u, align 4, !tbaa !229, !range !146, !noundef !140
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 37
  %i.y = load i8, ptr %i.x, align 1, !tbaa !442, !range !146, !noundef !140
  %i.z = trunc nuw i8 %i.y to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, %bb.a
  %i.aa = phi i1 [ true, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread ], [ true, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit ], [ true, %bb.a ], [ %i.z, %bb.c ]
  ret i1 %i.aa
}

declare noundef zeroext i1 @_ZNK4llvm13TargetOptions23DisableFramePointerElimERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i64 } @_ZNK4llvm15VEFrameLowering22getFrameIndexReferenceERKNS_15MachineFunctionEiRNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139, !nonnull !140, !align !141 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(519328) %i.d) #11 ; 6 uses
  %i.i = icmp sgt i32 %2, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sub nsw i32 0, %i.k
  %i.m = icmp slt i32 %2, %i.l
  %.not34 = select i1 %i.i, i1 true, i1 %i.m
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !208  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !443
  %i.r = add i32 %i.q, %2
  %i.s = zext i32 %i.r to i64
end_hunk_0
