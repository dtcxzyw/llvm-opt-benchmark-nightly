Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprMutationAnalyzer?download=true
inline.NumInlined: 11429
inline.NumDeleted: 5338
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE:bb.a
  %i.ak = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !noalias !6023 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  store i32 0, ptr %i.al, align 4, !tbaa !199, !noalias !6023
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal22matcher_callee1MatcherINS_19CXXOperatorCallExprENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.ak, align 8, !tbaa !201, !noalias !6023
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0188, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.s, ptr %i.an, align 8, !tbaa !198, !noalias !6023
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5clang12ast_matchers6calleeERKNS0_8internal7MatcherINS_4DeclEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i32 1 monotonic, align 4, !noalias !6023 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %_ZN5clang12ast_matchers6calleeERKNS0_8internal7MatcherINS_4DeclEEE.exit, %bb.h
  %i.aq = atomicrmw add ptr %i.al, i32 1 monotonic, align 4, !noalias !6023 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6024)
  call void @llvm.experimental.noalias.scope.decl(metadata !6025)
  call void @llvm.experimental.noalias.scope.decl(metadata !6026)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !6027
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !6027
  call void @llvm.experimental.noalias.scope.decl(metadata !6028)
  store i8 0, ptr %18, align 8, !noalias !6027
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 288, ptr %.sroa.4196.0..sroa_idx, align 4, !noalias !6027
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 288, ptr %.sroa.5197.0..sroa_idx, align 8, !noalias !6027
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !198, !alias.scope !6028, !noalias !6027
  %i.as = atomicrmw add ptr %i.al, i32 1 monotonic, align 4, !noalias !6029 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 186) #25, !noalias !6027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 12, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !198, !noalias !6027 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !198, !alias.scope !6027
  %.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i20, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw add ptr %i.aw, i32 1 monotonic, align 4, !noalias !6027 ; 0 uses
  %.pr.i.i.i21 = load ptr, ptr %i.au, align 8, !tbaa !198, !noalias !6027 ; 4 uses
  %.not.i.i.i.i.i.i.i22 = icmp eq ptr %.pr.i.i.i21, null
  br i1 %.not.i.i.i.i.i.i.i22, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.pr.i.i.i21, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4, !noalias !6027
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %.pr.i.i.i21, align 8, !tbaa !201, !noalias !6027
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !6027
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i21) #25, !noalias !6027, !inline_history !152
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !198, !noalias !6027 ; 4 uses
  %.not.i.i.i.i3.i.i.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i3.i.i.i23, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4, !noalias !6027
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !201, !noalias !6027
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !6027
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.be) #25, !noalias !6027, !inline_history !153
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !6027
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !6027
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !6030)
  call void @llvm.experimental.noalias.scope.decl(metadata !6031)
  %i.bl = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !noalias !6032
  store i32 %i.bl, ptr %16, align 8, !tbaa !167, !alias.scope !6032
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %1, ptr %i.bm, align 8, !tbaa !169, !alias.scope !6032
  %i.bn = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef %2, ptr noundef nonnull %22) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.bo = zext i1 %i.bn to i32
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !198 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = atomicrmw sub ptr %i.bq, i32 1 acq_rel, align 4
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.n, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !201
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(12) %i.bp) #25, !inline_history !11
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit: ; preds = %bb.n, %bb.m, %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.bw = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.o, label %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit

bb.o:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit
  %i.by = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(12) %i.ak) #25, !inline_history !39
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit, %bb.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.cc = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !201
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #25, !inline_history !40
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ch = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.s, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.s, align 8, !tbaa !201
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #25, !inline_history !48
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit, %bb.r, %bb.s
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !198 ; 4 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i26, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = atomicrmw sub ptr %i.cn, i32 1 acq_rel, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.u, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !201
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(12) %i.cm) #25, !inline_history !17
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, %bb.t, %bb.u
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !198 ; 4 uses
  %.not.i.i.i.i.i.i27 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i27, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29, label %bb.v

