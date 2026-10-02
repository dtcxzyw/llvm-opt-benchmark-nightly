Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPToLLVMIRTranslation?download=true
inline.NumInlined: 22650
inline.NumDeleted: 9700
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZL14convertOmpSimdRN4mlir9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE:bb.a
  %i.f = alloca ptr, align 8                      ; 4 uses
  %93 = alloca %"class.llvm::Expected", align 8   ; 10 uses
  %94 = alloca %"class.llvm::SmallVector.1723", align 8 ; 9 uses
  %i.g = tail call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #31
  store ptr %0, ptr %72, align 8
  %i.h = tail call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.et

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  call void @_ZN15PrivateVarsInfoC2IN4mlir3omp6SimdOpEEET_(ptr noundef nonnull align 8 dereferenceable(208) %73, ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31
  %i.j = call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp25BlockArgOpenMPOpInterfaceENS1_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  store ptr %0, ptr %74, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %74, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = call { ptr, i64 } @_ZN4mlir3omp25BlockArgOpenMPOpInterface21getReductionBlockArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %74) #31
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31
  %i.n = call i64 @_ZN4mlir3omp6SimdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef 6) #31 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.n, 32 ; 5 uses
  %i.o = trunc nuw i64 %.sroa.5.0.extract.shift.i.i.i to i32
  %i.p = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 4 uses
  store ptr %i.p, ptr %76, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %76, i64 12
  store i32 6, ptr %i.r, align 4, !tbaa !69
  %i.s = icmp eq i64 %.sroa.5.0.extract.shift.i.i.i, 0
  br i1 %i.s, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp ugt i64 %i.n, 30064771071
  br i1 %i.t, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %76, ptr noundef nonnull %i.p, i64 noundef %.sroa.5.0.extract.shift.i.i.i, i64 noundef 8) #31
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !70
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %.sroa.5.0.extract.shift.i.i.i, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %76, align 8, !tbaa !68
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.c
  %i.u = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.p, %bb.c ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.pre-phi.i.i3.i
  %i.w = sub nsw i64 %.sroa.5.0.extract.shift.i.i.i, %.pre-phi.i.i3.i
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.x, i1 false), !tbaa !198
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i
  store i32 %i.o, ptr %i.q, align 8, !tbaa !70
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2Em.exit:  ; preds = %bb.b, %.sink.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31
  %i.y = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 3 uses
  store ptr %i.y, ptr %77, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 4 uses
  store i32 0, ptr %i.z, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %77, i64 12 ; 3 uses
  store i32 3, ptr %i.aa, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 3 uses
  store ptr %i.ab, ptr %78, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 7 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %78, i64 12 ; 3 uses
  store i32 6, ptr %i.ad, align 4, !tbaa !69
  %.sroa.080.0.copyload = load ptr, ptr %72, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  store ptr %.sroa.080.0.copyload, ptr %70, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #31
  %i.ae = call { ptr, i8 } @_ZN4mlir3omp6SimdOp16getReductionSymsEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #31 ; 2 uses
  %i.af = extractvalue { ptr, i8 } %i.ae, 0
  store ptr %i.af, ptr %71, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.ah = extractvalue { ptr, i8 } %i.ae, 1       ; 2 uses
  store i8 %i.ah, ptr %i.ag, align 8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %_ZL21collectReductionDeclsIN4mlir3omp6SimdOpEEvT_RN4llvm15SmallVectorImplINS1_18DeclareReductionOpEEE.exit

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2Em.exit
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !70
  %i.ak = zext i32 %i.aj to i64
  %i.al = call i64 @_ZN4mlir3omp6SimdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %70, i32 noundef 6) #31
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.al, 32
  %i.am = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i.i.i, %i.ak ; 2 uses
  %i.an = load i32, ptr %i.ad, align 4, !tbaa !69
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp samesign ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir3omp18DeclareReductionOpEE7reserveEm.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull %i.ab, i64 noundef %i.am, i64 noundef 8) #31
  br label %_ZN4llvm15SmallVectorImplIN4mlir3omp18DeclareReductionOpEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir3omp18DeclareReductionOpEE7reserveEm.exit.i: ; preds = %bb.e, %bb.d
  %i.aq = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %71) #31, !noalias !2732
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %i.as = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %71) #31, !noalias !2732 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %.not17.i = icmp eq ptr %i.ar, %i.av
  br i1 %.not17.i, label %_ZL21collectReductionDeclsIN4mlir3omp6SimdOpEEvT_RN4llvm15SmallVectorImplINS1_18DeclareReductionOpEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3omp18DeclareReductionOpEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp18DeclareReductionOpELb1EE9push_backES3_.exit.i
  %.sroa.012.018.i = phi ptr [ %i.bj, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp18DeclareReductionOpELb1EE9push_backES3_.exit.i ], [ %i.ar, %_ZN4llvm15SmallVectorImplIN4mlir3omp18DeclareReductionOpEE7reserveEm.exit.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.012.018.i, align 8, !tbaa !196
  %i.aw = load ptr, ptr %70, align 8, !tbaa !195
  %i.ax = call noundef ptr @_ZN4mlir11SymbolTable23lookupNearestSymbolFromEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef %i.aw, ptr %.sroa.0.0.copyload.i.i.i) #31 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp18DeclareReductionOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !121
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !122
  %i.bb = icmp eq ptr %i.ba, @_ZN4mlir6detail14TypeIDResolverINS_3omp18DeclareReductionOpEvE2idE
  %spec.select.i.i.i.i.i = select i1 %i.bb, ptr %i.ax, ptr null
  br label %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp18DeclareReductionOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit.i

_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp18DeclareReductionOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.f ], [ null, %.lr.ph.i ] ; 2 uses
  %i.bc = load i32, ptr %i.ac, align 8, !tbaa !70 ; 2 uses
  %i.bd = load i32, ptr %i.ad, align 4, !tbaa !69
  %.not.i.i = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !91

bb.g:                                             ; preds = %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp18DeclareReductionOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp18DeclareReductionOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr %.sroa.0.0.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp18DeclareReductionOpELb1EE9push_backES3_.exit.i

bb.h:                                             ; preds = %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp18DeclareReductionOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit.i
  %i.be = zext i32 %i.bc to i64
  %i.bf = load ptr, ptr %78, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.bg, align 1
  %i.bh = load i32, ptr %i.ac, align 8, !tbaa !70
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ac, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp18DeclareReductionOpELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp18DeclareReductionOpELb1EE9push_backES3_.exit.i: ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, %i.av
  br i1 %.not.i, label %_ZL21collectReductionDeclsIN4mlir3omp6SimdOpEEvT_RN4llvm15SmallVectorImplINS1_18DeclareReductionOpEEE.exit, label %.lr.ph.i

