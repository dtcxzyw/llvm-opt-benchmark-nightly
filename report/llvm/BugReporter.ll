Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BugReporter?download=true
inline.NumInlined: 7606
inline.NumDeleted: 4207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL32generateEmptyDiagnosticForReportPKN5clang4ento22PathSensitiveBugReportERKNS_13SourceManagerEPKNS_4DeclE:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 0, ptr %i.an, align 8, !tbaa !187, !noalias !1954
  %.not48.i = icmp eq ptr %i.ai, null
  br i1 %.not48.i, label %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang4ento7BugType14getCheckerNameEv.exit, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i
  %.049.i = phi ptr [ %i.cp, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i ], [ %i.ai, %_ZNK5clang4ento7BugType14getCheckerNameEv.exit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.049.i, i64 64 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !658, !noalias !1955 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = trunc i64 %i.ap to i1
  %spec.select.i.i.i.i.i = or i1 %i.aq, %i.ar
  br i1 %spec.select.i.i.i.i.i, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i

_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i: ; preds = %.lr.ph.i
  %i.as = call noundef ptr @_ZNK5clang4ento12ExplodedNode9NodeGroup5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #29, !noalias !1955
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !659, !noalias !1955
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i, label %bb.d

_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i: ; preds = %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i, %.lr.ph.i
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.049.i, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !52, !noalias !1955
  %i.av = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !164, !noalias !1955
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !238, !noalias !1955
  call fastcc void @_ZL42populateExecutedLinesWithFunctionSignaturePKN5clang4DeclERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1955
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i

bb.d:                                             ; preds = %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.049.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !1956
  %i.bc = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.049.i, i64 24 ; 3 uses
  %.0.copyload.i.i.i5.i.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !1956
  %i.be = trunc i64 %.0.copyload.i.i.i5.i.i.i.i.i to i32
  %i.bf = shl i32 %i.bc, 3
  %i.bg = and i32 %i.bf, 48
  %i.bh = shl i32 %i.be, 1
  %i.bi = and i32 %i.bh, 12
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %.049.i, i64 16
  %.0.copyload.i.i.i6.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !1956 ; 2 uses
  %i.bl = trunc i64 %.0.copyload.i.i.i6.i.i.i.i.i to i32
  %i.bm = and i32 %i.bl, 3
  %i.bn = or disjoint i32 %i.bj, %i.bm
  %i.bo = icmp eq i32 %i.bn, 15
  br i1 %i.bo, label %bb.e, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bp = and i64 %.0.copyload.i.i.i6.i.i.i.i.i, -4
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !164, !noalias !1955
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !238, !noalias !1955
  call fastcc void @_ZL42populateExecutedLinesWithFunctionSignaturePKN5clang4DeclERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1955
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i

_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i: ; preds = %bb.d
  %i.bv = call noundef ptr @_ZNK5clang4ento12ExplodedNode21getStmtForDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(88) %.049.i) #29, !noalias !1955 ; 3 uses
  %.not24.i = icmp eq ptr %i.bv, null
  br i1 %.not24.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i
  call fastcc void @_ZL29populateExecutedLinesWithStmtPKN5clang4StmtERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef nonnull %i.bv, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1955
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !52, !noalias !1955
  %i.bw = and i64 %.sroa.3.0.copyload.i.i.i, -8
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !164, !noalias !1955
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280) %i.bz) #29, !noalias !1955
  %i.cb = call noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull %i.bv) #29, !noalias !1955 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load i16, ptr %i.cb, align 8, !noalias !1955
  %i.cd = and i16 %i.cc, 511                      ; 2 uses
  %i.ce = icmp eq i16 %i.cd, 144
  br i1 %i.ce, label %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i

_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i: ; preds = %bb.g
  call fastcc void @_ZL29populateExecutedLinesWithStmtPKN5clang4StmtERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1955
  %.sroa.3.0.copyload.i.i27.i = load i64, ptr %i.bd, align 8, !tbaa !52, !noalias !1955
  %i.cf = and i64 %.sroa.3.0.copyload.i.i27.i, -8
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !164, !noalias !1955
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280) %i.ci) #29, !noalias !1955
  %i.ck = call noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %i.cb) #29, !noalias !1955 ; 3 uses
  %.not.i.i28.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i28.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i

_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i
  %.pre.i = load i16, ptr %i.ck, align 8, !noalias !1955
  %.pre50.i = and i16 %.pre.i, 511
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i

_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i, %bb.g
  %.pre-phi.i = phi i16 [ %.pre50.i, %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i ], [ %i.cd, %bb.g ]
  %.03547.i = phi ptr [ %i.ck, %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i ], [ %i.cb, %bb.g ]
  switch i16 %.pre-phi.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i [
    i16 138, label %bb.h
    i16 137, label %bb.h
    i16 2, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i, %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i, %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i
  call fastcc void @_ZL29populateExecutedLinesWithStmtPKN5clang4StmtERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef %.03547.i, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1955
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i

_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i: ; preds = %bb.h, %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i, %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i, %bb.f, %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i, %bb.e, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i
  %i.cl = load i64, ptr %i.ao, align 8, !tbaa !658, !noalias !1955 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = trunc i64 %i.cl to i1
  %spec.select.i.i.i.i31.i = or i1 %i.cm, %i.cn
  br i1 %spec.select.i.i.i.i31.i, label %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i

_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i
  %i.co = call noundef ptr @_ZNK5clang4ento12ExplodedNode9NodeGroup5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #29, !noalias !1955
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !659, !noalias !1955 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit, label %.lr.ph.i, !llvm.loop !1951

_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i, %_ZNK5clang4ento7BugType14getCheckerNameEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.cq = call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #32, !noalias !1957 ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !89, !noalias !1957
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.r, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !90, !noalias !1957
  store ptr %i.v, ptr %5, align 8, !tbaa !89, !noalias !1957
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !90, !noalias !1957
  store ptr %i.x, ptr %6, align 8, !tbaa !89, !noalias !1957
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !90, !noalias !1957
  %i.cr = ptrtoint ptr %i.aj to i64
  store i64 %i.cr, ptr %7, align 8, !tbaa !896, !noalias !1957
  call void @_ZN5clang4ento14PathDiagnosticC1EN4llvm9StringRefEPKNS_4DeclES3_S3_S3_S3_NS0_22PathDiagnosticLocationES6_S6_St10unique_ptrISt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEESC_ISA_ESaISt4pairIKSA_SF_EEESt14default_deleteISL_EE(ptr noundef nonnull align 8 dereferenceable(480) %i.cq, ptr %.sroa.0.1.i, i64 %.sroa.3.1.i, ptr noundef %i.j, ptr %i.l, i64 %i.n, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %8, ptr noundef %i.ag, ptr noundef %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #29, !noalias !1957
  store ptr %i.cq, ptr %0, align 8, !tbaa !828, !alias.scope !1957
  %i.cs = load ptr, ptr %7, align 8, !tbaa !896, !noalias !1957 ; 4 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEESt14default_deleteISD_EED2Ev.exit, label %_ZNKSt14default_deleteISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEEEclEPSD_.exit.i.i

_ZNKSt14default_deleteISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEEEclEPSD_.exit.i.i: ; preds = %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !184, !noalias !1957
  call void @_ZNSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_St3setIjSt4lessIjESaIjEEESt10_Select1stIS9_ES5_IS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef %i.cu), !noalias !1957
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 48) #30, !noalias !1957
  br label %_ZNSt10unique_ptrISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEESt14default_deleteISD_EED2Ev.exit

_ZNSt10unique_ptrISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEESt14default_deleteISD_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEEEclEPSD_.exit.i.i, %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret void
}

declare void @_ZN5clang4ento18BugReporterVisitor17getDefaultEndPathERKNS0_18BugReporterContextEPKNS0_12ExplodedNodeERKNS0_22PathSensitiveBugReportE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder30generatePathDiagnosticsForNodeERNS_23PathDiagnosticConstructERN5clang4ento22PathDiagnosticLocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %2) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.8508 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9517 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %.sroa.8477 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9486 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %3 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %4 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %5 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %6 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %.sroa.891.i.i = alloca [32 x i8], align 4      ; 7 uses
  %.sroa.996.i.i = alloca [21 x i8], align 4      ; 7 uses
  %.sroa.10101.i.i = alloca [7 x i8], align 1     ; 7 uses
  %.sroa.8.i.i = alloca [32 x i8], align 4        ; 7 uses
  %.sroa.9.i.i = alloca [21 x i8], align 4        ; 7 uses
  %.sroa.10.i.i = alloca [7 x i8], align 1        ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.llvm::raw_string_ostream", align 8 ; 21 uses
  %9 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %10 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %11 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %12 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %13 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %14 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %15 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %16 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %17 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %18 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %.sroa.072.i.i = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %19 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 8 uses
  %.sroa.14.i.i = alloca <{ %"class.clang::ento::PathDiagnosticRange", [4 x i8] }>, align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.llvm::raw_string_ostream", align 8 ; 25 uses
  %22 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 14 uses
  %23 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %24 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %25 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %26 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %27 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %30 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %31 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %32 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 13 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %35 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %38 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %39 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.llvm::raw_string_ostream", align 8 ; 12 uses
  %42 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %43 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %44 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %45 = alloca %"class.std::shared_ptr.1341", align 16 ; 7 uses
  %46 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %47 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %50 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %51 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %52 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %53 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %54 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %55 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %56 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %57 = alloca %"class.std::shared_ptr.1341", align 16 ; 7 uses
  %.sroa.8440 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9455 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %.sroa.8404 = alloca [28 x i8], align 4         ; 2 uses
  %.sroa.9418 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %.sroa.8375 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %.sroa.22 = alloca %"class.clang::CFGBlock::ElementRefImpl", align 8 ; 5 uses
  %58 = alloca %"class.std::optional.1246", align 8 ; 10 uses
  %59 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %60 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %61 = alloca %"class.std::optional.1307", align 8 ; 11 uses
  %62 = alloca %"class.std::shared_ptr.1315", align 8 ; 8 uses
  %63 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 14 uses
  %64 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 13 uses
  %65 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %66 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %67 = alloca %"class.llvm::StringRef", align 8  ; 8 uses
  %68 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %69 = alloca %"class.std::shared_ptr.923", align 16 ; 8 uses
  %70 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 2 uses
  %71 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %72 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 23 uses
  %.val120 = load ptr, ptr %i.d, align 8, !tbaa !966 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val120, i64 8
  %.sroa.0336.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !39 ; 17 uses
  %.sroa.7339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 16
  %.sroa.7339.0.copyload = load i64, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !52 ; 8 uses
  %.sroa.13344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 24
  %.sroa.13344.0.copyload = load i64, ptr %.sroa.13344.0..sroa_idx, align 8, !tbaa !52 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 32
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !52 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx, i64 16, i1 false), !tbaa.struct !2038
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !955, !nonnull !93, !align !240
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !801, !nonnull !93, !align !240 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #29, !inline_history !18 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #29
  %i.n = trunc i64 %.sroa.18.0.copyload to i32
  %i.o = trunc i64 %.sroa.13344.0.copyload to i32
  %i.p = shl i32 %i.n, 3
  %i.q = and i32 %i.p, 48                         ; 2 uses
  %i.r = shl i32 %i.o, 1
  %i.s = and i32 %i.r, 12                         ; 2 uses
  %i.t = trunc i64 %.sroa.7339.0.copyload to i32  ; 2 uses
  %i.u = and i32 %i.t, 3
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = or disjoint i32 %i.v, %i.q               ; 3 uses
  %i.x = icmp eq i32 %i.w, 15
  br i1 %i.x, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.0336.0.copyload, ptr %58, align 8
  %.sroa.7339.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 %.sroa.7339.0.copyload, ptr %.sroa.7339.0..sroa_idx340, align 8
  %.sroa.13344.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %58, i64 16
  store i64 %.sroa.13344.0.copyload, ptr %.sroa.13344.0..sroa_idx345, align 8
  %.sroa.18.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %58, i64 24
  store i64 %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx349, align 8
  %.sroa.22.0..sroa_idx353 = getelementptr inbounds nuw i8, ptr %58, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx353, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %58, i64 48
  store i8 1, ptr %i.y, align 8, !tbaa !2040, !alias.scope !2041
  %.val124 = load ptr, ptr %1, align 8, !tbaa !965 ; 2 uses
  %i.z = load ptr, ptr %.val124, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %.val124) #29, !inline_history !1960
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.c, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = and i64 %.sroa.7339.0.copyload, -4
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !238 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(33) %i.aj) #29
  br i1 %i.an, label %bb.d, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val137 = load ptr, ptr %i.ao, align 8, !tbaa !828 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val137, i64 352
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.val137, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.val137, i64 344
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !87
  %i.au = zext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ar, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  call void @_ZN5clang4ento22PathDiagnosticLocation11createBeginEPKNS_4DeclERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %59, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(776) %i.m) #29
  %i.ay = load i64, ptr %59, align 8              ; 2 uses
  %.sroa.5356.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %.sroa.5356.0.copyload358 = load ptr, ptr %.sroa.5356.0..sroa_idx357, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %.sroa.6.0.copyload362 = load ptr, ptr %.sroa.6.0..sroa_idx361, align 8 ; 2 uses
  %.sroa.6365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %.sroa.6365.0.copyload367 = load ptr, ptr %.sroa.6365.0..sroa_idx366, align 8 ; 3 uses
  %.sroa.7370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %.sroa.7370.0.copyload372 = load i32, ptr %.sroa.7370.0..sroa_idx371, align 8 ; 3 uses
  %.sroa.8375.0..sroa_idx376 = getelementptr inbounds nuw i8, ptr %59, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8375, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8375.0..sroa_idx376, i64 28, i1 false)
  %.not27.i = icmp eq ptr %.sroa.6365.0.copyload367, null
  %i.az = icmp eq i32 %.sroa.7370.0.copyload372, 0
  %or.cond31.i = select i1 %.not27.i, i1 true, i1 %i.az
  br i1 %or.cond31.i, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !241
  %.not28.i = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i8.i = load i32, ptr %i.bc, align 8
  %.not29.i = icmp eq i32 %.sroa.0.0.copyload.i8.i, 0
  %or.cond32.i = select i1 %.not28.i, i1 true, i1 %.not29.i
  br i1 %or.cond32.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp ne ptr %.sroa.5356.0.copyload358, null
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %.sroa.5356.0.copyload358, %i.be
  %or.cond.i = select i1 %.not.i, i1 %i.bf, i1 false
  br i1 %or.cond.i, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h
  %i.bg = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2042 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 1, ptr %i.bh, align 8, !tbaa !871, !noalias !2043
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 1, ptr %i.bi, align 4, !tbaa !872, !noalias !2043
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bg, align 8, !tbaa !37, !noalias !2043
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.bj, i32 noundef 0, i32 noundef 1) #29, !noalias !2043
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.bj, align 8, !tbaa !37, !noalias !2043
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !noalias !2043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !2043
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.bn = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2043 ; 9 uses
  store i64 %i.ay, ptr %i.bn, align 8, !noalias !2043
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_121PathDiagnosticBuilder30generatePathDiagnosticsForNodeERNS_23PathDiagnosticConstructERN5clang4ento22PathDiagnosticLocationE:bb.a
  br label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  br label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.ak:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  %i.hx = and i32 %i.t, 2
  %i.hy = add nuw nsw i32 %i.hx, -6
  %i.hz = add nsw i32 %i.hy, %i.s
  %i.ia = add nsw i32 %i.hz, %i.q
  %i.ib = icmp ult i32 %i.ia, 8
  br i1 %i.ib, label %bb.al, label %_ZNK5clang12ProgramPoint5getAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.al:                                            ; preds = %bb.ak
  %.val122 = load ptr, ptr %1, align 8, !tbaa !965 ; 2 uses
  %i.ic = load ptr, ptr %.val122, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = tail call noundef i32 %i.ie(ptr noundef nonnull align 8 dereferenceable(32) %.val122) #29, !inline_history !1960
  %i.ig = icmp sgt i32 %i.if, 1
  br i1 %i.ig, label %bb.am, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ih = load i16, ptr %.sroa.0336.0.copyload, align 8
  %i.ii = and i16 %i.ih, 511
  %i.ij = icmp eq i16 %i.ii, 159
  br i1 %i.ij, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #29
  %.val141 = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.ik = getelementptr i8, ptr %.val141, i64 24
  %.val141.val = load i64, ptr %i.ik, align 8, !tbaa !52
  %i.il = and i64 %.val141.val, -8                ; 2 uses
  %i.im = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0336.0.copyload) #31
  %.not.i200 = icmp eq i32 %i.im, 0               ; 2 uses
  %i.in = select i1 %.not.i200, i32 1, i32 2
  store i32 %i.in, ptr %63, align 8, !tbaa !655
  %i.io = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.ip = select i1 %.not.i200, ptr null, ptr %.sroa.0336.0.copyload
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !660
  %i.iq = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  store ptr null, ptr %i.iq, align 8, !tbaa !661
  %i.ir = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.ir, align 8, !tbaa !241
  %i.is = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 2 uses
  %i.it = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %63, i32 0, i64 %i.il) #29 ; 2 uses
  %i.iu = extractvalue { i32, ptr } %i.it, 0
  store i32 %i.iu, ptr %i.is, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.iw = extractvalue { i32, ptr } %i.it, 1
  store ptr %i.iw, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.iy = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %63, i64 %i.il) #29 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.iy, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.iy, 1
  store i64 %.fca.0.extract.i, ptr %i.ix, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %63, i64 56
  store i8 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val131 = load ptr, ptr %i.iz, align 8, !tbaa !828 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val131, i64 352
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i201 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i201, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jc = getelementptr inbounds nuw i8, ptr %.val131, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203

