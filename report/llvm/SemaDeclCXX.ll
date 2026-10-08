Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5clang4Sema28DefineImplicitCopyAssignmentENS_14SourceLocationEPNS_13CXXMethodDeclE:bb.a
  %.sroa.0.0.copyload.i196 = load i64, ptr %i.jy, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i196, ptr %20, align 8
  %i.lw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.lv, ptr noundef nonnull align 8 dereferenceable(8) %20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.thread262.sink.split

bb.aw:                                            ; preds = %_ZNK5clang8QualType16isConstQualifiedEv.exit, %bb.au
  %i.lx = call noundef zeroext i1 @_ZNK5clang9FieldDecl20isZeroLengthBitFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0230.0290) #26
  br i1 %i.lx, label %.thread262, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i198 = load i64, ptr %i.kn, align 8, !tbaa !92 ; 3 uses
  %i.ly = and i64 %.sroa.0.0.copyload.i198, -16
  %i.lz = inttoptr i64 %i.ly to ptr               ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 16, !tbaa !98 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load i8, ptr %i.mb, align 16
  %i.md = and i8 %i.mc, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.md, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.me, align 8, !tbaa !92
  %i.mf = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = load ptr, ptr %i.mg, align 16, !tbaa !98
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load i8, ptr %i.mi, align 16
  %i.mk = and i8 %i.mj, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.mk, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.ay
  %i.ml = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ma) #26 ; 2 uses
  %.not.i201 = icmp eq ptr %i.ml, null
  br i1 %.not.i201, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.ax
  %.1.i8.i = phi ptr [ %i.ml, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.ma, %bb.ax ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.mn = load i24, ptr %i.mm, align 16
  %i.mo = and i24 %i.mn, 1048576
  %.not4.i.i = icmp eq i24 %i.mo, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.mp, align 8
  %i.mq = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = load ptr, ptr %i.mr, align 16, !tbaa !98 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load i8, ptr %i.mt, align 16
  %i.mv = and i8 %i.mu, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.mv, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.mw = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ms) #26
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.az, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.mw, %bb.az ], [ %i.ms, %.lr.ph.i.i ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.my = load i24, ptr %i.mx, align 16
  %i.mz = and i24 %i.my, 1048576
  %.not.i.i202 = icmp eq i24 %i.mz, 0
  br i1 %.not.i.i202, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.na, align 8, !tbaa !92 ; 2 uses
  %.pre300.a = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, -16
  %.pre301 = inttoptr i64 %.pre300.a to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.ay, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.pre-phi302 = phi ptr [ %i.lz, %bb.ay ], [ %i.lz, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.pre301, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ]
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.copyload.i198, %bb.ay ], [ %.sroa.0.0.copyload.i198, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ]
  %i.nb = load ptr, ptr %.pre-phi302, align 8, !tbaa !98
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %.sroa.0.0.copyload.i.i.i.i204 = load i64, ptr %i.nc, align 8, !tbaa !92
  %i.nd = and i64 %.sroa.0.0.copyload.i.i.i.i204, -16
  %i.ne = inttoptr i64 %i.nd to ptr
  %i.nf = load ptr, ptr %i.ne, align 16, !tbaa !98
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load i8, ptr %i.ng, align 16
  %i.ni = icmp eq i8 %i.nh, 5
  br i1 %i.ni, label %.thread262, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %.sroa.0.0.copyload.i205 = load i64, ptr %i.jy, align 8, !tbaa !1284
  call void @_ZN5clang12LookupResultC2ERNS_4SemaENS_15DeclarationNameENS_14SourceLocationENS1_14LookupNameKindE17RedeclarationKind(ptr noundef nonnull align 8 dereferenceable(168) %22, ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i205, i32 %.sroa.060.0, i32 noundef 3, i32 noundef 0)
  call void @_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(168) %22, ptr noundef nonnull %.sroa.0230.0290)
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %23, align 8, !tbaa !1195
  store ptr %7, ptr %i.ji, align 8, !tbaa !2107
  store i64 %.sroa.0249.0, ptr %i.jj, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.jk, i8 0, i64 49, i1 false)
  store ptr %22, ptr %i.jl, align 8, !tbaa !1413
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %24, align 8, !tbaa !1195
  store ptr %.val130.a, ptr %i.jm, align 8, !tbaa !2107
  store i64 %.sroa.0243.1, ptr %i.jn, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jo, i8 0, i64 48, i1 false)
  store i8 %.0113, ptr %i.jp, align 8, !tbaa !2114
  store ptr %22, ptr %i.jq, align 8, !tbaa !1413
  %i.nj = call fastcc i64 @_ZL21buildSingleCopyAssignRN5clang4SemaENS_14SourceLocationENS_8QualTypeERKN12_GLOBAL__N_111ExprBuilderES7_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.060.0, i64 %.sroa.0.0.in.i.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  %.not282 = icmp eq i64 %i.nj, 1                 ; 2 uses
  br i1 %.not282, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.nk = and i64 %i.nj, -2
  %i.nl = inttoptr i64 %i.nk to ptr
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.nl)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %24, align 8, !tbaa !1195
  %i.nm = load i32, ptr %i.jr, align 4, !tbaa !1399
  %.not.i.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nn = load ptr, ptr %i.js, align 8, !tbaa !1400
  call void @free(ptr noundef %i.nn) #26, !inline_history !2115
  br label %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit

_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit:        ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %23, align 8, !tbaa !1195
  %i.no = load i32, ptr %i.jt, align 4, !tbaa !1399
  %.not.i.i.i206 = icmp eq i32 %i.no, 0
  br i1 %.not.i.i.i206, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit
  %i.np = load ptr, ptr %i.ju, align 8, !tbaa !1400
  call void @free(ptr noundef %i.np) #26, !inline_history !2115
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @_ZN5clang12LookupResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br i1 %.not282, label %.thread266, label %.thread262

.thread262.sink.split:                            ; preds = %bb.at, %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread
  %.sink317 = phi ptr [ %21, %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread ], [ %17, %bb.at ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0230.0290, i64 24
  %.sroa.0.0.copyload.i197 = load i32, ptr %i.nq, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %.sink317, ptr noundef nonnull align 8 dereferenceable(8) %i.jg, i32 %.sroa.0.0.copyload.i197, i32 noundef 108) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.sink317) #26
  br label %.thread262

.thread262:                                       ; preds = %.thread262.sink.split, %bb.bg, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.aw, %_ZN5clang9FieldDecl9getParentEv.exit, %bb.an, %bb.ar
  %.5119265 = phi i1 [ true, %bb.ar ], [ %.3117291, %bb.bg ], [ %.3117291, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ], [ %.3117291, %bb.aw ], [ %.3117291, %bb.an ], [ %.3117291, %_ZN5clang9FieldDecl9getParentEv.exit ], [ true, %.thread262.sink.split ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0230.0290, i64 8
  %.0.copyload.i.i.i.i.i.i209 = load i64, ptr %i.nr, align 8
  %i.ns = and i64 %.0.copyload.i.i.i.i.i.i209, -8 ; 2 uses
  %i.nt = inttoptr i64 %i.ns to ptr               ; 2 uses
  %.not1.i.i = icmp eq i64 %i.ns, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i210

.lr.ph.i.i210:                                    ; preds = %.thread262, %bb.bh
  %.sroa.0230.1 = phi ptr [ %i.ob, %bb.bh ], [ %i.nt, %.thread262 ] ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0230.1, i64 28
  %i.nv = load i32, ptr %i.nu, align 4
  %i.nw = and i32 %i.nv, 127
  %i.nx = add nsw i32 %i.nw, -50
  %i.ny = icmp ult i32 %i.nx, 3
  br i1 %i.ny, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i210
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0230.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i211 = load i64, ptr %i.nz, align 8
  %i.oa = and i64 %.0.copyload.i.i.i.i.i.i.i211, -8 ; 2 uses
  %i.ob = inttoptr i64 %i.oa to ptr               ; 2 uses
  %.not.i.i212 = icmp eq i64 %i.oa, 0
  br i1 %.not.i.i212, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i210, !llvm.loop !5

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit: ; preds = %.lr.ph.i.i210, %bb.bh, %.thread262
  %.sroa.0230.2 = phi ptr [ %i.nt, %.thread262 ], [ %i.ob, %bb.bh ], [ %.sroa.0230.1, %.lr.ph.i.i210 ] ; 2 uses
  %.not280 = icmp eq ptr %.sroa.0230.2, null
  br i1 %.not280, label %._crit_edge294, label %bb.an

._crit_edge294:                                   ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, %._crit_edge
  %.3117.lcssa = phi i1 [ %.0114.lcssa, %._crit_edge ], [ %.5119265, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ]
  br i1 %.3117.lcssa, label %25, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge294
  %.val128 = load i8, ptr %i.ex, align 8, !tbaa !2105, !range !106, !noundef !107
  %i.oc = trunc nuw i8 %.val128 to i1
  br i1 %i.oc, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.od = load ptr, ptr %i.e, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 80
  %i.of = load i64, ptr %i.oe, align 8
  %i.og = and i64 %i.of, 1099511627776
  %.not126 = icmp eq i64 %i.og, 0
  %spec.select273 = select i1 %.not126, ptr %9, ptr %8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.oh = phi ptr [ %spec.select273, %bb.bj ], [ %10, %bb.bi ] ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !1195
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = call noundef ptr %i.ok(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.060.0) #26
  %i.om = call i64 @_ZN5clang4Sema15BuildReturnStmtENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.060.0, ptr noundef %i.ol, i1 noundef zeroext false) #26 ; 2 uses
  %i.on = icmp eq i64 %i.om, 1
  br i1 %i.on, label %25, label %bb.bl

