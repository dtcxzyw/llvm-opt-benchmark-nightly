Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86LowerTileCopy?download=true
inline.NumInlined: 520
inline.NumDeleted: 368
begin_hunk_0_@_ZL40initializeX86LowerTileCopyLegacyPassOnceRN4llvm12PassRegistryE:bb.a
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_122X86LowerTileCopyLegacyEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !252
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm32createX86LowerTileCopyLegacyPassEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_122X86LowerTileCopyLegacy2IDE, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_122X86LowerTileCopyLegacyE, i64 16), ptr %i.a, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20X86LowerTileCopyPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::PreservedAnalyses", align 8 ; 18 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZL13lowerTileCopyRN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065) %2)
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::PreservedAnalyses") align 8 %4) #13
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !260
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !261, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %4, align 8, !tbaa !262    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !260  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not17.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.01218.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %.01218.i.i.i.i.i, align 8, !tbaa !9
  %.not15.i.i.i.i.i = icmp eq ptr %i.n, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i.i.i, label %.loopexit, label %bb.e

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i: ; preds = %bb.c
  %i.o = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #13
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.loopexit

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i: ; preds = %bb.e, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i, %bb.d, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !261, !range !25, !noalias !263, !noundef !26
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.f:                                             ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.s = load ptr, ptr %4, align 8, !tbaa !262, !noalias !263 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !260, !noalias !263 ; 4 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.y, %.critedge.i.i.i.i ], [ %i.s, %bb.f ] ; 2 uses
  %i.x = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !9, !noalias !263
  %.not15.i.i.i.i = icmp eq ptr %i.x, @_ZN4llvm11CFGAnalyses6SetKeyE
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !264, !noalias !263
  %i.ab = icmp ult i32 %i.u, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = add nuw i32 %i.u, 1
  store i32 %i.ac, ptr %i.t, align 4, !tbaa !260, !noalias !263
  store ptr @_ZN4llvm11CFGAnalyses6SetKeyE, ptr %i.w, align 8, !tbaa !9, !noalias !263
  br label %.loopexit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.ad = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZN4llvm11CFGAnalyses6SetKeyE) #13, !noalias !263 ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !262, !alias.scope !265
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ae, align 8, !tbaa !264, !alias.scope !265
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ag, align 8, !tbaa !261, !alias.scope !265
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !262, !alias.scope !265
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.aj, align 8, !tbaa !264, !alias.scope !265
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.ak, align 4, !tbaa !260, !alias.scope !265
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.al, align 8, !tbaa !261, !alias.scope !265
  store i32 1, ptr %i.af, align 4, !tbaa !260, !alias.scope !265, !noalias !266
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !9, !alias.scope !265, !noalias !266
  br label %.critedge

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %bb.g, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(80) %4) #13
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !261, !range !25, !noundef !26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !262
  call void @free(ptr noundef %i.at) #13
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.h, %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i8, ptr %i.au, align 8, !tbaa !261, !range !25, !noundef !26
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN4llvm17PreservedAnalysesD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.ax = load ptr, ptr %4, align 8, !tbaa !262
  call void @free(ptr noundef %i.ax) #13
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit

_ZN4llvm17PreservedAnalysesD2Ev.exit:             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZN4llvm17PreservedAnalysesD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL13lowerTileCopyRN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %7 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %15 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %16 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %20 = alloca %"class.llvm::BitVector", align 8  ; 8 uses
  %21 = alloca %"class.llvm::LiveRegUnits", align 16 ; 11 uses
  %22 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %23 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %24 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %25 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %26 = alloca %"class.llvm::MIMetadata", align 8 ; 7 uses
  %27 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %28 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !330
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331, !nonnull !26, !align !143 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 880 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 912
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !346
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4608
  call void @_ZNK4llvm18TargetRegisterInfo17getAllocatableSetERKNS_15MachineFunctionEPKNS_15MCRegisterClassE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %20, ptr noundef nonnull align 8 dereferenceable(316) %i.g, ptr noundef nonnull align 8 dereferenceable(1065) %0, ptr noundef nonnull %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sroa.0208.0242 = load ptr, ptr %i.k, align 8, !tbaa !347 ; 2 uses
  %.not219243 = icmp eq ptr %.sroa.0208.0242, %i.l
  br i1 %.not219243, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 924
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1176 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 920 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1192 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 768 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 412 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = insertelement <2 x ptr> poison, ptr %i.g, i64 0
  %30 = insertelement <2 x ptr> %29, ptr %i.n, i64 1
  br label %bb.d

