Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestDenseBackwardDataFlowAnalysis?download=true
inline.NumInlined: 3518
inline.NumDeleted: 2014
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_118NextAccessAnalysis28visitCallControlFlowTransferEN4mlir15CallOpInterfaceENS1_8dataflow21CallControlFlowActionERKNS_10NextAccessEPS5_:bb.a

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i.i
  %i.mn = phi i64 [ %i.mm, %.loopexit.i.i.i.i ], [ %i.ma, %.lr.ph.i.i.i.i.i ]
  %i.mo = getelementptr inbounds nuw [176 x i8], ptr %i.kz, i64 %i.mn ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !170, !noalias !518 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !171, !noalias !518 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 28
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !172, !noalias !518 ; 2 uses
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i
  %i.mw = add i32 %i.mu, -1                       ; 4 uses
  %i.mx = mul i64 %i.am, -4658895280553007687     ; 2 uses
  %i.my = lshr i64 %i.mx, 31
  %i.mz = xor i64 %i.my, %i.mx
  %i.na = trunc i64 %i.mz to i32
  %i.nb = and i32 %i.mw, %i.na                    ; 3 uses
  %i.nc = zext i32 %i.nb to i64                   ; 2 uses
  %i.nd = lshr i64 %i.nc, 5
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !148
  %i.ng = and i32 %i.nb, 31
  %i.nh = lshr i32 %i.nf, %i.ng
  %i.ni = trunc i32 %i.nh to i1
  br i1 %i.ni, label %.lr.ph.i.i.i.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !149

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %bb.aa
  %i.nj = phi i64 [ %i.no, %bb.aa ], [ %i.nc, %bb.z ]
  %.017.i.i.i.i = phi i32 [ %i.nn, %bb.aa ], [ %i.nb, %bb.z ]
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %i.nj
  %.sroa.0.0.copyload.i.i.i.i5.i = load i64, ptr %i.nk, align 8
  %i.nl = icmp eq i64 %i.am, %.sroa.0.0.copyload.i.i.i.i5.i
  br i1 %i.nl, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i, label %bb.aa, !prof !61

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nm = add nuw i32 %.017.i.i.i.i, 1
  %i.nn = and i32 %i.nm, %i.mw                    ; 3 uses
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  %i.np = lshr i64 %i.no, 5
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !148
  %i.ns = and i32 %i.nn, 31
  %i.nt = lshr i32 %i.nr, %i.ns
  %i.nu = trunc i32 %i.nt to i1
  br i1 %i.nu, label %.lr.ph.i.i.i.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !150

_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.nv = mul i64 %i.kx, -4658895280553007687     ; 2 uses
  %i.nw = lshr i64 %i.nv, 31
  %i.nx = xor i64 %i.nw, %i.nv
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = and i32 %i.mw, %i.ny                    ; 3 uses
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %i.ob = lshr i64 %i.oa, 5
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !148
  %i.oe = and i32 %i.nz, 31
  %i.of = lshr i32 %i.od, %i.oe
  %i.og = trunc i32 %i.of to i1
  br i1 %i.og, label %.lr.ph.i.i.i8.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !149

.lr.ph.i.i.i8.i:                                  ; preds = %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i, %bb.ab
  %i.oh = phi i64 [ %i.om, %bb.ab ], [ %i.oa, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i ]
  %.017.i.i.i9.i = phi i32 [ %i.ol, %bb.ab ], [ %i.nz, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i ]
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %i.oh
  %.sroa.0.0.copyload.i.i.i.i10.i = load i64, ptr %i.oi, align 8
  %i.oj = icmp eq i64 %i.kx, %.sroa.0.0.copyload.i.i.i.i10.i
  br i1 %i.oj, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit, label %bb.ab, !prof !61

bb.ab:                                            ; preds = %.lr.ph.i.i.i8.i
  %i.ok = add nuw i32 %.017.i.i.i9.i, 1
  %i.ol = and i32 %i.ok, %i.mw                    ; 3 uses
  %i.om = zext i32 %i.ol to i64                   ; 2 uses
  %i.on = lshr i64 %i.om, 5
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !148
  %i.oq = and i32 %i.ol, 31
  %i.or = lshr i32 %i.op, %i.oq
  %i.os = trunc i32 %i.or to i1
  br i1 %i.os, label %.lr.ph.i.i.i8.i, label %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, !prof !150

