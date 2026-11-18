Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE32TransformCXXExpansionStmtPatternEPNS_23CXXExpansionStmtPatternE:bb.a
bb.p:                                             ; preds = %bb.n
  %i.db = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit

_ZN5clang11DeclContext9getParentEv.exit:          ; preds = %bb.o, %bb.p
  %.0.i.i = phi ptr [ %i.da, %bb.o ], [ %i.dd, %bb.p ]
  %i.de = load ptr, ptr %i.cu, align 8, !tbaa !1039 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 584 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2526
  store ptr null, ptr %i.df, align 8, !tbaa !2526
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ck, i64 11136 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !196
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 80 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !2527
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2584 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !2528
  store ptr %.0.i.i, ptr %i.cu, align 8, !tbaa !1039
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !154
  store i32 %i.do, ptr %i.dj, align 8, !tbaa !2527
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ck, i64 3664
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !154
  store i32 %i.dq, ptr %i.dl, align 8, !tbaa !2528
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1724
  %i.dt = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ds) ; 2 uses
  %i.du = icmp eq i64 %i.dt, 1
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %_ZN5clang4Sema11ContextRAIID2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5clang11DeclContext9getParentEv.exit
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !1039
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !2526
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !196
  store i32 %i.dk, ptr %i.dj, align 8, !tbaa !2527
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit

_ZN5clang4Sema11ContextRAIID2Ev.exit:             ; preds = %_ZN5clang11DeclContext9getParentEv.exit, %bb.q
  br i1 %i.du, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1724
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ck, i64 616 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1039
  %i.dz = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #36
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i96 = load i64, ptr %i.ea, align 8 ; 3 uses
  %i.eb = and i64 %.0.copyload.i.i.i.i.i.i.i.i96, 4
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i96 to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit98

bb.t:                                             ; preds = %bb.r
  %i.ee = and i64 %.0.copyload.i.i.i.i.i.i.i.i96, -5
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit98

_ZN5clang11DeclContext9getParentEv.exit98:        ; preds = %bb.s, %bb.t
  %.0.i.i97 = phi ptr [ %i.ed, %bb.s ], [ %i.eg, %bb.t ]
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !1039 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ck, i64 584 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !2526
  store ptr null, ptr %i.ei, align 8, !tbaa !2526
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 11136 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !196
  %i.em = getelementptr inbounds nuw i8, ptr %i.ck, i64 80 ; 3 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !2527
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 2584 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !2528
  store ptr %.0.i.i97, ptr %i.dx, align 8, !tbaa !1039
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !154
  store i32 %i.er, ptr %i.em, align 8, !tbaa !2527
  %i.es = getelementptr inbounds nuw i8, ptr %i.ck, i64 3664
  %i.et = load i32, ptr %i.es, align 8, !tbaa !154
  store i32 %i.et, ptr %i.eo, align 8, !tbaa !2528
  %i.eu = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dw, i32 noundef 0), !inline_history !6365 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i93, label %_ZN5clang4Sema11ContextRAIID2Ev.exit95, label %bb.u

bb.u:                                             ; preds = %_ZN5clang11DeclContext9getParentEv.exit98
  store ptr %i.eh, ptr %i.dx, align 8, !tbaa !1039
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !2526
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !196
  store i32 %i.en, ptr %i.em, align 8, !tbaa !2527
  store i32 %i.ep, ptr %i.eo, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit95

