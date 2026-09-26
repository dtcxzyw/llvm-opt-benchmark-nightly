Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SimplifyCFG?download=true
inline.NumInlined: 398
inline.NumDeleted: 258
begin_hunk_0_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = insertelement <2 x ptr> poison, ptr %i.f, i64 0
  %i.z = shufflevector <2 x ptr> %i.y, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.backedge.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !54
  store ptr %i.aa, ptr %8, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %.sroa.0116.0154.i = load ptr, ptr %i.c, align 8, !tbaa !60 ; 3 uses
  %.not131155.i = icmp eq ptr %.sroa.0116.0154.i, %i.d
  br i1 %.not131155.i, label %.preheader138.i, label %.lr.ph.i

.preheader138.loopexit.i:                         ; preds = %.thread121.i
  %.sroa.0112.0159.pre.i = load ptr, ptr %i.c, align 8, !tbaa !60
  br label %.preheader138.i

.preheader138.i:                                  ; preds = %.preheader138.loopexit.i, %.backedge
  %.sroa.0112.0159.i = phi ptr [ %.sroa.0116.0154.i, %.backedge ], [ %.sroa.0112.0159.pre.i, %.preheader138.loopexit.i ] ; 2 uses
  %.065.lcssa.i = phi i1 [ false, %.backedge ], [ %.570.i, %.preheader138.loopexit.i ] ; 2 uses
  %.not132160.i = icmp eq ptr %.sroa.0112.0159.i, %i.d
  br i1 %.not132160.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

.lr.ph.i:                                         ; preds = %.backedge, %.thread121.i
  %.sroa.0116.0157.i = phi ptr [ %.sroa.0116.0.i, %.thread121.i ], [ %.sroa.0116.0154.i, %.backedge ] ; 3 uses
  %.065156.i = phi i1 [ %.570.i, %.thread121.i ], [ false, %.backedge ] ; 4 uses
  %i.ab = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0116.0157.i) #8 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !61
  %i.ae = icmp ne i8 %i.ad, 80
  %.not82135.i = icmp eq ptr %i.ab, null
  %.not82.i = or i1 %.not82135.i, %i.ae
  br i1 %.not82.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54
  store ptr %i.ak, ptr %7, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.ag) #8
  %i.al = call noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !61
  %i.an = add i8 %i.am, -109
  %i.ao = icmp ult i8 %i.an, 11                   ; 3 uses
  %spec.select.i.i.i = select i1 %i.ao, ptr %i.al, ptr null
  br i1 %i.ao, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ap = call noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 2 uses
  %i.aq = call noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %.split.loop.exit37.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.03042.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bd, %bb.f ] ; 2 uses
  %i.as = call { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ab, i32 noundef %.03042.i.i) #8 ; 3 uses
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 3 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !61
  %i.av = icmp eq i8 %i.au, 114
  br i1 %i.av, label %bb.e, label %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aw = load i8, ptr %i.al, align 8, !tbaa !61
  %i.ax = icmp eq i8 %i.aw, 114
  br i1 %i.ax, label %.split.i.i, label %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.az = load double, ptr %i.ay, align 8, !tbaa !107
  %i.ba = load double, ptr %i.ar, align 8, !tbaa !107
  %i.bb = fcmp oeq double %i.az, %i.ba
  br i1 %i.bb, label %.split.loop.exit.i.i, label %bb.f

_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bc = icmp eq ptr %i.at, %spec.select.i.i.i
  br i1 %i.bc, label %.split.loop.exit39.i.i, label %bb.f

bb.f:                                             ; preds = %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i, %.split.i.i
  %i.bd = add nuw i32 %.03042.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bd, %i.aq
  br i1 %exitcond.not.i.i, label %.split.loop.exit37.i.i, label %bb.d, !llvm.loop !82

.split.loop.exit.i.i:                             ; preds = %.split.i.i
  %i.be = extractvalue { ptr, ptr } %i.as, 1
  br label %.split.loop.exit37.i.i

.split.loop.exit39.i.i:                           ; preds = %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i
  %i.bf = extractvalue { ptr, ptr } %i.as, 1
  br label %.split.loop.exit37.i.i

.split.loop.exit37.i.i:                           ; preds = %bb.f, %.split.loop.exit39.i.i, %.split.loop.exit.i.i, %bb.c
  %.2.i.i = phi ptr [ %i.bf, %.split.loop.exit39.i.i ], [ %i.be, %.split.loop.exit.i.i ], [ %i.ap, %bb.c ], [ %i.ap, %bb.f ] ; 2 uses
  %i.bg = call noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 2 uses
  %.not45.i.i = icmp eq i32 %i.bg, -1
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph44.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %.split.loop.exit37.i.i
  %i.bh = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %.2.i.i) #8 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = select i1 %i.bi, ptr null, ptr %i.bj
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef %i.bk) #8
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8
  br label %bb.i