bb.v:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw sub ptr %i.cu, i32 1 acq_rel, align 4
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.w, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !201
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %i.ct) #25, !inline_history !18
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29

_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29: ; preds = %bb.w, %bb.v, %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0188)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !829
  %i.dc = icmp ugt i32 %i.db, %i.bo
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 4
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ef = zext i1 %i.bn to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109
  %indvars.iv = phi i64 [ %i.ef, %.lr.ph ], [ %indvars.iv.next, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109 ] ; 2 uses
  %.0203 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109 ] ; 2 uses
  %.016202 = phi i32 [ 0, %.lr.ph ], [ %i.nf, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  store ptr %i.dd, ptr %26, align 8, !tbaa !180
  store i32 0, ptr %i.de, align 8, !tbaa !181
  store i32 1, ptr %i.df, align 4, !tbaa !182
  %i.eg = load i32, ptr %i.dg, align 8, !tbaa !181
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit: ; preds = %bb.x, %bb.y
  %i.ei = load i16, ptr %1, align 8
  %i.ej = and i16 %i.ei, 511
  %.not.i.i.i.i30 = icmp eq i16 %i.ej, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i30, i64 48, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !270
  %i.en = call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !6033)
  call void @llvm.experimental.noalias.scope.decl(metadata !6034)
  %i.eo = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #25, !noalias !6035
  store i32 %i.eo, ptr %15, align 8, !tbaa !167, !alias.scope !6035
  store ptr %i.en, ptr %i.di, align 8, !tbaa !169, !alias.scope !6035
  %i.ep = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %2, ptr noundef nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br i1 %i.ep, label %bb.z, label %bb.cg

bb.z:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store ptr %i.dj, ptr %27, align 8, !tbaa !180
  store i32 0, ptr %i.dk, align 8, !tbaa !181
  store i32 1, ptr %i.dl, align 4, !tbaa !182
  %i.eq = load i32, ptr %i.de, align 8, !tbaa !181
  %.not.i.i.i31 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i31, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull align 8 dereferenceable(64) %26) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0178)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0165)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0153)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0153, ptr noundef nonnull align 8 dereferenceable(12) %i.dm, i64 12, i1 false)
  %i.es = load ptr, ptr %i.dn, align 8, !tbaa !198, !noalias !6036 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.es, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = atomicrmw add ptr %i.et, i32 1 monotonic, align 4, !noalias !6036 ; 0 uses
  br label %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit

_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit: ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32, %bb.ab
  %i.ev = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !noalias !6037 ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !199, !noalias !6037
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal28matcher_hasParameter0MatcherINS_18CXXConstructorDeclEjNS1_7MatcherINS_11ParmVarDeclEEEEE, i64 16), ptr %i.ev, align 8, !tbaa !201, !noalias !6037
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 %.016202, ptr %i.ex, align 4, !tbaa !825, !noalias !6037
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ey, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0153, i64 12, i1 false), !noalias !6037
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store ptr %i.es, ptr %i.ez, align 8, !tbaa !198, !noalias !6037
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fb = atomicrmw add ptr %i.fa, i32 1 monotonic, align 4, !noalias !6037 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit, %bb.ac
  %i.fc = atomicrmw add ptr %i.ew, i32 1 monotonic, align 4, !noalias !6037 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !6038
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !6038
  call void @llvm.experimental.noalias.scope.decl(metadata !6039)
  store i8 0, ptr %14, align 8, !noalias !6038
  store i32 125, ptr %.sroa.4160.0..sroa_idx, align 4, !noalias !6038
  store i32 125, ptr %.sroa.5161.0..sroa_idx, align 8, !noalias !6038
  store ptr %i.ev, ptr %i.do, align 8, !tbaa !198, !alias.scope !6039, !noalias !6038
  %i.fd = atomicrmw add ptr %i.ew, i32 1 monotonic, align 4, !noalias !6040 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 80) #25, !noalias !6038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0165, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %i.fe = load ptr, ptr %i.dp, align 8, !tbaa !198, !noalias !6038 ; 10 uses
  %.not.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.fe, null ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i35, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = atomicrmw add ptr %i.ff, i32 1 monotonic, align 4, !noalias !6038 ; 0 uses
  %.pr.i.i.i37 = load ptr, ptr %i.dp, align 8, !tbaa !198, !noalias !6038 ; 4 uses
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %.pr.i.i.i37, null
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36
  %i.fh = getelementptr inbounds nuw i8, ptr %.pr.i.i.i37, i64 8
  %i.fi = atomicrmw sub ptr %i.fh, i32 1 acq_rel, align 4, !noalias !6038
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.ae, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr %.pr.i.i.i37, align 8, !tbaa !201, !noalias !6038
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !6038
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i37) #25, !noalias !6038, !inline_history !154
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39: ; preds = %bb.ae, %bb.ad, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.fn = load ptr, ptr %i.do, align 8, !tbaa !198, !noalias !6038 ; 4 uses
  %.not.i.i.i.i3.i.i.i40 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i3.i.i.i40, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = atomicrmw sub ptr %i.fo, i32 1 acq_rel, align 4, !noalias !6038
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %bb.ag, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.ag:                                            ; preds = %bb.af
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !201, !noalias !6038
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !6038
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(12) %i.fn) #25, !noalias !6038, !inline_history !155
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !6038
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !6038
  br i1 %.not.i.i.i.i.i.i.i.i35, label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fv = atomicrmw add ptr %i.fu, i32 1 monotonic, align 4, !noalias !6041 ; 0 uses
  br label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit

_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit: ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, %bb.ah
  %i.fw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !noalias !6042 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  store i32 0, ptr %i.fx, align 4, !tbaa !199, !noalias !6042
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal21HasDeclarationMatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.fw, align 8, !tbaa !201, !noalias !6042
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !6043)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fy, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0165, i64 12, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.fe, ptr %i.fz, align 8, !tbaa !198, !alias.scope !6043, !noalias !6042
  br i1 %.not.i.i.i.i.i.i.i.i35, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.gb = atomicrmw add ptr %i.ga, i32 1 monotonic, align 4, !noalias !6044 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, %bb.ai
  %i.gc = atomicrmw add ptr %i.fx, i32 1 monotonic, align 4, !noalias !6042 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !6045
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !6045
  call void @llvm.experimental.noalias.scope.decl(metadata !6046)
  store i8 0, ptr %12, align 8, !noalias !6045
  store i32 312, ptr %.sroa.4173.0..sroa_idx, align 4, !noalias !6045
  store i32 312, ptr %.sroa.5174.0..sroa_idx, align 8, !noalias !6045
  store ptr %i.fw, ptr %i.dq, align 8, !tbaa !198, !alias.scope !6046, !noalias !6045
  %i.gd = atomicrmw add ptr %i.fx, i32 1 monotonic, align 4, !noalias !6047 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 186) #25, !noalias !6045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0178, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  %i.ge = load ptr, ptr %i.dr, align 8, !tbaa !198, !noalias !6045 ; 3 uses
  %.not.i.i.i.i.i.i.i.i44 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i.i44, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = atomicrmw add ptr %i.gf, i32 1 monotonic, align 4, !noalias !6045 ; 0 uses
  %.pr.i.i.i46 = load ptr, ptr %i.dr, align 8, !tbaa !198, !noalias !6045 ; 4 uses
  %.not.i.i.i.i.i.i.i47 = icmp eq ptr %.pr.i.i.i46, null
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48, label %bb.aj

