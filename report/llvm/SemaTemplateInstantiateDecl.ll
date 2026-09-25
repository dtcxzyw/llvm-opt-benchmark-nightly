Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiateDecl?download=true
inline.NumInlined: 35695
inline.NumDeleted: 15666
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5clang24TemplateDeclInstantiator18VisitCXXMethodDeclEPNS_13CXXMethodDeclEPNS_21TemplateParameterListENS0_11RewriteKindE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.eq = call noundef ptr @_ZN5clang24TemplateDeclInstantiator17SubstFunctionTypeEPNS_12FunctionDeclERN4llvm15SmallVectorImplIPNS_11ParmVarDeclEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 3 uses
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !1179
  %.not337 = icmp eq ptr %i.eq, null
  br i1 %.not337, label %bb.fh, label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.er = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 232
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.eu = getelementptr i8, ptr %1, i64 48
  %.val = load i64, ptr %i.eu, align 8, !tbaa !755
  %i.ev = call fastcc i64 @_ZL34adjustFunctionTypeForInstantiationRN5clang10ASTContextEPNS_12FunctionDeclEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %i.et, i64 %.val, ptr noundef nonnull %i.eq)
  store i64 %i.ev, ptr %11, align 8
  br i1 %i.g, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = and i32 %i.ex, 536870911                ; 2 uses
  %.not338 = icmp eq i32 %i.ey, 0
  br i1 %.not338, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.fa = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1108 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.ff = load i32, ptr %i.fe, align 4
  %.not339626 = icmp eq ptr %i.fd, null
  %i.fg = and i32 %i.ff, 639
  %i.fh = icmp ne i32 %i.fg, 580
  %or.cond734 = or i1 %.not339626, %i.fh
  br i1 %or.cond734, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 60
  %i.fj = load i8, ptr %i.fi, align 4
  %i.fk = and i8 %i.fj, 2
  %.not628 = icmp eq i8 %i.fk, 0
  br i1 %.not628, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 232
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i376 = load i32, ptr %i.fo, align 8, !tbaa !796
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i377 = load i32, ptr %i.fp, align 4, !tbaa !796
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i380 = load i32, ptr %i.fq, align 8, !tbaa !796
  %i.fr = and i32 %i.ex, 1073741824
  %.not.i381 = icmp eq i32 %i.fr, 0
  br i1 %.not.i381, label %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fs = load ptr, ptr %i.fb, align 8, !tbaa !770
  br label %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit

_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit: ; preds = %bb.af, %bb.ag
  %i.ft = phi ptr [ %i.fs, %bb.ag ], [ null, %bb.af ]
  %i.fu = call noundef ptr @_ZN5clang21TemplateParameterList6CreateERKNS_10ASTContextENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_9NamedDeclEEES4_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fn, i32 %.sroa.0.0.copyload.i376, i32 %.sroa.0.0.copyload.i377, ptr nonnull %i.ez, i64 %i.fa, i32 %.sroa.0.0.copyload.i380, ptr noundef %i.ft) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ae, %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit, %bb.ac, %bb.ab
  %.1279 = phi ptr [ null, %bb.ab ], [ %2, %bb.ac ], [ %i.fu, %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit ], [ %2, %bb.ae ], [ %2, %bb.ad ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i382 = load i64, ptr %i.bf, align 8 ; 2 uses
  %i.fv = and i64 %.0.copyload.i.i.i.i.i.i.i382, 4
  %.not.i383 = icmp eq i64 %i.fv, 0
  br i1 %.not.i383, label %.thread566, label %_ZNK5clang14DeclaratorDecl15getQualifierLocEv.exit

_ZNK5clang14DeclaratorDecl15getQualifierLocEv.exit: ; preds = %bb.ah
  %i.fw = and i64 %.0.copyload.i.i.i.i.i.i.i382, -5
  %i.fx = inttoptr i64 %i.fw to ptr               ; 2 uses
  %.sroa.0.0.copyload.i384 = load i64, ptr %i.fx, align 8, !tbaa !71 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !759 ; 3 uses
  %.not629 = icmp eq i64 %.sroa.0.0.copyload.i384, 0
  br i1 %.not629, label %.thread719, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5clang14DeclaratorDecl15getQualifierLocEv.exit
  %i.fy = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.fz = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.ga = call { i64, ptr } @_ZN5clang4Sema27SubstNestedNameSpecifierLocENS_22NestedNameSpecifierLocERKNS_30MultiLevelTemplateArgumentListE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fy, i64 %.sroa.0.0.copyload.i384, ptr %.sroa.4.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(118) %i.fz) #25 ; 2 uses
  %i.gb = extractvalue { i64, ptr } %i.ga, 0      ; 4 uses
  %i.gc = extractvalue { i64, ptr } %i.ga, 1      ; 3 uses
  %.not630 = icmp eq i64 %i.gb, 0
  br i1 %.not630, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread585, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !987
  br i1 %.not.i360, label %bb.ak, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread

.thread719:                                       ; preds = %_ZNK5clang14DeclaratorDecl15getQualifierLocEv.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !987
  br i1 %.not.i360, label %.thread573, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread

.thread566:                                       ; preds = %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !987
  br i1 %.not.i360, label %.thread573, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %12, i64 %i.gb, ptr %i.gc) #25
  %i.gj = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.gk = call noundef ptr @_ZN5clang4Sema18computeDeclContextERKNS_12CXXScopeSpecEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.gj, ptr noundef nonnull align 8 dereferenceable(48) %12, i1 noundef zeroext false) #25 ; 3 uses
  %.not340 = icmp eq ptr %i.gk, null
  br i1 %.not340, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gl = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.gm = call noundef zeroext i1 @_ZN5clang4Sema26RequireCompleteDeclContextERNS_12CXXScopeSpecEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %i.gl, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.gk) #25
  br i1 %i.gm, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %cond8 = phi i1 [ true, %bb.am ], [ false, %bb.al ]
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !1191
  %.not.i.i = icmp eq i32 %i.go, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !1192
  call void @free(ptr noundef %i.gq) #25
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br i1 %cond8, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread585

.thread573:                                       ; preds = %.thread719, %.thread566
  %.sroa.11.0571577 = phi ptr [ null, %.thread566 ], [ %.sroa.4.0.copyload.i, %.thread719 ] ; 3 uses
  %i.gr = phi ptr [ %i.gh, %.thread566 ], [ %i.gf, %.thread719 ] ; 3 uses
  %i.gs = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i389 = load i32, ptr %i.gt, align 8, !tbaa !796
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i.i390 = load i64, ptr %i.gu, align 8 ; 3 uses
  %i.gv = and i64 %.0.copyload.i.i.i.i.i.i.i390, 4
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread573
  %i.gx = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i390 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.aq:                                            ; preds = %.thread573
  %i.gy = and i64 %.0.copyload.i.i.i.i.i.i.i390, -5
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !804
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.ap, %bb.aq
  %.0.i391 = phi ptr [ %i.gx, %bb.ap ], [ %i.ha, %bb.aq ] ; 4 uses
  %i.hb = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i391, i64 8
  %i.hd = load i16, ptr %i.hc, align 8
  %i.he = and i16 %i.hd, 124
  %i.hf = add nsw i16 %i.he, -20
  %i.hg = icmp ult i16 %i.hf, 64
  br i1 %i.hg, label %_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread

_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i: ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.hh = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %.0.i391) #25, !inline_history !1193 ; 2 uses
  %.not.i393 = icmp eq ptr %i.hh, null
  br i1 %.not.i393, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i
  %i.hi = call noundef ptr @_ZN5clang4Sema20FindInstantiatedDeclENS_14SourceLocationEPNS_9NamedDeclERKNS_30MultiLevelTemplateArgumentListEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.gs, i32 %.sroa.0.0.copyload.i389, ptr noundef nonnull %i.hh, ptr noundef nonnull align 8 dereferenceable(118) %i.hb, i1 noundef zeroext true) #30, !inline_history !1193 ; 2 uses
  %.not.i.i.i394 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i394, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread585, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hj = call noundef ptr @_ZN5clang4Decl17castToDeclContextEPKS0_(ptr noundef nonnull %i.hi) #25, !inline_history !1193
  br label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit

_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit: ; preds = %bb.as, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.sroa.0483.0569578 = phi i64 [ %i.gb, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ 0, %bb.as ]
  %.sroa.11.0571576 = phi ptr [ %i.gc, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %.sroa.11.0571577, %bb.as ]
  %i.hk = phi ptr [ %i.gd, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %i.gr, %bb.as ]
  %.0295 = phi ptr [ %i.gk, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %i.hj, %bb.as ] ; 2 uses
  %.not341 = icmp eq ptr %.0295, null
  br i1 %.not341, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread585, label %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread

