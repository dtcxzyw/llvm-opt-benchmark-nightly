Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BranchProbabilityInfo?download=true
inline.NumInlined: 3603
inline.NumDeleted: 2033
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm21BranchProbabilityInfo21copyEdgeProbabilitiesEPNS_10BasicBlockES2_:bb.a
.lr.ph.preheader21:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !77 ; 2 uses
  %i.ah = icmp ugt i32 %i.f, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN4llvm21BranchProbabilityInfo10eraseBlockEPKNS_10BasicBlockE.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store i32 0, ptr %i.al, align 4, !tbaa !78
  br label %_ZN4llvm21BranchProbabilityInfo10eraseBlockEPKNS_10BasicBlockE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader21 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !78
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !78
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ap = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.d, %i.ap
  br i1 %.not, label %_ZN4llvm21BranchProbabilityInfo10eraseBlockEPKNS_10BasicBlockE.exit, label %.lr.ph, !llvm.loop !286

_ZN4llvm21BranchProbabilityInfo10eraseBlockEPKNS_10BasicBlockE.exit: ; preds = %.lr.ph, %middle.block, %_ZNK4llvm21BranchProbabilityInfo8getEdgesEPKNS_10BasicBlockE.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm21BranchProbabilityInfo26swapSuccEdgesProbabilitiesEPKNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %.not.i = icmp ugt i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %_ZNK4llvm21BranchProbabilityInfo8getEdgesEPKNS_10BasicBlockE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4, !tbaa !78   ; 2 uses
  %.not8.not.i = icmp eq i32 %i.i, 0
  br i1 %.not8.not.i, label %_ZNK4llvm21BranchProbabilityInfo8getEdgesEPKNS_10BasicBlockE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !78
  %i.o = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.o, ptr %i.m, align 4, !tbaa !78
  br label %_ZNK4llvm21BranchProbabilityInfo8getEdgesEPKNS_10BasicBlockE.exit.thread

_ZNK4llvm21BranchProbabilityInfo8getEdgesEPKNS_10BasicBlockE.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @_ZNK4llvm5Value14printAsOperandERNS_11raw_ostreamEbPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNK4llvm10BasicBlock9getModuleEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21BranchProbabilityInfo9calculateERKNS_8FunctionERKNS_8LoopInfoEPKNS_17TargetLibraryInfoEPNS_13DominatorTreeEPNS_17PostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(140) initializes((8, 12), (72, 76), (128, 140)) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.(anonymous namespace)::BPIConstruction", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.c = load i32, ptr %i.b, align 4, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.c, ptr %i.d, align 8, !tbaa !287
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.f, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %0, ptr %6, align 8, !tbaa !288
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 1, ptr %i.j, align 8
  store i32 0, ptr %i.k, align 8
  call fastcc void @_ZN12_GLOBAL__N_115BPIConstruction9calculateERKN4llvm8FunctionERKNS1_8LoopInfoEPKNS1_17TargetLibraryInfoEPNS1_13DominatorTreeEPNS1_17PostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(216) %6, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.l = load i32, ptr %i.j, align 8
  %i.m = and i32 %i.l, 1
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = add nuw nsw i64 %i.s, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  %i.x = add nuw nsw i64 %i.w, %i.t
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.r, i64 noundef %i.x, i64 noundef 8) #24
  br label %_ZN4llvm13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i

_ZN4llvm13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.y = load i32, ptr %i.h, align 8
  %i.z = and i32 %i.y, 1
  %.not.i.i1.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i1.i, label %bb.d, label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i

bb.d:                                             ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = zext i32 %i.ab to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #24
  br label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i

_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i: ; preds = %bb.e, %bb.d, %_ZN4llvm13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !126 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_115BPIConstructionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i
  call fastcc void @_ZNKSt14default_deleteIKN12_GLOBAL__N_115BPIConstruction7SccInfoEEclEPS3_(ptr noundef nonnull %i.am)
  br label %_ZN12_GLOBAL__N_115BPIConstructionD2Ev.exit

_ZN12_GLOBAL__N_115BPIConstructionD2Ev.exit:      ; preds = %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PrintBranchProb, i64 120), align 8, !tbaa !132, !range !21, !noundef !22
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread10

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_115BPIConstructionD2Ev.exit
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PrintBranchProbFuncNameB5cxx11, i64 128), align 8, !tbaa !133
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1      ; 3 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PrintBranchProbFuncNameB5cxx11, i64 120), align 8, !tbaa !30
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PrintBranchProbFuncNameB5cxx11, i64 128), align 8, !tbaa !133
  %.not.i = icmp eq i64 %i.at, %i.av
  br i1 %.not.i, label %bb.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread10

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.i
  %bcmp.i = call i32 @bcmp(ptr %i.as, ptr %i.au, i64 %i.at)
  %i.ax = icmp eq i32 %bcmp.i, 0
  br i1 %i.ax, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread10

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.i, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.g
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #24
  call void @_ZNK4llvm21BranchProbabilityInfo5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ay)
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread10

_ZN4llvmeqENS_9StringRefES0_.exit.thread10:       ; preds = %bb.h, %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN12_GLOBAL__N_115BPIConstructionD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115BPIConstruction9calculateERKN4llvm8FunctionERKNS1_8LoopInfoEPKNS1_17TargetLibraryInfoEPNS1_13DominatorTreeEPNS1_17PostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(216) initializes((8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.llvm::SmallVector.367", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallPtrSet.372", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.375", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallPtrSet.334", align 8 ; 14 uses
  %10 = alloca %"class.llvm::SmallVector.363", align 8 ; 13 uses
  %11 = alloca %"class.llvm::SmallVector.365", align 8 ; 11 uses
  %12 = alloca %"class.llvm::SmallVector.359", align 8 ; 12 uses
  %13 = alloca %"class.llvm::SmallVector.359", align 8 ; 10 uses
  %14 = alloca %"class.llvm::SmallVector.359", align 8 ; 11 uses
  %15 = alloca %"class.llvm::SmallVector.361", align 8 ; 11 uses
  %16 = alloca %"class.llvm::SmallVector.255", align 8 ; 15 uses
  %17 = alloca %"class.llvm::SmallVector.257", align 8 ; 10 uses
  %18 = alloca %"class.llvm::SmallDenseMap.262", align 8 ; 13 uses
  %19 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %"class.(anonymous namespace)::BPIConstruction::LoopBlock", align 8 ; 6 uses
  %21 = alloca %"class.(anonymous namespace)::BPIConstruction::LoopBlock", align 8 ; 6 uses
  %22 = alloca %"class.llvm::scc_iterator", align 8 ; 15 uses
  %23 = alloca %"class.llvm::PostOrderTraversal", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !144
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27, !noalias !642 ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !noalias !642
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114, !noalias !645
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -24
  store i32 0, ptr %22, align 8, !tbaa !159, !alias.scope !646, !noalias !642
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, i8 0, i64 96, i1 false), !alias.scope !646, !noalias !642
  call void @_ZN4llvm12scc_iteratorIPKNS_8FunctionENS_11GraphTraitsIS3_EEE11DFSVisitOneEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %i.h), !noalias !642
  call void @_ZN4llvm12scc_iteratorIPKNS_8FunctionENS_11GraphTraitsIS3_EEE10GetNextSCCEv(ptr noundef nonnull align 8 dereferenceable(104) %22), !noalias !642
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !160, !noalias !642 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !160, !noalias !642 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %.sroa.0.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  br i1 %i.n, label %._crit_edge.i.i, label %.lr.ph137.i.i