_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread: ; preds = %bb.x, %bb.aa, %bb.ab, %_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow4test22UnderlyingValueLatticeENS_5ValueEEEPT_T0_.exit, %bb.w, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i, %bb.z, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE8containsERKS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ac

_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit: ; preds = %.lr.ph.i.i.i8.i
  %i.ot = call noundef zeroext i1 @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE12isEquivalentERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(168) %i.mp, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.ot, label %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_118NextAccessAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_10NextAccessEPSF_E3$_0EES6_lS7_.exit", label %bb.ac

bb.ac:                                            ; preds = %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit.thread, %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit
  call void @_ZN4mlir16DataFlowAnalysis13addDependencyEPNS_13AnalysisStateEPNS_12ProgramPointE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ku, ptr noundef %.0.i.i.i.i) #20
  br label %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_118NextAccessAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_10NextAccessEPSF_E3$_0EES6_lS7_.exit"

"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_118NextAccessAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_10NextAccessEPSF_E3$_0EES6_lS7_.exit": ; preds = %_ZNK4mlir14DataFlowSolver12isEquivalentINS_8dataflow4test22UnderlyingValueLatticeEEEbNS_13LatticeAnchorES5_.exit, %bb.ac
  %.not.i67 = icmp eq ptr %i.ku, null
  br i1 %.not.i67, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_118NextAccessAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_10NextAccessEPSF_E3$_0EES6_lS7_.exit"
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ku, i64 168
  %i.ov = load i8, ptr %i.ou, align 8, !tbaa !204, !range !46, !noundef !47
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ku, i64 160
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ox, align 8, !tbaa !199 ; 2 uses
  %i.oy = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.05.0.i
  br i1 %i.oy, label %bb.af, label %bb.e

bb.af:                                            ; preds = %bb.ae
  %i.oz = load i32, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.pa = load i32, ptr %i.l, align 4, !tbaa !30
  %.not.i70 = icmp ult i32 %i.oz, %i.pa
  br i1 %.not.i70, label %bb.ah, label %bb.ag, !prof !61

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %.sroa.05.0.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.pb = zext i32 %i.oz to i64
  %i.pc = load ptr, ptr %12, align 8, !tbaa !29
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pb
  store ptr %.sroa.05.0.i, ptr %i.pd, align 1
  %i.pe = load i32, ptr %i.k, align 8, !tbaa !60
  %i.pf = add i32 %i.pe, 1
  store i32 %i.pf, ptr %i.k, align 8, !tbaa !60
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.ag, %bb.ah
  %i.pg = add nuw nsw i64 %.sroa.5108.0140, 1     ; 2 uses
  %.not123 = icmp eq i64 %i.pg, %i.u
  br i1 %.not123, label %.critedge64, label %bb.d

.critedge64:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %i.ph = load ptr, ptr %5, align 8, !tbaa !32
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.pj = load ptr, ptr %i.pi, align 8
  %i.pk = call noundef i32 %i.pj(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(56) %4) #20 ; 2 uses
  %i.pl = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.pm = load i32, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.pn = zext i32 %i.pm to i64
  %.idx = shl nuw nsw i64 %i.pn, 3
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.idx
  %.not141 = icmp eq i32 %i.pm, 0
  br i1 %.not141, label %._crit_edge, label %.lr.ph144