.lr.ph44.i.i:                                     ; preds = %.split.loop.exit37.i.i, %bb.h
  %.02943.i.i = phi i32 [ %i.bo, %bb.h ], [ 0, %.split.loop.exit37.i.i ] ; 3 uses
  %i.bl = call noundef ptr @_ZNK6hermes10SwitchInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ab, i32 noundef %.02943.i.i) #8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %.2.i.i
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph44.i.i
  %i.bn = call noundef zeroext i1 @_ZN6hermes27deleteIncomingBlockFromPhisEPNS_10BasicBlockES1_(ptr noundef %i.bl, ptr noundef nonnull %i.ag) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph44.i.i
  %i.bo = add nuw i32 %.02943.i.i, 1
  %exitcond48.not.i.i = icmp eq i32 %.02943.i.i, %i.bg
  br i1 %exitcond48.not.i.i, label %._crit_edge.i.i, label %.lr.ph44.i.i, !llvm.loop !83

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.bp = or i1 %.065156.i, %i.ao
  br label %.thread121.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bq = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0116.0157.i) #8 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !61
  %i.bt = icmp ne i8 %i.bs, 81
  %.not83136.i = icmp eq ptr %i.bq, null
  %.not83.i = or i1 %.not83136.i, %i.bt
  br i1 %.not83.i, label %.thread121.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bq, i32 noundef 1) #8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null                 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -16
  %i.bx = select i1 %i.bv, ptr null, ptr %i.bw    ; 3 uses
  %i.by = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bq, i32 noundef 2) #8 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null                 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -16
  %i.cb = select i1 %i.bz, ptr null, ptr %i.ca    ; 2 uses
  %i.cc = icmp eq ptr %i.bx, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZL33replaceCondBranchWithDirectBranchPN6hermes14CondBranchInstEPNS_10BasicBlockE(ptr noundef %i.bq, ptr noundef %i.bx)
  br label %.thread121.i

bb.m:                                             ; preds = %bb.k
  %i.cd = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bq, i32 noundef 0) #8
  %i.ce = call noundef ptr @_ZN6hermes13evalToBooleanERNS_9IRBuilderEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %i.cd) #8 ; 2 uses
  %.not84.i = icmp eq ptr %i.ce, null
  br i1 %.not84.i, label %.thread121.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !109, !range !110, !noundef !111
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  %.not85.i = select i1 %i.ch, i1 %i.bv, i1 %i.bz
  br i1 %.not85.i, label %.thread121.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %..i = select i1 %i.ch, ptr %i.bx, ptr %i.cb
  call fastcc void @_ZL33replaceCondBranchWithDirectBranchPN6hermes14CondBranchInstEPNS_10BasicBlockE(ptr noundef %i.bq, ptr noundef nonnull %..i)
  br label %.thread121.i

.thread121.i:                                     ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  %.570.i = phi i1 [ %i.bp, %bb.i ], [ %.065156.i, %bb.j ], [ true, %bb.l ], [ true, %bb.o ], [ %.065156.i, %bb.n ], [ %.065156.i, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0116.0157.i, i64 8
  %.sroa.0116.0.i = load ptr, ptr %i.ci, align 8, !tbaa !60 ; 2 uses
  %.not131.i = icmp eq ptr %.sroa.0116.0.i, %i.d
  br i1 %.not131.i, label %.preheader138.loopexit.i, label %.lr.ph.i

.lr.ph164.i:                                      ; preds = %.preheader138.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  %.sroa.0112.0162.i = phi ptr [ %.sroa.0112.0.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.sroa.0112.0159.i, %.preheader138.i ] ; 14 uses
  %.671161.i = phi i1 [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.065.lcssa.i, %.preheader138.i ] ; 10 uses
  %i.cj = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !61
  %i.cm = icmp ne i8 %i.cl, 77
  %.not133.i = icmp eq ptr %i.cj, null
  %.not.i = or i1 %.not133.i, %i.cm
  br i1 %.not.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph164.i
  %i.cn = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.cj, i32 noundef 0) #8 ; 6 uses
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -16 ; 2 uses
  %i.cq = select i1 %i.co, ptr null, ptr %i.cp    ; 4 uses
  %i.cr = icmp eq ptr %i.cq, %.sroa.0112.0162.i
  br i1 %i.cr, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr i8, ptr %i.cn, i64 48
  %.val.i = load ptr, ptr %i.cs, align 8, !tbaa !60
  %i.ct = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i8, ptr %i.ct, align 8, !tbaa !61
  switch i8 %.val.val.i, label %bb.r [
    i8 85, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
    i8 60, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
    i8 56, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  ]

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 16 ; 7 uses
  %i.cv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cu) #8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !112 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !113 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.idx.i.i = shl nuw nsw i64 %i.cz, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i.i
  %.not13.not.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not13.not.i.i, label %.loopexit.i, label %.lr.ph.i88.i

