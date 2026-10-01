Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiateDecl?download=true
inline.NumInlined: 35695
inline.NumDeleted: 15666
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5clang24TemplateDeclInstantiator25VisitFunctionTemplateDeclEPNS_20FunctionTemplateDeclE:bb.a
_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i: ; preds = %bb.x, %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i
  %i.dy = load i32, ptr %i.b, align 8
  %i.dz = and i32 %i.dy, 1
  %.not.i.i.i39 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i39, label %bb.y, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !755 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !755
  %i.ef = zext i32 %i.eb to i64                   ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 4
  %i.eh = add nuw nsw i64 %i.ef, 31
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = and i64 %i.ei, 1073741820
  %i.ek = add nuw nsw i64 %i.ej, %i.eg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ee, i64 noundef %i.ek, i64 noundef 8) #25
  br label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

_ZN5clang23LocalInstantiationScopeD2Ev.exit:      ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang24TemplateDeclInstantiator18VisitCXXMethodDeclEPNS_13CXXMethodDeclEPNS_21TemplateParameterListENS0_11RewriteKindE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.2355", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %5 = alloca %"class.clang::ExplicitSpecifier", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.clang::LocalInstantiationScope", align 8 ; 19 uses
  %7 = alloca %"class.clang::Sema::LambdaScopeForCallOperatorInstantiationRAII", align 8 ; 5 uses
  %8 = alloca %"class.clang::MultiLevelTemplateArgumentList", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallVector.1647", align 8 ; 11 uses
  %10 = alloca %"class.llvm::SmallVector.1604", align 8 ; 14 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %11 = alloca %"class.clang::QualType", align 8  ; 8 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %13 = alloca %"struct.clang::AssociatedConstraint", align 8 ; 7 uses
  %14 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %15 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %16 = alloca %"class.clang::InheritedConstructor", align 8 ; 2 uses
  %17 = alloca %"class.clang::LookupResult", align 8 ; 33 uses
  %18 = alloca %"class.clang::TemplateArgumentListInfo", align 8 ; 11 uses
  %19 = alloca %"class.clang::TemplateArgumentListInfo", align 8 ; 10 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = tail call noundef ptr @_ZNK5clang12FunctionDecl28getDescribedFunctionTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #25 ; 6 uses
  %i.f = icmp eq ptr %i.e, null                   ; 3 uses
  %i.g = icmp ne ptr %2, null                     ; 3 uses
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !766  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0244.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !954
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4245.0.copyload = load i64, ptr %.sroa.4245.0..sroa_idx, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !759
  %i.l = call noundef ptr @_ZN5clang20FunctionTemplateDecl18findSpecializationEN4llvm8ArrayRefINS_16TemplateArgumentEEERPv(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr %.sroa.0244.0.copyload, i64 %.sroa.4245.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25 ; 2 uses
  %.not331 = icmp eq ptr %i.l, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %.not331, label %.thread, label %bb.ft

bb.c:                                             ; preds = %bb.a
  %spec.select = select i1 %i.f, ptr %1, ptr %i.e
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %.sink733 = phi ptr [ %spec.select, %bb.c ], [ %i.e, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sink733, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 25165824                   ; 2 uses
  %.not.i360 = icmp ne i32 %i.o, 0                ; 10 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !987
  %i.r = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.q) #25
  %i.s = call noundef ptr @_ZNK5clang4Decl25getParentFunctionOrMethodEb(ptr noundef nonnull align 8 dereferenceable(33) %i.r, i1 noundef zeroext false) #25
  %i.t = icmp ne ptr %i.s, null
  %i.u = zext i1 %i.t to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.v = phi i8 [ 1, %.thread ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.w = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68 ; 3 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !898
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 1, ptr %i.x, align 8
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !766
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !758
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i32 1, ptr %i.ac, align 4, !tbaa !767
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12576 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !891
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !985
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 3 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !982
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 121
  store i8 %i.v, ptr %i.ah, align 1, !tbaa !981
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 122
  store i8 0, ptr %i.ai, align 2, !tbaa !983
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr null, ptr %i.aj, align 8, !tbaa !984
  store ptr %6, ptr %i.ae, align 8, !tbaa !891
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.am, ptr %8, align 8, !tbaa !766
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !758
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.ao, align 4, !tbaa !767
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !758 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  %i.ar = icmp eq ptr %8, %i.al
  %or.cond.i.i = or i1 %i.ar, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5clang30MultiLevelTemplateArgumentListC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = icmp ugt i32 %i.aq, 4
  br i1 %i.as, label %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i.i, label %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %bb.f
  %i.at = zext i32 %i.aq to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(118) %8, ptr noundef nonnull %i.am, i64 noundef %i.at, i64 noundef 24) #25
  %.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !758 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !766
  br label %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i, %bb.f
  %i.au = phi ptr [ %.pre.i, %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.am, %bb.f ]
  %i.av = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.aq, %bb.f ]
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !766
  %gepdiff.i.i.i = mul nuw nsw i64 %i.aw, 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.ax, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i, %_ZSt4copyIPKN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !758
  br label %_ZN5clang30MultiLevelTemplateArgumentListC2ERKS0_.exit

