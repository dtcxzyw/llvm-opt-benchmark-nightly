Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FastPreTileConfig?download=true
begin_hunk_0_@_ZN4llvm24X86FastPreTileConfigPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  store i32 -1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i32 0, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 108
  store i32 0, ptr %i.f, align 4, !tbaa !59
  store i32 -1, ptr %i.d, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 0, ptr %i.i, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i32 6, ptr %i.j, align 4, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i32 0, ptr %i.k, align 8, !tbaa !61
  %i.l = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124X86FastPreTileConfigImpl20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !62, !alias.scope !65
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.m, align 8, !tbaa !68, !alias.scope !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.o, align 8, !tbaa !69, !alias.scope !65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.q, ptr %i.p, align 8, !tbaa !62, !alias.scope !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.r, align 8, !tbaa !68, !alias.scope !65
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.s, align 4, !tbaa !70, !alias.scope !65
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.t, align 8, !tbaa !69, !alias.scope !65
  store i32 1, ptr %i.n, align 4, !tbaa !70, !alias.scope !65, !noalias !71
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !8, !alias.scope !65, !noalias !71
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.u) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.e, %bb.d
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZN4llvm10IndexedMapIiNS_20VirtReg2IndexFunctorEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i
  call void @free(ptr noundef %i.w) #18
  br label %_ZN4llvm10IndexedMapIiNS_20VirtReg2IndexFunctorEED2Ev.exit.i

_ZN4llvm10IndexedMapIiNS_20VirtReg2IndexFunctorEED2Ev.exit.i: ; preds = %bb.f, %_ZN4llvm9BitVectorD2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.z = load i32, ptr %i.y, align 4, !tbaa !74   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN12_GLOBAL__N_124X86FastPreTileConfigImplD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm10IndexedMapIiNS_20VirtReg2IndexFunctorEED2Ev.exit.i
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.ac = zext i32 %i.z to i64                    ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  %i.ae = add nuw nsw i64 %i.ac, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #18
  br label %_ZN12_GLOBAL__N_124X86FastPreTileConfigImplD2Ev.exit