bb.ap:                                            ; preds = %bb.an
  %i.jd = getelementptr inbounds nuw i8, ptr %.val131, i64 344
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !87
  %i.jf = zext i32 %i.jb to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jf
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203: ; preds = %bb.ao, %bb.ap
  %.0.i.i202 = phi ptr [ %i.jc, %bb.ao ], [ %i.ji, %bb.ap ] ; 2 uses
  %i.jj = load i64, ptr %63, align 8              ; 2 uses
  %.sroa.2444.0.copyload = load ptr, ptr %i.io, align 8 ; 4 uses
  %.sroa.3445.0.copyload = load ptr, ptr %i.iq, align 8 ; 2 uses
  %.sroa.4446.0.copyload = load ptr, ptr %i.ir, align 8 ; 3 uses
  %.sroa.5447.0.copyload = load i32, ptr %i.is, align 8 ; 3 uses
  %.sroa.6448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %63, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8440, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6448.0..sroa_idx, i64 28, i1 false)
  %.not27.i204 = icmp eq ptr %.sroa.4446.0.copyload, null
  %i.jk = icmp eq i32 %.sroa.5447.0.copyload, 0
  %or.cond31.i206 = select i1 %.not27.i204, i1 true, i1 %i.jk
  br i1 %or.cond31.i206, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215, label %bb.aq

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !241
  %.not28.i207 = icmp eq ptr %i.jm, null
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i8.i208 = load i32, ptr %i.jn, align 8
  %.not29.i209 = icmp eq i32 %.sroa.0.0.copyload.i8.i208, 0
  %or.cond32.i210 = select i1 %.not28.i207, i1 true, i1 %.not29.i209
  br i1 %or.cond32.i210, label %.sink.split.i214, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i211 = icmp ne ptr %.sroa.2444.0.copyload, null
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = icmp eq ptr %.sroa.2444.0.copyload, %i.jp
  %or.cond.i212 = select i1 %.not.i211, i1 %i.jq, i1 false
  br i1 %or.cond.i212, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i213

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i213: ; preds = %bb.ar
  %i.jr = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2052 ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i32 1, ptr %i.js, align 8, !tbaa !871, !noalias !2053
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 1, ptr %i.jt, align 4, !tbaa !872, !noalias !2053
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.jr, align 8, !tbaa !37, !noalias !2053
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.ju, i32 noundef 0, i32 noundef 1) #29, !noalias !2053
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.ju, align 8, !tbaa !37, !noalias !2053
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i8 0, i64 24, i1 false), !noalias !2053
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9455)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9455, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !2053
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 152
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 160
  %i.jy = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2053 ; 9 uses
  store i64 %i.jj, ptr %i.jy, align 8, !noalias !2053
  %.sroa.4450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %.sroa.2444.0.copyload, ptr %.sroa.4450.0..sroa_idx, align 8, !noalias !2053
  %.sroa.5451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store ptr %.sroa.3445.0.copyload, ptr %.sroa.5451.0..sroa_idx, align 8, !noalias !2053
  %.sroa.6452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  store ptr %.sroa.4446.0.copyload, ptr %.sroa.6452.0..sroa_idx, align 8, !noalias !2053
  %.sroa.7453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  store i32 %.sroa.5447.0.copyload, ptr %.sroa.7453.0..sroa_idx, align 8, !noalias !2053
  %.sroa.8454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8454.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8440, i64 28, i1 false)
  %.sroa.9455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9455, i64 64, i1 false), !noalias !2053
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 128 ; 2 uses
  store ptr %i.jy, ptr %i.jv, align 8, !tbaa !975, !noalias !2053
  store ptr %i.jz, ptr %i.jw, align 8, !tbaa !976, !noalias !2053
  store ptr %i.jz, ptr %i.jx, align 8, !tbaa !977, !noalias !2053
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9455)
  %i.ka = load ptr, ptr %.0.i.i202, align 8, !tbaa !857
  %i.kb = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store ptr %i.ju, ptr %i.kc, align 8, !tbaa !866
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store ptr %i.jr, ptr %i.kd, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef %i.ka) #29
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 16 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !869
  %i.kg = add i64 %i.kf, 1
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !869
  br label %.sink.split.i214

.sink.split.i214:                                 ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i213, %bb.aq
  store i64 %i.jj, ptr %2, align 8
  %.sroa.5420.0..sroa_idx423 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.2444.0.copyload, ptr %.sroa.5420.0..sroa_idx423, align 8
  %.sroa.6425.0..sroa_idx428 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.3445.0.copyload, ptr %.sroa.6425.0..sroa_idx428, align 8
  store ptr %.sroa.4446.0.copyload, ptr %i.jl, align 8
  store i32 %.sroa.5447.0.copyload, ptr %i.jn, align 8
  %.sroa.8440.0..sroa_idx442 = getelementptr inbounds nuw i8, ptr %2, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8440.0..sroa_idx442, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8440, i64 24, i1 false)
  br label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215

_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215: ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203, %bb.ar, %.sink.split.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #29
  br label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

_ZNK5clang12ProgramPoint5getAsINS_8PostStmtEEESt8optionalIT_Ev.exit: ; preds = %bb.ak
  %i.kh = icmp eq i32 %i.w, 0
  br i1 %i.kh, label %bb.as, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.as:                                            ; preds = %_ZNK5clang12ProgramPoint5getAsINS_8PostStmtEEESt8optionalIT_Ev.exit
  %.val145 = load ptr, ptr %1, align 8, !tbaa !965 ; 4 uses
  %i.ki = load ptr, ptr %.val145, align 8, !tbaa !37
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = tail call noundef i32 %i.kk(ptr noundef nonnull align 8 dereferenceable(32) %.val145) #29, !inline_history !1976
  %i.km = icmp eq i32 %i.kl, 1
  br i1 %i.km, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit

_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit: ; preds = %bb.as
  %i.kn = load ptr, ptr %.val145, align 8, !tbaa !37
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = tail call noundef i32 %i.kp(ptr noundef nonnull align 8 dereferenceable(32) %.val145) #29, !inline_history !1976
  %i.kr = icmp eq i32 %i.kq, 3
  br i1 %i.kr, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread, label %bb.ex

_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread: ; preds = %bb.as, %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %73 = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.ks = load ptr, ptr %i.f, align 8, !tbaa !955, !nonnull !93, !align !240
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !801, !nonnull !93, !align !240 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !37
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.ku) #29, !inline_history !1977
  %i.kz = and i64 %.sroa.7339.0.copyload, -4
  %i.la = inttoptr i64 %i.kz to ptr               ; 7 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 32
  %.0.copyload.i.i.i.i.i96.i = load i64, ptr %i.lb, align 8
  %i.lc = and i64 %.0.copyload.i.i.i.i.i96.i, -8  ; 2 uses
  %i.ld = inttoptr i64 %i.lc to ptr               ; 9 uses
  %.not.i220 = icmp eq i64 %i.lc, 0
  br i1 %.not.i220, label %_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit.a, label %bb.at

bb.at:                                            ; preds = %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread
  %.val94.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.le = getelementptr i8, ptr %.val94.i, i64 24
  %.val94.val.i = load i64, ptr %i.le, align 8, !tbaa !52
  %i.lf = and i64 %.val94.val.i, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  call void @_ZN5clang4ento22PathDiagnosticLocation11createBeginEPKNS_4StmtERKNS_13SourceManagerEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %32, ptr noundef nonnull %i.ld, ptr noundef nonnull align 8 dereferenceable(776) %i.ky, i64 %i.lf) #29
  %i.lg = load i16, ptr %i.ld, align 8
  %i.lh = and i16 %i.lg, 511
  switch i16 %i.lh, label %bb.ew [
    i16 251, label %bb.au
    i16 249, label %bb.au
    i16 136, label %bb.ba
    i16 248, label %bb.bx
    i16 247, label %bb.bx
    i16 133, label %bb.ca
    i16 132, label %bb.ca
    i16 122, label %bb.cn
    i16 253, label %bb.dp
    i16 1, label %bb.ea
    i16 252, label %bb.ea
    i16 250, label %bb.en
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.li = call noundef ptr @_ZNK5clang4ento12ExplodedNode25getNextStmtForDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(88) %.val.i) #29 ; 2 uses
  %.not76.i = icmp eq ptr %i.li, null
  br i1 %.not76.i, label %bb.ew, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val87.i = load ptr, ptr %i.lj, align 8, !tbaa !828 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val87.i, i64 352
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lm = getelementptr inbounds nuw i8, ptr %.val87.i, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.ln = getelementptr inbounds nuw i8, ptr %.val87.i, i64 344
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !87
  %i.lp = zext i32 %i.ll to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i = phi ptr [ %i.lm, %bb.aw ], [ %i.ls, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29, !noalias !2054
  %i.lt = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.lt, ptr %28, align 8, !tbaa !49, !noalias !2054
  %i.lu = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 0, ptr %i.lu, align 8, !tbaa !51, !noalias !2054
  store i8 0, ptr %i.lt, align 8, !tbaa !52, !noalias !2054
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29, !noalias !2054
  %i.lv = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 0, ptr %i.lv, align 8, !tbaa !1021, !noalias !2054
  %i.lw = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i8 0, ptr %i.lw, align 8, !tbaa !1022, !noalias !2054
  %i.lx = getelementptr inbounds nuw i8, ptr %29, i64 44
  store i32 1, ptr %i.lx, align 4, !tbaa !1023, !noalias !2054
  %i.ly = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, i8 0, i64 24, i1 false), !noalias !2054
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %29, align 8, !tbaa !37, !noalias !2054
  %i.lz = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr %28, ptr %i.lz, align 8, !tbaa !803, !noalias !2054
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef null, i64 noundef 0, i32 noundef 0) #29, !noalias !2054
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29, !noalias !2054
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !966, !noalias !2054
  %i.ma = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load i64, ptr %i.ma, align 8, !tbaa !52, !noalias !2054
  %i.mb = and i64 %.val.val.i.i, -8
  %i.mc = inttoptr i64 %i.mb to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull %i.li, ptr noundef %i.mc, i1 noundef zeroext false), !noalias !2054
  %i.md = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !1026, !noalias !2054
  %i.mf = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !1027, !noalias !2054 ; 2 uses
  %i.mh = ptrtoint ptr %i.me to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = icmp ult i64 %i.mj, 22
  br i1 %i.mk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i
  %i.ml = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str.40, i64 noundef 22) #29, !noalias !2054
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.mg, ptr noundef nonnull align 1 dereferenceable(22) @.str.40, i64 22, i1 false), !noalias !2054
  %i.mm = load ptr, ptr %i.mf, align 8, !tbaa !1027, !noalias !2054
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 22
  store ptr %i.mn, ptr %i.mf, align 8, !tbaa !1027, !noalias !2054
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i223 = phi ptr [ %i.ml, %bb.ay ], [ %29, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29, !noalias !2054
  %i.mo = getelementptr inbounds nuw i8, ptr %30, i64 32
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.mo, align 8, !noalias !2054
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 40
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !noalias !2054
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %31, align 8, !noalias !2054
  %i.mp = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.mp, align 8, !noalias !2054
  %i.mq = call noundef i32 @_ZNK5clang13FullSourceLoc22getExpansionLineNumberEPb(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef null) #29, !noalias !2054
  %i.mr = zext i32 %i.mq to i64
  %i.ms = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i223, i64 noundef %i.mr) #29, !noalias !2054 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29, !noalias !2054
  %i.mt = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2055 ; 8 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i32 1, ptr %i.mu, align 8, !tbaa !871, !noalias !2056
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 12
  store i32 1, ptr %i.mv, align 4, !tbaa !872, !noalias !2056
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.mt, align 8, !tbaa !37, !noalias !2056
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 3 uses
  %i.mx = load ptr, ptr %28, align 8, !tbaa !85, !noalias !2056
  %i.my = load i64, ptr %i.lu, align 8, !tbaa !51, !noalias !2056
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.mw, ptr %i.mx, i64 %i.my, i32 noundef 0, i32 noundef 1) #29, !noalias !2056
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.mw, align 8, !tbaa !37, !noalias !2056
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, i8 0, i64 24, i1 false), !noalias !2056
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %27, ptr noundef nonnull readonly align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2056
  %i.na = getelementptr inbounds nuw i8, ptr %27, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.na, ptr noundef nonnull align 8 dereferenceable(64) %30, i64 64, i1 false), !noalias !2056
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mt, i64 152
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 160
  %i.nd = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2056 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.nd, ptr noundef nonnull align 8 dereferenceable(128) %27, i64 128, i1 false), !noalias !2056
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 128 ; 2 uses
  store ptr %i.nd, ptr %i.mz, align 8, !tbaa !975, !noalias !2056
  store ptr %i.ne, ptr %i.nb, align 8, !tbaa !976, !noalias !2056
  store ptr %i.ne, ptr %i.nc, align 8, !tbaa !977, !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29, !noalias !2054
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %29) #29, !noalias !2054
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29, !noalias !2054
  %i.nf = load ptr, ptr %28, align 8, !tbaa !85, !noalias !2054 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.lt
  br i1 %i.ng, label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.nh = load i64, ptr %i.lt, align 8, !tbaa !52, !noalias !2054
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #30, !noalias !2054
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29, !noalias !2054
  %i.nj = load ptr, ptr %.0.i.i.i, align 8, !tbaa !857
  %i.nk = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store ptr %i.mw, ptr %i.nl, align 8, !tbaa !866
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  store ptr %i.mt, ptr %i.nm, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, ptr noundef %i.nj) #29
  %i.nn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !869
  %i.np = add i64 %i.no, 1
  store i64 %i.np, ptr %i.nn, align 8, !tbaa !869
  br label %bb.ew

