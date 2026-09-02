Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5clang4Sema34CheckExplicitlyDefaultedComparisonEPNS_5ScopeEPNS_12FunctionDeclENS0_23DefaultedComparisonKindE:bb.a

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit265: ; preds = %bb.ai, %bb.aj
  %.1.i264 = phi ptr [ %i.ip, %bb.aj ], [ %i.im, %bb.ai ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %12, ptr noundef nonnull align 16 dereferenceable(48) %.1.i264)
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !1421
  %i.is = and i64 %i.ir, -5
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !1421
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.iv = getelementptr inbounds nuw i8, ptr %.1.i264, i64 24
  %.sroa.0.0.copyload.i266 = load i64, ptr %i.iv, align 8, !tbaa !92
  %i.iw = getelementptr inbounds nuw i8, ptr %.1.i264, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %.1.i264, i64 16
  %i.iy = load i64, ptr %i.ix, align 16
  %i.iz = lshr i64 %i.iy, 48
  %i.ja = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.iu, i64 %.sroa.0.0.copyload.i266, ptr nonnull %i.iw, i64 %i.iz, ptr noundef nonnull align 8 dereferenceable(138) %12, i1 noundef zeroext false) #26
  store i64 %i.ja, ptr %i.bh, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNK5clang13CXXMethodDecl10isVolatileEv.exit.thread

_ZNK5clang13CXXMethodDecl10isVolatileEv.exit.thread: ; preds = %bb.ah, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i.i, %_ZNK5clang13CXXMethodDecl10isVolatileEv.exit, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit265, %_ZN5clang4Decl21getLexicalDeclContextEv.exit
  %i.jb = phi ptr [ %spec.select.i.i, %_ZN5clang4Decl21getLexicalDeclContextEv.exit ], [ %i.cv, %_ZNK5clang13CXXMethodDecl10isVolatileEv.exit ], [ %i.cv, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit265 ], [ %i.cv, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i.i ], [ %i.cv, %bb.ah ] ; 2 uses
  %i.jc = phi i32 [ 2, %_ZN5clang4Decl21getLexicalDeclContextEv.exit ], [ 1, %_ZNK5clang13CXXMethodDecl10isVolatileEv.exit ], [ 1, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit265 ], [ 1, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i.i ], [ 1, %bb.ah ]
  %i.jd = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26
  %i.je = call noundef zeroext i1 @_ZNK5clang12FunctionDecl37hasCXXExplicitFunctionObjectParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26
  %.neg = sext i1 %i.je to i32
  %i.jf = add i32 %i.jd, %.neg
  %.not196 = icmp eq i32 %i.jf, %i.jc
  br i1 %.not196, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang13CXXMethodDecl10isVolatileEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i269 = load i32, ptr %i.jh, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.jg, i32 %.sroa.0.0.copyload.i269, i32 noundef 3678) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ji = zext i1 %i.bg to i32
  store i32 %i.ji, ptr %i.c, align 4, !tbaa !116
  %i.jj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.jk = zext i8 %3 to i32
  store i32 %i.jk, ptr %i.d, align 4, !tbaa !116
  %i.jl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.jj, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.critedge213

bb.al:                                            ; preds = %_ZNK5clang13CXXMethodDecl10isVolatileEv.exit.thread
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !1282 ; 2 uses
  %i.jo = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %.idx = shl nuw nsw i64 %i.jp, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.idx
  %.not197562 = icmp eq i32 %i.jo, 0
  br i1 %.not197562, label %.critedge209, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.bc
  %i.js = phi ptr [ %i.jb, %.lr.ph ], [ %i.pb, %bb.bc ] ; 3 uses
  %.0182564 = phi ptr [ null, %.lr.ph ], [ %.3185, %bb.bc ] ; 6 uses
  %.0186563 = phi ptr [ %i.jn, %.lr.ph ], [ %i.pc, %bb.bc ] ; 2 uses
  %i.jt = load ptr, ptr %.0186563, align 8, !tbaa !1167 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %.sroa.0.0.copyload.i272 = load i64, ptr %i.ju, align 8, !tbaa !92 ; 5 uses
  store i64 %.sroa.0.0.copyload.i272, ptr %14, align 8
  %.not198 = icmp eq ptr %.0182564, null
  br i1 %.not198, label %bb.an, label %bb.ba