_ZL21collectReductionDeclsIN4mlir3omp6SimdOpEEvT_RN4llvm15SmallVectorImplINS1_18DeclareReductionOpEEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp18DeclareReductionOpELb1EE9push_backES3_.exit.i, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2Em.exit, %_ZN4llvm15SmallVectorImplIN4mlir3omp18DeclareReductionOpEE7reserveEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %70)
  call void @_ZN4mlir3omp6SimdOp17getReductionByrefEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.524") align 8 %79, ptr noundef nonnull align 8 dereferenceable(8) %72) #31
  %i.bk = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !190, !range !118, !noundef !119
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %79, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %79, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.0.0.i = select i1 %i.bm, ptr %.sroa.0.0.copyload.i, ptr null ; 2 uses
  %.sroa.4.0.i = select i1 %i.bm, i64 %.sroa.4.0.copyload.i, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 496 ; 2 uses
  %.val = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 504 ; 2 uses
  %.val156 = load i32, ptr %i.bo, align 8
  call fastcc void @_ZL21findAllocInsertPointsRN4llvm13IRBuilderBaseERN4mlir4LLVM17ModuleTranslationEPNS_15SmallVectorImplIPNS_10BasicBlockEEE(ptr dead_on_unwind noalias writable align 8 %80, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %.val, i32 %.val156, ptr noundef null)
  %.sroa.079.0.copyload = load ptr, ptr %72, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  %i.bp = load ptr, ptr %80, align 8, !tbaa !605, !noalias !2733 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !467, !noalias !2733 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24
  store ptr %i.bp, ptr %63, align 8, !tbaa !605, !noalias !2733
  %i.bt = getelementptr inbounds nuw i8, ptr %63, i64 8
  store ptr %i.br, ptr %i.bt, align 8, !noalias !2733
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !2733
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bs) #31, !noalias !2733
  %.sroa.013.0.copyload.i = load ptr, ptr %i.bu, align 8, !tbaa !188, !noalias !2733
  %i.bv = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %64, i64 33
  store i8 1, ptr %i.bw, align 1, !tbaa !142, !noalias !2733
  store ptr @.str.39, ptr %64, align 8, !tbaa !105, !noalias !2733
  store i8 3, ptr %i.bv, align 8, !tbaa !141, !noalias !2733
  %i.bx = call noundef ptr @_ZN4llvm7splitBBENS_13IRBuilderBase11InsertPointEbNS_8DebugLocENS_5TwineE(ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %63, i1 noundef zeroext true, ptr %.sroa.013.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %64) #31, !noalias !2733 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 41 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !187, !noalias !2733 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 30 uses
  %.sroa.0.0.copyload.i.i.i170 = load ptr, ptr %i.ca, align 8, !noalias !2733 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 35 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2733
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i.i.i to i16
  %i.cb = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #31, !noalias !2733
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !467, !noalias !2733 ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !466, !noalias !2733
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !187, !noalias !2733
  store ptr %i.cc, ptr %i.ca, align 8, !noalias !2733
  store i16 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2733
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cd) #31, !noalias !2733
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !188, !noalias !2733
  store i64 %i.ch, ptr %1, align 8, !tbaa !188, !noalias !2733
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #31, !noalias !2733
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !187, !noalias !2733
  %i.cj = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ci) #31, !noalias !2733
  store i8 0, ptr %65, align 8, !tbaa !545, !noalias !2733
  %i.ck = getelementptr inbounds nuw i8, ptr %65, i64 1
  store i8 0, ptr %i.ck, align 1, !tbaa !546, !noalias !2733
  %i.cl = getelementptr inbounds nuw i8, ptr %65, i64 4
  store i32 0, ptr %i.cl, align 4, !tbaa !353, !noalias !2733
  %i.cm = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i32 0, ptr %i.cm, align 8, !tbaa !547, !noalias !2733
  %i.cn = getelementptr inbounds nuw i8, ptr %65, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !548, !noalias !2733
  %i.co = getelementptr inbounds nuw i8, ptr %65, i64 17
  store i8 0, ptr %i.co, align 1, !tbaa !549, !noalias !2733
  %i.cp = getelementptr inbounds nuw i8, ptr %65, i64 19
  %i.cq = getelementptr inbounds nuw i8, ptr %65, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %65, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cp, i8 0, i64 9, i1 false), !noalias !2733
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !550, !noalias !2733
  %i.cs = getelementptr inbounds nuw i8, ptr %65, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !551, !noalias !2733
  %i.ct = getelementptr inbounds nuw i8, ptr %65, i64 48
  store i64 8, ptr %i.ct, align 8, !tbaa !552, !noalias !2733
  %i.cu = getelementptr inbounds nuw i8, ptr %65, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %65, i64 80
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !68, !noalias !2733
  %i.cw = getelementptr inbounds nuw i8, ptr %65, i64 72
  store i32 0, ptr %i.cw, align 8, !tbaa !70, !noalias !2733
  %i.cx = getelementptr inbounds nuw i8, ptr %65, i64 76
  store i32 6, ptr %i.cx, align 4, !tbaa !69, !noalias !2733
  %i.cy = getelementptr inbounds nuw i8, ptr %65, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %65, i64 144
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !68, !noalias !2733
  %i.da = getelementptr inbounds nuw i8, ptr %65, i64 136
  store i32 0, ptr %i.da, align 8, !tbaa !70, !noalias !2733
  %i.db = getelementptr inbounds nuw i8, ptr %65, i64 140
  store i32 4, ptr %i.db, align 4, !tbaa !69, !noalias !2733
  %i.dc = getelementptr inbounds nuw i8, ptr %65, i64 176
  %i.dd = getelementptr inbounds nuw i8, ptr %65, i64 192
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !68, !noalias !2733
  %i.de = getelementptr inbounds nuw i8, ptr %65, i64 184
  store i32 0, ptr %i.de, align 8, !tbaa !70, !noalias !2733
  %i.df = getelementptr inbounds nuw i8, ptr %65, i64 188
  store i32 10, ptr %i.df, align 4, !tbaa !69, !noalias !2733
  %i.dg = getelementptr inbounds nuw i8, ptr %65, i64 272
  %i.dh = getelementptr inbounds nuw i8, ptr %65, i64 288
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !68, !noalias !2733
  %i.di = getelementptr inbounds nuw i8, ptr %65, i64 280
  store i32 0, ptr %i.di, align 8, !tbaa !70, !noalias !2733
  %i.dj = getelementptr inbounds nuw i8, ptr %65, i64 284
  store i32 8, ptr %i.dj, align 4, !tbaa !69, !noalias !2733
  %i.dk = getelementptr inbounds nuw i8, ptr %65, i64 864
  %i.dl = getelementptr inbounds nuw i8, ptr %65, i64 880 ; 2 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !553, !noalias !2733
  %i.dm = getelementptr inbounds nuw i8, ptr %65, i64 872
  store i64 0, ptr %i.dm, align 8, !tbaa !554, !noalias !2733
  store i8 0, ptr %i.dl, align 8, !tbaa !105, !noalias !2733
  %i.dn = getelementptr inbounds nuw i8, ptr %65, i64 896
  store i8 0, ptr %i.dn, align 8, !noalias !2733
  %i.do = getelementptr inbounds nuw i8, ptr %65, i64 897
  store i8 3, ptr %i.do, align 1, !noalias !2733
  %i.dp = getelementptr inbounds nuw i8, ptr %65, i64 904
  store ptr null, ptr %i.dp, align 8, !tbaa !555, !noalias !2733
  %i.dq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZN4llvm10DataLayoutaSERKS0_(ptr noundef nonnull align 8 dereferenceable(912) %65, ptr noundef nonnull align 8 dereferenceable(912) %i.cj) #31, !noalias !2733 ; 0 uses
  %i.dr = call noundef ptr @_ZNK4llvm11Instruction12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i32 noundef 0) #34, !noalias !2733
  %i.ds = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %2) #31, !noalias !2733
  %i.dt = call noundef zeroext i1 @_ZN4mlir3omp23opInSharedDeviceContextERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.079.0.copyload) #31, !noalias !2733
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !239, !noalias !2733 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 304
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !547, !noalias !2733 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %73, i64 144 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !68, !noalias !2734 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %73, i64 152
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !70, !noalias !2735 ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %.idx.i = shl nuw nsw i64 %i.ec, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx.i
  %.not1718.i = icmp eq i32 %i.eb, 0
  br i1 %.not1718.i, label %._crit_edge.i, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %_ZL21collectReductionDeclsIN4mlir3omp6SimdOpEEvT_RN4llvm15SmallVectorImplINS1_18DeclareReductionOpEEE.exit
  %i.ee = load ptr, ptr %73, align 8, !tbaa !482, !noalias !2734
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 300
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !353, !noalias !2733
  %i.eh = getelementptr inbounds nuw i8, ptr %68, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %68, i64 33
  %i.ej = getelementptr inbounds nuw i8, ptr %61, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.not.i172 = icmp eq i32 %i.eg, %i.dx
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %69, i64 32
  %.sroa.2.0..sroa_idx.i3.i.i.i = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %67, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %73, i64 80 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %73, i64 88 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %73, i64 92
  %i.es = load ptr, ptr %80, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i, %_ZL21collectReductionDeclsIN4mlir3omp6SimdOpEEvT_RN4llvm15SmallVectorImplINS1_18DeclareReductionOpEEE.exit
  call void @_ZN4llvm10DataLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(912) dereferenceable(912) %65) #31, !noalias !2733
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31, !noalias !2733
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !187, !noalias !2733
  store ptr %.sroa.0.0.copyload.i.i.i170, ptr %i.ca, align 8, !noalias !2733
  store i16 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2733
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %.not.i.i.i.i175 = icmp eq ptr %.sroa.0.0.copyload.i.i.i170, %i.eu
  br i1 %.not.i.i.i.i175, label %_ZN4mlir3omp6SimdOp13getLinearVarsEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i170, i64 -24
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ev) #31, !noalias !2733 ; 0 uses
  br label %_ZN4mlir3omp6SimdOp13getLinearVarsEv.exit