_ZN5clang30MultiLevelTemplateArgumentListC2ERKS0_.exit: ; preds = %bb.e, %.sink.split.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ay, ptr noundef nonnull align 8 dereferenceable(6) %i.az, i64 6, i1 false)
  call void @_ZN5clang4Sema43LambdaScopeForCallOperatorInstantiationRAIIC1ERS0_PNS_12FunctionDeclENS_30MultiLevelTemplateArgumentListERNS_23LocalInstantiationScopeEb(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(18640) %i.w, ptr noundef nonnull %1, ptr nofree noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(148) %6, i1 noundef zeroext true) #25
  %i.ba = load ptr, ptr %8, align 8, !tbaa !766   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  br i1 %i.bb, label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5clang30MultiLevelTemplateArgumentListC2ERKS0_.exit
  call void @free(ptr noundef %i.ba) #25
  br label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit

_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit: ; preds = %_ZN5clang30MultiLevelTemplateArgumentListC2ERKS0_.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.bc, ptr %9, align 8, !tbaa !766
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !758
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 4, ptr %i.be, align 4, !tbaa !767
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8 ; 2 uses
  %i.bg = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i363 = icmp eq i64 %i.bg, 0
  br i1 %.not.i363, label %.thread555, label %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit

_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit: ; preds = %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit
  %i.bh = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2415
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !2416 ; 5 uses
  %i.bn = zext i32 %i.bm to i64                   ; 3 uses
  %i.bo = icmp ne i32 %i.bm, 0
  %or.cond619.not = select i1 %.not.i360, i1 %i.bo, i1 false
  br i1 %or.cond619.not, label %bb.h, label %.thread555

bb.h:                                             ; preds = %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit
  %i.bp = icmp ugt i32 %i.bm, 4
  br i1 %i.bp, label %bb.i, label %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE7reserveEm.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bc, i64 noundef %i.bn, i64 noundef 8) #25
  %.pre.i.i364 = load i32, ptr %i.bd, align 8, !tbaa !758
  %.pre13.i.i = zext i32 %.pre.i.i364 to i64
  br label %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE7reserveEm.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i64 [ 0, %bb.h ], [ %.pre13.i.i, %bb.i ] ; 3 uses
  %.not11.i.i = icmp samesign eq i64 %.pre-phi.i.i, %i.bn
  br i1 %.not11.i.i, label %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE6resizeEm.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE7reserveEm.exit.i.i
  %i.bq = load ptr, ptr %9, align 8, !tbaa !766
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.pre-phi.i.i
  %i.bs = sub nsw i64 %i.bn, %.pre-phi.i.i
  %i.bt = shl nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %i.bt, i1 false), !tbaa !1174
  br label %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE6resizeEm.exit

_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE6resizeEm.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE7reserveEm.exit.i.i, %.lr.ph.preheader.i.i
  store i32 %i.bm, ptr %i.bd, align 8, !tbaa !758
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE6resizeEm.exit, %bb.k
  %indvars.iv = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIPN5clang21TemplateParameterListEE6resizeEm.exit ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1174
  %i.bw = call noundef ptr @_ZN5clang24TemplateDeclInstantiator19SubstTemplateParamsEPNS_21TemplateParameterListE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.bv) ; 2 uses
  %.not334.not = icmp eq ptr %i.bw, null
  br i1 %.not334.not, label %.loopexit647, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %9, align 8, !tbaa !766
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !1174
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.bm, %lftr.wideiv
  br i1 %exitcond, label %.thread555, label %bb.j, !llvm.loop !2409

.thread555:                                       ; preds = %bb.k, %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit
  %i.bz = call i64 @_ZN5clang17ExplicitSpecifier11getFromDeclEPKNS_12FunctionDeclE(ptr noundef nonnull %1) #25 ; 3 uses
  %i.ca = and i64 %i.bz, -4                       ; 3 uses
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.thread555
  %i.cd = load i24, ptr %i.cb, align 8
  %i.ce = and i24 %i.cd, 131072
  %.not624 = icmp eq i24 %i.ce, 0
  %.pre664 = load ptr, ptr %0, align 8, !tbaa !66 ; 7 uses
  br i1 %.not624, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre664, i64 12608
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !766
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre664, i64 12616
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !758
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [56 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !1237
  %.not335 = icmp eq i32 %i.cm, 4
  br i1 %.not335, label %bb.q, label %bb.n

.critedge:                                        ; preds = %.thread555
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cn = load ptr, ptr %i.ak, align 8, !tbaa !69, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre664, i32 noundef 4, ptr noundef null, i32 noundef 4) #25
  %i.co = call i64 @_ZN5clang4Sema9SubstExprEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre664, ptr noundef nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(118) %i.cn) #25 ; 3 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit.thread, label %bb.o

_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit.thread: ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.pre664) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit647

