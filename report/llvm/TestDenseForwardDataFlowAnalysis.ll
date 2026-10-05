Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestDenseForwardDataFlowAnalysis?download=true
inline.NumInlined: 3454
inline.NumDeleted: 1978
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_120LastModifiedAnalysis28visitCallControlFlowTransferEN4mlir15CallOpInterfaceENS1_8dataflow21CallControlFlowActionERKNS_16LastModificationEPS5_:bb.a

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i.i
  %i.mp = phi i64 [ %i.mo, %.loopexit.i.i.i.i ], [ %i.mc, %.lr.ph.i.i.i.i.i ]
  %i.mq = getelementptr inbounds nuw [176 x i8], ptr %i.lb, i64 %i.mp ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !158, !noalias !498 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !159, !noalias !498 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !160, !noalias !498 ; 2 uses
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i
  %i.my = add i32 %i.mw, -1                       ; 4 uses
  %i.mz = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.na = lshr i64 %i.mz, 31
  %i.nb = xor i64 %i.na, %i.mz
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = and i32 %i.my, %i.nc                    ; 3 uses
  %i.ne = zext i32 %i.nd to i64                   ; 2 uses
  %i.nf = lshr i64 %i.ne, 5
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !136
  %i.ni = and i32 %i.nd, 31
  %i.nj = lshr i32 %i.nh, %i.ni
  %i.nk = trunc i32 %i.nj to i1
  br i1 %i.nk, label %.lr.ph.i.i.i.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !137

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %bb.aa
  %i.nl = phi i64 [ %i.nq, %bb.aa ], [ %i.ne, %bb.z ]
  %.017.i.i.i.i = phi i32 [ %i.np, %bb.aa ], [ %i.nd, %bb.z ]
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.nl
  %.sroa.0.0.copyload.i.i.i.i5.i = load i64, ptr %i.nm, align 8
  %i.nn = icmp eq i64 %i.ao, %.sroa.0.0.copyload.i.i.i.i5.i
  br i1 %i.nn, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i, label %bb.aa, !prof !61

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.no = add nuw i32 %.017.i.i.i.i, 1
  %i.np = and i32 %i.no, %i.my                    ; 3 uses
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %i.nr = lshr i64 %i.nq, 5
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !136
  %i.nu = and i32 %i.np, 31
  %i.nv = lshr i32 %i.nt, %i.nu
  %i.nw = trunc i32 %i.nv to i1
  br i1 %i.nw, label %.lr.ph.i.i.i.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !138

_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.nx = mul i64 %i.kz, -4658895280553007687     ; 2 uses
  %i.ny = lshr i64 %i.nx, 31
  %i.nz = xor i64 %i.ny, %i.nx
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = and i32 %i.my, %i.oa                    ; 3 uses
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  %i.od = lshr i64 %i.oc, 5
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !136
  %i.og = and i32 %i.ob, 31
  %i.oh = lshr i32 %i.of, %i.og
  %i.oi = trunc i32 %i.oh to i1
  br i1 %i.oi, label %.lr.ph.i.i.i8.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !137

.lr.ph.i.i.i8.i:                                  ; preds = %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i, %bb.ab
  %i.oj = phi i64 [ %i.oo, %bb.ab ], [ %i.oc, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i ]
  %.017.i.i.i9.i = phi i32 [ %i.on, %bb.ab ], [ %i.ob, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i ]
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.oj
  %.sroa.0.0.copyload.i.i.i.i10.i = load i64, ptr %i.ok, align 8
  %i.ol = icmp eq i64 %i.kz, %.sroa.0.0.copyload.i.i.i.i10.i
  br i1 %i.ol, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit, label %bb.ab, !prof !61

bb.ab:                                            ; preds = %.lr.ph.i.i.i8.i
  %i.om = add nuw i32 %.017.i.i.i9.i, 1
  %i.on = and i32 %i.om, %i.my                    ; 3 uses
  %i.oo = zext i32 %i.on to i64                   ; 2 uses
  %i.op = lshr i64 %i.oo, 5
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !136
  %i.os = and i32 %i.on, 31
  %i.ot = lshr i32 %i.or, %i.os
  %i.ou = trunc i32 %i.ot to i1
  br i1 %i.ou, label %.lr.ph.i.i.i8.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !138