bb.k:                                             ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.by, i8 0, i64 18, i1 false), !noalias !2733
  br label %_ZN4mlir3omp6SimdOp13getLinearVarsEv.exit

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i, %.lr.ph.i171
  %.sroa.03.020.i = phi ptr [ %i.ee, %.lr.ph.i171 ], [ %i.ge, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i ] ; 2 uses
  %.sroa.10.019.i = phi ptr [ %i.dz, %.lr.ph.i171 ], [ %i.gd, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i ] ; 2 uses
  %i.ex = call ptr @_ZN4mlir3omp15PrivateClauseOp7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.10.019.i) #31, !noalias !2733
  %i.ey = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(592) %2, ptr %i.ex) #31, !noalias !2733 ; 3 uses
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !467, !noalias !2733 ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !466, !noalias !2733
  store ptr %i.fc, ptr %i.by, align 8, !tbaa !187, !noalias !2733
  store ptr %i.ez, ptr %i.ca, align 8, !noalias !2733
  store i16 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2733
  %i.fd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.fa) #31, !noalias !2733
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !188, !noalias !2733
  store i64 %i.fe, ptr %1, align 8, !tbaa !188, !noalias !2733
  br i1 %i.dt, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i176 = load ptr, ptr %.sroa.03.020.i, align 8, !tbaa !222, !noalias !2733
  %i.ff = call noundef zeroext i1 @_ZN4mlir3omp26allocaUsesRequireSharedMemENS_5ValueE(ptr %.sroa.0.0.copyload.i176) #31, !noalias !2733
  br i1 %i.ff, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #31, !noalias !2733
  call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2737
  %.sroa.22.8.insert.ext.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i.i, 65535
  %i.fg = load <2 x ptr>, ptr %i.by, align 8, !noalias !2737
  store <2 x ptr> %i.fg, ptr %66, align 16, !alias.scope !2736, !noalias !2733
  store i64 %.sroa.22.8.insert.ext.i.i.i, ptr %.sroa.2.0..sroa_idx.i3.i.i.i, align 16, !alias.scope !2736, !noalias !2733
  %i.fh = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #31, !noalias !2733
  store ptr %i.fh, ptr %i.en, align 8, !noalias !2733
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #31, !noalias !2733
  store i16 257, ptr %i.eo, align 8, !noalias !2733
  %i.fi = call noundef ptr @_ZN4llvm15OpenMPIRBuilder20createOMPAllocSharedERKNS0_19LocationDescriptionEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(1864) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(34) %67) #31, !noalias !2733
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #31, !noalias !2733
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #31, !noalias !2733
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #31, !noalias !2733
  store i8 1, ptr %i.ei, align 1, !tbaa !142, !noalias !2733
  store ptr @.str.40, ptr %68, align 8, !tbaa !105, !noalias !2733
  store i8 3, ptr %i.eh, align 8, !tbaa !141, !noalias !2733
  call void @llvm.lifetime.start.p0(ptr nonnull %62), !noalias !2733
  %i.fj = load ptr, ptr %i.by, align 8, !tbaa !187, !noalias !2733
  %i.fk = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fj) #31, !noalias !2733 ; 2 uses
  %i.fl = call i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.fk, ptr noundef %i.ey) #31, !noalias !2733
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !353, !noalias !2733
  %i.fo = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #31, !noalias !2733 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #31, !noalias !2733
  store i16 257, ptr %i.ej, align 8, !noalias !2733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false), !noalias !2733
  call void @_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.fo, ptr noundef %i.ey, i32 noundef %i.fn, ptr noundef null, i8 %i.fl, ptr noundef nonnull align 8 dereferenceable(34) %61, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %62) #31, !noalias !2733
  %i.fp = load ptr, ptr %i.ek, align 8, !tbaa !354, !noalias !2733, !nonnull !119, !align !235 ; 2 uses
  %.sroa.0.0.copyload.i.i45.i = load ptr, ptr %i.ca, align 8, !noalias !2733
  %.sroa.2.0.copyload.i.i47.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2733
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !72, !noalias !2733
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
end_hunk_0
begin_hunk_1_@_ZL14convertOmpSimdRN4mlir9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE:bb.a
  br i1 %i.aiy, label %_ZN4mlir3omp6SimdOp16getReductionVarsEv.exit.i, label %bb.cm