.lr.ph144:                                        ; preds = %.critedge64
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph144, %bb.ai
  %.057143 = phi ptr [ %i.pl, %.lr.ph144 ], [ %i.pw, %bb.ai ] ; 2 uses
  %.0142 = phi i32 [ %i.pk, %.lr.ph144 ], [ %i.pv, %bb.ai ]
  %.sroa.010.0.copyload = load ptr, ptr %.057143, align 8, !tbaa !199
  %i.pq = load ptr, ptr %11, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.sroa.010.0.copyload, ptr %10, align 8
  %i.pr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS2_8dataflow4test14AdjacentAccessENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.pp, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.pr, 0
  %i.ps = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.pt = call noundef i32 @_ZN4mlir8dataflow4test14AdjacentAccess3setEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(80) %i.ps, ptr noundef %i.pq)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.pu = icmp eq i32 %.0142, 1
  %i.pv = select i1 %i.pu, i32 1, i32 %i.pt       ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.057143, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.pw, %i.po
  br i1 %.not, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ai, %.critedge64
  %.0.lcssa = phi i32 [ %i.pk, %.critedge64 ], [ %i.pv, %bb.ai ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5, i32 noundef %.0.lcssa) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %"_ZN4llvm12function_refIFPKN4mlir8dataflow4test22UnderlyingValueLatticeENS1_5ValueEEE11callback_fnIZN12_GLOBAL__N_118NextAccessAnalysis28visitCallControlFlowTransferENS1_15CallOpInterfaceENS2_21CallControlFlowActionERKNSB_10NextAccessEPSF_E3$_0EES6_lS7_.exit", %._crit_edge
  %i.px = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.j
  br i1 %i.py, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.px) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %.critedge, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ar

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.pz, align 8, !tbaa !79
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !80
  %i.qc = icmp eq ptr %i.qb, @_ZN4mlir6detail14TypeIDResolverIN4test18TestCallAndStoreOpEvE2idE
  %spec.select.i.i = select i1 %i.qc, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %13, align 8
  %.not122 = icmp eq ptr %spec.select.i.i, null
  br i1 %.not122, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  switch i32 %3, label %bb.ap [
    i32 0, label %bb.am
    i32 1, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.qd = call noundef zeroext i1 @_ZN4test18TestCallAndStoreOp18getStoreBeforeCallEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #20
  br i1 %i.qd, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.qe = call noundef zeroext i1 @_ZN4test18TestCallAndStoreOp18getStoreBeforeCallEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #20
  br i1 %i.qe, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.qf = load ptr, ptr %11, align 8, !tbaa !507
  %i.qg = load ptr, ptr %0, align 8, !tbaa !32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 112
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = call i8 %i.qi(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %i.qf, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %5) #20 ; 0 uses
  br label %_ZN4mlir8dataflow37AbstractDenseBackwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit

bb.ap:                                            ; preds = %bb.am, %bb.al, %bb.an, %bb.ak
  %i.qk = load ptr, ptr %5, align 8, !tbaa !32
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 40
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = call noundef i32 %i.qm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4) #20, !inline_history !504
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %5, i32 noundef %i.qn) #20
  br i1 %i.f, label %bb.aq, label %_ZN4mlir8dataflow37AbstractDenseBackwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.qo = load ptr, ptr %0, align 8, !tbaa !32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 64
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %5) #20, !inline_history !505
  br label %_ZN4mlir8dataflow37AbstractDenseBackwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit

_ZN4mlir8dataflow37AbstractDenseBackwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit: ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4mlir8dataflow37AbstractDenseBackwardDataFlowAnalysis28visitCallControlFlowTransferENS_15CallOpInterfaceENS0_21CallControlFlowActionERKNS0_20AbstractDenseLatticeEPS4_.exit, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118NextAccessAnalysis36visitRegionBranchControlFlowTransferEN4mlir23RegionBranchOpInterfaceENS1_17RegionBranchPointENS1_15RegionSuccessorERKNS_10NextAccessEPS5_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(address_is_null) %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.test::TestStoreWithARegion", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIN4test20TestStoreWithARegionEvE2idE
  %spec.select.i.i = select i1 %i.d, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %4, 4
  %.not17 = icmp eq i64 %i.e, 0
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef zeroext i1 @_ZN4test20TestStoreWithARegion20getStoreBeforeRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq ptr %3, null
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef zeroext i1 @_ZN4test20TestStoreWithARegion20getStoreBeforeRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i8 %i.k(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %6) #20 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.m = load ptr, ptr %6, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(56) %5) #20
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, i32 noundef %i.p) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4mlir8dataflow29DenseBackwardDataFlowAnalysisIN12_GLOBAL__N_110NextAccessEE18visitBlockTransferEPNS_5BlockEPNS_12ProgramPointES6_RKS3_PS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4) #20, !inline_history !519
  tail call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %5, i32 noundef %i.d) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118NextAccessAnalysis14setToExitStateEPNS_10NextAccessE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = tail call noundef i32 @_ZN4mlir8dataflow4test17AccessLatticeBase17setKnownToUnknownEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  tail call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %i.b) #20
  ret void
}

