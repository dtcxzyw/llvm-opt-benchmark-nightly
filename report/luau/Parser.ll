Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5874
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser9parseStatEv:bb.a
  %i.da = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 noundef 40) ; 2 uses
  tail call void @_ZN4Luau11AstStatExprC1ERKNS_8LocationEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull %i.cs)
  br label %.critedge10

bb.aa:                                            ; preds = %bb.y
  %i.db = load i32, ptr %i.c, align 8, !tbaa !117 ; 2 uses
  switch i32 %i.db, label %bb.ac [
    i32 44, label %bb.ab
    i32 61, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dc = tail call noundef ptr @_ZN4Luau6Parser15parseAssignmentEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull %i.cs)
  br label %.critedge10

bb.ac:                                            ; preds = %bb.aa
  %switch.tableidx.i = add i32 %i.db, -270        ; 2 uses
  %i.dd = icmp ugt i32 %switch.tableidx.i, 7
  br i1 %i.dd, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.ac
  %i.de = tail call noundef ptr @_ZN4Luau6Parser23parseCompoundAssignmentEPNS_7AstExprENS_13AstExprBinary2OpE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull %i.cs, i32 noundef %switch.tableidx.i)
  br label %.critedge10

bb.ad:                                            ; preds = %bb.ac
  %i.df = tail call ptr @_ZN4Luau13getIdentifierEPNS_7AstExprE(ptr noundef nonnull %i.cs) ; 7 uses
  %.not.i41 = icmp eq ptr %i.df, null
  br i1 %.not.i41, label %_ZNK4Luau7AstNameeqEPKc.exit61.thread, label %_ZNK4Luau7AstNameeqEPKc.exit

_ZNK4Luau7AstNameeqEPKc.exit:                     ; preds = %bb.ad
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(5) @.str.152) #40
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ae, label %.thread100

bb.ae:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 12 ; 2 uses
  %.sroa.031.0.copyload = load i64, ptr %i.di, align 4, !tbaa !29
  %i.dj = tail call noundef ptr @_ZN4Luau6Parser14parseTypeAliasERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.di, i1 noundef zeroext false, i64 %.sroa.031.0.copyload)
  br label %.critedge10

.thread100:                                       ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.dk = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !346, !range !64, !noundef !65
  %i.dl = trunc nuw i8 %i.dk to i1                ; 3 uses
  br i1 %i.dl, label %_ZNK4Luau7AstNameeqEPKc.exit43, label %_ZNK4Luau7AstNameeqEPKc.exit45

_ZNK4Luau7AstNameeqEPKc.exit43:                   ; preds = %.thread100
  %i.dm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(6) @.str.153) #40
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.af, label %_ZNK4Luau7AstNameeqEPKc.exit45

bb.af:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit43
  %i.do = call noundef ptr @_ZN4Luau6Parser14parseClassStatERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, i1 noundef zeroext false)
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit45:                   ; preds = %_ZNK4Luau7AstNameeqEPKc.exit43, %.thread100
  %i.dp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(7) @.str.154) #40
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ag, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ag:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit45
  %i.dr = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !346, !range !64, !noundef !65
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.sroa.023.0.copyload = load i32, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %.sroa.8.0.copyload = load i64, ptr %i.cr, align 4, !tbaa !29
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.928.0.copyload = load ptr, ptr %.sroa.928.0..sroa_idx, align 8, !tbaa !42 ; 4 uses
  switch i32 %.sroa.023.0.copyload, label %bb.ai [
    i32 302, label %.critedge
    i32 299, label %.critedge
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dt = icmp eq i32 %.sroa.023.0.copyload, 281
  %.not.i46 = icmp ne ptr %.sroa.928.0.copyload, null
  %or.cond.not = select i1 %i.dt, i1 %.not.i46, i1 false
  br i1 %or.cond.not, label %_ZNK4Luau7AstNameeqEPKc.exit47, label %_ZNK4Luau7AstNameeqEPKc.exit57

_ZNK4Luau7AstNameeqEPKc.exit47:                   ; preds = %bb.ai
  %i.du = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.928.0.copyload, ptr noundef nonnull dereferenceable(6) @.str.155) #40
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit47
  br i1 %i.dl, label %_ZNK4Luau7AstNameeqEPKc.exit49, label %_ZNK4Luau7AstNameeqEPKc.exit51

