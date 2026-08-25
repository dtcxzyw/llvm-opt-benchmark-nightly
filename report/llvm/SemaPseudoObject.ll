Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaPseudoObject?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_19Rebuilder7rebuildEPN5clang4ExprE:bb.a
  %.sroa.0.0.copyload.i137 = load i32, ptr %i.fw, align 8, !tbaa !14
  %i.fx = load i16, ptr %i.fk, align 8
  %i.fy = and i16 %i.fx, -512
  %i.fz = or disjoint i16 %i.fy, 51
  store i16 %i.fz, ptr %i.fk, align 8
  %i.ga = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !890, !range !891, !noundef !12
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 51) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.gd = load i24, ptr %i.fk, align 8
  %i.ge = and i24 %i.gd, -523777
  %i.gf = and i24 %i.fv, 15872
  %i.gg = or disjoint i24 %i.ge, %i.gf
  store i24 %i.gg, ptr %i.fk, align 8
  store i64 %.sroa.0.0.copyload.i138, ptr %i.gc, align 8, !tbaa !761
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store i32 %.sroa.0.0.copyload.i137, ptr %i.gh, align 8, !tbaa !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr %i.fd, ptr %i.gi, align 8, !tbaa !44
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store ptr %i.ft, ptr %i.gj, align 8, !tbaa !44
  %i.gk = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_23MSPropertySubscriptExprE(ptr noundef nonnull align 8 dereferenceable(36) %i.fk) #22
  %i.gl = load i24, ptr %i.fk, align 8
  %i.gm = and i8 %i.gk, 31
  %i.gn = zext nneg i8 %i.gm to i24
  %i.go = shl nuw nsw i24 %i.gn, 14
  %i.gp = and i24 %i.gl, -507905
  %i.gq = or disjoint i24 %i.go, %i.gp
  store i24 %i.gq, ptr %i.fk, align 8
  br label %common.ret

common.ret:                                       ; preds = %_ZN5clang10ChooseExprC2ENS_14SourceLocationEPNS_4ExprES3_S3_NS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindES1_b.exit, %bb.j, %bb.m, %bb.p, %.sink.split.i, %bb.b, %bb.b, %bb.ag, %_ZN5clang9ParenExprC2ENS_14SourceLocationES1_PNS_4ExprE.exit, %bb.s
  %common.ret.op = phi ptr [ %i.iu, %bb.s ], [ %i.bv, %bb.j ], [ %i.gx, %_ZN5clang9ParenExprC2ENS_14SourceLocationES1_PNS_4ExprE.exit ], [ %i.mt, %_ZN5clang10ChooseExprC2ENS_14SourceLocationEPNS_4ExprES3_S3_NS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindES1_b.exit ], [ %i.j, %.sink.split.i ], [ %.6, %bb.ag ], [ %1, %bb.b ], [ %1, %bb.b ], [ %i.fk, %bb.p ], [ %i.do, %bb.m ]
  ret ptr %common.ret.op

bb.q:                                             ; preds = %bb.a
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !904
  %i.gt = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Rebuilder7rebuildEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.gs) ; 3 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !892, !nonnull !12, !align !13
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 232
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !89, !nonnull !12, !align !13
  %i.gx = tail call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(23904) %i.gw, i32 noundef 8) #22 ; 11 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gz = load <2 x i32>, ptr %i.gy, align 8, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.0.0.copyload.i.i202 = load i64, ptr %i.ha, align 8, !tbaa !761
  %i.hb = load i24, ptr %i.gt, align 8
  %i.hc = load i16, ptr %i.gx, align 8
  %i.hd = and i16 %i.hc, -512
  %i.he = or disjoint i16 %i.hd, 20
  store i16 %i.he, ptr %i.gx, align 8
  %i.hf = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !890, !range !891, !noundef !12
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.r, label %_ZN5clang9ParenExprC2ENS_14SourceLocationES1_PNS_4ExprE.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 20) #22
  br label %_ZN5clang9ParenExprC2ENS_14SourceLocationES1_PNS_4ExprE.exit