_ZN5clang4Sema11ContextRAIID2Ev.exit95:           ; preds = %_ZN5clang11DeclContext9getParentEv.exit98, %bb.u
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.m, %_ZN5clang4Sema11ContextRAIID2Ev.exit95, %_ZN5clang4Sema11ContextRAIID2Ev.exit
  %.sroa.0130.0 = phi i64 [ %i.dt, %_ZN5clang4Sema11ContextRAIID2Ev.exit ], [ 0, %_ZN5clang4Sema11ContextRAIID2Ev.exit95 ], [ 0, %bb.m ]
  %.sroa.0128.0 = phi i64 [ 0, %_ZN5clang4Sema11ContextRAIID2Ev.exit ], [ %i.eu, %_ZN5clang4Sema11ContextRAIID2Ev.exit95 ], [ 0, %bb.m ]
  %i.ew = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.ex = call i64 @_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ew, i64 %.sroa.0130.0) #36
  %i.ey = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4592
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !153
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4600
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !154
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [792 x i8], ptr %i.fa, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -272 ; 4 uses
  %i.fg = icmp eq ptr %2, %i.ff
  br i1 %i.fg, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 -264 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !154 ; 6 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = load i32, ptr %i.bx, align 8, !tbaa !154 ; 4 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %.not.i.i77 = icmp ult i32 %i.fk, %i.fi
  br i1 %.not.i.i77, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not29.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not29.i.i, label %.sink.split.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !153 ; 2 uses
  %i.fn = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %.not31.i.i = icmp eq i32 %i.fi, 1
  br i1 %.not31.i.i, label %bb.aa, label %bb.z, !prof !1565

bb.z:                                             ; preds = %bb.y
  %.idx.i.i = shl nuw nsw i64 %i.fj, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fn, ptr align 8 %i.fm, i64 %.idx.i.i, i1 false)
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !3106
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !3106
  br label %.sink.split.i.i

bb.ab:                                            ; preds = %bb.w
  %i.fp = load i32, ptr %i.by, align 4, !tbaa !155
  %i.fq = icmp ult i32 %i.fp, %i.fi
  br i1 %i.fq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bx, align 8, !tbaa !154
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.bw, i64 noundef %i.fj, i64 noundef 8) #36
  br label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i

bb.ad:                                            ; preds = %bb.ab
  %.not28.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not28.i.i, label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !153 ; 2 uses
  %i.fs = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %.not33.i.i = icmp eq i32 %i.fk, 1
  br i1 %.not33.i.i, label %bb.ag, label %bb.af, !prof !1565

bb.af:                                            ; preds = %bb.ae
  %.idx32.i.i = shl nuw nsw i64 %i.fl, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fs, ptr align 8 %i.fr, i64 %.idx32.i.i, i1 false)
  br label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !3106
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !3106
  br label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i

_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i: ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac
  %.022.i.i = phi i64 [ 0, %bb.ac ], [ 0, %bb.ad ], [ %i.fl, %bb.af ], [ 1, %bb.ag ] ; 4 uses
  %i.fu = load i32, ptr %i.fh, align 8, !tbaa !154
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.022.i.i, %i.fv
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i
  %i.fw = load ptr, ptr %i.ff, align 8, !tbaa !153
  %.idx35.i.i = shl nuw nsw i64 %.022.i.i, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx35.i.i
  %i.fy = load ptr, ptr %2, align 8, !tbaa !153
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.022.i.i
  %i.ga = sub nsw i64 %i.fv, %.022.i.i
  %gepdiff.i.i = shl nsw i64 %i.ga, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fz, ptr align 8 %i.fx, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ah, %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i, %bb.aa, %bb.z, %bb.x
  store i32 %i.fi, ptr %i.bx, align 8, !tbaa !154
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread: ; preds = %bb.v, %.sink.split.i.i
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.cb) #36
  %.pr = load i8, ptr %i.bz, align 8, !tbaa !3104
  %i.gb = and i64 %i.ex, -2
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = and i64 %.sroa.0128.0, -2
  %i.ge = inttoptr i64 %i.gd to ptr
  br label %bb.ai

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit95, %_ZN5clang4Sema11ContextRAIID2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.cb) #36
  br label %.thread172