_ZN12_GLOBAL__N_124X86FastPreTileConfigImplD2Ev.exit: ; preds = %_ZN4llvm10IndexedMapIiNS_20VirtReg2IndexFunctorEED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124X86FastPreTileConfigImpl20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(192) initializes((32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MIMetadata", align 8  ; 4 uses
  %6 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %7 = alloca %"class.llvm::MIMetadata", align 8  ; 4 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %17 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %18 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %19 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %20 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %21 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %22 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %23 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %24 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %25 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %26 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %27 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %28 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %29 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %30 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %31 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %32 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %33 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %34 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %35 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %36 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %37 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %38 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %39 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %40 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %41 = alloca %"class.llvm::SmallVector.324", align 8 ; 10 uses
  %42 = alloca %"class.llvm::SmallVector.324", align 8 ; 10 uses
  %43 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.c, align 8, !tbaa !188
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !189
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.b, label %bb.cx

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !222
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !223  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !225, !nonnull !226, !align !227 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !228
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 760
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !229
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !230
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !231
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 880
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 18 uses
  store i32 -1, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !58   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.w = zext i32 %i.u to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !60   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !58  ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp eq i32 %i.u, %i.aa
  br i1 %i.ac, label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i32 %i.u, %i.aa
  br i1 %i.ad, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = sub nuw nsw i64 %i.w, %i.ab             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !59
  %.not.i.i.i.i.i = icmp ugt i32 %i.u, %i.ag
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i, !prof !233

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(21) %i.v, ptr noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 4) #18
  %.pre4.pre.i.i.i = load i32, ptr %i.z, align 8, !tbaa !58
  %.pre.i.i = zext i32 %.pre4.pre.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.pre-phi.i.i = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.pre-phi.i.i ; 4 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ae, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i
  %i.ak = shl nuw nsw i64 %i.w, 2
  %44 = add nsw i64 %i.ak, -4
  %45 = shl nuw nsw i64 %i.ab, 2
  %i.al = sub nsw i64 %44, %45                    ; 2 uses
  %i.am = lshr exact i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i
  %n.vec = and i64 %i.an, 9223372036854775800     ; 3 uses
  %i.ao = shl i64 %n.vec, 2
  %i.ap = getelementptr i8, ptr %i.ai, i64 %i.ao
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !234
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4, !tbaa !234
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.y, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !234
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !239

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i = load i32, ptr %i.z, align 8, !tbaa !58
  %i.au = trunc nuw i64 %i.ae to i32
  %i.av = add i32 %.pre.i.i.i, %i.au
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.c, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.sink.i.i = phi i32 [ %i.av, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.u, %bb.c ]
  store i32 %.sink.i.i, ptr %i.z, align 8, !tbaa !58
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:     ; preds = %bb.b, %.sink.split.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !58
  %i.az = mul i32 %i.u, 3                         ; 4 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !61
  %i.ba = add i32 %i.az, 63
  %i.bb = lshr i32 %i.ba, 6                       ; 4 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %.not.i.i.i.i.i20 = icmp ugt i32 %i.bb, %i.bf
  br i1 %.not.i.i.i.i.i20, label %bb.g, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !233

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull %i.bg, i64 noundef %i.bc, i64 noundef 8) #18
  %.pre.i.i.i28 = load i32, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %.pre.i.i29 = zext i32 %.pre.i.i.i28 to i64
  %.pre4.pre.i.pre = load i32, ptr %i.ax, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.pre4.pre.i = phi i32 [ %i.az, %bb.f ], [ %.pre4.pre.i.pre, %bb.g ]
  %.pre-phi.i.i21 = phi i64 [ 0, %bb.f ], [ %.pre.i.i29, %bb.g ]
  %i.bh = phi i32 [ 0, %bb.f ], [ %.pre.i.i.i28, %bb.g ]
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.pre-phi.i.i21
  %.idx.i.i.i.i.i.i.i22 = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %.idx.i.i.i.i.i.i.i22, i1 false), !tbaa !14
  %i.bk = add i32 %i.bh, %i.bb                    ; 2 uses
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !58
  %i.bl = zext i32 %i.bk to i64
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.bm = phi i64 [ 0, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %i.bl, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ]
  %i.bn = phi i32 [ %i.az, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.pre.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ]
  %i.bo = and i32 %i.bn, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nsw i64 -1, %i.bp
  %i.br = xor i64 %i.bq, -1
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bm
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.bw = and i64 %i.bv, %i.br
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  br label %_ZN4llvm9BitVector6resizeEjb.exit

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.077.0111 = load ptr, ptr %i.bx, align 8, !tbaa !240 ; 2 uses
  %.not80112 = icmp eq ptr %.sroa.077.0111, %i.by
  br i1 %.not80112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9BitVector6resizeEjb.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %42, i64 12 ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_124X86FastPreTileConfigImpl16canonicalizePHIsERN4llvm17MachineBasicBlockE.exit, %_ZN4llvm9BitVector6resizeEjb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  store ptr %i.cc, ptr %43, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !58
  %i.ce = getelementptr inbounds nuw i8, ptr %43, i64 12
  store i32 8, ptr %i.ce, align 4, !tbaa !59
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_15MachineFunctionENS_11GraphTraitsIS2_EEE10InitializeERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.cf = load ptr, ptr %43, align 8, !tbaa !57, !noalias !241 ; 2 uses
  %i.cg = load i32, ptr %i.cd, align 8, !tbaa !58, !noalias !241 ; 2 uses
  %.not81114 = icmp eq i32 %i.cg, 0
  br i1 %.not81114, label %._crit_edge119.thread, label %.lr.ph118