_ZN4mlir3omp6SimdOp16getReductionVarsEv.exit.i:   ; preds = %bb.ci
  %i.aiz = load ptr, ptr %37, align 8, !tbaa !68
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !198 ; 2 uses
  %i.ajb = load ptr, ptr %33, align 8, !tbaa !68
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv38.i
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.aje = load ptr, ptr %i.by, align 8, !tbaa !187
  %i.ajf = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aje) #31
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !492
  %i.aji = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ajf, ptr noundef %i.ajh) #31
  %i.ajj = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #31 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.ajj, ptr noundef %i.aja, ptr noundef %i.ajd, i1 noundef zeroext false, i8 %i.aji, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  store i16 257, ptr %i.yx, align 8
  %i.ajk = load ptr, ptr %i.yt, align 8, !tbaa !354, !nonnull !119, !align !235 ; 2 uses
  %.sroa.0.0.copyload.i.i104.i = load ptr, ptr %i.ca, align 8
  %.sroa.2.0.copyload.i.i106.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !72
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %i.ajn = load ptr, ptr %i.ajm, align 8
  call void %i.ajn(ptr noundef nonnull align 8 dereferenceable(8) %i.ajk, ptr noundef nonnull %i.ajj, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr %.sroa.0.0.copyload.i.i104.i, i64 %.sroa.2.0.copyload.i.i106.i) #31, !inline_history !2648
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ajj) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.ajo = load ptr, ptr %33, align 8, !tbaa !68
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.ajo, i64 %indvars.iv38.i
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !198
  %i.ajr = load ptr, ptr %76, align 8, !tbaa !68
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %indvars.iv38.i
  store ptr %i.ajq, ptr %i.ajs, align 8, !tbaa !198
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv38.i
  %.sroa.0.0.copyload.i226 = load ptr, ptr %i.ajt, align 8, !tbaa !222
  %i.aju = load ptr, ptr %37, align 8, !tbaa !68
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %.sroa.0.0.copyload.i226, ptr %22, align 8
  %i.ajw = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ym, ptr noundef nonnull align 8 dereferenceable(8) %22)
  %.fca.0.extract.i.i.i.i227 = extractvalue { ptr, i8 } %i.ajw, 0
  %i.ajx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i227, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  store ptr %i.ajv, ptr %i.ajx, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  %i.ajy = call i64 @_ZN4mlir3omp6SimdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 6) #31
  %i.ajz = load ptr, ptr %31, align 8, !tbaa !195
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 72
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !220
  %i.akc = and i64 %i.ajy, 4294967295
  %i.akd = getelementptr inbounds nuw [32 x i8], ptr %i.akb, i64 %i.akc
  %i.ake = getelementptr inbounds nuw [32 x i8], ptr %i.akd, i64 %indvars.iv38.i
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %.sroa.0.0.copyload.i.i.i98.i = load ptr, ptr %i.akf, align 8, !tbaa !222
  store ptr %.sroa.0.0.copyload.i.i.i98.i, ptr %38, align 8
  %i.akg = load ptr, ptr %37, align 8, !tbaa !68
  %i.akh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JRS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.akg), !noalias !2750 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %bb.ck

bb.cj:                                            ; preds = %_ZL35setInsertPointForPossiblyEmptyBlockRN4llvm13IRBuilderBaseEPNS_10BasicBlockE.exit96.i
  %i.aki = load ptr, ptr %37, align 8, !tbaa !68
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !198 ; 2 uses
  %i.akk = load ptr, ptr %76, align 8, !tbaa !68
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.akk, i64 %indvars.iv38.i
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.akn = load ptr, ptr %i.by, align 8, !tbaa !187
  %i.ako = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.akn) #31
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !492
  %i.akr = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ako, ptr noundef %i.akq) #31
  %i.aks = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #31 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.aks, ptr noundef %i.akj, ptr noundef %i.akm, i1 noundef zeroext false, i8 %i.akr, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store i16 257, ptr %i.yw, align 8
  %i.akt = load ptr, ptr %i.yt, align 8, !tbaa !354, !nonnull !119, !align !235 ; 2 uses
  %.sroa.0.0.copyload.i.i107.i = load ptr, ptr %i.ca, align 8
  %.sroa.2.0.copyload.i.i109.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !72
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 16
  %i.akw = load ptr, ptr %i.akv, align 8
  call void %i.akw(ptr noundef nonnull align 8 dereferenceable(8) %i.akt, ptr noundef nonnull %i.aks, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr %.sroa.0.0.copyload.i.i107.i, i64 %.sroa.2.0.copyload.i.i109.i) #31, !inline_history !2648
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.aks) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN4mlir3omp6SimdOp16getReductionVarsEv.exit.i
  %i.akx = load ptr, ptr %78, align 8, !tbaa !68
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %indvars.iv38.i
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !195 ; 3 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 44
  %i.alb = load i32, ptr %i.ala, align 4          ; 3 uses
  %i.alc = and i32 %i.alb, 8388607
  %i.ald = icmp ne i32 %i.alc, 0
  call void @llvm.assume(i1 %i.ald)
  %i.ale = lshr i32 %i.alb, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i100.i = and i32 %i.ale, 1
  %i.alf = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i100.i to i64
  %i.alg = getelementptr inbounds nuw [16 x i8], ptr %i.akz, i64 %i.alf
  %i.alh = lshr i32 %i.alb, 21
  %i.ali = and i32 %i.alh, 2040
  %i.alj = zext nneg i32 %i.ali to i64
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %i.akz, i64 40
  %i.alm = load i32, ptr %i.all, align 8, !tbaa !342
  %i.aln = zext i32 %i.alm to i64
  %i.alo = getelementptr inbounds nuw [32 x i8], ptr %i.alk, i64 %i.aln
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 96
  call void @_ZN4mlir4LLVM17ModuleTranslation13forgetMappingERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(592) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.alp) #31
  br label %bb.cm

bb.cl:                                            ; preds = %_ZL21mapInitializationArgsIN4mlir3omp6SimdOpEEvT_RNS0_4LLVM17ModuleTranslationERN4llvm13IRBuilderBaseERNS7_15SmallVectorImplINS1_18DeclareReductionOpEEERNS7_8DenseMapINS0_5ValueEPNS7_5ValueENS7_12DenseMapInfoISF_vEENS7_6detail12DenseMapPairISF_SH_EEEEj.exit.i
  %i.alq = load ptr, ptr %37, align 8, !tbaa !68  ; 2 uses
  %i.alr = icmp eq ptr %i.alq, %i.yj
  br i1 %i.alr, label %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt1.i, label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.ci
  %i.als = load ptr, ptr %37, align 8, !tbaa !68  ; 2 uses
  %i.alt = icmp eq ptr %i.als, %i.yj
  br i1 %i.alt, label %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt9.i, label %bb.co

bb.cn:                                            ; preds = %bb.cl
  call void @free(ptr noundef %i.alq) #31
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt1.i

bb.co:                                            ; preds = %bb.cm
  call void @free(ptr noundef %i.als) #31
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt9.i

_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt1.i: ; preds = %bb.cn, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %.thread.i

_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt9.i: ; preds = %bb.co, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.alu = call i64 @_ZN4mlir3omp6SimdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 6) #31
  %.sroa.5.0.extract.shift.i.i.i83.i = lshr i64 %i.alu, 32
  %.not74.i = icmp samesign ult i64 %indvars.iv.next39.i, %.sroa.5.0.extract.shift.i.i.i83.i
  br i1 %.not74.i, label %bb.bw, label %.thread.i, !llvm.loop !2662

.thread.i:                                        ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt9.i, %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt1.i, %.preheader.i
  %i.alv = phi i1 [ false, %.preheader.i ], [ true, %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt1.i ], [ false, %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit.jt9.i ]
  %i.alw = load ptr, ptr %33, align 8, !tbaa !68  ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.uh
  br i1 %i.alx, label %_ZL17initReductionVarsIN4mlir3omp6SimdOpEEN4llvm13LogicalResultET_NS3_8ArrayRefINS0_13BlockArgumentEEERNS3_13IRBuilderBaseERNS0_4LLVM17ModuleTranslationEPNS3_10BasicBlockERNS3_15SmallVectorImplINS1_18DeclareReductionOpEEERNSG_IPNS3_5ValueEEERNS3_8DenseMapINS0_5ValueESL_NS3_12DenseMapInfoISP_vEENS3_6detail12DenseMapPairISP_SL_EEEENS6_IbEERNSG_IN12_GLOBAL__N_113DeferredStoreEEE.exit, label %bb.cp