bb.an:                                            ; preds = %bb.am
  br i1 %i.bg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jv = call noundef zeroext i1 @_ZNK5clang12FunctionDecl37hasCXXExplicitFunctionObjectParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26
  %i.jw = zext i1 %i.jv to i8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jx = phi i8 [ 1, %bb.an ], [ %i.jw, %bb.ao ] ; 2 uses
  %.not199 = icmp eq ptr %i.js, null
  br i1 %.not199, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jy = load ptr, ptr %i.jr, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.jz = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.jy, ptr noundef nonnull %i.js) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.0428.0 = phi i64 [ 0, %bb.ap ], [ %i.jz, %bb.aq ] ; 2 uses
  %i.ka = and i64 %.sroa.0.0.copyload.i272, -16
  %i.kb = inttoptr i64 %i.ka to ptr               ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 16, !tbaa !98 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i8, ptr %i.kd, align 16
  %.not.i275 = icmp eq i8 %i.ke, 42
  br i1 %.not.i275, label %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread513, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.sroa.0.0.copyload.i.i.i.i276 = load i64, ptr %i.kf, align 8, !tbaa !92
  %i.kg = and i64 %.sroa.0.0.copyload.i.i.i.i276, -16
  %i.kh = inttoptr i64 %i.kg to ptr
  %i.ki = load ptr, ptr %i.kh, align 16, !tbaa !98
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load i8, ptr %i.kj, align 16
  %i.kl = icmp eq i8 %i.kk, 42
  br i1 %i.kl, label %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit: ; preds = %bb.as
  %i.km = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.kc) #26 ; 2 uses
  %.not200 = icmp eq ptr %i.km, null
  br i1 %.not200, label %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread513