.lr.ph137.i.i:                                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %bb.a
  %i.t = phi ptr [ %i.l, %bb.a ], [ %i.we, %.loopexit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161, !noalias !642 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm12scc_iteratorIPKNS0_8FunctionENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162, !noalias !642
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25, !noalias !642
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !163, !noalias !642
  br label %_ZNSt6vectorIN4llvm12scc_iteratorIPKNS0_8FunctionENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EED2Ev.exit.i.i.i

_ZNSt6vectorIN4llvm12scc_iteratorIPKNS0_8FunctionENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EED2Ev.exit.i.i.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.ab = phi ptr [ %.pre.i.i, %bb.b ], [ %i.t, %._crit_edge.i.i ] ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm12scc_iteratorIPKNS0_8FunctionENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EED2Ev.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !164, !noalias !642
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25, !noalias !642
  br label %_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIN4llvm12scc_iteratorIPKNS0_8FunctionENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EED2Ev.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !163, !noalias !642 ; 3 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i2.i.i.i, label %_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit3.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !164, !noalias !642
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #25, !noalias !642
  br label %_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit3.i.i.i

_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit3.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !165, !noalias !642 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSt11make_uniqueIN12_GLOBAL__N_115BPIConstruction7SccInfoEJRKN4llvm8FunctionEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4llvm10BasicBlockESaIS3_EED2Ev.exit3.i.i.i
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !166, !noalias !642
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 4
  %i.au = add nuw nsw i64 %i.as, 31
  %i.av = lshr i64 %i.au, 3
  %i.aw = and i64 %i.av, 1073741820
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ar, i64 noundef %i.ax, i64 noundef 8) #24, !noalias !642
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_115BPIConstruction7SccInfoEJRKN4llvm8FunctionEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.f:                                             ; preds = %.loopexit.i.i, %.lr.ph137.i.i
  %i.ay = phi ptr [ %i.m, %.lr.ph137.i.i ], [ %i.wf, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph137.i.i ], [ %.pre186.i.i, %.loopexit.i.i ] ; 13 uses
  %i.az = phi ptr [ %i.l, %.lr.ph137.i.i ], [ %i.we, %.loopexit.i.i ] ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp eq i64 %i.bc, 8
  %.not133.i.i = icmp eq ptr %i.az, %i.ay
  %or.cond.i.i = or i1 %.not133.i.i, %i.bd
  %.pre186.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  br i1 %or.cond.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.be = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bf = icmp samesign ugt i64 %indvars.iv.i.i, 384307168202282324
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_115BPIConstruction7SccInfo21calculateSccBlockTypeEPKN4llvm10BasicBlockEi.exit.i.i, %.lr.ph.i.i
  %.sroa.028.0134.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.wd, %_ZN12_GLOBAL__N_115BPIConstruction7SccInfo21calculateSccBlockTypeEPKN4llvm10BasicBlockEi.exit.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.028.0134.i.i, align 8, !tbaa !167, !noalias !642 ; 12 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !170, !noalias !647 ; 3 uses
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !171, !noalias !647 ; 3 uses
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !172, !noalias !647 ; 4 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = add i32 %i.bj, -1                       ; 2 uses
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = mul i64 %i.bm, -4658895280553007687     ; 2 uses
  %i.bo = lshr i64 %i.bn, 31
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bl, %i.bq                    ; 3 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = lshr i64 %i.bs, 5
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !78, !noalias !642
  %i.bx = and i32 %i.br, 31
  %i.by = lshr i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !173

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %i.ca = phi ptr [ %i.cg, %bb.i ], [ %i.bt, %bb.h ] ; 2 uses
  %.024.i.i.i.i = phi i32 [ %i.ce, %bb.i ], [ %i.br, %bb.h ]
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !167, !noalias !642
  %i.cc = icmp eq ptr %i.bg, %i.cb
  br i1 %i.cc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i.i, label %bb.i, !prof !174

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = add nuw i32 %.024.i.i.i.i, 1
  %i.ce = and i32 %i.cd, %i.bl                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.cf ; 2 uses
  %i.ch = lshr i64 %i.cf, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !78, !noalias !642
  %i.ck = and i32 %i.ce, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !175, !llvm.loop !299

.loopexit.i.i.i:                                  ; preds = %bb.i, %bb.h, %bb.g
  %.lcssa28.sink.i.ph.i.i.i = phi ptr [ %i.bt, %bb.h ], [ null, %bb.g ], [ %i.cg, %bb.i ]
  %i.cn = load i32, ptr %i.q, align 8, !tbaa !176, !noalias !642
  %i.co = shl i32 %i.cn, 2
  %i.cp = add i32 %i.co, 4
  %i.cq = mul i32 %i.bj, 3
  %.not.i.i.i.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i.i.i, label %bb.j, !prof !174