bb.ai:                                            ; preds = %bb.l, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread
  %i.gf = phi i8 [ %.pr, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread ], [ %i.ca, %bb.l ]
  %.sroa.0130.2 = phi ptr [ %i.gc, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread ], [ null, %bb.l ]
  %.sroa.0128.2 = phi ptr [ %i.ge, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread ], [ null, %bb.l ]
  switch i8 %i.gf, label %.unreachabledefault [
    i8 0, label %bb.aj
    i8 1, label %bb.al
    i8 3, label %bb.at
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !1724
  %i.gi = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gh, i32 noundef 0) ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %.thread172, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.gn = and i64 %i.gi, -2
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i78 = load i32, ptr %i.gp, align 4, !tbaa !268
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i79 = load i32, ptr %i.gq, align 8, !tbaa !268
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i80 = load i32, ptr %i.gr, align 4, !tbaa !268
  %i.gs = call noundef ptr @_ZN5clang23CXXExpansionStmtPattern17CreateEnumeratingERNS_10ASTContextEPNS_20CXXExpansionStmtDeclEPNS_4StmtEPNS_8DeclStmtENS_14SourceLocationES9_S9_(ptr noundef nonnull align 8 dereferenceable(23904) %i.gm, ptr noundef nonnull %.0.i, ptr noundef %.166, ptr noundef %i.go, i32 %.sroa.0.0.copyload.i78, i32 %.sroa.0.0.copyload.i79, i32 %.sroa.0.0.copyload.i80) #36
  br label %bb.av

bb.al:                                            ; preds = %bb.ai
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1724
  %i.gv = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 616 ; 4 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1039
  %i.gy = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.gx) #36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i102 = load i64, ptr %i.gz, align 8 ; 3 uses
  %i.ha = and i64 %.0.copyload.i.i.i.i.i.i.i.i102, 4
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hc = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i102 to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit104

bb.an:                                            ; preds = %bb.al
  %i.hd = and i64 %.0.copyload.i.i.i.i.i.i.i.i102, -5
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit104

_ZN5clang11DeclContext9getParentEv.exit104:       ; preds = %bb.am, %bb.an
  %.0.i.i103 = phi ptr [ %i.hc, %bb.am ], [ %i.hf, %bb.an ]
  %i.hg = load ptr, ptr %i.gw, align 8, !tbaa !1039 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 584 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2526
  store ptr null, ptr %i.hh, align 8, !tbaa !2526
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 11136 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !196
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 80 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !2527
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 2584 ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !2528
  store ptr %.0.i.i103, ptr %i.gw, align 8, !tbaa !1039
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !154
  store i32 %i.hq, ptr %i.hl, align 8, !tbaa !2527
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gv, i64 3664
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !154
  store i32 %i.hs, ptr %i.hn, align 8, !tbaa !2528
  %i.ht = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gu, i32 noundef 0), !inline_history !6365 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i99, label %_ZN5clang4Sema11ContextRAIID2Ev.exit101, label %bb.ao

bb.ao:                                            ; preds = %_ZN5clang11DeclContext9getParentEv.exit104
  store ptr %i.hg, ptr %i.gw, align 8, !tbaa !1039
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !2526
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !196
  store i32 %i.hm, ptr %i.hl, align 8, !tbaa !2527
  store i32 %i.ho, ptr %i.hn, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit101

_ZN5clang4Sema11ContextRAIID2Ev.exit101:          ; preds = %_ZN5clang11DeclContext9getParentEv.exit104, %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !1724
  %i.hw = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117 ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 616 ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !1039
  %i.hz = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.hy) #36
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i108 = load i64, ptr %i.ia, align 8 ; 3 uses
  %i.ib = and i64 %.0.copyload.i.i.i.i.i.i.i.i108, 4
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit101
  %i.id = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i108 to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit110

bb.aq:                                            ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit101
  %i.ie = and i64 %.0.copyload.i.i.i.i.i.i.i.i108, -5
  %i.if = inttoptr i64 %i.ie to ptr
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit110

_ZN5clang11DeclContext9getParentEv.exit110:       ; preds = %bb.ap, %bb.aq
  %.0.i.i109 = phi ptr [ %i.id, %bb.ap ], [ %i.ig, %bb.aq ]
  %i.ih = load ptr, ptr %i.hx, align 8, !tbaa !1039 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hw, i64 584 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !2526
  store ptr null, ptr %i.ii, align 8, !tbaa !2526
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hw, i64 11136 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !196
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 80 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !2527
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 2584 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !2528
  store ptr %.0.i.i109, ptr %i.hx, align 8, !tbaa !1039
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !154
  store i32 %i.ir, ptr %i.im, align 8, !tbaa !2527
  %i.is = getelementptr inbounds nuw i8, ptr %i.hw, i64 3664
  %i.it = load i32, ptr %i.is, align 8, !tbaa !154
  store i32 %i.it, ptr %i.io, align 8, !tbaa !2528
  %i.iu = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hv, i32 noundef 0), !inline_history !6365 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i105, label %_ZN5clang4Sema11ContextRAIID2Ev.exit107, label %bb.ar