_ZNK4Luau7AstNameeqEPKc.exit49:                   ; preds = %bb.aj
  %i.dw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.928.0.copyload, ptr noundef nonnull dereferenceable(6) @.str.153) #40
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %.critedge, label %_ZNK4Luau7AstNameeqEPKc.exit51

.critedge:                                        ; preds = %_ZNK4Luau7AstNameeqEPKc.exit47, %bb.ah, %bb.ah, %_ZNK4Luau7AstNameeqEPKc.exit49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 12 ; 2 uses
  %.sroa.022.0.copyload = load i64, ptr %i.dy, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.dz = call noundef ptr @_ZN4Luau6Parser16parseExportValueERKNS_8LocationENS_8PositionERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 %.sroa.022.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit51:                   ; preds = %bb.aj, %_ZNK4Luau7AstNameeqEPKc.exit49
  %i.ea = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.928.0.copyload, ptr noundef nonnull dereferenceable(5) @.str.152) #40
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ak, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ak:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit51
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.ed = tail call noundef ptr @_ZN4Luau6Parser14parseTypeAliasERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ec, i1 noundef zeroext true, i64 %.sroa.8.0.copyload)
  br label %.critedge10

bb.al:                                            ; preds = %bb.ag
  br i1 %i.dl, label %bb.am, label %.critedge12

bb.am:                                            ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !42 ; 2 uses
  %.not.i52 = icmp eq ptr %i.ef, null
  br i1 %.not.i52, label %.critedge12, label %_ZNK4Luau7AstNameeqEPKc.exit53

_ZNK4Luau7AstNameeqEPKc.exit53:                   ; preds = %bb.am
  %i.eg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ef, ptr noundef nonnull dereferenceable(6) @.str.153) #40
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.an, label %.critedge12

bb.an:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit53
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.ei = call noundef ptr @_ZN4Luau6Parser14parseClassStatERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, i1 noundef zeroext true)
  br label %.critedge10

.critedge12:                                      ; preds = %bb.am, %bb.al, %_ZNK4Luau7AstNameeqEPKc.exit53
  %i.ej = load i32, ptr %i.c, align 8, !tbaa !117
  %i.ek = icmp eq i32 %i.ej, 281
  br i1 %i.ek, label %bb.ao, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ao:                                            ; preds = %.critedge12
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !42 ; 2 uses
  %.not.i54 = icmp eq ptr %i.em, null
  br i1 %.not.i54, label %_ZNK4Luau7AstNameeqEPKc.exit57, label %_ZNK4Luau7AstNameeqEPKc.exit55

_ZNK4Luau7AstNameeqEPKc.exit55:                   ; preds = %bb.ao
  %i.en = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.em, ptr noundef nonnull dereferenceable(5) @.str.152) #40
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ap, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ap:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit55
  %.sroa.019.0.copyload = load i64, ptr %i.cr, align 4, !tbaa !29
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.eq = tail call noundef ptr @_ZN4Luau6Parser14parseTypeAliasERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ep, i1 noundef zeroext true, i64 %.sroa.019.0.copyload)
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit57:                   ; preds = %bb.ao, %bb.ai, %_ZNK4Luau7AstNameeqEPKc.exit51, %_ZNK4Luau7AstNameeqEPKc.exit45, %_ZNK4Luau7AstNameeqEPKc.exit55, %.critedge12
  %i.er = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(9) @.str.156) #40
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.aq, label %_ZNK4Luau7AstNameeqEPKc.exit59

bb.aq:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit57
  %i.et = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.eu = tail call noundef ptr @_ZN4Luau6Parser13parseContinueERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.et)
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit59:                   ; preds = %_ZNK4Luau7AstNameeqEPKc.exit57
  %i.ev = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(6) @.str.155) #40
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ar, label %.thread119

bb.ar:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit59
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %.sroa.016.0.copyload = load i64, ptr %i.ex, align 4, !tbaa !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ey = call noundef ptr @_ZN4Luau6Parser10parseLocalENS_8LocationENS_8PositionERKNS_8AstArrayIPNS_7AstAttrEEEbPNS_10TempVectorIPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %.sroa.016.0.copyload, i64 poison, i64 %.sroa.016.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.critedge10

.thread119:                                       ; preds = %_ZNK4Luau7AstNameeqEPKc.exit59
  %i.ez = load i8, ptr %0, align 8, !tbaa !355, !range !64, !noundef !65
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_ZNK4Luau7AstNameeqEPKc.exit61, label %_ZNK4Luau7AstNameeqEPKc.exit61.thread