bb.j:                                             ; preds = %.loopexit.i.i.i
  %i.cr = shl i32 %i.bj, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef %i.cr), !noalias !642
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !170, !noalias !648 ; 5 uses
  %i.ct = load ptr, ptr %i.o, align 8, !tbaa !171, !noalias !648 ; 5 uses
  %i.cu = load i32, ptr %i.p, align 4, !tbaa !172, !noalias !648 ; 2 uses
  %i.cv = icmp ne i32 %i.cu, 0
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add i32 %i.cu, -1                       ; 2 uses
  %i.cx = ptrtoint ptr %i.bg to i64
  %i.cy = mul i64 %i.cx, -4658895280553007687     ; 2 uses
  %i.cz = lshr i64 %i.cy, 31
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = trunc i64 %i.da to i32
  %i.dc = and i32 %i.cw, %i.db                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.dd ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115BPIConstruction9calculateERKN4llvm8FunctionERKNS1_8LoopInfoEPKNS1_17TargetLibraryInfoEPNS1_13DominatorTreeEPNS1_17PostDominatorTreeE:bb.a
  %i.cws = phi ptr [ null, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i164 ], [ %i.csy, %_ZNK12_GLOBAL__N_115BPIConstruction12getLoopBlockEPKN4llvm10BasicBlockE.exit72.i.thread ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.i.i61.i ], [ %i.csy, %tailrecurse.i.i.i163 ] ; 2 uses
  %i.cwt = load i32, ptr %i.yx, align 8, !noalias !763
  %i.cwu = and i32 %i.cwt, 1
  %.not.i.i.i.i.i.i11.i187 = icmp eq i32 %i.cwu, 0 ; 3 uses
  %i.cwv = load ptr, ptr %i.yy, align 8, !noalias !763
  %i.cww = load ptr, ptr %i.yz, align 8, !noalias !763
  %i.cwx = load i32, ptr %i.za, align 8, !noalias !763
  %.sink2.i.i.i.i.i.i12.i188 = select i1 %.not.i.i.i.i.i.i11.i187, ptr %i.cwv, ptr %i.yy ; 3 uses
  %.sink1.i.i.i.i.i.i13.i189 = select i1 %.not.i.i.i.i.i.i11.i187, ptr %i.cww, ptr %i.zb ; 2 uses
  %.sink.i.i.i.i.i.i14.i190 = select i1 %.not.i.i.i.i.i.i11.i187, i32 %i.cwx, i32 4 ; 4 uses
  %i.cwy = icmp eq i32 %.sink.i.i.i.i.i.i14.i190, 0
  br i1 %i.cwy, label %.loopexit.i.i.i15.i191, label %bb.hu

bb.hu:                                            ; preds = %_ZNK12_GLOBAL__N_115BPIConstruction18isLoopEnteringEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread1.i185
  %i.cwz = add i32 %.sink.i.i.i.i.i.i14.i190, -1  ; 2 uses
  %i.cxa = ptrtoint ptr %i.csr to i64
  %i.cxb = mul i64 %i.cxa, -4658895280553007687   ; 2 uses
  %i.cxc = lshr i64 %i.cxb, 31
  %i.cxd = xor i64 %i.cxc, %i.cxb
  %i.cxe = trunc i64 %i.cxd to i32
  %i.cxf = and i32 %i.cwz, %i.cxe                 ; 3 uses
  %i.cxg = zext i32 %i.cxf to i64                 ; 2 uses
  %i.cxh = lshr i64 %i.cxg, 5
  %i.cxi = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i13.i189, i64 %i.cxh
  %i.cxj = load i32, ptr %i.cxi, align 4, !tbaa !78, !noalias !764
  %i.cxk = and i32 %i.cxf, 31
  %i.cxl = lshr i32 %i.cxj, %i.cxk
  %i.cxm = trunc i32 %i.cxl to i1
  br i1 %i.cxm, label %.lr.ph.i.i.i.i19.i195, label %.loopexit.i.i.i15.i191, !prof !173

.lr.ph.i.i.i.i19.i195:                            ; preds = %bb.hu, %bb.hv
  %i.cxn = phi i64 [ %i.cxt, %bb.hv ], [ %i.cxg, %bb.hu ]
  %.017.i.i.i.i20.i196 = phi i32 [ %i.cxs, %bb.hv ], [ %i.cxf, %bb.hu ]
  %i.cxo = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i12.i188, i64 %i.cxn ; 2 uses
  %i.cxp = load ptr, ptr %i.cxo, align 8, !tbaa !167, !noalias !764
  %i.cxq = icmp eq ptr %i.csr, %i.cxp
  br i1 %i.cxq, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i197, label %bb.hv, !prof !174

bb.hv:                                            ; preds = %.lr.ph.i.i.i.i19.i195
  %i.cxr = add nuw i32 %.017.i.i.i.i20.i196, 1
  %i.cxs = and i32 %i.cxr, %i.cwz                 ; 3 uses
  %i.cxt = zext i32 %i.cxs to i64                 ; 2 uses
  %i.cxu = lshr i64 %i.cxt, 5
  %i.cxv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i13.i189, i64 %i.cxu
  %i.cxw = load i32, ptr %i.cxv, align 4, !tbaa !78, !noalias !764
  %i.cxx = and i32 %i.cxs, 31
  %i.cxy = lshr i32 %i.cxw, %i.cxx
  %i.cxz = trunc i32 %i.cxy to i1
  br i1 %i.cxz, label %.lr.ph.i.i.i.i19.i195, label %.loopexit.i.i.i15.i191, !prof !175

.loopexit.i.i.i15.i191:                           ; preds = %bb.hv, %bb.hu, %_ZNK12_GLOBAL__N_115BPIConstruction18isLoopEnteringEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread1.i185
  %i.cya = zext i32 %.sink.i.i.i.i.i.i14.i190 to i64 ; 2 uses
  %i.cyb = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i12.i188, i64 %i.cya
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i197: ; preds = %.lr.ph.i.i.i.i19.i195
  %.pre.i21.i198 = zext i32 %.sink.i.i.i.i.i.i14.i190 to i64
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i197, %.loopexit.i.i.i15.i191
  %.pre-phi.i16.i193 = phi i64 [ %.pre.i21.i198, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i197 ], [ %i.cya, %.loopexit.i.i.i15.i191 ]
  %.lcssa.sink.i.i.i17.i194 = phi ptr [ %i.cxo, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i197 ], [ %i.cyb, %.loopexit.i.i.i15.i191 ] ; 2 uses
  %i.cyc = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i12.i188, i64 %.pre-phi.i16.i193
  %i.cyd = icmp eq ptr %.lcssa.sink.i.i.i17.i194, %i.cyc
  br i1 %i.cyd, label %_ZNK12_GLOBAL__N_115BPIConstruction22getEstimatedEdgeWeightERKSt4pairIRKNS0_9LoopBlockES4_E.exit202, label %bb.hw

bb.hw:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192
  %i.cye = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i17.i194, i64 8
  %i.cyf = load i32, ptr %i.cye, align 4, !tbaa !78
  %i.cyg = zext i32 %i.cyf to i64
  %i.cyh = or disjoint i64 %i.cyg, 4294967296
  br label %_ZNK12_GLOBAL__N_115BPIConstruction22getEstimatedEdgeWeightERKSt4pairIRKNS0_9LoopBlockES4_E.exit202