25:                                               ; preds = %._crit_edge294, %bb.bk
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %.thread266

bb.bl:                                            ; preds = %bb.bk
  %i.oo = and i64 %i.om, -2
  %i.op = inttoptr i64 %i.oo to ptr
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.op)
  call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i1 noundef zeroext false) #26
  %i.oq = load ptr, ptr %6, align 8, !tbaa !100
  %i.or = load i32, ptr %i.dc, align 8, !tbaa !101
  %i.os = zext i32 %i.or to i64
  %i.ot = call i64 @_ZN5clang4Sema17ActOnCompoundStmtENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4StmtEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.060.0, i32 %.sroa.060.0, ptr %i.oq, i64 %i.os, i1 noundef zeroext false) #26
  call void @_ZN5clang4Sema25ActOnFinishOfCompoundStmtEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.ou = and i64 %i.ot, -2
  %i.ov = inttoptr i64 %i.ou to ptr
  call void @_ZN5clang12FunctionDecl7setBodyEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %i.ov) #26
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !790, !nonnull !107, !align !791
  call void @_ZN5clang4Decl8markUsedERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef nonnull align 8 dereferenceable(23904) %i.ox) #26
  %i.oy = call noundef ptr @_ZNK5clang4Sema22getASTMutationListenerEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26 ; 3 uses
  %.not127 = icmp eq ptr %i.oy, null
  br i1 %.not127, label %.thread266, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !1195
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 112
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, ptr noundef nonnull %2) #26
  br label %.thread266

.thread266:                                       ; preds = %bb.am, %bb.bg, %bb.bl, %bb.bm, %25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.pc = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.db
  br i1 %i.pd, label %_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %.thread266
  call void @free(ptr noundef %i.pc) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit: ; preds = %.thread266, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN5clang4Sema24SynthesizedFunctionScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bo