_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread: ; preds = %.thread719, %_ZN5clang4Decl14getDeclContextEv.exit, %_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i, %.thread566, %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit, %bb.aj
  %i.hl = phi ptr [ %i.hk, %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit ], [ %i.gd, %bb.aj ], [ %i.gh, %.thread566 ], [ %i.gr, %_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i ], [ %i.gr, %_ZN5clang4Decl14getDeclContextEv.exit ], [ %i.gf, %.thread719 ] ; 4 uses
  %.sroa.11.0572 = phi ptr [ %.sroa.11.0571576, %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit ], [ %i.gc, %bb.aj ], [ null, %.thread566 ], [ %.sroa.11.0571577, %_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i ], [ %.sroa.11.0571577, %_ZN5clang4Decl14getDeclContextEv.exit ], [ %.sroa.4.0.copyload.i, %.thread719 ]
  %.sroa.0483.0570 = phi i64 [ %.sroa.0483.0569578, %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit ], [ %i.gb, %bb.aj ], [ 0, %.thread566 ], [ 0, %_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i ], [ 0, %_ZN5clang4Decl14getDeclContextEv.exit ], [ 0, %.thread719 ] ; 2 uses
  %.1296 = phi ptr [ %.0295, %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit ], [ %i.ge, %bb.aj ], [ %i.gi, %.thread566 ], [ %.0.i391, %_ZN4llvm8dyn_castIN5clang9NamedDeclENS1_11DeclContextEEEDcPT0_.exit.i ], [ %.0.i391, %_ZN5clang4Decl14getDeclContextEv.exit ], [ %i.gg, %.thread719 ] ; 4 uses
  %i.hm = icmp eq ptr %.1296, null                ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %.1296, i64 -64
  %i.ho = select i1 %i.hm, ptr null, ptr %i.hn    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %.0.copyload.i.i.i.i.i.i.i395 = load i64, ptr %i.bf, align 8 ; 2 uses
  %i.hp = and i64 %.0.copyload.i.i.i.i.i.i.i395, 4
  %.not.i396 = icmp eq i64 %i.hp, 0
  %i.hq = and i64 %.0.copyload.i.i.i.i.i.i.i395, -5
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.ht = select i1 %.not.i396, ptr @_ZZNK5clang14DeclaratorDecl25getTrailingRequiresClauseEvE4Null, ptr %i.hs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i64 16, i1 false), !tbaa.struct !1238
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.hu = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hv, align 8, !tbaa !71, !noalias !2417
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i3.i = load i32, ptr %i.hw, align 8, !tbaa !796, !noalias !2417
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i397 = load ptr, ptr %i.hx, align 8, !tbaa !755, !noalias !2417
  store i64 %.sroa.0.0.copyload.i.i, ptr %15, align 8, !tbaa !71, !alias.scope !2417
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.0.0.copyload.i3.i, ptr %i.hy, align 8, !tbaa !796, !alias.scope !2417
  %i.hz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.sroa.0.0.copyload.i397, ptr %i.hz, align 8, !tbaa !755, !alias.scope !2417
  %i.ia = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  call void @_ZN5clang4Sema24SubstDeclarationNameInfoERKNS_19DeclarationNameInfoERKNS_30MultiLevelTemplateArgumentListE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %14, ptr noundef nonnull align 8 dereferenceable(18640) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(118) %i.ia) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %.not342 = icmp eq i32 %3, 0
  br i1 %.not342, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread
  call void @_ZN5clang24TemplateDeclInstantiator16adjustForRewriteENS0_11RewriteKindEPNS_12FunctionDeclERNS_8QualTypeERPNS_14TypeSourceInfoERNS_19DeclarationNameInfoE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN5clang4Sema23FindInstantiatedContextENS_14SourceLocationEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListE.exit.thread
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i398 = load i32, ptr %i.ib, align 8, !tbaa !796 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = and i32 %i.id, 127
  switch i32 %i.ie, label %bb.ay [
    i32 39, label %bb.av
    i32 37, label %bb.aw
    i32 38, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.if = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 232
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !805, !nonnull !67, !align !68
  %.sroa.0118.0.copyload = load i64, ptr %11, align 8, !tbaa !755
  %i.ii = load ptr, ptr %i.c, align 8, !tbaa !1179
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ik = load i16, ptr %i.ij, align 4            ; 2 uses
  %i.il = and i16 %i.ik, 2048
  %i.im = icmp ne i16 %i.il, 0
  %i.in = load i32, ptr %i.db, align 8
  %i.io = and i32 %i.in, 131072
  %i.ip = icmp ne i32 %i.io, 0
  %i.iq = and i16 %i.ik, 3
  %i.ir = zext nneg i16 %i.iq to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.is = call noundef ptr @_ZN5clang18CXXConstructorDecl6CreateERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationERKNS_19DeclarationNameInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_17ExplicitSpecifierEbbbNS_17ConstexprSpecKindENS_20InheritedConstructorERKNS_20AssociatedConstraintE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ih, ptr noundef %i.ho, i32 %.sroa.0.0.copyload.i398, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.0118.0.copyload, ptr noundef %i.ii, i64 %.sroa.0492.0, i1 noundef zeroext %i.im, i1 noundef zeroext %i.ip, i1 noundef zeroext false, i32 noundef %i.ir, ptr noundef nonnull byval(%"class.clang::InheritedConstructor") align 8 %16, ptr noundef nonnull align 8 dereferenceable(12) %13) #25 ; 2 uses
  %i.it = load ptr, ptr %1, align 8, !tbaa !816
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call i64 %i.iv(ptr noundef nonnull align 8 dereferenceable(33) %1) #27, !inline_history !11
  %.sroa.3.0.extract.shift.i = lshr i64 %i.iw, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 140
  store i32 %.sroa.3.0.extract.trunc.i, ptr %i.ix, align 4, !tbaa !796
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
  %i.iy = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 232
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !805, !nonnull !67, !align !68
  %.sroa.0109.0.copyload = load i64, ptr %11, align 8, !tbaa !755
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !1179
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.jd = load i16, ptr %i.jc, align 4            ; 2 uses
  %i.je = and i16 %i.jd, 2048
  %i.jf = icmp ne i16 %i.je, 0
  %i.jg = load i32, ptr %i.db, align 8
  %i.jh = and i32 %i.jg, 131072
  %i.ji = icmp ne i32 %i.jh, 0
  %i.jj = and i16 %i.jd, 3
  %i.jk = zext nneg i16 %i.jj to i32
  %i.jl = call noundef ptr @_ZN5clang17CXXDestructorDecl6CreateERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationERKNS_19DeclarationNameInfoENS_8QualTypeEPNS_14TypeSourceInfoEbbbNS_17ConstexprSpecKindERKNS_20AssociatedConstraintE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ja, ptr noundef %i.ho, i32 %.sroa.0.0.copyload.i398, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.0109.0.copyload, ptr noundef %i.jb, i1 noundef zeroext %i.jf, i1 noundef zeroext %i.ji, i1 noundef zeroext false, i32 noundef %i.jk, ptr noundef nonnull align 8 dereferenceable(12) %13) #25 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 80 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8
  %i.jo = or i32 %i.jn, 268435456
  store i32 %i.jo, ptr %i.jm, align 8
  %i.jp = load ptr, ptr %1, align 8, !tbaa !816
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = call i64 %i.jr(ptr noundef nonnull align 8 dereferenceable(33) %1) #27, !inline_history !11
  %.sroa.3.0.extract.shift.i401 = lshr i64 %i.js, 32
  %.sroa.3.0.extract.trunc.i402 = trunc nuw i64 %.sroa.3.0.extract.shift.i401 to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 140
  store i32 %.sroa.3.0.extract.trunc.i402, ptr %i.jt, align 4, !tbaa !796
  %i.ju = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 232
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !805, !nonnull !67, !align !68 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 17800
  %i.jy = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.jw, ptr noundef %i.ho) #25
  %i.jz = call i64 @_ZN5clang20DeclarationNameTable20getCXXDestructorNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824) %i.jx, i64 %i.jy) #25
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !71
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.kb = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 232
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !805, !nonnull !67, !align !68
  %.sroa.099.0.copyload = load i64, ptr %11, align 8, !tbaa !755
  %i.ke = load ptr, ptr %i.c, align 8, !tbaa !1179
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.kg = load i16, ptr %i.kf, align 4            ; 2 uses
  %i.kh = and i16 %i.kg, 2048
  %i.ki = icmp ne i16 %i.kh, 0
  %i.kj = load i32, ptr %i.db, align 8
  %i.kk = and i32 %i.kj, 131072
  %i.kl = icmp ne i32 %i.kk, 0
  %i.km = and i16 %i.kg, 3
  %i.kn = zext nneg i16 %i.km to i32
  %i.ko = load ptr, ptr %1, align 8, !tbaa !816
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = call i64 %i.kq(ptr noundef nonnull align 8 dereferenceable(33) %1) #27, !inline_history !11
  %.sroa.3.0.extract.shift.i404 = lshr i64 %i.kr, 32
  %.sroa.3.0.extract.trunc.i405 = trunc nuw i64 %.sroa.3.0.extract.shift.i404 to i32
  %i.ks = call noundef ptr @_ZN5clang17CXXConversionDecl6CreateERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationERKNS_19DeclarationNameInfoENS_8QualTypeEPNS_14TypeSourceInfoEbbNS_17ExplicitSpecifierENS_17ConstexprSpecKindES5_RKNS_20AssociatedConstraintE(ptr noundef nonnull align 8 dereferenceable(23904) %i.kd, ptr noundef %i.ho, i32 %.sroa.0.0.copyload.i398, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.099.0.copyload, ptr noundef %i.ke, i1 noundef zeroext %i.ki, i1 noundef zeroext %i.kl, i64 %.sroa.0492.0, i32 noundef %i.kn, i32 %.sroa.3.0.extract.trunc.i405, ptr noundef nonnull align 8 dereferenceable(12) %13) #25
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.kt = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl8isStaticEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #25
  %i.ku = select i1 %i.kt, i32 2, i32 0
  %i.kv = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 232
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !805, !nonnull !67, !align !68
  %.sroa.094.0.copyload = load i64, ptr %11, align 8, !tbaa !755
  %i.ky = load ptr, ptr %i.c, align 8, !tbaa !1179
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.la = load i16, ptr %i.kz, align 4            ; 2 uses
  %i.lb = and i16 %i.la, 2048
  %i.lc = icmp ne i16 %i.lb, 0
  %i.ld = load i32, ptr %i.db, align 8
  %i.le = and i32 %i.ld, 131072
  %i.lf = icmp ne i32 %i.le, 0
  %i.lg = and i16 %i.la, 3
  %i.lh = zext nneg i16 %i.lg to i32
  %i.li = load ptr, ptr %1, align 8, !tbaa !816
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = call i64 %i.lk(ptr noundef nonnull align 8 dereferenceable(33) %1) #27, !inline_history !11
  %.sroa.3.0.extract.shift.i406 = lshr i64 %i.ll, 32
  %.sroa.3.0.extract.trunc.i407 = trunc nuw i64 %.sroa.3.0.extract.shift.i406 to i32
  %i.lm = call noundef ptr @_ZN5clang13CXXMethodDecl6CreateERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationERKNS_19DeclarationNameInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassEbbNS_17ConstexprSpecKindES5_RKNS_20AssociatedConstraintE(ptr noundef nonnull align 8 dereferenceable(23904) %i.kx, ptr noundef %i.ho, i32 %.sroa.0.0.copyload.i398, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.094.0.copyload, ptr noundef %i.ky, i32 noundef %i.ku, i1 noundef zeroext %i.lc, i1 noundef zeroext %i.lf, i32 noundef %i.lh, i32 %.sroa.3.0.extract.trunc.i407, ptr noundef nonnull align 8 dereferenceable(12) %13) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay, %bb.ax, %bb.av
  %.2300 = phi ptr [ %i.is, %bb.av ], [ %i.jl, %bb.aw ], [ %i.ks, %bb.ax ], [ %i.lm, %bb.ay ] ; 55 uses
  %i.ln = load i32, ptr %i.db, align 8
  %i.lo = and i32 %i.ln, 65536
  %.not635 = icmp eq i32 %i.lo, 0
  br i1 %.not635, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lp = getelementptr inbounds nuw i8, ptr %.2300, i64 80 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 8
  %i.lr = or i32 %i.lq, 65536
  store i32 %i.lr, ptr %i.lp, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.not636 = icmp eq i64 %.sroa.0483.0570, 0
  br i1 %.not636, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5clang14DeclaratorDecl16setQualifierInfoENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(68) %.2300, i64 %.sroa.0483.0570, ptr %.sroa.11.0572) #25
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ls = icmp ne ptr %.1279, null                ; 2 uses
  br i1 %i.ls, label %bb.be, label %bb.br