bb.ar:                                            ; preds = %_ZN5clang11DeclContext9getParentEv.exit110
  store ptr %i.ih, ptr %i.hx, align 8, !tbaa !1039
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !2526
  store i64 %i.il, ptr %i.ik, align 8, !tbaa !196
  store i32 %i.in, ptr %i.im, align 8, !tbaa !2527
  store i32 %i.ip, ptr %i.io, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit107

_ZN5clang4Sema11ContextRAIID2Ev.exit107:          ; preds = %_ZN5clang11DeclContext9getParentEv.exit110, %bb.ar
  %i.iv = icmp eq i64 %i.ht, 1
  %i.iw = icmp eq i64 %i.iu, 1
  %or.cond = select i1 %i.iv, i1 true, i1 %i.iw
  br i1 %or.cond, label %.thread172, label %bb.as

bb.as:                                            ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit107
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !1724
  %i.iz = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.iy, i32 noundef 0) ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 1
  br i1 %i.ja, label %.thread172, label %.thread179

.thread179:                                       ; preds = %bb.as
  %i.jb = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 232
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.je = and i64 %i.iz, -2
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = and i64 %i.ht, -2
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = and i64 %i.iu, -2
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i81 = load i32, ptr %i.jk, align 4, !tbaa !268
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i82 = load i32, ptr %i.jl, align 8, !tbaa !268
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i83 = load i32, ptr %i.jm, align 4, !tbaa !268
  %i.jn = call noundef ptr @_ZN5clang23CXXExpansionStmtPattern15CreateIteratingERNS_10ASTContextEPNS_20CXXExpansionStmtDeclEPNS_4StmtEPNS_8DeclStmtES8_S8_S8_NS_14SourceLocationES9_S9_(ptr noundef nonnull align 8 dereferenceable(23904) %i.jd, ptr noundef nonnull %.0.i, ptr noundef %.166, ptr noundef %i.jf, ptr noundef %.sroa.0128.2, ptr noundef %i.jh, ptr noundef %i.jj, i32 %.sroa.0.0.copyload.i81, i32 %.sroa.0.0.copyload.i82, i32 %.sroa.0.0.copyload.i83) #36 ; 2 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1724
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !1808
  %i.jt = load ptr, ptr %2, align 8, !tbaa !153
  %i.ju = load i32, ptr %i.bx, align 8, !tbaa !154
  %i.jv = zext i32 %i.ju to i64
  call void @_ZN5clang4Sema50ApplyForRangeOrExpansionStatementLifetimeExtensionEPNS_7VarDeclEN4llvm8ArrayRefIPNS_24MaterializeTemporaryExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.jo, ptr noundef %i.js, ptr %i.jt, i64 %i.jv) #36
  br label %bb.av

.unreachabledefault:                              ; preds = %bb.ai
  unreachable

bb.at:                                            ; preds = %bb.ai
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1724
  %i.jy = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.jx, i32 noundef 0) ; 2 uses
  %i.jz = icmp eq i64 %i.jy, 1
  br i1 %i.jz, label %.thread172, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ka = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.kb = and i64 %i.jy, -2
  %i.kc = inttoptr i64 %i.kb to ptr
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i84 = load i32, ptr %i.kd, align 4, !tbaa !268
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i85 = load i32, ptr %i.ke, align 8, !tbaa !268
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i86 = load i32, ptr %i.kf, align 4, !tbaa !268
  %i.kg = load ptr, ptr %2, align 8, !tbaa !153
  store ptr %i.kg, ptr %3, align 8, !tbaa !3098
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE32TransformCXXExpansionStmtPatternEPNS_23CXXExpansionStmtPatternE:bb.a
bb.p:                                             ; preds = %bb.n
  %i.db = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit

_ZN5clang11DeclContext9getParentEv.exit:          ; preds = %bb.o, %bb.p
  %.0.i.i = phi ptr [ %i.da, %bb.o ], [ %i.dd, %bb.p ]
  %i.de = load ptr, ptr %i.cu, align 8, !tbaa !1039 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 584 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2526
  store ptr null, ptr %i.df, align 8, !tbaa !2526
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ck, i64 11136 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !196
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 80 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !2527
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2584 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !2528
  store ptr %.0.i.i, ptr %i.cu, align 8, !tbaa !1039
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !154
  store i32 %i.do, ptr %i.dj, align 8, !tbaa !2527
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ck, i64 3664
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !154
  store i32 %i.dq, ptr %i.dl, align 8, !tbaa !2528
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1724
  %i.dt = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ds) ; 2 uses
  %i.du = icmp eq i64 %i.dt, 1
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %_ZN5clang4Sema11ContextRAIID2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5clang11DeclContext9getParentEv.exit
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !1039
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !2526
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !196
  store i32 %i.dk, ptr %i.dj, align 8, !tbaa !2527
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit

_ZN5clang4Sema11ContextRAIID2Ev.exit:             ; preds = %_ZN5clang11DeclContext9getParentEv.exit, %bb.q
  br i1 %i.du, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1724
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ck, i64 616 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1039
  %i.dz = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #36
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i96 = load i64, ptr %i.ea, align 8 ; 3 uses
  %i.eb = and i64 %.0.copyload.i.i.i.i.i.i.i.i96, 4
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i96 to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit98

bb.t:                                             ; preds = %bb.r
  %i.ee = and i64 %.0.copyload.i.i.i.i.i.i.i.i96, -5
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit98

_ZN5clang11DeclContext9getParentEv.exit98:        ; preds = %bb.s, %bb.t
  %.0.i.i97 = phi ptr [ %i.ed, %bb.s ], [ %i.eg, %bb.t ]
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !1039 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ck, i64 584 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !2526
  store ptr null, ptr %i.ei, align 8, !tbaa !2526
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 11136 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !196
  %i.em = getelementptr inbounds nuw i8, ptr %i.ck, i64 80 ; 3 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !2527
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 2584 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !2528
  store ptr %.0.i.i97, ptr %i.dx, align 8, !tbaa !1039
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !154
  store i32 %i.er, ptr %i.em, align 8, !tbaa !2527
  %i.es = getelementptr inbounds nuw i8, ptr %i.ck, i64 3664
  %i.et = load i32, ptr %i.es, align 8, !tbaa !154
  store i32 %i.et, ptr %i.eo, align 8, !tbaa !2528
  %i.eu = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dw, i32 noundef 0), !inline_history !7439 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i93, label %_ZN5clang4Sema11ContextRAIID2Ev.exit95, label %bb.u

bb.u:                                             ; preds = %_ZN5clang11DeclContext9getParentEv.exit98
  store ptr %i.eh, ptr %i.dx, align 8, !tbaa !1039
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !2526
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !196
  store i32 %i.en, ptr %i.em, align 8, !tbaa !2527
  store i32 %i.ep, ptr %i.eo, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit95

_ZN5clang4Sema11ContextRAIID2Ev.exit95:           ; preds = %_ZN5clang11DeclContext9getParentEv.exit98, %bb.u
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.m, %_ZN5clang4Sema11ContextRAIID2Ev.exit95, %_ZN5clang4Sema11ContextRAIID2Ev.exit
  %.sroa.0130.0 = phi i64 [ %i.dt, %_ZN5clang4Sema11ContextRAIID2Ev.exit ], [ 0, %_ZN5clang4Sema11ContextRAIID2Ev.exit95 ], [ 0, %bb.m ]
  %.sroa.0128.0 = phi i64 [ 0, %_ZN5clang4Sema11ContextRAIID2Ev.exit ], [ %i.eu, %_ZN5clang4Sema11ContextRAIID2Ev.exit95 ], [ 0, %bb.m ]
  %i.ew = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.ex = call i64 @_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ew, i64 %.sroa.0130.0) #36
  %i.ey = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4592
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !153
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4600
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !154
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [792 x i8], ptr %i.fa, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -272 ; 4 uses
  %i.fg = icmp eq ptr %2, %i.ff
  br i1 %i.fg, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 -264 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !154 ; 6 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = load i32, ptr %i.bx, align 8, !tbaa !154 ; 4 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %.not.i.i77 = icmp ult i32 %i.fk, %i.fi
  br i1 %.not.i.i77, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not29.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not29.i.i, label %.sink.split.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !153 ; 2 uses
  %i.fn = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %.not31.i.i = icmp eq i32 %i.fi, 1
  br i1 %.not31.i.i, label %bb.aa, label %bb.z, !prof !1565