bb.bo:                                            ; preds = %bb.g, %_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit, %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, %bb.c
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL31diagnoseDeprecatedCopyOperationRN5clang4SemaEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8 ; 3 uses
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.m = icmp eq ptr %.0.i.i.i, null
  %i.n = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64 ; 5 uses
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  store ptr %i.o, ptr %i.b, align 8, !tbaa !1422
  %i.p = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl25hasUserDeclaredDestructorEv(ptr noundef nonnull align 8 dereferenceable(144) %i.n)
  br i1 %i.p, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = and i32 %i.r, 127
  %i.t = icmp eq i32 %i.s, 39
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl30hasUserDeclaredCopyConstructorEv(ptr noundef nonnull align 8 dereferenceable(144) %i.n)
  br i1 %i.u, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.q, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i) #26 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not1.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.v, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 127
  %i.z = icmp eq i32 %i.y, 39
  br i1 %i.z, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i25 = load i64, ptr %i.aa, align 8
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i25, -8 ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_18CXXConstructorDeclEEppEv.exit
  %.sroa.050.073 = phi ptr [ %.sroa.050.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_18CXXConstructorDeclEEppEv.exit ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !116
  %i.ad = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl17isCopyConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.050.073, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ad, label %.thread62, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.050.073, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %.not1.i.i = icmp eq i64 %i.af, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_18CXXConstructorDeclEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %bb.h
  %.sroa.050.1 = phi ptr [ %i.an, %bb.h ], [ %i.ag, %.critedge ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 28
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 127
  %i.ak = icmp eq i32 %i.aj, 39
  br i1 %i.ak, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_18CXXConstructorDeclEEppEv.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_18CXXConstructorDeclEEppEv.exit, label %.lr.ph.i.i, !llvm.loop !37

_ZN5clang11DeclContext22specific_decl_iteratorINS_18CXXConstructorDeclEEppEv.exit: ; preds = %.lr.ph.i.i, %bb.h, %.critedge
  %.sroa.050.2 = phi ptr [ %i.ag, %.critedge ], [ %i.an, %bb.h ], [ %.sroa.050.1, %.lr.ph.i.i ] ; 2 uses
  %.not66 = icmp eq ptr %.sroa.050.2, null
  br i1 %.not66, label %.thread, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge, %bb.d
  %i.ao = phi i32 [ %.pre, %._crit_edge ], [ %i.r, %bb.d ]
  %i.ap = and i32 %i.ao, 127
  %i.aq = icmp eq i32 %i.ap, 39
  br i1 %i.aq, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl29hasUserDeclaredCopyAssignmentEv(ptr noundef nonnull align 8 dereferenceable(144) %i.n)
  br i1 %i.ar, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.as = tail call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i) #26 ; 2 uses
  %.not1.i.i.i.i28 = icmp eq ptr %i.as, null
  br i1 %.not1.i.i.i.i28, label %.thread, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %bb.k, %bb.l
  %.sroa.0.0.i.i30 = phi ptr [ %i.az, %bb.l ], [ %i.as, %bb.k ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i30, i64 28
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 124
  %i.aw = icmp eq i32 %i.av, 36
  br i1 %i.aw, label %.lr.ph76, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i29
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i30, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i31 = load i64, ptr %i.ax, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i31, -8 ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr
  %.not.i.i.i.i32 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i32, label %.thread, label %.lr.ph.i.i.i.i29, !llvm.loop !31

.lr.ph76:                                         ; preds = %.lr.ph.i.i.i.i29, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit
  %.sroa.046.075 = phi ptr [ %.sroa.046.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit ], [ %.sroa.0.0.i.i30, %.lr.ph.i.i.i.i29 ] ; 3 uses
  %i.ba = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl24isCopyAssignmentOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.046.075) #26
  br i1 %i.ba, label %.thread62, label %.critedge24

.critedge24:                                      ; preds = %.lr.ph76
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.046.075, i64 8
  %.0.copyload.i.i.i.i.i.i40 = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i40, -8  ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %.not1.i.i41 = icmp eq i64 %i.bc, 0
  br i1 %.not1.i.i41, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %.critedge24, %bb.m
  %.sroa.046.1 = phi ptr [ %i.bk, %bb.m ], [ %i.bd, %.critedge24 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.046.1, i64 28
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 124
  %i.bh = icmp eq i32 %i.bg, 36
  br i1 %i.bh, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i42
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.046.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i43 = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i.i.i43, -8 ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i44, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit, label %.lr.ph.i.i42, !llvm.loop !31

_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit: ; preds = %.lr.ph.i.i42, %bb.m, %.critedge24
  %.sroa.046.2 = phi ptr [ %i.bd, %.critedge24 ], [ %i.bk, %bb.m ], [ %.sroa.046.1, %.lr.ph.i.i42 ] ; 2 uses
  %.not67 = icmp eq ptr %.sroa.046.2, null
  br i1 %.not67, label %.thread, label %.lr.ph76

bb.n:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.bl = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDestructorEv(ptr noundef nonnull align 8 dereferenceable(144) %i.n) #26 ; 2 uses
  %.not22 = icmp eq ptr %i.bl, null
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema28DefineImplicitMoveAssignmentENS_14SourceLocationEPNS_13CXXMethodDeclE:bb.a
  %.sroa.0.0.copyload.i184 = load i64, ptr %i.vk, align 8, !tbaa !1284
  store i64 %.sroa.0.0.copyload.i184, ptr %31, align 8
  %i.xi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.xh, ptr noundef nonnull align 8 dereferenceable(8) %31) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %.thread244.sink.split

bb.cr:                                            ; preds = %_ZNK5clang8QualType16isConstQualifiedEv.exit, %bb.cp
  %i.xj = call noundef zeroext i1 @_ZNK5clang9FieldDecl20isZeroLengthBitFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0218.0271) #26
  br i1 %i.xj, label %.thread244, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0.0.copyload.i186 = load i64, ptr %i.vz, align 8, !tbaa !92 ; 3 uses
  %i.xk = and i64 %.sroa.0.0.copyload.i186, -16
  %i.xl = inttoptr i64 %i.xk to ptr               ; 3 uses
  %i.xm = load ptr, ptr %i.xl, align 16, !tbaa !98 ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xo = load i8, ptr %i.xn, align 16
  %i.xp = and i8 %i.xo, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i188 = icmp eq i8 %i.xp, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i188, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i189 = load i64, ptr %i.xq, align 8, !tbaa !92
  %i.xr = and i64 %.sroa.0.0.copyload.i.i.i.i.i189, -16
  %i.xs = inttoptr i64 %i.xr to ptr
  %i.xt = load ptr, ptr %i.xs, align 16, !tbaa !98
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = load i8, ptr %i.xu, align 16
  %i.xw = and i8 %i.xv, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.xw, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.ct
  %i.xx = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.xm) #26 ; 2 uses
  %.not.i191 = icmp eq ptr %i.xx, null
  br i1 %.not.i191, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.cs
  %.1.i8.i = phi ptr [ %i.xx, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.xm, %bb.cs ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.xz = load i24, ptr %i.xy, align 16
  %i.ya = and i24 %i.xz, 1048576
  %.not4.i.i = icmp eq i24 %i.ya, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.yb = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.yb, align 8
  %i.yc = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.yd = inttoptr i64 %i.yc to ptr
  %i.ye = load ptr, ptr %i.yd, align 16, !tbaa !98 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load i8, ptr %i.yf, align 16
  %i.yh = and i8 %i.yg, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.yh, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i
  %i.yi = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ye) #26
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.cu, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.yi, %bb.cu ], [ %i.ye, %.lr.ph.i.i ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.yk = load i24, ptr %i.yj, align 16
  %i.yl = and i24 %i.yk, 1048576
  %.not.i.i192 = icmp eq i24 %i.yl, 0
  br i1 %.not.i.i192, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.ym, align 8, !tbaa !92 ; 2 uses
  %.pre280.a = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, -16
  %.pre281 = inttoptr i64 %.pre280.a to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.ct, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.pre-phi282 = phi ptr [ %i.xl, %bb.ct ], [ %i.xl, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.pre281, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ]
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.copyload.i186, %bb.ct ], [ %.sroa.0.0.copyload.i186, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ]
  %i.yn = load ptr, ptr %.pre-phi282, align 8, !tbaa !98
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %.sroa.0.0.copyload.i.i.i.i194 = load i64, ptr %i.yo, align 8, !tbaa !92
  %i.yp = and i64 %.sroa.0.0.copyload.i.i.i.i194, -16
  %i.yq = inttoptr i64 %i.yp to ptr
  %i.yr = load ptr, ptr %i.yq, align 16, !tbaa !98
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = load i8, ptr %i.ys, align 16
  %i.yu = icmp eq i8 %i.yt, 5
  br i1 %i.yu, label %.thread244, label %bb.cv