._crit_edge248:                                   ; preds = %_ZN4llvm12LiveRegUnitsD2Ev.exit, %bb.b
  %.0101.lcssa = phi i1 [ false, %bb.b ], [ %.1102.lcssa, %_ZN4llvm12LiveRegUnitsD2Ev.exit ]
  %i.bf = load ptr, ptr %20, align 8, !tbaa !348  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge248
  call void @free(ptr noundef %i.bf) #13
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %._crit_edge248, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  br label %bb.ai

bb.d:                                             ; preds = %.lr.ph247, %_ZN4llvm12LiveRegUnitsD2Ev.exit
  %.sroa.0208.0245 = phi ptr [ %.sroa.0208.0242, %.lr.ph247 ], [ %.sroa.0208.0, %_ZN4llvm12LiveRegUnitsD2Ev.exit ] ; 12 uses
  %.0101244 = phi i1 [ false, %.lr.ph247 ], [ %.1102.lcssa, %_ZN4llvm12LiveRegUnitsD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  store i32 0, ptr %i.o, align 16, !tbaa !349
  store i32 6, ptr %i.p, align 4, !tbaa !350
  store <2 x ptr> %30, ptr %21, align 16, !tbaa !9
  %i.bi = load i32, ptr %i.r, align 4, !tbaa !351 ; 4 uses
  store i32 %i.bi, ptr %i.q, align 8, !tbaa !355
  %i.bj = add i32 %i.bi, 63                       ; 2 uses
  %i.bk = lshr i32 %i.bj, 6                       ; 3 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = icmp eq i32 %i.bk, 0
  br i1 %i.bm, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %i.bj, 447
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %.sink.split.i.i.i.i, !prof !356

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.m, ptr noundef nonnull %i.n, i64 noundef %i.bl, i64 noundef 8) #13
  %.pre.i.i.i.i.i = load i32, ptr %i.o, align 16, !tbaa !349 ; 2 uses
  %.pre.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.pre4.pre.i.pre.i.i = load i32, ptr %i.q, align 8, !tbaa !355
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !348
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.bn = phi ptr [ %i.n, %bb.e ], [ %.pre.i, %bb.f ] ; 2 uses
  %.pre4.pre.i.i.i = phi i32 [ %i.bi, %bb.e ], [ %.pre4.pre.i.pre.i.i, %bb.f ]
  %.pre-phi.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.pre.i.i.i.i, %bb.f ]
  %i.bo = phi i32 [ 0, %bb.e ], [ %.pre.i.i.i.i.i, %bb.f ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.pre-phi.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !13
  %i.bq = add i32 %i.bo, %i.bk                    ; 2 uses
  store i32 %i.bq, ptr %i.o, align 16, !tbaa !349
  %i.br = zext i32 %i.bq to i64
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.d
  %i.bs = phi ptr [ %i.n, %bb.d ], [ %i.bn, %.sink.split.i.i.i.i ]
  %i.bt = phi i64 [ 0, %bb.d ], [ %i.br, %.sink.split.i.i.i.i ]
  %i.bu = phi i32 [ %i.bi, %bb.d ], [ %.pre4.pre.i.i.i, %.sink.split.i.i.i.i ]
  %i.bv = and i32 %i.bu, 63                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nsw i64 -1, %i.bw
  %i.by = xor i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !13
  %i.cc = and i64 %i.cb, %i.by
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !13
  br label %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit

_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit: ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i, %bb.g
  call void @_ZN4llvm12LiveRegUnits11addLiveOutsERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0208.0245) #13
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0208.0245, i64 48 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.cf = inttoptr i64 %i.ce to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i108 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i.i108, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i: ; preds = %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !160
  %i.cj = and i32 %i.ci, 4
  %.not45.i.i.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not45.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.cl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ], [ %i.cf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i, -8
  %i.cl = inttoptr i64 %i.ck to ptr               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !160
  %i.co = and i32 %i.cn, 4
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, !llvm.loop !267

_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit ], [ %i.cf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ], [ %i.cl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not220236 = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i, %i.cd
  br i1 %.not220236, label %._crit_edge, label %.lr.ph241

.lr.ph241:                                        ; preds = %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0208.0245, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0208.0245, i64 40
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit
  %.1102.lcssa = phi i1 [ %.0101244, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ], [ %.3, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread ] ; 2 uses
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !348 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.n
  br i1 %i.cs, label %_ZN4llvm12LiveRegUnitsD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cr) #13
  br label %_ZN4llvm12LiveRegUnitsD2Ev.exit