_ZNK4Luau7AstNameeqEPKc.exit61:                   ; preds = %.thread119
  %i.fb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(8) @.str.157) #40
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.as, label %_ZNK4Luau7AstNameeqEPKc.exit61.thread

bb.as:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit61
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.fe = call noundef ptr @_ZN4Luau6Parser16parseDeclarationERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit61.thread:            ; preds = %bb.ad, %.thread119, %_ZNK4Luau7AstNameeqEPKc.exit61
  %i.ff = load <2 x i32>, ptr %7, align 8
  %i.fg = load <2 x i32>, ptr %i.cr, align 4
  %i.fh = icmp eq <2 x i32> %i.ff, %i.fg          ; 2 uses
  %13 = extractelement <2 x i1> %i.fh, i64 0
  %14 = extractelement <2 x i1> %i.fh, i64 1
  %15 = select i1 %14, i1 %13, i1 false
  br i1 %15, label %_ZNK4Luau8LocationeqERKS0_.exit, label %_ZNK4Luau8LocationeqERKS0_.exit.thread

_ZNK4Luau8LocationeqERKS0_.exit:                  ; preds = %_ZNK4Luau7AstNameeqEPKc.exit61.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.fk = load <2 x i32>, ptr %i.fi, align 8
  %i.fl = load <2 x i32>, ptr %i.fj, align 4
  %i.fm = icmp eq <2 x i32> %i.fk, %i.fl          ; 2 uses
  %16 = extractelement <2 x i1> %i.fm, i64 0
  %17 = extractelement <2 x i1> %i.fm, i64 1
  %18 = select i1 %17, i1 %16, i1 false
  br i1 %18, label %bb.at, label %_ZNK4Luau8LocationeqERKS0_.exit.thread

bb.at:                                            ; preds = %_ZNK4Luau8LocationeqERKS0_.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZNK4Luau8LocationeqERKS0_.exit.thread

_ZNK4Luau8LocationeqERKS0_.exit.thread:           ; preds = %_ZNK4Luau7AstNameeqEPKc.exit61.thread, %bb.at, %_ZNK4Luau8LocationeqERKS0_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !336, !nonnull !65, !align !337
  %i.fq = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 noundef 8) ; 2 uses
  store ptr %i.cs, ptr %i.fq, align 8, !tbaa !51
  store ptr %i.fq, ptr %11, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.fr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.fs = call noundef ptr (ptr, ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportStatErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEERKNS4_IPNS_7AstStatEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.158)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %.critedge10