bb.aj:                                            ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45
  %i.gh = getelementptr inbounds nuw i8, ptr %.pr.i.i.i46, i64 8
  %i.gi = atomicrmw sub ptr %i.gh, i32 1 acq_rel, align 4, !noalias !6045
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %bb.ak, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %.pr.i.i.i46, align 8, !tbaa !201, !noalias !6045
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !6045
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i46) #25, !noalias !6045, !inline_history !118
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48: ; preds = %bb.ak, %bb.aj, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.gn = load ptr, ptr %i.dq, align 8, !tbaa !198, !noalias !6045 ; 4 uses
  %.not.i.i.i.i3.i.i.i49 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i3.i.i.i49, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = atomicrmw sub ptr %i.go, i32 1 acq_rel, align 4, !noalias !6045
  %i.gq = icmp eq i32 %i.gp, 1
  br i1 %i.gq, label %bb.am, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.am:                                            ; preds = %bb.al
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !201, !noalias !6045
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !6045
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(12) %i.gn) #25, !noalias !6045, !inline_history !119
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !6045
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !6045
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0149)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0136)
end_hunk_0
begin_hunk_1_@_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEESE_EEcvNSC_IT_EEIS7_EEv:bb.a

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !223
  br label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i ], [ %i.j, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !225
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEESE_EE11getMatchersIS7_JLm0ELm1EEEESt6vectorINS1_15DynTypedMatcherESaISJ_EESt16integer_sequenceImJXspT0_EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.1251") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.9 = alloca [12 x i8], align 8            ; 4 uses
  %2 = alloca %"class.clang::ast_matchers::internal::Matcher.962", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !noalias !6199 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !199, !noalias !6199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %i.c, align 8, !tbaa !201, !noalias !6199
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 12, i1 false), !noalias !6199
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198, !noalias !6199 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !198, !noalias !6199
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = atomicrmw add ptr %i.i, i32 1 monotonic, align 4, !noalias !6199 ; 0 uses
  br label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.a, %bb.b
  %i.k = atomicrmw add ptr %i.d, i32 1 monotonic, align 4, !noalias !6199 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 312) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !198, !noalias !6200 ; 6 uses
  store ptr null, ptr %i.l, align 8, !tbaa !198, !noalias !6200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 10 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !223
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !225
  store i8 0, ptr %i.o, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 312, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 312, ptr %.sroa.5.0..sroa_idx8, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.c, ptr %i.r, align 8, !tbaa !198
  %i.s = atomicrmw add ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.m, ptr %i.u, align 8, !tbaa !198
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, label %bb.c

_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread: ; preds = %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !224
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.c:                                             ; preds = %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !224
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ac = atomicrmw sub ptr %i.ab, i32 1 acq_rel, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.d, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !201
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #25, !inline_history !7
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit: ; preds = %bb.d, %bb.c, %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread
  %i.ah = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.e, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1

bb.e:                                             ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !201
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #25, !inline_history !7
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1: ; preds = %bb.e, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !198 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw sub ptr %i.an, i32 1 acq_rel, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.g, label %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit2

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !201
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.am) #25, !inline_history !66
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit2