bb.be:                                            ; preds = %bb.bd
  %i.lt = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 232
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !805, !nonnull !67, !align !68
  %20 = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %spec.select13 = select i1 %i.hm, ptr null, ptr %20
  %i.lw = getelementptr inbounds nuw i8, ptr %.2300, i64 24
  %.sroa.0.0.copyload.i408 = load i32, ptr %i.lw, align 8, !tbaa !796
  %i.lx = getelementptr inbounds nuw i8, ptr %.2300, i64 40
  %.sroa.0.0.copyload.i409 = load i64, ptr %i.lx, align 8, !tbaa !71
  %i.ly = call noundef ptr @_ZN5clang20FunctionTemplateDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationENS_15DeclarationNameEPNS_21TemplateParameterListEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.lv, ptr noundef %spec.select13, i32 %.sroa.0.0.copyload.i408, i64 %.sroa.0.0.copyload.i409, ptr noundef nonnull %.1279, ptr noundef %.2300) #25 ; 7 uses
  br i1 %.not.i360, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.lz = load ptr, ptr %i.hl, align 8, !tbaa !987
  call void @_ZN5clang4Decl21setLexicalDeclContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(33) %i.ly, ptr noundef %i.lz) #25
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 28 ; 8 uses
  %i.mb = load i32, ptr %i.ma, align 4            ; 3 uses
  %i.mc = load ptr, ptr %i.ly, align 8, !tbaa !816
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = call noundef ptr %i.me(ptr noundef nonnull align 8 dereferenceable(33) %i.ly) #25, !inline_history !15 ; 4 uses
  %i.mg = load i32, ptr %i.ma, align 4            ; 2 uses
  %i.mh = and i32 %i.mg, -2490369                 ; 2 uses
  store i32 %i.mh, ptr %i.ma, align 4
  %i.mi = and i32 %i.mb, 16908288
  %.not.i410 = icmp eq i32 %i.mi, 0
  br i1 %.not.i410, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mj = and i32 %i.mg, -19267585                ; 3 uses
  %i.mk = or disjoint i32 %i.mj, 16777216         ; 2 uses
  store i32 %i.mk, ptr %i.ma, align 4
  %.not8.i = icmp eq ptr %i.mf, null
  br i1 %.not8.i, label %.thread591, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 28
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = and i32 %i.mm, 131072
  %.not9.i = icmp eq i32 %i.mn, 0
  br i1 %.not9.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mo = or disjoint i32 %i.mj, 17170432         ; 2 uses
  store i32 %i.mo, ptr %i.ma, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bf
  %i.mp = phi i32 [ %i.mh, %bb.bf ], [ %i.mk, %bb.bh ], [ %i.mo, %bb.bi ] ; 2 uses
  %i.mq = and i32 %i.mb, 211812352
  %.not10.i = icmp eq i32 %i.mq, 0
  br i1 %.not10.i, label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit, label %bb.bk

.thread591:                                       ; preds = %bb.bg
  %i.mr = and i32 %i.mb, 211812352
  %.not10.i592 = icmp eq i32 %i.mr, 0
  br i1 %.not10.i592, label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit, label %.thread593

.thread593:                                       ; preds = %.thread591
  %i.ms = or i32 %i.mj, 25165824
  store i32 %i.ms, ptr %i.ma, align 4
  br label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit

bb.bk:                                            ; preds = %bb.bj
  %i.mt = or i32 %i.mp, 8388608
  store i32 %i.mt, ptr %i.ma, align 4
  %.not11.i = icmp eq ptr %i.mf, null
  br i1 %.not11.i, label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mf, i64 28
  %i.mv = load i32, ptr %i.mu, align 4
  %i.mw = and i32 %i.mv, 2097152
  %.not12.i = icmp eq i32 %i.mw, 0
  br i1 %.not12.i, label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mx = or i32 %i.mp, 10485760
  store i32 %i.mx, ptr %i.ma, align 4
  br label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit

bb.bn:                                            ; preds = %bb.be
  %i.my = load ptr, ptr %1, align 8, !tbaa !816
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = call noundef zeroext i1 %i.na(ptr noundef nonnull align 8 dereferenceable(168) %1) #25
  br i1 %i.nb, label %bb.bo, label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit

bb.bo:                                            ; preds = %bb.bn
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i.i411 = load i64, ptr %i.nc, align 8 ; 3 uses
  %i.nd = and i64 %.0.copyload.i.i.i.i.i.i.i411, 4
  %i.ne = icmp eq i64 %i.nd, 0
  br i1 %i.ne, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.nf = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i411 to ptr
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

bb.bq:                                            ; preds = %bb.bo
  %i.ng = and i64 %.0.copyload.i.i.i.i.i.i.i411, -5
  %i.nh = inttoptr i64 %i.ng to ptr
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !73
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

_ZN5clang4Decl21getLexicalDeclContextEv.exit:     ; preds = %bb.bp, %bb.bq
  %.0.i412 = phi ptr [ %i.nf, %bb.bp ], [ %i.nj, %bb.bq ]
  call void @_ZN5clang4Decl21setLexicalDeclContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(33) %i.ly, ptr noundef %.0.i412) #25
  br label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit

_ZN5clang4Decl21setObjectOfFriendDeclEb.exit:     ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %.thread591, %.thread593, %bb.bn, %_ZN5clang4Decl21getLexicalDeclContextEv.exit
  call void @_ZN5clang12FunctionDecl28setDescribedFunctionTemplateEPNS_20FunctionTemplateDeclE(ptr noundef nonnull align 8 dereferenceable(168) %.2300, ptr noundef %i.ly) #25
  br label %bb.bv

bb.br:                                            ; preds = %bb.bd
  br i1 %i.f, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nk = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !766 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.sroa.088.0.copyload = load ptr, ptr %i.nm, align 8, !tbaa !954
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !71
  %i.nn = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 232
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.nq = call noundef ptr @_ZN5clang20TemplateArgumentList10CreateCopyERNS_10ASTContextEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.np, ptr %.sroa.088.0.copyload, i64 %.sroa.4.0.copyload) #25
  %i.nr = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(168) %.2300) #27
  call void @_ZN5clang12FunctionDecl33setFunctionTemplateSpecializationERNS_10ASTContextEPNS_20FunctionTemplateDeclEPNS_20TemplateArgumentListEPvNS_26TemplateSpecializationKindEPKNS_24TemplateArgumentListInfoENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(168) %.2300, ptr noundef nonnull align 8 dereferenceable(23904) %i.nr, ptr noundef nonnull %i.e, ptr noundef %i.nq, ptr noundef null, i32 noundef 1, ptr noundef null, i32 0) #25
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.ns = or i32 %3, %i.o
  %or.cond15.not.not.not.not = icmp eq i32 %i.ns, 0
  br i1 %or.cond15.not.not.not.not, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.nt = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(168) %.2300) #27
  call void @_ZN5clang12FunctionDecl32setInstantiationOfMemberFunctionERNS_10ASTContextEPS0_NS_26TemplateSpecializationKindE(ptr noundef nonnull align 8 dereferenceable(168) %.2300, ptr noundef nonnull align 8 dereferenceable(23904) %i.nt, ptr noundef nonnull %1, i32 noundef 1) #25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bs, %bb.bu, %bb.bt, %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit
  %.0280 = phi ptr [ %i.ly, %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit ], [ %i.e, %bb.bs ], [ null, %bb.bu ], [ null, %bb.bt ] ; 3 uses
  br i1 %.not.i360, label %bb.bw, label %bb.cg

bb.bw:                                            ; preds = %bb.bv
  %i.nu = load i32, ptr %i.bd, align 8, !tbaa !758 ; 2 uses
  %.not.i413 = icmp eq i32 %i.nu, 0
  br i1 %.not.i413, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nv = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 232
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.ny = load ptr, ptr %9, align 8, !tbaa !766
  %i.nz = zext i32 %i.nu to i64
  call void @_ZN5clang14DeclaratorDecl29setTemplateParameterListsInfoERNS_10ASTContextEN4llvm8ArrayRefIPNS_21TemplateParameterListEEE(ptr noundef nonnull align 8 dereferenceable(68) %.2300, ptr noundef nonnull align 8 dereferenceable(23904) %i.nx, ptr %i.ny, i64 %i.nz) #25
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.oa = load ptr, ptr %i.hl, align 8, !tbaa !987
  call void @_ZN5clang4Decl21setLexicalDeclContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(33) %.2300, ptr noundef %i.oa) #25
  %i.ob = getelementptr inbounds nuw i8, ptr %.2300, i64 28 ; 8 uses
  %i.oc = load i32, ptr %i.ob, align 4            ; 3 uses
  %i.od = load ptr, ptr %.2300, align 8, !tbaa !816
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 48
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = call noundef ptr %i.of(ptr noundef nonnull align 8 dereferenceable(33) %.2300) #25, !inline_history !15 ; 4 uses
  %i.oh = load i32, ptr %i.ob, align 4            ; 2 uses
  %i.oi = and i32 %i.oh, -2490369                 ; 2 uses
  store i32 %i.oi, ptr %i.ob, align 4
  %i.oj = and i32 %i.oc, 16908288
  %.not.i414 = icmp eq i32 %i.oj, 0
  br i1 %.not.i414, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ok = and i32 %i.oh, -19267585                ; 3 uses
  %i.ol = or disjoint i32 %i.ok, 16777216         ; 2 uses
  store i32 %i.ol, ptr %i.ob, align 4
  %.not8.i415 = icmp eq ptr %i.og, null
  br i1 %.not8.i415, label %.thread595, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 28
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = and i32 %i.on, 131072
  %.not9.i416 = icmp eq i32 %i.oo, 0
  br i1 %.not9.i416, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.op = or disjoint i32 %i.ok, 17170432         ; 2 uses
  store i32 %i.op, ptr %i.ob, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.by
  %i.oq = phi i32 [ %i.oi, %bb.by ], [ %i.ol, %bb.ca ], [ %i.op, %bb.cb ] ; 2 uses
  %i.or = and i32 %i.oc, 211812352
  %.not10.i417 = icmp eq i32 %i.or, 0
  br i1 %.not10.i417, label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit420, label %bb.cd

.thread595:                                       ; preds = %bb.bz
  %i.os = and i32 %i.oc, 211812352
  %.not10.i417596 = icmp eq i32 %i.os, 0
  br i1 %.not10.i417596, label %_ZN5clang4Decl21setObjectOfFriendDeclEb.exit420, label %.thread597

.thread597:                                       ; preds = %.thread595
  %i.ot = or i32 %i.ok, 25165824
  store i32 %i.ot, ptr %i.ob, align 4
end_hunk_0
begin_hunk_1_@_ZN5clang24TemplateDeclInstantiator18VisitCXXMethodDeclEPNS_13CXXMethodDeclEPNS_21TemplateParameterListENS0_11RewriteKindE:bb.a
  %i.qq = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  store i32 8, ptr %i.qq, align 4, !tbaa !767
  %i.qr = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %17, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qr, i8 0, i64 24, i1 false)
  store ptr %i.ql, ptr %i.qs, align 8, !tbaa !1160
  %i.qt = getelementptr inbounds nuw i8, ptr %17, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qt, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !1239
  %i.qu = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.qv = getelementptr inbounds nuw i8, ptr %17, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qu, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.qv, align 8, !tbaa !1163
  %i.qw = getelementptr inbounds nuw i8, ptr %17, i64 161
  store i8 1, ptr %i.qw, align 1, !tbaa !1164
  %i.qx = getelementptr inbounds nuw i8, ptr %17, i64 162
  store i8 1, ptr %i.qx, align 2, !tbaa !1165
  %i.qy = getelementptr inbounds nuw i8, ptr %17, i64 163 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %17, i64 164
  %i.ra = getelementptr inbounds nuw i8, ptr %17, i64 166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.qy, i8 0, i64 5, i1 false)
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %17) #25
  %i.rb = call noundef ptr @_ZNK5clang12FunctionDecl30getDependentSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #25 ; 4 uses
  %.not = icmp eq ptr %i.rb, null
  br i1 %.not, label %bb.cy, label %bb.cp

bb.co:                                            ; preds = %.lr.ph, %bb.co
  %.0307650 = phi i32 [ 0, %.lr.ph ], [ %i.rg, %bb.co ] ; 2 uses
  %i.rc = zext i32 %.0307650 to i64
  %i.rd = load ptr, ptr %10, align 8, !tbaa !766
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.rc
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !853
  call void @_ZN5clang4Decl14setDeclContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(104) %i.rf, ptr noundef %spec.select16) #25
  %i.rg = add nuw i32 %.0307650, 1                ; 2 uses
  %i.rh = load i32, ptr %i.eo, align 8, !tbaa !758 ; 2 uses
  %i.ri = icmp ugt i32 %i.rh, %i.rg
  br i1 %i.ri, label %bb.co, label %._crit_edge.loopexit, !llvm.loop !2412