bb.cp:                                            ; preds = %.thread.i
  call void @free(ptr noundef %i.alw) #31
  br label %_ZL17initReductionVarsIN4mlir3omp6SimdOpEEN4llvm13LogicalResultET_NS3_8ArrayRefINS0_13BlockArgumentEEERNS3_13IRBuilderBaseERNS0_4LLVM17ModuleTranslationEPNS3_10BasicBlockERNS3_15SmallVectorImplINS1_18DeclareReductionOpEEERNSG_IPNS3_5ValueEEERNS3_8DenseMapINS0_5ValueESL_NS3_12DenseMapInfoISP_vEENS3_6detail12DenseMapPairISP_SL_EEEENS6_IbEERNSG_IN12_GLOBAL__N_113DeferredStoreEEE.exit

_ZL17initReductionVarsIN4mlir3omp6SimdOpEEN4llvm13LogicalResultET_NS3_8ArrayRefINS0_13BlockArgumentEEERNS3_13IRBuilderBaseERNS0_4LLVM17ModuleTranslationEPNS3_10BasicBlockERNS3_15SmallVectorImplINS1_18DeclareReductionOpEEERNSG_IPNS3_5ValueEEERNS3_8DenseMapINS0_5ValueESL_NS3_12DenseMapInfoISP_vEENS3_6detail12DenseMapPairISP_SL_EEEENS6_IbEERNSG_IN12_GLOBAL__N_113DeferredStoreEEE.exit: ; preds = %.thread.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  br i1 %i.alv, label %bb.eg, label %bb.cq

bb.cq:                                            ; preds = %_ZL17initReductionVarsIN4mlir3omp6SimdOpEEN4llvm13LogicalResultET_NS3_8ArrayRefINS0_13BlockArgumentEEERNS3_13IRBuilderBaseERNS0_4LLVM17ModuleTranslationEPNS3_10BasicBlockERNS3_15SmallVectorImplINS1_18DeclareReductionOpEEERNSG_IPNS3_5ValueEEERNS3_8DenseMapINS0_5ValueESL_NS3_12DenseMapInfoISP_vEENS3_6detail12DenseMapPairISP_SL_EEEENS6_IbEERNSG_IN12_GLOBAL__N_113DeferredStoreEEE.exit.thread, %_ZL17initReductionVarsIN4mlir3omp6SimdOpEEN4llvm13LogicalResultET_NS3_8ArrayRefINS0_13BlockArgumentEEERNS3_13IRBuilderBaseERNS0_4LLVM17ModuleTranslationEPNS3_10BasicBlockERNS3_15SmallVectorImplINS1_18DeclareReductionOpEEERNSG_IPNS3_5ValueEEERNS3_8DenseMapINS0_5ValueESL_NS3_12DenseMapInfoISP_vEENS3_6detail12DenseMapPairISP_SL_EEEENS6_IbEERNSG_IN12_GLOBAL__N_113DeferredStoreEEE.exit
  %i.aly = call { i64, i8 } @_ZN4mlir3omp6SimdOp10getSimdlenEv(ptr noundef nonnull align 8 dereferenceable(8) %72) #31 ; 2 uses
  %i.alz = extractvalue { i64, i8 } %i.aly, 1
  %i.ama = trunc nuw i8 %i.alz to i1
  br i1 %i.ama, label %_ZNRSt8optionalImE5valueEv.exit, label %bb.cr

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %bb.cq
  %i.amb = extractvalue { i64, i8 } %i.aly, 0
  %i.amc = call noundef ptr @_ZN4llvm13IRBuilderBase8getInt64Em(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %i.amb)
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNRSt8optionalImE5valueEv.exit, %bb.cq
  %.0152 = phi ptr [ %i.amc, %_ZNRSt8optionalImE5valueEv.exit ], [ null, %bb.cq ]
  %i.amd = call { i64, i8 } @_ZN4mlir3omp6SimdOp10getSafelenEv(ptr noundef nonnull align 8 dereferenceable(8) %72) #31 ; 2 uses
  %i.ame = extractvalue { i64, i8 } %i.amd, 1
  %i.amf = trunc nuw i8 %i.ame to i1
  br i1 %i.amf, label %_ZNRSt8optionalImE5valueEv.exit233, label %bb.cs

_ZNRSt8optionalImE5valueEv.exit233:               ; preds = %bb.cr
  %i.amg = extractvalue { i64, i8 } %i.amd, 0
  %i.amh = call noundef ptr @_ZN4llvm13IRBuilderBase8getInt64Em(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %i.amg)
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNRSt8optionalImE5valueEv.exit233, %bb.cr
  %.0153 = phi ptr [ %i.amh, %_ZNRSt8optionalImE5valueEv.exit233 ], [ null, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %84, i8 0, i64 24, i1 false)
  %i.ami = getelementptr inbounds nuw i8, ptr %84, i64 24 ; 6 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %84, i64 40 ; 2 uses
  store ptr %i.amj, ptr %i.ami, align 8, !tbaa !68
  %i.amk = getelementptr inbounds nuw i8, ptr %84, i64 32 ; 4 uses
  store i32 0, ptr %i.amk, align 8, !tbaa !70
  %i.aml = getelementptr inbounds nuw i8, ptr %84, i64 36 ; 2 uses
  store i32 0, ptr %i.aml, align 4, !tbaa !69
  %i.amm = call i64 @_ZN4mlir3omp6SimdOp8getOrderEv(ptr noundef nonnull align 8 dereferenceable(8) %72) #31
  %i.amn = and i64 %i.amm, 4294967296
  %.not.i234 = icmp eq i64 %i.amn, 0
  %spec.select.i = select i1 %.not.i234, i32 2, i32 1
  %i.amo = load ptr, ptr %i.by, align 8, !tbaa !187 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #31
  %i.amp = call { ptr, i8 } @_ZN4mlir3omp6SimdOp13getAlignmentsEv(ptr noundef nonnull align 8 dereferenceable(8) %72) #31 ; 2 uses
  %i.amq = extractvalue { ptr, i8 } %i.amp, 0
  store ptr %i.amq, ptr %85, align 8
  %i.amr = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.ams = extractvalue { ptr, i8 } %i.amp, 1
  store i8 %i.ams, ptr %i.amr, align 8
  %i.amt = call i64 @_ZN4mlir3omp6SimdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef 0) #31 ; 3 uses
  %i.amu = load ptr, ptr %72, align 8, !tbaa !195 ; 3 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 44
  %i.amw = load i32, ptr %i.amv, align 4          ; 2 uses
  %i.amx = and i32 %i.amw, 8388608
  %.not.i.i.i.i.i235 = icmp eq i32 %i.amx, 0
  br i1 %.not.i.i.i.i.i235, label %_ZN4mlir3omp6SimdOp14getAlignedVarsEv.exit, label %bb.ct, !prof !165

bb.ct:                                            ; preds = %bb.cs
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amu, i64 72
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !220
  br label %_ZN4mlir3omp6SimdOp14getAlignedVarsEv.exit

_ZN4mlir3omp6SimdOp14getAlignedVarsEv.exit:       ; preds = %bb.cs, %bb.ct
  %.sroa.0.0.i.i.i.i.i236 = phi ptr [ %i.amz, %bb.ct ], [ null, %bb.cs ]
  %i.ana = and i64 %i.amt, 4294967295             ; 3 uses
  %.sroa.5.0.extract.shift.i.i237 = lshr i64 %i.amt, 32
  %i.anb = add i64 %.sroa.5.0.extract.shift.i.i237, %i.amt
  %i.anc = and i64 %i.anb, 4294967295             ; 2 uses
  %i.and = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i236, i64 %i.ana
  %i.ane = sub nsw i64 %i.anc, %i.ana
  %.not547 = icmp eq i64 %i.anc, %i.ana
  br i1 %.not547, label %._crit_edge531, label %.lr.ph530