bb.ba:                                            ; preds = %bb.at
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val86.i = load ptr, ptr %i.nq, align 8, !tbaa !828 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.val86.i, i64 352
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i98.i = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i.i98.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.nt = getelementptr inbounds nuw i8, ptr %.val86.i, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit100.i

bb.bc:                                            ; preds = %bb.ba
  %i.nu = getelementptr inbounds nuw i8, ptr %.val86.i, i64 344
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !87
  %i.nw = zext i32 %i.ns to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit100.i

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit100.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i99.i = phi ptr [ %i.nt, %bb.bb ], [ %i.nz, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  %i.oa = load ptr, ptr %i.f, align 8, !tbaa !955, !noalias !2057, !nonnull !93, !align !240
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !801, !noalias !2057, !nonnull !93, !align !240 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !37, !noalias !2057
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 32
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !2057
  %i.og = call noundef nonnull align 8 dereferenceable(776) ptr %i.of(ptr noundef nonnull align 8 dereferenceable(8) %i.oc) #29, !noalias !2057, !inline_history !1986
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29, !noalias !2057
  %i.oh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.oh, ptr %20, align 8, !tbaa !49, !noalias !2057
  %i.oi = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.oi, align 8, !tbaa !51, !noalias !2057
  store i8 0, ptr %i.oh, align 8, !tbaa !52, !noalias !2057
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29, !noalias !2057
  %i.oj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %i.oj, align 8, !tbaa !1021, !noalias !2057
  %i.ok = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i8 0, ptr %i.ok, align 8, !tbaa !1022, !noalias !2057
  %i.ol = getelementptr inbounds nuw i8, ptr %21, i64 44
  store i32 1, ptr %i.ol, align 4, !tbaa !1023, !noalias !2057
  %i.om = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.om, i8 0, i64 24, i1 false), !noalias !2057
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %21, align 8, !tbaa !37, !noalias !2057
  %i.on = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %20, ptr %i.on, align 8, !tbaa !803, !noalias !2057
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef null, i64 noundef 0, i32 noundef 0) #29, !noalias !2057
  %i.oo = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !2067, !noalias !2057 ; 5 uses
  %.not.i.i222 = icmp eq ptr %i.op, null
  br i1 %.not.i.i222, label %bb.bu, label %bb.bd

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit100.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29, !noalias !2057
  %.val.i101.i = load ptr, ptr %i.d, align 8, !tbaa !966, !noalias !2057
  %i.oq = getelementptr i8, ptr %.val.i101.i, i64 24
  %.val.val.i102.i = load i64, ptr %i.oq, align 8, !tbaa !52, !noalias !2057
  %i.or = and i64 %.val.val.i102.i, -8            ; 2 uses
  %i.os = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.op) #31, !noalias !2057
  %.not.i.i103.i = icmp eq i32 %i.os, 0           ; 2 uses
  %i.ot = select i1 %.not.i.i103.i, i32 1, i32 2
  store i32 %i.ot, ptr %22, align 8, !tbaa !655, !noalias !2057
  %i.ou = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ov = select i1 %.not.i.i103.i, ptr null, ptr %i.op
  store ptr %i.ov, ptr %i.ou, align 8, !tbaa !660, !noalias !2057
  %i.ow = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr null, ptr %i.ow, align 8, !tbaa !661, !noalias !2057
  %i.ox = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.og, ptr %i.ox, align 8, !tbaa !241, !noalias !2057
  %i.oy = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.oz = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %22, i32 0, i64 %i.or) #29, !noalias !2057 ; 2 uses
  %i.pa = extractvalue { i32, ptr } %i.oz, 0
  store i32 %i.pa, ptr %i.oy, align 8, !noalias !2057
  %i.pb = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.pc = extractvalue { i32, ptr } %i.oz, 1
  store ptr %i.pc, ptr %i.pb, align 8, !noalias !2057
  %i.pd = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.pe = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %22, i64 %i.or) #29, !noalias !2057 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.pe, 0
  %.fca.1.extract.i.i.i = extractvalue { i64, i8 } %i.pe, 1
  store i64 %.fca.0.extract.i.i.i, ptr %i.pd, align 8, !noalias !2057
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  store i8 %.fca.1.extract.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2057
  %.sroa.049.0.copyload50.i.i = load i32, ptr %22, align 8, !noalias !2057 ; 3 uses
  %.sroa.6.0..sroa_idx52.i.i = getelementptr inbounds nuw i8, ptr %22, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %73, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx52.i.i, i64 28, i1 false)
  %i.pf = load <2 x i32>, ptr %i.oy, align 8, !noalias !2057 ; 3 uses
  %.sroa.7.0.copyload55.i.i = load i32, ptr %i.oy, align 8, !noalias !2057 ; 3 uses
  %.sroa.1062.0.copyload64.i.i = load ptr, ptr %i.pb, align 8, !noalias !2057 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.pd, i64 12, i1 false), !noalias !2057
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29, !noalias !2057
  %i.pg = load i16, ptr %i.op, align 8, !noalias !2057
  %i.ph = and i16 %i.pg, 511
  %i.pi = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !1026, !noalias !2057
  %i.pk = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 9 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057 ; 5 uses
  %i.pm = ptrtoint ptr %i.pj to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn                    ; 3 uses
  switch i16 %i.ph, label %bb.be [
    i16 137, label %bb.bh
    i16 138, label %bb.bk
  ]

bb.be:                                            ; preds = %bb.bd
  %i.pp = icmp ult i64 %i.po, 62
  br i1 %i.pp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.41, i64 noundef 62) #29, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.pl, ptr noundef nonnull align 1 dereferenceable(62) @.str.41, i64 62, i1 false), !noalias !2057
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pl, i64 62
  store ptr %i.pr, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.bg, %bb.bf
  %.0.i.i.i107.i = phi ptr [ %i.pq, %bb.bf ], [ %21, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29, !noalias !2057
  store i32 %.sroa.7.0.copyload55.i.i, ptr %23, align 8, !noalias !2057
  %i.ps = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %.sroa.1062.0.copyload64.i.i, ptr %i.ps, align 8, !noalias !2057
  %i.pt = call noundef i32 @_ZNK5clang13FullSourceLoc22getExpansionLineNumberEPb(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef null) #29, !noalias !2057
  %i.pu = zext i32 %i.pt to i64
  %i.pv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i107.i, i64 noundef %i.pu) #29, !noalias !2057 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29, !noalias !2057
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104.i

bb.bh:                                            ; preds = %bb.bd
  %i.pw = icmp ult i64 %i.po, 44
  br i1 %i.pw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.px = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.42, i64 noundef 44) #29, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.pl, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false), !noalias !2057
  %i.py = load ptr, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 44
  store ptr %i.pz, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i:           ; preds = %bb.bj, %bb.bi
  %.0.i.i25.i.i = phi ptr [ %i.px, %bb.bi ], [ %21, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29, !noalias !2057
  store i32 %.sroa.7.0.copyload55.i.i, ptr %24, align 8, !noalias !2057
  %i.qa = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %.sroa.1062.0.copyload64.i.i, ptr %i.qa, align 8, !noalias !2057
  %i.qb = call noundef i32 @_ZNK5clang13FullSourceLoc22getExpansionLineNumberEPb(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef null) #29, !noalias !2057
  %i.qc = zext i32 %i.qb to i64
  %i.qd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i25.i.i, i64 noundef %i.qc) #29, !noalias !2057 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29, !noalias !2057
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104.i

bb.bk:                                            ; preds = %bb.bd
  %i.qe = icmp ult i64 %i.po, 23
  br i1 %i.qe, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.qf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.43, i64 noundef 23) #29, !noalias !2057 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34.i.i

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.pl, ptr noundef nonnull align 1 dereferenceable(23) @.str.43, i64 23, i1 false), !noalias !2057
  %i.qg = load ptr, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 23
  store ptr %i.qh, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit34.i.i:           ; preds = %bb.bm, %bb.bl
  %i.qi = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !61, !noalias !2057
  %i.qk = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qj) #31, !noalias !2057 ; 3 uses
  %i.ql = load i16, ptr %i.qk, align 8, !noalias !2057
  %i.qm = and i16 %i.ql, 511
  %.not78.i.i = icmp eq i16 %i.qm, 73
  br i1 %.not78.i.i, label %bb.bn, label %.critedge.i.i

bb.bn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !2071, !noalias !2057 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 28
  %i.qq = load i32, ptr %i.qp, align 4, !noalias !2057
  %i.qr = and i32 %i.qq, 127
  %i.qs = icmp ne i32 %i.qr, 34
  %.not2179.i.i = icmp eq ptr %i.qo, null
  %.not21.i.i = or i1 %.not2179.i.i, %i.qs
  br i1 %.not21.i.i, label %.critedge.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZNK5clang9NamedDecl9printNameERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %i.qo, ptr noundef nonnull align 8 dereferenceable(48) %21) #29, !noalias !2057
  br label %bb.br

.critedge.i.i:                                    ; preds = %bb.bn, %_ZN4llvm11raw_ostreamlsEPKc.exit34.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29, !noalias !2057
  %i.qt = load ptr, ptr %i.f, align 8, !tbaa !955, !noalias !2057, !nonnull !93, !align !240
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !801, !noalias !2057, !nonnull !93, !align !240 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !37, !noalias !2057
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !noalias !2057
  %i.qz = call noundef nonnull align 8 dereferenceable(23904) ptr %i.qy(ptr noundef nonnull align 8 dereferenceable(8) %i.qv) #29, !noalias !2057, !inline_history !1987
  call void @_ZNK5clang4Expr21EvaluateKnownConstIntERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %i.qk, ptr noundef nonnull align 8 dereferenceable(23904) %i.qz) #29, !noalias !2057
  %i.ra = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.rb = load i8, ptr %i.ra, align 4, !tbaa !2074, !range !92, !noalias !2057, !noundef !93
  %i.rc = trunc nuw i8 %i.rb to i1
  %i.rd = xor i1 %i.rc, true
  call void @_ZNK4llvm5APInt5printERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(13) %25, ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext %i.rd) #29, !noalias !2057
  %i.re = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !2075, !noalias !2057
  %i.rg = icmp ugt i32 %i.rf, 64
  br i1 %i.rg, label %bb.bp, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.bp:                                            ; preds = %.critedge.i.i
  %i.rh = load ptr, ptr %25, align 8, !tbaa !52, !noalias !2057 ; 2 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZdaPv(ptr noundef nonnull %i.rh) #30, !noalias !2057
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.bq, %bb.bp, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29, !noalias !2057
  br label %bb.br

