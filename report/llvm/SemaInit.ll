Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaInit?download=true
inline.NumInlined: 8999
inline.NumDeleted: 3745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_115InitListChecker26FillInEmptyInitializationsERKN5clang17InitializedEntityEPNS1_12InitListExprERbS6_jb:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select303, i64 28
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 127
  %i.az = add nsw i32 %i.ay, -63
  %i.ba = icmp ult i32 %i.az, -3
  br i1 %i.ba, label %.thread258, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select303) ; 2 uses
  %i.bc = tail call noundef ptr @_ZNK5clang13CXXRecordDecl9bases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select303) ; 2 uses
  %.not169319 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not169319, label %.thread258, label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph322, %bb.ad
  %.0147321 = phi i32 [ 0, %.lr.ph322 ], [ %i.eb, %bb.ad ] ; 6 uses
  %.0158320 = phi ptr [ %i.bb, %.lr.ph322 ], [ %i.ec, %bb.ad ] ; 3 uses
  %i.bk = load i8, ptr %i.bd, align 8, !tbaa !1134, !range !1092, !noundef !711
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.critedge181, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  store i32 0, ptr %i.bf, align 8, !alias.scope !1834
  store i32 10, ptr %7, align 8, !tbaa !1162, !alias.scope !1834
  store ptr %1, ptr %i.be, align 8, !tbaa !1163, !alias.scope !1834
  %i.bm = ptrtoint ptr %.0158320 to i64
  %i.bn = and i64 %i.bm, -5
  store i64 %i.bn, ptr %i.bg, align 8, !tbaa !713, !alias.scope !1834
  %i.bo = getelementptr inbounds nuw i8, ptr %.0158320, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1233, !noalias !1834
  %.sroa.0.0.copyload.i.i.i232 = load i64, ptr %i.bp, align 8, !tbaa !713, !noalias !1834 ; 2 uses
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i232, -16
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !716, !noalias !1834 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.0.0.copyload.i.i.i.i233 = load i64, ptr %i.bt, align 8, !tbaa !713, !noalias !1834
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i233, 15
  %.not.i.i.i234 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i234, label %_ZN5clang17InitializedEntity14InitializeBaseERNS_10ASTContextEPKNS_16CXXBaseSpecifierEbPKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i.i232) #25, !noalias !1834
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0
  br label %_ZN5clang17InitializedEntity14InitializeBaseERNS_10ASTContextEPKNS_16CXXBaseSpecifierEbPKS0_.exit

_ZN5clang17InitializedEntity14InitializeBaseERNS_10ASTContextEPKNS_16CXXBaseSpecifierEbPKS0_.exit: ; preds = %bb.n, %bb.o
  %.sroa.03.0.in.in.i.i.i = phi ptr [ %i.bw, %bb.o ], [ %i.bs, %bb.n ]
  %.sroa.03.0.in.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i to i64
  %.sroa.03.0.i.i.i = and i64 %.sroa.03.0.in.i.i.i, -8
  store i64 %.sroa.03.0.i.i.i, ptr %i.bh, align 8, !tbaa !713, !alias.scope !1834
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !1146
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !1147 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  %.not.i = icmp ult i32 %.0147321, %i.cd
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5clang17InitializedEntity14InitializeBaseERNS_10ASTContextEPKNS_16CXXBaseSpecifierEbPKS0_.exit
  %i.ce = zext i32 %.0147321 to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1149 ; 4 uses
  %.not31.i = icmp eq ptr %i.cg, null
  br i1 %.not31.i, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p, %_ZN5clang17InitializedEntity14InitializeBaseERNS_10ASTContextEPKNS_16CXXBaseSpecifierEbPKS0_.exit
  br i1 %6, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1151, !nonnull !711, !align !712
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 232
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !710, !nonnull !711, !align !712
  %i.ck = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(23904) %i.cj, i32 noundef 8) #25, !inline_history !1832 ; 9 uses
  %i.cl = load ptr, ptr %i.bo, align 8, !tbaa !1233
  %.sroa.0.0.copyload.i.i230 = load i64, ptr %i.cl, align 8, !tbaa !713 ; 2 uses
  %i.cm = and i64 %.sroa.0.0.copyload.i.i230, -16
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !716 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !713
  %i.cq = and i64 %.sroa.0.0.copyload.i.i.i, 15
  %.not.i.i231 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i231, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i230) #25
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit:      ; preds = %bb.r, %bb.s
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.cs, %bb.s ], [ %i.co, %bb.r ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  %.sroa.03.0.i.i = and i64 %.sroa.03.0.in.i.i, -8
  %i.ct = load i16, ptr %i.ck, align 8
  %i.cu = and i16 %i.ct, -512
  %i.cv = or disjoint i16 %i.cu, 45
  store i16 %i.cv, ptr %i.ck, align 8
  %i.cw = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !1164, !range !1092, !noundef !711
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.t, label %_ZN5clang10NoInitExprC2ENS_8QualTypeE.exit229

bb.t:                                             ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit
  call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 45) #25
  br label %_ZN5clang10NoInitExprC2ENS_8QualTypeE.exit229