_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread: ; preds = %bb.x, %bb.aa, %bb.ab, %_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow4test22UnderlyingValueLatticeENS_5ValueEEEPT_T0_.exit, %bb.w, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i, %bb.z, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ac

_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit: ; preds = %.lr.ph.i.i.i8.i
  %i.ov = call noundef zeroext i1 @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE12isEquivalentERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(168) %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.ov, label %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_120LastModifiedAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_16LastModificationEPSF_E3$_0EES6_lS7_.exit", label %bb.ac

bb.ac:                                            ; preds = %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit
  call void @_ZN4mlir16DataFlowAnalysis13addDependencyEPNS_13AnalysisStateEPNS_12ProgramPointE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.kw, ptr noundef %.0.i.i.i.i) #21
  br label %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_120LastModifiedAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_16LastModificationEPSF_E3$_0EES6_lS7_.exit"

"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_120LastModifiedAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_16LastModificationEPSF_E3$_0EES6_lS7_.exit": ; preds = %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit, %bb.ac
  %.not.i38 = icmp eq ptr %i.kw, null
  br i1 %.not.i38, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_120LastModifiedAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_16LastModificationEPSF_E3$_0EES6_lS7_.exit"
  %i.ow = getelementptr inbounds nuw i8, ptr %i.kw, i64 168
  %i.ox = load i8, ptr %i.ow, align 8, !tbaa !192, !range !45, !noundef !46
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.oz = getelementptr inbounds nuw i8, ptr %i.kw, i64 160
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.oz, align 8, !tbaa !187 ; 2 uses
  %i.pa = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.05.0.i
  br i1 %i.pa, label %bb.af, label %bb.e

bb.af:                                            ; preds = %bb.ae
  %i.pb = load i32, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.pc = load i32, ptr %i.l, align 4, !tbaa !29
  %.not.i41 = icmp ult i32 %i.pb, %i.pc
  br i1 %.not.i41, label %bb.ah, label %bb.ag, !prof !61

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %.sroa.05.0.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.pd = zext i32 %i.pb to i64
  %i.pe = load ptr, ptr %12, align 8, !tbaa !28
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.pd
  store ptr %.sroa.05.0.i, ptr %i.pf, align 1
  %i.pg = load i32, ptr %i.k, align 8, !tbaa !60
  %i.ph = add i32 %i.pg, 1
  store i32 %i.ph, ptr %i.k, align 8, !tbaa !60
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.ag, %bb.ah
  %i.pi = add nuw nsw i64 %.sroa.579.0111, 1      ; 2 uses
  %.not94 = icmp eq i64 %i.pi, %i.u
  br i1 %.not94, label %.critedge35, label %bb.d

.critedge35:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %i.pj = load ptr, ptr %5, align 8, !tbaa !31
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = call noundef i32 %i.pl(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(56) %4) #21 ; 2 uses
  %i.pn = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.po = load i32, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.pp = zext i32 %i.po to i64
  %.idx = shl nuw nsw i64 %i.pp, 3
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx
  %.not112 = icmp eq i32 %i.po, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph115

.lr.ph115:                                        ; preds = %.critedge35
  %i.pr = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.ai

._crit_edge:                                      ; preds = %bb.ai, %.critedge35
  %.0.lcssa = phi i32 [ %i.pm, %.critedge35 ], [ %i.px, %bb.ai ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5, i32 noundef %.0.lcssa) #21
  br label %.critedge

bb.ai:                                            ; preds = %.lr.ph115, %bb.ai
  %.031114 = phi ptr [ %i.pn, %.lr.ph115 ], [ %i.py, %bb.ai ] ; 2 uses
  %.0113 = phi i32 [ %i.pm, %.lr.ph115 ], [ %i.px, %bb.ai ]
  %.sroa.05.0.copyload = load ptr, ptr %.031114, align 8, !tbaa !187
  %i.ps = load ptr, ptr %11, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.sroa.05.0.copyload, ptr %10, align 8
  %i.pt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.pr, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.pt, 0
  %i.pu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.pv = call noundef i32 @_ZN4mlir8dataflow4test14AdjacentAccess3setEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(80) %i.pu, ptr noundef %i.ps)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.pw = icmp eq i32 %.0113, 1
  %i.px = select i1 %i.pw, i32 1, i32 %i.pv       ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.031114, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.py, %i.pq
  br i1 %.not, label %._crit_edge, label %bb.ai