_ZN5clang9ParenExprC2ENS_14SourceLocationES1_PNS_4ExprE.exit: ; preds = %bb.q, %bb.r
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hi = load i24, ptr %i.gx, align 8
  %i.hj = and i24 %i.hi, -1048065
  %i.hk = and i24 %i.hb, 15872
  %i.hl = or disjoint i24 %i.hj, %i.hk
  store i64 %.sroa.0.0.copyload.i.i202, ptr %i.hh, align 8, !tbaa !761
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <2 x i32> %i.gz, ptr %i.hm, align 8, !tbaa !14
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store ptr %i.gt, ptr %i.hn, align 8, !tbaa !904
  store i24 %i.hl, ptr %i.gx, align 8
  %i.ho = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_9ParenExprE(ptr noundef nonnull align 8 dereferenceable(32) %i.gx) #22
  %i.hp = load i24, ptr %i.gx, align 8
  %i.hq = and i8 %i.ho, 31
  %i.hr = zext nneg i8 %i.hq to i24
  %i.hs = shl nuw nsw i24 %i.hr, 14
  %i.ht = and i24 %i.hp, -507905
  %i.hu = or disjoint i24 %i.hs, %i.ht
  store i24 %i.hu, ptr %i.gx, align 8
  br label %common.ret

bb.s:                                             ; preds = %bb.a
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !785
  %i.hx = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Rebuilder7rebuildEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.hw)
  %i.hy = load ptr, ptr %0, align 8, !tbaa !892, !nonnull !12, !align !13 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 232
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !89, !nonnull !12, !align !13
  %i.ib = load i32, ptr %1, align 8               ; 4 uses
  %i.ic = lshr i32 %i.ib, 19
  %i.id = and i32 %i.ic, 31
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i122 = load i64, ptr %i.ie, align 8, !tbaa !761
  %i.if = lshr i32 %i.ib, 9
  %i.ig = and i32 %i.if, 3
  %i.ih = lshr i32 %i.ib, 11
  %i.ii = and i32 %i.ih, 7
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i123 = load i32, ptr %i.ij, align 4, !tbaa !14
  %i.ik = and i32 %i.ib, 16777216
  %i.il = icmp ne i32 %i.ik, 0
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 2024 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 2016
  %.sroa.0.0.copyload.i.i124 = load i64, ptr %i.in, align 8 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i124 to i32
  %i.io = load i32, ptr %i.im, align 8, !tbaa !772
  %i.ip = icmp ne i32 %i.io, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i124, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hy, i64 2028
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = icmp ne i32 %i.ir, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.ip, i1 true, i1 %i.is
  %i.it = load i64, ptr %i.im, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.it, i64 0
  %i.iu = tail call noundef ptr @_ZN5clang13UnaryOperator6CreateERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ia, ptr noundef %i.hx, i32 noundef %i.id, i64 %.sroa.0.0.copyload.i122, i32 noundef %i.ig, i32 noundef %i.ii, i32 %.sroa.0.0.copyload.i123, i1 noundef zeroext %i.il, i64 %.sroa.01.0.insert.insert.i) #22
  br label %common.ret

bb.t:                                             ; preds = %bb.a
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 8            ; 2 uses
  %i.ix = lshr i32 %i.iw, 15
  %i.iy = and i32 %i.ix, 32767                    ; 2 uses
  %i.iz = and i32 %i.iw, 32767                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ja, ptr %2, align 8, !tbaa !27
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 0, ptr %i.jb, align 8, !tbaa !28
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.jc, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.jd, ptr %3, align 8, !tbaa !27
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.je, align 8, !tbaa !28
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 8, ptr %i.jf, align 4, !tbaa !29
  %i.jg = zext nneg i32 %i.iz to i64              ; 2 uses
  %i.jh = icmp samesign ugt i32 %i.iz, 8
  br i1 %i.jh, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, label %_ZN4llvm15SmallVectorImplIPN5clang14TypeSourceInfoEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.t
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ja, i64 noundef %i.jg, i64 noundef 8) #22
  %.pre = load i32, ptr %i.jf, align 4, !tbaa !29
  %i.ji = icmp ugt i32 %i.iz, %.pre
  br i1 %i.ji, label %bb.u, label %_ZN4llvm15SmallVectorImplIPN5clang14TypeSourceInfoEE7reserveEm.exit

