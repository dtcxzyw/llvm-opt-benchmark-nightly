inline.NumInlined: 3765
inline.NumDeleted: 902
begin_hunk_0_@_ZN2v88internal8compiler20BytecodeGraphBuilder27VisitSwitchOnGeneratorStateEv:bb.a
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.ca = load i32, ptr %i.bz, align 8
  store i32 %i.ca, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 92
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 92
  %i.cd = load i32, ptr %i.cc, align 4
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.ce) #20 ; 0 uses
  %i.cg = load ptr, ptr %i.w, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #20
  %i.ck = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.cj, i32 noundef 0, ptr noundef null, i1 noundef zeroext false), !inline_history !24 ; 0 uses
  %i.cl = load ptr, ptr %i.w, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 808
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder28GeneratorRestoreContinuationEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %.0.i, ptr %i.b, align 8
  %i.cp = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.co, i32 noundef 1, ptr noundef nonnull %i.b, i1 noundef zeroext false), !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cq = load ptr, ptr %i.e, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.w, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 808
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder29GeneratorRestoreContextNoCellEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %.0.i, ptr %i.a, align 8
  %i.cw = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.cv, i32 noundef 1, ptr noundef nonnull %i.a, i1 noundef zeroext false), !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cx = load ptr, ptr %i.e, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @_ZN2v88internal8compiler20BytecodeGraphBuilder27BuildSwitchOnGeneratorStateERKNS0_10ZoneVectorINS1_16ResumeJumpTargetEEEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i1 noundef zeroext false)
  store ptr %i.av, ptr %i.e, align 8
  %i.da = load ptr, ptr %i.w, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20
  %i.de = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.dd, i32 noundef 0, ptr noundef null, i1 noundef zeroext false), !inline_history !24 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20BytecodeGraphBuilder21VisitSuspendGeneratorEv(ptr noundef nonnull align 8 dereferenceable(856) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::TNode.88", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.d = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0) #20 ; 4 uses
  switch i32 %i.d, label %bb.e [
    i32 -6, label %bb.b
    i32 -5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 688 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %i.f, i32 noundef -1, ptr noundef nonnull @.str.3), !inline_history !59
  store ptr %i.i, ptr %i.g, align 8
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

bb.e:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.d, 0
  %i.k = sub nsw i32 -9, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add nsw i32 %i.m, %i.d
  %.0.i.i = select i1 %i.j, i32 %i.k, i32 %i.n
  %i.o = sext i32 %.0.i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.in.i = phi ptr [ %i.e, %bb.b ], [ %i.r, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8
  %i.s = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 1) #20
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10) #21
  unreachable

bb.g:                                             ; preds = %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit
  %i.u = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 2) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %1, align 8
  %i.w = call noundef zeroext i16 @_ZNK2v88internal8compiler16BytecodeArrayRef15parameter_countEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 2 uses
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = add nsw i32 %i.x, -1                     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator27GetUnsignedImmediateOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 3) #20
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = call noundef ptr @_ZN2v88internal8compiler7JSGraph17ConstantMaybeHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %i.aa, double noundef %i.ac) #20
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = add i64 %i.ak, %i.an
  %i.ap = sub i64 %i.aj, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, 63
  %i.as = sitofp i32 %i.ar to double
  %i.at = call noundef ptr @_ZN2v88internal8compiler7JSGraph14ConstantNoHoleEd(ptr noundef nonnull align 8 dereferenceable(1144) %i.ae, double noundef %i.as) #20
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.av = load ptr, ptr %i.af, align 8
  %i.aw = load ptr, ptr %i.ah, align 8
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = load i32, ptr %i.al, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = add i64 %i.ay, %i.ba
  %i.bc = sub i64 %i.ax, %i.bb
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK2v88internal8compiler16BytecodeAnalysis16GetInLivenessForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.au, i32 noundef %i.bd) #20 ; 2 uses
  %i.bf = add i32 %i.u, 2
  %i.bg = add i32 %i.bf, %i.x                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = icmp sgt i32 %i.bg, -1
  br i1 %i.bj, label %bb.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #21
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3                ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = icmp ugt i64 %i.bl, %i.bq
  br i1 %i.br, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !15