bb.br:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i, %bb.bo
  %i.rj = load ptr, ptr %i.pi, align 8, !tbaa !1026, !noalias !2057
  %i.rk = load ptr, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057 ; 2 uses
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = sub i64 %i.rl, %i.rm
  %i.ro = icmp ult i64 %i.rn, 12
  br i1 %i.ro, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.rp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.44, i64 noundef 12) #29, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38.i.i

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.rk, ptr noundef nonnull align 1 dereferenceable(12) @.str.44, i64 12, i1 false), !noalias !2057
  %i.rq = load ptr, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  store ptr %i.rr, ptr %i.pk, align 8, !tbaa !1027, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit38.i.i:           ; preds = %bb.bt, %bb.bs
  %.0.i.i37.i.i = phi ptr [ %i.rp, %bb.bs ], [ %21, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29, !noalias !2057
  store i32 %.sroa.7.0.copyload55.i.i, ptr %26, align 8, !noalias !2057
  %i.rs = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %.sroa.1062.0.copyload64.i.i, ptr %i.rs, align 8, !noalias !2057
  %i.rt = call noundef i32 @_ZNK5clang13FullSourceLoc22getExpansionLineNumberEPb(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef null) #29, !noalias !2057
  %i.ru = zext i32 %i.rt to i64
  %i.rv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i37.i.i, i64 noundef %i.ru) #29, !noalias !2057 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29, !noalias !2057
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104.i

bb.bu:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit100.i
  %i.rw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !1026, !noalias !2057
  %i.ry = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !1027, !noalias !2057 ; 2 uses
  %i.sa = ptrtoint ptr %i.rx to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = icmp ult i64 %i.sc, 24
  br i1 %i.sd, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.se = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.45, i64 noundef 24) #29, !noalias !2057 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46.i.i

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.rz, ptr noundef nonnull align 1 dereferenceable(24) @.str.45, i64 24, i1 false), !noalias !2057
  %i.sf = load ptr, ptr %i.ry, align 8, !tbaa !1027, !noalias !2057
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  store ptr %i.sg, ptr %i.ry, align 8, !tbaa !1027, !noalias !2057
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit46.i.i:           ; preds = %bb.bw, %bb.bv
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERN4llvm18raw_string_ostreamERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %.sroa.049.0.copyload51.i.i = load i32, ptr %19, align 8
  %.sroa.7.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.sh = load <2 x i32>, ptr %.sroa.7.0..sroa_idx56.i.i, align 8
  %.sroa.1062.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %19, i64 40
  %.sroa.1062.0.copyload66.i.i = load ptr, ptr %.sroa.1062.0..sroa_idx65.i.i, align 8
  %.sroa.14.0..sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14.0..sroa_idx68.i.i, i64 12, i1 false)
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit38.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %.sroa.1062.0.i.i = phi ptr [ %.sroa.1062.0.copyload66.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit46.i.i ], [ %.sroa.1062.0.copyload64.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i ], [ %.sroa.1062.0.copyload64.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i ], [ %.sroa.1062.0.copyload64.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit38.i.i ]
  %.sroa.049.0.i.i = phi i32 [ %.sroa.049.0.copyload51.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit46.i.i ], [ %.sroa.049.0.copyload50.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i ], [ %.sroa.049.0.copyload50.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i ], [ %.sroa.049.0.copyload50.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit38.i.i ]
  %i.si = phi <2 x i32> [ %i.sh, %_ZN4llvm11raw_ostreamlsEPKc.exit46.i.i ], [ %i.pf, %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i ], [ %i.pf, %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i ], [ %i.pf, %_ZN4llvm11raw_ostreamlsEPKc.exit38.i.i ]
  %i.sj = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2076 ; 8 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store i32 1, ptr %i.sk, align 8, !tbaa !871, !noalias !2077
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  store i32 1, ptr %i.sl, align 4, !tbaa !872, !noalias !2077
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.sj, align 8, !tbaa !37, !noalias !2077
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 3 uses
  %i.sn = load ptr, ptr %20, align 8, !tbaa !85, !noalias !2077
  %i.so = load i64, ptr %i.oi, align 8, !tbaa !51, !noalias !2077
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.sm, ptr %i.sn, i64 %i.so, i32 noundef 0, i32 noundef 1) #29, !noalias !2077
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.sm, align 8, !tbaa !37, !noalias !2077
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i8 0, i64 24, i1 false), !noalias !2077
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.072.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.072.i.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2077
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 152
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sj, i64 160
  %i.ss = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2077 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ss, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.072.i.i, i64 64, i1 false), !noalias !2077
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 64
  store i32 %.sroa.049.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2077
  %.sroa.573.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.573.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %73, i64 28, i1 false)
  %.sroa.674.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 96
  store <2 x i32> %i.si, ptr %.sroa.674.0..sroa_idx.i.i, align 8, !noalias !2077
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 104
  store ptr %.sroa.1062.0.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2077
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i.i, i64 16, i1 false), !noalias !2057
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 128 ; 2 uses
  store ptr %i.ss, ptr %i.sp, align 8, !tbaa !975, !noalias !2077
  store ptr %i.st, ptr %i.sq, align 8, !tbaa !976, !noalias !2077
  store ptr %i.st, ptr %i.sr, align 8, !tbaa !977, !noalias !2077
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.072.i.i)
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %21) #29, !noalias !2057
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29, !noalias !2057
  %i.su = load ptr, ptr %20, align 8, !tbaa !85, !noalias !2057 ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.oh
  br i1 %i.sv, label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104.i
  %i.sw = load i64, ptr %i.oh, align 8, !tbaa !52, !noalias !2057
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sx) #30, !noalias !2057
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i

_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29, !noalias !2057
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  %i.sy = load ptr, ptr %.0.i.i99.i, align 8, !tbaa !857
  %i.sz = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  store ptr %i.sm, ptr %i.ta, align 8, !tbaa !866
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  store ptr %i.sj, ptr %i.tb, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.sz, ptr noundef %i.sy) #29
  %i.tc = getelementptr inbounds nuw i8, ptr %.0.i.i99.i, i64 16 ; 2 uses
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !869
  %i.te = add i64 %i.td, 1
  store i64 %i.te, ptr %i.tc, align 8, !tbaa !869
  br label %bb.ew

bb.bx:                                            ; preds = %bb.at, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  %i.tf = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  store ptr %i.tf, ptr %33, align 8, !tbaa !49
  %i.tg = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store i64 0, ptr %i.tg, align 8, !tbaa !51
  store i8 0, ptr %i.tf, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  %i.th = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 0, ptr %i.th, align 8, !tbaa !1021
  %i.ti = getelementptr inbounds nuw i8, ptr %34, i64 40
  store i8 0, ptr %i.ti, align 8, !tbaa !1022
  %i.tj = getelementptr inbounds nuw i8, ptr %34, i64 44
  store i32 1, ptr %i.tj, align 4, !tbaa !1023
  %i.tk = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %34, align 8, !tbaa !37
  %i.tl = getelementptr inbounds nuw i8, ptr %34, i64 48
  store ptr %33, ptr %i.tl, align 8, !tbaa !803
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %34, ptr noundef null, i64 noundef 0, i32 noundef 0) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERN4llvm18raw_string_ostreamERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %35, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %34, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val85.i = load ptr, ptr %i.tm, align 8, !tbaa !828 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.val85.i, i64 352
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i113.i = icmp eq i32 %i.to, 0
  br i1 %.not.i.i.i113.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.tp = getelementptr inbounds nuw i8, ptr %.val85.i, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i221

bb.bz:                                            ; preds = %bb.bx
  %i.tq = getelementptr inbounds nuw i8, ptr %.val85.i, i64 344
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !87
  %i.ts = zext i32 %i.to to i64
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.ts
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 -8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !867
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i221

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i221: ; preds = %bb.bz, %bb.by
  %.0.i.i114.i = phi ptr [ %i.tp, %bb.by ], [ %i.tv, %bb.bz ] ; 2 uses
  %i.tw = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2078 ; 8 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  store i32 1, ptr %i.tx, align 8, !tbaa !871, !noalias !2079
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 12
  store i32 1, ptr %i.ty, align 4, !tbaa !872, !noalias !2079
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.tw, align 8, !tbaa !37, !noalias !2079
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 16 ; 3 uses
  %i.ua = load ptr, ptr %33, align 8, !tbaa !85, !noalias !2079
  %i.ub = load i64, ptr %i.tg, align 8, !tbaa !51, !noalias !2079
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.tz, ptr %i.ua, i64 %i.ub, i32 noundef 0, i32 noundef 1) #29, !noalias !2079
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.tz, align 8, !tbaa !37, !noalias !2079
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, i8 0, i64 24, i1 false), !noalias !2079
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2079
  %i.ud = getelementptr inbounds nuw i8, ptr %18, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ud, ptr noundef nonnull align 8 dereferenceable(64) %35, i64 64, i1 false), !noalias !2079
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tw, i64 152
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tw, i64 160
  %i.ug = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2079 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ug, ptr noundef nonnull align 8 dereferenceable(128) %18, i64 128, i1 false), !noalias !2079
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 128 ; 2 uses
  store ptr %i.ug, ptr %i.uc, align 8, !tbaa !975, !noalias !2079
  store ptr %i.uh, ptr %i.ue, align 8, !tbaa !976, !noalias !2079
  store ptr %i.uh, ptr %i.uf, align 8, !tbaa !977, !noalias !2079
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.ui = load ptr, ptr %.0.i.i114.i, align 8, !tbaa !857
  %i.uj = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store ptr %i.tz, ptr %i.uk, align 8, !tbaa !866
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  store ptr %i.tw, ptr %i.ul, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.uj, ptr noundef %i.ui) #29
  %i.um = getelementptr inbounds nuw i8, ptr %.0.i.i114.i, i64 16 ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !tbaa !869
  %i.uo = add i64 %i.un, 1
  store i64 %i.uo, ptr %i.um, align 8, !tbaa !869
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  %i.up = load ptr, ptr %33, align 8, !tbaa !85   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.tf
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i221
  %i.ur = load i64, ptr %i.tf, align 8, !tbaa !52
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %bb.ew

bb.ca:                                            ; preds = %bb.at, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  %i.ut = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  store ptr %i.ut, ptr %36, align 8, !tbaa !49
  %i.uu = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 0, ptr %i.uu, align 8, !tbaa !51
  store i8 0, ptr %i.ut, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  %i.uv = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 0, ptr %i.uv, align 8, !tbaa !1021
  %i.uw = getelementptr inbounds nuw i8, ptr %37, i64 40
  store i8 0, ptr %i.uw, align 8, !tbaa !1022
  %i.ux = getelementptr inbounds nuw i8, ptr %37, i64 44
  store i32 1, ptr %i.ux, align 4, !tbaa !1023
  %i.uy = getelementptr inbounds nuw i8, ptr %37, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uy, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %37, align 8, !tbaa !37
  %i.uz = getelementptr inbounds nuw i8, ptr %37, i64 48
  store ptr %36, ptr %i.uz, align 8, !tbaa !803
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %37, ptr noundef null, i64 noundef 0, i32 noundef 0) #29
  %i.va = getelementptr inbounds nuw i8, ptr %37, i64 24 ; 2 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !1026
  %i.vc = getelementptr inbounds nuw i8, ptr %37, i64 32 ; 8 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !1027 ; 2 uses
  %i.ve = ptrtoint ptr %i.vb to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = icmp ult i64 %i.vg, 17
  br i1 %i.vh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.vi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str.31, i64 noundef 17) #29 ; 0 uses
  %.pre = load ptr, ptr %i.vc, align 8, !tbaa !1027
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.vd, ptr noundef nonnull align 1 dereferenceable(17) @.str.31, i64 17, i1 false)
  %i.vj = load ptr, ptr %i.vc, align 8, !tbaa !1027
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 17 ; 2 uses
  store ptr %i.vk, ptr %i.vc, align 8, !tbaa !1027
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.cc, %bb.cb
  %i.vl = phi ptr [ %i.vk, %bb.cc ], [ %.pre, %bb.cb ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 80
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !2080
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !2084
  %i.vq = icmp eq ptr %i.vp, %i.la
  %i.vr = load ptr, ptr %i.va, align 8, !tbaa !1026
  %i.vs = ptrtoint ptr %i.vr to i64
  %i.vt = ptrtoint ptr %i.vl to i64
  %i.vu = sub i64 %i.vs, %i.vt                    ; 2 uses
  br i1 %i.vq, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.vv = icmp ult i64 %i.vu, 5
  br i1 %i.vv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.vw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str.32, i64 noundef 5) #29 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128.i

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.vl, ptr noundef nonnull align 1 dereferenceable(5) @.str.32, i64 5, i1 false)
  %i.vx = load ptr, ptr %i.vc, align 8, !tbaa !1027
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 5
  store ptr %i.vy, ptr %i.vc, align 8, !tbaa !1027
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128.i

bb.cg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.vz = icmp ult i64 %i.vu, 4
  br i1 %i.vz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.wa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str.33, i64 noundef 4) #29 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128.i

bb.ci:                                            ; preds = %bb.cg
  store i32 1702195828, ptr %i.vl, align 1
  %i.wb = load ptr, ptr %i.vc, align 8, !tbaa !1027
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store ptr %i.wc, ptr %i.vc, align 8, !tbaa !1027
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128.i

_ZN4llvm11raw_ostreamlsEPKc.exit128.i:            ; preds = %bb.ci, %bb.ch, %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %38, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %i.wd = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !660 ; 2 uses
  %.not75.i = icmp eq ptr %i.we, null
  br i1 %.not75.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit128.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  %.val93.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.wf = getelementptr i8, ptr %.val93.i, i64 24
  %.val93.val.i = load i64, ptr %i.wf, align 8, !tbaa !52
  %i.wg = and i64 %.val93.val.i, -8
  %i.wh = inttoptr i64 %i.wg to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull %i.we, ptr noundef %i.wh, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %38, ptr noundef nonnull align 8 dereferenceable(60) %39, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN4llvm11raw_ostreamlsEPKc.exit128.i
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val84.i = load ptr, ptr %i.wi, align 8, !tbaa !828 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.val84.i, i64 352
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i132.i = icmp eq i32 %i.wk, 0
  br i1 %.not.i.i.i132.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wl = getelementptr inbounds nuw i8, ptr %.val84.i, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144.i

