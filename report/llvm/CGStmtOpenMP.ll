Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGStmtOpenMP?download=true
inline.NumInlined: 16070
inline.NumDeleted: 7198
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5clang7CodeGen15CodeGenFunction15EmitOMPLoopBodyERKNS_16OMPLoopDirectiveENS1_8JumpDestE:bb.a
  %prol.iter145.cmp.not = icmp eq i32 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %.lr.ph.i.i.i67.prol.loopexit, label %.lr.ph.i.i.i67.prol, !llvm.loop !3001

.lr.ph.i.i.i67.prol.loopexit:                     ; preds = %.lr.ph.i.i.i67.prol, %.lr.ph.i.i.i67.preheader
  %.047.i.i.i68.unr = phi ptr [ %.045.i.i.i64, %.lr.ph.i.i.i67.preheader ], [ %.04.i.i.i70.prol, %.lr.ph.i.i.i67.prol ]
  %.06.i.i.i69.unr = phi i32 [ %i.ln, %.lr.ph.i.i.i67.preheader ], [ %i.me, %.lr.ph.i.i.i67.prol ]
  %.04.i.i.i70.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i67.preheader ], [ %.04.i.i.i70.prol, %.lr.ph.i.i.i67.prol ]
  %i.mf = icmp ult i32 %i.ly, 7
  br i1 %i.mf, label %_ZN5clang11OMPChildren24getInnermostCapturedStmtEN4llvm8ArrayRefINS1_3omp9DirectiveEEE.exit.i.i65, label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %.lr.ph.i.i.i67.prol.loopexit, %.lr.ph.i.i.i67
  %.047.i.i.i68 = phi ptr [ %.04.i.i.i70.7, %.lr.ph.i.i.i67 ], [ %.047.i.i.i68.unr, %.lr.ph.i.i.i67.prol.loopexit ] ; 2 uses
  %.06.i.i.i69 = phi i32 [ %i.nu, %.lr.ph.i.i.i67 ], [ %.06.i.i.i69.unr, %.lr.ph.i.i.i67.prol.loopexit ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.047.i.i.i68, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %.047.i.i.i68, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !704
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mj
  %.04.i.i.i70 = load ptr, ptr %i.mk, align 8, !tbaa !775 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.04.i.i.i70, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %.04.i.i.i70, i64 8
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !704
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mo
  %.04.i.i.i70.1 = load ptr, ptr %i.mp, align 8, !tbaa !775 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.1, i64 32
  %i.mr = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.1, i64 8
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !704
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mt
  %.04.i.i.i70.2 = load ptr, ptr %i.mu, align 8, !tbaa !775 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.2, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.2, i64 8
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !704
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.my
  %.04.i.i.i70.3 = load ptr, ptr %i.mz, align 8, !tbaa !775 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.3, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.3, i64 8
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !704
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.nd
  %.04.i.i.i70.4 = load ptr, ptr %i.ne, align 8, !tbaa !775 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.4, i64 32
  %i.ng = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.4, i64 8
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !704
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.ni
  %.04.i.i.i70.5 = load ptr, ptr %i.nj, align 8, !tbaa !775 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.5, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.5, i64 8
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !704
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nn
  %.04.i.i.i70.6 = load ptr, ptr %i.no, align 8, !tbaa !775 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.6, i64 32
  %i.nq = getelementptr inbounds nuw i8, ptr %.04.i.i.i70.6, i64 8
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !704
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.ns
  %i.nu = add i32 %.06.i.i.i69, -8                ; 2 uses
  %.04.i.i.i70.7 = load ptr, ptr %i.nt, align 8, !tbaa !775 ; 2 uses
  %i.nv = icmp ugt i32 %i.nu, 1
  br i1 %i.nv, label %.lr.ph.i.i.i67, label %_ZN5clang11OMPChildren24getInnermostCapturedStmtEN4llvm8ArrayRefINS1_3omp9DirectiveEEE.exit.i.i65, !llvm.loop !36

_ZN5clang11OMPChildren24getInnermostCapturedStmtEN4llvm8ArrayRefINS1_3omp9DirectiveEEE.exit.i.i65: ; preds = %.lr.ph.i.i.i67.prol.loopexit, %.lr.ph.i.i.i67, %.critedge
  %.04.lcssa.i.i.i66 = phi ptr [ %.045.i.i.i64, %.critedge ], [ %.04.i.i.i70.lcssa.unr, %.lr.ph.i.i.i67.prol.loopexit ], [ %.04.i.i.i70.7, %.lr.ph.i.i.i67 ] ; 2 uses
  %i.nw = load ptr, ptr %3, align 8, !tbaa !717   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.li
  br i1 %i.nx, label %_ZNK5clang22OMPExecutableDirective24getInnermostCapturedStmtEv.exit71, label %bb.af

bb.af:                                            ; preds = %_ZN5clang11OMPChildren24getInnermostCapturedStmtEN4llvm8ArrayRefINS1_3omp9DirectiveEEE.exit.i.i65
  call void @free(ptr noundef %i.nw) #21
  br label %_ZNK5clang22OMPExecutableDirective24getInnermostCapturedStmtEv.exit71

_ZNK5clang22OMPExecutableDirective24getInnermostCapturedStmtEv.exit71: ; preds = %_ZN5clang11OMPChildren24getInnermostCapturedStmtEN4llvm8ArrayRefINS1_3omp9DirectiveEEE.exit.i.i65, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ny = getelementptr inbounds nuw i8, ptr %.04.lcssa.i.i.i66, i64 32
  %i.nz = getelementptr inbounds nuw i8, ptr %.04.lcssa.i.i.i66, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !704
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.ob
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !775
  %i.oe = call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %i.od, i1 noundef zeroext false) #21 ; 2 uses
  %i.of = call noundef ptr @_ZN5clang21OMPLoopBasedDirective22tryToFindNextInnerLoopEPNS_4StmtEb(ptr noundef %i.oe, i1 noundef zeroext true) #21
  %i.og = load i32, ptr %i.aj, align 8, !tbaa !1403
  call fastcc void @_ZL8emitBodyRN5clang7CodeGen15CodeGenFunctionEPKNS_4StmtES5_ii(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.oe, ptr noundef %i.of, i32 noundef %i.og, i32 noundef 0)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK5clang22OMPExecutableDirective24getInnermostCapturedStmtEv.exit71, %bb.ae
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.ct, i1 noundef zeroext false) #21
  %i.oh = load i32, ptr %i.db, align 8, !tbaa !715
  %i.oi = add i32 %i.oh, -1
  store i32 %i.oi, ptr %i.db, align 8, !tbaa !715
  call void @_ZN5clang7CodeGen15CodeGenFunction15OMPPrivateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  store i8 %i.u, ptr %i.t, align 1, !tbaa !797
  call void @_ZN5clang7CodeGen15CodeGenFunction24CleanupDeactivationScope15ForceDeactivateEv(ptr noundef nonnull align 8 dereferenceable(17) %i.b)
  %i.oj = load ptr, ptr %i.i, align 8, !tbaa !799, !nonnull !336, !align !337
  %.sroa.01.0.copyload.i.i = load i64, ptr %6, align 8, !tbaa !727
  %i.ok = load i64, ptr %i.s, align 8, !tbaa !796
  call void @_ZN5clang7CodeGen15CodeGenFunction16PopCleanupBlocksENS0_12EHScopeStack15stable_iteratorEmSt16initializer_listIPPN4llvm5ValueEE(ptr noundef nonnull align 8 dereferenceable(6288) %i.oj, i64 %.sroa.01.0.copyload.i.i, i64 noundef %i.ok, ptr null, i64 0) #21
  store i8 0, ptr %i.h, align 1, !tbaa !793
  %i.ol = load ptr, ptr %i.i, align 8, !tbaa !799, !nonnull !336, !align !337
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 3016
  %i.on = load i64, ptr %i.a, align 8, !tbaa !727
  store i64 %i.on, ptr %i.om, align 8, !tbaa !727
  %.pre123 = load i8, ptr %i.g, align 8, !tbaa !791, !range !742
  %i.oo = trunc nuw i8 %.pre123 to i1
  br i1 %i.oo, label %_ZN5clang7CodeGen15CodeGenFunction16RunCleanupsScopeD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5clang7CodeGen15CodeGenFunction24CleanupDeactivationScope15ForceDeactivateEv(ptr noundef nonnull align 8 dereferenceable(17) %i.b)
  br label %_ZN5clang7CodeGen15CodeGenFunction16RunCleanupsScopeD2Ev.exit