bb.cv:                                            ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  %.sroa.0.0.copyload.i195 = load i64, ptr %i.vk, align 8, !tbaa !1284
  call void @_ZN5clang12LookupResultC2ERNS_4SemaENS_15DeclarationNameENS_14SourceLocationENS1_14LookupNameKindE17RedeclarationKind(ptr noundef nonnull align 8 dereferenceable(168) %33, ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i195, i32 %.sroa.058.0, i32 noundef 3, i32 noundef 0)
  call void @_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(168) %33, ptr noundef nonnull %.sroa.0218.0271)
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %34, align 8, !tbaa !1195
  store ptr %18, ptr %i.uu, align 8, !tbaa !2107
  store i64 %.sroa.0.0.copyload.i139, ptr %i.uv, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.uw, i8 0, i64 49, i1 false)
  store ptr %33, ptr %i.ux, align 8, !tbaa !1413
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %35, align 8, !tbaa !1195
  store ptr %.val126.a, ptr %i.uy, align 8, !tbaa !2107
  store i64 %.sroa.0230.1, ptr %i.uz, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.va, i8 0, i64 48, i1 false)
  store i8 %.0110, ptr %i.vb, align 8, !tbaa !2114
  store ptr %33, ptr %i.vc, align 8, !tbaa !1413
  %i.yv = call fastcc i64 @_ZL21buildSingleCopyAssignRN5clang4SemaENS_14SourceLocationENS_8QualTypeERKN12_GLOBAL__N_111ExprBuilderES7_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.058.0, i64 %.sroa.0.0.in.i.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %.not263 = icmp eq i64 %i.yv, 1                 ; 2 uses
  br i1 %.not263, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.yw = and i64 %i.yv, -2
  %i.yx = inttoptr i64 %i.yw to ptr
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %i.yx)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %35, align 8, !tbaa !1195
  %i.yy = load i32, ptr %i.vd, align 4, !tbaa !1399
  %.not.i.i.i196 = icmp eq i32 %i.yy, 0
  br i1 %.not.i.i.i196, label %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.yz = load ptr, ptr %i.ve, align 8, !tbaa !1400
  call void @free(ptr noundef %i.yz) #26, !inline_history !2115
  br label %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit

_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit:        ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113MemberBuilderE, i64 16), ptr %34, align 8, !tbaa !1195
  %i.za = load i32, ptr %i.vf, align 4, !tbaa !1399
  %.not.i.i.i197 = icmp eq i32 %i.za, 0
  br i1 %.not.i.i.i197, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit
  %i.zb = load ptr, ptr %i.vg, align 8, !tbaa !1400
  call void @free(ptr noundef %i.zb) #26, !inline_history !2115
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZN12_GLOBAL__N_113MemberBuilderD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @_ZN5clang12LookupResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br i1 %.not263, label %.thread248, label %.thread244

.thread244.sink.split:                            ; preds = %bb.co, %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread
  %.sink317 = phi ptr [ %32, %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread ], [ %28, %bb.co ] ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0218.0271, i64 24
  %.sroa.0.0.copyload.i185 = load i32, ptr %i.zc, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %.sink317, ptr noundef nonnull align 8 dereferenceable(8) %i.us, i32 %.sroa.0.0.copyload.i185, i32 noundef 108) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.sink317) #26
  br label %.thread244

.thread244:                                       ; preds = %.thread244.sink.split, %bb.db, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.cr, %_ZN5clang9FieldDecl9getParentEv.exit, %bb.ci, %bb.cm
  %.5116247 = phi i1 [ true, %bb.cm ], [ %.3114272, %bb.db ], [ %.3114272, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ], [ %.3114272, %bb.cr ], [ %.3114272, %bb.ci ], [ %.3114272, %_ZN5clang9FieldDecl9getParentEv.exit ], [ true, %.thread244.sink.split ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.0218.0271, i64 8
  %.0.copyload.i.i.i.i.i.i199 = load i64, ptr %i.zd, align 8
  %i.ze = and i64 %.0.copyload.i.i.i.i.i.i199, -8 ; 2 uses
  %i.zf = inttoptr i64 %i.ze to ptr               ; 2 uses
  %.not1.i.i = icmp eq i64 %i.ze, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i200

.lr.ph.i.i200:                                    ; preds = %.thread244, %bb.dc
  %.sroa.0218.1 = phi ptr [ %i.zn, %bb.dc ], [ %i.zf, %.thread244 ] ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.0218.1, i64 28
  %i.zh = load i32, ptr %i.zg, align 4
  %i.zi = and i32 %i.zh, 127
  %i.zj = add nsw i32 %i.zi, -50
  %i.zk = icmp ult i32 %i.zj, 3
  br i1 %i.zk, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i200
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0218.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i201 = load i64, ptr %i.zl, align 8
  %i.zm = and i64 %.0.copyload.i.i.i.i.i.i.i201, -8 ; 2 uses
  %i.zn = inttoptr i64 %i.zm to ptr               ; 2 uses
  %.not.i.i202 = icmp eq i64 %i.zm, 0
  br i1 %.not.i.i202, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i200, !llvm.loop !5

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit: ; preds = %.lr.ph.i.i200, %bb.dc, %.thread244
  %.sroa.0218.2 = phi ptr [ %i.zf, %.thread244 ], [ %i.zn, %bb.dc ], [ %.sroa.0218.1, %.lr.ph.i.i200 ] ; 2 uses
  %.not261 = icmp eq ptr %.sroa.0218.2, null
  br i1 %.not261, label %._crit_edge275, label %bb.ci

._crit_edge275:                                   ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, %._crit_edge
  %.3114.lcssa = phi i1 [ %.0111.lcssa, %._crit_edge ], [ %.5116247, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ]
  br i1 %.3114.lcssa, label %36, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge275
  %.val124 = load i8, ptr %i.qr, align 8, !tbaa !2105, !range !106, !noundef !107
  %i.zo = trunc nuw i8 %.val124 to i1
  br i1 %i.zo, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.zp = load ptr, ptr %i.i, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 80
  %i.zr = load i64, ptr %i.zq, align 8
  %i.zs = and i64 %i.zr, 1099511627776
  %.not122 = icmp eq i64 %i.zs, 0
  %spec.select255 = select i1 %.not122, ptr %20, ptr %19
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.zt = phi ptr [ %spec.select255, %bb.de ], [ %21, %bb.dd ] ; 2 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !1195
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.zw = load ptr, ptr %i.zv, align 8
  %i.zx = call noundef ptr %i.zw(ptr noundef nonnull align 8 dereferenceable(8) %i.zt, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.058.0) #26
  %i.zy = call i64 @_ZN5clang4Sema15BuildReturnStmtENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.058.0, ptr noundef %i.zx, i1 noundef zeroext false) #26 ; 2 uses
  %i.zz = icmp eq i64 %i.zy, 1
  br i1 %i.zz, label %36, label %bb.dg