.lr.ph530:                                        ; preds = %_ZN4mlir3omp6SimdOp14getAlignedVarsEv.exit
  %i.anf = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.ang = getelementptr inbounds nuw i8, ptr %2, i64 252
  %i.anh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %95 = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  %i.ani = getelementptr inbounds nuw i8, ptr %87, i64 32
  %i.anj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ank = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.anl = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.cv

._crit_edge531.loopexit:                          ; preds = %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread
  %.pre = load ptr, ptr %72, align 8, !tbaa !195  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre586 = load i32, ptr %.phi.trans.insert, align 4
  br label %._crit_edge531

._crit_edge531:                                   ; preds = %._crit_edge531.loopexit, %_ZN4mlir3omp6SimdOp14getAlignedVarsEv.exit
  %i.anm = phi i32 [ %.pre586, %._crit_edge531.loopexit ], [ %i.amw, %_ZN4mlir3omp6SimdOp14getAlignedVarsEv.exit ] ; 3 uses
  %i.ann = phi ptr [ %.pre, %._crit_edge531.loopexit ], [ %i.amu, %_ZN4mlir3omp6SimdOp14getAlignedVarsEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #31
  %i.ano = and i32 %i.anm, 8388607
  %i.anp = icmp ne i32 %i.ano, 0
  call void @llvm.assume(i1 %i.anp)
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 64
  %i.anr = lshr i32 %i.anm, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.anr, 1
  %i.ans = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ant = getelementptr inbounds nuw [16 x i8], ptr %i.anq, i64 %i.ans
  %i.anu = lshr i32 %i.anm, 21
  %i.anv = and i32 %i.anu, 2040
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.anw
  %i.any = getelementptr inbounds nuw i8, ptr %i.ann, i64 40
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !342
  %i.aoa = zext i32 %i.anz to i64
  %i.aob = getelementptr inbounds nuw [32 x i8], ptr %i.anx, i64 %i.aoa
  call fastcc void @_ZL19convertOmpOpRegionsRN4mlir6RegionEN4llvm9StringRefERNS2_13IRBuilderBaseERNS_4LLVM17ModuleTranslationEPNS2_15SmallVectorImplIPNS2_7PHINodeEEE(ptr dead_on_unwind noalias writable align 8 %88, ptr noundef nonnull align 8 dereferenceable(28) %i.aob, ptr nonnull @.str.90, i64 15, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(592) %2, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.aoc = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.aod = load i8, ptr %i.aoc, align 8
  %i.aoe = trunc i8 %i.aod to i1                  ; 2 uses
  br i1 %i.aoe, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i242, label %_ZL11handleErrorIPN4llvm10BasicBlockEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit243.thread

_ZL11handleErrorIPN4llvm10BasicBlockEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit243.thread: ; preds = %._crit_edge531
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.df

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i242: ; preds = %._crit_edge531
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  %i.aof = load i64, ptr %88, align 8, !tbaa !171, !noalias !2751
  %i.aog = inttoptr i64 %i.aof to ptr
  store ptr null, ptr %88, align 8, !tbaa !171, !noalias !2751
  store ptr %i.aog, ptr %15, align 8, !tbaa !173, !alias.scope !2751
  %i.aoh = call fastcc i8 @_ZL11handleErrorN4llvm5ErrorERN4mlir9OperationE(ptr nofree noundef align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.aoi = load ptr, ptr %15, align 8, !tbaa !173 ; 3 uses
  %i.aoj = icmp eq ptr %i.aoi, null
  br i1 %i.aoj, label %_ZL11handleErrorIPN4llvm10BasicBlockEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit243, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i242
  %i.aok = load ptr, ptr %i.aoi, align 8, !tbaa !72
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  %i.aom = load ptr, ptr %i.aol, align 8
  call void %i.aom(ptr noundef nonnull align 8 dereferenceable(8) %i.aoi) #31, !inline_history !20
  br label %_ZL11handleErrorIPN4llvm10BasicBlockEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit243

_ZL11handleErrorIPN4llvm10BasicBlockEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit243: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i242, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.aon = trunc nuw i8 %i.aoh to i1
  br i1 %i.aon, label %bb.df, label %_ZN4llvm8ExpectedIPNS_10BasicBlockEED2Ev.exit

bb.cv:                                            ; preds = %.lr.ph530, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread
  %.0154529 = phi i64 [ 0, %.lr.ph530 ], [ %i.ars, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.aoo = getelementptr inbounds [32 x i8], ptr %i.and, i64 %.0154529
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 24
  %.sroa.0.0.copyload.i.i.i244 = load ptr, ptr %i.aop, align 8, !tbaa !222 ; 3 uses
  %i.aoq = load ptr, ptr %i.anf, align 8, !tbaa !115, !noalias !2752 ; 3 uses
  %i.aor = load i32, ptr %i.ang, align 4, !tbaa !114, !noalias !2752 ; 2 uses
  %i.aos = icmp ne i32 %i.aor, 0
  call void @llvm.assume(i1 %i.aos)
  %i.aot = add i32 %i.aor, -1                     ; 2 uses
  %i.aou = ptrtoint ptr %.sroa.0.0.copyload.i.i.i244 to i64
  %i.aov = xor i64 %i.aou, -49064778989728563     ; 2 uses
  %i.aow = lshr i64 %i.aov, 30
  %i.aox = xor i64 %i.aow, %i.aov
  %i.aoy = mul i64 %i.aox, -4658895280553007687   ; 2 uses
  %i.aoz = lshr i64 %i.aoy, 27
  %i.apa = xor i64 %i.aoz, %i.aoy
  %i.apb = mul i64 %i.apa, -7723592293110705685   ; 2 uses
  %i.apc = lshr i64 %i.apb, 31
  %i.apd = xor i64 %i.apc, %i.apb
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = and i32 %i.aot, %i.ape                 ; 2 uses
  %i.apg = zext i32 %i.apf to i64                 ; 2 uses
  %i.aph = getelementptr inbounds nuw [16 x i8], ptr %i.aoq, i64 %i.apg
  %.sroa.0.0.copyload.i.i.i247525 = load ptr, ptr %i.aph, align 8, !tbaa !222
  %i.api = icmp eq ptr %.sroa.0.0.copyload.i.i.i244, %.sroa.0.0.copyload.i.i.i247525
  br i1 %i.api, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit248, label %.lr.ph.i.i.i245, !prof !523

.lr.ph.i.i.i245:                                  ; preds = %bb.cv, %.lr.ph.i.i.i245
  %.01419.i.i.i246526 = phi i32 [ %i.apk, %.lr.ph.i.i.i245 ], [ %i.apf, %bb.cv ]
  %i.apj = add nuw i32 %.01419.i.i.i246526, 1
  %i.apk = and i32 %i.apj, %i.aot                 ; 2 uses
  %i.apl = zext i32 %i.apk to i64                 ; 2 uses
  %i.apm = getelementptr inbounds nuw [16 x i8], ptr %i.aoq, i64 %i.apl
  %.sroa.0.0.copyload.i.i.i247 = load ptr, ptr %i.apm, align 8, !tbaa !222
  %i.apn = icmp eq ptr %.sroa.0.0.copyload.i.i.i244, %.sroa.0.0.copyload.i.i.i247
  br i1 %i.apn, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit248, label %.lr.ph.i.i.i245, !prof !524

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit248: ; preds = %.lr.ph.i.i.i245, %bb.cv
  %i.apo = phi i64 [ %i.apg, %bb.cv ], [ %i.apl, %.lr.ph.i.i.i245 ]
  %i.app = getelementptr inbounds nuw [16 x i8], ptr %i.aoq, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !198 ; 2 uses
  store ptr %i.apr, ptr %i.e, align 8, !tbaa !198
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !492 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #31
  %i.apu = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %85) #31
  %i.apv = extractvalue { ptr, i64 } %i.apu, 0
  %i.apw = and i64 %.0154529, 4294967295
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.apw
  %.sroa.0.0.copyload.i249 = load ptr, ptr %i.apx, align 8, !tbaa !196
  store ptr %.sroa.0.0.copyload.i249, ptr %86, align 8
  %i.apy = call noundef i64 @_ZNK4mlir11IntegerAttr6getIntEv(ptr noundef nonnull align 8 dereferenceable(8) %86) #31
  %i.apz = load ptr, ptr %i.anh, align 8, !tbaa !234, !nonnull !119, !align !235
  %i.aqa = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.apz) #31
  %i.aqb = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.aqa, i64 noundef %i.apy, i1 noundef zeroext false, i1 noundef zeroext false) #31
  %i.aqc = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %86) #31 ; 3 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %i.aqe = load i32, ptr %i.aqd, align 8, !tbaa !2753
  %i.aqf = icmp ult i32 %i.aqe, 65
  br i1 %i.aqf, label %bb.cw, label %.split

