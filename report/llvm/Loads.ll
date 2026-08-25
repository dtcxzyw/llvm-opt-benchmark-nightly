Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Loads?download=true
begin_hunk_0_@_ZN4llvm33isDereferenceableAndAlignedInLoopEPKNS_4SCEVENS_5AlignES2_PNS_4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE:bb.a
  %.not105 = icmp eq i64 %i.u, 0
  br i1 %.not105, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(12) %i.x)
  %i.y = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %8) #15
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ac = icmp ugt i32 %i.ab, 64
  br i1 %i.ac, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #16
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %i.z, label %bb.ah, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %.not106 = icmp eq ptr %7, null
  br i1 %.not106, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call noundef ptr @_ZN4llvm15ScalarEvolution42getPredicatedSymbolicMaxBackedgeTakenCountEPKNS_4LoopERNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef nonnull align 8 dereferenceable(1152) %4, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  %i.ag = call noundef ptr @_ZN4llvm15ScalarEvolution31getPredicatedBackedgeTakenCountEPKNS_4LoopERNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef nonnull align 8 dereferenceable(1152) %4, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = call noundef ptr @_ZN4llvm15ScalarEvolution21getBackedgeTakenCountEPKNS_4LoopENS0_13ExitCountKindE(ptr noundef nonnull align 8 dereferenceable(1152) %4, ptr noundef %3, i32 noundef 2) #14
  %i.ai = call noundef ptr @_ZN4llvm15ScalarEvolution21getBackedgeTakenCountEPKNS_4LoopENS0_13ExitCountKindE(ptr noundef nonnull align 8 dereferenceable(1152) %4, ptr noundef %3, i32 noundef 0) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi ptr [ %i.af, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ak = phi ptr [ %i.ag, %bb.j ], [ %i.ai, %bb.k ]
  %i.al = call noundef zeroext i1 @_ZN4llvm19SCEVCouldNotCompute7classofEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #14
  br i1 %i.al, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68
  %i.aq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ap) #14
  %i.ar = call { ptr, ptr } @_ZN4llvm23getStartAndEndForAccessEPKNS_4LoopEPKNS_4SCEVES5_S5_S5_PNS_15ScalarEvolutionEPNS_8DenseMapISt4pairIS5_S5_ESA_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEPNS_13DominatorTreeEPNS_15AssumptionCacheERSt8optionalINS6_10LoopGuardsEE(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.ak, ptr noundef nonnull %i.aj, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(128) %9) #14 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 6 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 2 uses
  %i.au = call noundef zeroext i1 @_ZN4llvm19SCEVCouldNotCompute7classofEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(40) %i.as) #14
  br i1 %i.au, label %bb.ag, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call noundef zeroext i1 @_ZN4llvm19SCEVCouldNotCompute7classofEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(40) %i.at) #14
  br i1 %i.av, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = and i64 %i.aw, -7
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = and i64 %i.ay, -7
  %i.ba = call noundef ptr @_ZN4llvm15ScalarEvolution12getMinusSCEVENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %4, i64 %i.ax, i64 %i.az, i32 noundef 0, i32 noundef 0) #14 ; 4 uses
  %i.bb = call noundef zeroext i1 @_ZN4llvm19SCEVCouldNotCompute7classofEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #14
  br i1 %i.bb, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load i8, ptr %i.am, align 8, !tbaa !92, !range !16, !noundef !17
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !83
  call void @_ZN4llvm15ScalarEvolution10LoopGuards7collectEPKNS_4LoopERS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ScalarEvolution::LoopGuards") align 8 %10, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(1152) %4) #14
  %i.bf = call noundef nonnull align 8 dereferenceable(120) ptr @_ZNSt8optionalIN4llvm15ScalarEvolution10LoopGuardsEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(120) %10) ; 0 uses
  call void @_ZN4llvm15ScalarEvolution10LoopGuardsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.bg = call noundef ptr @_ZN4llvm15ScalarEvolution15applyLoopGuardsEPKNS_4SCEVERKNS0_10LoopGuardsE(ptr noundef nonnull align 8 dereferenceable(1152) %4, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(120) %9) #14
  call void @_ZN4llvm15ScalarEvolution19getUnsignedRangeMaxEPKNS_4SCEVE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1152) %4, ptr noundef %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !76
  switch i16 %i.bj, label %_ZN4llvm5APIntD2Ev.exit122 [
    i16 16, label %_ZN4llvm5APIntaSEOS0_.exit
    i16 5, label %bb.s
  ]

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %bb.r
  %i.bk = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !94
  %i.bm = load i64, ptr %11, align 8
  store i64 %i.bm, ptr %12, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !47 ; 2 uses
  store i32 %i.bo, ptr %i.bh, align 8, !tbaa !47
  store i32 0, ptr %i.bn, align 8, !tbaa !47
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !88
  %.not109 = icmp eq i64 %i.bq, 2
  br i1 %.not109, label %bb.t, label %_ZN4llvm5APIntD2Ev.exit122

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !99 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bs, align 8
  %i.bt = and i64 %.sroa.0.0.copyload.i, -8
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !76
  %i.bx = icmp eq i16 %i.bw, 0
  %spec.select.i.i.i116 = select i1 %i.bx, ptr %i.bu, ptr null ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.0.0.copyload.i117 = load i64, ptr %i.by, align 8
  %i.bz = and i64 %.sroa.0.0.copyload.i117, -8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !76
  %i.cd = icmp eq i16 %i.cc, 16
  %i.ce = icmp ne ptr %spec.select.i.i.i116, null
  %or.cond = and i1 %i.ce, %i.cd
  br i1 %or.cond, label %bb.u, label %_ZN4llvm5APIntD2Ev.exit122

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i116, i64 40 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !89 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !47 ; 2 uses
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  %i.cl = and i32 %i.ck, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = icmp ult i32 %i.cj, 65
  %i.cp = load ptr, ptr %i.ch, align 8
  %i.cq = lshr i32 %i.ck, 6
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cr
  %.in.i.i.i = select i1 %i.co, ptr %i.ch, ptr %i.cs
  %i.ct = load i64, ptr %.in.i.i.i, align 8, !tbaa !49
  %i.cu = and i64 %i.cn, %i.ct
  %.not155 = icmp eq i64 %i.cu, 0
  br i1 %.not155, label %bb.v, label %_ZN4llvm5APIntD2Ev.exit122