36:                                               ; preds = %._crit_edge275, %bb.df
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %.thread248

bb.dg:                                            ; preds = %bb.df
  %i.aaa = and i64 %i.zy, -2
  %i.aab = inttoptr i64 %i.aaa to ptr
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %i.aab)
  call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i1 noundef zeroext false) #26
  %i.aac = load ptr, ptr %16, align 8, !tbaa !100
  %i.aad = load i32, ptr %i.pd, align 8, !tbaa !101
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = call i64 @_ZN5clang4Sema17ActOnCompoundStmtENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4StmtEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.058.0, i32 %.sroa.058.0, ptr %i.aac, i64 %i.aae, i1 noundef zeroext false) #26
  call void @_ZN5clang4Sema25ActOnFinishOfCompoundStmtEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.aag = and i64 %i.aaf, -2
  %i.aah = inttoptr i64 %i.aag to ptr
  call void @_ZN5clang12FunctionDecl7setBodyEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %i.aah) #26
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !790, !nonnull !107, !align !791
  call void @_ZN5clang4Decl8markUsedERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef nonnull align 8 dereferenceable(23904) %i.aaj) #26
  %i.aak = call noundef ptr @_ZNK5clang4Sema22getASTMutationListenerEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26 ; 3 uses
  %.not123 = icmp eq ptr %i.aak, null
  br i1 %.not123, label %.thread248, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !1195
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 112
  %i.aan = load ptr, ptr %i.aam, align 8
  call void %i.aan(ptr noundef nonnull align 8 dereferenceable(8) %i.aak, ptr noundef nonnull %2) #26
  br label %.thread248

.thread248:                                       ; preds = %bb.ch, %bb.db, %bb.dg, %bb.dh, %36
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.aao = load ptr, ptr %16, align 8, !tbaa !100 ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.pc
  br i1 %i.aap, label %_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %.thread248
  call void @free(ptr noundef %i.aao) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit: ; preds = %.thread248, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN5clang4Sema24SynthesizedFunctionScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.dj

bb.dj:                                            ; preds = %bb.g, %_ZN4llvm11SmallVectorIPN5clang4StmtELj8EED2Ev.exit, %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, %bb.c
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(32) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_111ExprBuilderD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang13CXXRecordDecl25hasTrivialCopyConstructorEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
  %i.x = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 1099511627776
  %i.ap = icmp ne i64 %i.ao, 0
  ret i1 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang13CXXRecordDecl32hasTrivialCopyConstructorForCallEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
  %i.x = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
end_hunk_1
