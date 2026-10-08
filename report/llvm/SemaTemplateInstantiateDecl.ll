Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiateDecl?download=true
inline.NumInlined: 35695
inline.NumDeleted: 15666
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5clang24TemplateDeclInstantiator25VisitOMPDeclareMapperDeclEPNS_20OMPDeclareMapperDeclE:bb.a
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = and i16 %i.bl, 127
  %i.bn = add nsw i16 %i.bm, -60
  %i.bo = icmp ult i16 %i.bn, 3
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -64
  %spec.select.i.i.i = select i1 %i.bo, ptr %i.bp, ptr null
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %spec.select.i.i.i, %bb.i ], [ null, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bq = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.br = icmp ne ptr %.0.i.i, null
  call void @_ZN5clang4Sema16CXXThisScopeRAIIC1ERS0_PNS_4DeclENS_10QualifiersEb(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(18640) %i.bq, ptr noundef %.0.i.i, i64 0, i1 noundef zeroext %i.br) #25
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !2522 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !1325 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %.idx = shl nuw nsw i64 %i.bv, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  %.not108171 = icmp eq i32 %i.bu, 0
  br i1 %.not108171, label %._crit_edge, label %.lr.ph173

.lr.ph173:                                        ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph173, %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit
  %.0103172 = phi ptr [ %i.bt, %.lr.ph173 ], [ %i.er, %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit ] ; 2 uses
  %i.cg = load ptr, ptr %.0103172, align 8, !tbaa !1327 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.bx, ptr %5, align 8, !tbaa !766
  store i32 0, ptr %i.by, align 8, !tbaa !758
  store i32 4, ptr %i.bz, align 4, !tbaa !767
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !1740 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 152 ; 3 uses
  %.idx174 = shl nuw nsw i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx174
  %.not109169 = icmp eq i32 %i.ci, 0
  br i1 %.not109169, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.n
  %.0104170 = phi ptr [ %i.cz, %bb.n ], [ %i.ck, %bb.j ] ; 2 uses
  %i.cm = load ptr, ptr %.0104170, align 8, !tbaa !770
  %i.cn = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.cp = call i64 @_ZN5clang4Sema9SubstExprEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cn, ptr noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(118) %i.co) #25
  %i.cq = and i64 %i.cp, -2                       ; 2 uses
  %i.cr = inttoptr i64 %i.cq to ptr               ; 2 uses
  %.not110.not = icmp eq i64 %i.cq, 0
  br i1 %.not110.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.cs = load i32, ptr %i.by, align 8, !tbaa !758 ; 2 uses
  %i.ct = load i32, ptr %i.bz, align 4, !tbaa !767
  %.not.i = icmp ult i32 %i.cs, %i.ct
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !768

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.cr)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cu = zext i32 %i.cs to i64
  %i.cv = load ptr, ptr %5, align 8, !tbaa !766
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  store ptr %i.cr, ptr %i.cw, align 1
  %i.cx = load i32, ptr %i.by, align 8, !tbaa !758
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.by, align 8, !tbaa !758
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.0104170, i64 8 ; 2 uses
  %.not109 = icmp eq ptr %i.cz, %i.cl
  br i1 %.not109, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %.lr.ph

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.n, %bb.j
  %i.da = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %.sroa.0.0.copyload.i125 = load i64, ptr %i.db, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !759
  %i.dc = load ptr, ptr %i.ca, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.dd = call { i64, ptr } @_ZN5clang4Sema27SubstNestedNameSpecifierLocENS_22NestedNameSpecifierLocERKNS_30MultiLevelTemplateArgumentListE(ptr noundef nonnull align 8 dereferenceable(18640) %i.da, i64 %.sroa.0.0.copyload.i125, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(118) %i.dc) #25 ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.dd, 0
  %i.df = extractvalue { i64, ptr } %i.dd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %i.de, ptr %i.df) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.dg = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.di = load ptr, ptr %i.ca, align 8, !tbaa !69, !nonnull !67, !align !68
  call void @_ZN5clang4Sema24SubstDeclarationNameInfoERKNS_19DeclarationNameInfoERKNS_30MultiLevelTemplateArgumentListE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %7, ptr noundef nonnull align 8 dereferenceable(18640) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(118) %i.di) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %.sroa.0.0.copyload.i128 = load i32, ptr %i.cg, align 8, !tbaa !796
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %.sroa.0.0.copyload.i129 = load i32, ptr %i.dj, align 4, !tbaa !796
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.0.0.copyload.i130 = load i32, ptr %i.dk, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i128, ptr %8, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i129, ptr %i.cb, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i130, ptr %i.cc, align 4, !tbaa !796
  %i.dl = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 832
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !903
  %i.do = load i32, ptr %i.ch, align 8, !tbaa !1740
  %i.dp = shl i32 %i.do, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !770
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.du = getelementptr inbounds nuw i8, ptr %i.cg, i64 108
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !1744
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cg, i64 140
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !1745, !range !785, !noundef !67
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %.sroa.0.0.copyload.i135 = load i32, ptr %i.ea, align 8, !tbaa !796
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 148
  %.sroa.0.0.copyload.i136 = load i32, ptr %i.eb, align 4, !tbaa !796
  %i.ec = load ptr, ptr %5, align 8, !tbaa !766
  store ptr %i.ec, ptr %9, align 8, !tbaa !905
  %i.ed = load i32, ptr %i.by, align 8, !tbaa !758
  %i.ee = zext i32 %i.ed to i64
  store i64 %i.ee, ptr %i.cd, align 8, !tbaa !906
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.ef = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %i.dn, ptr noundef %i.ds, ptr nonnull %i.dt, i64 7, ptr nonnull %i.du, i64 7, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.dw, i1 noundef zeroext %i.dz, i32 %.sroa.0.0.copyload.i135, i32 %.sroa.0.0.copyload.i136, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %9, ptr noundef nonnull align 4 dereferenceable(12) %8, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %10) #25 ; 2 uses
  %i.eg = load i32, ptr %i.af, align 8, !tbaa !758 ; 2 uses
  %i.eh = load i32, ptr %i.ag, align 4, !tbaa !767
  %.not.i137 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i137, label %bb.p, label %bb.o, !prof !768

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ef)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %2, align 8, !tbaa !766
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  store ptr %i.ef, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.af, align 8, !tbaa !758
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.af, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.en = load i32, ptr %i.ce, align 4, !tbaa !1191
  %.not.i.i138 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i138, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit
  %i.eo = load ptr, ptr %i.cf, align 8, !tbaa !1192
  call void @free(ptr noundef %i.eo) #25
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ep = load ptr, ptr %5, align 8, !tbaa !766   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bx
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.ep) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.er = getelementptr inbounds nuw i8, ptr %.0103172, i64 8 ; 2 uses
  %.not108 = icmp eq ptr %i.er, %i.bw
  br i1 %.not108, label %._crit_edge, label %bb.j