.lr.ph118:                                        ; preds = %._crit_edge
  %i.ch = zext i32 %i.cg to i64
  %.idx = shl nuw nsw i64 %i.ch, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx
  %i.cj = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %41, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %35, i64 8
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_124X86FastPreTileConfigImpl16canonicalizePHIsERN4llvm17MachineBasicBlockE.exit
  %.sroa.077.0113 = phi ptr [ %.sroa.077.0111, %.lr.ph ], [ %.sroa.077.0, %_ZN12_GLOBAL__N_124X86FastPreTileConfigImpl16canonicalizePHIsERN4llvm17MachineBasicBlockE.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  store ptr %i.bz, ptr %42, align 8, !tbaa !57
  store i32 0, ptr %i.ca, align 8, !tbaa !58
  store i32 8, ptr %i.cb, align 4, !tbaa !59
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.077.0113, i64 56
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.077.0113, i64 48 ; 2 uses
  %.sroa.052.069.i = load ptr, ptr %i.dd, align 8, !tbaa !246 ; 2 uses
  %.not6370.i = icmp eq ptr %.sroa.052.069.i, %i.de
  br i1 %.not6370.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.052.071.i = phi ptr [ %.sroa.052.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.052.069.i, %bb.i ] ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.052.071.i, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !251
  switch i32 %i.dg, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i [
    i32 74, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.di = getelementptr i8, ptr %.sroa.052.071.i, i64 32
  %.val.i = load ptr, ptr %i.di, align 8, !tbaa !263 ; 2 uses
  %i.dj = load i32, ptr %.val.i, align 8
  %i.dk = and i32 %i.dj, 255
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.k, label %_ZL12isTileRegDefPN4llvm19MachineRegisterInfoERNS_12MachineInstrE.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !264 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %_ZL12isTileRegDefPN4llvm19MachineRegisterInfoERNS_12MachineInstrE.exit.i, label %_ZL12isTileRegDefPN4llvm19MachineRegisterInfoERNS_12MachineInstrE.exit.thread.i

_ZL12isTileRegDefPN4llvm19MachineRegisterInfoERNS_12MachineInstrE.exit.i: ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
end_hunk_0
begin_hunk_1_@_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE4initES7_:bb.a
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS3_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS8_NS_14iterator_rangeIPS8_EEEEERSE_DpOT_.exit, %_ZN4llvm18PostOrderTraversalIPNS_15MachineFunctionENS_9po_detail9NumberSetIPNS_17MachineBasicBlockEEEE10insertEdgeESt8optionalIS6_ES6_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_124X86FastPreTileConfigImpl10convertPHIEPN4llvm17MachineBasicBlockERNS1_12MachineInstrE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #0 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit118:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %26 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %27 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %28 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %30 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %31 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %32 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %33 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %34 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %35 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %36 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %37 = alloca %"class.llvm::ShapeT", align 8     ; 8 uses
  %38 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %39 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %40 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4800), ptr nonnull @.str.2, i64 0) #18 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !246
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !288
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !528  ; 8 uses
  %i.m = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr null, i1 noundef zeroext false) #18 ; 8 uses
  %i.n = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %i.f, ptr noundef %i.m) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  %i.o = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !294, !alias.scope !529
  %i.p = getelementptr inbounds nuw i8, ptr %36, i64 4
  store i32 %i.d, ptr %i.p, align 4, !tbaa !264, !alias.scope !529
  %i.q = getelementptr inbounds nuw i8, ptr %36, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !alias.scope !529
  store i32 16777216, ptr %36, align 8, !alias.scope !529
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(1065) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.s = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.r, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 448), ptr nonnull @.str.2, i64 0) #18 ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !246
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !288
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !528  ; 8 uses
  %i.y = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr null, i1 noundef zeroext false) #18 ; 8 uses
  %i.z = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %i.t, ptr noundef %i.y) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !294, !alias.scope !532
  %i.ab = getelementptr inbounds nuw i8, ptr %35, i64 4
  store i32 %i.s, ptr %i.ab, align 4, !tbaa !264, !alias.scope !532
  %i.ac = getelementptr inbounds nuw i8, ptr %35, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !alias.scope !532
  store i32 16777216, ptr %35, align 8, !alias.scope !532
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(1065) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.ae = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ad, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 448), ptr nonnull @.str.2, i64 0) #18 ; 3 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !246
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !288
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !528 ; 8 uses
  %i.ak = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr null, i1 noundef zeroext false) #18 ; 8 uses
  %i.al = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %i.af, ptr noundef %i.ak) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  %i.am = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !294, !alias.scope !535
  %i.an = getelementptr inbounds nuw i8, ptr %34, i64 4
  store i32 %i.ae, ptr %i.an, align 4, !tbaa !264, !alias.scope !535
  %i.ao = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !535
  store i32 16777216, ptr %34, align 8, !alias.scope !535
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(1065) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !75, !noalias !538 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !278, !noalias !538 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !74, !noalias !538 ; 4 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit.i.i, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit118
  %i.aw = add i32 %i.au, -1                       ; 2 uses
  %i.ax = ptrtoint ptr %2 to i64
  %i.ay = mul i64 %i.ax, -4658895280553007687     ; 2 uses
  %i.az = lshr i64 %i.ay, 31
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.aw, %i.bb                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.bd ; 2 uses
  %i.bf = lshr i64 %i.bd, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !234
  %i.bi = and i32 %i.bc, 31
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !543

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.bl = phi ptr [ %i.br, %bb.b ], [ %i.be, %bb.a ] ; 2 uses
  %.0165.i.i.i = phi i32 [ %i.bp, %bb.b ], [ %i.bc, %bb.a ]
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !272
  %i.bn = icmp eq ptr %2, %i.bm
  br i1 %i.bn, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixEOS3_.exit, label %bb.b, !prof !269

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.bo = add nuw i32 %.0165.i.i.i, 1
  %i.bp = and i32 %i.bo, %i.aw                    ; 3 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.bq ; 2 uses
  %i.bs = lshr i64 %i.bq, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !234
  %i.bv = and i32 %i.bp, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !544, !llvm.loop !545