bb.u:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.jd, i64 noundef %i.jg, i64 noundef 8) #22
  br label %_ZN4llvm15SmallVectorImplIPN5clang14TypeSourceInfoEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang14TypeSourceInfoEE7reserveEm.exit: ; preds = %bb.t, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.u
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.jk = load i32, ptr %i.iv, align 8, !noalias !906 ; 4 uses
  %i.jl = lshr i32 %i.jk, 30
  %.lobit.i.i = and i32 %i.jl, 1                  ; 3 uses
  %i.jm = zext nneg i32 %.lobit.i.i to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jm ; 2 uses
  %i.jo = and i32 %i.jk, 32767                    ; 3 uses
  %i.jp = lshr i32 %i.jk, 15
  %i.jq = and i32 %i.jp, 32767
  %i.jr = shl nuw nsw i32 %i.jo, 3
  %.idx = zext nneg i32 %i.jr to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.idx
  %.not191 = icmp eq i32 %i.jo, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm15SmallVectorImplIPN5clang14TypeSourceInfoEE7reserveEm.exit
  %i.jt = add nuw nsw i32 %.lobit.i.i, %i.jo
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.ju
  %i.jw = xor i32 %.lobit.i.i, 1
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jx
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  %.pre196 = load i32, ptr %i.iv, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang14TypeSourceInfoEE7reserveEm.exit
  %i.jz = phi i32 [ %.pre196, %._crit_edge.loopexit ], [ %i.jk, %_ZN4llvm15SmallVectorImplIPN5clang14TypeSourceInfoEE7reserveEm.exit ] ; 2 uses
  %i.ka = and i32 %i.jz, 1073741824
  %.not188 = icmp eq i32 %i.ka, 0
  %i.kb = load ptr, ptr %0, align 8, !tbaa !892, !nonnull !12, !align !13
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 232
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !89, !nonnull !12, !align !13 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i130 = load i32, ptr %i.ke, align 4, !tbaa !14 ; 2 uses
  br i1 %.not188, label %bb.ac, label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  %.sroa.10.0194 = phi i32 [ %i.kz, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.0193 = phi ptr [ %i.ky, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit ], [ %i.jy, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0153.0192 = phi ptr [ %i.kx, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit ], [ %i.jn, %.lr.ph.preheader ] ; 2 uses
  %i.kf = load ptr, ptr %.sroa.0153.0192, align 8, !tbaa !44, !noalias !909 ; 2 uses
  %i.kg = load ptr, ptr %.sroa.7.0193, align 8, !tbaa !912, !noalias !909 ; 2 uses
  %i.kh = icmp eq i32 %.sroa.10.0194, %i.jq
  br i1 %i.kh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.ki = call fastcc noundef ptr @_ZN12_GLOBAL__N_19Rebuilder7rebuildEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.kf)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph
  %.097 = phi ptr [ %i.ki, %bb.v ], [ %i.kf, %.lr.ph ] ; 2 uses
  %i.kj = load i32, ptr %i.jb, align 8, !tbaa !28 ; 2 uses
  %i.kk = load i32, ptr %i.jc, align 4, !tbaa !29
  %.not.i = icmp ult i32 %i.kj, %i.kk
  br i1 %.not.i, label %bb.y, label %bb.x, !prof !61

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %.097)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.kl = zext i32 %i.kj to i64
  %i.km = load ptr, ptr %2, align 8, !tbaa !27
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kl
  store ptr %.097, ptr %i.kn, align 1
  %i.ko = load i32, ptr %i.jb, align 8, !tbaa !28
  %i.kp = add i32 %i.ko, 1
  store i32 %i.kp, ptr %i.jb, align 8, !tbaa !28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.x, %bb.y
  %i.kq = load i32, ptr %i.je, align 8, !tbaa !28 ; 2 uses
  %i.kr = load i32, ptr %i.jf, align 4, !tbaa !29
  %.not.i126 = icmp ult i32 %i.kq, %i.kr
  br i1 %.not.i126, label %bb.aa, label %bb.z, !prof !61

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.kg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %i.ks = zext i32 %i.kq to i64
  %i.kt = load ptr, ptr %3, align 8, !tbaa !27
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ks
  store ptr %i.kg, ptr %i.ku, align 1
  %i.kv = load i32, ptr %i.je, align 8, !tbaa !28
  %i.kw = add i32 %i.kv, 1
  store i32 %i.kw, ptr %i.je, align 8, !tbaa !28
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.z, %bb.aa
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0153.0192, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.7.0193, i64 8
  %i.kz = add nuw nsw i32 %.sroa.10.0194, 1
  %.not = icmp eq ptr %i.kx, %i.js
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.ab:                                            ; preds = %._crit_edge
  %i.la = load ptr, ptr %i.jj, align 8, !tbaa !44
  %i.lb = load ptr, ptr %3, align 8, !tbaa !27
  %i.lc = load i32, ptr %i.je, align 8, !tbaa !28
  %i.ld = zext i32 %i.lc to i64
  %i.le = load ptr, ptr %2, align 8, !tbaa !27
  store ptr %i.le, ptr %4, align 8, !tbaa !859
  %i.lf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lg = load i32, ptr %i.jb, align 8, !tbaa !28
  %i.lh = zext i32 %i.lg to i64
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !862
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i128 = load i32, ptr %i.li, align 4, !tbaa !14
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i129 = load i32, ptr %i.lj, align 8, !tbaa !14
  %i.lk = load i24, ptr %1, align 8
  %i.ll = and i24 %i.lk, 16384
  %i.lm = icmp ne i24 %i.ll, 0
  %i.ln = call noundef ptr @_ZN5clang20GenericSelectionExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS8_IS6_EES4_S4_bj(ptr noundef nonnull align 8 dereferenceable(23904) %i.kd, i32 %.sroa.0.0.copyload.i130, ptr noundef %i.la, ptr %i.lb, i64 %i.ld, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %4, i32 %.sroa.0.0.copyload.i128, i32 %.sroa.0.0.copyload.i129, i1 noundef zeroext %i.lm, i32 noundef %i.iy) #22
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge
  %i.lo = and i32 %i.jz, 32767
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !912
  %i.ls = load ptr, ptr %3, align 8, !tbaa !27
  %i.lt = load i32, ptr %i.je, align 8, !tbaa !28
  %i.lu = zext i32 %i.lt to i64
  %i.lv = load ptr, ptr %2, align 8, !tbaa !27
  store ptr %i.lv, ptr %5, align 8, !tbaa !859
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lx = load i32, ptr %i.jb, align 8, !tbaa !28
  %i.ly = zext i32 %i.lx to i64
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !862
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i131 = load i32, ptr %i.lz, align 4, !tbaa !14
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i132 = load i32, ptr %i.ma, align 8, !tbaa !14
  %i.mb = load i24, ptr %1, align 8
  %i.mc = and i24 %i.mb, 16384
  %i.md = icmp ne i24 %i.mc, 0
  %i.me = call noundef ptr @_ZN5clang20GenericSelectionExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefIS6_EENS8_IPNS_4ExprEEES4_S4_bj(ptr noundef nonnull align 8 dereferenceable(23904) %i.kd, i32 %.sroa.0.0.copyload.i130, ptr noundef %i.lr, ptr %i.ls, i64 %i.lu, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5, i32 %.sroa.0.0.copyload.i131, i32 %.sroa.0.0.copyload.i132, i1 noundef zeroext %i.md, i32 noundef %i.iy) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.6 = phi ptr [ %i.ln, %bb.ab ], [ %i.me, %bb.ac ]
  %i.mf = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.jd
  br i1 %i.mg, label %_ZN4llvm11SmallVectorIPN5clang14TypeSourceInfoELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.mf) #22
  br label %_ZN4llvm11SmallVectorIPN5clang14TypeSourceInfoELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang14TypeSourceInfoELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.mh = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.ja
  br i1 %i.mi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang14TypeSourceInfoELj8EED2Ev.exit
  call void @free(ptr noundef %i.mh) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN4llvm11SmallVectorIPN5clang14TypeSourceInfoELj8EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.ret