.critedge:                                        ; preds = %.lr.ph
  %i.es = load ptr, ptr %5, align 8, !tbaa !766   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bx
  br i1 %i.et, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.es) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.eu = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 832
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !903
  call void @_ZN5clang10SemaOpenMP17EndOpenMPDSABlockEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(552) %i.ew, ptr noundef null) #25
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit
  %i.ex = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 832
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !903
  call void @_ZN5clang10SemaOpenMP17EndOpenMPDSABlockEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(552) %i.ez, ptr noundef null) #25
  %i.fa = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 832
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !903
  %i.fd = load ptr, ptr %i.bi, align 8, !tbaa !987
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i140 = load i64, ptr %i.fe, align 8, !tbaa !71
  %.sroa.0.0.copyload.i141 = load i32, ptr %i.at, align 8, !tbaa !796
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = lshr i32 %i.fg, 13
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = and i8 %i.fi, 3
  %i.fk = load ptr, ptr %2, align 8, !tbaa !766
  store ptr %i.fk, ptr %11, align 8, !tbaa !2525
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fm = load i32, ptr %i.af, align 8, !tbaa !758
  %i.fn = zext i32 %i.fm to i64
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !2526
  %i.fo = call ptr @_ZN5clang10SemaOpenMP33ActOnOpenMPDeclareMapperDirectiveEPNS_5ScopeEPNS_11DeclContextENS_15DeclarationNameENS_8QualTypeENS_14SourceLocationES5_NS_15AccessSpecifierEPNS_4ExprEN4llvm8ArrayRefIPNS_9OMPClauseEEEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(552) %i.fc, ptr noundef null, ptr noundef %i.fd, i64 %.sroa.0.0.copyload.i140, i64 %storemerge, i32 %.sroa.0.0.copyload.i141, i64 %.sroa.0.0.copyload.i115158, i8 noundef zeroext %i.fj, ptr noundef %i.bf, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1742") align 8 %11, ptr noundef %.0100) #25 ; 2 uses
  %i.fp = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12576
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !891
  call void @_ZN5clang23LocalInstantiationScope17InstantiatedLocalEPKNS_4DeclEPS1_(ptr noundef nonnull align 8 dereferenceable(148) %i.fr, ptr noundef nonnull %1, ptr noundef %i.fo) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %.0 = phi ptr [ %i.fo, %._crit_edge ], [ null, %bb.t ]
  call void @_ZN5clang4Sema16CXXThisScopeRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fs = load ptr, ptr %2, align 8, !tbaa !766   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ae
  br i1 %i.ft, label %_ZN4llvm11SmallVectorIPN5clang9OMPClauseELj6EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.fs) #25
  br label %_ZN4llvm11SmallVectorIPN5clang9OMPClauseELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang9OMPClauseELj6EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %_ZN4llvm11SmallVectorIPN5clang9OMPClauseELj6EED2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN4llvm11SmallVectorIPN5clang9OMPClauseELj6EED2Ev.exit ], [ null, %bb.d ]
  ret ptr %.1
}