bb.cw:                                            ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit248
  %i.aqg = load i64, ptr %i.aqc, align 8, !tbaa !105
  %i.aqh = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aqg)
  %or.cond = icmp eq i64 %i.aqh, 1
  br i1 %or.cond, label %bb.cx, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread

.split:                                           ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit248
  %i.aqi = call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.aqc) #34
  br i1 %i.aqi, label %bb.cx, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread

bb.cx:                                            ; preds = %bb.cw, %.split
  %i.aqj = load ptr, ptr %i.by, align 8, !tbaa !187, !noalias !2754 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ca, align 8, !noalias !2754 ; 3 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2754
  store ptr %i.amo, ptr %i.by, align 8, !tbaa !187
  store ptr %95, ptr %i.ca, align 8
  store i16 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.aqk = load ptr, ptr %i.e, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #31
  store i16 257, ptr %i.ani, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.aql = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.amo) #31
  %i.aqm = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.aql, ptr noundef %i.apt) #31
  %i.aqn = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i8 1, ptr %i.anj, align 8, !tbaa !141
  store i8 1, ptr %i.ank, align 1, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.aqn, ptr noundef %i.apt, ptr noundef %i.aqk, ptr noundef nonnull align 8 dereferenceable(34) %9, i1 noundef zeroext false, i8 %i.aqm, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %10) #31
  %i.aqo = load ptr, ptr %i.anl, align 8, !tbaa !354, !nonnull !119, !align !235 ; 2 uses
  %.sroa.0.0.copyload.i.i327 = load ptr, ptr %i.ca, align 8
  %.sroa.2.0.copyload.i.i329 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !72
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  %i.aqr = load ptr, ptr %i.aqq, align 8
  call void %i.aqr(ptr noundef nonnull align 8 dereferenceable(8) %i.aqo, ptr noundef nonnull %i.aqn, ptr noundef nonnull align 8 dereferenceable(34) %87, ptr %.sroa.0.0.copyload.i.i327, i64 %.sroa.2.0.copyload.i.i329) #31, !inline_history !26
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.aqn) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr %i.aqn, ptr %i.e, align 8, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #31
  %.not.i255 = icmp eq ptr %i.aqj, null
  br i1 %.not.i255, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.aqj, ptr %i.by, align 8, !tbaa !187
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ca, align 8
  %.sroa.45.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i.i to i16
  store i16 %.sroa.45.0.extract.trunc.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqj, i64 48
  %.not.i.i259 = icmp eq ptr %.sroa.0.0.copyload.i.i, %i.aqs
  br i1 %.not.i.i259, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aqt = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -24
  %i.aqu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aqt) #31
  %i.aqv = load i64, ptr %i.aqu, align 8, !tbaa !188
  store i64 %i.aqv, ptr %1, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit

bb.da:                                            ; preds = %bb.cx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.by, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit: ; preds = %bb.cy, %bb.cz, %bb.da
  %i.aqw = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %84, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !2755 ; 2 uses
  %.fca.0.extract.i.i.i.i260 = extractvalue { ptr, i8 } %i.aqw, 0
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.aqw, 1
  %i.aqx = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  %i.aqy = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i260, i64 8 ; 2 uses
  br i1 %i.aqx, label %bb.db, label %bb.de

bb.db:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit
  %i.aqz = load i32, ptr %i.amk, align 8, !tbaa !70 ; 4 uses
  store i32 %i.aqz, ptr %i.aqy, align 8, !tbaa !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store ptr %i.e, ptr %13, align 8, !tbaa !497, !alias.scope !2758
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.ara = load i32, ptr %i.aml, align 4, !tbaa !69
  %.not.i.i.i261 = icmp ult i32 %i.aqz, %i.ara
  br i1 %.not.i.i.i261, label %bb.dd, label %bb.dc, !prof !91

bb.dc:                                            ; preds = %bb.db
  %i.arb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueES3_ELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ami, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14) ; 0 uses
  %.pre.i.i262 = load ptr, ptr %i.ami, align 8, !tbaa !68
  %.pre12.i.i = load i32, ptr %i.amk, align 8, !tbaa !70
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueES3_EE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJEEEEERS4_DpOT_.exit.i.i