.unreachabledefault:                              ; preds = %bb.a
  unreachable

.thread184:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !44 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !44 ; 2 uses
  %i.mn = load i24, ptr %1, align 8
  %i.mo = and i24 %i.mn, 524288
  %.not190 = icmp eq i24 %i.mo, 0                 ; 3 uses
  %.sroa.speculated = select i1 %.not190, ptr %i.mm, ptr %i.mk
  %i.mp = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Rebuilder7rebuildEPN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.sroa.speculated) ; 4 uses
  %spec.select = select i1 %.not190, ptr %i.mk, ptr %i.mp
  %spec.select187 = select i1 %.not190, ptr %i.mp, ptr %i.mm
  %i.mq = load ptr, ptr %0, align 8, !tbaa !892, !nonnull !12, !align !13
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 232
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !89, !nonnull !12, !align !13
  %i.mt = tail call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(23904) %i.ms, i32 noundef 8) #22 ; 13 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !44
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.mx, align 8, !tbaa !761
  %i.my = load i24, ptr %i.mp, align 8
  %i.mz = load <2 x i32>, ptr %i.mu, align 8, !tbaa !14
  %i.na = load i24, ptr %1, align 8
  %i.nb = and i24 %i.na, 524288
  %i.nc = load i16, ptr %i.mt, align 8
  %i.nd = and i16 %i.nc, -512
  %i.ne = or disjoint i16 %i.nd, 79
  store i16 %i.ne, ptr %i.mt, align 8
  %i.nf = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !890, !range !891, !noundef !12
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.ah, label %_ZN5clang10ChooseExprC2ENS_14SourceLocationEPNS_4ExprES3_S3_NS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindES1_b.exit