_ZNK12_GLOBAL__N_115BPIConstruction22getEstimatedEdgeWeightERKSt4pairIRKNS0_9LoopBlockES4_E.exit202: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findERKS5_.exit.i.i177, %bb.ht, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192, %bb.hw
  %i.cyi = phi ptr [ %i.cup, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findERKS5_.exit.i.i177 ], [ %i.cup, %bb.ht ], [ %i.cws, %bb.hw ], [ %i.cws, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192 ] ; 2 uses
  %i.cyj = phi i32 [ %i.cuq, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findERKS5_.exit.i.i177 ], [ %i.cuq, %bb.ht ], [ %i.cwr, %bb.hw ], [ %i.cwr, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192 ]
  %.sroa.04.0.i180 = phi i64 [ 0, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_4LoopEiEjLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findERKS5_.exit.i.i177 ], [ %i.cwq, %bb.ht ], [ %i.cyh, %bb.hw ], [ 0, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i192 ] ; 2 uses
  %.sroa.0119.0.extract.trunc.i = trunc i64 %.sroa.04.0.i180 to i32 ; 3 uses
  %.sroa.10.0.extract.shift.i = lshr i64 %.sroa.04.0.i180, 32 ; 2 uses
  %.sroa.10.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.10.0.extract.shift.i to i8
  %i.cyk = icmp eq ptr %i.cyi, %.sroa.3229.1
  %or.cond.i90 = or i1 %.not42150.i, %i.cyk
  br i1 %or.cond.i90, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i.i95, label %.lr.ph.i.i.i.i91

.lr.ph.i.i.i.i91:                                 ; preds = %_ZNK12_GLOBAL__N_115BPIConstruction22getEstimatedEdgeWeightERKSt4pairIRKNS0_9LoopBlockES4_E.exit202, %tailrecurse.i.i.i.i94
  %.tr78.i.i.i.i92 = phi ptr [ %i.cyl, %tailrecurse.i.i.i.i94 ], [ %i.cyi, %_ZNK12_GLOBAL__N_115BPIConstruction22getEstimatedEdgeWeightERKSt4pairIRKNS0_9LoopBlockES4_E.exit202 ] ; 2 uses
  %.not.not.i.i.i.i93 = icmp eq ptr %.tr78.i.i.i.i92, null
  br i1 %.not.not.i.i.i.i93, label %_ZNK12_GLOBAL__N_115BPIConstruction17isLoopExitingEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread.i, label %tailrecurse.i.i.i.i94

tailrecurse.i.i.i.i94:                            ; preds = %.lr.ph.i.i.i.i91
  %i.cyl = load ptr, ptr %.tr78.i.i.i.i92, align 8, !tbaa !236 ; 2 uses
  %i.cym = icmp eq ptr %i.cyl, %.sroa.3229.1
  br i1 %i.cym, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i.i95, label %.lr.ph.i.i.i.i91

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i.i95: ; preds = %tailrecurse.i.i.i.i94, %_ZNK12_GLOBAL__N_115BPIConstruction22getEstimatedEdgeWeightERKSt4pairIRKNS0_9LoopBlockES4_E.exit202
  %i.cyn = icmp ne i32 %i.cyj, %.sroa.6230.0
  %or.cond158.i = and i1 %.not8.i.i.i87, %i.cyn
  br i1 %or.cond158.i, label %_ZNK12_GLOBAL__N_115BPIConstruction17isLoopExitingEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread.i, label %.critedge.i96

_ZNK12_GLOBAL__N_115BPIConstruction17isLoopExitingEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread.i: ; preds = %.lr.ph.i.i.i.i91, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i.i95
  %i.cyo = trunc nuw i64 %.sroa.10.0.extract.shift.i to i1 ; 2 uses
  %i.cyp = icmp eq i32 %.sroa.0119.0.extract.trunc.i, 0
  %.not161.i = and i1 %i.cyp, %i.cyo
  br i1 %.not161.i, label %.critedge.i96, label %bb.hx

bb.hx:                                            ; preds = %_ZNK12_GLOBAL__N_115BPIConstruction17isLoopExitingEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread.i
  %i.cyq = udiv i32 %.sroa.0119.0.extract.trunc.i, 31
  %i.cyr = call i32 @llvm.umax.i32(i32 %i.cyq, i32 1)
  %.sroa.0119.0.extract.trunc121.i = select i1 %i.cyo, i32 %i.cyr, i32 33825
  br label %.critedge.i96

.critedge.i96:                                    ; preds = %bb.hx, %_ZNK12_GLOBAL__N_115BPIConstruction17isLoopExitingEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i.i95
  %.sroa.0119.0.i = phi i32 [ %.sroa.0119.0.extract.trunc121.i, %bb.hx ], [ 0, %_ZNK12_GLOBAL__N_115BPIConstruction17isLoopExitingEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread.i ], [ %.sroa.0119.0.extract.trunc.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i.i95 ] ; 6 uses
  %.sroa.10.0.i = phi i8 [ 1, %bb.hx ], [ 1, %_ZNK12_GLOBAL__N_115BPIConstruction17isLoopExitingEdgeERKSt4pairIRKNS0_9LoopBlockES4_E.exit.thread.i ], [ %.sroa.10.0.extract.trunc.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.thread.i.i.i95 ] ; 5 uses
  br i1 %.not42150.i, label %.critedge2.i, label %bb.hy

bb.hy:                                            ; preds = %.critedge.i96
  %i.cys = load i8, ptr %i.boe, align 8, !tbaa !20, !range !21, !noundef !22
  %i.cyt = trunc nuw i8 %i.cys to i1
  br i1 %i.cyt, label %bb.hz, label %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.i

bb.hz:                                            ; preds = %bb.hy
  %i.cyu = load ptr, ptr %9, align 8, !tbaa !23   ; 2 uses
  %i.cyv = load i32, ptr %i.bod, align 4, !tbaa !108 ; 2 uses
  %i.cyw = zext i32 %i.cyv to i64
  %.idx.i.i.i113 = shl nuw nsw i64 %i.cyw, 3
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyu, i64 %.idx.i.i.i113
  %.not17.i.i.i = icmp eq i32 %i.cyv, 0
  br i1 %.not17.i.i.i, label %.critedge2.i, label %.lr.ph.i.i.i114

bb.ia:                                            ; preds = %.lr.ph.i.i.i114
  %i.cyy = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i75.i = icmp eq ptr %i.cyy, %i.cyx
  br i1 %.not.i.i75.i, label %.critedge2.i, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %bb.hz, %bb.ia
  %.01218.i.i.i = phi ptr [ %i.cyy, %bb.ia ], [ %i.cyu, %bb.hz ] ; 2 uses
  %i.cyz = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !32
  %.not15.i.i.i = icmp eq ptr %i.cyz, %i.csr
  br i1 %.not15.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread156.i, label %bb.ia

_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.i: ; preds = %bb.hy
  %i.cza = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %9, ptr noundef %i.csr) #24
  %.not162.i = icmp eq ptr %i.cza, null
  br i1 %.not162.i, label %.critedge2.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread156.i