.critedge:                                        ; preds = %bb.ad, %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_120LastModifiedAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_16LastModificationEPSF_E3$_0EES6_lS7_.exit", %._crit_edge
  %i.pz = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.qa = icmp eq ptr %i.pz, %i.j
  br i1 %i.qa, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.pz) #21
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %.critedge, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ar

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.qb, align 8, !tbaa !66
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !67
  %i.qe = icmp eq ptr %i.qd, @_ZN4mlir6detail14TypeIDResolverIN4test18TestCallAndStoreOpEvE2idE
  %spec.select.i.i = select i1 %i.qe, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %13, align 8
  %.not93 = icmp eq ptr %spec.select.i.i, null
  br i1 %.not93, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  switch i32 %3, label %bb.ap [
    i32 0, label %bb.am
    i32 1, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.qf = call noundef zeroext i1 @_ZN4test18TestCallAndStoreOp18getStoreBeforeCallEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  br i1 %i.qf, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.qg = call noundef zeroext i1 @_ZN4test18TestCallAndStoreOp18getStoreBeforeCallEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  br i1 %i.qg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.qh = load ptr, ptr %11, align 8, !tbaa !198
  %i.qi = load ptr, ptr %0, align 8, !tbaa !31
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 112
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = call i8 %i.qk(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %i.qh, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %5) #21 ; 0 uses
  br label %_ZN4mlir8dataflow36AbstractDenseForwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit

bb.ap:                                            ; preds = %bb.am, %bb.al, %bb.an, %bb.ak
  %i.qm = load ptr, ptr %5, align 8, !tbaa !31
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = call noundef i32 %i.qo(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4) #21, !inline_history !486
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5, i32 noundef %i.qp) #21
  br i1 %i.f, label %bb.aq, label %_ZN4mlir8dataflow36AbstractDenseForwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.qq = load ptr, ptr %0, align 8, !tbaa !31
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 64
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5) #21, !inline_history !487
  br label %_ZN4mlir8dataflow36AbstractDenseForwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit

_ZN4mlir8dataflow36AbstractDenseForwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit: ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4mlir8dataflow36AbstractDenseForwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferEN4mlir23RegionBranchOpInterfaceESt8optionalIjES4_RKNS_16LastModificationEPS5_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, ptr %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.test::TestStoreWithALoopRegion", align 8 ; 5 uses
  %8 = alloca %"class.test::TestStoreWithARegion", align 8 ; 5 uses
  %9 = alloca %"class.mlir::RegionBranchOpInterface", align 8 ; 4 uses
  %10 = alloca %"class.std::optional.209", align 8 ; 2 uses
  %11 = alloca %"class.std::optional.209", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %12 = alloca %class.anon.401, align 8           ; 26 uses
  store ptr %1, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.b, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  store ptr %6, ptr %i.a, align 8, !tbaa !505
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i64 %4, ptr %12, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !531
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4mlir13AnalysisStateE, i64 16), ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPN4mlir12ProgramPointEPNS3_16DataFlowAnalysisEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8copyFromERKSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 6 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 92
  store i32 0, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZSt4copyIPKSt4pairIPN4mlir12ProgramPointEPNS1_16DataFlowAnalysisEEPS6_ET0_T_SB_SA_.exit35.i.i.i.i.i.i