bb.z:                                             ; preds = %bb.y
  %.idx.i.i = shl nuw nsw i64 %i.fj, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fn, ptr align 8 %i.fm, i64 %.idx.i.i, i1 false)
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !3106
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !3106
  br label %.sink.split.i.i

bb.ab:                                            ; preds = %bb.w
  %i.fp = load i32, ptr %i.by, align 4, !tbaa !155
  %i.fq = icmp ult i32 %i.fp, %i.fi
  br i1 %i.fq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bx, align 8, !tbaa !154
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.bw, i64 noundef %i.fj, i64 noundef 8) #36
  br label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i

bb.ad:                                            ; preds = %bb.ab
  %.not28.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not28.i.i, label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !153 ; 2 uses
  %i.fs = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %.not33.i.i = icmp eq i32 %i.fk, 1
  br i1 %.not33.i.i, label %bb.ag, label %bb.af, !prof !1565

bb.af:                                            ; preds = %bb.ae
  %.idx32.i.i = shl nuw nsw i64 %i.fl, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fs, ptr align 8 %i.fr, i64 %.idx32.i.i, i1 false)
  br label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !3106
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !3106
  br label %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i

_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i: ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac
  %.022.i.i = phi i64 [ 0, %bb.ac ], [ 0, %bb.ad ], [ %i.fl, %bb.af ], [ 1, %bb.ag ] ; 4 uses
  %i.fu = load i32, ptr %i.fh, align 8, !tbaa !154
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.022.i.i, %i.fv
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i
  %i.fw = load ptr, ptr %i.ff, align 8, !tbaa !153
  %.idx35.i.i = shl nuw nsw i64 %.022.i.i, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx35.i.i
  %i.fy = load ptr, ptr %2, align 8, !tbaa !153
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.022.i.i
  %i.ga = sub nsw i64 %i.fv, %.022.i.i
  %gepdiff.i.i = shl nsw i64 %i.ga, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fz, ptr align 8 %i.fx, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ah, %_ZSt4copyIPKPN5clang24MaterializeTemporaryExprEPS2_ET0_T_S7_S6_.exit30.i.i, %bb.aa, %bb.z, %bb.x
  store i32 %i.fi, ptr %i.bx, align 8, !tbaa !154
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread: ; preds = %bb.v, %.sink.split.i.i
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.cb) #36
  %.pr = load i8, ptr %i.bz, align 8, !tbaa !3104
  %i.gb = and i64 %i.ex, -2
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = and i64 %.sroa.0128.0, -2
  %i.ge = inttoptr i64 %i.gd to ptr
  br label %bb.ai

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit95, %_ZN5clang4Sema11ContextRAIID2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.cb) #36
  br label %.thread172