bb.s:                                             ; preds = %.lr.ph.i88.i
  %i.db = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.db, %i.da
  br i1 %.not.not.i.i, label %.loopexit.i, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %bb.r, %bb.s
  %.0914.i.i = phi ptr [ %i.db, %bb.s ], [ %i.cw, %bb.r ] ; 2 uses
  %i.dc = load ptr, ptr %.0914.i.i, align 8, !tbaa !115
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !61
  %i.df = icmp eq i8 %i.de, 33
  br i1 %i.df, label %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, label %bb.s

_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i: ; preds = %.lr.ph.i88.i
  %i.dg = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !60
  %.not.i90.i = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i90.i, label %bb.t, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.t:                                             ; preds = %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i
  %i.dj = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !61
  %.not125.i.i = icmp eq i8 %i.dl, 77
  br i1 %.not125.i.i, label %bb.u, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store <2 x ptr> %i.z, ptr %5, align 16, !tbaa !117
  store i32 8, ptr %i.h, align 16, !tbaa !119
  store i32 0, ptr %i.i, align 4, !tbaa !120
  store i32 0, ptr %i.j, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.k, ptr %6, align 8, !tbaa !112
  store i32 0, ptr %i.l, align 8, !tbaa !113
  store i32 8, ptr %i.m, align 4, !tbaa !122
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cu) #8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !112 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !113 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %.idx.i91.i = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx.i91.i
  %.not126246.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not126246.i.i, label %.critedge141.i.i, label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %bb.u, %.critedge139.i.i
  %.0121247.i.i = phi ptr [ %i.fx, %.critedge139.i.i ], [ %i.dn, %bb.u ] ; 2 uses
  %i.ds = load ptr, ptr %.0121247.i.i, align 8, !tbaa !115 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !61
  switch i8 %i.du, label %.thread217.i.i [
    i8 77, label %bb.v
    i8 81, label %bb.v
    i8 80, label %bb.v
    i8 82, label %bb.v
    i8 83, label %bb.v
    i8 33, label %.critedge139.i.i
  ]

bb.v:                                             ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 56 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !71 ; 3 uses
  %i.dx = load ptr, ptr %i.g, align 8, !tbaa !123 ; 6 uses
  %i.dy = load ptr, ptr %5, align 16, !tbaa !124  ; 5 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ea = load i32, ptr %i.i, align 4, !tbaa !120 ; 4 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.eb, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx.i.i.i.i.i
  %.not18.i.i.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not18.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %bb.x
  %.01219.i.i.i.i.i = phi ptr [ %i.ef, %bb.x ], [ %i.dy, %bb.w ] ; 3 uses
  %i.ed = load ptr, ptr %.01219.i.i.i.i.i, align 8, !tbaa !125
  %i.ee = icmp eq ptr %i.ed, %i.dw
  br i1 %i.ee, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.01219.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ef, %i.ec
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !84

._crit_edge.i.i.i.i.i:                            ; preds = %bb.x, %bb.w
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.eb
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.eh = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.dw) #8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !125
  %i.ej = icmp eq ptr %i.ei, %i.dw
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !123 ; 4 uses
  %.pre4.i.i.i.i = load ptr, ptr %5, align 16, !tbaa !124 ; 5 uses
  br i1 %i.ej, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i, label %bb.z

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i: ; preds = %bb.y
  %.pre5.i.i.i.i = load i32, ptr %i.i, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ek = icmp eq ptr %.pre.i.i.i.i, %.pre4.i.i.i.i
  %i.el = load i32, ptr %i.i, align 4             ; 2 uses
  %i.em = load i32, ptr %i.h, align 16
  %.v.v.i14.i.i.i.i.i = select i1 %i.ek, i32 %i.el, i32 %i.em
  %.v.i15.i.i.i.i.i = zext i32 %.v.v.i14.i.i.i.i.i to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.v.i15.i.i.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.z, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.eo = phi ptr [ %i.dy, %._crit_edge.i.i.i.i.i ], [ %.pre4.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre4.i.i.i.i, %bb.z ], [ %i.dy, %.lr.ph.i.i.i.i.i ]
  %i.ep = phi ptr [ %i.dx, %._crit_edge.i.i.i.i.i ], [ %.pre4.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre4.i.i.i.i, %bb.z ], [ %i.dx, %.lr.ph.i.i.i.i.i ]
  %i.eq = phi i32 [ %i.ea, %._crit_edge.i.i.i.i.i ], [ %.pre5.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %i.el, %bb.z ], [ %i.ea, %.lr.ph.i.i.i.i.i ]
  %i.er = phi ptr [ %i.dx, %._crit_edge.i.i.i.i.i ], [ %.pre.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre.i.i.i.i, %bb.z ], [ %i.dx, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %i.eg, %._crit_edge.i.i.i.i.i ], [ %i.eh, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %i.en, %bb.z ], [ %.01219.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ep
  %i.et = load i32, ptr %i.h, align 16
  %.v.v.i4.i.i.i.i.i = select i1 %i.es, i32 %i.eq, i32 %i.et
  %.v.i5.i.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i.i to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.v.i5.i.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i.i = icmp eq ptr %.2.i.i.i.i.i, %i.eu
  br i1 %.not3.i4.i.i6.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i.i:                         ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, %.critedge2.i7.i.i9.i.i.i.i.i
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %i.ew, %.critedge2.i7.i.i9.i.i.i.i.i ], [ %.2.i.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i ] ; 3 uses
  %i.ev = load ptr, ptr %.sroa.0.3.i.i.i.i.i, align 8, !tbaa !125
  %switch.i6.i.i8.i.i.i.i.i = icmp ugt ptr %i.ev, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i