bb.j:                                             ; preds = %bb.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 noundef %i.bl) #20
  %.pre.i.i = load i64, ptr %i.bo, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.i, %bb.j
  %i.bs = phi i64 [ %.pre.i.i, %bb.j ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 9 uses
  %i.bu = add i64 %i.bs, %i.bl
  store i64 %i.bu, ptr %i.bo, align 8
  store ptr %.0.i, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.ad, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.at, ptr %i.bw, align 8
  %i.bx = icmp ugt i16 %i.w, 1
  br i1 %i.bx, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %wide.trip.count = zext i32 %i.y to i64
  br label %.lr.ph

.preheader:                                       ; preds = %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %.0.lcssa = phi i32 [ 0, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit ], [ %i.y, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43 ] ; 3 uses
  %i.by = icmp sgt i32 %i.u, 0
  br i1 %i.by, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %.preheader
  %i.bz = icmp eq ptr %i.be, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  br i1 %i.bz, label %.lr.ph65.split.us, label %.lr.ph65.split

.lr.ph65.split.us:                                ; preds = %.lr.ph65, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a
  %indvars.iv85 = phi i32 [ %indvars.iv.next86, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a ], [ %i.y, %.lr.ph65 ] ; 3 uses
  %.164.us = phi i32 [ %10, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a ], [ %.0.lcssa, %.lr.ph65 ] ; 3 uses
  %.03563.us = phi i32 [ %11, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a ], [ 0, %.lr.ph65 ] ; 3 uses
  %i.cb = add nsw i32 %.03563.us, %i.y
  %i.cc = icmp slt i32 %.164.us, %i.cb
  %i.cd = sext i32 %.164.us to i64                ; 2 uses
  br i1 %i.cc, label %.lr.ph61.us.preheader, label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a

.lr.ph61.us.preheader:                            ; preds = %.lr.ph65.split.us
  %wide.trip.count87 = sext i32 %indvars.iv85 to i64 ; 2 uses
  br label %.lr.ph61.us

_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a: ; preds = %.lr.ph61.us, %.lr.ph65.split.us
  %.pre-phi.a = phi i64 [ %i.cd, %.lr.ph65.split.us ], [ %wide.trip.count87, %.lr.ph61.us ]
  %.2.lcssa.us = phi i32 [ %.164.us, %.lr.ph65.split.us ], [ %indvars.iv85, %.lr.ph61.us ]
  %3 = load ptr, ptr %i.a, align 8                ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %5 = load i32, ptr %4, align 8
  %6 = add nsw i32 %5, %.03563.us
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ce = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %7
  %.0.i46.us.a = load ptr, ptr %9, align 8
  %10 = add nsw i32 %.2.lcssa.us, 1               ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.bt, i64 %.pre-phi.a
  %i.cg = getelementptr i8, ptr %i.cf, i64 24
  store ptr %.0.i46.us.a, ptr %i.cg, align 8
  %11 = add nuw nsw i32 %.03563.us, 1             ; 2 uses
  %indvars.iv.next86 = add i32 %indvars.iv85, 1
  %exitcond89.not.a = icmp eq i32 %11, %i.u
  br i1 %exitcond89.not.a, label %._crit_edge, label %.lr.ph65.split.us, !llvm.loop !108

.lr.ph61.us:                                      ; preds = %.lr.ph61.us.preheader, %.lr.ph61.us
  %indvars.iv82 = phi i64 [ %i.cd, %.lr.ph61.us.preheader ], [ %indvars.iv.next83, %.lr.ph61.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ch = load ptr, ptr %i.z, align 8
  call void @_ZN2v88internal8compiler7JSGraph20OptimizedOutConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.88") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1144) %i.ch) #20
  %i.ci = load ptr, ptr %2, align 8
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %i.bt, i64 %indvars.iv82
  %i.ck = getelementptr i8, ptr %i.cj, i64 24
  store ptr %i.ci, ptr %i.ck, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %exitcond88.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count87
  br i1 %exitcond88.not, label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a, label %.lr.ph61.us, !llvm.loop !109

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43 ] ; 3 uses
  %indvars73 = trunc i64 %indvars.iv to i32
  %i.cl = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cm = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator12GetParameterEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %indvars73) #20 ; 4 uses
  switch i32 %i.cm, label %bb.n [
    i32 -6, label %bb.k
    i32 -5, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43

bb.l:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 688 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not.i39 = icmp eq ptr %i.cq, null
  br i1 %.not.i39, label %bb.m, label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43

bb.m:                                             ; preds = %bb.l
  %i.cr = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %i.co, i32 noundef -1, ptr noundef nonnull @.str.3), !inline_history !59
  store ptr %i.cr, ptr %i.cp, align 8
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43