bb.ai:                                            ; preds = %bb.l, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread
  %i.gf = phi i8 [ %.pr, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread ], [ %i.ca, %bb.l ]
  %.sroa.0130.2 = phi ptr [ %i.gc, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread ], [ null, %bb.l ]
  %.sroa.0128.2 = phi ptr [ %i.ge, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit.thread ], [ null, %bb.l ]
  switch i8 %i.gf, label %.unreachabledefault [
    i8 0, label %bb.aj
    i8 1, label %bb.al
    i8 3, label %bb.at
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !1724
  %i.gi = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gh, i32 noundef 0) ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %.thread172, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.gn = and i64 %i.gi, -2
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i78 = load i32, ptr %i.gp, align 4, !tbaa !268
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i79 = load i32, ptr %i.gq, align 8, !tbaa !268
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i80 = load i32, ptr %i.gr, align 4, !tbaa !268
  %i.gs = call noundef ptr @_ZN5clang23CXXExpansionStmtPattern17CreateEnumeratingERNS_10ASTContextEPNS_20CXXExpansionStmtDeclEPNS_4StmtEPNS_8DeclStmtENS_14SourceLocationES9_S9_(ptr noundef nonnull align 8 dereferenceable(23904) %i.gm, ptr noundef nonnull %.0.i, ptr noundef %.166, ptr noundef %i.go, i32 %.sroa.0.0.copyload.i78, i32 %.sroa.0.0.copyload.i79, i32 %.sroa.0.0.copyload.i80) #36
  br label %bb.av

bb.al:                                            ; preds = %bb.ai
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1724
  %i.gv = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 616 ; 4 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1039
  %i.gy = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.gx) #36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i102 = load i64, ptr %i.gz, align 8 ; 3 uses
  %i.ha = and i64 %.0.copyload.i.i.i.i.i.i.i.i102, 4
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hc = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i102 to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit104

bb.an:                                            ; preds = %bb.al
  %i.hd = and i64 %.0.copyload.i.i.i.i.i.i.i.i102, -5
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit104

_ZN5clang11DeclContext9getParentEv.exit104:       ; preds = %bb.am, %bb.an
  %.0.i.i103 = phi ptr [ %i.hc, %bb.am ], [ %i.hf, %bb.an ]
  %i.hg = load ptr, ptr %i.gw, align 8, !tbaa !1039 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 584 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2526
  store ptr null, ptr %i.hh, align 8, !tbaa !2526
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 11136 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !196
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 80 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !2527
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 2584 ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !2528
  store ptr %.0.i.i103, ptr %i.gw, align 8, !tbaa !1039
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !154
  store i32 %i.hq, ptr %i.hl, align 8, !tbaa !2527
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gv, i64 3664
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !154
  store i32 %i.hs, ptr %i.hn, align 8, !tbaa !2528
  %i.ht = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gu, i32 noundef 0), !inline_history !7439 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i99, label %_ZN5clang4Sema11ContextRAIID2Ev.exit101, label %bb.ao

bb.ao:                                            ; preds = %_ZN5clang11DeclContext9getParentEv.exit104
  store ptr %i.hg, ptr %i.gw, align 8, !tbaa !1039
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !2526
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !196
  store i32 %i.hm, ptr %i.hl, align 8, !tbaa !2527
  store i32 %i.ho, ptr %i.hn, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit101

_ZN5clang4Sema11ContextRAIID2Ev.exit101:          ; preds = %_ZN5clang11DeclContext9getParentEv.exit104, %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !1724
  %i.hw = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117 ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 616 ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !1039
  %i.hz = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.hy) #36
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i108 = load i64, ptr %i.ia, align 8 ; 3 uses
  %i.ib = and i64 %.0.copyload.i.i.i.i.i.i.i.i108, 4
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit101
  %i.id = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i108 to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit110

bb.aq:                                            ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit101
  %i.ie = and i64 %.0.copyload.i.i.i.i.i.i.i.i108, -5
  %i.if = inttoptr i64 %i.ie to ptr
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !1041
  br label %_ZN5clang11DeclContext9getParentEv.exit110

_ZN5clang11DeclContext9getParentEv.exit110:       ; preds = %bb.ap, %bb.aq
  %.0.i.i109 = phi ptr [ %i.id, %bb.ap ], [ %i.ig, %bb.aq ]
  %i.ih = load ptr, ptr %i.hx, align 8, !tbaa !1039 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hw, i64 584 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !2526
  store ptr null, ptr %i.ii, align 8, !tbaa !2526
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hw, i64 11136 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !196
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 80 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !2527
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 2584 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !2528
  store ptr %.0.i.i109, ptr %i.hx, align 8, !tbaa !1039
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !154
  store i32 %i.ir, ptr %i.im, align 8, !tbaa !2527
  %i.is = getelementptr inbounds nuw i8, ptr %i.hw, i64 3664
  %i.it = load i32, ptr %i.is, align 8, !tbaa !154
  store i32 %i.it, ptr %i.io, align 8, !tbaa !2528
  %i.iu = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hv, i32 noundef 0), !inline_history !7439 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i105, label %_ZN5clang4Sema11ContextRAIID2Ev.exit107, label %bb.ar