bb.cp:                                            ; preds = %_ZN5clang24TemplateDeclInstantiator23InitMethodInstantiationEPNS_13CXXMethodDeclES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.rj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.rj, ptr %18, align 8, !tbaa !766
  %i.rk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.rk, align 8, !tbaa !758
  %i.rl = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 8, ptr %i.rl, align 4, !tbaa !767
  %i.rm = getelementptr inbounds nuw i8, ptr %18, i64 272 ; 2 uses
  store i32 0, ptr %i.rm, align 8, !tbaa !1017
  %i.rn = getelementptr inbounds nuw i8, ptr %18, i64 276 ; 2 uses
  store i32 0, ptr %i.rn, align 4, !tbaa !1017
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rb, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !1241 ; 5 uses
  %.not348 = icmp eq ptr %i.rp, null
  br i1 %.not348, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.sroa.0.0.copyload.i427 = load i32, ptr %i.rp, align 8, !tbaa !796
  store i32 %.sroa.0.0.copyload.i427, ptr %i.rm, align 8, !tbaa !796
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  %.sroa.0.0.copyload.i428 = load i32, ptr %i.rq, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i428, ptr %i.rn, align 4, !tbaa !796
  %i.rr = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !1214
  %i.rv = zext i32 %i.ru to i64
  %i.rw = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.rx = call noundef zeroext i1 @_ZN5clang4Sema22SubstTemplateArgumentsEN4llvm8ArrayRefINS_19TemplateArgumentLocEEERKNS_30MultiLevelTemplateArgumentListERNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %i.rr, ptr nonnull %i.rs, i64 %i.rv, ptr noundef nonnull align 8 dereferenceable(118) %i.rw, ptr noundef nonnull align 8 dereferenceable(280) %18) #25
  br i1 %i.rx, label %.loopexit646, label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.ry = load i32, ptr %i.rb, align 8, !tbaa !1242 ; 2 uses
  %i.rz = zext i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rb, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.rz, 3
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %.idx
  %.not349651 = icmp eq i32 %i.ry, 0
  br i1 %.not349651, label %._crit_edge655, label %.lr.ph654

.lr.ph654:                                        ; preds = %bb.cr, %bb.cv
  %.0297652 = phi ptr [ %i.su, %bb.cv ], [ %i.sa, %bb.cr ] ; 2 uses
  %i.sc = load ptr, ptr %.0297652, align 8, !tbaa !1244
  %i.sd = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %.sroa.0.0.copyload.i431 = load i32, ptr %i.hw, align 8, !tbaa !796
  %i.se = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.sf = call noundef ptr @_ZN5clang4Sema20FindInstantiatedDeclENS_14SourceLocationEPNS_9NamedDeclERKNS_30MultiLevelTemplateArgumentListEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.sd, i32 %.sroa.0.0.copyload.i431, ptr noundef %i.sc, ptr noundef nonnull align 8 dereferenceable(118) %i.se, i1 noundef zeroext false) ; 3 uses
  %.not350.not = icmp eq ptr %i.sf, null
  br i1 %.not350.not, label %.loopexit646, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph654
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 28
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = lshr i32 %i.sh, 13
  %i.sj = and i32 %i.si, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = ptrtoint ptr %i.sf to i64
  %i.sm = or i64 %i.sk, %i.sl                     ; 2 uses
  %i.sn = load i32, ptr %i.qp, align 8, !tbaa !758 ; 2 uses
  %i.so = load i32, ptr %i.qq, align 4, !tbaa !767
  %.not.i.i.i.i432 = icmp ult i32 %i.sn, %i.so
  br i1 %.not.i.i.i.i432, label %bb.cu, label %bb.ct, !prof !768

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.qn, i64 %i.sm)
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.sp = zext i32 %i.sn to i64
  %i.sq = load ptr, ptr %i.qn, align 8, !tbaa !766
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.sp
  store i64 %i.sm, ptr %i.sr, align 1
  %i.ss = load i32, ptr %i.qp, align 8, !tbaa !758
  %i.st = add i32 %i.ss, 1
  store i32 %i.st, ptr %i.qp, align 8, !tbaa !758
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  store i32 2, ptr %17, align 8, !tbaa !1158
  %i.su = getelementptr inbounds nuw i8, ptr %.0297652, i64 8 ; 2 uses
  %.not349 = icmp eq ptr %i.su, %i.sb
  br i1 %.not349, label %._crit_edge655, label %.lr.ph654

._crit_edge655:                                   ; preds = %bb.cv, %bb.cr
  %i.sv = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.sw = load ptr, ptr %i.ro, align 8, !tbaa !1241
  %.not351 = icmp eq ptr %i.sw, null
  %. = select i1 %.not351, ptr null, ptr %18
  %i.sx = call noundef zeroext i1 @_ZN5clang4Sema35CheckFunctionTemplateSpecializationEPNS_12FunctionDeclEPNS_24TemplateArgumentListInfoERNS_12LookupResultEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.sv, ptr noundef nonnull %.2300, ptr noundef %., ptr noundef nonnull align 8 dereferenceable(168) %17, i1 noundef zeroext false) #25
  br i1 %i.sx, label %bb.cw, label %.loopexit646

bb.cw:                                            ; preds = %._crit_edge655
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %.2300, i1 noundef zeroext true) #25
  br label %.loopexit646

.loopexit646:                                     ; preds = %.lr.ph654, %bb.cq, %._crit_edge655, %bb.cw
  %cond4 = phi i1 [ true, %._crit_edge655 ], [ false, %bb.cq ], [ true, %bb.cw ], [ false, %.lr.ph654 ]
  %i.sy = load ptr, ptr %18, align 8, !tbaa !766  ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.rj
  br i1 %i.sz, label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %.loopexit646
  call void @free(ptr noundef %i.sy) #25
  br label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit

_ZN5clang24TemplateArgumentListInfoD2Ev.exit:     ; preds = %.loopexit646, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %cond4, label %.thread608, label %.thread613

bb.cy:                                            ; preds = %_ZN5clang24TemplateDeclInstantiator23InitMethodInstantiationEPNS_13CXXMethodDeclES2_.exit
  %i.ta = call noundef ptr @_ZNK5clang12FunctionDecl38getTemplateSpecializationArgsAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #25 ; 4 uses
  %.not347 = icmp eq ptr %i.ta, null
  br i1 %.not347, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tb = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.tc = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.tb, ptr noundef nonnull align 8 dereferenceable(168) %17, ptr noundef %.1296, i1 noundef zeroext false) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.td = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.td, ptr %19, align 8, !tbaa !766
  %i.te = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.tg = getelementptr inbounds nuw i8, ptr %19, i64 272
  %i.th = load <2 x i32>, ptr %i.ta, align 8, !tbaa !796
  store i32 0, ptr %i.te, align 8, !tbaa !758
  store i32 8, ptr %i.tf, align 4, !tbaa !767
  store <2 x i32> %i.th, ptr %i.tg, align 8, !tbaa !796
  %i.ti = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !1214
  %i.tm = zext i32 %i.tl to i64
  %i.tn = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.to = call noundef zeroext i1 @_ZN5clang4Sema22SubstTemplateArgumentsEN4llvm8ArrayRefINS_19TemplateArgumentLocEEERKNS_30MultiLevelTemplateArgumentListERNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ti, ptr nonnull %i.tj, i64 %i.tm, ptr noundef nonnull align 8 dereferenceable(118) %i.tn, ptr noundef nonnull align 8 dereferenceable(280) %19) #25 ; 2 uses
  br i1 %i.to, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tp = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.tq = call noundef zeroext i1 @_ZN5clang4Sema35CheckFunctionTemplateSpecializationEPNS_12FunctionDeclEPNS_24TemplateArgumentListInfoERNS_12LookupResultEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.tp, ptr noundef nonnull %.2300, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(168) %17, i1 noundef zeroext false) #25
  br i1 %i.tq, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %.2300, i1 noundef zeroext true) #25
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db, %bb.cz
  %i.tr = load ptr, ptr %19, align 8, !tbaa !766  ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.td
  br i1 %i.ts, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @free(ptr noundef %i.tr) #25
  br label %bb.di

bb.de:                                            ; preds = %bb.cy
  %i.tt = icmp eq ptr %.0280, null
  %or.cond18 = or i1 %i.ls, %i.tt
  %or.cond20 = or i1 %.not.i360, %or.cond18
  br i1 %or.cond20, label %bb.df, label %.thread608

bb.df:                                            ; preds = %bb.de
  %i.tu = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %21 = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %spec.select21 = select i1 %i.hm, ptr null, ptr %21
  %i.tv = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.tu, ptr noundef nonnull align 8 dereferenceable(168) %17, ptr noundef %spec.select21, i1 noundef zeroext false) #25 ; 0 uses
  %i.tw = call noundef zeroext i1 @_ZNK5clang12LookupResult15isSingleTagDeclEv(ptr noundef nonnull align 8 dereferenceable(168) %17)
  br i1 %i.tw, label %bb.dg, label %.thread608

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %17, align 8, !tbaa !1158
  store i32 0, ptr %i.qp, align 8, !tbaa !758
  %i.tx = load ptr, ptr %i.qr, align 8, !tbaa !1171 ; 2 uses
  %.not.i438 = icmp eq ptr %i.tx, null
  br i1 %.not.i438, label %_ZN5clang12LookupResult5clearEv.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.tx) #25
  br label %_ZN5clang12LookupResult5clearEv.exit

_ZN5clang12LookupResult5clearEv.exit:             ; preds = %bb.dg, %bb.dh
  store i8 0, ptr %i.ra, align 2, !tbaa !1169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qr, i8 0, i64 16, i1 false)
  br label %.thread608

bb.di:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br i1 %i.to, label %.thread613, label %.thread608

.thread608:                                       ; preds = %bb.df, %_ZN5clang12LookupResult5clearEv.exit, %bb.de, %bb.di, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit
  %.4305 = phi i1 [ true, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit ], [ true, %bb.di ], [ false, %bb.de ], [ false, %_ZN5clang12LookupResult5clearEv.exit ], [ false, %bb.df ] ; 2 uses
  %i.ty = call noundef zeroext i1 @_ZNK5clang4Decl30isInLocalScopeForInstantiationEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #25
  %i.tz = load i32, ptr %i.eo, align 8
  %i.ua = icmp ne i32 %i.tz, 0
  %or.cond659 = select i1 %i.ty, i1 %i.ua, i1 false
  br i1 %or.cond659, label %.lr.ph657, label %.loopexit