_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread156.i: ; preds = %.lr.ph.i.i.i114, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.i
  %i.czb = trunc nuw i8 %.sroa.10.0.i to i1       ; 2 uses
  %i.czc = icmp eq i32 %.sroa.0119.0.i, 0
  %.not164.i = select i1 %i.czb, i1 %i.czc, i1 false
  br i1 %.not164.i, label %.critedge2.i, label %bb.ib

bb.ib:                                            ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread156.i
  %i.czd = lshr i32 %.sroa.0119.0.i, 1
  %i.cze = call i32 @llvm.umax.i32(i32 %i.czd, i32 1)
  %.sroa.0119.0.extract.trunc122.i = select i1 %i.czb, i32 %i.cze, i32 524287
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.ia, %bb.ib, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread156.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.i, %bb.hz, %.critedge.i96
  %.sroa.0119.1.i = phi i32 [ 0, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread156.i ], [ %.sroa.0119.0.extract.trunc122.i, %bb.ib ], [ %.sroa.0119.0.i, %.critedge.i96 ], [ %.sroa.0119.0.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.i ], [ %.sroa.0119.0.i, %bb.hz ], [ %.sroa.0119.0.i, %bb.ia ]
  %.sroa.10.1.i = phi i8 [ 1, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.thread156.i ], [ 1, %bb.ib ], [ %.sroa.10.0.i, %.critedge.i96 ], [ %.sroa.10.0.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_10BasicBlockEE8containsES3_.exit.i ], [ %.sroa.10.0.i, %bb.hz ], [ %.sroa.10.0.i, %bb.ia ]
  %i.czf = trunc nuw i8 %.sroa.10.1.i to i1       ; 2 uses
  %spec.select.i97 = select i1 %i.czf, i1 true, i1 %.040186.i ; 2 uses
  %.0.i83.i = select i1 %i.czf, i32 %.sroa.0119.1.i, i32 1048575 ; 3 uses
  %i.czg = zext i32 %.0.i83.i to i64
  %i.czh = add i64 %.039187.i, %i.czg             ; 5 uses
  %i.czi = load i32, ptr %i.boq, align 8, !tbaa !40 ; 2 uses
  %i.czj = load i32, ptr %i.bor, align 4, !tbaa !41
  %.not.i84.i = icmp ult i32 %i.czi, %i.czj
  br i1 %.not.i84.i, label %bb.id, label %bb.ic, !prof !174

bb.ic:                                            ; preds = %.critedge2.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %.0.i83.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i98

bb.id:                                            ; preds = %.critedge2.i
  %i.czk = zext i32 %i.czi to i64
  %i.czl = load ptr, ptr %10, align 8, !tbaa !25
  %i.czm = getelementptr inbounds nuw [4 x i8], ptr %i.czl, i64 %i.czk
  store i32 %.0.i83.i, ptr %i.czm, align 1
  %i.czn = load i32, ptr %i.boq, align 8, !tbaa !40
  %i.czo = add i32 %i.czn, 1
  store i32 %i.czo, ptr %i.boq, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i98

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i98: ; preds = %bb.id, %bb.ic
  %i.czp = getelementptr inbounds nuw i8, ptr %.sroa.0137.0185.i, i64 32 ; 2 uses
  %.not.i99 = icmp eq ptr %i.czp, %i.csp
  br i1 %.not.i99, label %._crit_edge.i100, label %bb.ho

bb.ie:                                            ; preds = %._crit_edge.i100
  %i.czq = load i32, ptr %i.boq, align 8, !tbaa !40 ; 11 uses
  %i.czr = zext i32 %i.czq to i64                 ; 11 uses
  %i.czs = icmp ugt i64 %i.czh, 4294967295
  br i1 %i.czs, label %bb.if, label %.loopexit.i102

bb.if:                                            ; preds = %bb.ie
  %i.czt = udiv i64 %i.czh, 4294967295            ; 4 uses
  %i.czu = add nuw nsw i64 %i.czt, 1              ; 3 uses
  %.not197.i = icmp eq i32 %i.czq, 0
  br i1 %.not197.i, label %_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %bb.if
  %xtraiter1313 = and i64 %i.czr, 1
  %24 = icmp eq i32 %i.czq, 1
  br i1 %24, label %.lr.ph192.i.epil.preheader, label %.lr.ph192.i.preheader.new

.lr.ph192.i.preheader.new:                        ; preds = %.lr.ph192.i.preheader
  %unroll_iter1318 = and i64 %i.czr, 4294967294
  br label %.lr.ph192.i

_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i: ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.bos, ptr %11, align 8, !tbaa !25
  store i32 4, ptr %i.bou, align 4, !tbaa !41
  br label %._crit_edge196.thread.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i, %.lr.ph192.i.preheader.new
  %indvars.iv.i110 = phi i64 [ 0, %.lr.ph192.i.preheader.new ], [ %indvars.iv.next.i111.1, %.lr.ph192.i ] ; 3 uses
  %.1189.i = phi i64 [ 0, %.lr.ph192.i.preheader.new ], [ %i.daj, %.lr.ph192.i ]
  %niter1319 = phi i64 [ 0, %.lr.ph192.i.preheader.new ], [ %niter1319.next.1, %.lr.ph192.i ]
  %25 = load ptr, ptr %10, align 8, !tbaa !25
  %i.czv = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %indvars.iv.i110 ; 2 uses
  %i.czw = load i32, ptr %i.czv, align 4, !tbaa !78
  %i.czx = zext i32 %i.czw to i64                 ; 2 uses
  %i.czy = udiv i64 %i.czx, %i.czu
  %i.czz = trunc nuw nsw i64 %i.czy to i32
  %.not159.i = icmp samesign ult i64 %i.czt, %i.czx
  %spec.store.select.i = select i1 %.not159.i, i32 %i.czz, i32 1 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.czv, align 4
  %i.daa = zext nneg i32 %spec.store.select.i to i64
  %i.dab = add i64 %.1189.i, %i.daa
  %26 = load ptr, ptr %10, align 8, !tbaa !25
  %i.dac = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i110
  %i.dad = getelementptr inbounds nuw i8, ptr %i.dac, i64 4 ; 2 uses
  %i.dae = load i32, ptr %i.dad, align 4, !tbaa !78
  %i.daf = zext i32 %i.dae to i64                 ; 2 uses
  %i.dag = udiv i64 %i.daf, %i.czu
  %i.dah = trunc nuw nsw i64 %i.dag to i32
  %.not159.i.1 = icmp samesign ult i64 %i.czt, %i.daf
  %spec.store.select.i.1 = select i1 %.not159.i.1, i32 %i.dah, i32 1 ; 2 uses
  store i32 %spec.store.select.i.1, ptr %i.dad, align 4
  %i.dai = zext nneg i32 %spec.store.select.i.1 to i64
  %i.daj = add i64 %i.dab, %i.dai                 ; 3 uses
  %indvars.iv.next.i111.1 = add nuw nsw i64 %indvars.iv.i110, 2 ; 2 uses
  %niter1319.next.1 = add i64 %niter1319, 2       ; 2 uses
  %niter1319.ncmp.1 = icmp eq i64 %niter1319.next.1, %unroll_iter1318
  br i1 %niter1319.ncmp.1, label %.loopexit.i102.loopexit.unr-lcssa, label %.lr.ph192.i, !llvm.loop !634

