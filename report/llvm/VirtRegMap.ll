Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VirtRegMap?download=true
inline.NumInlined: 2135
inline.NumDeleted: 1217
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm19VirtRegRewriterPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.k = load i8, ptr %1, align 1, !tbaa !273, !range !275, !noundef !166
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %4, i8 0, i64 32, i1 false)
  store ptr %i.h, ptr %i.l, align 8, !tbaa !276
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.d, ptr %i.m, align 8, !tbaa !287
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.f, ptr %i.n, align 8, !tbaa !288
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.b, ptr %i.o, align 8, !tbaa !289
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.j, ptr %i.p, align 8, !tbaa !290
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i8 %i.k, ptr %i.r, align 8, !tbaa !291
  call fastcc void @_ZN12_GLOBAL__N_115VirtRegRewriter3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(97) %4, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  call void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !269
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !268, !range !275, !noundef !166
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !269 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not17.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.01218.i.i.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.y, %bb.c ] ; 2 uses
  %i.ae = load ptr, ptr %.01218.i.i.i.i.i, align 8, !tbaa !8
  %.not15.i.i.i.i.i = icmp eq ptr %i.ae, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit, label %bb.d

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i: ; preds = %bb.b
  %i.af = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #19
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i: ; preds = %bb.d, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i, %bb.c, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !268, !range !275, !noalias !292, !noundef !166
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.e:                                             ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.aj = load ptr, ptr %0, align 8, !tbaa !262, !noalias !292 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !269, !noalias !292 ; 4 uses
  %i.am = zext i32 %i.al to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.ap, %.critedge.i.i.i.i ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ao = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !8, !noalias !292
  %.not15.i.i.i.i = icmp eq ptr %i.ao, @_ZN4llvm11CFGAnalyses6SetKeyE
  br i1 %.not15.i.i.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !267, !noalias !292
  %i.as = icmp ult i32 %i.al, %i.ar
  br i1 %i.as, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = add nuw i32 %i.al, 1
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !269, !noalias !292
  store ptr @_ZN4llvm11CFGAnalyses6SetKeyE, ptr %i.an, align 8, !tbaa !8, !noalias !292
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.au = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm11CFGAnalyses6SetKeyE) #19, !noalias !292 ; 0 uses
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit

_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i, %bb.f, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i
  %i.av = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm21LiveIntervalsAnalysis3KeyE) ; 0 uses
  %i.aw = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm19SlotIndexesAnalysis3KeyE) ; 0 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm18LiveStacksAnalysis3KeyE) ; 0 uses
  %i.ay = load i8, ptr %1, align 1, !tbaa !273, !range !275, !noundef !166
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit
  %i.ba = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses7abandonEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm26LiveDebugVariablesAnalysis3KeyE) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 92
  %.val19 = load i32, ptr %i.bb, align 4, !tbaa !295 ; 2 uses
  %i.bc = icmp eq i32 %.val19, 0
  br i1 %i.bc, label %_ZN12_GLOBAL__N_115VirtRegRewriterD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val = load ptr, ptr %i.q, align 8
  %i.bd = zext i32 %.val19 to i64                 ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 31
  %i.bf = lshr i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.bf, %i.bd
  %i.bh = shl nuw nsw i64 %i.bg, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val, i64 noundef %i.bh, i64 noundef 4) #19
  br label %_ZN12_GLOBAL__N_115VirtRegRewriterD2Ev.exit

_ZN12_GLOBAL__N_115VirtRegRewriterD2Ev.exit:      ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.bj = load i8, ptr %1, align 1, !tbaa !273, !range !275, !noundef !166
  %i.bk = shl nuw nsw i8 %i.bj, 3
  %spec.select.i.i = zext nneg i8 %i.bk to i64
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !296
  %i.bm = or i64 %i.bl, %spec.select.i.i
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115VirtRegRewriter3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(97) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Register", align 4    ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.443", align 8 ; 13 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.390", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.390", align 8 ; 12 uses
  %7 = alloca %"class.llvm::SmallVector.390", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.402", align 8 ; 9 uses
  %9 = alloca %"class.llvm::SmallVector.380", align 8 ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !297
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165, !nonnull !166, !align !167 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !168
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !298
  %i.h = load ptr, ptr %0, align 8, !tbaa !297
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !165, !nonnull !166, !align !167 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !168
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(344) %i.j) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !299
  %i.p = load ptr, ptr %0, align 8, !tbaa !297
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !300
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !287
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !289
  tail call void @_ZN4llvm13LiveIntervals12addKillFlagsEPKNS_10VirtRegMapE(ptr noundef nonnull align 8 dereferenceable(424) %i.u, ptr noundef %i.w) #19
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !300
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !173  ; 2 uses
  %.not69.i = icmp eq i32 %i.z, 0
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i, %bb.a
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 296 ; 2 uses
  %.sroa.047.072.i = load ptr, ptr %i.af, align 8, !tbaa !301 ; 2 uses
  %.not5573.i = icmp eq ptr %.sroa.047.072.i, %i.ag
  br i1 %.not5573.i, label %_ZN12_GLOBAL__N_115VirtRegRewriter13addMBBLiveInsEv.exit, label %.lr.ph76.i