.lr.ph657:                                        ; preds = %.thread608, %bb.dm
  %i.ub = phi i64 [ %i.vb, %bb.dm ], [ 0, %.thread608 ] ; 4 uses
  %.0294656 = phi i32 [ %i.va, %bb.dm ], [ 0, %.thread608 ]
  %i.uc = load ptr, ptr %10, align 8, !tbaa !766
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.ub
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !853
  %i.uf = call noundef zeroext i1 @_ZNK5clang11ParmVarDecl13hasDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ue) #25
  br i1 %i.uf, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %.lr.ph657
  %i.ug = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.uh = load ptr, ptr %10, align 8, !tbaa !766
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.ub
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !853
  %i.uk = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.ul = call noundef zeroext i1 @_ZN5clang4Sema20SubstDefaultArgumentENS_14SourceLocationEPNS_11ParmVarDeclERKNS_30MultiLevelTemplateArgumentListEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ug, i32 %.sroa.0.0.copyload.i398, ptr noundef %i.uj, ptr noundef nonnull align 8 dereferenceable(118) %i.uk, i1 noundef zeroext false) #25
  br i1 %i.ul, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.um = load ptr, ptr %10, align 8, !tbaa !766
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.ub
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !853
  %i.up = call noundef ptr @_ZN5clang11ParmVarDecl27getUninstantiatedDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104) %i.uo) #25 ; 4 uses
  %i.uq = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.ur = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.up) #27
  %i.us = call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.up) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr %i.up, ptr %i.d, align 8, !tbaa !770
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %.sroa.0.0.copyload.i440 = load i64, ptr %i.ut, align 8, !tbaa !755
  %i.uu = call i64 @_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.uq, i32 %i.ur, i32 %i.us, ptr nonnull %i.d, i64 1, i64 %.sroa.0.0.copyload.i440) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %spec.select.i441 = icmp ugt i64 %i.uu, 1
  br i1 %spec.select.i441, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.uv = load ptr, ptr %10, align 8, !tbaa !766
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.ub
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !853
  %i.uy = and i64 %i.uu, -2
  %i.uz = inttoptr i64 %i.uy to ptr
  call void @_ZN5clang11ParmVarDecl13setDefaultArgEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(104) %i.ux, ptr noundef %i.uz) #25
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl, %bb.dj, %.lr.ph657
  %i.va = add nuw i32 %.0294656, 1                ; 3 uses
  %i.vb = zext i32 %i.va to i64
  %i.vc = load i32, ptr %i.eo, align 8, !tbaa !758
  %i.vd = icmp ugt i32 %i.vc, %i.va
  br i1 %i.vd, label %.lr.ph657, label %.loopexit, !llvm.loop !2413

.loopexit:                                        ; preds = %bb.dm, %.thread608
  %i.ve = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.vf = getelementptr inbounds nuw i8, ptr %.2300, i64 80 ; 3 uses
  %i.vg = load i32, ptr %i.vf, align 8            ; 5 uses
  %i.vh = and i32 %i.vg, 37748736
  %i.vi = icmp eq i32 %i.vh, 4194304
  %i.vj = and i32 %i.vg, 33554432
  %i.vk = icmp ne i32 %i.vj, 0
  %or.cond.i = or i1 %i.vi, %i.vk
  br i1 %or.cond.i, label %_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit, label %bb.dn

bb.dn:                                            ; preds = %.loopexit
  %i.vl = and i32 %i.vg, 134217728
  %.not.i.i442 = icmp eq i32 %i.vl, 0
  br i1 %.not.i.i442, label %bb.do, label %_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i

bb.do:                                            ; preds = %bb.dn
  %i.vm = getelementptr inbounds nuw i8, ptr %.2300, i64 128 ; 2 uses
  %i.vn = load i8, ptr %i.vm, align 8, !tbaa !755
  %i.vo = trunc i8 %i.vn to i1
  %i.vp = load ptr, ptr %i.vm, align 8
  %i.vq = icmp ne ptr %i.vp, null
  %i.vr = select i1 %i.vo, i1 true, i1 %i.vq
  %i.vs = and i32 %i.vg, 1073741824
  %i.vt = icmp ne i32 %i.vs, 0
  %or.cond3.i = or i1 %i.vt, %i.vr
  br i1 %or.cond3.i, label %_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit, label %bb.dp

_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i: ; preds = %bb.dn
  %.old.i = and i32 %i.vg, 1073741824
  %.old2.not.i = icmp eq i32 %.old.i, 0
  br i1 %.old2.not.i, label %bb.dp, label %_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit

bb.dp:                                            ; preds = %_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i, %bb.do
  %i.vu = getelementptr inbounds nuw i8, ptr %.2300, i64 84
  %i.vv = load i16, ptr %i.vu, align 4
  %i.vw = and i16 %i.vv, 96
  %or.cond6.not.i = icmp eq i16 %i.vw, 0
  br i1 %or.cond6.not.i, label %bb.dq, label %_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit

bb.dq:                                            ; preds = %bb.dp
  %i.vx = call noundef zeroext i1 @_ZNK5clang4Decl15hasDefiningAttrEv(ptr noundef nonnull align 8 dereferenceable(168) %.2300) #25
  br label %_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit

_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit: ; preds = %.loopexit, %bb.do, %_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i, %bb.dp, %bb.dq
  %i.vy = phi i1 [ %i.vx, %bb.dq ], [ true, %bb.dp ], [ true, %_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i ], [ true, %bb.do ], [ true, %.loopexit ]
  %i.vz = call noundef zeroext i1 @_ZN5clang4Sema24CheckFunctionDeclarationEPNS_5ScopeEPNS_12FunctionDeclERNS_12LookupResultEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ve, ptr noundef null, ptr noundef nonnull %.2300, ptr noundef nonnull align 8 dereferenceable(168) %17, i1 noundef zeroext %.4305, i1 noundef zeroext %i.vy) #25 ; 0 uses
  %i.wa = load i32, ptr %i.db, align 8
  %i.wb = and i32 %i.wa, 524288
  %.not637 = icmp eq i32 %i.wb, 0
  br i1 %.not637, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit
  %i.wc = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.wd = call noundef zeroext i1 @_ZN5clang4Sema15CheckPureMethodEPNS_13CXXMethodDeclENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.wc, ptr noundef nonnull %.2300, i64 0) #25 ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZNK5clang12FunctionDecl28isThisDeclarationADefinitionEv.exit
  br i1 %.not.i360, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.we = getelementptr inbounds nuw i8, ptr %.2300, i64 104
  %.0.copyload.i.i.i.i.i.i.i443 = load i64, ptr %i.we, align 8 ; 3 uses
  %i.wf = and i64 %.0.copyload.i.i.i.i.i.i.i443, 3
  %.not.i444 = icmp ne i64 %i.wf, 0
  %i.wg = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i443, 4
  %or.cond.i445.not = or i1 %i.wg, %.not.i444
  br i1 %or.cond.i445.not, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.wh = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i443 to ptr
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 28
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ds, %bb.dt, %bb.du
  %.sink.in = phi ptr [ %i.wi, %bb.du ], [ %i.ic, %bb.dt ], [ %i.ic, %bb.ds ]
  %.sink = load i32, ptr %.sink.in, align 4
  %i.wj = and i32 %.sink, 24576                   ; 2 uses
  %i.wk = load i32, ptr %i.ps, align 4
  %i.wl = and i32 %i.wk, -24577
  %i.wm = or disjoint i32 %i.wl, %i.wj
  store i32 %i.wm, ptr %i.ps, align 4
  %.not353 = icmp eq ptr %.0280, null             ; 2 uses
  br i1 %.not353, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wn = getelementptr inbounds nuw i8, ptr %.0280, i64 28 ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 4
  %i.wp = and i32 %i.wo, -24577
  %i.wq = or disjoint i32 %i.wp, %i.wj
  store i32 %i.wq, ptr %i.wn, align 4
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.wr = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  call void @_ZN5clang4Sema20CheckOverrideControlEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.wr, ptr noundef nonnull %.2300) #25
  %i.ws = load i32, ptr %i.db, align 8            ; 2 uses
  %i.wt = and i32 %i.ws, 67108864
  %.not640 = icmp eq i32 %i.wt, 0
  br i1 %.not640, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wu = call noundef zeroext i1 @_ZN5clang24TemplateDeclInstantiator22SubstDefaultedFunctionEPNS_12FunctionDeclES2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %.2300, ptr noundef %1)
  br i1 %i.wu, label %.thread613, label %._crit_edge665

._crit_edge665:                                   ; preds = %bb.dy
  %.pre666 = load i32, ptr %i.db, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %._crit_edge665, %bb.dx
  %i.wv = phi i32 [ %.pre666, %._crit_edge665 ], [ %i.ws, %bb.dx ] ; 2 uses
  %i.ww = and i32 %i.wv, 37748736
  %i.wx = icmp eq i32 %i.ww, 4194304
  br i1 %i.wx, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.wy = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.wz = getelementptr inbounds nuw i8, ptr %.2300, i64 24
end_hunk_1
begin_hunk_2_@"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE19TransformMemberExprEPNS_10MemberExprE":bb.a
  %.val50.i = load ptr, ptr %0, align 8, !tbaa !1865
  %i.hc = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = lshr i32 %i.hd, 13
  %i.hf = and i32 %i.he, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = ptrtoint ptr %.0 to i64
  %i.hi = or i64 %i.hg, %i.hh
  %i.hj = call i64 @_ZN5clang4Sema23BuildFieldReferenceExprEPNS_4ExprEbNS_14SourceLocationERKNS_12CXXScopeSpecEPNS_9FieldDeclENS_14DeclAccessPairERKNS_19DeclarationNameInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50.i, ptr noundef %.0.i132, i1 noundef zeroext %i.gc, i32 %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %.0.i, i64 %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !1191
  %.not.i.i.i133 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i133, label %_ZN5clang12CXXScopeSpecD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1192
  call void @free(ptr noundef %i.hn) #25
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit.i

_ZN5clang12CXXScopeSpecD2Ev.exit.i:               ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17RebuildMemberExprEPNS_4ExprES2_bNS_22NestedNameSpecifierLocES2_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESH_.exit"

bb.ag:                                            ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit127.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %.sroa.0139.0, ptr %.sroa.7.0) #25
  %i.ho = and i64 %i.gn, -2
  %i.hp = inttoptr i64 %i.ho to ptr               ; 4 uses
  %i.hq = load i24, ptr %i.hp, align 8
  %i.hr = and i24 %i.hq, 262144
  %.not24.i = icmp eq i24 %i.hr, 0
  br i1 %.not24.i, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i55.i = load i64, ptr %i.hs, align 8, !tbaa !755 ; 2 uses
  br i1 %i.gc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ht = and i64 %.sroa.0.0.copyload.i55.i, -16
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load ptr, ptr %i.hu, align 16, !tbaa !808
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.hw, align 8, !tbaa !755
  %i.hx = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = load ptr, ptr %i.hy, align 16, !tbaa !808
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load i8, ptr %i.ia, align 16
  %i.ic = icmp eq i8 %i.ib, 40
  br i1 %i.ic, label %bb.aj, label %bb.bc

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.val49.i = load ptr, ptr %0, align 8, !tbaa !1865
  store i32 0, ptr %4, align 8, !tbaa !1158
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.id, align 4, !tbaa !1159
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !766
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 0, ptr %i.ig, align 8, !tbaa !758
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 8, ptr %i.ih, align 4, !tbaa !767
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i8 0, i64 24, i1 false)
  store ptr %.val49.i, ptr %i.ij, align 8, !tbaa !1160
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1239
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 144
  store <4 x i32> <i32 0, i32 0, i32 3, i32 0>, ptr %i.il, align 8, !tbaa !755
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <8 x i8> <i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0>, ptr %i.im, align 8, !tbaa !860
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %i.ip = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = lshr i32 %i.iq, 13
  %i.is = and i32 %i.ir, 3
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = ptrtoint ptr %.0 to i64
  %i.iv = or i64 %i.it, %i.iu                     ; 2 uses
  %i.iw = load i32, ptr %i.ig, align 8, !tbaa !758 ; 2 uses
  %i.ix = load i32, ptr %i.ih, align 4, !tbaa !767
  %.not.i.i.i.i.i = icmp ult i32 %i.iw, %i.ix
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ak, !prof !768

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 %i.iv)
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.iy = zext i32 %i.iw to i64
  %i.iz = load ptr, ptr %i.ie, align 8, !tbaa !766
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.iy
  store i64 %i.iv, ptr %i.ja, align 1
  %i.jb = load i32, ptr %i.ig, align 8, !tbaa !758
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ig, align 8, !tbaa !758
  br label %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i