.loopexit.i102.loopexit.unr-lcssa:                ; preds = %.lr.ph192.i
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1313, 0
  br i1 %lcmp.mod1315.not, label %.loopexit.i102, label %.lr.ph192.i.epil.preheader

.lr.ph192.i.epil.preheader:                       ; preds = %.loopexit.i102.loopexit.unr-lcssa, %.lr.ph192.i.preheader
  %indvars.iv.i110.epil.init = phi i64 [ 0, %.lr.ph192.i.preheader ], [ %indvars.iv.next.i111.1, %.loopexit.i102.loopexit.unr-lcssa ]
  %.1189.i.epil.init = phi i64 [ 0, %.lr.ph192.i.preheader ], [ %i.daj, %.loopexit.i102.loopexit.unr-lcssa ]
  %lcmp.mod1317 = trunc i32 %i.czq to i1
  call void @llvm.assume(i1 %lcmp.mod1317)
  %27 = load ptr, ptr %10, align 8, !tbaa !25
  %i.dak = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %indvars.iv.i110.epil.init ; 2 uses
  %i.dal = load i32, ptr %i.dak, align 4, !tbaa !78
  %i.dam = zext i32 %i.dal to i64                 ; 2 uses
  %i.dan = udiv i64 %i.dam, %i.czu
  %i.dao = trunc nuw nsw i64 %i.dan to i32
  %.not159.i.epil = icmp samesign ult i64 %i.czt, %i.dam
  %spec.store.select.i.epil = select i1 %.not159.i.epil, i32 %i.dao, i32 1 ; 2 uses
  store i32 %spec.store.select.i.epil, ptr %i.dak, align 4
  %i.dap = zext nneg i32 %spec.store.select.i.epil to i64
  %i.daq = add i64 %.1189.i.epil.init, %i.dap
  br label %.loopexit.i102

.loopexit.i102:                                   ; preds = %.lr.ph192.i.epil.preheader, %.loopexit.i102.loopexit.unr-lcssa, %bb.ie
  %.2.i103 = phi i64 [ %i.czh, %bb.ie ], [ %i.daj, %.loopexit.i102.loopexit.unr-lcssa ], [ %i.daq, %.lr.ph192.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.bos, ptr %11, align 8, !tbaa !25
  store i32 0, ptr %i.bot, align 8, !tbaa !40
  store i32 4, ptr %i.bou, align 4, !tbaa !41
  %i.dar = icmp ugt i32 %i.czq, 4
  br i1 %i.dar, label %.lr.ph.i.i.i.preheader.i.i.i.i, label %_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %.loopexit.i102
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.bos, i64 noundef %i.czr, i64 noundef 4) #24
  %i.das = load ptr, ptr %11, align 8, !tbaa !25
  br label %.lr.ph195.i104

_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.i: ; preds = %.loopexit.i102
  %.not.i86.i = icmp eq i32 %i.czq, 0
  br i1 %.not.i86.i, label %._crit_edge196.thread.i, label %.lr.ph195.i104

._crit_edge196.thread.i:                          ; preds = %_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.i, %_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i
  store i32 %i.czq, ptr %i.bot, align 8, !tbaa !40
  %i.dat = load ptr, ptr %0, align 8, !tbaa !732, !nonnull !22, !align !246
  %i.dau = call { ptr, i64 } @_ZN4llvm21BranchProbabilityInfo10allocEdgesEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(140) %i.dat, ptr noundef nonnull readonly %.sroa.4.0442) ; 0 uses
  br label %_ZN4llvm21BranchProbabilityInfo18setEdgeProbabilityEPKNS_10BasicBlockENS_8ArrayRefINS_17BranchProbabilityEEE.exit.i109

.lr.ph195.i104:                                   ; preds = %_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.i
  %.sink.i = phi ptr [ %i.das, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.bos, %_ZSt6fill_nIPN4llvm17BranchProbabilityEmS1_ET_S3_T0_RKT1_.exit.i.i.i ] ; 17 uses
  %.sink.i1092 = ptrtoaddr ptr %.sink.i to i64    ; 2 uses
  %i.dav = shl nuw nsw i64 %i.czr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.sink.i, i8 -1, i64 %i.dav, i1 false), !tbaa !78
  store i32 %i.czq, ptr %i.bot, align 8, !tbaa !40
  %i.daw = load ptr, ptr %10, align 8, !tbaa !25  ; 10 uses
  %i.dax = and i64 %.2.i103, 4294967295           ; 4 uses
  %.not.i93.i = icmp eq i64 %i.dax, 2147483648
  %i.day = lshr i64 %.2.i103, 1
  %i.daz = and i64 %i.day, 2147483647             ; 3 uses
  br i1 %.not.i93.i, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.preheader

_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.preheader: ; preds = %.lr.ph195.i104
  %xtraiter1320 = and i64 %i.czr, 1
  %i.dba = icmp eq i32 %i.czq, 1
  br i1 %i.dba, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.epil.preheader, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.preheader.new

_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.preheader.new: ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.preheader
  %unroll_iter1324 = and i64 %i.czr, 4294967294
  br label %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105

_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader: ; preds = %.lr.ph195.i104
  %i.dbb = ptrtoaddr ptr %i.daw to i64
  %min.iters.check1097 = icmp ult i32 %i.czq, 8
  %i.dbc = sub i64 %i.dbb, %.sink.i1092
  %diff.check1095 = icmp ugt i64 %i.dbc, -32
  %or.cond1148 = select i1 %min.iters.check1097, i1 true, i1 %diff.check1095
  br i1 %or.cond1148, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157, label %vector.ph1098

