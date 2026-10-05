Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachinePassManager?download=true
inline.NumInlined: 1959
inline.NumDeleted: 1047
begin_hunk_0_@_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE3runERS1_RS3_:bb.a

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread.thread: ; preds = %.thread
  %i.x = load ptr, ptr %0, align 8, !tbaa !89, !noalias !462
  br label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.thread, %bb.c
  %.01218.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.t, %.thread ] ; 2 uses
  %i.z = load ptr, ptr %.01218.i.i.i.i.i, align 8, !tbaa !55
  %.not15.i.i.i.i.i = icmp eq ptr %i.z, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEERS0_v.exit, label %bb.c

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i: ; preds = %bb.b
  %i.aa = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #15
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i._ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i_crit_edge, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEERS0_v.exit

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i._ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i_crit_edge: ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i
  %.pre23 = load i8, ptr %i.f, align 8, !tbaa !88, !range !54, !noalias !462
  br label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i: ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i._ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i_crit_edge, %._crit_edge
  %i.ab = phi i8 [ %.pre23, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i._ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i_crit_edge ], [ %.pre24.pre, %._crit_edge ]
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread: ; preds = %bb.c, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %.pr = load i32, ptr %i.e, align 4, !tbaa !87, !noalias !462 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !89, !noalias !462 ; 2 uses
  %i.ae = zext i32 %.pr to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i ; 3 uses
  %.not22.i.i.i.i = icmp eq i32 %.pr, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.ah, %.critedge.i.i.i.i ], [ %i.ad, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread ] ; 2 uses
  %i.ag = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !55, !noalias !462
  %.not15.i.i.i.i = icmp eq ptr %i.ag, @_ZN4llvm13AllAnalysesOnINS_15MachineFunctionEE6SetKeyE
  br i1 %.not15.i.i.i.i, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEERS0_v.exit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread.thread, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread
  %i.ai = phi ptr [ %i.x, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread.thread ], [ %i.af, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread ], [ %i.af, %.critedge.i.i.i.i ]
  %i.aj = phi i32 [ 0, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread.thread ], [ 0, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i.thread ], [ %.pr, %.critedge.i.i.i.i ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !142, !noalias !462
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nuw i32 %i.aj, 1
  store i32 %i.am, ptr %i.e, align 4, !tbaa !87, !noalias !462
  store ptr @_ZN4llvm13AllAnalysesOnINS_15MachineFunctionEE6SetKeyE, ptr %i.ai, align 8, !tbaa !55, !noalias !462
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEERS0_v.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i
  %i.an = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN4llvm13AllAnalysesOnINS_15MachineFunctionEE6SetKeyE) #15, !noalias !462 ; 0 uses
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEERS0_v.exit

_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEERS0_v.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i, %bb.d, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.016.021 = phi ptr [ %i.l, %.lr.ph ], [ %i.cb, %bb.j ] ; 4 uses
  %i.ao = load ptr, ptr %.sroa.016.021, align 8, !tbaa !122
  %i.ap = call noundef zeroext i1 @_ZNK4llvm19PassInstrumentation13runBeforePassINS_15MachineFunctionENS_6detail11PassConceptIS2_NS_15AnalysisManagerIS2_JEEEJEEEEEbRKT0_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  br i1 %i.ap, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.aq = load ptr, ptr %.sroa.016.021, align 8, !tbaa !122 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.llvm::PreservedAnalyses") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #15
  call void @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE10invalidateERS1_RKNS_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(80) %6)
  %i.au = load ptr, ptr %.sroa.016.021, align 8, !tbaa !122 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.av = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNK4llvm19PassInstrumentation12runAfterPassINS_15MachineFunctionENS_6detail11PassConceptIS2_NS_15AnalysisManagerIS2_JEEEJEEEEEvRKT0_RKT_RKNS_17PreservedAnalysesE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 528
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 536
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.idx.i = mul nuw nsw i64 %i.ba, 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i
  %.not1213.i = icmp eq i32 %i.az, 0
  br i1 %.not1213.i, label %_ZNK4llvm19PassInstrumentation12runAfterPassINS_15MachineFunctionENS_6detail11PassConceptIS2_NS_15AnalysisManagerIS2_JEEEJEEEEEvRKT0_RKT_RKNS_17PreservedAnalysesE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %_ZN4llvm3AnyD2Ev.exit.i
  %.014.i = phi ptr [ %i.bu, %_ZN4llvm3AnyD2Ev.exit.i ], [ %i.ax, %bb.g ] ; 3 uses
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call { ptr, i64 } %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #15, !inline_history !6 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  store ptr null, ptr %4, align 8, !tbaa !101
  %i.bi = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17, !noalias !463 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm3Any11StorageImplIPKNS_15MachineFunctionEEE, i64 16), ptr %i.bi, align 8, !tbaa !49, !noalias !463
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %2, ptr %i.bj, align 8, !tbaa !104, !noalias !463
  %i.bk = load ptr, ptr %4, align 8, !tbaa !105   ; 3 uses
  store ptr %i.bi, ptr %4, align 8, !tbaa !105
  %.not.i.i.i.i.i15 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i15, label %_ZN4llvm3AnyC2IPKNS_15MachineFunctionETnNSt9enable_ifIXsr3std11conjunctionISt8negationISt7is_sameINSt5decayIT_E4typeES0_EES6_ISt14is_convertibleIS0_SB_EESt21is_copy_constructibleISB_EEE5valueEiE4typeELi0EEEOS9_.exit.i, label %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #15, !inline_history !7
  br label %_ZN4llvm3AnyC2IPKNS_15MachineFunctionETnNSt9enable_ifIXsr3std11conjunctionISt8negationISt7is_sameINSt5decayIT_E4typeES0_EES6_ISt14is_convertibleIS0_SB_EESt21is_copy_constructibleISB_EEE5valueEiE4typeELi0EEEOS9_.exit.i