bb.b:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i, %.lr.ph71.i
  %.070.i = phi i32 [ 0, %.lr.ph71.i ], [ %i.no, %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i ] ; 4 uses
  %10 = and i32 %.070.i, 2147483647
  %11 = zext nneg i32 %10 to i64
  %i.ah = or i32 %.070.i, -2147483648
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !300
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = and i32 %.070.i, 2147483647             ; 4 uses
  %i.al = zext nneg i32 %i.ak to i64              ; 4 uses
  %i.am = load ptr, ptr %i.aj, align 8
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.0.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !198 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = load i32, ptr %.0.i.i.i.i, align 8
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.preheader.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.i

.preheader.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.d ], [ %.0.i.i.i.i, %bb.c ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.i
  %i.ar = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.preheader.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.i, !llvm.loop !302

_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.i: ; preds = %bb.d, %bb.c
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !287 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !173 ; 3 uses
  %i.aw = icmp ugt i32 %i.av, %i.ak
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 136 ; 3 uses
  br i1 %i.aw, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i, label %bb.e

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i: ; preds = %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !177 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.al
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !303 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i, label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.i
  %i.bb = add nuw i32 %i.ak, 1
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = zext nneg i32 %i.av to i64              ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 152 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !305 ; 2 uses
  %i.bg = sub nuw nsw i64 %i.bc, %i.bd            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 148
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !200
  %.not.i.i.i.i.i.not.i.i.i.i.i = icmp ult i32 %i.ak, %i.bi
  br i1 %.not.i.i.i.i.i.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i, label %bb.f, !prof !189

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.ax, ptr noundef nonnull %i.be, i64 noundef %i.bc, i64 noundef 8) #19
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !173 ; 2 uses
  %.pre.i.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i.i.i, %bb.f ]
  %i.bj = phi i32 [ %i.av, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i, %bb.f ]
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !177 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.pre-phi.i.i.i.i.i.i.i ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bg, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = sub nsw i64 %11, %i.bd
  %i.bo = and i64 %i.bn, 2305843009213693951      ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bo, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3
  %i.br = getelementptr i8, ptr %i.bl, i64 %i.bq
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bf, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !303
  store <2 x ptr> %broadcast.splat, ptr %i.bt, align 8, !tbaa !303
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.bf, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !303
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !312

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.bw = trunc nuw i64 %i.bg to i32
  %i.bx = add i32 %i.bj, %i.bw
  store i32 %i.bx, ptr %i.au, align 8, !tbaa !173
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i
  %i.by = phi ptr [ %i.bk, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i.i ], [ %i.ay, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.al
  %i.ca = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32 %i.ah) #19 ; 3 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !303
  %i.cb = call noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.at, ptr noundef nonnull align 8 dereferenceable(120) %i.ca) #19 ; 0 uses
  br label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i

_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i: ; preds = %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i
  %.0.i.i = phi ptr [ %i.ca, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i ], [ %i.ba, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !173
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !287
  %i.cf = call noundef ptr @_ZNK4llvm13LiveIntervals18intervalIsInOneMBBERKNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.ce, ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i) #19
  %.not38.i = icmp eq ptr %i.cf, null
  br i1 %.not38.i, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !289
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !177
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.al
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.cj, align 4, !tbaa !179 ; 5 uses
  %.not39.i = icmp eq i32 %.sroa.02.0.copyload.i.i, 0
  br i1 %.not39.i, label %_ZNK4llvm19MachineRegisterInfo15reg_nodbg_emptyENS_8RegisterE.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 104
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !313 ; 2 uses
  %.not54.i = icmp eq ptr %i.cl, null
  br i1 %.not54.i, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.aa, ptr %9, align 8, !tbaa !177
  store i32 0, ptr %i.ab, align 8, !tbaa !173
  store i32 4, ptr %i.ac, align 4, !tbaa !200
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge42.i.i
  %i.cm = load ptr, ptr %i.ad, align 8, !tbaa !276 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 272
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !177 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 280
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !173 ; 2 uses
  %.not.i.i43.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i43.i, label %_ZNK4llvm11SlotIndexes16getMBBLowerBoundENS_9SlotIndexE.exit.i.i, label %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = and i64 %.sroa.012.1.i.i, -8
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !335
  %i.cw = trunc i64 %.sroa.012.1.i.i to i32
  %i.cx = lshr i32 %i.cw, 1
  %i.cy = and i32 %i.cx, 3
  %i.cz = or i32 %i.cv, %i.cy
  br label %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.cr, %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.co, %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.da = lshr i64 %.017.i.i.i.i.i.i, 1           ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.da ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.db, align 8 ; 2 uses
  %i.dc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !335
  %i.dg = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.dh = lshr i32 %i.dg, 1
  %i.di = and i32 %i.dh, 3
  %i.dj = or i32 %i.di, %i.df
  %i.dk = icmp ult i32 %i.dj, %i.cz               ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dm = xor i64 %i.da, -1
  %i.dn = add nsw i64 %.017.i.i.i.i.i.i, %i.dm
  %.112.i.i.i.i.i.i = select i1 %i.dk, ptr %i.dl, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.dk, i64 %i.dn, i64 %i.da ; 2 uses
  %i.do = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.do, label %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZNK4llvm11SlotIndexes16getMBBLowerBoundENS_9SlotIndexE.exit.i.i, !llvm.loop !340