.critedge10:                                      ; preds = %bb.ae, %bb.af, %bb.an, %bb.ap, %bb.aq, %bb.ar, %bb.as, %_ZNK4Luau8LocationeqERKS0_.exit.thread, %bb.ak, %.critedge, %.thread, %bb.ab, %bb.z
  %.3 = phi ptr [ %i.da, %bb.z ], [ %i.dc, %bb.ab ], [ %i.de, %.thread ], [ %i.dj, %bb.ae ], [ %i.do, %bb.af ], [ %i.eu, %bb.aq ], [ %i.ey, %bb.ar ], [ %i.fe, %bb.as ], [ %i.fs, %_ZNK4Luau8LocationeqERKS0_.exit.thread ], [ %i.eq, %bb.ap ], [ %i.ei, %bb.an ], [ %i.dz, %.critedge ], [ %i.ed, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.au

bb.au:                                            ; preds = %.critedge10, %bb.x, %bb.w, %bb.v, %bb.u, %_ZN4Luau6Parser17parseFunctionStatERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.4 = phi ptr [ %.3, %.critedge10 ], [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.cd, %_ZN4Luau6Parser17parseFunctionStatERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE.exit ], [ %i.cn, %bb.u ], [ %i.co, %bb.v ], [ %i.cp, %bb.w ], [ %i.cq, %bb.x ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser7parseIfEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::optional.182", align 16 ; 5 uses
  %2 = alloca %"class.std::optional.182", align 4 ; 6 uses
  %3 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 5 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 7 uses
  %.sroa.043.0.copyload = load i64, ptr %i.b, align 4, !tbaa !29
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.c = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %.sroa.039.0.copyload = load i32, ptr %i.a, align 8, !tbaa !228 ; 2 uses
  %i.d = load <2 x i64>, ptr %i.b, align 4, !tbaa !29
  %.sroa.4.0.copyload = load i64, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i8 0, ptr %i.e, align 16, !tbaa !357
  %.not.i = icmp eq i32 %.sroa.039.0.copyload, 308
  br i1 %.not.i, label %bb.b, label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit

_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 308, ptr noundef nonnull @.str.159) ; 0 uses
  br label %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  store <2 x i64> %i.d, ptr %1, align 16
  store i8 1, ptr %i.e, align 16, !tbaa !357
  br label %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit

_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit: ; preds = %bb.b, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = tail call noundef ptr @_ZN4Luau6Parser17parseBlockNoScopeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !inline_history !110 ; 4 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  %i.v = and i64 %i.n, 4294967295                 ; 6 uses
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.f

._crit_edge.loopexit.i.i:                         ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !108 ; 2 uses
  %.pre9.i.i = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %.pre10.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre11.i.i = ptrtoint ptr %.pre9.i.i to i64
  %.pre13.i.i = sub i64 %.pre10.i.i, %.pre11.i.i
  %.pre15.i.i = ashr exact i64 %.pre13.i.i, 3
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  %.pre-phi16.i.i = phi i64 [ %.pre15.i.i, %._crit_edge.loopexit.i.i ], [ %i.u, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ] ; 3 uses
  %i.y = phi ptr [ %.pre9.i.i, %._crit_edge.loopexit.i.i ], [ %i.q, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ]
  %i.z = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.p, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ]
  %i.aa = icmp ult i64 %.pre-phi16.i.i, %i.v
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = sub nuw nsw i64 %i.v, %.pre-phi16.i.i
  tail call void @_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ab), !inline_history !110
  br label %_ZN4Luau6Parser10parseBlockEv.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = icmp ugt i64 %.pre-phi16.i.i, %i.v
  br i1 %i.ac, label %bb.e, label %_ZN4Luau6Parser10parseBlockEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN4Luau6Parser10parseBlockEv.exit, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !108
  br label %_ZN4Luau6Parser10parseBlockEv.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.ae, %bb.f ]
  %i.ae = add i64 %.08.i.i, -1                    ; 3 uses
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !116
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !inline_history !110
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !112
  %i.al = icmp ugt i64 %i.ae, %i.v
  br i1 %i.al, label %bb.f, label %._crit_edge.loopexit.i.i, !llvm.loop !3

_ZN4Luau6Parser10parseBlockEv.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 0, ptr %i.am, align 4, !tbaa !357
  %i.an = load i32, ptr %i.a, align 8, !tbaa !117
  switch i32 %i.an, label %bb.m [
    i32 295, label %bb.g
    i32 294, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7
  ]

bb.g:                                             ; preds = %_ZN4Luau6Parser10parseBlockEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 1, ptr %i.ao, align 8, !tbaa !360
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !315 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !315
  %i.as = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !332
  %i.at = icmp ugt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.160) #37
  unreachable

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  store i8 1, ptr %i.am, align 4, !tbaa !357
  %i.au = tail call noundef ptr @_ZN4Luau6Parser7parseIfEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) ; 2 uses
  %.sroa.529.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %.sroa.529.0.copyload31 = load i64, ptr %.sroa.529.0..sroa_idx30, align 4, !tbaa !29
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !315
  br label %bb.q

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7: ; preds = %_ZN4Luau6Parser10parseBlockEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 1, ptr %i.av, align 8, !tbaa !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  store i8 1, ptr %i.am, align 4, !tbaa !357
  %.sroa.5.0.copyload24 = load i64, ptr %i.b, align 4, !tbaa !29
  %.sroa.6.0.copyload26 = load i64, ptr %.sroa.545.0..sroa_idx, align 4, !tbaa !29
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = tail call noundef ptr @_ZN4Luau6Parser17parseBlockNoScopeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !inline_history !110 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !108 ; 2 uses
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 3 uses
  %i.bj = and i64 %i.bb, 4294967295               ; 6 uses
  %i.bk = icmp ugt i64 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i12, label %._crit_edge.i.i8

.lr.ph.i.i12:                                     ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.l