_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i: ; preds = %bb.al, %bb.ak
  store i32 2, ptr %4, align 8, !tbaa !1158
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %.val48.i = load ptr, ptr %0, align 8, !tbaa !1865 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val48.i, i64 4592
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !766
  %i.jf = getelementptr inbounds nuw i8, ptr %.val48.i, i64 4600
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !758
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [792 x i8], ptr %i.je, i64 %i.jh
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -792
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !1805
  switch i32 %i.jk, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i [
    i32 0, label %bb.am
    i32 3, label %bb.am
    i32 1, label %bb.am
  ]

bb.am:                                            ; preds = %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i
  %i.jl = call noundef zeroext i1 @_ZNK5clang4Expr17isImplicitCXXThisEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #25
  br i1 %i.jl, label %bb.an, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

bb.an:                                            ; preds = %bb.am
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = and i32 %i.jn, 127
  switch i32 %i.jo, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i [
    i32 52, label %bb.ao
    i32 51, label %bb.ao
    i32 50, label %bb.ao
    i32 49, label %bb.ao
    i32 33, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an
  %.sroa.0.0.copyload.i56.i = load i64, ptr %i.hs, align 8, !tbaa !755
  %i.jp = and i64 %.sroa.0.0.copyload.i56.i, -16
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = load ptr, ptr %i.jq, align 16, !tbaa !808
  %i.js = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jr) #25
  %i.jt = and i64 %i.js, -16
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load ptr, ptr %i.ju, align 16, !tbaa !808
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.sroa.0.0.copyload.i.i.i.i59.i = load i64, ptr %i.jw, align 8, !tbaa !755
  %i.jx = and i64 %.sroa.0.0.copyload.i.i.i.i59.i, -16
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = load ptr, ptr %i.jy, align 16, !tbaa !808 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load i8, ptr %i.ka, align 16            ; 3 uses
  %i.kc = add i8 %i.kb, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.kc, 3
  %.not.i7.i.i = icmp ne ptr %i.jz, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.kd = and i8 %i.kb, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.kd, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.ap, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !814 ; 3 uses
  %i.kg = icmp eq i8 %i.kb, 49
  br i1 %i.kg, label %bb.aq, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 28
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = and i32 %i.ki, 127
  %i.kk = add nsw i32 %i.kj, -60
  %i.kl = icmp ult i32 %i.kk, 3
  br i1 %i.kl, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.aq, %bb.ap
  %i.km = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.kf) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.km, null
  %spec.select22.i = select i1 %.not.not.i.i.i, ptr %i.kf, ptr %i.km ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.kn, align 8 ; 3 uses
  %i.ko = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.kq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

bb.as:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.kr = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !804
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

_ZN5clang4Decl14getDeclContextEv.exit.i:          ; preds = %bb.as, %bb.ar
  %.0.i.i = phi ptr [ %i.kq, %bb.ar ], [ %i.kt, %bb.as ] ; 2 uses
  %8 = icmp eq ptr %.0.i.i, null                  ; 2 uses
  %9 = getelementptr inbounds i8, ptr %.0.i.i, i64 -64
  %10 = select i1 %8, ptr null, ptr %9            ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %spec.select22.i, i64 64
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %spec.select.i = select i1 %8, ptr null, ptr %11
  %i.kv = call noundef zeroext i1 @_ZNK5clang11DeclContext6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef %spec.select.i)
  br i1 %i.kv, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i
  %i.kw = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13isDerivedFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(144) %spec.select22.i, ptr noundef %10) #25
  br i1 %i.kw, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.at
  %.val47.i = load ptr, ptr %0, align 8, !tbaa !1865
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.0.0.copyload.i60.i = load i64, ptr %i.kx, align 8, !tbaa !755
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.sroa.0.0.copyload.i61.i = load i32, ptr %i.ky, align 8, !tbaa !796
  %i.kz = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %.val47.i, ptr noundef nonnull %.0.i, i64 %.sroa.0.0.copyload.i60.i, i32 noundef 1, i32 %.sroa.0.0.copyload.i61.i, ptr noundef null) #25
  %i.la = ptrtoint ptr %i.kz to i64
  br label %bb.au

_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i:   ; preds = %bb.at, %_ZN5clang4Decl14getDeclContextEv.exit.i, %bb.aq, %bb.ao, %bb.an, %bb.am, %_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE.exit.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1865
  %i.lb = call i64 @_ZN5clang4Sema24BuildMemberReferenceExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationEbRKNS_12CXXScopeSpecES4_PNS_9NamedDeclERNS_12LookupResultEPKNS_24TemplateArgumentListInfoEPKNS_5ScopeEbPNS0_26ActOnMemberAccessExtraArgsE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, ptr noundef nonnull %i.hp, i64 %.sroa.0.0.copyload.i55.i, i32 %i.fs, i1 noundef zeroext %i.gc, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 %.sroa.0.0.i62, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef %i.gm, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #25
  br label %bb.au

bb.au:                                            ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, %.critedge.i
  %.sroa.019.0.i = phi i64 [ %i.lb, %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i ], [ %i.la, %.critedge.i ]
  %i.lc = load i8, ptr %i.in, align 1, !tbaa !1166, !range !785, !noundef !67
  %i.ld = trunc nuw i8 %i.lc to i1
  %.pre25.i = load i32, ptr %4, align 8           ; 3 uses
  br i1 %i.ld, label %bb.av, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

bb.av:                                            ; preds = %bb.au
  %i.le = icmp ne i32 %.pre25.i, 5
  %i.lf = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = icmp ne ptr %i.lg, null
  %or.cond.i.i.i = select i1 %i.le, i1 %i.lh, i1 false
  br i1 %or.cond.i.i.i, label %bb.aw, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.li = load ptr, ptr %i.ij, align 8, !tbaa !1160 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 216
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !1128, !nonnull !67, !align !68
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = and i64 %i.lm, 18014398509481984
  %.not.i.i62.i = icmp eq i64 %i.ln, 0
  br i1 %.not.i.i62.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.li, ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %.pre.i131 = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i: ; preds = %bb.ax, %bb.av, %bb.au
  %i.lo = phi i32 [ %.pre.i131, %bb.ax ], [ %.pre25.i, %bb.au ], [ %.pre25.i, %bb.av ]
  %i.lp = load i8, ptr %i.io, align 4, !tbaa !1167, !range !785, !noundef !67
  %i.lq = trunc nuw i8 %i.lp to i1
  %i.lr = icmp eq i32 %i.lo, 5
  %or.cond.i = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %or.cond.i, label %bb.ay, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i

bb.ay:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i
  %i.ls = load ptr, ptr %i.ij, align 8, !tbaa !1160
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ls, ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i: ; preds = %bb.ay, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i.i, %bb.aw
  %i.lt = load ptr, ptr %i.ii, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i130, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.lt) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i.i
  %i.lu = load ptr, ptr %i.ie, align 8, !tbaa !766 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.if
  br i1 %i.lv, label %_ZN5clang12LookupResultD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef %i.lu) #25
  br label %_ZN5clang12LookupResultD2Ev.exit.i

_ZN5clang12LookupResultD2Ev.exit.i:               ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5clang12LookupResultD2Ev.exit.i, %bb.ai, %bb.ag
  %.sroa.019.2.i = phi i64 [ 1, %bb.ag ], [ %.sroa.019.0.i, %_ZN5clang12LookupResultD2Ev.exit.i ], [ 1, %bb.ai ]
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !1191
  %.not.i.i63.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i63.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit64.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1192
  call void @free(ptr noundef %i.lz) #25
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit64.i

_ZN5clang12CXXScopeSpecD2Ev.exit64.i:             ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17RebuildMemberExprEPNS_4ExprES2_bNS_22NestedNameSpecifierLocES2_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESH_.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17RebuildMemberExprEPNS_4ExprES2_bNS_22NestedNameSpecifierLocES2_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESH_.exit": ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit64.i, %_ZN5clang12CXXScopeSpecD2Ev.exit.i, %bb.ac, %bb.z, %bb.x
  %storemerge = phi i64 [ 1, %bb.x ], [ %.sroa.019.2.i, %_ZN5clang12CXXScopeSpecD2Ev.exit64.i ], [ 1, %bb.z ], [ %i.hj, %_ZN5clang12CXXScopeSpecD2Ev.exit.i ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.be

bb.be:                                            ; preds = %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17RebuildMemberExprEPNS_4ExprES2_bNS_22NestedNameSpecifierLocES2_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESH_.exit"
  %i.ma = phi ptr [ %i.fo, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17RebuildMemberExprEPNS_4ExprES2_bNS_22NestedNameSpecifierLocES2_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESH_.exit" ], [ %i.eu, %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit ]
  %.sroa.0145.0 = phi i64 [ %storemerge, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17RebuildMemberExprEPNS_4ExprES2_bNS_22NestedNameSpecifierLocES2_RKNS_19DeclarationNameInfoEPNS_9ValueDeclEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoESH_.exit" ], [ 1, %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit ]
  %i.mb = load ptr, ptr %5, align 8, !tbaa !766   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ma
  br i1 %i.mc, label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef %i.mb) #25
  br label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit

_ZN5clang24TemplateArgumentListInfoD2Ev.exit:     ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge59, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, %_ZNK5clang10MemberExpr15getQualifierLocEv.exit, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit80", %bb.a
  %.sroa.0145.2 = phi i64 [ 1, %bb.a ], [ 1, %_ZNK5clang10MemberExpr15getQualifierLocEv.exit ], [ %.sroa.0145.0, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit ], [ %i.el, %.critedge59 ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit" ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit80" ]
  ret i64 %.sroa.0145.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE28TransformMatrixSubscriptExprEPNS_19MatrixSubscriptExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1738
  %i.c = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1738
  %i.g = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1738
  %i.k = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j) ; 3 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.m, align 4, !tbaa !861
  %.not = icmp eq i32 %.val.val, 0
  %i.n = and i64 %i.c, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1738
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.g, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !1738
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.k, -2
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !1738
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.z = ptrtoint ptr %1 to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %i.aa = and i64 %i.g, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = and i64 %i.k, -2
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.ae, align 4, !tbaa !796
  %i.af = tail call i64 @_ZN5clang4Sema32CreateBuiltinMatrixSubscriptExprEPNS_4ExprES2_S2_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %i.o, ptr noundef %i.ab, ptr noundef %i.ad, i32 %.sroa.0.0.copyload.i) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %._crit_edge, %bb.h, %bb.a
  %.sroa.018.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.z, %bb.h ], [ %i.af, %._crit_edge ], [ 1, %bb.c ]
  ret i64 %.sroa.018.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE34TransformMatrixSingleSubscriptExprEPNS_25MatrixSingleSubscriptExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1738
end_hunk_2
begin_hunk_3_@"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE":bb.a