_ZSt4copyIPKSt4pairIPN4mlir12ProgramPointEPNS1_16DataFlowAnalysisEEPS6_ET0_T_SB_SA_.exit35.i.i.i.i.i.i: ; preds = %bb.a
  %i.s = zext i32 %i.r to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef 16) #21
  %.pre.i.i.i.i.i.i = load i32, ptr %i.q, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIPKSt4pairIPN4mlir12ProgramPointEPNS1_16DataFlowAnalysisEEPS6_ET0_T_SB_SA_.exit35.i.i.i.i.i.i
  %.pre37.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i to i64
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !28
  %gepdiff.i.i.i.i.i.i = shl nuw nsw i64 %.pre37.i.i.i.i.i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %i.t, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.b, %_ZSt4copyIPKSt4pairIPN4mlir12ProgramPointEPNS1_16DataFlowAnalysisEEPS6_ET0_T_SB_SA_.exit35.i.i.i.i.i.i
  store i32 %i.r, ptr %i.o, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir8dataflow20AbstractDenseLatticeE, i64 16), ptr %i.f, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_116LastModificationE, i64 16), ptr %i.f, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 3 uses
  store ptr %6, ptr %i.w, align 8, !tbaa !532
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 3 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 136
  store ptr %9, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !533
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %10, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !534
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 152
  store ptr %11, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !534
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 160 ; 3 uses
  store ptr %5, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !505
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 3 uses
  store ptr %i.a, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !535
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %i.ab = icmp ne ptr %i.aa, @_ZN4mlir6detail14TypeIDResolverIN4test20TestStoreWithARegionEvE2idE
  %.not3.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not3.i, %i.ab
  br i1 %.not.i, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %1, ptr %8, align 8
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !531 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !536, !range !45, !noundef !46
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef zeroext i1 @_ZN4test20TestStoreWithARegion20getStoreBeforeRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !536, !range !45, !noundef !46
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit.thread", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = call noundef zeroext i1 @_ZN4test20TestStoreWithARegion20getStoreBeforeRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br i1 %i.ak, label %bb.h, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit.thread"

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !198
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !532
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef %i.am) #21, !inline_history !499 ; 0 uses
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit.thread"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit.thread": ; preds = %bb.f, %bb.g, %bb.h
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !537
  %i.as = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !538, !nonnull !46, !align !154
  %i.at = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !539, !nonnull !46, !align !154
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !505 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef nonnull align 8 dereferenceable(56) %i.as) #21, !inline_history !500
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull %i.au, i32 noundef %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESA_RKNS6_16LastModificationEPSB_E3$_1EEvOT_.exit"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit": ; preds = %bb.c
  %.not = icmp eq ptr %i.aa, @_ZN4mlir6detail14TypeIDResolverIN4test24TestStoreWithALoopRegionEvE2idE
  br i1 %.not, label %bb.i, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test24TestStoreWithALoopRegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit"

bb.i:                                             ; preds = %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %7, align 8
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !531 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !536, !range !45, !noundef !46
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = call noundef zeroext i1 @_ZN4test24TestStoreWithALoopRegion20getStoreBeforeRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br i1 %i.bd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !536, !range !45, !noundef !46
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %"_ZZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferEN4mlir23RegionBranchOpInterfaceESt8optionalIjES4_RKNS_16LastModificationEPS5_ENK3$_0clIN4test24TestStoreWithALoopRegionEEEDaT_.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = call noundef zeroext i1 @_ZN4test24TestStoreWithALoopRegion20getStoreBeforeRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br i1 %i.bh, label %bb.m, label %"_ZZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferEN4mlir23RegionBranchOpInterfaceESt8optionalIjES4_RKNS_16LastModificationEPS5_ENK3$_0clIN4test24TestStoreWithALoopRegionEEEDaT_.exit.i"

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !198
  %i.bj = load ptr, ptr %i.w, align 8, !tbaa !532
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(25) %i.az, ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef %i.bj) #21, !inline_history !501 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferEN4mlir23RegionBranchOpInterfaceESt8optionalIjES4_RKNS_16LastModificationEPS5_ENK3$_0clIN4test24TestStoreWithALoopRegionEEEDaT_.exit.i"