_ZN4llvm12LiveRegUnitsD2Ev.exit:                  ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0208.0245, i64 8
  %.sroa.0208.0 = load ptr, ptr %i.ct, align 8, !tbaa !347 ; 2 uses
  %.not219 = icmp eq ptr %.sroa.0208.0, %i.l
  br i1 %.not219, label %._crit_edge248, label %bb.d

bb.i:                                             ; preds = %.lr.ph241, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread
  %.1102240 = phi i1 [ %.0101244, %.lr.ph241 ], [ %.3, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread ] ; 6 uses
  %.sroa.0202.0237 = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i, %.lr.ph241 ], [ %.sroa.0.1.i.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread ] ; 19 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0202.0237, align 8
  %i.cu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.cv = inttoptr i64 %i.cu to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i112 = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i112, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 44
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !160
  %i.cz = and i32 %i.cy, 4
  %.not45.i.i.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not45.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi ptr [ %i.db, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %i.cv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i, align 8
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i, -8
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !160
  %i.de = and i32 %i.dd, 4
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !267

_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %bb.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %i.cv, %bb.i ], [ %i.cv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.db, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0202.0237, i64 52 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !358
  %.off.i = add i32 %i.dg, -14
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb1EEEEdeEv.exit
  call void @_ZN4llvm12LiveRegUnits12stepBackwardERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0202.0237) #13
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !358
  %i.di = icmp eq i32 %i.dh, 20
  br i1 %i.di, label %bb.k, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0202.0237, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !359 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !161 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !161 ; 4 uses
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8594), align 2, !tbaa !362
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %.not.i.i = icmp samesign ult i32 %i.dq, %i.ds
  br i1 %.not.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.k
  %i.dt = and i32 %i.dp, 7
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8580), align 4, !tbaa !363
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8576), i64 %i.dv ; 2 uses
  %i.dx = zext nneg i32 %i.dq to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !161
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 1, %i.dt
  %i.ec = and i32 %i.eb, %i.ea
  %.not.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.ed = lshr i32 %i.dn, 3                       ; 2 uses
  %.not.i4.i = icmp samesign ult i32 %i.ed, %i.ds
  br i1 %.not.i4.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit: ; preds = %bb.l
  %i.ee = and i32 %i.dn, 7
  %i.ef = zext nneg i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !161
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 1, %i.ee
  %i.ek = and i32 %i.ej, %i.ei
  %.not221 = icmp eq i32 %i.ek, 0
  br i1 %.not221, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterES1_.exit
  %i.el = load ptr, ptr %i.s, align 8, !tbaa !369
  %i.em = load i32, ptr %i.t, align 8, !tbaa !370
end_hunk_0