_ZN5clang10NoInitExprC2ENS_8QualTypeE.exit229:    ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cz = load i24, ptr %i.ck, align 8
  %i.da = and i24 %i.cz, -523777
  store i24 %i.da, ptr %i.ck, align 8
  store i64 %.sroa.03.0.i.i, ptr %i.cy, align 8, !tbaa !713
  %i.db = call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_10NoInitExprE(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #25
  %i.dc = load i24, ptr %i.ck, align 8
  %i.dd = and i8 %i.db, 31
  %i.de = zext nneg i8 %i.dd to i24
  %i.df = shl nuw nsw i24 %i.de, 14
  %i.dg = and i24 %i.dc, -507905
  %i.dh = or disjoint i24 %i.df, %i.dg
  store i24 %i.dh, ptr %i.ck, align 8
  %i.di = ptrtoint ptr %i.ck to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.dj = call i32 @_ZNK5clang12InitListExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #24, !inline_history !1832
  %i.dk = call fastcc i64 @_ZN12_GLOBAL__N_115InitListChecker16PerformEmptyInitEN5clang14SourceLocationERKNS1_17InitializedEntityE(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 %i.dj, ptr noundef nonnull align 8 dereferenceable(48) %7), !inline_history !1832
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN5clang10NoInitExprC2ENS_8QualTypeE.exit229
  %.sroa.0252.0 = phi i64 [ %i.di, %_ZN5clang10NoInitExprC2ENS_8QualTypeE.exit229 ], [ %i.dk, %bb.u ] ; 2 uses
  %i.dl = icmp eq i64 %.sroa.0252.0, 1
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.bd, align 8, !tbaa !1134
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.dm = load i8, ptr %i.a, align 1, !tbaa !1136, !range !1092, !noundef !711
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = and i64 %.sroa.0252.0, -2               ; 2 uses
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = load ptr, ptr %i.bi, align 8, !tbaa !1147
  %i.dr = zext i32 %.0147321 to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !1149
  %.not.i227 = icmp eq i64 %i.do, 0
  br i1 %.not.i227, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = load i24, ptr %2, align 8
  %i.du = load i24, ptr %i.dp, align 8
  %i.dv = and i24 %i.du, 507904
  %i.dw = or i24 %i.dv, %i.dt
  store i24 %i.dw, ptr %2, align 8
  br label %bb.ad

bb.aa:                                            ; preds = %bb.p
  %i.dx = load i16, ptr %i.cg, align 8
  %i.dy = and i16 %i.dx, 511
  switch i16 %i.dy, label %bb.ad [
    i16 55, label %bb.ab
    i16 69, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_ZN12_GLOBAL__N_115InitListChecker26FillInEmptyInitializationsERKN5clang17InitializedEntityEPNS1_12InitListExprERbS6_jb(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.cg, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull %2, i32 noundef %.0147321, i1 noundef zeroext %6), !inline_history !1832
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1149
  call fastcc void @_ZN12_GLOBAL__N_115InitListChecker26FillInEmptyInitializationsERKN5clang17InitializedEntityEPNS1_12InitListExprERbS6_jb(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull %2, i32 noundef %.0147321, i1 noundef zeroext true), !inline_history !1832
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.eb = add i32 %.0147321, 1                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0158320, i64 24 ; 2 uses
  %.not169 = icmp eq ptr %i.ec, %i.bc
  br i1 %.not169, label %.thread258, label %bb.m

.thread258:                                       ; preds = %bb.ad, %bb.l, %bb.k
  %.4151 = phi i32 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.eb, %bb.ad ]
  %i.ed = call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %spec.select303) #25 ; 2 uses
  %.not310323 = icmp eq ptr %i.ed, null
  br i1 %.not310323, label %.critedge181, label %.lr.ph326