_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit2: ; preds = %bb.g, %bb.f, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !201
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #25, !inline_history !3
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !201
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #25, !inline_history !6201
  br label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %5 = alloca %"class.clang::ast_matchers::internal::BoundNodesTreeBuilder", align 8 ; 11 uses
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511
  %.not.i.i.i.i = icmp eq i16 %i.b, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !829  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not26 = icmp eq i32 %i.e, 0
  br i1 %.not26, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.g
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.018.027 = phi ptr [ %i.c, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.018.027, align 8, !tbaa !233 ; 3 uses
  %i.p = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr %i.o, align 8
  %i.r = and i16 %i.q, 511
  %i.s = icmp eq i16 %i.r, 116
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.h, ptr %5, align 8, !tbaa !180
  store i32 0, ptr %i.i, align 8, !tbaa !181
  store i32 1, ptr %i.j, align 4, !tbaa !182
  %i.t = load i32, ptr %i.k, align 8, !tbaa !181
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !6206)
  call void @llvm.experimental.noalias.scope.decl(metadata !6207)
  %i.v = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !noalias !6208
  store i32 %i.v, ptr %4, align 8, !tbaa !167, !alias.scope !6208
  store ptr %i.o, ptr %i.m, align 8, !tbaa !169, !alias.scope !6208
  %i.w = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2, ptr noundef nonnull %5) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, %bb.g
  %i.y = load ptr, ptr %5, align 8, !tbaa !180    ; 3 uses
  %i.z = load i32, ptr %i.i, align 8, !tbaa !181  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.h
  %i.aa = zext i32 %i.z to i64
  %.idx.i.i = mul nuw nsw i64 %i.aa, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.ab, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !189
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5clang12DynTypedNodeEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef %i.ae)
  %.not.i.i.i16 = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i.i.i16, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !180
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, %bb.h
  %i.af = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i
  call void @free(ptr noundef %i.af) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.w, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.j, %bb.b, %bb.d, %bb.a
  %i.ah = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.j ]
  ret i1 %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJRKNS1_18PolymorphicMatcherINS1_44matcher_forEachArgumentWithParamType0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprEEEEEJNS1_7MatcherINS_4ExprEEENSA_INS_8QualTypeEEEEEERKNS2_IJNS3_INS1_30matcher_hasAnyArgument0MatcherEFvNS5_IJS6_S7_NS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJSC_EEESC_EEEEE11getMatchersIS6_JLm0ELm1EEEESt6vectorINS1_15DynTypedMatcherESaISU_EESt16integer_sequenceImJXspT0_EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.1251") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.9 = alloca [12 x i8], align 8            ; 4 uses
  %2 = alloca %"class.clang::ast_matchers::internal::Matcher.896", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !834, !nonnull !260, !align !269 ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !6213 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !199, !noalias !6213
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal44matcher_forEachArgumentWithParamType0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_8QualTypeEEEEE, i64 16), ptr %i.d, align 8, !tbaa !201, !noalias !6213
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !noalias !6213
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198, !noalias !6213 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !198, !noalias !6213
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEEC2ERKS4_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw add ptr %i.k, i32 1 monotonic, align 4, !noalias !6213 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEEC2ERKS4_.exit.i.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 12, i1 false), !noalias !6213
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !198, !noalias !6213 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !198, !noalias !6213
  %.not.i.i.i.i3.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3.i.i.i.i, label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEEC2ERKS4_.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i32 1 monotonic, align 4, !noalias !6213 ; 0 uses
  br label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEEC2ERKS4_.exit.i.i.i.i, %bb.c
  %i.s = atomicrmw add ptr %i.f, i32 1 monotonic, align 4, !noalias !6213 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !835, !nonnull !260, !align !269
  call void @_ZNKR5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEESE_EEcvNSC_IT_EEIS6_EEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::Matcher.896") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !198, !noalias !6214 ; 6 uses
  store ptr null, ptr %i.u, align 8, !tbaa !198, !noalias !6214
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %i.x = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 10 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !223
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !225
  store i8 0, ptr %i.x, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 286, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 286, ptr %.sroa.5.0..sroa_idx8, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.d, ptr %i.aa, align 8, !tbaa !198
  %i.ab = atomicrmw add ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9, i64 12, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !198
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, label %bb.d

_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread: ; preds = %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !224
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.d:                                             ; preds = %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = atomicrmw add ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !224
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.e, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !201
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.v) #25, !inline_history !7
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit: ; preds = %bb.e, %bb.d, %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread
  %i.aq = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.f, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1

bb.f:                                             ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #25, !inline_history !7
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1: ; preds = %bb.f, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !198 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_8CallExprEED2Ev.exit2, label %bb.g

bb.g:                                             ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
end_hunk_1