vector.ph1098:                                    ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader
  %n.vec1099 = and i64 %i.czr, 4294967288         ; 3 uses
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %vector.ph1098
  %index1101 = phi i64 [ 0, %vector.ph1098 ], [ %index.next1104, %vector.body1100 ] ; 3 uses
  %i.dbd = getelementptr inbounds nuw [4 x i8], ptr %i.daw, i64 %index1101 ; 2 uses
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dbd, i64 16
  %wide.load1102 = load <4 x i32>, ptr %i.dbd, align 4, !tbaa !78
  %wide.load1103 = load <4 x i32>, ptr %i.dbe, align 4, !tbaa !78
  %i.dbf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %index1101 ; 2 uses
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbf, i64 16
  store <4 x i32> %wide.load1102, ptr %i.dbf, align 4, !tbaa !78
  store <4 x i32> %wide.load1103, ptr %i.dbg, align 4, !tbaa !78
  %index.next1104 = add nuw i64 %index1101, 8     ; 2 uses
  %i.dbh = icmp eq i64 %index.next1104, %n.vec1099
  br i1 %i.dbh, label %middle.block1105, label %vector.body1100, !llvm.loop !635

middle.block1105:                                 ; preds = %vector.body1100
  %cmp.n1106 = icmp eq i64 %n.vec1099, %i.czr
  br i1 %cmp.n1106, label %._crit_edge196.i106, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157

_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157: ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader, %middle.block1105
  %indvars.iv223.i.ph = phi i64 [ 0, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader ], [ %n.vec1099, %middle.block1105 ] ; 3 uses
  %xtraiter1326 = and i64 %i.czr, 3               ; 2 uses
  %lcmp.mod1327.not = icmp eq i64 %xtraiter1326, 0
  br i1 %lcmp.mod1327.not, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol.loopexit, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol

_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol:  ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol
  %indvars.iv223.i.prol = phi i64 [ %indvars.iv.next224.i.prol, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol ], [ %indvars.iv223.i.ph, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157 ] ; 3 uses
  %prol.iter1328 = phi i64 [ %prol.iter1328.next, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol ], [ 0, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157 ]
  %i.dbi = getelementptr inbounds nuw [4 x i8], ptr %i.daw, i64 %indvars.iv223.i.prol
  %i.dbj = load i32, ptr %i.dbi, align 4, !tbaa !78
  %i.dbk = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv223.i.prol
  store i32 %i.dbj, ptr %i.dbk, align 4, !tbaa !78
  %indvars.iv.next224.i.prol = add nuw nsw i64 %indvars.iv223.i.prol, 1 ; 2 uses
  %prol.iter1328.next = add i64 %prol.iter1328, 1 ; 2 uses
  %prol.iter1328.cmp.not = icmp eq i64 %prol.iter1328.next, %xtraiter1326
  br i1 %prol.iter1328.cmp.not, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol.loopexit, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol, !llvm.loop !636

_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol.loopexit: ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157
  %indvars.iv223.i.unr = phi i64 [ %indvars.iv223.i.ph, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.preheader1157 ], [ %indvars.iv.next224.i.prol, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol ]
  %i.dbl = sub nsw i64 %indvars.iv223.i.ph, %i.czr
  %i.dbm = icmp ugt i64 %i.dbl, -4
  br i1 %i.dbm, label %._crit_edge196.i106, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i

_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i:       ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol.loopexit, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i.3, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i ], [ %indvars.iv223.i.unr, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol.loopexit ] ; 6 uses
  %i.dbn = getelementptr inbounds nuw [4 x i8], ptr %i.daw, i64 %indvars.iv223.i
  %i.dbo = load i32, ptr %i.dbn, align 4, !tbaa !78
  %i.dbp = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv223.i
  store i32 %i.dbo, ptr %i.dbp, align 4, !tbaa !78
  %indvars.iv.next224.i = add nuw nsw i64 %indvars.iv223.i, 1 ; 2 uses
  %i.dbq = getelementptr inbounds nuw [4 x i8], ptr %i.daw, i64 %indvars.iv.next224.i
  %i.dbr = load i32, ptr %i.dbq, align 4, !tbaa !78
  %i.dbs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv.next224.i
  store i32 %i.dbr, ptr %i.dbs, align 4, !tbaa !78
  %indvars.iv.next224.i.1 = add nuw nsw i64 %indvars.iv223.i, 2 ; 2 uses
  %i.dbt = getelementptr inbounds nuw [4 x i8], ptr %i.daw, i64 %indvars.iv.next224.i.1
  %i.dbu = load i32, ptr %i.dbt, align 4, !tbaa !78
  %i.dbv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv.next224.i.1
  store i32 %i.dbu, ptr %i.dbv, align 4, !tbaa !78
  %indvars.iv.next224.i.2 = add nuw nsw i64 %indvars.iv223.i, 3 ; 2 uses
  %i.dbw = getelementptr inbounds nuw [4 x i8], ptr %i.daw, i64 %indvars.iv.next224.i.2
  %i.dbx = load i32, ptr %i.dbw, align 4, !tbaa !78
  %i.dby = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv.next224.i.2
  store i32 %i.dbx, ptr %i.dby, align 4, !tbaa !78
  %indvars.iv.next224.i.3 = add nuw nsw i64 %indvars.iv223.i, 4 ; 2 uses
  %exitcond227.not.i.3 = icmp eq i64 %indvars.iv.next224.i.3, %i.czr
  br i1 %exitcond227.not.i.3, label %._crit_edge196.i106, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i, !llvm.loop !637

._crit_edge196.i106.loopexit1158.unr-lcssa:       ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1320, 0
  br i1 %lcmp.mod1322.not, label %._crit_edge196.i106, label %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.epil.preheader

_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.epil.preheader: ; preds = %._crit_edge196.i106.loopexit1158.unr-lcssa, %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.preheader
  %indvars.iv218.i.epil.init = phi i64 [ 0, %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.preheader ], [ %indvars.iv.next219.i.1, %._crit_edge196.i106.loopexit1158.unr-lcssa ] ; 2 uses
  %lcmp.mod1323 = trunc i32 %i.czq to i1
  call void @llvm.assume(i1 %lcmp.mod1323)
  %i.dbz = getelementptr inbounds nuw [4 x i8], ptr %i.daw, i64 %indvars.iv218.i.epil.init
  %i.dca = load i32, ptr %i.dbz, align 4, !tbaa !78
  %i.dcb = zext i32 %i.dca to i64
  %i.dcc = shl nuw nsw i64 %i.dcb, 31
  %i.dcd = or disjoint i64 %i.dcc, %i.daz
  %i.dce = udiv i64 %i.dcd, %i.dax
  %i.dcf = trunc i64 %i.dce to i32
  %i.dcg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv218.i.epil.init
  store i32 %i.dcf, ptr %i.dcg, align 4, !tbaa !78
  br label %._crit_edge196.i106