declare void @_ZN4mlir16DataFlowAnalysisC2ERNS_14DataFlowSolverE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_110NextAccessEEENS_13LatticeAnchorES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i64 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124, !noalias !536 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167, !noalias !536 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4, !tbaa !123, !noalias !536 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 3 uses
  %i.i = mul i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_110NextAccess13resolveTypeIDEvE2id to i64), -4658895280553007687 ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.h, %i.l                       ; 4 uses
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = lshr i64 %i.n, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !148
  %i.r = and i32 %i.m, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, !prof !149

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.u = phi i64 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.01419.i.i = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %i.v = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %i.u
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.w = icmp eq ptr %.sroa.0.0.copyload.i.i, @_ZZN12_GLOBAL__N_110NextAccess13resolveTypeIDEvE2id
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %bb.c, !prof !61

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = add nuw i32 %.01419.i.i, 1
  %i.y = and i32 %i.x, %i.h                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !148
  %i.ad = and i32 %i.y, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, !prof !150

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %i.ag = phi i64 [ %i.al, %bb.d ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.01419.i.i.i.i = phi i32 [ %i.ak, %bb.d ], [ %i.m, %.lr.ph.i.i ]
  %i.ah = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %i.ag
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !27, !noalias !537
  %i.ai = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, @_ZZN12_GLOBAL__N_110NextAccess13resolveTypeIDEvE2id
  br i1 %i.ai, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit, label %bb.d, !prof !61

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = add nuw i32 %.01419.i.i.i.i, 1
  %i.ak = and i32 %i.aj, %i.h                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !148, !noalias !537
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !150

.loopexit.i.i.i:                                  ; preds = %bb.d
  %i.as = zext i32 %i.f to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.at = phi i64 [ %i.as, %.loopexit.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i ]
  %i.au = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !170, !noalias !538 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !171, !noalias !538 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !172, !noalias !538 ; 4 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.loopexit.i.i.i5, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.bc = add i32 %i.ba, -1                       ; 2 uses
  %i.bd = mul i64 %1, -4658895280553007687        ; 2 uses
  %i.be = lshr i64 %i.bd, 31
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bc, %i.bg                    ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 5
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !148, !noalias !539
  %i.bm = and i32 %i.bh, 31
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc i32 %i.bn to i1
  br i1 %i.bo, label %.lr.ph.i.i.i.i6, label %.loopexit.i.i.i5, !prof !149

.lr.ph.i.i.i.i6:                                  ; preds = %bb.e, %bb.f
  %i.bp = phi i64 [ %i.bu, %bb.f ], [ %i.bi, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.bt, %bb.f ], [ %i.bh, %bb.e ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bp ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !539
  %i.br = icmp eq i64 %1, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.br, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, label %bb.f, !prof !61

bb.f:                                             ; preds = %.lr.ph.i.i.i.i6
  %i.bs = add nuw i32 %.017.i.i.i.i, 1
  %i.bt = and i32 %i.bs, %i.bc                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 5
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !148, !noalias !539
  %i.by = and i32 %i.bt, 31
  %i.bz = lshr i32 %i.bx, %i.by
  %i.ca = trunc i32 %i.bz to i1
  br i1 %i.ca, label %.lr.ph.i.i.i.i6, label %.loopexit.i.i.i5, !prof !150

.loopexit.i.i.i5:                                 ; preds = %bb.f, %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.cb = zext i32 %i.ba to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.cb
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i6
  %.pre.i = zext i32 %i.ba to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i5
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.cb, %.loopexit.i.i.i5 ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.bq, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.cc, %.loopexit.i.i.i5 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.pre-phi.i
  %i.ce = icmp eq ptr %.lcssa.sink.i.i.i, %i.cd
  br i1 %i.ce, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit
end_hunk_0