_ZN4llvm3AnyC2IPKNS_15MachineFunctionETnNSt9enable_ifIXsr3std11conjunctionISt8negationISt7is_sameINSt5decayIT_E4typeES0_EES6_ISt14is_convertibleIS0_SB_EESt21is_copy_constructibleISB_EEE5valueEiE4typeELi0EEEOS9_.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !144
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %.014.i, ptr %i.bg, i64 %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(80) %6) #15, !inline_history !8
  %i.bq = load ptr, ptr %4, align 8, !tbaa !105   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZN4llvm3AnyD2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i: ; preds = %_ZN4llvm3AnyC2IPKNS_15MachineFunctionETnNSt9enable_ifIXsr3std11conjunctionISt8negationISt7is_sameINSt5decayIT_E4typeES0_EES6_ISt14is_convertibleIS0_SB_EESt21is_copy_constructibleISB_EEE5valueEiE4typeELi0EEEOS9_.exit.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #15, !inline_history !9
  br label %_ZN4llvm3AnyD2Ev.exit.i

_ZN4llvm3AnyD2Ev.exit.i:                          ; preds = %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i, %_ZN4llvm3AnyC2IPKNS_15MachineFunctionETnNSt9enable_ifIXsr3std11conjunctionISt8negationISt7is_sameINSt5decayIT_E4typeES0_EES6_ISt14is_convertibleIS0_SB_EESt21is_copy_constructibleISB_EEE5valueEiE4typeELi0EEEOS9_.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i, i64 40 ; 2 uses
  %.not12.i = icmp eq ptr %i.bu, %i.bb
  br i1 %.not12.i, label %_ZNK4llvm19PassInstrumentation12runAfterPassINS_15MachineFunctionENS_6detail11PassConceptIS2_NS_15AnalysisManagerIS2_JEEEJEEEEEvRKT0_RKT_RKNS_17PreservedAnalysesE.exit, label %.lr.ph.i

_ZNK4llvm19PassInstrumentation12runAfterPassINS_15MachineFunctionENS_6detail11PassConceptIS2_NS_15AnalysisManagerIS2_JEEEJEEEEEvRKT0_RKT_RKNS_17PreservedAnalysesE.exit: ; preds = %_ZN4llvm3AnyD2Ev.exit.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN4llvm17PreservedAnalyses9intersectEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %6)
  %i.bv = load i8, ptr %i.o, align 8, !tbaa !88, !range !54, !noundef !25
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm19PassInstrumentation12runAfterPassINS_15MachineFunctionENS_6detail11PassConceptIS2_NS_15AnalysisManagerIS2_JEEEJEEEEEvRKT0_RKT_RKNS_17PreservedAnalysesE.exit
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !89
  call void @free(ptr noundef %i.bx) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.h, %_ZNK4llvm19PassInstrumentation12runAfterPassINS_15MachineFunctionENS_6detail11PassConceptIS2_NS_15AnalysisManagerIS2_JEEEJEEEEEvRKT0_RKT_RKNS_17PreservedAnalysesE.exit
  %i.by = load i8, ptr %i.q, align 8, !tbaa !88, !range !54, !noundef !25
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN4llvm17PreservedAnalysesD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.ca = load ptr, ptr %6, align 8, !tbaa !89
  call void @free(ptr noundef %i.ca) #15
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit

_ZN4llvm17PreservedAnalysesD2Ev.exit:             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %_ZN4llvm17PreservedAnalysesD2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.016.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cb, %i.n
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0) local_unnamed_addr #5 {
.lr.ph.i.i.i.i.i15.preheader:
  %.ptr23.ptr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr23.ptr, ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.a, align 8, !tbaa !142
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.d, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.f, align 8, !tbaa !142
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.g, align 4, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.h, align 8, !tbaa !88
  store i32 1, ptr %i.b, align 4, !tbaa !87, !noalias !468
  store ptr @_ZN4llvm13AllAnalysesOnINS_6ModuleEE6SetKeyE, ptr %.ptr23.ptr, align 8, !tbaa !55, !noalias !468
  %.023.i.i.i.i6.ptr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %.023.i.i.i.i6.ptr, align 8, !tbaa !55, !noalias !469
  %.not15.i.i.i.i7 = icmp eq ptr %i.i, @_ZN4llvm13AllAnalysesOnINS_8FunctionEE6SetKeyE
  br i1 %.not15.i.i.i.i7, label %_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_8FunctionEEEEERS0_v.exit, label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %.lr.ph.i.i.i.i.i15.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.b, align 4, !tbaa !87, !noalias !469
  store ptr @_ZN4llvm13AllAnalysesOnINS_8FunctionEE6SetKeyE, ptr %i.j, align 8, !tbaa !55, !noalias !469
  br label %_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_8FunctionEEEEERS0_v.exit

_ZN4llvm17PreservedAnalyses11preserveSetINS_13AllAnalysesOnINS_8FunctionEEEEERS0_v.exit: ; preds = %.lr.ph.i.i.i.i.i15.preheader, %._crit_edge.i.i.i.i10
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm15SmallPtrSetImplIPvE9remove_ifIZNS_17PreservedAnalyses9intersectEOS4_EUlS1_E_EEbT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !88, !range !54, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87   ; 3 uses
  %.not2751 = icmp eq i32 %i.e, 0
  br i1 %.not2751, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  %.idx58 = shl nuw nsw i64 %i.f, 3
  %i.g = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx58 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !88, !range !54, !noundef !25
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.lr.ph56.split.us, label %.lr.ph56.split

.lr.ph56.split.us:                                ; preds = %.lr.ph56, %bb.d
  %i.m = phi i32 [ %i.x, %bb.d ], [ %i.e, %.lr.ph56 ] ; 2 uses
  %.02154.us = phi ptr [ %.1.us, %bb.d ], [ %i.h, %.lr.ph56 ] ; 2 uses
  %.02253.us = phi ptr [ %.123.us, %bb.d ], [ %i.g, %.lr.ph56 ] ; 4 uses
  %.02452.us = phi i1 [ %.125.us, %bb.d ], [ false, %.lr.ph56 ]
  %i.n = load ptr, ptr %.02253.us, align 8, !tbaa !55
  %i.o = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !87   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i.i.us = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.us
  %.not17.i.i.i.us = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i.i.us, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph56.split.us, %bb.c
  %.01218.i.i.i.us = phi ptr [ %i.t, %bb.c ], [ %i.o, %.lr.ph56.split.us ] ; 2 uses
  %i.s = load ptr, ptr %.01218.i.i.i.us, align 8, !tbaa !55
  %.not15.i.i.not.i.us = icmp eq ptr %i.s, %i.n
  br i1 %.not15.i.i.not.i.us, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.t = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i.us, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us, label %.lr.ph.i.i.i.us

_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us: ; preds = %bb.c, %.lr.ph56.split.us
  %i.u = getelementptr inbounds i8, ptr %.02154.us, i64 -8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  store ptr %i.v, ptr %.02253.us, align 8, !tbaa !55
  %i.w = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.w, ptr %i.d, align 4, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43.loopexit.us
  %i.x = phi i32 [ %i.w, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us ], [ %i.m, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43.loopexit.us ]
  %.125.us = phi i1 [ true, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us ], [ %.02452.us, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43.loopexit.us ] ; 2 uses
  %.123.us = phi ptr [ %.02253.us, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us ], [ %i.y, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43.loopexit.us ] ; 2 uses
  %.1.us = phi ptr [ %i.u, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread.us ], [ %.02154.us, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43.loopexit.us ] ; 2 uses
  %.not27.us = icmp eq ptr %.123.us, %.1.us
  br i1 %.not27.us, label %.loopexit, label %.lr.ph56.split.us, !llvm.loop !470