declare i64 @_ZN5clang10SemaOpenMP28ActOnOpenMPDeclareMapperTypeENS_14SourceLocationENS_12ActionResultINS_9OpaquePtrINS_8QualTypeEEELb0EEE(ptr noundef nonnull align 8 dereferenceable(552), i32, ptr, i8) local_unnamed_addr #2

declare noundef ptr @_ZN5clang20OMPDeclareMapperDecl18getPrevDeclInScopeEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

declare void @_ZN5clang10SemaOpenMP19StartOpenMPDSABlockEN4llvm3omp9DirectiveERKNS_19DeclarationNameInfoEPNS_5ScopeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(552), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32) local_unnamed_addr #2

declare i64 @_ZN5clang10SemaOpenMP40ActOnOpenMPDeclareMapperDirectiveVarDeclEPNS_5ScopeENS_8QualTypeENS_14SourceLocationENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, i64, i32, i64) local_unnamed_addr #2

declare noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext, i32, i32, ptr noundef byval(%"class.llvm::ArrayRef") align 8, ptr noundef nonnull align 4 dereferenceable(12), i1 noundef zeroext, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #2

declare void @_ZN5clang10SemaOpenMP17EndOpenMPDSABlockEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef) local_unnamed_addr #2

declare ptr @_ZN5clang10SemaOpenMP33ActOnOpenMPDeclareMapperDirectiveEPNS_5ScopeEPNS_11DeclContextENS_15DeclarationNameENS_8QualTypeENS_14SourceLocationES5_NS_15AccessSpecifierEPNS_4ExprEN4llvm8ArrayRefIPNS_9OMPClauseEEEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef, i64, i64, i32, i64, i8 noundef zeroext, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.1742") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef nonnull ptr @_ZN5clang24TemplateDeclInstantiator24VisitOMPCapturedExprDeclEPNS_19OMPCapturedExprDeclE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang24TemplateDeclInstantiator17VisitFunctionDeclEPNS_12FunctionDeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang24TemplateDeclInstantiator17VisitFunctionDeclEPNS_12FunctionDeclEPNS_21TemplateParameterListENS0_11RewriteKindE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang24TemplateDeclInstantiator26VisitCXXDeductionGuideDeclEPNS_21CXXDeductionGuideDeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang24TemplateDeclInstantiator17VisitFunctionDeclEPNS_12FunctionDeclEPNS_21TemplateParameterListENS0_11RewriteKindE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK5clang12FunctionDecl28getDescribedFunctionTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #25
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !987
  tail call void @_ZN5clang11DeclContext7addDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.a) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef nonnull ptr @_ZN5clang24TemplateDeclInstantiator15VisitRecordDeclEPNS_10RecordDeclE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang24TemplateDeclInstantiator36VisitClassTemplateSpecializationDeclEPNS_31ClassTemplateSpecializationDeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::TemplateArgumentListInfo", align 8 ; 12 uses
  %3 = alloca %"struct.clang::Sema::CheckTemplateArgumentInfo", align 8 ; 15 uses
  %4 = alloca %"struct.clang::DefaultArguments", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %7 = alloca %"class.llvm::ArrayRef.1374", align 8 ; 3 uses
  %i.d = tail call noundef ptr @_ZNK5clang31ClassTemplateSpecializationDecl22getSpecializedTemplateEv(ptr noundef nonnull align 8 dereferenceable(181) %1) #25
  %i.e = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 8, !tbaa !796
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.i = tail call noundef ptr @_ZN5clang4Sema20FindInstantiatedDeclENS_14SourceLocationEPNS_9NamedDeclERKNS_30MultiLevelTemplateArgumentListEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.e, i32 %.sroa.0.0.copyload.i, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(118) %i.h, i1 noundef zeroext false) ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !766
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !758
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.l, align 4, !tbaa !767
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !1017
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 276 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !1017
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8 ; 2 uses
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %.not.not7.i = icmp eq i64 %i.q, 0
  %.not.not.i = or i1 %.not.i.i.i.i, %.not.not7.i
  br i1 %.not.not.i, label %_ZNK5clang31ClassTemplateSpecializationDecl24getTemplateArgsAsWrittenEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1212
  br label %_ZNK5clang31ClassTemplateSpecializationDecl24getTemplateArgsAsWrittenEv.exit