bb.cm:                                            ; preds = %bb.ck
  %i.wm = getelementptr inbounds nuw i8, ptr %.val84.i, i64 344
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !87
  %i.wo = zext i32 %i.wk to i64
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wo
  %i.wq = getelementptr inbounds i8, ptr %i.wp, i64 -8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !867
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i133.i = phi ptr [ %i.wl, %bb.cl ], [ %i.wr, %bb.cm ] ; 2 uses
  %i.ws = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2085 ; 8 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store i32 1, ptr %i.wt, align 8, !tbaa !871, !noalias !2086
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 12
  store i32 1, ptr %i.wu, align 4, !tbaa !872, !noalias !2086
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ws, align 8, !tbaa !37, !noalias !2086
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 16 ; 3 uses
  %i.ww = load ptr, ptr %36, align 8, !tbaa !85, !noalias !2086
  %i.wx = load i64, ptr %i.uu, align 8, !tbaa !51, !noalias !2086
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.wv, ptr %i.ww, i64 %i.wx, i32 noundef 0, i32 noundef 1) #29, !noalias !2086
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.wv, align 8, !tbaa !37, !noalias !2086
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ws, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wy, i8 0, i64 24, i1 false), !noalias !2086
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2086
  %i.wz = getelementptr inbounds nuw i8, ptr %17, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wz, ptr noundef nonnull align 8 dereferenceable(64) %38, i64 64, i1 false), !noalias !2086
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ws, i64 152
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ws, i64 160
  %i.xc = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2086 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.xc, ptr noundef nonnull align 8 dereferenceable(128) %17, i64 128, i1 false), !noalias !2086
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 128 ; 2 uses
  store ptr %i.xc, ptr %i.wy, align 8, !tbaa !975, !noalias !2086
  store ptr %i.xd, ptr %i.xa, align 8, !tbaa !976, !noalias !2086
  store ptr %i.xd, ptr %i.xb, align 8, !tbaa !977, !noalias !2086
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.xe = load ptr, ptr %.0.i.i133.i, align 8, !tbaa !857
  %i.xf = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  store ptr %i.wv, ptr %i.xg, align 8, !tbaa !866
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  store ptr %i.ws, ptr %i.xh, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.xf, ptr noundef %i.xe) #29
  %i.xi = getelementptr inbounds nuw i8, ptr %.0.i.i133.i, i64 16 ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !869
  %i.xk = add i64 %i.xj, 1
  store i64 %i.xk, ptr %i.xi, align 8, !tbaa !869
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %37) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  %i.xl = load ptr, ptr %36, align 8, !tbaa !85   ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.ut
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144.i
  %i.xn = load i64, ptr %i.ut, align 8, !tbaa !52
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  br label %bb.ew

bb.cn:                                            ; preds = %bb.at
  %.val95.i = load ptr, ptr %1, align 8, !tbaa !965 ; 2 uses
  %i.xp = load ptr, ptr %.val95.i, align 8, !tbaa !37
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 48
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = call noundef zeroext i1 %i.xr(ptr noundef nonnull align 8 dereferenceable(32) %.val95.i) #29, !inline_history !2000
  br i1 %i.xs, label %bb.co, label %bb.ew

bb.co:                                            ; preds = %bb.cn
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val83.i = load ptr, ptr %i.xt, align 8, !tbaa !828 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.val83.i, i64 352
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i148.i = icmp eq i32 %i.xv, 0
  br i1 %.not.i.i.i148.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.xw = getelementptr inbounds nuw i8, ptr %.val83.i, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit150.i

bb.cq:                                            ; preds = %bb.co
  %i.xx = getelementptr inbounds nuw i8, ptr %.val83.i, i64 344
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !87
  %i.xz = zext i32 %i.xv to i64
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %i.xz
  %i.yb = getelementptr inbounds i8, ptr %i.ya, i64 -8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit150.i

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit150.i: ; preds = %bb.cq, %bb.cp
  %.0.i.i149.i = phi ptr [ %i.xw, %bb.cp ], [ %i.yc, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.891.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.996.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10101.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.yd = load ptr, ptr %i.f, align 8, !tbaa !955, !noalias !2087, !nonnull !93, !align !240
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !801, !noalias !2087, !nonnull !93, !align !240 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !37, !noalias !2087
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 32
  %i.yi = load ptr, ptr %i.yh, align 8, !noalias !2087
  %i.yj = call noundef nonnull align 8 dereferenceable(776) ptr %i.yi(ptr noundef nonnull align 8 dereferenceable(8) %i.yf) #29, !noalias !2087, !inline_history !2003 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !2087
  %i.yk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.yk, ptr %7, align 8, !tbaa !49, !noalias !2087
  %i.yl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.yl, align 8, !tbaa !51, !noalias !2087
  store i8 0, ptr %i.yk, align 8, !tbaa !52, !noalias !2087
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !2087
  %i.ym = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.ym, align 8, !tbaa !1021, !noalias !2087
  %i.yn = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %i.yn, align 8, !tbaa !1022, !noalias !2087
  %i.yo = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 1, ptr %i.yo, align 4, !tbaa !1023, !noalias !2087
  %i.yp = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yp, i8 0, i64 24, i1 false), !noalias !2087
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %8, align 8, !tbaa !37, !noalias !2087
  %i.yq = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %7, ptr %i.yq, align 8, !tbaa !803, !noalias !2087
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef null, i64 noundef 0, i32 noundef 0) #29, !noalias !2087
  %i.yr = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !1026, !noalias !2087
  %i.yt = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 18 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087 ; 2 uses
  %i.yv = ptrtoint ptr %i.ys to i64
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = sub i64 %i.yv, %i.yw
  %i.yy = icmp ult i64 %i.yx, 14
  br i1 %i.yy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit150.i
  %i.yz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.51, i64 noundef 14) #29, !noalias !2087 ; 0 uses
  %.pre.i = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i151.i

bb.cs:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit150.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.yu, ptr noundef nonnull align 1 dereferenceable(14) @.str.51, i64 14, i1 false), !noalias !2087
  %i.za = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 14 ; 2 uses
  store ptr %i.zb, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i151.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i151.i:          ; preds = %bb.cs, %bb.cr
  %i.zc = phi ptr [ %i.zb, %bb.cs ], [ %.pre.i, %bb.cr ] ; 3 uses
  %i.zd = load i32, ptr %i.ld, align 8, !noalias !2087
  %i.ze = and i32 %i.zd, 33030144
  %i.zf = icmp eq i32 %i.ze, 9961472
  %i.zg = load ptr, ptr %i.yr, align 8, !tbaa !1026, !noalias !2087
  %i.zh = ptrtoint ptr %i.zg to i64
  %i.zi = ptrtoint ptr %i.zc to i64
  %i.zj = sub i64 %i.zh, %i.zi
  %i.zk = icmp ult i64 %i.zj, 2                   ; 2 uses
  br i1 %i.zf, label %bb.ct, label %bb.de

bb.ct:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i151.i
  br i1 %i.zk, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.zl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.52, i64 noundef 2) #29, !noalias !2087 ; 2 uses
  %.phi.trans.insert115.i.i = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  %.pre116.i.i = load ptr, ptr %.phi.trans.insert115.i.i, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30.i.i

bb.cv:                                            ; preds = %bb.ct
  store i16 9766, ptr %i.zc, align 1, !noalias !2087
  %i.zm = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 2 ; 2 uses
  store ptr %i.zn, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit30.i.i:           ; preds = %bb.cv, %bb.cu
  %i.zo = phi ptr [ %.pre116.i.i, %bb.cu ], [ %i.zn, %bb.cv ] ; 2 uses
  %.0.i.i29.i.i = phi ptr [ %i.zl, %bb.cu ], [ %8, %bb.cv ] ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.0.i.i29.i.i, i64 24
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !1026, !noalias !2087
  %i.zr = ptrtoint ptr %i.zq to i64
  %i.zs = ptrtoint ptr %i.zo to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = icmp ult i64 %i.zt, 5
  br i1 %i.zu, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30.i.i
  %i.zv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i29.i.i, ptr noundef nonnull @.str.53, i64 noundef 5) #29, !noalias !2087 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit33.i.i

bb.cx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30.i.i
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i.i29.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.zo, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false), !noalias !2087
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !1027, !noalias !2087
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 5
  store ptr %i.zy, ptr %i.zw, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit33.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit33.i.i:           ; preds = %bb.cx, %bb.cw
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 80
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !2080, !noalias !2087
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !2084, !noalias !2087
  %i.aad = icmp eq ptr %i.aac, %i.la
  %i.aae = load ptr, ptr %i.yr, align 8, !tbaa !1026, !noalias !2087
  %i.aaf = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087 ; 3 uses
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = sub i64 %i.aag, %i.aah                 ; 2 uses
  br i1 %i.aad, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit33.i.i
  %i.aaj = icmp ult i64 %i.aai, 5
  br i1 %i.aaj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.32, i64 noundef 5) #29, !noalias !2087 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit36.i.i

bb.da:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aaf, ptr noundef nonnull align 1 dereferenceable(5) @.str.32, i64 5, i1 false), !noalias !2087
  %i.aal = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 5
  store ptr %i.aam, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit36.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit36.i.i:           ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29, !noalias !2087
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !61, !noalias !2087 ; 2 uses
  %.val27.i.i = load ptr, ptr %i.d, align 8, !tbaa !966, !noalias !2087
  %i.aap = getelementptr i8, ptr %.val27.i.i, i64 24
  %.val27.val.i.i = load i64, ptr %i.aap, align 8, !tbaa !52, !noalias !2087
  %i.aaq = and i64 %.val27.val.i.i, -8            ; 2 uses
  %i.aar = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aao) #31, !noalias !2087
  %.not.i.i159.i = icmp eq i32 %i.aar, 0          ; 2 uses
  %i.aas = select i1 %.not.i.i159.i, i32 1, i32 2
  store i32 %i.aas, ptr %9, align 8, !tbaa !655, !noalias !2087
  %i.aat = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aau = select i1 %.not.i.i159.i, ptr null, ptr %i.aao
  store ptr %i.aau, ptr %i.aat, align 8, !tbaa !660, !noalias !2087
  %i.aav = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.aav, align 8, !tbaa !661, !noalias !2087
  %i.aaw = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.yj, ptr %i.aaw, align 8, !tbaa !241, !noalias !2087
  %i.aax = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aay = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %9, i32 0, i64 %i.aaq) #29, !noalias !2087 ; 2 uses
  %i.aaz = extractvalue { i32, ptr } %i.aay, 0
  store i32 %i.aaz, ptr %i.aax, align 8, !noalias !2087
  %i.aba = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.abb = extractvalue { i32, ptr } %i.aay, 1
  store ptr %i.abb, ptr %i.aba, align 8, !noalias !2087
  %i.abc = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.abd = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %9, i64 %i.aaq) #29, !noalias !2087 ; 2 uses
  %.fca.0.extract.i.i160.i = extractvalue { i64, i8 } %i.abd, 0
  %.fca.1.extract.i.i161.i = extractvalue { i64, i8 } %i.abd, 1
  store i64 %.fca.0.extract.i.i160.i, ptr %i.abc, align 8, !noalias !2087
  %.sroa.2.0..sroa_idx.i.i162.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 %.fca.1.extract.i.i161.i, ptr %.sroa.2.0..sroa_idx.i.i162.i, align 8, !noalias !2087
  %.sroa.069.0.copyload70.i.i = load i32, ptr %9, align 8, !noalias !2087
  %.sroa.8.0..sroa_idx74.i.i = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx74.i.i, i64 32, i1 false), !noalias !2087
  %.sroa.9.0..sroa_idx78.i.i = getelementptr inbounds nuw i8, ptr %9, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9.i.i, ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9.0..sroa_idx78.i.i, i64 21, i1 false), !noalias !2087
  %.sroa.10.0..sroa_idx82.i.i = getelementptr inbounds nuw i8, ptr %9, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa_idx82.i.i, i64 3, i1 false), !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !2087
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29, !noalias !2087
  call void @_ZN5clang4ento22PathDiagnosticLocation17createOperatorLocEPKNS_14BinaryOperatorERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %10, ptr noundef nonnull %i.ld, ptr noundef nonnull align 8 dereferenceable(776) %i.yj) #29, !noalias !2087
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_121PathDiagnosticBuilder30generatePathDiagnosticsForNodeERNS_23PathDiagnosticConstructERN5clang4ento22PathDiagnosticLocationE:bb.a
  %i.acy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.32, i64 noundef 5) #29, !noalias !2087 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit52.i.i

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.act, ptr noundef nonnull align 1 dereferenceable(5) @.str.32, i64 5, i1 false), !noalias !2087
  %i.acz = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 5
  store ptr %i.ada, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit52.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit52.i.i:           ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29, !noalias !2087
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !61, !noalias !2087 ; 2 uses
  %.val25.i.i = load ptr, ptr %i.d, align 8, !tbaa !966, !noalias !2087
  %i.add = getelementptr i8, ptr %.val25.i.i, i64 24
  %.val25.val.i.i = load i64, ptr %i.add, align 8, !tbaa !52, !noalias !2087
  %i.ade = and i64 %.val25.val.i.i, -8            ; 2 uses
  %i.adf = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adc) #31, !noalias !2087
  %.not.i53.i.i = icmp eq i32 %i.adf, 0           ; 2 uses
  %i.adg = select i1 %.not.i53.i.i, i32 1, i32 2
  store i32 %i.adg, ptr %13, align 8, !tbaa !655, !noalias !2087
  %i.adh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.adi = select i1 %.not.i53.i.i, ptr null, ptr %i.adc
  store ptr %i.adi, ptr %i.adh, align 8, !tbaa !660, !noalias !2087
  %i.adj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.adj, align 8, !tbaa !661, !noalias !2087
  %i.adk = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.yj, ptr %i.adk, align 8, !tbaa !241, !noalias !2087
  %i.adl = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.adm = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %13, i32 0, i64 %i.ade) #29, !noalias !2087 ; 2 uses
  %i.adn = extractvalue { i32, ptr } %i.adm, 0
  store i32 %i.adn, ptr %i.adl, align 8, !noalias !2087
  %i.ado = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.adp = extractvalue { i32, ptr } %i.adm, 1
  store ptr %i.adp, ptr %i.ado, align 8, !noalias !2087
  %i.adq = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.adr = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %13, i64 %i.ade) #29, !noalias !2087 ; 2 uses
  %.fca.0.extract.i54.i.i = extractvalue { i64, i8 } %i.adr, 0
  %.fca.1.extract.i55.i.i = extractvalue { i64, i8 } %i.adr, 1
  store i64 %.fca.0.extract.i54.i.i, ptr %i.adq, align 8, !noalias !2087
  %.sroa.2.0..sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i8 %.fca.1.extract.i55.i.i, ptr %.sroa.2.0..sroa_idx.i56.i.i, align 8, !noalias !2087
  %.sroa.086.0.copyload89.i.i = load i32, ptr %13, align 8, !noalias !2087
  %.sroa.891.0..sroa_idx94.i.i = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.891.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.891.0..sroa_idx94.i.i, i64 32, i1 false), !noalias !2087
  %.sroa.996.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %13, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %.sroa.996.i.i, ptr noundef nonnull align 4 dereferenceable(21) %.sroa.996.0..sroa_idx99.i.i, i64 21, i1 false), !noalias !2087
  %.sroa.10101.0..sroa_idx104.i.i = getelementptr inbounds nuw i8, ptr %13, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10101.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10101.0..sroa_idx104.i.i, i64 3, i1 false), !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29, !noalias !2087
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !2087
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(168) %1), !noalias !2087
  %.sroa.069.0.copyload72.i.i = load i32, ptr %14, align 8, !noalias !2087
  %.sroa.8.0..sroa_idx76.i.i = getelementptr inbounds nuw i8, ptr %14, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx76.i.i, i64 32, i1 false), !noalias !2087
  %.sroa.9.0..sroa_idx80.i.i = getelementptr inbounds nuw i8, ptr %14, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9.i.i, ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9.0..sroa_idx80.i.i, i64 21, i1 false), !noalias !2087
  %.sroa.10.0..sroa_idx84.i.i = getelementptr inbounds nuw i8, ptr %14, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa_idx84.i.i, i64 3, i1 false), !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !2087
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i155.i