._crit_edge.loopexit.i.i14:                       ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN4Luau6Parser15parseTypeParamsEPNS_8PositionEPNS_10TempVectorIS1_EES2_:bb.a
  %.pn63.pn = phi { ptr, i32 } [ %i.gy, %bb.bi ], [ %.pn56.pn.pn, %.loopexit.split-lp202 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hr = load ptr, ptr %i.b, align 8, !tbaa !504
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 %i.h ; 2 uses
  %i.ht = load ptr, ptr %i.c, align 8, !tbaa !504
  %.not.i.i.i145 = icmp eq ptr %i.hs, %i.ht
  br i1 %.not.i.i.i145, label %_ZN4Luau10TempVectorINS_13AstTypeOrPackEED2Ev.exit147, label %_ZSt8_DestroyIPN4Luau13AstTypeOrPackES1_EvT_S3_RSaIT0_E.exit.i.i.i.i146

_ZSt8_DestroyIPN4Luau13AstTypeOrPackES1_EvT_S3_RSaIT0_E.exit.i.i.i.i146: ; preds = %.loopexit.split-lp
  store ptr %i.hs, ptr %i.c, align 8, !tbaa !1128
  br label %_ZN4Luau10TempVectorINS_13AstTypeOrPackEED2Ev.exit147

_ZN4Luau10TempVectorINS_13AstTypeOrPackEED2Ev.exit147: ; preds = %.loopexit.split-lp, %_ZSt8_DestroyIPN4Luau13AstTypeOrPackES1_EvT_S3_RSaIT0_E.exit.i.i.i.i146
  resume { ptr, i32 } %.pn63.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser22reportMissingTypeErrorERKNS_8LocationES3_PKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, ...) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %5 = alloca %"struct.Luau::AstArray.255", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336, !nonnull !65, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 56
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -1
  %i.m = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 56) ; 2 uses
  call void @_ZN4Luau12AstTypeErrorC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstTypeEEEbj(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext true, i32 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret ptr %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967299) i64 @_ZN4Luau6Parser12parseUnaryOpERKNS_6LexemeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !117
  switch i32 %i.a, label %bb.d [
    i32 304, label %bb.e
    i32 45, label %bb.b
    i32 35, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.4.0 = phi i64 [ 0, %bb.d ], [ 4294967298, %bb.c ], [ 4294967297, %bb.b ], [ 4294967296, %bb.a ]
  ret i64 %.sroa.4.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967312) i64 @_ZN4Luau6Parser13parseBinaryOpERKNS_6LexemeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !117
  switch i32 %i.a, label %bb.q [
    i32 43, label %bb.r
    i32 45, label %bb.b
    i32 42, label %bb.c
    i32 47, label %bb.d
    i32 265, label %bb.e
    i32 37, label %bb.f
    i32 94, label %bb.g
    i32 261, label %bb.h
    i32 260, label %bb.i
    i32 257, label %bb.j
    i32 60, label %bb.k
    i32 258, label %bb.l
    i32 62, label %bb.m
    i32 259, label %bb.n
    i32 291, label %bb.o
    i32 305, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.17.0 = phi i64 [ 0, %bb.q ], [ 4294967311, %bb.p ], [ 4294967297, %bb.b ], [ 4294967298, %bb.c ], [ 4294967299, %bb.d ], [ 4294967300, %bb.e ], [ 4294967301, %bb.f ], [ 4294967302, %bb.g ], [ 4294967303, %bb.h ], [ 4294967304, %bb.i ], [ 4294967305, %bb.j ], [ 4294967306, %bb.k ], [ 4294967307, %bb.l ], [ 4294967308, %bb.m ], [ 4294967309, %bb.n ], [ 4294967310, %bb.o ], [ 4294967296, %bb.a ]
  ret i64 %.sroa.17.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 0, 4294967297) i64 @_ZN4Luau6Parser21checkUnaryConfusablesEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  %.not = icmp eq i32 %i.b, 33
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !56
  call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull @.str.280)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.1 = phi i64 [ 4294967296, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.2.1
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 0, 4294967312) i64 @_ZN4Luau6Parser22checkBinaryConfusablesEPKNS0_16BinaryOpPriorityEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Lexeme", align 8     ; 10 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %5 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %6 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  switch i32 %i.b, label %bb.n [
    i32 38, label %bb.b
    i32 124, label %bb.b
    i32 33, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 4, !tbaa !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.c)
  %i.e = load i32, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.f = icmp eq i32 %i.e, 38
  %i.g = load i32, ptr %3, align 8                ; 3 uses
  %i.h = icmp eq i32 %i.g, 38
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load <2 x i32>, ptr %i.i, align 4
  %i.l = load <2 x i32>, ptr %i.j, align 4
  %i.m = icmp eq <2 x i32> %i.k, %i.l             ; 2 uses
  %7 = extractelement <2 x i1> %i.m, i64 0
  %8 = extractelement <2 x i1> %i.m, i64 1
  %9 = select i1 %8, i1 %7, i1 false
  br i1 %9, label %bb.d, label %.thread33

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i8, ptr %i.n, align 1, !tbaa !451
  %i.p = zext i8 %i.o to i32
  %i.q = icmp ult i32 %2, %i.p
  br i1 %i.q, label %bb.e, label %.thread33