bb.ah:                                            ; preds = %.thread184
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 79) #22
  br label %_ZN5clang10ChooseExprC2ENS_14SourceLocationEPNS_4ExprES3_S3_NS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindES1_b.exit

_ZN5clang10ChooseExprC2ENS_14SourceLocationEPNS_4ExprES3_S3_NS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindES1_b.exit: ; preds = %.thread184, %bb.ah
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.ni = load i24, ptr %i.mt, align 8
  %i.nj = and i24 %i.ni, -1048065
  %i.nk = and i24 %i.my, 15872
  store i64 %.sroa.0.0.copyload.i135, ptr %i.nh, align 8, !tbaa !761
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  store <2 x i32> %i.mz, ptr %i.nl, align 8, !tbaa !14
  %i.nm = or disjoint i24 %i.nb, %i.nk
  %i.nn = or disjoint i24 %i.nm, %i.nj
  store i24 %i.nn, ptr %i.mt, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store ptr %i.mw, ptr %i.no, align 8, !tbaa !44
  %i.np = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  store ptr %spec.select, ptr %i.np, align 8, !tbaa !44
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  store ptr %spec.select187, ptr %i.nq, align 8, !tbaa !44
  %i.nr = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_10ChooseExprE(ptr noundef nonnull align 8 dereferenceable(48) %i.mt) #22
  %i.ns = load i24, ptr %i.mt, align 8
  %i.nt = and i8 %i.nr, 31
  %i.nu = zext nneg i8 %i.nt to i24
  %i.nv = shl nuw nsw i24 %i.nu, 14
  %i.nw = and i24 %i.ns, -507905
  %i.nx = or disjoint i24 %i.nv, %i.nw
  store i24 %i.nx, ptr %i.mt, align 8
  br label %common.ret
}

declare noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef, ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_15OpaqueValueExprE(ptr noundef) local_unnamed_addr #5

declare void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !28
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !28
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @"_ZN4llvm12function_refIFPN5clang4ExprES3_jEE11callback_fnIZN12_GLOBAL__N_121ObjCPropertyOpBuilder23rebuildAndCaptureObjectES3_E3$_0EES3_lS3_j"(i64 noundef %0, ptr nofree readnone captures(none) %1, i32 %2) #16 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !833
  %i.b = getelementptr i8, ptr %.val, i64 96
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !782
  ret ptr %.val.val
}

declare noundef ptr @_ZN5clang20GenericSelectionExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS8_IS6_EES4_S4_bj(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr noundef, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef") align 8, i32, i32, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN5clang20GenericSelectionExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefIS6_EENS8_IPNS_4ExprEEES4_S4_bj(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr noundef, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef") align 8, i32, i32, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_19ObjCPropertyRefExprE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_20ObjCSubscriptRefExprE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_17MSPropertyRefExprE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_23MSPropertySubscriptExprE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_9ParenExprE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
end_hunk_0