bb.dm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit49.i.i
  %i.ads = icmp ult i64 %i.acw, 4
  br i1 %i.ads, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.adt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.33, i64 noundef 4) #29, !noalias !2087 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59.i.i

bb.do:                                            ; preds = %bb.dm
  store i32 1702195828, ptr %i.act, align 1, !noalias !2087
  %i.adu = load ptr, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 4
  store ptr %i.adv, ptr %i.yt, align 8, !tbaa !1027, !noalias !2087
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit59.i.i:           ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29, !noalias !2087
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !61, !noalias !2087 ; 2 uses
  %.val.i153.i = load ptr, ptr %i.d, align 8, !tbaa !966, !noalias !2087
  %i.ady = getelementptr i8, ptr %.val.i153.i, i64 24
  %.val.val.i154.i = load i64, ptr %i.ady, align 8, !tbaa !52, !noalias !2087
  %i.adz = and i64 %.val.val.i154.i, -8           ; 2 uses
  %i.aea = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adx) #31, !noalias !2087
  %.not.i60.i.i = icmp eq i32 %i.aea, 0           ; 2 uses
  %i.aeb = select i1 %.not.i60.i.i, i32 1, i32 2
  store i32 %i.aeb, ptr %15, align 8, !tbaa !655, !noalias !2087
  %i.aec = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aed = select i1 %.not.i60.i.i, ptr null, ptr %i.adx
  store ptr %i.aed, ptr %i.aec, align 8, !tbaa !660, !noalias !2087
  %i.aee = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr null, ptr %i.aee, align 8, !tbaa !661, !noalias !2087
  %i.aef = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.yj, ptr %i.aef, align 8, !tbaa !241, !noalias !2087
  %i.aeg = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.aeh = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %15, i32 0, i64 %i.adz) #29, !noalias !2087 ; 2 uses
  %i.aei = extractvalue { i32, ptr } %i.aeh, 0
  store i32 %i.aei, ptr %i.aeg, align 8, !noalias !2087
  %i.aej = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.aek = extractvalue { i32, ptr } %i.aeh, 1
  store ptr %i.aek, ptr %i.aej, align 8, !noalias !2087
  %i.ael = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.aem = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %15, i64 %i.adz) #29, !noalias !2087 ; 2 uses
  %.fca.0.extract.i61.i.i = extractvalue { i64, i8 } %i.aem, 0
  %.fca.1.extract.i62.i.i = extractvalue { i64, i8 } %i.aem, 1
  store i64 %.fca.0.extract.i61.i.i, ptr %i.ael, align 8, !noalias !2087
  %.sroa.2.0..sroa_idx.i63.i.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i8 %.fca.1.extract.i62.i.i, ptr %.sroa.2.0..sroa_idx.i63.i.i, align 8, !noalias !2087
  %.sroa.069.0.copyload73.i.i = load i32, ptr %15, align 8, !noalias !2087
  %.sroa.8.0..sroa_idx77.i.i = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx77.i.i, i64 32, i1 false), !noalias !2087
  %.sroa.9.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %15, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9.i.i, ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9.0..sroa_idx81.i.i, i64 21, i1 false), !noalias !2087
  %.sroa.10.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %15, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa_idx85.i.i, i64 3, i1 false), !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29, !noalias !2087
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29, !noalias !2087
  call void @_ZN5clang4ento22PathDiagnosticLocation17createOperatorLocEPKNS_14BinaryOperatorERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %16, ptr noundef nonnull %i.ld, ptr noundef nonnull align 8 dereferenceable(776) %i.yj) #29, !noalias !2087
  %.sroa.086.0.copyload90.i.i = load i32, ptr %16, align 8, !noalias !2087
  %.sroa.891.0..sroa_idx95.i.i = getelementptr inbounds nuw i8, ptr %16, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.891.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.891.0..sroa_idx95.i.i, i64 32, i1 false), !noalias !2087
  %.sroa.996.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %16, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %.sroa.996.i.i, ptr noundef nonnull align 4 dereferenceable(21) %.sroa.996.0..sroa_idx100.i.i, i64 21, i1 false), !noalias !2087
  %.sroa.10101.0..sroa_idx105.i.i = getelementptr inbounds nuw i8, ptr %16, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10101.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10101.0..sroa_idx105.i.i, i64 3, i1 false), !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29, !noalias !2087
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i155.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i155.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit52.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit39.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit36.i.i
  %.sroa.069.0.i.i = phi i32 [ %.sroa.069.0.copyload70.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit36.i.i ], [ %.sroa.069.0.copyload71.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit39.i.i ], [ %.sroa.069.0.copyload72.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit52.i.i ], [ %.sroa.069.0.copyload73.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit59.i.i ]
  %.sroa.086.0.i.i = phi i32 [ %.sroa.086.0.copyload87.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit36.i.i ], [ %.sroa.086.0.copyload88.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit39.i.i ], [ %.sroa.086.0.copyload89.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit52.i.i ], [ %.sroa.086.0.copyload90.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit59.i.i ]
  %i.aen = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2088 ; 8 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  store i32 1, ptr %i.aeo, align 8, !tbaa !871, !noalias !2089
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 12
  store i32 1, ptr %i.aep, align 4, !tbaa !872, !noalias !2089
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aen, align 8, !tbaa !37, !noalias !2089
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aen, i64 16 ; 3 uses
  %i.aer = load ptr, ptr %7, align 8, !tbaa !85, !noalias !2089
  %i.aes = load i64, ptr %i.yl, align 8, !tbaa !51, !noalias !2089
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.aeq, ptr %i.aer, i64 %i.aes, i32 noundef 0, i32 noundef 1) #29, !noalias !2089
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.aeq, align 8, !tbaa !37, !noalias !2089
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aen, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aet, i8 0, i64 24, i1 false), !noalias !2089
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aen, i64 152
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aen, i64 160
  %i.aew = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2089 ; 10 uses
  store i32 %.sroa.086.0.i.i, ptr %i.aew, align 8, !noalias !2089
  %.sroa.4.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i156.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.891.i.i, i64 32, i1 false), !noalias !2087
  %.sroa.5107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %.sroa.5107.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(21) %.sroa.996.i.i, i64 21, i1 false), !noalias !2087
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10101.i.i, i64 7, i1 false), !noalias !2087
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 64
  store i32 %.sroa.069.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2089
  %.sroa.8108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8108.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i, i64 32, i1 false), !noalias !2087
  %.sroa.9109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9109.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(21) %.sroa.9.i.i, i64 21, i1 false), !noalias !2087
  %.sroa.10110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10110.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, i64 7, i1 false), !noalias !2087
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 128 ; 2 uses
  store ptr %i.aew, ptr %i.aet, align 8, !tbaa !975, !noalias !2089
  store ptr %i.aex, ptr %i.aeu, align 8, !tbaa !976, !noalias !2089
  store ptr %i.aex, ptr %i.aev, align 8, !tbaa !977, !noalias !2089
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #29, !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !2087
  %i.aey = load ptr, ptr %7, align 8, !tbaa !85, !noalias !2087 ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.yk
  br i1 %i.aez, label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i155.i
  %i.afa = load i64, ptr %i.yk, align 8, !tbaa !52, !noalias !2087
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #30, !noalias !2087
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167.i

_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i155.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.891.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.996.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10101.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  %i.afc = load ptr, ptr %.0.i.i149.i, align 8, !tbaa !857
  %i.afd = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  store ptr %i.aeq, ptr %i.afe, align 8, !tbaa !866
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 24
  store ptr %i.aen, ptr %i.aff, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.afd, ptr noundef %i.afc) #29
  %i.afg = getelementptr inbounds nuw i8, ptr %.0.i.i149.i, i64 16 ; 2 uses
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !869
  %i.afi = add i64 %i.afh, 1
  store i64 %i.afi, ptr %i.afg, align 8, !tbaa !869
  br label %bb.ew

bb.dp:                                            ; preds = %bb.at
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 80
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !2080
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !2084
  %i.afm = icmp eq ptr %i.afl, %i.la
  br i1 %i.afm, label %bb.dq, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29
  %i.afn = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  store ptr %i.afn, ptr %40, align 8, !tbaa !49
  %i.afo = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %i.afo, align 8, !tbaa !51
  store i8 0, ptr %i.afn, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  %i.afp = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 0, ptr %i.afp, align 8, !tbaa !1021
  %i.afq = getelementptr inbounds nuw i8, ptr %41, i64 40
  store i8 0, ptr %i.afq, align 8, !tbaa !1022
  %i.afr = getelementptr inbounds nuw i8, ptr %41, i64 44
  store i32 1, ptr %i.afr, align 4, !tbaa !1023
  %i.afs = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afs, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %41, align 8, !tbaa !37
  %i.aft = getelementptr inbounds nuw i8, ptr %41, i64 48
  store ptr %40, ptr %i.aft, align 8, !tbaa !803
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %41, ptr noundef null, i64 noundef 0, i32 noundef 0) #29
  %i.afu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull @.str.34) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #29
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERN4llvm18raw_string_ostreamERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %42, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %41, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %i.afv = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !660 ; 2 uses
  %.not74.i = icmp eq ptr %i.afw, null
  br i1 %.not74.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #29
  %.val92.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.afx = getelementptr i8, ptr %.val92.i, i64 24
  %.val92.val.i = load i64, ptr %i.afx, align 8, !tbaa !52
  %i.afy = and i64 %.val92.val.i, -8
  %i.afz = inttoptr i64 %i.afy to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %43, ptr noundef nonnull %i.afw, ptr noundef %i.afz, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %42, ptr noundef nonnull align 8 dereferenceable(60) %43, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val82.i = load ptr, ptr %i.aga, align 8, !tbaa !828 ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.val82.i, i64 352
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i168.i = icmp eq i32 %i.agc, 0
  br i1 %.not.i.i.i168.i, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.agd = getelementptr inbounds nuw i8, ptr %.val82.i, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit170.i

bb.du:                                            ; preds = %bb.ds
  %i.age = getelementptr inbounds nuw i8, ptr %.val82.i, i64 344
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !87
  %i.agg = zext i32 %i.agc to i64
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %i.agg
  %i.agi = getelementptr inbounds i8, ptr %i.agh, i64 -8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit170.i

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit170.i: ; preds = %bb.du, %bb.dt
  %.0.i.i169.i = phi ptr [ %i.agd, %bb.dt ], [ %i.agj, %bb.du ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #29
  call void @_ZSt11make_sharedIN5clang4ento30PathDiagnosticControlFlowPieceEJRNS1_22PathDiagnosticLocationES4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1341") align 8 %45, ptr noundef nonnull align 8 dereferenceable(60) %32, ptr noundef nonnull align 8 dereferenceable(60) %42, ptr noundef nonnull align 8 dereferenceable(32) %40)
  %i.agk = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.agl = load <2 x ptr>, ptr %45, align 16, !tbaa !39
  store ptr null, ptr %i.agk, align 8, !tbaa !868
  store <2 x ptr> %i.agl, ptr %44, align 16, !tbaa !39
  store ptr null, ptr %45, align 16, !tbaa !2091
  call void @_ZNSt7__cxx114listISt10shared_ptrIN5clang4ento19PathDiagnosticPieceEESaIS5_EE10push_frontEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i169.i, ptr noundef nonnull align 8 dereferenceable(16) %44)
  call void @_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #29
  call void @_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  %i.agm = load ptr, ptr %40, align 8, !tbaa !85  ; 2 uses
  %i.agn = icmp eq ptr %i.agm, %i.afn
  br i1 %i.agn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i: ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit170.i
  %i.ago = load i64, ptr %i.afn, align 8, !tbaa !52
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.agp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i: ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit170.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  br label %bb.ew