bb.dd:                                            ; preds = %bb.db
  %i.arc = zext i32 %i.aqz to i64
  %i.ard = load ptr, ptr %i.ami, align 8, !tbaa !68 ; 2 uses
  %i.are = getelementptr inbounds nuw [16 x i8], ptr %i.ard, i64 %i.arc ; 2 uses
  %i.arf = load ptr, ptr %i.e, align 8, !tbaa !198
  store ptr %i.arf, ptr %i.are, align 8, !tbaa !2759
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 8
  store ptr null, ptr %i.arg, align 8, !tbaa !703
  %i.arh = add nuw i32 %i.aqz, 1                  ; 2 uses
  store i32 %i.arh, ptr %i.amk, align 8, !tbaa !70
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueES3_EE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJEEEEERS4_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueES3_EE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJEEEEERS4_DpOT_.exit.i.i: ; preds = %bb.dd, %bb.dc
  %i.ari = phi i32 [ %.pre12.i.i, %bb.dc ], [ %i.arh, %bb.dd ]
  %i.arj = phi ptr [ %.pre.i.i262, %bb.dc ], [ %i.ard, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.ark = zext i32 %i.ari to i64
  %i.arl = getelementptr inbounds nuw [16 x i8], ptr %i.arj, i64 %i.ark
  %i.arm = getelementptr inbounds i8, ptr %i.arl, i64 -16
  br label %_ZN4llvm9MapVectorIPNS_5ValueES2_NS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S2_ELj0EEELj0EEixERKS2_.exit

bb.de:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit
  %i.arn = load ptr, ptr %i.ami, align 8, !tbaa !68
  %i.aro = load i32, ptr %i.aqy, align 8, !tbaa !2757
  %i.arp = zext i32 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [16 x i8], ptr %i.arn, i64 %i.arp
  br label %_ZN4llvm9MapVectorIPNS_5ValueES2_NS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S2_ELj0EEELj0EEixERKS2_.exit

_ZN4llvm9MapVectorIPNS_5ValueES2_NS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S2_ELj0EEELj0EEixERKS2_.exit: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueES3_EE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJEEEEERS4_DpOT_.exit.i.i, %bb.de
  %.sroa.09.0.i.i = phi ptr [ %i.arm, %_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueES3_EE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJEEEEERS4_DpOT_.exit.i.i ], [ %i.arq, %bb.de ]
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store ptr %i.aqb, ptr %i.arr, align 8, !tbaa !198
  br label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread

_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread:        ; preds = %bb.cw, %.split, %_ZN4llvm9MapVectorIPNS_5ValueES2_NS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S2_ELj0EEELj0EEixERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.ars = add nuw i64 %.0154529, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ars, %i.ane
  br i1 %exitcond.not, label %._crit_edge531.loopexit, label %bb.cv, !llvm.loop !2677

bb.df:                                            ; preds = %_ZL11handleErrorIPN4llvm10BasicBlockEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit243.thread, %_ZL11handleErrorIPN4llvm10BasicBlockEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit243
  %.val161 = load ptr, ptr %i.bn, align 8         ; 2 uses
  %.val162 = load i32, ptr %i.bo, align 8         ; 2 uses
  %.not1213.i.i.i = icmp eq i32 %.val162, 0
  br i1 %.not1213.i.i.i, label %_ZL19findCurrentLoopInfoRN4mlir4LLVM17ModuleTranslationE.exit, label %.lr.ph.preheader.i.i.i263

.lr.ph.preheader.i.i.i263:                        ; preds = %bb.df
  %i.art = zext i32 %.val162 to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.art, 3
  %i.aru = getelementptr inbounds nuw i8, ptr %.val161, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i264

.lr.ph.i.i.i264:                                  ; preds = %.critedge.i.i.i, %.lr.ph.preheader.i.i.i263
  %.sroa.01.014.i.i.i = phi ptr [ %i.arv, %.critedge.i.i.i ], [ %i.aru, %.lr.ph.preheader.i.i.i263 ]
  %i.arv = getelementptr inbounds i8, ptr %.sroa.01.014.i.i.i, i64 -8 ; 3 uses
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !166 ; 3 uses
  %.not.i.i.i.i.i265 = icmp eq ptr %i.arw, null
  br i1 %.not.i.i.i.i.i265, label %.critedge.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i264
  %i.arx = getelementptr i8, ptr %i.arw, i64 8
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.arx, align 8, !tbaa !92
  %i.ary = icmp eq ptr %.val.val.i.i.i.i.i.i, @_ZZN12_GLOBAL__N_124OpenMPLoopInfoStackFrame13resolveTypeIDEvE2id
  br i1 %i.ary, label %_ZN4llvm16dyn_cast_or_nullIN12_GLOBAL__N_124OpenMPLoopInfoStackFrameEN4mlir15StateStackFrameEEEDaPT0_.exit.i.i.i, label %.critedge.i.i.i

_ZN4llvm16dyn_cast_or_nullIN12_GLOBAL__N_124OpenMPLoopInfoStackFrameEN4mlir15StateStackFrameEEEDaPT0_.exit.i.i.i: ; preds = %bb.dg
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  %.val1.i.i = load ptr, ptr %i.arz, align 8, !tbaa !161
  br label %_ZL19findCurrentLoopInfoRN4mlir4LLVM17ModuleTranslationE.exit

.critedge.i.i.i:                                  ; preds = %bb.dg, %.lr.ph.i.i.i264
  %.not12.i.i.i = icmp eq ptr %i.arv, %.val161
  br i1 %.not12.i.i.i, label %_ZL19findCurrentLoopInfoRN4mlir4LLVM17ModuleTranslationE.exit, label %.lr.ph.i.i.i264

_ZL19findCurrentLoopInfoRN4mlir4LLVM17ModuleTranslationE.exit: ; preds = %.critedge.i.i.i, %bb.df, %_ZN4llvm16dyn_cast_or_nullIN12_GLOBAL__N_124OpenMPLoopInfoStackFrameEN4mlir15StateStackFrameEEEDaPT0_.exit.i.i.i
  %.0.i266 = phi ptr [ null, %bb.df ], [ %.val1.i.i, %_ZN4llvm16dyn_cast_or_nullIN12_GLOBAL__N_124OpenMPLoopInfoStackFrameEN4mlir15StateStackFrameEEEDaPT0_.exit.i.i.i ], [ null, %.critedge.i.i.i ] ; 6 uses
  %i.asa = call { ptr, i64 } @_ZN4mlir3omp6SimdOp13getLinearVarsEv(ptr noundef nonnull align 8 dereferenceable(8) %72)
  %i.asb = extractvalue { ptr, i64 } %i.asa, 1
  %.not155 = icmp eq i64 %i.asb, 0
  br i1 %.not155, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZL19findCurrentLoopInfoRN4mlir4LLVM17ModuleTranslationE.exit
  %i.asc = call noundef ptr @_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i266) #31
  %i.asd = getelementptr i8, ptr %i.asc, i64 48
  %.val163 = load ptr, ptr %i.asd, align 8, !tbaa !467
  call fastcc void @_ZN12_GLOBAL__N_121LinearClauseProcessor13initLinearVarERN4llvm13IRBuilderBaseERN4mlir4LLVM17ModuleTranslationEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(344) %81, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %.val163)
  %i.ase = getelementptr inbounds nuw i8, ptr %.0.i266, i64 8
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !690
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 48
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !467
  %i.asi = getelementptr inbounds i8, ptr %i.ash, i64 -88
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !645
  %i.ask = load ptr, ptr %.0.i266, align 8, !tbaa !537
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 56
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !536
  %i.asn = getelementptr inbounds i8, ptr %i.asm, i64 -24
  %i.aso = getelementptr i8, ptr %i.asj, i64 48
  %.val164 = load ptr, ptr %i.aso, align 8, !tbaa !467
  call fastcc void @_ZN12_GLOBAL__N_121LinearClauseProcessor15updateLinearVarERN4llvm13IRBuilderBaseEPNS1_10BasicBlockEPNS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(344) %81, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %.val164, ptr noundef nonnull %i.asn)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZL19findCurrentLoopInfoRN4mlir4LLVM17ModuleTranslationE.exit
  %i.asp = load ptr, ptr %88, align 8, !tbaa !518 ; 6 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 56
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !536 ; 3 uses
  store ptr %i.asp, ptr %i.by, align 8, !tbaa !187
  store ptr %i.asr, ptr %i.ca, align 8
  store i16 1, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asp, i64 48
  %.not.i269 = icmp eq ptr %i.asr, %i.ass
  br i1 %.not.i269, label %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ast = getelementptr inbounds i8, ptr %i.asr, i64 -24
  %i.asu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ast) #31
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !188
  store i64 %i.asv, ptr %1, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit

_ZN4llvm13IRBuilderBase14SetInsertPointEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES1_EELb0ELb0EEE.exit: ; preds = %bb.di, %bb.dj
  %i.asw = call i64 @_ZN4mlir3omp6SimdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef 2) #31 ; 3 uses
  %.sroa.5.0.extract.shift.i.i272532 = lshr i64 %i.asw, 32
  %i.asx = add i64 %.sroa.5.0.extract.shift.i.i272532, %i.asw
  %i.asy = xor i64 %i.asx, %i.asw
  %i.asz = and i64 %i.asy, 4294967295
  %.not548 = icmp eq i64 %i.asz, 0
end_hunk_1