bb.e:                                             ; preds = %bb.d
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 %.sroa.0.0.copyload, ptr %4, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = load i64, ptr %i.s, align 4, !tbaa !29
  store i64 %i.t, ptr %i.r, align 8, !tbaa !29
  call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull @.str.281)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.thread33

bb.f:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.e, 124
  %i.v = icmp eq i32 %i.g, 124
  %or.cond5 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.y = load <2 x i32>, ptr %i.w, align 4
  %i.z = load <2 x i32>, ptr %i.x, align 4
  %i.aa = icmp eq <2 x i32> %i.y, %i.z            ; 2 uses
  %10 = extractelement <2 x i1> %i.aa, i64 0
  %11 = extractelement <2 x i1> %i.aa, i64 1
  %12 = select i1 %11, i1 %10, i1 false
  br i1 %12, label %bb.h, label %.thread33

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !451
  %i.ad = zext i8 %i.ac to i32
  %i.ae = icmp ult i32 %2, %i.ad
  br i1 %i.ae, label %bb.i, label %.thread33

bb.i:                                             ; preds = %bb.h
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store i64 %.sroa.0.0.copyload, ptr %5, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ah = load i64, ptr %i.ag, align 4, !tbaa !29
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !29
  call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull @.str.282)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.thread33

bb.j:                                             ; preds = %bb.f
  %i.ai = icmp eq i32 %i.e, 33
  %i.aj = icmp eq i32 %i.g, 61
  %or.cond8 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond8, label %bb.k, label %.thread33

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.am = load <2 x i32>, ptr %i.ak, align 4
  %i.an = load <2 x i32>, ptr %i.al, align 4
  %i.ao = icmp eq <2 x i32> %i.am, %i.an          ; 2 uses
  %13 = extractelement <2 x i1> %i.ao, i64 0
  %14 = extractelement <2 x i1> %i.ao, i64 1
  %15 = select i1 %14, i1 %13, i1 false
  br i1 %15, label %bb.l, label %.thread33

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !451
  %i.ar = zext i8 %i.aq to i32
  %i.as = icmp ult i32 %2, %i.ar
  br i1 %i.as, label %bb.m, label %.thread33

bb.m:                                             ; preds = %bb.l
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i64 %.sroa.0.0.copyload, ptr %6, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.av = load i64, ptr %i.au, align 4, !tbaa !29
  store i64 %i.av, ptr %i.at, align 8, !tbaa !29
  call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull @.str.283)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.thread33