bb.e:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 3 uses
  %i.ap = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ap, align 4, !tbaa !861
  %i.aq = icmp eq i32 %.val.val, 0
  %i.ar = icmp eq ptr %.0.i, %i.b
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !3410
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !753
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = ptrtoint ptr %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ay = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  %i.az = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ay, ptr noundef nonnull %.0.i) #25
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", %bb.h, %bb.g
  %.sroa.0.0 = phi i64 [ %i.ax, %bb.g ], [ %i.az, %bb.h ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit" ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3420 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1872, !noalias !3421 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1873, !noalias !3421 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1803, !noalias !3421 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !796, !noalias !3422
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1764

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !986, !noalias !3422
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !768

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !796, !noalias !3422
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1765

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1875
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit": ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not23 = icmp eq i32 %i.aq, 0
  br i1 %.not23, label %bb.f, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !770
  %i.at = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.at, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ], [ 0, %bb.e ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 4 uses
  %i.av = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.av, align 4, !tbaa !861
  %.not24 = icmp eq i32 %.val.val, 0
  br i1 %.not24, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !3420
  %i.ax = icmp eq ptr %.0.i, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3423
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !753
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bd = and i64 %.sroa.0.0, -2
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i32, ptr %1, align 8
  %i.bg = and i32 %i.bf, 524288
  %.not.i18 = icmp eq i32 %i.bg, 0
  br i1 %.not.i18, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !770
  br label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19: ; preds = %bb.i, %bb.j
  %i.bj = phi ptr [ %i.bi, %bb.j ], [ null, %bb.i ]
  %i.bk = icmp eq ptr %i.bj, %i.be
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19
  %i.bl = ptrtoint ptr %1 to i64
  br label %bb.m

bb.l:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit19, %bb.h, %bb.g, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.bm, align 4, !tbaa !796
  %i.bn = and i64 %.sroa.0.0, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr i8, ptr %.val, i64 232
  %.val15.val = load ptr, ptr %i.bp, align 8, !tbaa !805
  %i.bq = getelementptr i8, ptr %.val, i64 616
  %.val15.val16 = load ptr, ptr %i.bq, align 8, !tbaa !753
  %i.br = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val15.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.bo, ptr noundef %.val15.val16) #25
  %i.bs = ptrtoint ptr %i.br to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"
  %.sroa.022.1 = phi i64 [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit" ], [ %i.bl, %bb.k ], [ %i.bs, %bb.l ], [ 1, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ]
  ret i64 %.sroa.022.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE25TransformCXXConstructExprEPNS_16CXXConstructExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2038", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef.1994", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.2038", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2016
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i = icmp eq i16 %i.e, 118             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %1, ptr null
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %5, ptr %6
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !770
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #25
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i44 = icmp eq i16 %i.j, 118           ; 2 uses
  %spec.select.i.i.i.i.i45 = select i1 %.not.i.i.i44, ptr %1, ptr null
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i45, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %spec.select.i.i.i46 = select i1 %.not.i.i.i44, ptr %7, ptr %i.k
  %i.l = load ptr, ptr %spec.select.i.i.i46, align 8, !tbaa !770
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not70 = icmp eq i32 %i.o, 0
  br i1 %.not70, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i47 = icmp eq i32 %i.p, 118           ; 2 uses
  %spec.select.i.i.i.i.i48 = select i1 %.not.i.i.i47, ptr %1, ptr null
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i48, i64 48
  %spec.select.i.i.i49 = select i1 %.not.i.i.i47, ptr %i.q, ptr %i.k
  %i.r = load ptr, ptr %spec.select.i.i.i49, align 8, !tbaa !770
  %i.s = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE20TransformInitializerEPNS_4ExprEb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit.thread"

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !755 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit.thread", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i79 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i79, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.x = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.w, i64 %.sroa.0.0.copyload.i, i32 0) #25, !inline_history !29
  %i.y = tail call fastcc noundef ptr @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeEPNS_14TypeSourceInfoE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x), !inline_history !29 ; 2 uses
  %.not.i80 = icmp eq ptr %i.y, null
  br i1 %.not.i80, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit.thread", label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit": ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !755 ; 4 uses
  %i.z = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.z, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit.thread", label %bb.h

bb.h:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2017 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1872, !noalias !3432 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1873, !noalias !3432 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1803, !noalias !3432 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.ab to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.aj, %i.ao                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !796, !noalias !3433
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1764

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.ap, %bb.i ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !986, !noalias !3433
  %i.ba = icmp eq ptr %i.ab, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !768

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !796, !noalias !3433
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1765

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  %i.bk = zext i32 %i.ah to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ah to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bl, %.loopexit.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.bm
  br i1 %.not.i, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1875
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit": ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bo, %bb.k ], [ %i.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 7 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit.thread", label %bb.l

bb.l:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !860
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !766
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !758
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.br, align 4, !tbaa !767
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1865 ; 6 uses
  %i.bs = load i32, ptr %1, align 8               ; 2 uses
  %i.bt = and i32 %i.bs, 2097152
  %.not71 = icmp eq i32 %i.bt, 0
  %i.bu = trunc i32 %i.bs to i16                  ; 3 uses
  br i1 %.not71, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.val39, i64 4592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !766
  %i.bx = getelementptr inbounds nuw i8, ptr %.val39, i64 4600
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !758
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [792 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -792
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1805
  switch i32 %i.cc, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val39, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1128, !nonnull !67, !align !68
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i50 = icmp eq i64 %i.cg, 0
  br i1 %.not.i50, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 noundef 1, ptr noundef null, i32 noundef 4) #25
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ch = phi i16 [ %i.bu, %bb.m ], [ %i.bu, %bb.n ], [ %.pre, %bb.o ], [ %i.bu, %bb.l ]
  %.sroa.6.0 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.l ] ; 2 uses
  %i.ci = and i16 %i.ch, 511
  %.not.i.i = icmp eq i16 %i.ci, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %1, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i = select i1 %.not.i.i, ptr %8, ptr %i.cj
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !2016
  %i.cl = call fastcc noundef zeroext i1 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS9_EEPb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.cl, label %bb.p, label %.critedge38

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.q, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.r, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51

bb.r:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51: ; preds = %.critedge38, %bb.r
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 3 uses
  %i.cm = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.cm, align 4, !tbaa !861
  %.not72 = icmp eq i32 %.val.val, 0
  br i1 %.not72, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.t, align 8, !tbaa !755
  %i.cn = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i52
  br i1 %i.cn, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !2017
  %i.cp = icmp ne ptr %.0.i, %i.co
  %i.cq = load i8, ptr %i.a, align 1, !range !785
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #27
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.cs, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #25
  %i.ct = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.t, %bb.s, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51
  %i.cu = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #27 ; 2 uses
  %i.cv = load i32, ptr %1, align 8               ; 3 uses
  %i.cw = and i32 %i.cv, 524288
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = load ptr, ptr %4, align 8, !tbaa !766
  %i.cz = load i32, ptr %i.bq, align 8, !tbaa !758
  %i.da = zext i32 %i.cz to i64
  %i.db = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = and <4 x i32> %i.dc, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.de = icmp ne <4 x i32> %i.dd, zeroinitializer ; 4 uses
  %i.df = lshr i32 %i.cv, 24
  %i.dg = and i32 %i.df, 7
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 2305843009213693952
  %.not.i55 = icmp eq i64 %i.dk, 0
  br i1 %.not.i55, label %bb.v, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3434
  br label %bb.v

bb.v:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i56 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dl, ptr %2, align 8, !tbaa !766
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !758
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.dn, align 4, !tbaa !767
  %i.do = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %.0.i56, i64 %.sroa.0.0.copyload.i.i, ptr %i.cy, i64 %i.da, i32 %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #25
  br i1 %i.do, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1865
  %i.dp = load ptr, ptr %2, align 8, !tbaa !766
  store ptr %i.dp, ptr %3, align 8, !tbaa !905
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load i32, ptr %i.dm, align 8, !tbaa !758
  %i.ds = zext i32 %i.dr to i64
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !906
  %i.dt = extractelement <4 x i1> %i.de, i64 0
  %i.du = extractelement <4 x i1> %i.de, i64 1
  %i.dv = extractelement <4 x i1> %i.de, i64 2
  %i.dw = extractelement <4 x i1> %i.de, i64 3
  %i.dx = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.cu, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cx, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.1994") align 8 %3, i1 noundef zeroext %i.dw, i1 noundef zeroext %i.dv, i1 noundef zeroext %i.du, i1 noundef zeroext %i.dt, i32 noundef %i.dg, i64 %.sroa.0.0.copyload.i54) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.020.0.i = phi i64 [ %i.dx, %bb.w ], [ 1, %bb.v ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !766   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dl
  br i1 %i.dz, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23RebuildCXXConstructExprENS_8QualTypeES2_PNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.dy) #25
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23RebuildCXXConstructExprENS_8QualTypeES2_PNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23RebuildCXXConstructExprENS_8QualTypeES2_PNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit": ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.p, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23RebuildCXXConstructExprENS_8QualTypeES2_PNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit", %bb.u
  %.sroa.067.0 = phi i64 [ %i.ct, %bb.u ], [ %.sroa.020.0.i, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23RebuildCXXConstructExprENS_8QualTypeES2_PNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit" ], [ 1, %bb.p ], [ 1, %bb.q ]
  %i.ea = load ptr, ptr %4, align 8, !tbaa !766   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bp
  br i1 %i.eb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.ea) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit.thread"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit.thread": ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit", %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", %bb.e
  %.sroa.067.2 = phi i64 [ %i.s, %bb.e ], [ %.sroa.067.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeENS_8QualTypeE.exit" ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit" ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.sroa.067.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.2038", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3444
  %i.d = tail call fastcc noundef ptr @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2017 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1872, !noalias !3445 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1873, !noalias !3445 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1803, !noalias !3445 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.n, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !796, !noalias !3446
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1764

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !986, !noalias !3446
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !768

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !796, !noalias !3446
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1765

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = zext i32 %i.l to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ao
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.l to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ao, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ap, %.loopexit.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.aq
  br i1 %.not.i, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1875
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit": ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.w, label %bb.f

bb.f:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !860
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !766
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !758
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !767
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2016 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #25
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1865 ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not51 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not51, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val39, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !766
  %i.bf = getelementptr inbounds nuw i8, ptr %.val39, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !758
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1805
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val39, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1128, !nonnull !67, !align !68
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i42 = icmp eq i64 %i.bo, 0
  br i1 %.not.i42, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 noundef 1, ptr noundef null, i32 noundef 4) #25
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.h, %bb.i, %bb.j
  %i.bp = phi i16 [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %.pre, %bb.j ], [ %i.bc, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.bq = and i16 %i.bp, 511
  %.not.i.i = icmp eq i16 %i.bq, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %1, ptr null
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.br, ptr %i.b
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !2016
  %i.bt = call fastcc noundef zeroext i1 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS9_EEPb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond50.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond50.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #27
  %i.bx = load ptr, ptr %2, align 8, !tbaa !766
  %i.by = load i32, ptr %i.au, align 8, !tbaa !758
  %i.bz = zext i32 %i.by to i64
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #27
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.cb = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #25 ; 2 uses
  %.not54 = icmp eq i64 %i.cb, 1
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  store i32 0, ptr %i.au, align 8, !tbaa !758
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !767
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #25
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !758
  %i.cg = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.cg, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.m ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !766
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre8.i.i5.i.i
  store ptr %i.cd, ptr %i.ci, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !758
  %i.cj = add i32 %.pre.i.i.i.i, 1
  store i32 %i.cj, ptr %i.au, align 8, !tbaa !758
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.l, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.l ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  br i1 %cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 2 uses
  %i.ck = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ck, align 4, !tbaa !861
  %.not52 = icmp eq i32 %.val.val, 0
  br i1 %.not52, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !3444
  %i.cm = icmp eq ptr %i.d, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !2017
  %i.co = icmp ne ptr %.0.i, %i.cn
  %i.cp = load i8, ptr %i.a, align 1, !range !785
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #27
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.cr, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #25
  %i.cs = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.ct = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cs, ptr noundef nonnull %1) #25
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !755
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.cv, ptr %3, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cy = load ptr, ptr %2, align 8, !tbaa !766
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !758
  %i.da = zext i32 %i.cz to i64
  %i.db = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #27
  %i.dc = load i32, ptr %1, align 8
  %i.dd = and i32 %i.dc, 2097152
  %i.de = icmp ne i32 %i.dd, 0
  %.val41 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.df = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.d, i32 %i.cx, ptr %i.cy, i64 %i.da, i32 %i.db, i1 noundef zeroext %i.de) #25
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.t, %bb.s
  %.sroa.035.3 = phi i64 [ %i.df, %bb.t ], [ %i.ct, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.dg = load ptr, ptr %2, align 8, !tbaa !766   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.at
  br i1 %i.dh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dg) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.w