bb.dv:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #29
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %46, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %i.agq = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !660 ; 2 uses
  %.not73.i = icmp eq ptr %i.agr, null
  br i1 %.not73.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #29
  %.val91.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.ags = getelementptr i8, ptr %.val91.i, i64 24
  %.val91.val.i = load i64, ptr %i.ags, align 8, !tbaa !52
  %i.agt = and i64 %.val91.val.i, -8
  %i.agu = inttoptr i64 %i.agt to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %47, ptr noundef nonnull %i.agr, ptr noundef %i.agu, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %46, ptr noundef nonnull align 8 dereferenceable(60) %47, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val81.i = load ptr, ptr %i.agv, align 8, !tbaa !828 ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.val81.i, i64 352
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i174.i = icmp eq i32 %i.agx, 0
  br i1 %.not.i.i.i174.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.agy = getelementptr inbounds nuw i8, ptr %.val81.i, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit186.i

bb.dz:                                            ; preds = %bb.dx
  %i.agz = getelementptr inbounds nuw i8, ptr %.val81.i, i64 344
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !87
  %i.ahb = zext i32 %i.agx to i64
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %i.ahb
  %i.ahd = getelementptr inbounds i8, ptr %i.ahc, i64 -8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !867
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit186.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit186.i: ; preds = %bb.dz, %bb.dy
  %.0.i.i175.i = phi ptr [ %i.agy, %bb.dy ], [ %i.ahe, %bb.dz ] ; 2 uses
  %i.ahf = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2092 ; 8 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store i32 1, ptr %i.ahg, align 8, !tbaa !871, !noalias !2093
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahf, i64 12
  store i32 1, ptr %i.ahh, align 4, !tbaa !872, !noalias !2093
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ahf, align 8, !tbaa !37, !noalias !2093
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.ahi, ptr nonnull align 1 dereferenceable(39) @.str.35, i64 38, i32 noundef 0, i32 noundef 1) #29, !noalias !2093
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.ahi, align 8, !tbaa !37, !noalias !2093
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahj, i8 0, i64 24, i1 false), !noalias !2093
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2093
  %i.ahk = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ahk, ptr noundef nonnull align 8 dereferenceable(64) %46, i64 64, i1 false), !noalias !2093
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahf, i64 152
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahf, i64 160
  %i.ahn = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2093 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ahn, ptr noundef nonnull align 8 dereferenceable(128) %6, i64 128, i1 false), !noalias !2093
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 128 ; 2 uses
  store ptr %i.ahn, ptr %i.ahj, align 8, !tbaa !975, !noalias !2093
  store ptr %i.aho, ptr %i.ahl, align 8, !tbaa !976, !noalias !2093
  store ptr %i.aho, ptr %i.ahm, align 8, !tbaa !977, !noalias !2093
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ahp = load ptr, ptr %.0.i.i175.i, align 8, !tbaa !857
  %i.ahq = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  store ptr %i.ahi, ptr %i.ahr, align 8, !tbaa !866
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 24
  store ptr %i.ahf, ptr %i.ahs, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahq, ptr noundef %i.ahp) #29
  %i.aht = getelementptr inbounds nuw i8, ptr %.0.i.i175.i, i64 16 ; 2 uses
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !869
  %i.ahv = add i64 %i.ahu, 1
  store i64 %i.ahv, ptr %i.aht, align 8, !tbaa !869
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  br label %bb.ew

bb.ea:                                            ; preds = %bb.at, %bb.at
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 80
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !2080
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !2084
  %i.aia = icmp eq ptr %i.ahz, %i.la
  br i1 %i.aia, label %bb.eb, label %bb.ei

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  %i.aib = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  store ptr %i.aib, ptr %48, align 8, !tbaa !49
  %i.aic = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  store i64 0, ptr %i.aic, align 8, !tbaa !51
  store i8 0, ptr %i.aib, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  %i.aid = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 0, ptr %i.aid, align 8, !tbaa !1021
  %i.aie = getelementptr inbounds nuw i8, ptr %49, i64 40
  store i8 0, ptr %i.aie, align 8, !tbaa !1022
  %i.aif = getelementptr inbounds nuw i8, ptr %49, i64 44
  store i32 1, ptr %i.aif, align 4, !tbaa !1023
  %i.aig = getelementptr inbounds nuw i8, ptr %49, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aig, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %49, align 8, !tbaa !37
  %i.aih = getelementptr inbounds nuw i8, ptr %49, i64 48
  store ptr %48, ptr %i.aih, align 8, !tbaa !803
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %49, ptr noundef null, i64 noundef 0, i32 noundef 0) #29
  %i.aii = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !1026
  %i.aik = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 3 uses
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !1027 ; 2 uses
  %i.aim = ptrtoint ptr %i.aij to i64
  %i.ain = ptrtoint ptr %i.ail to i64
  %i.aio = sub i64 %i.aim, %i.ain
  %i.aip = icmp ult i64 %i.aio, 25
  br i1 %i.aip, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.aiq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull @.str.36, i64 noundef 25) #29 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit189.i

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ail, ptr noundef nonnull align 1 dereferenceable(25) @.str.36, i64 25, i1 false)
  %i.air = load ptr, ptr %i.aik, align 8, !tbaa !1027
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 25
  store ptr %i.ais, ptr %i.aik, align 8, !tbaa !1027
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit189.i

_ZN4llvm11raw_ostreamlsEPKc.exit189.i:            ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #29
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERN4llvm18raw_string_ostreamERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %50, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %49, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %i.ait = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !660 ; 2 uses
  %.not72.i = icmp eq ptr %i.aiu, null
  br i1 %.not72.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit189.i
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #29
  %.val90.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.aiv = getelementptr i8, ptr %.val90.i, i64 24
  %.val90.val.i = load i64, ptr %i.aiv, align 8, !tbaa !52
  %i.aiw = and i64 %.val90.val.i, -8
  %i.aix = inttoptr i64 %i.aiw to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %51, ptr noundef nonnull %i.aiu, ptr noundef %i.aix, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %50, ptr noundef nonnull align 8 dereferenceable(60) %51, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %_ZN4llvm11raw_ostreamlsEPKc.exit189.i
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val80.i = load ptr, ptr %i.aiy, align 8, !tbaa !828 ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %.val80.i, i64 352
  %i.aja = load i32, ptr %i.aiz, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i190.i = icmp eq i32 %i.aja, 0
  br i1 %.not.i.i.i190.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ajb = getelementptr inbounds nuw i8, ptr %.val80.i, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202.i

bb.eh:                                            ; preds = %bb.ef
  %i.ajc = getelementptr inbounds nuw i8, ptr %.val80.i, i64 344
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !87
  %i.aje = zext i32 %i.aja to i64
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.ajd, i64 %i.aje
  %i.ajg = getelementptr inbounds i8, ptr %i.ajf, i64 -8
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !867
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202.i: ; preds = %bb.eh, %bb.eg
  %.0.i.i191.i = phi ptr [ %i.ajb, %bb.eg ], [ %i.ajh, %bb.eh ] ; 2 uses
  %i.aji = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2094 ; 8 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  store i32 1, ptr %i.ajj, align 8, !tbaa !871, !noalias !2095
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 12
  store i32 1, ptr %i.ajk, align 4, !tbaa !872, !noalias !2095
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aji, align 8, !tbaa !37, !noalias !2095
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aji, i64 16 ; 3 uses
  %i.ajm = load ptr, ptr %48, align 8, !tbaa !85, !noalias !2095
  %i.ajn = load i64, ptr %i.aic, align 8, !tbaa !51, !noalias !2095
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.ajl, ptr %i.ajm, i64 %i.ajn, i32 noundef 0, i32 noundef 1) #29, !noalias !2095
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.ajl, align 8, !tbaa !37, !noalias !2095
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aji, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajo, i8 0, i64 24, i1 false), !noalias !2095
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2095
  %i.ajp = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ajp, ptr noundef nonnull align 8 dereferenceable(64) %50, i64 64, i1 false), !noalias !2095
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aji, i64 152
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aji, i64 160
  %i.ajs = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2095 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ajs, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false), !noalias !2095
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 128 ; 2 uses
  store ptr %i.ajs, ptr %i.ajo, align 8, !tbaa !975, !noalias !2095
  store ptr %i.ajt, ptr %i.ajq, align 8, !tbaa !976, !noalias !2095
  store ptr %i.ajt, ptr %i.ajr, align 8, !tbaa !977, !noalias !2095
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aju = load ptr, ptr %.0.i.i191.i, align 8, !tbaa !857
  %i.ajv = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 16
  store ptr %i.ajl, ptr %i.ajw, align 8, !tbaa !866
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  store ptr %i.aji, ptr %i.ajx, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ajv, ptr noundef %i.aju) #29
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0.i.i191.i, i64 16 ; 2 uses
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !869
  %i.aka = add i64 %i.ajz, 1
  store i64 %i.aka, ptr %i.ajy, align 8, !tbaa !869
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %49) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  %i.akb = load ptr, ptr %48, align 8, !tbaa !85  ; 2 uses
  %i.akc = icmp eq ptr %i.akb, %i.aib
  br i1 %i.akc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202.i
  %i.akd = load i64, ptr %i.aib, align 8, !tbaa !52
  %i.ake = add i64 %i.akd, 1
  call void @_ZdlPvm(ptr noundef %i.akb, i64 noundef %i.ake) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i: ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %bb.ew

bb.ei:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #29
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %52, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %i.akf = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !660 ; 2 uses
  %.not71.i = icmp eq ptr %i.akg, null
  br i1 %.not71.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #29
  %.val89.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.akh = getelementptr i8, ptr %.val89.i, i64 24
  %.val89.val.i = load i64, ptr %i.akh, align 8, !tbaa !52
  %i.aki = and i64 %.val89.val.i, -8
  %i.akj = inttoptr i64 %i.aki to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %53, ptr noundef nonnull %i.akg, ptr noundef %i.akj, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %52, ptr noundef nonnull align 8 dereferenceable(60) %53, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.akk = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val79.i = load ptr, ptr %i.akk, align 8, !tbaa !828 ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.val79.i, i64 352
  %i.akm = load i32, ptr %i.akl, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i206.i = icmp eq i32 %i.akm, 0
  br i1 %.not.i.i.i206.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.akn = getelementptr inbounds nuw i8, ptr %.val79.i, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218.i

bb.em:                                            ; preds = %bb.ek
  %i.ako = getelementptr inbounds nuw i8, ptr %.val79.i, i64 344
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !87
  %i.akq = zext i32 %i.akm to i64
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.akp, i64 %i.akq
  %i.aks = getelementptr inbounds i8, ptr %i.akr, i64 -8
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !867
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218.i: ; preds = %bb.em, %bb.el
  %.0.i.i207.i = phi ptr [ %i.akn, %bb.el ], [ %i.akt, %bb.em ] ; 2 uses
  %i.aku = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2096 ; 8 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  store i32 1, ptr %i.akv, align 8, !tbaa !871, !noalias !2097
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 12
  store i32 1, ptr %i.akw, align 4, !tbaa !872, !noalias !2097
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aku, align 8, !tbaa !37, !noalias !2097
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aku, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.akx, ptr nonnull align 1 dereferenceable(44) @.str.37, i64 43, i32 noundef 0, i32 noundef 1) #29, !noalias !2097
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.akx, align 8, !tbaa !37, !noalias !2097
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aku, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aky, i8 0, i64 24, i1 false), !noalias !2097
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2097
  %i.akz = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.akz, ptr noundef nonnull align 8 dereferenceable(64) %52, i64 64, i1 false), !noalias !2097
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aku, i64 152
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aku, i64 160
  %i.alc = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2097 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.alc, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false), !noalias !2097
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 128 ; 2 uses
  store ptr %i.alc, ptr %i.aky, align 8, !tbaa !975, !noalias !2097
  store ptr %i.ald, ptr %i.ala, align 8, !tbaa !976, !noalias !2097
  store ptr %i.ald, ptr %i.alb, align 8, !tbaa !977, !noalias !2097
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ale = load ptr, ptr %.0.i.i207.i, align 8, !tbaa !857
  %i.alf = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  store ptr %i.akx, ptr %i.alg, align 8, !tbaa !866
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 24
  store ptr %i.aku, ptr %i.alh, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.alf, ptr noundef %i.ale) #29
  %i.ali = getelementptr inbounds nuw i8, ptr %.0.i.i207.i, i64 16 ; 2 uses
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !869
  %i.alk = add i64 %i.alj, 1
  store i64 %i.alk, ptr %i.ali, align 8, !tbaa !869
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  br label %bb.ew

bb.en:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #29
  call fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder18ExecutionContinuesERKNS_23PathDiagnosticConstructE(ptr dead_on_unwind noalias writable align 8 %54, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(168) %1)
  %i.all = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !660 ; 2 uses
  %.not70.i = icmp eq ptr %i.alm, null
  br i1 %.not70.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29
  %.val88.i = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.aln = getelementptr i8, ptr %.val88.i, i64 24
  %.val88.val.i = load i64, ptr %i.aln, align 8, !tbaa !52
  %i.alo = and i64 %.val88.val.i, -8
  %i.alp = inttoptr i64 %i.alo to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %55, ptr noundef nonnull %i.alm, ptr noundef %i.alp, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %54, ptr noundef nonnull align 8 dereferenceable(60) %55, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #29
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.alq = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 80
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !2080
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 16
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !2084
  %i.alu = icmp eq ptr %i.alt, %i.la
  %i.alv = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val78.i = load ptr, ptr %i.alv, align 8, !tbaa !828 ; 5 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %.val78.i, i64 352
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i219.i = icmp eq i32 %i.alx, 0        ; 2 uses
  br i1 %i.alu, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  br i1 %.not.i.i.i219.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aly = getelementptr inbounds nuw i8, ptr %.val78.i, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit221.i