.thread33:                                        ; preds = %bb.c, %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.i, %bb.e
  %.sroa.4.0 = phi i64 [ 4294967310, %bb.e ], [ 4294967311, %bb.i ], [ 4294967304, %bb.m ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread33
  %.sroa.030.0.insert.insert = phi i64 [ %.sroa.4.0, %.thread33 ], [ 0, %bb.a ]
  ret i64 %.sroa.030.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser18parseAssertionExprEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %2 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %.sroa.06.0.copyload = load i64, ptr %i.c, align 4, !tbaa !29
  %i.d = tail call noundef ptr @_ZN4Luau6Parser15parseSimpleExprEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !117
  %i.f = icmp eq i32 %i.e, 264
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 4, !tbaa !29
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !315  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !56
  %i.j = load i32, ptr %i.b, align 8, !tbaa !117
  switch i32 %i.j, label %bb.c [
    i32 124, label %_ZN4Luau6Parser9parseTypeEb.exit
    i32 38, label %_ZN4Luau6Parser9parseTypeEb.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = tail call { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !409
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  store i32 %i.i, ptr %i.h, align 4, !tbaa !315
  br label %_ZN4Luau6Parser9parseTypeEb.exit

_ZN4Luau6Parser9parseTypeEb.exit:                 ; preds = %bb.b, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ], [ null, %bb.b ]
  %i.m = call noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !409 ; 2 uses
  store i32 %i.i, ptr %i.h, align 4, !tbaa !315
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !336, !nonnull !65, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i64 %.sroa.06.0.copyload, ptr %2, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.r = load i64, ptr %i.q, align 4, !tbaa !29
  store i64 %i.r, ptr %i.p, align 8, !tbaa !29
  %i.s = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef 48) ; 4 uses
  call void @_ZN4Luau20AstExprTypeAssertionC1ERKNS_8LocationEPNS_7AstExprEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %i.d, ptr noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i8, ptr %i.t, align 8, !tbaa !351, !range !64, !noundef !65
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4Luau6Parser9parseTypeEb.exit
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !336, !nonnull !65, !align !337
  %i.x = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef 12) ; 2 uses
  call void @_ZN4Luau20CstExprTypeAssertionC1ENS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.s, ptr %i.a, align 8, !tbaa !352
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.x, ptr %i.z, align 8, !tbaa !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4Luau6Parser9parseTypeEb.exit, %bb.d
  %.0 = phi ptr [ %i.s, %_ZN4Luau6Parser9parseTypeEb.exit ], [ %i.s, %bb.d ], [ %i.d, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser15parsePrefixExprEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 5 uses
  %2 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !117
  %i.d = icmp eq i32 %i.c, 40
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.f = load i64, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i32 40, ptr %1, align 4, !tbaa !317
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i64 %i.f, ptr %i.g, align 4, !tbaa !29
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.h = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %i.i = load i32, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq i32 %i.i, 41                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.i, 61
  %i.k = select i1 %i.j, ptr @.str.286, ptr null
  call void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 41, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = load i64, ptr %i.n, align 4, !tbaa !29
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0 = phi i64 [ %i.o, %bb.d ], [ %i.m, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !336, !nonnull !65, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i64 %i.f, ptr %2, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.06.0, ptr %i.r, align 8, !tbaa !29
  %i.s = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 40) ; 3 uses
  call void @_ZN4Luau12AstExprGroupC1ERKNS_8LocationEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i8, ptr %i.t, align 8, !tbaa !351, !range !64, !noundef !65
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !336, !nonnull !65, !align !337
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %storemerge = phi i64 [ %i.y, %bb.g ], [ -1, %bb.f ]
  %i.z = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef 12) ; 2 uses
  call void @_ZN4Luau12CstExprGroupC1ENS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 %storemerge)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.s, ptr %i.a, align 8, !tbaa !352
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ac = tail call noundef ptr @_ZN4Luau6Parser13parseNameExprEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.284)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef %3) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.Luau::Lexeme", align 8     ; 4 uses
  %6 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.Luau::Lexeme", align 8     ; 5 uses
  %9 = alloca %"struct.Luau::Location", align 4   ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN4Luau6Parser28expectMatchAndConsumeRecoverEcRKNS0_11MatchLexemeEb:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %.01116 = load i32, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !404
  %i.h = icmp ne i32 %i.c, %i.g
  %.not17 = icmp eq i32 %.01116, %i.a             ; 2 uses
  %or.cond18 = select i1 %i.h, i1 true, i1 %.not17
  br i1 %or.cond18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01119 = phi i32 [ %.011, %bb.c ], [ %.01116, %bb.b ]
  %i.i = zext i32 %.01119 to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %.011 = load i32, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  %i.n = load i32, ptr %i.f, align 4, !tbaa !404
  %i.o = icmp ne i32 %i.c, %i.n
  %.not = icmp eq i32 %.011, %i.a                 ; 2 uses
  %or.cond = select i1 %i.o, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !1201

.critedge:                                        ; preds = %bb.c, %bb.b
  %.not.lcssa = phi i1 [ %.not17, %bb.b ], [ %.not, %bb.c ]
  br i1 %.not.lcssa, label %bb.d, label %.critedge15

bb.d:                                             ; preds = %.critedge
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %.critedge15

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.p)
  %i.q = load i32, ptr %4, align 8, !tbaa !117
  %i.r = icmp eq i32 %i.q, %i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %i.r, label %bb.f, label %.critedge15

bb.f:                                             ; preds = %bb.e
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %.critedge15