_ZN5clang7CodeGen15CodeGenFunction16RunCleanupsScopeD2Ev.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

declare noundef zeroext i1 @_ZN5clang27isOpenMPDistributeDirectiveEN4llvm3omp9DirectiveE(i32 noundef) local_unnamed_addr #3

declare void @_ZN5clang7CodeGen15CodeGenFunction20EmitBranchOnBoolExprEPKNS_4ExprEPN4llvm10BasicBlockES7_mNS_4Stmt10LikelihoodES4_PKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5clang7CodeGen15CodeGenFunction15getProfileCountEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef) local_unnamed_addr #3

declare void @_ZN5clang7CodeGen15CodeGenFunction10EmitBranchEPN4llvm10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL8emitBodyRN5clang7CodeGen15CodeGenFunctionEPKNS_4StmtES5_ii(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.clang::PrettyStackTraceLoc", align 8 ; 8 uses
  %6 = alloca %"class.clang::CodeGen::CodeGenFunction::LexicalScope", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #21 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8
  %.fr4.i.i.i103 = freeze i16 %i.b                ; 2 uses
  %i.c = and i16 %.fr4.i.i.i103, 511
  %.not81 = icmp eq i16 %i.c, 258
  br i1 %.not81, label %tailrecurse._crit_edge, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.a
  %i.d = icmp eq ptr %i.a, %2
  br i1 %i.d, label %.lr.ph106, label %._crit_edge107

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr73.lcssa = phi ptr [ %1, %bb.a ], [ %.0, %tailrecurse ]
  %.tr74.lcssa = phi ptr [ %2, %bb.a ], [ %i.an, %tailrecurse ]
  %.tr76.lcssa = phi i32 [ %4, %bb.a ], [ %i.al, %tailrecurse ]
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.ao, %tailrecurse ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !335, !nonnull !336, !align !337
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !691, !nonnull !336, !align !337
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2592
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3008, !nonnull !336, !align !337
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !tbaa !99
  call void @_ZN4llvm21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang19PrettyStackTraceLocE, i64 16), ptr %5, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !3009
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.0.0.copyload.i, ptr %i.m, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @.str.56, ptr %i.n, align 8, !tbaa !3013
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.o = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr73.lcssa) #22
  call void @_ZN5clang7CodeGen15CodeGenFunction12LexicalScopeC1ERS1_NS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(6288) %0, i64 %i.o) #21
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !692  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.not5688 = icmp eq i32 %i.r, 0
  br i1 %.not5688, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %tailrecurse._crit_edge
  call void @_ZN5clang7CodeGen15CodeGenFunction12LexicalScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN4llvm21PrettyStackTraceEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.f