.loopexit.i.i:                                    ; preds = %bb.b, %bb.a, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit118
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.be, %bb.a ], [ null, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit118 ], [ %i.br, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !546
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.val5.i.i.i = load i32, ptr %i.by, align 8, !tbaa !277
  %i.bz = shl i32 %.val5.i.i.i, 2
  %i.ca = add i32 %i.bz, 4
  %i.cb = mul i32 %i.au, 3
  %.not.i.i.i = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i, label %bb.c, !prof !269

bb.c:                                             ; preds = %.loopexit.i.i
  %i.cc = shl i32 %i.au, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i32 noundef %i.cc)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !546
  %.val4.i.pre.i.i = load ptr, ptr %i.ar, align 8, !tbaa !278
  %.val7.i.pre.i.i = load ptr, ptr %i.ap, align 8, !tbaa !75
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i: ; preds = %bb.c, %.loopexit.i.i
  %.val7.i.i.i = phi ptr [ %.val7.i.pre.i.i, %bb.c ], [ %i.aq, %.loopexit.i.i ]
  %.val4.i.i.i = phi ptr [ %.val4.i.pre.i.i, %bb.c ], [ %i.as, %.loopexit.i.i ]
  %i.cd = phi ptr [ %.pre.i.i.i, %bb.c ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.val7.i.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24                ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 31
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = lshr i64 %i.ch, 5
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !234
  %i.co = or i32 %i.ck, %i.cn
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !234
  %.val.i.i.i.i = load i32, ptr %i.by, align 8, !tbaa !277
  %i.cp = add i32 %.val.i.i.i.i, 1
  store i32 %i.cp, ptr %i.by, align 8, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.cd, align 8, !tbaa !272
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cq, i8 0, i64 12, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixEOS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixEOS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.cd, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i ], [ %i.bl, %.lr.ph.i.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  store i32 %i.s, ptr %i.cr, align 4, !tbaa !234
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12
  store i32 %i.ae, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !234
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !234
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ct = load i24, ptr %i.cs, align 8            ; 2 uses
  %i.cu = zext i24 %i.ct to i32
  %.not230 = icmp eq i24 %i.ct, 1
  br i1 %.not230, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixEOS3_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %bb.s, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixEOS3_.exit
  %i.fa = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #18 ; 2 uses
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.fc = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.fb, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4800), ptr nonnull @.str.2, i64 0) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %39, i8 0, i64 32, i1 false)
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !288
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -83264
  %i.fh = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i32 %i.fc) ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  store i32 1, ptr %33, align 8, !alias.scope !547
  %i.fk = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr null, ptr %i.fk, align 8, !tbaa !294, !alias.scope !547
  %i.fl = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 64, ptr %i.fl, align 8, !tbaa !264, !alias.scope !547
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fj, ptr noundef nonnull align 8 dereferenceable(1065) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !263
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, i8 0, i64 32, i1 false)
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !288
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -12992
  %i.fu = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i32 %i.fp) ; 2 uses
  %i.fv = extractvalue { ptr, ptr } %i.fu, 0      ; 7 uses
  %i.fw = extractvalue { ptr, ptr } %i.fu, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  %i.fx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr null, ptr %i.fx, align 8, !tbaa !294, !alias.scope !550
  %i.fy = getelementptr inbounds nuw i8, ptr %32, i64 4
  store i32 %i.s, ptr %i.fy, align 4, !tbaa !264, !alias.scope !550
  %i.fz = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false), !alias.scope !550
  store i32 0, ptr %32, align 8, !alias.scope !550
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.ga = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr null, ptr %i.ga, align 8, !tbaa !294, !alias.scope !553
  %i.gb = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 %i.ae, ptr %i.gb, align 4, !tbaa !264, !alias.scope !553
  %i.gc = getelementptr inbounds nuw i8, ptr %31, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false), !alias.scope !553
  store i32 0, ptr %31, align 8, !alias.scope !553
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.gd = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr null, ptr %i.gd, align 8, !tbaa !294, !alias.scope !556
  %i.ge = getelementptr inbounds nuw i8, ptr %30, i64 4
  store i32 %i.d, ptr %i.ge, align 4, !tbaa !264, !alias.scope !556
  %i.gf = getelementptr inbounds nuw i8, ptr %30, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i8 0, i64 16, i1 false), !alias.scope !556
  store i32 0, ptr %30, align 8, !alias.scope !556
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store i32 1, ptr %29, align 8, !alias.scope !559
  %i.gg = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %i.gg, align 8, !tbaa !294, !alias.scope !559
  %i.gh = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 1, ptr %i.gh, align 8, !tbaa !264, !alias.scope !559
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store i32 1, ptr %27, align 8, !alias.scope !562
  %i.gi = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !263
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 160 ; 3 uses
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i32 %i.fc) #18
  %i.gm = load i32, ptr %i.gl, align 8
  %i.gn = or i32 %i.gm, 67108864
  store i32 %i.gn, ptr %i.gl, align 8
  %i.go = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18 ; 0 uses
  %i.gp = load ptr, ptr %i.ap, align 8, !tbaa !75, !noalias !565
  %i.gq = load ptr, ptr %i.ar, align 8, !tbaa !278, !noalias !565 ; 2 uses
  %i.gr = load i32, ptr %i.at, align 4, !tbaa !74, !noalias !565 ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5eraseERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.gt = add i32 %i.gr, -1                       ; 2 uses
  %i.gu = ptrtoint ptr %2 to i64
  %i.gv = mul i64 %i.gu, -4658895280553007687     ; 2 uses
  %i.gw = lshr i64 %i.gv, 31
  %i.gx = xor i64 %i.gw, %i.gv
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = and i32 %i.gt, %i.gy                    ; 3 uses
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = lshr i64 %i.ha, 5
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !234
  %i.he = and i32 %i.gz, 31
  %i.hf = lshr i32 %i.hd, %i.he
  %i.hg = trunc i32 %i.hf to i1
  br i1 %i.hg, label %.lr.ph.i.i.i119, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5eraseERKS3_.exit, !prof !543

