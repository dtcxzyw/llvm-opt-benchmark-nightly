Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64DeadRegisterDefinitionsPass?download=true
inline.NumInlined: 235
inline.NumDeleted: 191
begin_hunk_0_@_ZN4llvm34AArch64DeadRegisterDefinitionsPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE
define dso_local void @_ZN4llvm34AArch64DeadRegisterDefinitionsPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.(anonymous namespace)::AArch64DeadRegisterDefinitionsImpl", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !157, !alias.scope !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.c, align 8, !tbaa !159, !alias.scope !158
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !160, !alias.scope !158
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.g, ptr %i.f, align 8, !tbaa !157, !alias.scope !158
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.h, align 8, !tbaa !159, !alias.scope !158
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.i, align 4, !tbaa !161, !alias.scope !158
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.j, align 8, !tbaa !160, !alias.scope !158
  store i32 1, ptr %i.d, align 4, !tbaa !161, !alias.scope !158, !noalias !162
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !9, !alias.scope !158, !noalias !162
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0) #11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !160, !range !15, !noundef !16
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !157    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !161  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not17.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.01218.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %.01218.i.i.i.i.i, align 8, !tbaa !9
  %.not15.i.i.i.i.i = icmp eq ptr %i.w, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit, label %bb.f

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i: ; preds = %bb.d
  %i.x = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #11
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i: ; preds = %bb.f, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i, %bb.e, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i8, ptr %i.y, align 8, !tbaa !160, !range !15, !noalias !163, !noundef !16
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.g:                                             ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !157, !noalias !163 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !161, !noalias !163 ; 4 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.ah, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !9, !noalias !163
  %.not15.i.i.i.i = icmp eq ptr %i.ag, @_ZN4llvm11CFGAnalyses6SetKeyE
  br i1 %.not15.i.i.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !159, !noalias !163
  %i.ak = icmp ult i32 %i.ad, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = add nuw i32 %i.ad, 1
  store i32 %i.al, ptr %i.ac, align 4, !tbaa !161, !noalias !163
  store ptr @_ZN4llvm11CFGAnalyses6SetKeyE, ptr %i.af, align 8, !tbaa !9, !noalias !163
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.am = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm11CFGAnalyses6SetKeyE) #11, !noalias !163 ; 0 uses
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit

_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %bb.h, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl3runERN4llvm15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) initializes((0, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168, !nonnull !16, !align !132 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !171
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  store ptr %i.i, ptr %0, align 8, !tbaa !173
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i8 0, ptr %i.j, align 8, !tbaa !174
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.07.013 = load ptr, ptr %i.k, align 8, !tbaa !175 ; 2 uses
  %.not14 = icmp eq ptr %.sroa.07.013, %i.l
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl24processMachineBasicBlockERN4llvm17MachineBasicBlockE.exit
  %.pre = load i8, ptr %i.j, align 8, !tbaa !174, !range !15
  %i.m = trunc nuw i8 %.pre to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi i1 [ %i.m, %._crit_edge.loopexit ], [ false, %bb.a ]
  ret i1 %i.n

.lr.ph:                                           ; preds = %bb.a, %_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl24processMachineBasicBlockERN4llvm17MachineBasicBlockE.exit
  %.sroa.07.015 = phi ptr [ %.sroa.07.0, %_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl24processMachineBasicBlockERN4llvm17MachineBasicBlockE.exit ], [ %.sroa.07.013, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 48 ; 2 uses
  %.sroa.049.068.i = load ptr, ptr %i.o, align 8, !tbaa !180 ; 2 uses
  %.not5869.i = icmp eq ptr %.sroa.049.068.i, %i.p
  br i1 %.not5869.i, label %_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl24processMachineBasicBlockERN4llvm17MachineBasicBlockE.exit, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.049.070.i = phi ptr [ %.sroa.049.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.049.068.i, %.lr.ph ] ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.049.070.i, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !193  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.049.070.i, i64 40
  %i.t = load i24, ptr %i.s, align 8
  %i.u = zext i24 %i.t to i64                     ; 2 uses
  %i.v = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.049.070.i) #11
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  %.not14.not.i.i = icmp samesign eq i64 %i.w, %i.u
  br i1 %.not14.not.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph71.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.w
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01015.i.i, i64 32 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %.01015.i.i = phi ptr [ %i.z, %bb.b ], [ %i.y, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.aa = load i32, ptr %.01015.i.i, align 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = icmp eq i32 %i.ab, 5
  br i1 %i.ac, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.b, %.lr.ph71.i
  %i.ad = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.049.070.i, i32 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %.not59.i = icmp eq i32 %i.ad, -1
  br i1 %.not59.i, label %bb.c, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i

bb.c:                                             ; preds = %.loopexit.i
  %i.ae = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.049.070.i, i32 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %.not60.i = icmp eq i32 %i.ae, -1
  br i1 %.not60.i, label %bb.d, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.049.070.i, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !194 ; 2 uses
  switch i32 %i.ag, label %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i [
    i32 4806, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4807, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4812, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4813, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4808, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4809, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4810, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4811, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4877, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4878, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4883, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4884, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4879, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4880, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4881, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4882, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4897, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4898, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4903, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4904, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4899, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4900, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4901, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4902, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5174, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5175, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5180, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5181, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5176, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5177, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5178, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5179, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5194, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5195, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5200, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5201, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5196, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5197, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5198, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5199, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5210, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5211, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5216, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5217, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5212, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5213, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5214, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5215, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5269, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5270, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5275, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5276, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5271, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5272, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5273, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5274, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5285, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5286, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5291, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5292, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5287, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5288, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5289, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5290, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7876, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7877, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7882, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7883, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7878, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7879, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7880, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7881, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
  ]

_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i:   ; preds = %bb.d
  switch i32 %i.ag, label %_ZL23atomicReadDroppedOnZeroj.exit.i [
    i32 4814, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4815, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4820, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4821, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4816, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4817, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4818, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4819, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4885, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4886, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4895, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4896, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4887, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4888, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4889, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4890, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4905, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4906, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4911, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4912, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4907, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4908, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4909, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 4910, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5182, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5183, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5192, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5193, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5184, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5185, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5186, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5187, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5202, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5203, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5208, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5209, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5204, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5205, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5206, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5207, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5218, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5219, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5224, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5225, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5220, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5221, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5222, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5223, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5277, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5278, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5283, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5284, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5279, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5280, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5281, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5282, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5293, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5294, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5299, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5300, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5295, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5296, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5297, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 5298, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7884, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7885, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7902, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7903, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7886, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7887, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7888, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
    i32 7889, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
  ]

_ZL23atomicReadDroppedOnZeroj.exit.i:             ; preds = %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.049.070.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !195 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !198 ; 2 uses
  %.not66.i = icmp eq i8 %i.ak, 0
  br i1 %.not66.i, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL23atomicReadDroppedOnZeroj.exit.i
  %i.al = zext i8 %i.ak to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !193
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.i ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i32 %i.ao, 16777471
  %or.cond.i = icmp eq i32 %i.ap, 16777216
  br i1 %or.cond.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !199 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.at = and i32 %i.ao, 83886080
  %i.au = icmp eq i32 %i.at, 83886080
  br i1 %i.au, label %_ZNK4llvm19MachineRegisterInfo15use_nodbg_emptyENS_8RegisterE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %0, align 8, !tbaa !173
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = and i32 %i.ar, 2147483647
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.0.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15use_nodbg_emptyENS_8RegisterE.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %.0.i.i.i.i, align 8
  %i.bd = and i32 %i.bc, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %or.cond.not.i.i.i.i, label %.critedge.i, label %.critedge2.i.i.i.i.i

.critedge2.i.i.i.i.i:                             ; preds = %bb.h, %bb.i
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.i ], [ %.0.i.i.i.i, %bb.h ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15use_nodbg_emptyENS_8RegisterE.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i.i.i.i
  %i.be = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.bf = and i32 %i.be, -2130706432
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %or.cond.not.i.i.i.i.i, label %.critedge.i, label %.critedge2.i.i.i.i.i, !llvm.loop !164

_ZNK4llvm19MachineRegisterInfo15use_nodbg_emptyENS_8RegisterE.exit.thread.i: ; preds = %.critedge2.i.i.i.i.i, %bb.g, %bb.f
  %i.bg = and i32 %i.ao, 15728640
  %.not61.i = icmp eq i32 %i.bg, 0
  br i1 %.not61.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo15use_nodbg_emptyENS_8RegisterE.exit.thread.i
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !171 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !134
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bm = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(112) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef %i.bl) #11, !inline_history !165 ; 4 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 18
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !204
  %.not.i.i = icmp ugt i16 %i.bp, 1
  br i1 %.not.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %.critedge.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !205
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !199 ; 2 uses
  %i.bw = and i8 %i.bv, 16
  %.not62.i = icmp eq i8 %i.bw, 0
  br i1 %.not62.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit40.i, label %.split33.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit40.i: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.bx = and i8 %i.bv, 64
  %.not63.i = icmp eq i8 %i.bx, 0
  br i1 %.not63.i, label %.critedge.i, label %.split33.i

.split33.i:                                       ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit40.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %.sroa.0.0.i = phi i32 [ 12, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i ], [ 14, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit40.i ]
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 %.sroa.0.0.i) #11
  %i.by = load i32, ptr %i.an, align 8
  %i.bz = or i32 %i.by, 67108864
  store i32 %i.bz, ptr %i.an, align 8
  store i8 1, ptr %i.j, align 8, !tbaa !174
  br label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i

.critedge.i:                                      ; preds = %bb.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit40.i, %bb.k, %bb.j, %_ZNK4llvm19MachineRegisterInfo15use_nodbg_emptyENS_8RegisterE.exit.thread.i, %bb.h, %bb.e, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.al
  br i1 %.not.i, label %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i, label %.lr.ph.i, !llvm.loop !166

_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i: ; preds = %.lr.ph.i.i, %.critedge.i, %.split33.i, %_ZL23atomicReadDroppedOnZeroj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %_ZN4llvmL26atomicBarrierDroppedOnZeroEj.exit.i, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.c, %.loopexit.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.049.070.i, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i41.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i41.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.049.070.i, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !206
  %i.cd = and i32 %i.cc, 8
  %.not34.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.cf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.049.070.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !180 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !206
  %i.ci = and i32 %i.ch, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !167

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.049.070.i, %_ZL14usesFrameIndexRKN4llvm12MachineInstrE.exit.i ], [ %.sroa.049.070.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.cf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.049.0.i = load ptr, ptr %i.cj, align 8, !tbaa !180 ; 2 uses
  %.not58.i = icmp eq ptr %.sroa.049.0.i, %i.p
  br i1 %.not58.i, label %_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl24processMachineBasicBlockERN4llvm17MachineBasicBlockE.exit, label %.lr.ph71.i

_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl24processMachineBasicBlockERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 8
  %.sroa.07.0 = load ptr, ptr %i.ck, align 8, !tbaa !175 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

declare void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm36createAArch64DeadRegisterDefinitionsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #13 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacy2IDE, ptr %i.c, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacyE, i64 16), ptr %i.a, align 8, !tbaa !134
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacyEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #13 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacy2IDE, ptr %i.c, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacyE, i64 16), ptr %i.a, align 8, !tbaa !134
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacyD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacy11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str, i64 33 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #11
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #11
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_136AArch64DeadRegisterDefinitionsLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::AArch64DeadRegisterDefinitionsImpl", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !207, !nonnull !16, !align !132
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.a) #11
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_134AArch64DeadRegisterDefinitionsImpl3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(1065) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}
end_hunk_0