bb.es:                                            ; preds = %bb.eq
  %i.alz = getelementptr inbounds nuw i8, ptr %.val78.i, i64 344
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !87
  %i.amb = zext i32 %i.alx to i64
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.ama, i64 %i.amb
  %i.amd = getelementptr inbounds i8, ptr %i.amc, i64 -8
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit221.i

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit221.i: ; preds = %bb.es, %bb.er
  %.0.i.i220.i = phi ptr [ %i.aly, %bb.er ], [ %i.ame, %bb.es ]
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #29
  call void @_ZSt11make_sharedIN5clang4ento30PathDiagnosticControlFlowPieceEJRNS1_22PathDiagnosticLocationES4_RA20_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1341") align 8 %57, ptr noundef nonnull align 8 dereferenceable(60) %32, ptr noundef nonnull align 8 dereferenceable(60) %54, ptr noundef nonnull align 1 dereferenceable(20) @.str.38)
  %i.amf = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.amg = load <2 x ptr>, ptr %57, align 16, !tbaa !39
  store ptr null, ptr %i.amf, align 8, !tbaa !868
  store <2 x ptr> %i.amg, ptr %56, align 16, !tbaa !39
  store ptr null, ptr %57, align 16, !tbaa !2091
  call void @_ZNSt7__cxx114listISt10shared_ptrIN5clang4ento19PathDiagnosticPieceEESaIS5_EE10push_frontEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i220.i, ptr noundef nonnull align 8 dereferenceable(16) %56)
  call void @_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #29
  call void @_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #29
  br label %74

bb.et:                                            ; preds = %bb.ep
  br i1 %.not.i.i.i219.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.amh = getelementptr inbounds nuw i8, ptr %.val78.i, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit234.i

bb.ev:                                            ; preds = %bb.et
  %i.ami = getelementptr inbounds nuw i8, ptr %.val78.i, i64 344
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !87
  %i.amk = zext i32 %i.alx to i64
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %i.amk
  %i.amm = getelementptr inbounds i8, ptr %i.aml, i64 -8
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !867
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit234.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit234.i: ; preds = %bb.ev, %bb.eu
  %.0.i.i223.i = phi ptr [ %i.amh, %bb.eu ], [ %i.amn, %bb.ev ] ; 2 uses
  %i.amo = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2098 ; 8 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i32 1, ptr %i.amp, align 8, !tbaa !871, !noalias !2099
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 12
  store i32 1, ptr %i.amq, align 4, !tbaa !872, !noalias !2099
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.amo, align 8, !tbaa !37, !noalias !2099
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amo, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.amr, ptr nonnull align 1 dereferenceable(19) @.str.39, i64 18, i32 noundef 0, i32 noundef 1) #29, !noalias !2099
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.amr, align 8, !tbaa !37, !noalias !2099
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amo, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ams, i8 0, i64 24, i1 false), !noalias !2099
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !2099
  %i.amt = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.amt, ptr noundef nonnull align 8 dereferenceable(64) %54, i64 64, i1 false), !noalias !2099
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amo, i64 152
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amo, i64 160
  %i.amw = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2099 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.amw, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !noalias !2099
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 128 ; 2 uses
  store ptr %i.amw, ptr %i.ams, align 8, !tbaa !975, !noalias !2099
  store ptr %i.amx, ptr %i.amu, align 8, !tbaa !976, !noalias !2099
  store ptr %i.amx, ptr %i.amv, align 8, !tbaa !977, !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.amy = load ptr, ptr %.0.i.i223.i, align 8, !tbaa !857
  %i.amz = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  store ptr %i.amr, ptr %i.ana, align 8, !tbaa !866
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amz, i64 24
  store ptr %i.amo, ptr %i.anb, align 8, !tbaa !868
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.amz, ptr noundef %i.amy) #29
  %i.anc = getelementptr inbounds nuw i8, ptr %.0.i.i223.i, i64 16 ; 2 uses
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !869
  %i.ane = add i64 %i.and, 1
  store i64 %i.ane, ptr %i.anc, align 8, !tbaa !869
  br label %74

74:                                               ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit234.i, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit221.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #29
  br label %bb.ew

bb.ew:                                            ; preds = %74, %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit186.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167.i, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit.a

_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit.a: ; preds = %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %bb.ex

bb.ex:                                            ; preds = %_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit.a, %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit
  %.val121 = load ptr, ptr %1, align 8, !tbaa !965 ; 2 uses
  %i.anf = load ptr, ptr %.val121, align 8, !tbaa !37
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 40
  %i.anh = load ptr, ptr %i.ang, align 8
  %i.ani = call noundef i32 %i.anh(ptr noundef nonnull align 8 dereferenceable(32) %.val121) #29, !inline_history !1960
  %i.anj = icmp sgt i32 %i.ani, 1
  br i1 %i.anj, label %bb.ey, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.ey:                                            ; preds = %bb.ex
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 40
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !2100 ; 8 uses
  %.not = icmp eq ptr %i.anl, null
  br i1 %.not, label %bb.fy, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #29
  %.val140 = load ptr, ptr %i.d, align 8, !tbaa !966
  %i.anm = getelementptr i8, ptr %.val140, i64 24
  %.val140.val = load i64, ptr %i.anm, align 8, !tbaa !52
  %i.ann = and i64 %.val140.val, -8               ; 2 uses
  %i.ano = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anl) #31
  %.not.i224 = icmp eq i32 %i.ano, 0              ; 2 uses
  %i.anp = select i1 %.not.i224, i32 1, i32 2
  store i32 %i.anp, ptr %64, align 8, !tbaa !655
  %i.anq = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.anr = select i1 %.not.i224, ptr null, ptr %i.anl
  store ptr %i.anr, ptr %i.anq, align 8, !tbaa !660
  %i.ans = getelementptr inbounds nuw i8, ptr %64, i64 16
  store ptr null, ptr %i.ans, align 8, !tbaa !661
  %i.ant = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %i.m, ptr %i.ant, align 8, !tbaa !241
  %i.anu = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.anv = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %64, i32 0, i64 %i.ann) #29 ; 2 uses
  %i.anw = extractvalue { i32, ptr } %i.anv, 0
  store i32 %i.anw, ptr %i.anu, align 8
  %i.anx = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.any = extractvalue { i32, ptr } %i.anv, 1
  store ptr %i.any, ptr %i.anx, align 8
  %i.anz = getelementptr inbounds nuw i8, ptr %64, i64 48
  %i.aoa = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %64, i64 %i.ann) #29 ; 2 uses
  %.fca.0.extract.i225 = extractvalue { i64, i8 } %i.aoa, 0
  %.fca.1.extract.i226 = extractvalue { i64, i8 } %i.aoa, 1
  store i64 %.fca.0.extract.i225, ptr %i.anz, align 8
  %.sroa.2.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %64, i64 56
  store i8 %.fca.1.extract.i226, ptr %.sroa.2.0..sroa_idx.i227, align 8
  %i.aob = load i16, ptr %i.anl, align 8          ; 2 uses
  %i.aoc = and i16 %i.aob, 511
  switch i16 %i.aoc, label %bb.fe [
    i16 252, label %bb.fa
    i16 1, label %bb.fb
    i16 159, label %bb.fc
    i16 261, label %bb.fd
  ]

bb.fa:                                            ; preds = %bb.ez
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anl, i64 40
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !61
  br label %bb.fe

bb.fb:                                            ; preds = %bb.ez
  %i.aof = lshr i16 %i.aob, 9
  %.lobit.i.i.i = and i16 %i.aof, 1
  %i.aog = zext nneg i16 %.lobit.i.i.i to i64
  %i.aoh = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %i.aog
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 24
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !61
  br label %bb.fe

bb.fc:                                            ; preds = %bb.ez
  %i.aok = getelementptr inbounds nuw i8, ptr %i.anl, i64 24
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !61
  br label %bb.fe

bb.fd:                                            ; preds = %bb.ez
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anl, i64 64
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !61
  br label %bb.fe

bb.fe:                                            ; preds = %bb.ez, %bb.fb, %bb.fd, %bb.fc, %bb.fa
  %.3 = phi ptr [ %i.aoe, %bb.fa ], [ %i.aoj, %bb.fb ], [ %i.aol, %bb.fc ], [ %i.aon, %bb.fd ], [ null, %bb.ez ] ; 3 uses
  %i.aoo = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #32, !noalias !2101 ; 10 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  store i32 1, ptr %i.aop, align 8, !tbaa !871, !noalias !2102
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoo, i64 12
  store i32 1, ptr %i.aoq, align 4, !tbaa !872, !noalias !2102
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticEventPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aoo, align 8, !tbaa !37, !noalias !2102
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoo, i64 16 ; 6 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(194) %i.aor, ptr nonnull align 1 dereferenceable(37) @.str.30, i64 36, i32 noundef 1, i32 noundef 1) #29, !noalias !2102
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.aor, align 8, !tbaa !37, !noalias !2102
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoo, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aos, ptr noundef nonnull align 8 dereferenceable(64) %64, i64 64, i1 false), !noalias !2102
  %i.aot = load i32, ptr %i.aos, align 8, !tbaa !655, !noalias !2102
  switch i32 %i.aot, label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit [
    i32 2, label %bb.ff
    i32 0, label %bb.ff
    i32 3, label %bb.ff
  ]

bb.ff:                                            ; preds = %bb.fe, %bb.fe, %bb.fe
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoo, i64 192
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aou, align 8, !noalias !2102
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(194) %i.aor, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !2102
  br label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit

_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit: ; preds = %bb.fe, %bb.ff
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 16), ptr %i.aor, align 8, !tbaa !37, !noalias !2102
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoo, i64 208
  store i16 257, ptr %i.aov, align 8
  %i.aow = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %.val130 = load ptr, ptr %i.aow, align 8, !tbaa !828 ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.val130, i64 352
  %i.aoy = load i32, ptr %i.aox, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i233 = icmp eq i32 %i.aoy, 0
  br i1 %.not.i.i.i233, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit
  %i.aoz = getelementptr inbounds nuw i8, ptr %.val130, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235

bb.fh:                                            ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit
  %i.apa = getelementptr inbounds nuw i8, ptr %.val130, i64 344
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !87
  %i.apc = zext i32 %i.aoy to i64
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.apb, i64 %i.apc
  %i.ape = getelementptr inbounds i8, ptr %i.apd, i64 -8
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !867
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235: ; preds = %bb.fg, %bb.fh
  %.0.i.i234 = phi ptr [ %i.aoz, %bb.fg ], [ %i.apf, %bb.fh ] ; 2 uses
  %i.apg = load ptr, ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 32), align 8
  call void %i.apg(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %65, ptr noundef nonnull align 8 dereferenceable(192) %i.aor) #29
  %i.aph = load i64, ptr %65, align 8             ; 2 uses
  %.sroa.5457.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %.sroa.5457.0.copyload459 = load ptr, ptr %.sroa.5457.0..sroa_idx458, align 8 ; 4 uses
  %.sroa.6462.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %.sroa.6462.0.copyload464 = load ptr, ptr %.sroa.6462.0..sroa_idx463, align 8 ; 2 uses
  %.sroa.6467.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %65, i64 24
  %.sroa.6467.0.copyload469 = load ptr, ptr %.sroa.6467.0..sroa_idx468, align 8 ; 3 uses
  %.sroa.7472.0..sroa_idx473 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %.sroa.7472.0.copyload474 = load i32, ptr %.sroa.7472.0..sroa_idx473, align 8 ; 3 uses
  %.sroa.8477.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %65, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8477, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8477.0..sroa_idx478, i64 28, i1 false)
  %.not27.i236 = icmp eq ptr %.sroa.6467.0.copyload469, null
  %i.api = icmp eq i32 %.sroa.7472.0.copyload474, 0
  %or.cond31.i238 = select i1 %.not27.i236, i1 true, i1 %i.api
  br i1 %or.cond31.i238, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247, label %bb.fi

bb.fi:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235
  %i.apj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !241
  %.not28.i239 = icmp eq ptr %i.apk, null
  %i.apl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i8.i240 = load i32, ptr %i.apl, align 8
  %.not29.i241 = icmp eq i32 %.sroa.0.0.copyload.i8.i240, 0
  %or.cond32.i242 = select i1 %.not28.i239, i1 true, i1 %.not29.i241
  br i1 %or.cond32.i242, label %.sink.split.i246, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.not.i243 = icmp ne ptr %.sroa.5457.0.copyload459, null
  %i.apm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.apn = load ptr, ptr %i.apm, align 8
  %i.apo = icmp eq ptr %.sroa.5457.0.copyload459, %i.apn
  %or.cond.i244 = select i1 %.not.i243, i1 %i.apo, i1 false
  br i1 %or.cond.i244, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i245

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i245: ; preds = %bb.fj
  %i.app = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !2103 ; 8 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  store i32 1, ptr %i.apq, align 8, !tbaa !871, !noalias !2104
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 12
  store i32 1, ptr %i.apr, align 4, !tbaa !872, !noalias !2104
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.app, align 8, !tbaa !37, !noalias !2104
  %i.aps = getelementptr inbounds nuw i8, ptr %i.app, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.aps, i32 noundef 0, i32 noundef 1) #29, !noalias !2104
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.aps, align 8, !tbaa !37, !noalias !2104
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apt, i8 0, i64 24, i1 false), !noalias !2104
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9486)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9486, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !2104
  %i.apu = getelementptr inbounds nuw i8, ptr %i.app, i64 152
  %i.apv = getelementptr inbounds nuw i8, ptr %i.app, i64 160
  %i.apw = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !2104 ; 9 uses
  store i64 %i.aph, ptr %i.apw, align 8, !noalias !2104
  %.sroa.4481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store ptr %.sroa.5457.0.copyload459, ptr %.sroa.4481.0..sroa_idx, align 8, !noalias !2104
  %.sroa.5482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  store ptr %.sroa.6462.0.copyload464, ptr %.sroa.5482.0..sroa_idx, align 8, !noalias !2104
  %.sroa.6483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 24
  store ptr %.sroa.6467.0.copyload469, ptr %.sroa.6483.0..sroa_idx, align 8, !noalias !2104
  %.sroa.7484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 32
  store i32 %.sroa.7472.0.copyload474, ptr %.sroa.7484.0..sroa_idx, align 8, !noalias !2104
  %.sroa.8485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8485.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8477, i64 28, i1 false)
  %.sroa.9486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9486.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9486, i64 64, i1 false), !noalias !2104
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 128 ; 2 uses
  store ptr %i.apw, ptr %i.apt, align 8, !tbaa !975, !noalias !2104
  store ptr %i.apx, ptr %i.apu, align 8, !tbaa !976, !noalias !2104
  store ptr %i.apx, ptr %i.apv, align 8, !tbaa !977, !noalias !2104
end_hunk_2