_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread513: ; preds = %bb.ar, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit
  %.1.i277516 = phi ptr [ %i.km, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit ], [ %i.kc, %bb.ar ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.1.i277516, i64 16
  %i.ko = load i24, ptr %i.kn, align 16
  %i.kp = and i24 %i.ko, 1048576
  %.not4.i = icmp eq i24 %i.kp, 0
  br i1 %.not4.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread513, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i
  %.05.i = phi ptr [ %.1.i.i280, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.1.i277516, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread513 ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %.0.copyload.i.i.i.i.i.i278 = load i64, ptr %i.kq, align 8
  %i.kr = and i64 %.0.copyload.i.i.i.i.i.i278, -16
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = load ptr, ptr %i.ks, align 16, !tbaa !98 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load i8, ptr %i.ku, align 16
  %i.kw = and i8 %i.kv, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i279 = icmp eq i8 %i.kw, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i279, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i
  %i.kx = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.kt) #26
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.at, %.lr.ph.i
  %.1.i.i280 = phi ptr [ %i.kx, %bb.at ], [ %i.kt, %.lr.ph.i ] ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1.i.i280, i64 16
  %i.kz = load i24, ptr %i.ky, align 16
  %i.la = and i24 %i.kz, 1048576
  %.not.i281 = icmp eq i24 %i.la, 0
  br i1 %.not.i281, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, label %.lr.ph.i, !llvm.loop !1

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread513
  %.0.lcssa.i = phi ptr [ %.1.i277516, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread513 ], [ %.1.i.i280, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  %.sroa.0.0.copyload.i282 = load i64, ptr %i.lb, align 16, !tbaa !92 ; 2 uses
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !1422 ; 2 uses
  %.not201 = icmp eq ptr %i.lc, null
  br i1 %.not201, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit..thread_crit_edge, label %.thread523

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit..thread_crit_edge: ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit
  %.pre571 = and i64 %.sroa.0.0.copyload.i282, -16
  %.pre573 = inttoptr i64 %.pre571 to ptr
  br label %.thread

.thread523:                                       ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit
  %i.ld = or i64 %.sroa.0428.0, 1
  br label %bb.au

_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread: ; preds = %bb.as, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !1422 ; 2 uses
  %.not202 = icmp eq ptr %.pr, null
  br i1 %.not202, label %.thread, label %bb.au

bb.au:                                            ; preds = %.thread523, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread
  %.0187530 = phi i8 [ 1, %.thread523 ], [ %i.jx, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread ]
  %.sroa.0428.1529 = phi i64 [ %i.ld, %.thread523 ], [ %.sroa.0428.0, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread ] ; 2 uses
  %.sroa.0430.0528 = phi i64 [ %.sroa.0.0.copyload.i282, %.thread523 ], [ %.sroa.0.0.copyload.i272, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread ] ; 2 uses
  %i.le = phi ptr [ %i.lc, %.thread523 ], [ %.pr, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 64
  %i.lg = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.lf) #26
  br i1 %i.lg, label %.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lh = and i64 %.sroa.0430.0528, -16
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !92
  %i.ll = and i64 %.sroa.0430.0528, 7
  %i.lm = or i64 %i.lk, %i.ll
  %i.ln = and i64 %.sroa.0428.1529, -16
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !92
  %i.lr = and i64 %.sroa.0428.1529, 7
  %i.ls = or i64 %i.lq, %i.lr
  %i.lt = icmp eq i64 %i.lm, %i.ls
  %45 = zext i1 %i.lt to i8
  br label %.split

.split:                                           ; preds = %bb.av, %bb.au
  %46 = phi i8 [ 1, %bb.au ], [ %45, %bb.av ]
  %47 = and i8 %46, %.0187530
  %48 = trunc nuw i8 %47 to i1
  br i1 %48, label %bb.bc, label %.loopexit

.thread:                                          ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit..thread_crit_edge, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread
  %.pre-phi574 = phi ptr [ %.pre573, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit..thread_crit_edge ], [ %i.kb, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread ]
  %.0187522 = phi i8 [ 1, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit..thread_crit_edge ], [ %i.jx, %_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v.exit.thread ]
  %i.lu = load ptr, ptr %.pre-phi574, align 8, !tbaa !98
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.sroa.0.0.copyload.i.i.i.i285 = load i64, ptr %i.lv, align 8, !tbaa !92
  %i.lw = and i64 %.sroa.0.0.copyload.i.i.i.i285, -16
  %i.lx = inttoptr i64 %i.lw to ptr
  %i.ly = load ptr, ptr %i.lx, align 16, !tbaa !98 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load i8, ptr %i.lz, align 16            ; 3 uses
  %i.mb = add i8 %i.ma, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.mb, 3
  %.not.i7.i = icmp ne ptr %i.ly, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.mc = and i8 %i.ma, 62
  %spec.select.i.i.i = icmp eq i8 %i.mc, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.aw, label %.loopexit.thread

bb.aw:                                            ; preds = %.thread
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !1388 ; 3 uses
  %i.mf = icmp eq i8 %i.ma, 49
  br i1 %i.mf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 28
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = and i32 %i.mh, 127
  %i.mj = add nsw i32 %i.mi, -60
  %i.mk = icmp ult i32 %i.mj, 3
  br i1 %i.mk, label %bb.ay, label %.loopexit.thread

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.ml = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.me) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ml, null
  %spec.select.i.i287 = select i1 %.not.not.i.i, ptr %i.me, ptr %i.ml ; 3 uses
  store ptr %spec.select.i.i287, ptr %i.a, align 8, !tbaa !1422
  %i.mm = trunc nuw i8 %.0187522 to i1
  br i1 %i.mm, label %bb.bc, label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.ay
  %i.mn = phi ptr [ %i.le, %.split ], [ %spec.select.i.i287, %bb.ay ]
  %i.mo = load i32, ptr %i.bd, align 4
  %i.mp = and i32 %i.mo, 512
  %.not546 = icmp eq i32 %i.mp, 0
  br i1 %.not546, label %bb.az, label %bb.bd

.loopexit.thread:                                 ; preds = %.thread, %bb.ax
  %i.mq = load i32, ptr %i.bd, align 4
  %i.mr = and i32 %i.mq, 512
  %.not546603 = icmp eq i32 %i.mr, 0
  br i1 %.not546603, label %.thread604, label %bb.bd

bb.az:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ms = load ptr, ptr %i.jr, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.mt = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ms, ptr noundef nonnull %i.mn) #26 ; 2 uses
  store i64 %i.mt, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.mu = load ptr, ptr %i.jr, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.mv = or i64 %i.mt, 1
  %i.mw = call i64 @_ZNK5clang10ASTContext22getLValueReferenceTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.mu, i64 %i.mv, i1 noundef zeroext true) #26
  store i64 %i.mw, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i288 = load i32, ptr %i.my, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.mx, i32 %.sroa.0.0.copyload.i288, i32 noundef 3679) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.mz = zext i8 %3 to i32
  store i32 %i.mz, ptr %i.e, align 4, !tbaa !116
  %i.na = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.nb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.na, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %i.nc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nb, ptr noundef nonnull align 8 dereferenceable(8) %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.nd = xor i1 %i.bg, true
  %i.ne = zext i1 %i.nd to i32
  store i32 %i.ne, ptr %i.f, align 4, !tbaa !116
  %i.nf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nc, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.ng = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_7CanQualINS_4TypeEEEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nf, ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.nh = load ptr, ptr %i.jt, align 8, !tbaa !1195
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = call i64 %i.nj(ptr noundef nonnull align 8 dereferenceable(104) %i.jt) #27
  store i64 %i.nk, ptr %18, align 8
  %i.nl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ng, ptr noundef nonnull align 4 dereferenceable(8) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bd