bb.n:                                             ; preds = %.lr.ph
  %i.cs = icmp slt i32 %i.cm, 0
  %i.ct = sub nsw i32 -9, %i.cm
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = add nsw i32 %i.cv, %i.cm
  %.0.i.i42 = select i1 %i.cs, i32 %i.ct, i32 %i.cw
  %i.cx = sext i32 %.0.i.i42 to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43

_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit43: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.in.i40 = phi ptr [ %i.cn, %bb.k ], [ %i.da, %bb.n ], [ %i.cp, %bb.l ], [ %i.cp, %bb.m ]
  %.0.i41 = load ptr, ptr %.0.in.i40, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %.0.i41, ptr %i.dc, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.p, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a, %.preheader
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %10, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48.us.a ], [ %.3, %bb.p ] ; 2 uses
  %i.dd = load ptr, ptr %i.z, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 808
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder14GeneratorStoreEi(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i32 noundef %.1.lcssa) #20
  %i.dh = add nsw i32 %.1.lcssa, 3
  %i.di = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.dg, i32 noundef %i.dh, ptr noundef nonnull %i.bt, i1 noundef zeroext false) ; 0 uses
  %i.dj = load ptr, ptr %i.af, align 8
  %i.dk = load ptr, ptr %i.ah, align 8
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = load i32, ptr %i.al, align 4
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dm, %i.do
  %i.dq = sub i64 %i.dl, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = call noundef ptr @_ZNK2v88internal8compiler16BytecodeAnalysis16GetInLivenessForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.au, i32 noundef %i.dr) #20
  call void @_ZN2v88internal8compiler20BytecodeGraphBuilder11BuildReturnEPKNS1_21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.ds)
  ret void

.lr.ph65.split:                                   ; preds = %.lr.ph65, %bb.p
  %indvars.iv77 = phi i32 [ %indvars.iv.next78, %bb.p ], [ %i.y, %.lr.ph65 ] ; 3 uses
  %.164 = phi i32 [ %.3, %bb.p ], [ %.0.lcssa, %.lr.ph65 ] ; 4 uses
  %.03563 = phi i32 [ %i.dt, %bb.p ], [ 0, %.lr.ph65 ] ; 3 uses
  %i.dt = add nuw nsw i32 %.03563, 1              ; 4 uses
  %i.du = load ptr, ptr %i.ca, align 8
  %i.dv = lshr i32 %i.dt, 6
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = and i32 %i.dt, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dy, %i.eb
  %.not = icmp eq i64 %i.ec, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph65.split
  %i.ed = add nsw i32 %.03563, %i.y
  %i.ee = icmp slt i32 %.164, %i.ed
  %i.ef = sext i32 %.164 to i64                   ; 2 uses
  br i1 %i.ee, label %.lr.ph61.preheader, label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48

.lr.ph61.preheader:                               ; preds = %bb.o
  %wide.trip.count79 = sext i32 %indvars.iv77 to i64 ; 2 uses
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %indvars.iv74 = phi i64 [ %i.ef, %.lr.ph61.preheader ], [ %indvars.iv.next75, %.lr.ph61 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.eg = load ptr, ptr %i.z, align 8
  call void @_ZN2v88internal8compiler7JSGraph20OptimizedOutConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.88") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1144) %i.eg) #20
  %i.eh = load ptr, ptr %2, align 8
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.bt, i64 %indvars.iv74
  %i.ej = getelementptr i8, ptr %i.ei, i64 24
  store ptr %i.eh, ptr %i.ej, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %exitcond80.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count79
  br i1 %exitcond80.not, label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48, label %.lr.ph61, !llvm.loop !109

_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48: ; preds = %.lr.ph61, %bb.o
  %.pre-phi91 = phi i64 [ %i.ef, %bb.o ], [ %wide.trip.count79, %.lr.ph61 ]
  %.2.lcssa = phi i32 [ %.164, %bb.o ], [ %indvars.iv77, %.lr.ph61 ]
  %i.ek = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.em = load i32, ptr %i.el, align 8
  %i.en = add nsw i32 %i.em, %.03563
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  %.0.i46 = load ptr, ptr %i.er, align 8
  %i.es = add nsw i32 %.2.lcssa, 1
  %i.et = getelementptr [8 x i8], ptr %i.bt, i64 %.pre-phi91
  %i.eu = getelementptr i8, ptr %i.et, i64 24
  store ptr %.0.i46, ptr %i.eu, align 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph65.split, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48
  %.3 = phi i32 [ %i.es, %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit48 ], [ %.164, %.lr.ph65.split ] ; 2 uses
  %indvars.iv.next78 = add i32 %indvars.iv77, 1
  %exitcond81.not = icmp eq i32 %i.dt, %i.u
  br i1 %exitcond81.not, label %._crit_edge, label %.lr.ph65.split, !llvm.loop !108
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20BytecodeGraphBuilder20VisitResumeGeneratorEv(ptr noundef nonnull align 8 dereferenceable(856) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 8 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %1 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.f = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 0) #20 ; 4 uses
  switch i32 %i.f, label %bb.e [
    i32 -6, label %bb.b
    i32 -5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 688 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %i.h, i32 noundef -1, ptr noundef nonnull @.str.3), !inline_history !59
  store ptr %i.k, ptr %i.i, align 8
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

bb.e:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.f, 0
  %i.m = sub nsw i32 -9, %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add nsw i32 %i.o, %i.f
  %.0.i.i = select i1 %i.l, i32 %i.m, i32 %i.p
  %i.q = sext i32 %.0.i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  br label %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit

_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ %i.t, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %i.u = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 1) #20
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10) #21
  unreachable