bb.v:                                             ; preds = %bb.u
  %i.cv = call noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i64 noundef %i.t) #14
  %.not110 = icmp eq i64 %i.cv, 0
  br i1 %.not110, label %_ZN4llvm5APIntD2Ev.exit121, label %_ZN4llvm5APIntD2Ev.exit122

_ZN4llvm5APIntD2Ev.exit121:                       ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !89
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  call void @_ZNK4llvm5APInt7uadd_ovERKS0_Rb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %13, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #14
  %i.cy = load i64, ptr %13, align 8
  store i64 %i.cy, ptr %12, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !47 ; 3 uses
  store i32 %i.da, ptr %i.bh, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.db = load i8, ptr %i.a, align 1, !tbaa !30, !range !16, !noundef !17
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.w, label %.thread147

.thread147:                                       ; preds = %_ZN4llvm5APIntD2Ev.exit121
  %i.dd = ptrtoint ptr %i.ba to i64
  %i.de = and i64 %i.dd, -7
  %i.df = ptrtoint ptr %spec.select.i.i.i116 to i64
  %i.dg = call noundef ptr @_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %4, i64 %i.de, i64 %i.df, i32 noundef 0, i32 noundef 0)
  %i.dh = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.x

bb.w:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

bb.x:                                             ; preds = %.thread147, %_ZN4llvm5APIntaSEOS0_.exit
  %.pre157 = phi i32 [ %i.bo, %_ZN4llvm5APIntaSEOS0_.exit ], [ %i.da, %.thread147 ]
  %.493 = phi ptr [ %i.ba, %_ZN4llvm5APIntaSEOS0_.exit ], [ %i.dg, %.thread147 ]
  %.488 = phi ptr [ %i.bl, %_ZN4llvm5APIntaSEOS0_.exit ], [ %i.di, %.thread147 ] ; 2 uses
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !68
  %i.dl = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dk) #14
  %.fca.0.extract = extractvalue { ptr, i64 } %i.dl, 0
  %i.dm = getelementptr inbounds i8, ptr %.fca.0.extract, i64 -24 ; 2 uses
  %i.dn = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE18getLoopPredecessorEv(ptr noundef nonnull align 8 dereferenceable(144) %3) #14 ; 2 uses
  %.not111 = icmp eq ptr %i.dn, null
  br i1 %.not111, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !100
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -24 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !24
  %i.ds = and i8 %i.dr, -2
  %spec.select.i = icmp eq i8 %i.ds, 32
  %spec.select = select i1 %spec.select.i, ptr %i.dq, ptr %i.dm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.094 = phi ptr [ %i.dm, %bb.x ], [ %spec.select, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store ptr %i.aq, ptr %14, align 8, !tbaa !70
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.dt, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %5, ptr %i.du, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %6, ptr %i.dv, align 8, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %.094, ptr %i.dw, align 8, !tbaa !72
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.dy, align 8, !tbaa !73
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 57
  store i8 1, ptr %i.dz, align 1, !tbaa !74
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 58
  store i8 0, ptr %i.ea, align 2, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr %4, ptr %15, align 8, !tbaa !103
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.493, ptr %i.eb, align 8, !tbaa !105
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %9, ptr %i.ec, align 8, !tbaa !108
  %i.ed = ptrtoint ptr %15 to i64
  %i.ee = call fastcc noundef zeroext i1 @_ZL47isDereferenceableAndAlignedPointerViaAssumptionPKN4llvm5ValueENS_5AlignERKNS_13SimplifyQueryEbNS_12function_refIFbRKNS_17RetainedKnowledgeEEEE(ptr noundef %.488, i8 %1, ptr noundef nonnull align 8 dereferenceable(59) %14, i1 noundef zeroext false, ptr nonnull @"_ZN4llvm12function_refIFbRKNS_17RetainedKnowledgeEEE11callback_fnIZNS_33isDereferenceableAndAlignedInLoopEPKNS_4SCEVENS_5AlignES9_PNS_4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEEE3$_0EEblS3_", i64 %i.ed)
  br i1 %i.ee, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = call noundef zeroext i1 @_ZN4llvm34isDereferenceableAndAlignedPointerEPKNS_5ValueENS_5AlignERKNS_5APIntERKNS_13SimplifyQueryEb(ptr noundef %.488, i8 %1, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(59) %14, i1 noundef zeroext false)
  %.pre.pre = load i32, ptr %i.bh, align 8, !tbaa !47
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre = phi i32 [ %.pre157, %bb.z ], [ %.pre.pre, %bb.aa ]
  %i.eg = phi i1 [ true, %bb.z ], [ %i.ef, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.ab
  %i.eh = phi i32 [ %.pre, %bb.ab ], [ %i.da, %bb.w ]
  %.5 = phi i1 [ %i.eg, %bb.ab ], [ false, %bb.w ] ; 3 uses
  %i.ei = icmp ugt i32 %i.eh, 64
  br i1 %i.ei, label %bb.ac, label %_ZN4llvm5APIntD2Ev.exit122

bb.ac:                                            ; preds = %.critedge
  %i.ej = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN4llvm5APIntD2Ev.exit122, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.ej) #16
  br label %_ZN4llvm5APIntD2Ev.exit122

_ZN4llvm5APIntD2Ev.exit122:                       ; preds = %bb.v, %bb.s, %bb.t, %bb.u, %bb.r, %.critedge, %bb.ac, %bb.ad
  %.5166 = phi i1 [ %.5, %bb.ad ], [ %.5, %.critedge ], [ %.5, %bb.ac ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !47
  %i.en = icmp ugt i32 %i.em, 64
  br i1 %i.en, label %bb.ae, label %_ZN4llvm5APIntD2Ev.exit123

bb.ae:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit122
  %i.eo = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZN4llvm5APIntD2Ev.exit123, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #16
  br label %_ZN4llvm5APIntD2Ev.exit123

_ZN4llvm5APIntD2Ev.exit123:                       ; preds = %_ZN4llvm5APIntD2Ev.exit122, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit123, %bb.o, %bb.m, %bb.n
  %.7 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ %.5166, %_ZN4llvm5APIntD2Ev.exit123 ], [ false, %bb.o ]
  call void @_ZNSt14_Optional_baseIN4llvm15ScalarEvolution10LoopGuardsELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.l, %bb.d, %_ZN4llvm5APIntD2Ev.exit, %bb.e, %bb.a, %bb.b, %bb.c
  %.11 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZN4llvm5APIntD2Ev.exit ], [ false, %bb.e ], [ %.7, %bb.ag ], [ false, %bb.l ]
  ret i1 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm14SCEVAddRecExpr17getStepRecurrenceERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(1152) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.203", align 8 ; 10 uses
  %3 = alloca %"class.llvm::SmallVector.198", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = add i64 %i.b, -1                         ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.l, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 3, ptr %i.m, align 4, !tbaa !112
  %.idx.i = shl nuw nsw i64 %i.i, 3
  %i.n = icmp ugt i64 %i.i, 3
  br i1 %i.n, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.thread.i: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.k, i64 noundef %i.i, i64 noundef 8) #14
  %.pre8.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !111
  %i.o = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %3, align 8, !tbaa !109
  br label %bb.d

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i: ; preds = %bb.c
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EEC2IS5_vEENS_8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.thread.i
  %i.p = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.thread.i ], [ %i.k, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.o, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 8 %i.j, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !111
  %.pre4 = load ptr, ptr %3, align 8, !tbaa !109
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EEC2IS5_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EEC2IS5_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i, %bb.d
  %i.r = phi ptr [ %i.k, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i ], [ %.pre4, %bb.d ]
  %i.s = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.d ]
  %i.t = trunc i64 %i.i to i32
  %i.u = add i32 %i.s, %i.t                       ; 5 uses
  store i32 %i.u, ptr %i.l, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.x = zext i32 %i.u to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.z, align 8, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.aa, align 4, !tbaa !112
  %.idx.i2 = shl nuw nsw i64 %i.x, 3
  %i.ab = icmp ugt i32 %i.u, 4
  br i1 %i.ab, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EEC2IS5_vEENS_8ArrayRefIT_EE.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.y, i64 noundef %i.x, i64 noundef 8) #14
  %.pre8.pre.i.i.i = load i32, ptr %i.z, align 8, !tbaa !111
  %i.ac = zext i32 %.pre8.pre.i.i.i to i64
  %.pre5 = load ptr, ptr %2, align 8, !tbaa !109
  br label %bb.e

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EEC2IS5_vEENS_8ArrayRefIT_EE.exit
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EEC2IPKS5_vEET_SA_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.thread.i
  %i.ad = phi ptr [ %.pre5, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.thread.i ], [ %i.y, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.i ]
  %.pre8.i.i7.i = phi i64 [ %i.ac, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.pre8.i.i7.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 8 %i.r, i64 %.idx.i2, i1 false)
  %.pre.i.i.i = load i32, ptr %i.z, align 8, !tbaa !111
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EEC2IPKS5_vEET_SA_.exit.i

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EEC2IPKS5_vEET_SA_.exit.i: ; preds = %bb.e, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.i
  %i.af = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.e ]
  %i.ag = add i32 %i.af, %i.u
  store i32 %i.ag, ptr %i.z, align 8, !tbaa !111
  %i.ah = call noundef ptr @_ZN4llvm15ScalarEvolution13getAddRecExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEEPKNS_4LoopENS_15SCEVNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w, i32 noundef 0) #14
  %i.ai = load ptr, ptr %2, align 8, !tbaa !109   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.y
  br i1 %i.aj, label %_ZN4llvm15ScalarEvolution13getAddRecExprERKNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEEPKNS_4LoopENS_15SCEVNoWrapFlagsE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EEC2IPKS5_vEET_SA_.exit.i
  call void @free(ptr noundef %i.ai) #14
  br label %_ZN4llvm15ScalarEvolution13getAddRecExprERKNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEEPKNS_4LoopENS_15SCEVNoWrapFlagsE.exit

_ZN4llvm15ScalarEvolution13getAddRecExprERKNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEEPKNS_4LoopENS_15SCEVNoWrapFlagsE.exit: ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EEC2IPKS5_vEET_SA_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = and i64 %i.ak, -7
  %i.am = load ptr, ptr %3, align 8, !tbaa !109   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.k
  br i1 %i.an, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15ScalarEvolution13getAddRecExprERKNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEEPKNS_4LoopENS_15SCEVNoWrapFlagsE.exit
  call void @free(ptr noundef %i.am) #14
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit: ; preds = %_ZN4llvm15ScalarEvolution13getAddRecExprERKNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEEPKNS_4LoopENS_15SCEVNoWrapFlagsE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit, %bb.b
  %.sroa.03.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %i.al, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit ]
  ret i64 %.sroa.03.0
}

declare noundef i64 @_ZNK4llvm5APInt4uremEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 5 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
end_hunk_0