.thread604:                                       ; preds = %.loopexit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i289 = load i32, ptr %i.nn, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.nm, i32 %.sroa.0.0.copyload.i289, i32 noundef 3681) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.no = zext i8 %3 to i32
  store i32 %i.no, ptr %i.g, align 4, !tbaa !116
  %i.np = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %i.nq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.np, ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.nr = load ptr, ptr %i.jt, align 8, !tbaa !1195
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = call i64 %i.nt(ptr noundef nonnull align 8 dereferenceable(104) %i.jt) #27
  store i64 %i.nu, ptr %20, align 8
  %i.nv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nq, ptr noundef nonnull align 4 dereferenceable(8) %20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bd

bb.ba:                                            ; preds = %bb.am
  %i.nw = getelementptr inbounds nuw i8, ptr %.0182564, i64 48
  %.sroa.0.0.copyload.i290 = load i64, ptr %i.nw, align 8, !tbaa !92 ; 2 uses
  %i.nx = and i64 %.sroa.0.0.copyload.i290, -16
  %i.ny = inttoptr i64 %i.nx to ptr
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !92
  %i.ob = and i64 %.sroa.0.0.copyload.i290, 7
  %i.oc = or i64 %i.oa, %i.ob
  %i.od = and i64 %.sroa.0.0.copyload.i272, -16
  %i.oe = inttoptr i64 %i.od to ptr
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !92
  %i.oh = and i64 %.sroa.0.0.copyload.i272, 7
  %i.oi = or i64 %i.og, %i.oh
  %i.oj = icmp eq i64 %i.oc, %i.oi
  br i1 %i.oj, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ok = getelementptr inbounds nuw i8, ptr %.0182564, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i291 = load i32, ptr %i.om, align 8, !tbaa !116
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.ol, i32 %.sroa.0.0.copyload.i291, i32 noundef 3680) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.on = zext i8 %3 to i32
  store i32 %i.on, ptr %i.h, align 4, !tbaa !116
  %i.oo = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %21, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %.sroa.0.0.copyload.i292 = load i64, ptr %i.ok, align 8, !tbaa !92
  store i64 %.sroa.0.0.copyload.i292, ptr %22, align 8
  %i.op = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.oo, ptr noundef nonnull align 8 dereferenceable(8) %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.oq = load ptr, ptr %.0182564, align 8, !tbaa !1195
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = call i64 %i.os(ptr noundef nonnull align 8 dereferenceable(104) %.0182564) #27
  store i64 %i.ot, ptr %23, align 8
  %i.ou = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.op, ptr noundef nonnull align 4 dereferenceable(8) %23)
  %i.ov = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ou, ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.ow = load ptr, ptr %i.jt, align 8, !tbaa !1195
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = call i64 %i.oy(ptr noundef nonnull align 8 dereferenceable(104) %i.jt) #27
  store i64 %i.oz, ptr %24, align 8
  %i.pa = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ov, ptr noundef nonnull align 4 dereferenceable(8) %24) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %.split, %bb.ay
  %i.pb = phi ptr [ %i.js, %bb.ba ], [ %i.le, %.split ], [ %spec.select.i.i287, %bb.ay ] ; 2 uses
  %.3185 = phi ptr [ %.0182564, %bb.ba ], [ %i.jt, %.split ], [ %i.jt, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.pc = getelementptr inbounds nuw i8, ptr %.0186563, i64 8 ; 2 uses
  %.not197 = icmp eq ptr %i.pc, %i.jq
  br i1 %.not197, label %.critedge209, label %bb.am

bb.bd:                                            ; preds = %.loopexit.thread, %bb.bb, %bb.az, %.thread604, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.critedge213

.critedge209:                                     ; preds = %bb.bc, %bb.al
  %i.pd = phi ptr [ %i.jb, %bb.al ], [ %i.pb, %bb.bc ]
  br i1 %i.bg, label %"_ZN4llvm7none_ofINS_14iterator_rangeIN5clang13CXXRecordDecl15friend_iteratorEEEZNS2_4Sema34CheckExplicitlyDefaultedComparisonEPNS2_5ScopeEPNS2_12FunctionDeclENS6_23DefaultedComparisonKindEE3$_0EEbOT_T0_.exit.thread541", label %bb.be

bb.be:                                            ; preds = %.critedge209
  %.0.copyload.i.i.i.i.i.i.i293 = load i64, ptr %i.ap, align 8 ; 3 uses
  %i.pe = and i64 %.0.copyload.i.i.i.i.i.i.i293, 4
  %i.pf = icmp eq i64 %i.pe, 0
  br i1 %i.pf, label %bb.bf, label %bb.bg
end_hunk_0