.critedge2.i7.i.i9.i.i.i.i.i:                     ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i.i = icmp eq ptr %i.ew, %i.eu
  br i1 %.not.i8.i.i10.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i, !llvm.loop !85

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %.not232.i.i = icmp eq ptr %.sroa.0.3.i.i.i.i.i, %i.eu
  br i1 %.not232.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %bb.ab

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i
  %i.ex = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.ey = load i32, ptr %i.l, align 8, !tbaa !113 ; 2 uses
  %i.ez = load i32, ptr %i.m, align 4, !tbaa !122
  %.not.i.i.i = icmp ult i32 %i.ey, %i.ez
  br i1 %.not.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i, label %bb.aa, !prof !126

bb.aa:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 8) #8
  %.pre.i.i.i = load i32, ptr %i.l, align 8, !tbaa !113
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i: ; preds = %bb.aa, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i
  %i.fa = phi i32 [ %.pre.i.i.i, %bb.aa ], [ %i.ey, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i ]
  %i.fb = load ptr, ptr %6, align 8, !tbaa !112
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = ptrtoint ptr %i.ex to i64
  store i64 %i.fe, ptr %i.fd, align 1
  %i.ff = load i32, ptr %i.l, align 8, !tbaa !113
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.l, align 8, !tbaa !113
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !123, !noalias !127
  %.pre293.i.i = load ptr, ptr %5, align 16, !tbaa !124, !noalias !127
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i
  %i.fh = phi ptr [ %.pre293.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i ], [ %i.eo, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i ] ; 3 uses
  %i.fi = phi ptr [ %.pre.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i ], [ %i.er, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i ]
  %i.fj = load ptr, ptr %i.dv, align 8, !tbaa !71 ; 4 uses
  %i.fk = icmp eq ptr %i.fi, %i.fh
  br i1 %i.fk, label %bb.ac, label %bb.ag
end_hunk_0
begin_hunk_1_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a
._crit_edge265.i.i:                               ; preds = %.lr.ph264.i.i, %bb.ao
  %.0103.lcssa.i.i = phi ptr [ null, %bb.ao ], [ %spec.select145.i.i, %.lr.ph264.i.i ]
  %i.im = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ih) #8
  %.0101267.i.i = add i32 %i.im, -1               ; 2 uses
  %i.in = icmp sgt i32 %.0101267.i.i, -1
  br i1 %i.in, label %.lr.ph270.i.i, label %._crit_edge271.i.i

.lr.ph264.i.i:                                    ; preds = %bb.ao, %.lr.ph264.i.i
  %.0102262.i.i = phi i32 [ %i.is, %.lr.ph264.i.i ], [ 0, %bb.ao ] ; 2 uses
  %.0103261.i.i = phi ptr [ %spec.select145.i.i, %.lr.ph264.i.i ], [ null, %bb.ao ]
  %i.io = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ih, i32 noundef %.0102262.i.i) #8 ; 2 uses
  %i.ip = extractvalue { ptr, ptr } %i.io, 1
  %i.iq = icmp eq ptr %i.ip, %.sroa.0112.0162.i
  %i.ir = extractvalue { ptr, ptr } %i.io, 0
  %spec.select145.i.i = select i1 %i.iq, ptr %i.ir, ptr %.0103261.i.i ; 2 uses
  %i.is = add nuw i32 %.0102262.i.i, 1            ; 2 uses
  %exitcond.not.i95.i = icmp eq i32 %i.is, %i.il
  br i1 %exitcond.not.i95.i, label %._crit_edge265.i.i, label %.lr.ph264.i.i, !llvm.loop !91

._crit_edge271.i.i:                               ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, %._crit_edge265.i.i
  %i.it = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %i.iu = load i32, ptr %i.l, align 8, !tbaa !113 ; 2 uses
  %i.iv = zext i32 %i.iu to i64
  %.idx284.i.i = shl nuw nsw i64 %i.iv, 3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx284.i.i
  %.not135272.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not135272.i.i, label %.loopexit.i.i, label %.lr.ph275.i.i