.lr.ph326:                                        ; preds = %.thread258
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph326, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit
  %.5152325 = phi i32 [ %.4151, %.lr.ph326 ], [ %.6153, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %.sroa.0244.0324 = phi ptr [ %i.ed, %.lr.ph326 ], [ %.sroa.0244.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0244.0324, i64 68
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = trunc i32 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0244.0324, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.eh, align 8
  %.not.i198 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  %i.ei = select i1 %i.eg, i1 %.not.i198, i1 false
  br i1 %i.ei, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i8, ptr %11, align 8, !tbaa !1134, !range !1092, !noundef !711
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %.critedge181, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_ZN12_GLOBAL__N_115InitListChecker23FillInEmptyInitForFieldEjPN5clang9FieldDeclERKNS1_17InitializedEntityEPNS1_12InitListExprERbb(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %.5152325, ptr noundef nonnull %.sroa.0244.0324, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %6)
  %i.el = load i8, ptr %11, align 8, !tbaa !1134, !range !1092, !noundef !711
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.critedge181, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = add i32 %.5152325, 1
  %i.eo = load i16, ptr %i.t, align 8
  %.mask.i199 = and i16 %i.eo, -8192
  %i.ep = icmp eq i16 %.mask.i199, 16384
  br i1 %i.ep, label %.critedge181, label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %.6153 = phi i32 [ %i.en, %bb.ah ], [ %.5152325, %bb.ae ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0244.0324, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.eq, align 8
  %i.er = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr               ; 2 uses
  %.not1.i.i = icmp eq i64 %i.er, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.aj
  %.sroa.0244.1 = phi ptr [ %i.fa, %bb.aj ], [ %i.es, %bb.ai ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0244.1, i64 28
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = and i32 %i.eu, 127
  %i.ew = add nsw i32 %i.ev, -50
  %i.ex = icmp ult i32 %i.ew, 3
  br i1 %i.ex, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0244.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ey, align 8
  %i.ez = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit: ; preds = %.lr.ph.i.i, %bb.aj, %bb.ai
  %.sroa.0244.2 = phi ptr [ %i.es, %bb.ai ], [ %i.fa, %bb.aj ], [ %.sroa.0244.1, %.lr.ph.i.i ] ; 2 uses
  %.not310 = icmp eq ptr %.sroa.0244.2, null
  br i1 %.not310, label %.critedge181, label %bb.ae

.critedge182:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !1415
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1146
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !1147
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = lshr exact i64 %i.fh, 3
  %i.fj = and i64 %i.fi, 4294967295               ; 4 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !1151, !nonnull !711, !align !712
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 232
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !710, !nonnull !711, !align !712
  %i.fn = tail call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fm, i64 %.sroa.0.0.copyload.i) #25 ; 4 uses
  %.not170 = icmp eq ptr %i.fn, null
  br i1 %.not170, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %.critedge182
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %.sroa.0.0.copyload.i201 = load i64, ptr %i.fo, align 16, !tbaa !713
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 16
  %i.fr = and i8 %i.fq, -2
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i8 %i.fr, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fs = load i32, ptr %i.fp, align 16
  %i.ft = and i32 %i.fs, 33554432
  %.not.i203 = icmp eq i32 %i.ft, 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 2 uses
  br i1 %.not.i203, label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !713 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !1222
  %i.fy = icmp ult i32 %i.fx, 65
  %i.fz = load ptr, ptr %i.fv, align 8
  %spec.select.i.i204 = select i1 %i.fy, ptr %i.fv, ptr %i.fz
  br label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit

_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit: ; preds = %bb.al, %bb.am
  %.in.i = phi ptr [ %spec.select.i.i204, %bb.am ], [ %i.fu, %bb.al ]
  %i.ga = load i64, ptr %.in.i, align 8, !tbaa !713
  br label %bb.an

bb.an:                                            ; preds = %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit, %bb.ak
  %.0154 = phi i64 [ %i.ga, %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit ], [ %i.fj, %bb.ak ]
  %i.gb = load i32, ptr %1, align 8, !tbaa !1162
  %i.gc = icmp eq i32 %i.gb, 8
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = icmp eq i8 %i.ge, 1
  %i.gg = select i1 %i.gc, i1 %i.gf, i1 false
  %i.gh = zext i1 %i.gg to i64
  %spec.select183 = add i64 %.0154, %i.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.gi = load ptr, ptr %0, align 8, !tbaa !1151, !nonnull !711, !align !712
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 232
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !710, !nonnull !711, !align !712
  call void @_ZN5clang17InitializedEntityC1ERNS_10ASTContextEjRKS0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.gk, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %1) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread

bb.ao:                                            ; preds = %.critedge182
  %.sroa.0.0.copyload.i205 = load i64, ptr %i.e, align 8, !tbaa !713 ; 2 uses
  %i.gl = and i64 %.sroa.0.0.copyload.i205, -16
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !716 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load i8, ptr %i.go, align 16
  %i.gq = and i8 %i.gp, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.gq, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread266, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.0.0.copyload.i.i.i.i207 = load i64, ptr %i.gr, align 8, !tbaa !713
  %i.gs = and i64 %.sroa.0.0.copyload.i.i.i.i207, -16
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = load ptr, ptr %i.gt, align 16, !tbaa !716
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load i8, ptr %i.gv, align 16
  %i.gx = and i8 %i.gw, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.gx, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit: ; preds = %bb.ap
  %i.gy = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gn) #25 ; 2 uses
  %.not171 = icmp eq ptr %i.gy, null
  br i1 %.not171, label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread_crit_edge, label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread266

_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit
  %.sroa.0.0.copyload.i209.pre = load i64, ptr %i.e, align 8, !tbaa !713
  br label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread266: ; preds = %bb.ao, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit
  %.1.i269 = phi ptr [ %i.gy, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit ], [ %i.gn, %bb.ao ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1.i269, i64 32
  %.sroa.0.0.copyload.i208 = load i64, ptr %i.gz, align 16, !tbaa !713
  %i.ha = getelementptr inbounds nuw i8, ptr %.1.i269, i64 20
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !713
  %i.hc = zext i32 %i.hb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.hd = load ptr, ptr %0, align 8, !tbaa !1151, !nonnull !711, !align !712
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 232
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !710, !nonnull !711, !align !712
  call void @_ZN5clang17InitializedEntityC1ERNS_10ASTContextEjRKS0_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(23904) %i.hf, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %1) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread: ; preds = %bb.ap, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread_crit_edge, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread266, %bb.an
  %.sroa.0242.0 = phi i64 [ %.sroa.0.0.copyload.i201, %bb.an ], [ %.sroa.0.0.copyload.i208, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread266 ], [ %.sroa.0.0.copyload.i209.pre, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread_crit_edge ], [ %.sroa.0.0.copyload.i205, %bb.ap ]
  %.3157 = phi i64 [ %spec.select183, %bb.an ], [ %i.hc, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread266 ], [ %i.fj, %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.fj, %bb.ap ] ; 2 uses
  %.not173314 = icmp eq i64 %.3157, 0
  br i1 %.not173314, label %_ZN5clang12InitListExpr7setInitEjPNS_4ExprE.exit219, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v.exit.thread
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph, %_ZN4llvm16dyn_cast_or_nullIN5clang24DesignatedInitUpdateExprENS1_4ExprEEEDaPT0_.exit.thread
  %.0140316 = phi i64 [ 0, %.lr.ph ], [ %i.kh, %_ZN4llvm16dyn_cast_or_nullIN5clang24DesignatedInitUpdateExprENS1_4ExprEEEDaPT0_.exit.thread ] ; 8 uses
  %.0141315 = phi i8 [ 0, %.lr.ph ], [ %.4145.ph, %_ZN4llvm16dyn_cast_or_nullIN5clang24DesignatedInitUpdateExprENS1_4ExprEEEDaPT0_.exit.thread ] ; 7 uses
  %i.hj = load i8, ptr %i.hg, align 8, !tbaa !1134, !range !1092, !noundef !711
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %_ZN5clang12InitListExpr7setInitEjPNS_4ExprE.exit219, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = load i32, ptr %8, align 8, !tbaa !1162
  switch i32 %i.hl, label %bb.at [
    i32 7, label %bb.as
    i32 12, label %bb.as
    i32 13, label %bb.as
  ]
end_hunk_0