bb.w:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit" ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE"(ptr noundef %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3447
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3450 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2020
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2020
  %i.j = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE18TransformBlockExprEPNS_9BlockExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1604", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.509", align 8 ; 9 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3453 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null) #25
  %i.e = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #25 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3455
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !3455
  %i.q = load i16, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.q, -32768
  %i.u = and i16 %i.s, 32767
  %i.v = or disjoint i16 %i.u, %i.t
  store i16 %i.v, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !766
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !758
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !766
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !758
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !767
  %i.ac = call noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN5clang11SemaOpenACC19LoopInConstructRAIID2Ev:bb.a

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !755 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #26
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit: ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.aw = load i16, ptr %i.f, align 8
  store i16 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %0, align 8, !tbaa !3834, !nonnull !67, !align !68
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.az, ptr noundef nonnull align 8 dereferenceable(14) %i.ax, i64 14, i1 false), !tbaa.struct !2049
  %i.ba = load ptr, ptr %0, align 8, !tbaa !3834, !nonnull !67, !align !68 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i8 %.in, ptr %i.bb, align 8, !tbaa !3854
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 156
  store i8 %.in3, ptr %i.bc, align 4, !tbaa !3855
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %.lobit = and i8 %.in4.in.in, 2
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, -3
  %i.bg = or disjoint i8 %i.bf, %.lobit
  store i8 %i.bg, ptr %i.bd, align 8
  %i.bh = load i8, ptr %i.u, align 8, !tbaa !868, !range !785, !noundef !67
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.u, align 8, !tbaa !868
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp ugt i32 %i.bk, 64
  %or.cond.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.m, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

bb.m:                                             ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !755 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #26
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit: ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, %bb.m, %bb.n
  ret void
}

declare void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnWhileStmtENS_14SourceLocationES1_NS0_15ConditionResultES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnLabelStmtENS_14SourceLocationEPNS_9LabelDeclES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !758
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !766
  %i.g = load i32, ptr %i.a, align 8, !tbaa !758
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !758
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !758
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema26CheckRebuiltStmtAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr, i64, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang8SemaSYCL23BuildSYCLKernelCallStmtEPNS_12FunctionDeclEPNS_12CompoundStmtEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang10SwitchStmt20getConditionVariableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema22ActOnStartOfSwitchStmtENS_14SourceLocationES1_PNS_4StmtENS0_15ConditionResultES1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21ActOnFinishSwitchStmtENS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema16ActOnDefaultStmtENS_14SourceLocationES1_PNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13ActOnCaseExprENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13ActOnCaseStmtENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEES1_S5_S1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32, i64, i32) local_unnamed_addr #2

declare void @_ZN5clang4Sema17ActOnCaseStmtBodyEPNS_4StmtES2_(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema16ActOnSEHTryBlockEbNS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang14SEHFinallyStmt6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19ActOnSEHExceptBlockENS_14SourceLocationEPNS_4ExprEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE20TransformInitializerEPNS_4ExprEb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.2038", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not130 = icmp eq ptr %1, null
  br i1 %.not130, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.a, %tailrecurse.backedge
  %.tr118131 = phi ptr [ %.tr118.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i16, ptr %.tr118131, align 8        ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph133
  %i.d = getelementptr inbounds nuw i8, ptr %.tr118131, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2002 ; 2 uses
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph133
  %i.f = phi i16 [ %i.b, %.lr.ph133 ], [ %.pre, %bb.b ] ; 2 uses
  %.098 = phi ptr [ %.tr118131, %.lr.ph133 ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not106 = icmp eq i16 %i.g, 129
  br i1 %.not106, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.098, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1738
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2000 ; 2 uses
  %.pre143 = load i16, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i16 [ %i.f, %bb.c ], [ %.pre143, %bb.d ]
  %.1 = phi ptr [ %.098, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not108 = icmp eq i16 %i.m, 50
  br i1 %.not108, label %bb.f, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1927
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.h, %bb.g, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = load i16, ptr %.2, align 8               ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not110128 = icmp eq i16 %i.w, 120
  br i1 %.not110128, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.3129 = phi ptr [ %i.y, %.lr.ph ], [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.3129, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2020 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not110 = icmp eq i16 %i.aa, 120
  br i1 %.not110, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.z, %.lr.ph ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not112 = icmp eq i16 %i.ac, 81
  br i1 %.not112, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #25 ; 2 uses
  %.pre144 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre144, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 16 uses
  %i.af = and i16 %i.ae, 511                      ; 3 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %4, label %bb.k

4:                                                ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %.5, i64 16
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %4, %bb.u
  %.tr118.be.in = phi ptr [ %5, %4 ], [ %spec.select.i.i.i, %bb.u ]
  %.tr118.be = load ptr, ptr %.tr118.be.in, align 8, !tbaa !759 ; 2 uses
  %.not = icmp eq ptr %.tr118.be, null
  br i1 %.not, label %.loopexit, label %.lr.ph133

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i16 %i.af, -119
  %spec.select.i.i.i.i.i.i.i.i60 = icmp ult i16 %i.ah, -2 ; 2 uses
  br i1 %2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i.i.i.i60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %.5, align 8              ; 2 uses
  %i.aj = and i32 %i.ai, 2097152
  %.not113 = icmp eq i32 %i.aj, 0
  %i.ak = trunc i32 %i.ai to i16
  br i1 %.not113, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #27 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.ao = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #25
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #25
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.aq = and i16 %i.am, 511
  %i.ar = icmp eq i16 %i.aq, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.ar
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.at = load i32, ptr %.5, align 8              ; 3 uses
  %i.au = and i32 %i.at, 4194304
  %.not116 = icmp eq i32 %i.au, 0
  br i1 %.not116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = and i32 %i.at, 511
  %.not.i.i.i = icmp eq i32 %i.av, 118            ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %.5, ptr null
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %7 = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %6, ptr %7
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.t
  %.val50 = load ptr, ptr %0, align 8, !tbaa !1865 ; 8 uses
  %i.aw = and i32 %i.at, 2097152
  %.not154 = icmp eq i32 %i.aw, 0
  br i1 %.not154, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !766
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !758
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [792 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -792
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1805
  switch i32 %i.be, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1128, !nonnull !67, !align !68
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8192
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #25
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !1865
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bk = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !758
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !766
  %i.bo = getelementptr [792 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -831
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !1736, !range !785, !noundef !67
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -39
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !1736
  %i.bs = getelementptr i8, ptr %i.bo, i64 -829
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1737, !range !785, !noundef !67
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 -37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !1737
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !766
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !758
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !860
  %i.by = load i16, ptr %.5, align 8
  %i.bz = and i16 %i.by, 511
  %.not.i.i = icmp eq i16 %i.bz, 118              ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i, ptr %.5, ptr null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %spec.select.i.i64 = select i1 %.not.i.i, ptr %8, ptr %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !2016
  %i.cd = call fastcc noundef zeroext i1 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS9_EEPb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %spec.select.i.i64, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ce = load i32, ptr %.5, align 8
  %i.cf = and i32 %i.ce, 2097152
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #27
  %i.ch = load ptr, ptr %3, align 8, !tbaa !766
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !758
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #27
  %.val54 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.cl = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.cg, ptr %i.ch, i64 %i.cj, i32 %i.ck, i1 noundef zeroext true) #25
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.cm, align 8 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i65 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i65, 32 ; 2 uses
  %i.cn = icmp eq i32 %.sroa.068.0.extract.trunc, 0
  %i.co = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.cn, %i.co
  br i1 %.not2.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.cp = load ptr, ptr %3, align 8, !tbaa !766
  %i.cq = load i32, ptr %i.bw, align 8, !tbaa !758
  %i.cr = zext i32 %i.cq to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.cs = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cp, i64 %i.cr) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.aa
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cl, %bb.aa ], [ %i.cs, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ct = load ptr, ptr %3, align 8, !tbaa !766   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bv
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ct) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.sroa.4.0, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #25
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.af, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.097.3 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.s ], [ %.sroa.097.1, %bb.af ], [ 0, %bb.a ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

declare noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS9_EEPb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.1531", align 8 ; 8 uses
  %.not141 = icmp eq i32 %2, 0
  br i1 %.not141, label %.critedge88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp ne ptr %5, null
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.not81 = icmp eq ptr %5, null                  ; 2 uses
  %i.g = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !770  ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not81, label %.critedge88, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !860
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !770  ; 3 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  %.not140 = icmp eq i16 %i.n, 22
  br i1 %.not140, label %bb.g, label %.thread136

.thread:                                          ; preds = %bb.b
  %i.o = load i16, ptr %i.i, align 8
  %i.p = and i16 %i.o, 511
  %.not140154 = icmp eq i16 %i.p, 22
  br i1 %.not140154, label %bb.g, label %.thread136.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1915 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %i.d, ptr %6, align 8, !tbaa !766
  store i32 0, ptr %i.e, align 8, !tbaa !758
  store i32 2, ptr %i.f, align 4, !tbaa !767
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1916
  %.val89 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.v = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !796
  store i32 0, ptr %i.v, align 4, !tbaa !796
  %i.w = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = and i64 %i.w, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.y, align 8, !tbaa !796
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.ab = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %i.aa, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #25 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %5, align 1, !tbaa !860
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.ab, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !758 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !767
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !768

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ae)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %4, align 8, !tbaa !766
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store ptr %i.ae, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !758
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.l, %bb.m, %bb.g
  %cond = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.l ], [ true, %bb.m ]
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !tbaa !796
  %i.am = load ptr, ptr %6, align 8, !tbaa !766   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %cond, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103, label %.critedge88

.thread136:                                       ; preds = %bb.f
  %i.ao = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE20TransformInitializerEPNS_4ExprEb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i1 noundef zeroext false)
  br label %bb.p

.thread136.thread:                                ; preds = %.thread
  %i.ap = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %.thread136.thread, %.thread136
  %i.aq = phi ptr [ %i.h, %.thread136.thread ], [ %i.k, %.thread136 ]
  %storemerge = phi i64 [ %i.ap, %.thread136.thread ], [ %i.ao, %.thread136 ] ; 2 uses
  %i.ar = icmp eq i64 %storemerge, 1
  br i1 %i.ar, label %.critedge88, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_4