.lr.ph270.i.i:                                    ; preds = %._crit_edge265.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i
  %.0101268.i.i = phi i32 [ %.0101.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i ], [ %.0101267.i.i, %._crit_edge265.i.i ] ; 4 uses
  %i.ix = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ih, i32 noundef %.0101268.i.i) #8
  %i.iy = extractvalue { ptr, ptr } %i.ix, 1      ; 4 uses
  %i.iz = icmp eq ptr %i.iy, %.sroa.0112.0162.i
  br i1 %i.iz, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph270.i.i
  %i.ja = load ptr, ptr %i.g, align 8, !tbaa !123 ; 6 uses
  %i.jb = load ptr, ptr %5, align 16, !tbaa !124  ; 3 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.jd = load i32, ptr %i.i, align 4, !tbaa !120 ; 4 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %.idx.i.i.i195.i.i = shl nuw nsw i64 %i.je, 3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.idx.i.i.i195.i.i
  %.not18.i.i.i196.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not18.i.i.i196.i.i, label %._crit_edge.i.i.i200.i.i, label %.lr.ph.i.i.i197.i.i

.lr.ph.i.i.i197.i.i:                              ; preds = %bb.aq, %bb.ar
  %.01219.i.i.i198.i.i = phi ptr [ %i.ji, %bb.ar ], [ %i.jb, %bb.aq ] ; 3 uses
  %i.jg = load ptr, ptr %.01219.i.i.i198.i.i, align 8, !tbaa !125
  %i.jh = icmp eq ptr %i.jg, %i.iy
  br i1 %i.jh, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i197.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.01219.i.i.i198.i.i, i64 8 ; 2 uses
  %.not.i.i.i199.i.i = icmp eq ptr %i.ji, %i.jf
  br i1 %.not.i.i.i199.i.i, label %._crit_edge.i.i.i200.i.i, label %.lr.ph.i.i.i197.i.i, !llvm.loop !84

._crit_edge.i.i.i200.i.i:                         ; preds = %bb.ar, %bb.aq
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.je
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i

bb.as:                                            ; preds = %bb.ap
  %i.jk = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.iy) #8 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !125
  %i.jm = icmp eq ptr %i.jl, %i.iy
  %.pre.i.i175.i.i = load ptr, ptr %i.g, align 8, !tbaa !123 ; 4 uses
  %.pre4.i.i176.i.i = load ptr, ptr %5, align 16, !tbaa !124 ; 3 uses
  br i1 %i.jm, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i, label %bb.at

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i: ; preds = %bb.as
  %.pre5.i.i194.i.i = load i32, ptr %i.i, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i

bb.at:                                            ; preds = %bb.as
  %i.jn = icmp eq ptr %.pre.i.i175.i.i, %.pre4.i.i176.i.i
  %i.jo = load i32, ptr %i.i, align 4             ; 2 uses
  %i.jp = load i32, ptr %i.h, align 16
  %.v.v.i14.i.i.i177.i.i = select i1 %i.jn, i32 %i.jo, i32 %i.jp
  %.v.i15.i.i.i178.i.i = zext i32 %.v.v.i14.i.i.i177.i.i to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i175.i.i, i64 %.v.i15.i.i.i178.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i: ; preds = %.lr.ph.i.i.i197.i.i, %bb.at, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i, %._crit_edge.i.i.i200.i.i
  %i.jr = phi ptr [ %i.ja, %._crit_edge.i.i.i200.i.i ], [ %.pre4.i.i176.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %.pre4.i.i176.i.i, %bb.at ], [ %i.ja, %.lr.ph.i.i.i197.i.i ]
  %i.js = phi i32 [ %i.jd, %._crit_edge.i.i.i200.i.i ], [ %.pre5.i.i194.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %i.jo, %bb.at ], [ %i.jd, %.lr.ph.i.i.i197.i.i ]
  %i.jt = phi ptr [ %i.ja, %._crit_edge.i.i.i200.i.i ], [ %.pre.i.i175.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %.pre.i.i175.i.i, %bb.at ], [ %i.ja, %.lr.ph.i.i.i197.i.i ] ; 2 uses
  %.2.i.i.i180.i.i = phi ptr [ %i.jj, %._crit_edge.i.i.i200.i.i ], [ %i.jk, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %i.jq, %bb.at ], [ %.01219.i.i.i198.i.i, %.lr.ph.i.i.i197.i.i ] ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.jr
  %i.jv = load i32, ptr %i.h, align 16
  %.v.v.i4.i.i.i181.i.i = select i1 %i.ju, i32 %i.js, i32 %i.jv
  %.v.i5.i.i.i182.i.i = zext i32 %.v.v.i4.i.i.i181.i.i to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.v.i5.i.i.i182.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i183.i.i = icmp eq ptr %.2.i.i.i180.i.i, %i.jw
  br i1 %.not3.i4.i.i6.i.i.i183.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i