bb.o:                                             ; preds = %bb.n
  %i.cq = and i64 %i.co, -2
  %i.cr = inttoptr i64 %i.cq to ptr
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.pre664) #25
  %i.cs = and i64 %i.bz, 3
  %i.ct = and i64 %i.co, -4
  %i.cu = or disjoint i64 %i.ct, %i.cs            ; 2 uses
  store i64 %i.cu, ptr %5, align 8
  %i.cv = load i24, ptr %i.cr, align 8
  %i.cw = and i24 %i.cv, 65536
  %.not15.i = icmp eq i24 %i.cw, 0
  br i1 %.not15.i, label %bb.p, label %_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit

bb.p:                                             ; preds = %bb.o
  %i.cx = call noundef zeroext i1 @_ZN5clang4Sema27tryResolveExplicitSpecifierERNS_17ExplicitSpecifierE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre664, ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 0 uses
  %.pre.i367 = load i64, ptr %5, align 8
  br label %_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit

_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit: ; preds = %.critedge, %bb.o, %bb.p
  %i.cy = phi i64 [ %i.bz, %.critedge ], [ %.pre.i367, %bb.p ], [ %i.cu, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cz = icmp eq i64 %i.cy, 2
  br i1 %i.cz, label %.loopexit647, label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.da = or disjoint i64 %i.ca, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit
  %.sroa.0492.0 = phi i64 [ %i.cy, %_ZN5clang4Sema28instantiateExplicitSpecifierERKNS_30MultiLevelTemplateArgumentListENS_17ExplicitSpecifierE.exit ], [ %i.da, %bb.q ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 10 uses
  %i.dc = load i16, ptr %i.db, align 8
  %i.dd = and i16 %i.dc, 124
  %i.de = icmp eq i16 %i.dd, 36
  br i1 %i.de, label %_ZN4llvm19dyn_cast_if_presentIN5clang13CXXMethodDeclEKNS1_11DeclContextEEEDaPT0_.exit.i, label %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit

_ZN4llvm19dyn_cast_if_presentIN5clang13CXXMethodDeclEKNS1_11DeclContextEEEDaPT0_.exit.i: ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dg = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.df) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8 ; 3 uses
  %i.di = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang13CXXMethodDeclEKNS1_11DeclContextEEEDaPT0_.exit.i
  %i.dk = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

bb.t:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang13CXXMethodDeclEKNS1_11DeclContextEEEDaPT0_.exit.i
  %i.dl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !804
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

_ZNK5clang13CXXMethodDecl9getParentEv.exit.i:     ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi ptr [ %i.dk, %bb.s ], [ %i.dn, %bb.t ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1072 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.dp, null
  br i1 %.not.i6.i, label %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit, label %_ZN5clang14isLambdaMethodEPKNS_11DeclContextE.exit

_ZN5clang14isLambdaMethodEPKNS_11DeclContextE.exit: ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = and i32 %i.dr, 8388608
  %.not625 = icmp eq i32 %i.ds, 0
  br i1 %.not625, label %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5clang14isLambdaMethodEPKNS_11DeclContextE.exit
  %.0.copyload.i.i.i.i.i.i.i370 = load i64, ptr %i.bf, align 8 ; 3 uses
  %i.dt = and i64 %.0.copyload.i.i.i.i.i.i.i370, 4
  %.not.i371 = icmp eq i64 %i.dt, 0
  br i1 %.not.i371, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = and i64 %.0.copyload.i.i.i.i.i.i.i370, -5
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1126
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

bb.w:                                             ; preds = %bb.u
  %i.dy = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i370 to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit: ; preds = %bb.v, %bb.w
  %i.dz = phi ptr [ %i.dx, %bb.v ], [ %i.dy, %bb.w ]
  %.not336 = icmp eq ptr %i.dz, null
  br i1 %.not336, label %bb.x, label %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit

bb.x:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = and i32 %i.eb, 125
  %spec.select.i = icmp eq i32 %i.ec, 37
  br i1 %spec.select.i, label %bb.y, label %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit

bb.y:                                             ; preds = %bb.x
  %i.ed = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 232
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.eg, align 8, !tbaa !755
  %i.eh = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ef, i64 %.sroa.0.0.copyload.i, i32 0) #25 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i372 = load i64, ptr %i.bf, align 8 ; 2 uses
  %i.ei = and i64 %.0.copyload.i.i.i.i.i.i.i372, 4
  %.not.i373 = icmp eq i64 %i.ei, 0
  br i1 %.not.i373, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = and i64 %.0.copyload.i.i.i.i.i.i.i372, -5
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store ptr %i.eh, ptr %i.el, align 8, !tbaa !1126
  br label %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit

bb.aa:                                            ; preds = %bb.y
  %i.em = ptrtoint ptr %i.eh to i64
  store i64 %i.em, ptr %i.bf, align 8
  br label %_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit

_ZN5clang14DeclaratorDecl17setTypeSourceInfoEPNS_14TypeSourceInfoE.exit: ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i, %bb.r, %bb.aa, %bb.z, %bb.x, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit, %_ZN5clang14isLambdaMethodEPKNS_11DeclContextE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.en, ptr %10, align 8, !tbaa !766
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.eo, align 8, !tbaa !758
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 4, ptr %i.ep, align 4, !tbaa !767
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
end_hunk_0