_ZNK5clang31ClassTemplateSpecializationDecl24getTemplateArgsAsWrittenEv.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi ptr [ %i.s, %bb.c ], [ %i.r, %bb.b ] ; 5 uses
  %.not59 = icmp eq ptr %.1.i, null
  br i1 %.not59, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang31ClassTemplateSpecializationDecl24getTemplateArgsAsWrittenEv.exit
  %.sroa.0.0.copyload.i64 = load i32, ptr %.1.i, align 8, !tbaa !796
  store i32 %.sroa.0.0.copyload.i64, ptr %i.m, align 8, !tbaa !796
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.t, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i65, ptr %i.n, align 4, !tbaa !796
  %i.u = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1214
  %i.y = zext i32 %i.x to i64
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.aa = call noundef zeroext i1 @_ZN5clang4Sema22SubstTemplateArgumentsEN4llvm8ArrayRefINS_19TemplateArgumentLocEEERKNS_30MultiLevelTemplateArgumentListERNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %i.u, ptr nonnull %i.v, i64 %i.y, ptr noundef nonnull align 8 dereferenceable(118) %i.z, ptr noundef nonnull align 8 dereferenceable(280) %2) #25
  br i1 %i.aa, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZNK5clang31ClassTemplateSpecializationDecl24getTemplateArgsAsWrittenEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !766
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !758
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.ad, align 4, !tbaa !767
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !766
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !758
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 124
  store i32 4, ptr %i.ah, align 4, !tbaa !767
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i8 0, ptr %i.ai, align 8, !tbaa !1221
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 225
end_hunk_0