._crit_edge196.i106:                              ; preds = %_ZN4llvm17BranchProbabilityC2Ejj.exit.i105.epil.preheader, %._crit_edge196.i106.loopexit1158.unr-lcssa, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i.prol.loopexit, %_ZN4llvm17BranchProbabilityC2Ejj.exit.us.i, %middle.block1105
  %.pr.i = load i32, ptr %i.bot, align 8, !tbaa !40 ; 3 uses
  %i.dch = load ptr, ptr %0, align 8, !tbaa !732, !nonnull !22, !align !246
  %i.dci = zext i32 %.pr.i to i64                 ; 5 uses
  %i.dcj = call { ptr, i64 } @_ZN4llvm21BranchProbabilityInfo10allocEdgesEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(140) %i.dch, ptr noundef nonnull readonly %.sroa.4.0442)
  %i.dck = extractvalue { ptr, i64 } %i.dcj, 0    ; 7 uses
  %.not.i90.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i90.i, label %_ZN4llvm21BranchProbabilityInfo18setEdgeProbabilityEPKNS_10BasicBlockENS_8ArrayRefINS_17BranchProbabilityEEE.exit.i109, label %.lr.ph.i91.i.preheader

.lr.ph.i91.i.preheader:                           ; preds = %._crit_edge196.i106
  %i.dcl = ptrtoaddr ptr %i.dck to i64
  %min.iters.check = icmp ult i32 %.pr.i, 8
  %i.dcm = sub i64 %.sink.i1092, %i.dcl
  %diff.check = icmp ugt i64 %i.dcm, -32
  %or.cond1149 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1149, label %.lr.ph.i91.i.preheader1156, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i91.i.preheader
  %n.vec = and i64 %i.dci, 4294967288             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dcn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %index ; 2 uses
  %i.dco = getelementptr inbounds nuw [4 x i8], ptr %i.dck, i64 %index ; 2 uses
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dcn, i64 16
  %wide.load = load <4 x i32>, ptr %i.dcn, align 4, !tbaa !78
  %wide.load1093 = load <4 x i32>, ptr %i.dcp, align 4, !tbaa !78
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dco, i64 16
  store <4 x i32> %wide.load, ptr %i.dco, align 4, !tbaa !78
  store <4 x i32> %wide.load1093, ptr %i.dcq, align 4, !tbaa !78
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dcr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dcr, label %middle.block, label %vector.body, !llvm.loop !638

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dci
  br i1 %cmp.n, label %_ZN4llvm21BranchProbabilityInfo18setEdgeProbabilityEPKNS_10BasicBlockENS_8ArrayRefINS_17BranchProbabilityEEE.exit.i109, label %.lr.ph.i91.i.preheader1156

.lr.ph.i91.i.preheader1156:                       ; preds = %.lr.ph.i91.i.preheader, %middle.block
  %indvars.iv.i.i107.ph = phi i64 [ 0, %.lr.ph.i91.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter1329 = and i64 %i.dci, 3               ; 2 uses
  %lcmp.mod1330.not = icmp eq i64 %xtraiter1329, 0
  br i1 %lcmp.mod1330.not, label %.lr.ph.i91.i.prol.loopexit, label %.lr.ph.i91.i.prol

.lr.ph.i91.i.prol:                                ; preds = %.lr.ph.i91.i.preheader1156, %.lr.ph.i91.i.prol
  %indvars.iv.i.i107.prol = phi i64 [ %indvars.iv.next.i.i108.prol, %.lr.ph.i91.i.prol ], [ %indvars.iv.i.i107.ph, %.lr.ph.i91.i.preheader1156 ] ; 3 uses
  %prol.iter1331 = phi i64 [ %prol.iter1331.next, %.lr.ph.i91.i.prol ], [ 0, %.lr.ph.i91.i.preheader1156 ]
  %i.dcs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv.i.i107.prol
  %i.dct = getelementptr inbounds nuw [4 x i8], ptr %i.dck, i64 %indvars.iv.i.i107.prol
  %i.dcu = load i32, ptr %i.dcs, align 4, !tbaa !78
  store i32 %i.dcu, ptr %i.dct, align 4, !tbaa !78
  %indvars.iv.next.i.i108.prol = add nuw nsw i64 %indvars.iv.i.i107.prol, 1 ; 2 uses
  %prol.iter1331.next = add i64 %prol.iter1331, 1 ; 2 uses
  %prol.iter1331.cmp.not = icmp eq i64 %prol.iter1331.next, %xtraiter1329
  br i1 %prol.iter1331.cmp.not, label %.lr.ph.i91.i.prol.loopexit, label %.lr.ph.i91.i.prol, !llvm.loop !639

.lr.ph.i91.i.prol.loopexit:                       ; preds = %.lr.ph.i91.i.prol, %.lr.ph.i91.i.preheader1156
  %indvars.iv.i.i107.unr = phi i64 [ %indvars.iv.i.i107.ph, %.lr.ph.i91.i.preheader1156 ], [ %indvars.iv.next.i.i108.prol, %.lr.ph.i91.i.prol ]
  %i.dcv = sub nsw i64 %indvars.iv.i.i107.ph, %i.dci
  %i.dcw = icmp ugt i64 %i.dcv, -4
  br i1 %i.dcw, label %_ZN4llvm21BranchProbabilityInfo18setEdgeProbabilityEPKNS_10BasicBlockENS_8ArrayRefINS_17BranchProbabilityEEE.exit.i109, label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %.lr.ph.i91.i.prol.loopexit, %.lr.ph.i91.i
  %indvars.iv.i.i107 = phi i64 [ %indvars.iv.next.i.i108.3, %.lr.ph.i91.i ], [ %indvars.iv.i.i107.unr, %.lr.ph.i91.i.prol.loopexit ] ; 6 uses
  %i.dcx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv.i.i107
  %i.dcy = getelementptr inbounds nuw [4 x i8], ptr %i.dck, i64 %indvars.iv.i.i107
  %i.dcz = load i32, ptr %i.dcx, align 4, !tbaa !78
  store i32 %i.dcz, ptr %i.dcy, align 4, !tbaa !78
  %indvars.iv.next.i.i108 = add nuw nsw i64 %indvars.iv.i.i107, 1 ; 2 uses
  %i.dda = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv.next.i.i108
  %i.ddb = getelementptr inbounds nuw [4 x i8], ptr %i.dck, i64 %indvars.iv.next.i.i108
  %i.ddc = load i32, ptr %i.dda, align 4, !tbaa !78
  store i32 %i.ddc, ptr %i.ddb, align 4, !tbaa !78
  %indvars.iv.next.i.i108.1 = add nuw nsw i64 %indvars.iv.i.i107, 2 ; 2 uses
end_hunk_1