.lr.ph.i5.i.i7.i.i.i184.i.i:                      ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i, %.critedge2.i7.i.i9.i.i.i190.i.i
  %.sroa.0.3.i.i.i185.i.i = phi ptr [ %i.jy, %.critedge2.i7.i.i9.i.i.i190.i.i ], [ %.2.i.i.i180.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i ] ; 3 uses
  %i.jx = load ptr, ptr %.sroa.0.3.i.i.i185.i.i, align 8, !tbaa !125
  %switch.i6.i.i8.i.i.i186.i.i = icmp ugt ptr %i.jx, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i186.i.i, label %.critedge2.i7.i.i9.i.i.i190.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i

.critedge2.i7.i.i9.i.i.i190.i.i:                  ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i185.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i191.i.i = icmp eq ptr %i.jy, %i.jw
  br i1 %.not.i8.i.i10.i.i.i191.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i, !llvm.loop !85

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %.not236.i.i = icmp eq ptr %.sroa.0.3.i.i.i185.i.i, %i.jw
  br i1 %.not236.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %.lr.ph270.i.i
  call void @_ZN6hermes7PhiInst11removeEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ih, i32 noundef %.0101268.i.i) #8
  br label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i190.i.i, %bb.au, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i
  %.0101.i.i = add nsw i32 %.0101268.i.i, -1
  %i.jz = icmp sgt i32 %.0101268.i.i, 0
  br i1 %i.jz, label %.lr.ph270.i.i, label %._crit_edge271.i.i, !llvm.loop !92

.lr.ph275.i.i:                                    ; preds = %._crit_edge271.i.i, %.lr.ph275.i.i
  %.0100273.i.i = phi ptr [ %i.kb, %.lr.ph275.i.i ], [ %i.it, %._crit_edge271.i.i ] ; 2 uses
  %i.ka = load ptr, ptr %.0100273.i.i, align 8, !tbaa !128
  call void @_ZN6hermes7PhiInst8addEntryEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.ih, ptr noundef %.0103.lcssa.i.i, ptr noundef %i.ka) #8
  %i.kb = getelementptr inbounds nuw i8, ptr %.0100273.i.i, i64 8 ; 2 uses
  %.not135.i.i = icmp eq ptr %i.kb, %i.iw
  br i1 %.not135.i.i, label %.loopexit.i.i, label %.lr.ph275.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph275.i.i, %._crit_edge271.i.i, %.lr.ph278.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.0105277.i.i, i64 8 ; 2 uses
  %.not133.i.i = icmp eq ptr %i.kc, %i.if
  br i1 %.not133.i.i, label %._crit_edge279.i.i, label %.lr.ph278.i.i

.thread217.i.i:                                   ; preds = %.lr.ph.i92.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i, %._crit_edge279.i.i, %.critedge141.i.i
  %.11.i.i = phi i1 [ true, %._crit_edge279.i.i ], [ false, %.critedge141.i.i ], [ false, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i ], [ false, %.lr.ph.i92.i ]
  %i.kd = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.k
  br i1 %i.ke, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.thread217.i.i
  call void @free(ptr noundef %i.kd) #8
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i: ; preds = %bb.av, %.thread217.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.kf = load ptr, ptr %i.g, align 8, !tbaa !123 ; 2 uses
  %i.kg = load ptr, ptr %5, align 16, !tbaa !124
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i
  call void @free(ptr noundef %i.kf) #8
  br label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i: ; preds = %bb.aw, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %.11.i.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

.loopexit.i:                                      ; preds = %bb.s, %bb.r
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 64
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !60
  %i.kk = icmp eq ptr %i.kj, %i.cj
  br i1 %i.kk, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %.loopexit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !112 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 32
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !113 ; 2 uses
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %.idx.i.i.i96.i = shl nuw nsw i64 %i.kp, 3
  %i.kq = getelementptr i8, ptr %i.km, i64 %.idx.i.i.i96.i ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i97.i

.lr.ph.i.i.i.i97.i:                               ; preds = %bb.ax, %bb.ay
  %.sroa.0.0.i.i.i = phi ptr [ %i.kw, %bb.ay ], [ %i.km, %bb.ax ] ; 3 uses
  %i.kr = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !61
  %i.ku = add i8 %i.kt, -90
  %i.kv = icmp ult i8 %i.ku, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.kr, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.kv
  br i1 %.not1.i.i.i.i.i, label %bb.ay, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i97.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i98.i = icmp eq ptr %i.kw, %i.kq
  br i1 %.not.i.i.i.i98.i, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i97.i, !llvm.loop !93