_ZNK4llvm11SlotIndexes16getMBBLowerBoundENS_9SlotIndexE.exit.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %._crit_edge.i.i
  %.pre-phi50.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.cr, %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.co, %._crit_edge.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9SlotIndexEPNS1_17MachineBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %.pre-phi50.i.i
  %.not35.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.dp
  br i1 %.not35.i.i, label %.critedge.i.i, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %_ZNK4llvm11SlotIndexes16getMBBLowerBoundENS_9SlotIndexE.exit.i.i
  %i.dq = and i64 %.sroa.09.1.i.i, -8
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = trunc i64 %.sroa.09.1.i.i to i32
  %i.du = lshr i32 %i.dt, 1
  %i.dv = and i32 %i.du, 3
  br label %bb.q

.lr.ph.i.i:                                       ; preds = %._crit_edge42.i.i, %bb.j
  %.sroa.05.023.i.i = phi ptr [ %i.fu, %._crit_edge42.i.i ], [ %i.cl, %bb.j ] ; 6 uses
  %.sroa.09.022.i.i = phi i64 [ %.sroa.09.1.i.i, %._crit_edge42.i.i ], [ 0, %bb.j ] ; 4 uses
  %.sroa.012.021.i.i = phi i64 [ %.sroa.012.1.i.i, %._crit_edge42.i.i ], [ 0, %bb.j ] ; 4 uses
  %i.dw = load ptr, ptr %.sroa.05.023.i.i, align 8, !tbaa !177 ; 2 uses
  %i.dx = load i32, ptr %i.ab, align 8, !tbaa !173 ; 2 uses
  %i.dy = load i32, ptr %i.ac, align 4, !tbaa !200
  %.not.i51.i.i = icmp ult i32 %i.dx, %i.dy
  br i1 %.not.i51.i.i, label %bb.l, label %bb.k, !prof !189

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_12LiveInterval8SubRangeEPKNS_9LiveRange7SegmentEELb1EE15growAndPushBackESA_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %.sroa.05.023.i.i, ptr %i.dw)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_12LiveInterval8SubRangeEPKNS_9LiveRange7SegmentEELb1EE9push_backESA_.exit.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.dz = zext i32 %i.dx to i64
  %i.ea = load ptr, ptr %9, align 8, !tbaa !177
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dz ; 2 uses
  store ptr %.sroa.05.023.i.i, ptr %i.eb, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.dw, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1
  %i.ec = load i32, ptr %i.ab, align 8, !tbaa !173
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.ab, align 8, !tbaa !173
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_12LiveInterval8SubRangeEPKNS_9LiveRange7SegmentEELb1EE9push_backESA_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_12LiveInterval8SubRangeEPKNS_9LiveRange7SegmentEELb1EE9push_backESA_.exit.i.i: ; preds = %bb.l, %bb.k
  %i.ee = icmp ugt i64 %.sroa.012.021.i.i, 7
  %.pre.i42.i = load ptr, ptr %.sroa.05.023.i.i, align 8, !tbaa !177 ; 2 uses
  %.pre41.i.i = load i64, ptr %.pre.i42.i, align 8 ; 3 uses
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_12LiveInterval8SubRangeEPKNS_9LiveRange7SegmentEELb1EE9push_backESA_.exit.i.i
  %i.ef = and i64 %.pre41.i.i, -8
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !335
  %i.ej = trunc i64 %.pre41.i.i to i32
  %i.ek = lshr i32 %i.ej, 1
  %i.el = and i32 %i.ek, 3
  %i.em = or i32 %i.ei, %i.el
  %i.en = and i64 %.sroa.012.021.i.i, -8
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !335
  %i.er = trunc i64 %.sroa.012.021.i.i to i32
  %i.es = lshr i32 %i.er, 1
  %i.et = and i32 %i.es, 3
  %i.eu = or i32 %i.eq, %i.et
  %i.ev = icmp ult i32 %i.em, %i.eu
  br i1 %i.ev, label %bb.n, label %bb.o
end_hunk_0