.lr.ph.i.i.i119:                                  ; preds = %bb.d, %bb.e
  %i.hh = phi i64 [ %i.hn, %bb.e ], [ %i.ha, %bb.d ]
  %.0113.i.i.i = phi i32 [ %i.hm, %bb.e ], [ %i.gz, %bb.d ]
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %i.hh ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !272
end_hunk_1
begin_hunk_2_@_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75, !noalias !661 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278, !noalias !661 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !74, !noalias !661 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !234
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !543

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.0165 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !272
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !269

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.0165, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !234
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !544, !llvm.loop !545

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !546
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #9 align 2 {
_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.8", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !75
  store ptr %i.y, ptr %i.q, align 8, !tbaa !278
  store i32 0, ptr %i.p, align 16, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !546
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !8
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !234 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !234
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !234
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #9 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !74  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !278 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !75
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !74
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i23 = icmp eq i64 %i.h, 0
  br i1 %.not.i23, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !234  ; 2 uses
  %.not11.i21 = icmp eq i32 %i.j, 0
  br i1 %.not11.i21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.k = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i22 = phi i32 [ %i.j, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i22, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !272  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !234
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.014.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !234
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !666

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.val12, i64 %.lcssa12.i ; 2 uses
  store ptr %i.p, ptr %i.am, align 8, !tbaa !272
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false), !tbaa.struct !667
  %i.ap = shl nuw i32 1, %.lcssa.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !234
  %i.as = or i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !234
  %i.at = add i32 %.0.i22, -1
  %i.au = and i32 %i.at, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !668

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !669

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !74
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.aw, align 8, !tbaa !277
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.ax, align 8, !tbaa !277
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.az = load ptr, ptr %1, align 8, !tbaa !75
  %i.ba = zext i32 %i.av to i64                   ; 2 uses
  %i.bb = mul nuw nsw i64 %i.ba, 24
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #18
  store i32 0, ptr %i.b, align 4, !tbaa !74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !620
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !264  ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = and i32 %i.c, 2147483647
  %i.g = zext nneg i32 %i.f to i64
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.l = zext nneg i32 %i.c to i64
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %.0.in.i.i.i.i = select i1 %i.d, ptr %i.j, ptr %i.n
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8, !tbaa !292 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %.0.i.i.i.i, align 8
  %i.p = and i32 %i.o, 16777216
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !264  ; 3 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i4.i.i.i.i, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 16777216
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.b
  %.sroa.014.021.i.ph = phi ptr [ %i.r, %bb.d ], [ %.0.i.i.i.i, %bb.b ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.sroa.014.021.i = phi ptr [ %i.ak, %bb.h ], [ %.sroa.014.021.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !294  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !282
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !283
  %i.aa = and i64 %i.z, 8192
  %.not19.i = icmp eq i64 %i.aa, 0
  br i1 %.not19.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !263 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 255
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !264
  br label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !264 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 16777216
  %.not.i.i.i13.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i13.i, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit, label %.lr.ph.i

_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit: ; preds = %bb.g, %bb.h, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.3.i = phi i64 [ -1, %bb.e ], [ %i.ai, %bb.f ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.h ], [ -1, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.3.i, ptr %i.an, align 8, !tbaa !670
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !622
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !264 ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  %i.at = and i32 %i.ar, 2147483647
  %i.au = zext nneg i32 %i.at to i64
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = load ptr, ptr %i.k, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %.0.in.i.i.i.i2 = select i1 %i.as, ptr %i.ax, ptr %i.ba
  %.0.i.i.i.i3 = load ptr, ptr %.0.in.i.i.i.i2, align 8, !tbaa !292 ; 4 uses
  %.not.i.i.i.i4 = icmp eq ptr %.0.i.i.i.i3, null
  br i1 %.not.i.i.i.i4, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16, label %bb.i

bb.i:                                             ; preds = %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit
  %i.bb = load i32, ptr %.0.i.i.i.i3, align 8
  %i.bc = and i32 %i.bb, 16777216
  %.not.i.i.i.i.i5 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i5, label %bb.j, label %.lr.ph.i8.preheader

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i3, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !264 ; 3 uses
  %.not.i4.i.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i4.i.i.i.i14, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, 16777216
  %.not.i.i.i.i.i.i15 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i15, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %bb.k, %bb.i
  %.sroa.014.021.i9.ph = phi ptr [ %i.be, %bb.k ], [ %.0.i.i.i.i3, %bb.i ]
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %bb.o
  %.sroa.014.021.i9 = phi ptr [ %i.bx, %bb.o ], [ %.sroa.014.021.i9.ph, %.lr.ph.i8.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i9, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !294 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !282
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !283
  %i.bn = and i64 %i.bm, 8192
  %.not19.i10 = icmp eq i64 %i.bn, 0
  br i1 %.not19.i10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !263 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = and i32 %i.br, 255
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.m, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !264
  br label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16

bb.n:                                             ; preds = %.lr.ph.i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i9, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !264 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i12, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 16777216
  %.not.i.i.i13.i13 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i13.i13, label %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16, label %.lr.ph.i8

_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit16: ; preds = %bb.n, %bb.o, %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit, %bb.j, %bb.k, %bb.l, %bb.m
  %.3.i11 = phi i64 [ -1, %bb.l ], [ %i.bv, %bb.m ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %_ZZN4llvm6ShapeT9deduceImmEPKNS_19MachineRegisterInfoEENKUlNS_8RegisterEE_clES4_.exit ], [ -1, %bb.o ], [ -1, %bb.n ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.3.i11, ptr %i.ca, align 8, !tbaa !671
  ret void
}

declare noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728), i64 noundef, i8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEN12_GLOBAL__N_124X86FastPreTileConfigImpl7PHIInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !277
  %i.b = add i32 %.val.i, -1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !277
  %.val35 = load ptr, ptr %0, align 8, !tbaa !75  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.c, align 8, !tbaa !278 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.d, align 4, !tbaa !74
  %i.e = add i32 %.val, -1                        ; 4 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %.val35 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = add i32 %i.j, 1
  %i.l = and i32 %i.k, %i.e                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !234
  %i.q = and i32 %i.l, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.am, %bb.c ], [ %i.m, %bb.a ]
  %i.t = phi i32 [ %i.al, %bb.c ], [ %i.l, %bb.a ] ; 3 uses
  %.04 = phi i32 [ %.2, %bb.c ], [ %i.j, %bb.a ]  ; 3 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val35, i64 %.pn ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !272  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = sub i32 %.04, %i.aa
  %i.ac = and i32 %i.ab, %i.e
  %i.ad = sub i32 %i.t, %i.aa
  %i.ae = and i32 %i.ad, %i.e
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ag = zext i32 %.04 to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val35, i64 %i.ag ; 2 uses
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !272
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false), !tbaa.struct !667
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.04, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.ak = add i32 %i.t, 1
  %i.al = and i32 %i.ak, %i.e                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !234
  %i.aq = and i32 %i.al, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ %i.j, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.at = and i32 %.0.lcssa, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = xor i32 %i.au, -1
  %i.aw = lshr i32 %.0.lcssa, 5
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !234
  %i.ba = and i32 %i.az, %i.av
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !234
  ret void
}