_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i97.i, %bb.ax
  %.sroa.0.1.i.i.i = phi ptr [ %i.km, %bb.ax ], [ %i.kq, %bb.ay ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i97.i ]
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kp
  %i.ky = icmp eq ptr %.sroa.0.1.i.i.i, %i.kx
  br i1 %i.ky, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %spec.select.i = select i1 %i.co, ptr null, ptr %9
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef %spec.select.i) #8
  br label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.ba:                                            ; preds = %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, %.loopexit.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !112 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !113 ; 2 uses
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %.idx.i.i.i99.i = shl nuw nsw i64 %i.ld, 3
  %i.le = getelementptr i8, ptr %i.la, i64 %.idx.i.i.i99.i ; 4 uses
  %.not3.i.i.i.i100.i = icmp eq i32 %i.lc, 0
  br i1 %.not3.i.i.i.i100.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i101.i

.lr.ph.i.i.i.i101.i:                              ; preds = %bb.ba, %bb.bb
  %.sroa.0.0.i.i102.i = phi ptr [ %i.lk, %bb.bb ], [ %i.la, %bb.ba ] ; 3 uses
  %i.lf = load ptr, ptr %.sroa.0.0.i.i102.i, align 8, !tbaa !115 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !61
  %i.li = add i8 %i.lh, -90
  %i.lj = icmp ult i8 %i.li, -15
  %.not12.i.i.i.i103.i = icmp eq ptr %i.lf, null
  %.not1.i.i.i.i104.i = or i1 %.not12.i.i.i.i103.i, %i.lj
  br i1 %.not1.i.i.i.i104.i, label %bb.bb, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i101.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i102.i, i64 8 ; 2 uses
  %.not.i.i.i.i107.i = icmp eq ptr %i.lk, %i.le
  br i1 %.not.i.i.i.i107.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i101.i, !llvm.loop !93

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i101.i, %bb.ba
  %.sroa.0.1.i.i105.i = phi ptr [ %i.la, %bb.ba ], [ %i.le, %bb.bb ], [ %.sroa.0.0.i.i102.i, %.lr.ph.i.i.i.i101.i ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.ld ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0.1.i.i105.i, %i.ll
  br i1 %.not4.i.i.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %.06.i.i.i = phi i32 [ %i.lt, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ %.sroa.0.1.i.i105.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i.i = icmp eq ptr %i.lm, %i.le
  br i1 %.not3.i.i.i6.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.bc
  %.sroa.02.1.i.i.i = phi ptr [ %i.ls, %bb.bc ], [ %i.lm, %.lr.ph.i.i.i ] ; 3 uses
  %i.ln = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !115 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !61
  %i.lq = add i8 %i.lp, -90
  %i.lr = icmp ult i8 %i.lq, -15
  %.not12.i.i.i8.i.i = icmp eq ptr %i.ln, null
  %.not1.i.i.i9.i.i = or i1 %.not12.i.i.i8.i.i, %i.lr
  br i1 %.not1.i.i.i9.i.i, label %bb.bc, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i7.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i10.i.i = icmp eq ptr %i.ls, %i.le
  br i1 %.not.i.i.i10.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i, !llvm.loop !93

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.lm, %.lr.ph.i.i.i ], [ %i.ls, %bb.bc ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i7.i.i ] ; 2 uses
  %i.lt = add i32 %.06.i.i.i, 1
  %.not.i.i106.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.ll
  br i1 %.not.i.i106.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !94

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %i.lu = icmp eq i32 %.06.i.i.i, 0
  br i1 %i.lu, label %.preheader.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

.preheader.i:                                     ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i
  %i.lv = getelementptr i8, ptr %i.cq, i64 64     ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  %i.lx = load ptr, ptr %i.lv, align 8, !tbaa !60 ; 2 uses
  %.not134167.i = icmp eq ptr %i.lx, %i.lw
  br i1 %.not134167.i, label %._crit_edge.i, label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %.preheader.i, %.lr.ph168.i
  %i.ly = phi ptr [ %i.lz, %.lr.ph168.i ], [ %i.lx, %.preheader.i ]
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.ly, ptr noundef nonnull %i.cj) #8
  %i.lz = load ptr, ptr %i.lv, align 8, !tbaa !60 ; 2 uses
  %.not134.i = icmp eq ptr %i.lz, %i.lw
  br i1 %.not134.i, label %._crit_edge.i, label %.lr.ph168.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph168.i, %.preheader.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull %i.cu) #8
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cj) #8
  call void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cp) #8
  br label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i: ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %bb.az, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %bb.t, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, %bb.q, %bb.q, %bb.q, %bb.p, %.lr.ph164.i
  %.9.ph.i = phi i1 [ %.671161.i, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i ], [ %.671161.i, %.lr.ph164.i ], [ %.671161.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i ], [ true, %bb.az ], [ %.671161.i, %bb.q ], [ %.671161.i, %bb.p ], [ %.671161.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i ], [ %.671161.i, %bb.t ], [ %.671161.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ], [ %.671161.i, %bb.q ], [ %.671161.i, %bb.q ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 8
  %.sroa.0112.0.i = load ptr, ptr %i.ma, align 8, !tbaa !60 ; 2 uses
  %.not132.i = icmp eq ptr %.sroa.0112.0.i, %i.d
  br i1 %.not132.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.backedge.backedge

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, %.preheader138.i
  %.10.i = phi i1 [ %.065.lcssa.i, %.preheader138.i ], [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br i1 %.10.i, label %.backedge.backedge, label %bb.bd

.backedge.backedge:                               ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit
  br label %.backedge, !llvm.loop !96

bb.bd:                                            ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.n, ptr %3, align 8, !tbaa !124
  store ptr %i.n, ptr %i.o, align 8, !tbaa !123
  store i32 16, ptr %i.p, align 8, !tbaa !119
  store i32 0, ptr %i.q, align 4, !tbaa !120
  store i32 0, ptr %i.r, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.s, ptr %4, align 8, !tbaa !112
  store i32 32, ptr %i.u, align 4, !tbaa !122
  %i.mb = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.mc = ptrtoint ptr %i.mb to i64
  store i64 %i.mc, ptr %i.s, align 8
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.loopexit.i5, %bb.bd
  %i.md = phi i32 [ %.pr.i, %.loopexit.i5 ], [ 1, %bb.bd ] ; 2 uses
  %i.me = load ptr, ptr %4, align 8, !tbaa !112
  %i.mf = zext i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mf
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !128 ; 6 uses
  %i.mj = add i32 %i.md, -1
  store i32 %i.mj, ptr %i.t, align 8, !tbaa !113
  %i.mk = load ptr, ptr %i.o, align 8, !tbaa !123, !noalias !129
  %i.ml = load ptr, ptr %3, align 8, !tbaa !124, !noalias !129 ; 3 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %bb.be, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.be:                                            ; preds = %.lr.ph55.i
  %i.mn = load i32, ptr %i.q, align 4, !tbaa !120, !noalias !129 ; 4 uses
  %i.mo = zext i32 %i.mn to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.mo, 3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx.i.i.i ; 2 uses
  %.not63.i.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not63.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.be, %bb.bf
  %.065.i.i.i = phi ptr [ %spec.select.i.i.i18, %bb.bf ], [ null, %bb.be ]
  %.04964.i.i.i = phi ptr [ %i.ms, %bb.bf ], [ %i.ml, %bb.be ] ; 3 uses
  %i.mq = load ptr, ptr %.04964.i.i.i, align 8, !tbaa !125, !noalias !129 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.mq, %i.mi
  br i1 %.not27.i.i.i, label %.loopexitthread-pre-split.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i17
  %i.mr = icmp eq ptr %i.mq, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i18 = select i1 %i.mr, ptr %.04964.i.i.i, ptr %.065.i.i.i ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.04964.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ms, %i.mp
  br i1 %.not.i.i.i19, label %.critedge.i.i.i, label %.lr.ph.i.i.i17, !llvm.loop !88

.critedge.i.i.i:                                  ; preds = %bb.bf
  %.not28.i.i.i = icmp eq ptr %spec.select.i.i.i18, null
  br i1 %.not28.i.i.i, label %.critedge.thread.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.critedge.i.i.i
  store ptr %i.mi, ptr %spec.select.i.i.i18, align 8, !tbaa !125, !noalias !129
  %i.mt = load i32, ptr %i.r, align 8, !tbaa !121, !noalias !129
  %i.mu = add i32 %i.mt, -1
  store i32 %i.mu, ptr %i.r, align 8, !tbaa !121, !noalias !129
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.be
  %i.mv = load i32, ptr %i.p, align 8, !tbaa !119, !noalias !129
  %i.mw = icmp ult i32 %i.mn, %i.mv
  br i1 %i.mw, label %bb.bh, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.bh:                                            ; preds = %.critedge.thread.i.i.i
  %i.mx = add nuw i32 %i.mn, 1
  store i32 %i.mx, ptr %i.q, align 4, !tbaa !120, !noalias !129
  store ptr %i.mi, ptr %i.mp, align 8, !tbaa !125, !noalias !129
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i: ; preds = %.lr.ph55.i, %.critedge.thread.i.i.i
  %i.my = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.mi) #8, !noalias !129
  %i.mz = extractvalue { ptr, i8 } %i.my, 1
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, label %.loopexitthread-pre-split.i, !llvm.loop !99

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread: ; preds = %bb.bg, %bb.bh, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %i.nb = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mi) #8, !noalias !130
  %i.nc = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mi) #8, !noalias !130 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i15, label %.loopexitthread-pre-split.i, label %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i

_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i:  ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread
  %i.nd = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.nc) #8, !noalias !130 ; 2 uses
  %.not4652.i = icmp eq i32 %i.nd, 0
  br i1 %.not4652.i, label %.loopexitthread-pre-split.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i
  %.sroa.4.053.i = phi i32 [ %i.no, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %i.ne = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.nb, i32 noundef %.sroa.4.053.i) #8
end_hunk_1