.lr.ph:                                           ; preds = %tailrecurse._crit_edge, %.lr.ph
  %.04689 = phi ptr [ %i.v, %.lr.ph ], [ %i.p, %tailrecurse._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %.04689, align 8, !tbaa !775
  call fastcc void @_ZL8emitBodyRN5clang7CodeGen15CodeGenFunctionEPKNS_4StmtES5_ii(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.u, ptr noundef %.tr74.lcssa, i32 noundef %3, i32 noundef %.tr76.lcssa)
  %i.v = getelementptr inbounds nuw i8, ptr %.04689, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.v, %i.t
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %tailrecurse
  %i.w = icmp eq ptr %i.ao, %i.an
  br i1 %i.w, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.critedge.preheader, %.critedge
  %.fr4.i.i.i105 = phi i16 [ %.fr4.i.i.i, %.critedge ], [ %.fr4.i.i.i103, %.critedge.preheader ] ; 3 uses
  %.tr7684104 = phi i32 [ %i.al, %.critedge ], [ %4, %.critedge.preheader ]
  %i.x = phi ptr [ %i.ao, %.critedge ], [ %i.a, %.critedge.preheader ] ; 4 uses
  %i.y = and i16 %.fr4.i.i.i105, 511              ; 3 uses
  %i.z = and i16 %.fr4.i.i.i105, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.z, 226
  %.not90 = icmp eq i16 %i.y, 238
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread, label %switch.early.test.i.i.i

.thread:                                          ; preds = %.lr.ph106
  %7 = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %select.unfold

switch.early.test.i.i.i:                          ; preds = %.lr.ph106
  switch i16 %i.y, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveEKNS1_4StmtEEEDcPT0_.exit [
    i16 238, label %select.unfold.a
    i16 228, label %select.unfold.a
  ]

select.unfold.a:                                  ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i
  %.not74 = icmp eq i16 %i.y, 228
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.1.i.i.i.i = select i1 %.not90, ptr %i.ab, ptr undef
  %spec.select = select i1 %.not74, ptr %i.aa, ptr %.1.i.i.i.i
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.a, %.thread
  %.0.i.i.i.ph = phi ptr [ %7, %.thread ], [ %spec.select, %select.unfold.a ]
  %8 = tail call noundef ptr @_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i.ph) #21 ; 2 uses
  %.pre = load i16, ptr %8, align 8
  br label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveEKNS1_4StmtEEEDcPT0_.exit

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveEKNS1_4StmtEEEDcPT0_.exit: ; preds = %switch.early.test.i.i.i, %select.unfold
  %i.ac = phi i16 [ %.pre, %select.unfold ], [ %.fr4.i.i.i105, %switch.early.test.i.i.i ] ; 2 uses
  %.047 = phi ptr [ %8, %select.unfold ], [ %i.x, %switch.early.test.i.i.i ] ; 2 uses
  %i.ad = and i16 %i.ac, 511
  %.not70 = icmp eq i16 %i.ad, 244
  br i1 %.not70, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveEKNS1_4StmtEEEDcPT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.047, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !775 ; 2 uses
  %.pre94 = load i16, ptr %i.af, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveEKNS1_4StmtEEEDcPT0_.exit
  %i.ag = phi i16 [ %.pre94, %bb.b ], [ %i.ac, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveEKNS1_4StmtEEEDcPT0_.exit ]
  %.148 = phi ptr [ %i.af, %bb.b ], [ %.047, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveEKNS1_4StmtEEEDcPT0_.exit ] ; 2 uses
  %i.ah = and i16 %i.ag, 511
  %.not72 = icmp eq i16 %i.ah, 252
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.148, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !775
  tail call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.aj, ptr null, i64 0) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 64, %bb.d ], [ 40, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.148, i64 %.sink
  %.0 = load ptr, ptr %i.ak, align 8, !tbaa !775  ; 5 uses
  %i.al = add nsw i32 %.tr7684104, 1              ; 3 uses
  %i.am = icmp slt i32 %i.al, %3
  br i1 %i.am, label %tailrecurse, label %._crit_edge107

tailrecurse:                                      ; preds = %bb.e
  %i.an = tail call noundef ptr @_ZN5clang21OMPLoopBasedDirective22tryToFindNextInnerLoopEPNS_4StmtEb(ptr noundef %.0, i1 noundef zeroext true) #21 ; 2 uses
  %i.ao = tail call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %.0, i1 noundef zeroext false) #21 ; 4 uses
  %i.ap = load i16, ptr %i.ao, align 8
  %.fr4.i.i.i = freeze i16 %i.ap                  ; 2 uses
  %i.aq = and i16 %.fr4.i.i.i, 511
  %.not = icmp eq i16 %i.aq, 258
  br i1 %.not, label %tailrecurse._crit_edge, label %.critedge