bb.ar:                                            ; preds = %_ZN5clang11DeclContext9getParentEv.exit110
  store ptr %i.ih, ptr %i.hx, align 8, !tbaa !1039
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !2526
  store i64 %i.il, ptr %i.ik, align 8, !tbaa !196
  store i32 %i.in, ptr %i.im, align 8, !tbaa !2527
  store i32 %i.ip, ptr %i.io, align 8, !tbaa !2528
  br label %_ZN5clang4Sema11ContextRAIID2Ev.exit107

_ZN5clang4Sema11ContextRAIID2Ev.exit107:          ; preds = %_ZN5clang11DeclContext9getParentEv.exit110, %bb.ar
  %i.iv = icmp eq i64 %i.ht, 1
  %i.iw = icmp eq i64 %i.iu, 1
  %or.cond = select i1 %i.iv, i1 true, i1 %i.iw
  br i1 %or.cond, label %.thread172, label %bb.as

bb.as:                                            ; preds = %_ZN5clang4Sema11ContextRAIID2Ev.exit107
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !1724
  %i.iz = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.iy, i32 noundef 0) ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 1
  br i1 %i.ja, label %.thread172, label %.thread179

.thread179:                                       ; preds = %bb.as
  %i.jb = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 232
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1048, !nonnull !116, !align !117
  %i.je = and i64 %i.iz, -2
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = and i64 %i.ht, -2
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = and i64 %i.iu, -2
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i81 = load i32, ptr %i.jk, align 4, !tbaa !268
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i82 = load i32, ptr %i.jl, align 8, !tbaa !268
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i83 = load i32, ptr %i.jm, align 4, !tbaa !268
  %i.jn = call noundef ptr @_ZN5clang23CXXExpansionStmtPattern15CreateIteratingERNS_10ASTContextEPNS_20CXXExpansionStmtDeclEPNS_4StmtEPNS_8DeclStmtES8_S8_S8_NS_14SourceLocationES9_S9_(ptr noundef nonnull align 8 dereferenceable(23904) %i.jd, ptr noundef nonnull %.0.i, ptr noundef %.166, ptr noundef %i.jf, ptr noundef %.sroa.0128.2, ptr noundef %i.jh, ptr noundef %i.jj, i32 %.sroa.0.0.copyload.i81, i32 %.sroa.0.0.copyload.i82, i32 %.sroa.0.0.copyload.i83) #36 ; 2 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1724
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !1808
  %i.jt = load ptr, ptr %2, align 8, !tbaa !153
  %i.ju = load i32, ptr %i.bx, align 8, !tbaa !154
  %i.jv = zext i32 %i.ju to i64
  call void @_ZN5clang4Sema50ApplyForRangeOrExpansionStatementLifetimeExtensionEPNS_7VarDeclEN4llvm8ArrayRefIPNS_24MaterializeTemporaryExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.jo, ptr noundef %i.js, ptr %i.jt, i64 %i.jv) #36
  br label %bb.av

.unreachabledefault:                              ; preds = %bb.ai
  unreachable

bb.at:                                            ; preds = %bb.ai
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1724
  %i.jy = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.jx, i32 noundef 0) ; 2 uses
  %i.jz = icmp eq i64 %i.jy, 1
  br i1 %i.jz, label %.thread172, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ka = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.kb = and i64 %i.jy, -2
  %i.kc = inttoptr i64 %i.kb to ptr
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i84 = load i32, ptr %i.kd, align 4, !tbaa !268
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i85 = load i32, ptr %i.ke, align 8, !tbaa !268
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i86 = load i32, ptr %i.kf, align 4, !tbaa !268
  %i.kg = load ptr, ptr %2, align 8, !tbaa !153
  store ptr %i.kg, ptr %3, align 8, !tbaa !3098
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_1