"_ZZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferEN4mlir23RegionBranchOpInterfaceESt8optionalIjES4_RKNS_16LastModificationEPS5_ENK3$_0clIN4test24TestStoreWithALoopRegionEEEDaT_.exit.i": ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = load ptr, ptr %i.x, align 8, !tbaa !537
  %i.bp = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !538, !nonnull !46, !align !154
  %i.bq = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !539, !nonnull !46, !align !154
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !505 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.bp) #21, !inline_history !502
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull %i.br, i32 noundef %i.bv) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESA_RKNS6_16LastModificationEPSB_E3$_1EEvOT_.exit"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test24TestStoreWithALoopRegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit"
  %i.bw = load ptr, ptr %6, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5) #21, !inline_history !503
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, i32 noundef %i.bz) #21
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESA_RKNS6_16LastModificationEPSB_E3$_1EEvOT_.exit"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESA_RKNS6_16LastModificationEPSB_E3$_1EEvOT_.exit": ; preds = %"_ZZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferEN4mlir23RegionBranchOpInterfaceESt8optionalIjES4_RKNS_16LastModificationEPS5_ENK3$_0clIN4test24TestStoreWithALoopRegionEEEDaT_.exit.i", %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test20TestStoreWithARegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit.thread", %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseIN4test24TestStoreWithALoopRegionERZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESC_RKNS8_16LastModificationEPSD_E3$_0EERS4_OT0_.exit"
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 116 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !205 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4llvm8DenseMapIN4mlir5ValueENS1_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESA_RKNS6_16LastModificationEPSB_E3$_1EEvOT_.exit"
  %i.cd = load ptr, ptr %i.n, align 8, !tbaa !206
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !207
  %i.cg = zext i32 %i.cb to i64
  %i.ch = add nuw nsw i64 %i.cg, 31
  %i.ci = lshr i64 %i.ch, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !136 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.cl = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.n

bb.n:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ck, %.lr.ph.i.i ], [ %i.da, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.cm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.cn = or disjoint i32 %i.cm, %i.cl
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [88 x i8], ptr %i.cd, i64 %i.co ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !28 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EED2Ev.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.cs) #21
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !44, !range !45, !noundef !46
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EED2Ev.exit.i.i.i.i.i
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !47
  call void @free(ptr noundef %i.cy) #21
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.p, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EED2Ev.exit.i.i.i.i.i
  %i.cz = add i32 %.0.i3.i.i, -1
  %i.da = and i32 %i.cz, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ci
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !8

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ca, align 4, !tbaa !205 ; 2 uses
  %i.db = icmp eq i32 %.pr.i, 0
  br i1 %i.db, label %_ZN4llvm8DenseMapIN4mlir5ValueENS1_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !206
  %i.dd = zext i32 %.pr.i to i64                  ; 2 uses
  %i.de = mul nuw nsw i64 %i.dd, 88
  %i.df = add nuw nsw i64 %i.dd, 31
  %i.dg = lshr i64 %i.df, 3
  %i.dh = and i64 %i.dg, 1073741820
  %i.di = add nuw nsw i64 %i.dh, %i.de
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dc, i64 noundef %i.di, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS1_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS1_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_120LastModifiedAnalysis36visitRegionBranchControlFlowTransferENS1_23RegionBranchOpInterfaceESt8optionalIjESA_RKNS6_16LastModificationEPSB_E3$_1EEvOT_.exit", %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, %bb.q
  call void @_ZN4mlir13AnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(80) %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4mlir8dataflow28DenseForwardDataFlowAnalysisIN12_GLOBAL__N_116LastModificationEE18visitBlockTransferEPNS_5BlockEPNS_12ProgramPointES6_RKS3_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4) #21, !inline_history !540
  tail call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5, i32 noundef %i.d) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120LastModifiedAnalysis15setToEntryStateEPNS_16LastModificationE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !208
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4mlir8dataflow4test17AccessLatticeBase5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN4mlir8dataflow4test17AccessLatticeBase5resetEv.exit

_ZN4mlir8dataflow4test17AccessLatticeBase5resetEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %.0.i) #21
  ret void
}

declare void @_ZN4mlir16DataFlowAnalysisC2ERNS_14DataFlowSolverE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_116LastModificationEEENS_13LatticeAnchorES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i64 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !557 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155, !noalias !557 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111, !noalias !557 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 3 uses
  %i.i = mul i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_116LastModification13resolveTypeIDEvE2id to i64), -4658895280553007687 ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.h, %i.l                       ; 4 uses
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = lshr i64 %i.n, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !136
  %i.r = and i32 %i.m, 31
end_hunk_0