._crit_edge107:                                   ; preds = %.critedge, %bb.e, %.critedge.preheader
  %.1 = phi ptr [ %1, %.critedge.preheader ], [ %.0, %bb.e ], [ %.0, %.critedge ]
  tail call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %.1, ptr null, i64 0) #21
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %._crit_edge107
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen15CodeGenFunction33EmitOMPCollapsedCanonicalLoopNestEPKNS_4StmtEi(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1532
  store i32 %2, ptr %i.a, align 8, !tbaa !1532
  tail call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %1, ptr null, i64 0) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !717
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !715  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1534
  %i.k = sub i32 %i.f, %2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !715
  store i32 %i.b, ptr %i.a, align 8, !tbaa !1532
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction20EmitOMPCanonicalLoopEPKNS_16OMPCanonicalLoopE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %4 = alloca %"class.clang::CodeGen::CodeGenFunction", align 8 ; 6 uses
  %5 = alloca %"class.clang::CodeGen::LValue", align 8 ; 4 uses
  %6 = alloca %"class.clang::CodeGen::CodeGenFunction", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %"class.clang::CodeGen::CodeGenFunction::LexicalScope", align 8 ; 14 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"struct.std::pair.1463", align 8   ; 5 uses
  %9 = alloca %"class.clang::CodeGen::RawAddress", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %11 = alloca %class.anon.1466, align 8          ; 7 uses
  %12 = alloca %"class.llvm::Expected.1467", align 8 ; 2 uses
  %13 = alloca %"struct.llvm::OpenMPIRBuilder::LocationDescription", align 16 ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1536
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !775  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !335, !nonnull !336, !align !337
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1329, !nonnull !336, !align !337
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 137438953472
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.e, ptr null, i64 0) #21
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.m = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  call void @_ZN5clang7CodeGen15CodeGenFunction12LexicalScopeC1ERS1_NS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(6288) %0, i64 %i.m) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.n = load i16, ptr %i.e, align 8
  %i.o = and i16 %i.n, 511
  %.not95 = icmp eq i16 %i.o, 252
  br i1 %.not95, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !775  ; 2 uses
  %.not46 = icmp eq ptr %i.q, null
  br i1 %.not46, label %bb.l, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !775  ; 2 uses
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.s, ptr null, i64 0) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !775  ; 2 uses
  %.not43 = icmp eq ptr %i.u, null
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.u, ptr null, i64 0) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !775  ; 2 uses
  %.not44 = icmp eq ptr %i.w, null
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.w, ptr null, i64 0) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !775  ; 2 uses
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %bb.l, label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.d
  %.sink104 = phi ptr [ %i.q, %bb.d ], [ %i.y, %bb.k ]
  %.sink.ph = phi i64 [ 40, %bb.d ], [ 64, %bb.k ]
  call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %.sink104, ptr null, i64 0) #21
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.d
  %.sink = phi i64 [ 40, %bb.d ], [ 64, %bb.k ], [ %.sink.ph, %.sink.split ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink
  %storemerge = load ptr, ptr %i.z, align 8, !tbaa !775
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !775
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !775 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN5clang7CodeGen15CodeGenFunction18InitCapturedStructERKNS_12CapturedStmtE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !335, !nonnull !336, !align !337
  call void @_ZN5clang7CodeGen15CodeGenFunctionC1ERNS0_13CodeGenModuleEb(ptr noundef nonnull align 8 dereferenceable(6288) %6, ptr noundef nonnull align 8 dereferenceable(4008) %i.ac, i1 noundef zeroext true) #21
  %i.ad = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23, !noalias !3023 ; 4 uses
  call void @_ZN5clang7CodeGen15CodeGenFunction18CGCapturedStmtInfoC2ERKNS_12CapturedStmtENS_18CapturedRegionKindE(ptr noundef nonnull align 8 dereferenceable(112) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef 0), !noalias !3023
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 1912 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !333
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !333
  %i.ag = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction28GenerateCapturedStmtFunctionERKNS_12CapturedStmtE(ptr noundef nonnull align 8 dereferenceable(6288) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #21
  %i.ah = call noundef ptr @_ZNK5clang7CodeGen6LValue10getPointerERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(6288) %0) #21
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !333
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(112) %i.ad) #21, !inline_history !3016
  call void @_ZN5clang7CodeGen15CodeGenFunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(6288) dereferenceable(6288) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !775 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5clang7CodeGen15CodeGenFunction18InitCapturedStructERKNS_12CapturedStmtE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %3, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !335, !nonnull !336, !align !337
  call void @_ZN5clang7CodeGen15CodeGenFunctionC1ERNS0_13CodeGenModuleEb(ptr noundef nonnull align 8 dereferenceable(6288) %4, ptr noundef nonnull align 8 dereferenceable(4008) %i.an, i1 noundef zeroext true) #21
  %i.ao = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23, !noalias !3024 ; 4 uses
end_hunk_0