bb.g:                                             ; preds = %_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment14LookupRegisterENS0_11interpreter8RegisterE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = add i64 %i.ac, %i.af
  %i.ah = sub i64 %i.ab, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = tail call noundef ptr @_ZNK2v88internal8compiler16BytecodeAnalysis17GetOutLivenessForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.w, i32 noundef %i.ai) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ak, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %1, align 8
  %i.al = call noundef zeroext i16 @_ZNK2v88internal8compiler16BytecodeArrayRef15parameter_countEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.am = zext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ao = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.as = icmp eq ptr %i.aj, null
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.018.us = phi i32 [ %i.bj, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 808
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = add nsw i32 %i.an, %.018.us
  %i.az = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder24GeneratorRestoreRegisterEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i32 noundef %i.ay) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %.0.i, ptr %i.a, align 8
  %i.ba = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.az, i32 noundef 1, ptr noundef nonnull %i.a, i1 noundef zeroext false), !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bb = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = add nsw i32 %i.bd, %.018.us
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.ba, ptr %i.bi, align 8
  %i.bj = add nuw nsw i32 %.018.us, 1             ; 2 uses
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp slt i32 %i.bj, %i.bm
  br i1 %i.bn, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.i, %.lr.ph.split.us, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 808
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder31GeneratorRestoreInputOrDebugPosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %.0.i, ptr %i.b, align 8
  %i.bt = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.bs, i32 noundef 1, ptr noundef nonnull %i.b, i1 noundef zeroext false), !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.bu = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 92
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.bt, ptr %i.ca, align 8
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.cb = phi ptr [ %i.da, %bb.i ], [ %i.ao, %.lr.ph ]
  %.018 = phi i32 [ %i.cc, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %i.cc = add nuw nsw i32 %.018, 1                ; 4 uses
  %i.cd = load ptr, ptr %i.at, align 8
  %i.ce = lshr i32 %i.cc, 6
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i32 %i.cc, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ch, %i.ck
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.cm = load ptr, ptr %i.au, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 808
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = add nsw i32 %i.an, %.018
  %i.cq = call noundef ptr @_ZN2v88internal8compiler17JSOperatorBuilder24GeneratorRestoreRegisterEi(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i32 noundef %i.cp) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %.0.i, ptr %i.a, align 8
  %i.cr = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.cq, i32 noundef 1, ptr noundef nonnull %i.a, i1 noundef zeroext false), !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = add nsw i32 %i.cu, %.018
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.cr, ptr %i.cz, align 8
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split, %bb.h
  %i.da = phi ptr [ %i.cb, %.lr.ph.split ], [ %.pre, %bb.h ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = icmp slt i32 %i.cc, %i.dc
  br i1 %i.dd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !111
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20BytecodeGraphBuilder16VisitGetIteratorEv(ptr noundef nonnull align 8 dereferenceable(856) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %1 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %2 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %4 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::JSTypeHintLowering::LoweringResult", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !33, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal8compiler20BytecodeGraphBuilder22PrepareEagerCheckpointEv.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