.critedge15:                                      ; preds = %.lr.ph, %bb.e, %.critedge, %bb.d, %bb.f
  %.1 = phi i1 [ true, %bb.f ], [ true, %bb.d ], [ false, %.critedge ], [ false, %bb.e ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6Parser41expectMatchEndAndConsumeFailWithLookaheadENS_6Lexeme4TypeERKNS0_11MatchLexemeE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.Luau::Lexeme", align 8     ; 4 uses
  %5 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.Luau::Lexeme", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1203 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1204
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !452
  %i.g = icmp ugt i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN4Luau6LexemeC1ERKNS_8LocationENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.b)
  call void @_ZNK4Luau6Lexeme8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.h = load ptr, ptr %3, align 8, !tbaa !41
  %i.i = load i32, ptr %i.c, align 4, !tbaa !1204
  %i.j = add i32 %i.i, 1
  invoke void (ptr, ptr, ...) @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.319, ptr noundef %i.h, i32 noundef %i.j)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %6, align 8, !tbaa !41
  invoke void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef %i.k)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %6, align 8, !tbaa !41     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !42
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.q = load ptr, ptr %3, align 8, !tbaa !41     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !41     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !42
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ac = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef null)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %i.ah)
  %i.ai = load i32, ptr %7, align 8, !tbaa !117
  %i.aj = icmp eq i32 %i.ai, %1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret i1 %i.aj
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK4Luau8LocationeqERKS0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -48
  %i.g = load <2 x i32>, ptr %1, align 4
  %i.h = load <2 x i32>, ptr %i.f, align 4
  %i.i = icmp eq <2 x i32> %i.g, %i.h             ; 2 uses
  %6 = extractelement <2 x i1> %i.i, i64 0
  %7 = extractelement <2 x i1> %i.i, i64 1
  %8 = select i1 %7, i1 %6, i1 false
  br i1 %8, label %_ZNK4Luau8LocationeqERKS0_.exit, label %_ZNK4Luau8LocationeqERKS0_.exit.thread

_ZNK4Luau8LocationeqERKS0_.exit:                  ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -40
  %i.l = load <2 x i32>, ptr %i.j, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %9 = extractelement <2 x i1> %i.n, i64 0
  %10 = extractelement <2 x i1> %i.n, i64 1
  %11 = select i1 %10, i1 %9, i1 false
  br i1 %11, label %bb.o, label %_ZNK4Luau8LocationeqERKS0_.exit.thread

_ZNK4Luau8LocationeqERKS0_.exit.thread:           ; preds = %bb.b, %_ZNK4Luau8LocationeqERKS0_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4Luau7vformatB5cxx11EPKcP13__va_list_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2, ptr noundef %3)
  %i.o = load i32, ptr @_ZN4FInt19LuauParseErrorLimitE, align 8, !tbaa !332
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNK4Luau8LocationeqERKS0_.exit.thread
  %i.q = call ptr @__cxa_allocate_exception(i64 56) #34 ; 7 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4Luau10ParseErrorE, i64 16), ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !38
  %i.u = load ptr, ptr %5, align 8, !tbaa !41     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !43   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZN4Luau10ParseErrorC2ERKNS_8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.u, ptr %i.s, align 8, !tbaa !41
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !42
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %_ZN4Luau10ParseErrorC2ERKNS_8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4Luau10ParseErrorC2ERKNS_8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = phi i64 [ %i.y, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !43
  store ptr %i.v, ptr %5, align 8, !tbaa !41
  store i64 0, ptr %i.ad, align 8, !tbaa !43
  store i8 0, ptr %i.v, align 8, !tbaa !42
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN4Luau10ParseErrorE, ptr nonnull @_ZN4Luau10ParseErrorD2Ev) #37
          to label %bb.p unwind label %bb.g

bb.f:                                             ; preds = %bb.l, %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %_ZN4Luau10ParseErrorC2ERKNS_8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.v
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !42
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %_ZNK4Luau8LocationeqERKS0_.exit.thread
  %i.am = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EE12emplace_backIJRKNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.f       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 56
  %i.at = load i32, ptr @_ZN4FInt19LuauParseErrorLimitE, align 8, !tbaa !332 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %.not = icmp ult i64 %i.as, %i.au
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1205, !range !64, !noundef !65
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull @.str.321, i32 noundef %i.at) #37
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ay = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.n
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !42
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4Luau8LocationeqERKS0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ag, %bb.g ]
  %i.bd = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !42
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %_ZN4Luau10ParseErrorC2ERKNS_8LocationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EE12emplace_backIJRKNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !38
  %i.g = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.i, ptr %i.a, align 8, !tbaa !39
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !41
  %i.l = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.l, ptr %i.f, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !42
  store i8 %i.n, ptr %i.m, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = load ptr, ptr %3, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
end_hunk_2