_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43.loopexit.us: ; preds = %.lr.ph.i.i.i.us
  %i.y = getelementptr inbounds nuw i8, ptr %.02253.us, i64 8
  br label %bb.d

.lr.ph56.split:                                   ; preds = %.lr.ph56, %bb.g
  %.02154 = phi ptr [ %.1, %bb.g ], [ %i.h, %.lr.ph56 ] ; 2 uses
  %.02253 = phi ptr [ %.123, %bb.g ], [ %i.g, %.lr.ph56 ] ; 4 uses
  %.02452 = phi i1 [ %.125, %bb.g ], [ false, %.lr.ph56 ]
  %i.z = load ptr, ptr %.02253, align 8, !tbaa !55 ; 2 uses
  %i.aa = load i8, ptr %i.i, align 8, !tbaa !88, !range !54, !noundef !25
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit

bb.e:                                             ; preds = %.lr.ph56.split
  %i.ac = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !87  ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not17.i.i.i, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i.i, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.01218.i.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ah = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !55
  %.not15.i.i.not.i = icmp eq ptr %i.ah, %i.z
  br i1 %.not15.i.i.not.i, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43, label %bb.f

_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit: ; preds = %.lr.ph56.split
  %i.ai = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %i.z) #15
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43

_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread: ; preds = %bb.f, %bb.e, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit
  %i.ak = getelementptr inbounds i8, ptr %.02154, i64 -8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  store ptr %i.al, ptr %.02253, align 8, !tbaa !55
  %i.am = load i32, ptr %i.d, align 4, !tbaa !87
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.d, align 4, !tbaa !87
  br label %bb.g

_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43: ; preds = %.lr.ph.i.i.i, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.02253, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread
  %.125 = phi i1 [ true, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread ], [ %.02452, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43 ] ; 2 uses
  %.123 = phi ptr [ %.02253, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread ], [ %i.ao, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43 ] ; 2 uses
  %.1 = phi ptr [ %i.ak, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread ], [ %.02154, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit.thread43 ] ; 2 uses
  %.not27 = icmp eq ptr %.123, %.1
  br i1 %.not27, label %.loopexit, label %.lr.ph56.split, !llvm.loop !471

bb.h:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %.v.i.i = zext i32 %i.as to i64
  %.idx = shl nuw nsw i64 %.v.i.i, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 2 uses
  %.not48 = icmp eq i32 %i.as, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.outer

.outer:                                           ; preds = %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46.thread, %.lr.ph
  %.050.ph = phi ptr [ %i.bl, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46.thread ], [ %i.ap, %.lr.ph ]
  %.249.ph = phi i1 [ true, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46.thread ], [ false, %.lr.ph ]
  br label %bb.i

._crit_edge:                                      ; preds = %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46
  br i1 %.249.ph, label %._crit_edge.thread, label %.loopexit

bb.i:                                             ; preds = %.outer, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46
  %.050 = phi ptr [ %i.bi, %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46 ], [ %.050.ph, %.outer ] ; 4 uses
  %i.aw = load ptr, ptr %.050, align 8, !tbaa !55 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, inttoptr (i64 -1 to ptr)
  br i1 %i.ax, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i8, ptr %i.au, align 8, !tbaa !88, !range !54, !noundef !25
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !87 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.idx.i.i.i31 = shl nuw nsw i64 %i.bc, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i31
  %.not17.i.i.i32 = icmp eq i32 %i.bb, 0
  br i1 %.not17.i.i.i32, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46.thread, label %.lr.ph.i.i.i33

bb.l:                                             ; preds = %.lr.ph.i.i.i33
  %i.be = getelementptr inbounds nuw i8, ptr %.01218.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i.i36, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46.thread, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.k, %bb.l
  %.01218.i.i.i34 = phi ptr [ %i.be, %bb.l ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bf = load ptr, ptr %.01218.i.i.i34, align 8, !tbaa !55
  %.not15.i.i.not.i35 = icmp eq ptr %i.bf, %i.aw
  br i1 %.not15.i.i.not.i35, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46, label %bb.l

_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37: ; preds = %bb.j
  %i.bg = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %i.aw) #15
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46.thread, label %_ZZN4llvm17PreservedAnalyses9intersectEOS0_ENKUlPvE_clES2_.exit37.thread46
end_hunk_0