declare noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728), i64 noundef, i8, i1 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvmL17addFrameReferenceERKNS_19MachineInstrBuilderEii(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i32 noundef %1, i32 noundef range(i32 0, 49) %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %9 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !672  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !528  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !230  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !283
  %i.m = lshr i64 %i.l, 19
  %i.n = trunc i64 %i.m to i16
  %.1 = and i16 %i.n, 3
  %i.o = zext nneg i32 %2 to i64                  ; 2 uses
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1065) %i.f, i32 noundef %1, i64 noundef %i.o) #18
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !674
  %i.s = add i32 %i.r, %1
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !694
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !695  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.0.0.copyload.i = load i8, ptr %i.y, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  %i.z = icmp ugt i64 %i.x, 4611686018427387899
  %i.aa = select i1 %i.z, i64 -4611686018427387906, i64 %i.x
  %i.ab = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.f, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %8, i16 noundef zeroext %.1, i64 %i.aa, i8 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !672
  %i.ad = load ptr, ptr %0, align 8, !tbaa !698
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 5, ptr %7, align 8, !alias.scope !699
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !294, !alias.scope !699
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %1, ptr %i.af, align 8, !tbaa !264, !alias.scope !699
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(1065) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !672
  %i.ah = load ptr, ptr %0, align 8, !tbaa !698
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i32 1, ptr %6, align 8, !alias.scope !702
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !294, !alias.scope !702
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1, ptr %i.aj, align 8, !tbaa !264, !alias.scope !702
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !672
  %i.al = load ptr, ptr %0, align 8, !tbaa !698
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(1065) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !672
  %i.an = load ptr, ptr %0, align 8, !tbaa !698
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 1, ptr %4, align 8, !alias.scope !705
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !294, !alias.scope !705
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.o, ptr %i.ap, align 8, !tbaa !264, !alias.scope !705
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !672
  %i.ar = load ptr, ptr %0, align 8, !tbaa !698
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !672
  %i.at = load ptr, ptr %0, align 8, !tbaa !698
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.at, ptr noundef %i.ab) #18
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !270
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !528  ; 7 uses
  %.sroa.02.0.copyload.i10 = load ptr, ptr %2, align 8, !tbaa !651
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.02.0.copyload.i10, i1 noundef zeroext false) #18 ; 13 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef %i.f) #18 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !652  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.i) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !656  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.k) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !657  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef %i.f) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !246
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.s = or disjoint i64 %i.r, %i.o
  store i64 %i.s, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.f, ptr %i.t, align 8, !tbaa !246
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.w = or disjoint i64 %i.v, %i.u
  store i64 %i.w, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !652  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.y, null
  br i1 %.not.i.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.y) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !656 ; 2 uses
  %.not7.i.i12 = icmp eq ptr %i.aa, null
  br i1 %.not7.i.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.aa) #18
  br label %bb.k
end_hunk_2
