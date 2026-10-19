Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiateDecl?download=true
inline.NumInlined: 35695
inline.NumDeleted: 15666
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5clang4Sema28LocalEagerInstantiationScopeD2Ev:bb.a
  store <2 x ptr> %i.j, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !1264
  store <2 x ptr> %i.k, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !tbaa !759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1269 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1272 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !1273 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.s = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1264
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #26
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, !llvm.loop !17

_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !1269
  br label %_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, %bb.b
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i ], [ %i.l, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1268
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EED2Ev.exit

_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i
  ret void
}

declare void @_ZN5clang4Sema28DiagnoseUnusedNestedTypedefsEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang12FunctionDecl7hasBodyERPKS0_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN5clang20FunctionTemplateDecl18findSpecializationEN4llvm8ArrayRefINS_16TemplateArgumentEEERPv(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang24TemplateDeclInstantiator17SubstFunctionTypeEPNS_12FunctionDeclERN4llvm15SmallVectorImplIPNS_11ParmVarDeclEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.509", align 8 ; 8 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1126
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 124
  %.not = icmp eq i32 %i.k, 36
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !987  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -64
  %i.p = select i1 %i.n, ptr null, ptr %i.o
  %i.q = tail call i64 @_ZNK5clang13CXXMethodDecl39getFunctionObjectParameterReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #25 ; 3 uses
  %i.r = and i64 %i.q, -16
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !808 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 16
  %i.w = and i8 %i.v, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.w, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !755
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !808
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 16
  %i.ad = and i8 %i.ac, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i = icmp eq i8 %i.ad, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.e
  %i.ae = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.t) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %bb.d
  %.1.i8.i.i = phi ptr [ %i.ae, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i8.i.i, i64 16
  %i.ag = load i24, ptr %i.af, align 16
  %i.ah = and i24 %i.ag, 1048576
  %.not4.i.i.i = icmp eq i24 %i.ah, 0
  br i1 %.not4.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i
  %.05.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ], [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !808 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i8, ptr %i.am, align 16
  %i.ao = and i8 %i.an, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i8 %i.ao, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.al) #25
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ap, %bb.f ], [ %i.al, %.lr.ph.i.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  %i.ar = load i24, ptr %i.aq, align 16
  %i.as = and i24 %i.ar, 1048576
  %.not.i.i.i = icmp eq i24 %i.as, 0
  br i1 %.not.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i
  %.0.lcssa.i.i.i = phi ptr [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ], [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i = load i64, ptr %i.at, align 8, !tbaa !755 ; 2 uses
  %.pre = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, -16
  %.pre200 = inttoptr i64 %.pre to ptr
  br label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit

_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit: ; preds = %bb.e, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i
  %.pre-phi201 = phi ptr [ %i.s, %bb.e ], [ %i.s, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.pre200, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i ]
  %.sroa.0.0.in.i.sroa.speculated.i = phi i64 [ %i.q, %bb.e ], [ %i.q, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.pre-phi201, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.au, align 8 ; 3 uses
  %i.av = and i64 %.0.copyload.i.i.i.i.i.i, 8
  %.not.i.i106 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i106, label %_ZNK5clang8QualType13getQualifiersEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit
  %i.aw = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !71
  br label %_ZNK5clang8QualType13getQualifiersEv.exit

_ZNK5clang8QualType13getQualifiersEv.exit:        ; preds = %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.g ], [ 0, %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit ]
  %i.az = or i64 %.0.copyload.i.i.i.i.i.i, %.sroa.0.0.in.i.sroa.speculated.i
  %i.ba = and i64 %i.az, 7
  %i.bb = or i64 %.sroa.0.0.i.i, %i.ba
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5clang8QualType13getQualifiersEv.exit, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %.sroa.0164.0 = phi i64 [ 0, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit ], [ %i.bb, %_ZNK5clang8QualType13getQualifiersEv.exit ]
  %.078 = phi ptr [ null, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit ], [ %i.p, %_ZNK5clang8QualType13getQualifiersEv.exit ]
  %i.bc = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.bf = tail call i32 @_ZNK5clang14DeclaratorDecl19getTypeSpecStartLocEv(ptr noundef nonnull align 8 dereferenceable(68) %1) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 8, !tbaa !71
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !1109, !range !785, !noundef !67
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = tail call noundef ptr @_ZN5clang4Sema21SubstFunctionDeclTypeEPNS_14TypeSourceInfoERKNS_30MultiLevelTemplateArgumentListENS_14SourceLocationENS_15DeclarationNameEPNS_13CXXRecordDeclENS_10QualifiersEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bc, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(118) %i.be, i32 %i.bf, i64 %.sroa.0.0.copyload.i, ptr noundef %.078, i64 %.sroa.0164.0, i1 noundef zeroext %i.bj) #25 ; 11 uses
  %.not98 = icmp eq ptr %i.bk, null
  br i1 %.not98, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i107 = load i64, ptr %i.h, align 8, !tbaa !755 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.bm = inttoptr i64 %.sroa.0.0.copyload.i107 to ptr ; 3 uses
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.bm, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.bl, 1 ; 2 uses
  %i.bn = and i64 %.sroa.0.0.copyload.i107, 15
  %.not.i.i108 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i108, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.i
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !808
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i8, ptr %i.bp, align 16
  %i.br = icmp eq i8 %i.bq, 38
  br i1 %i.br, label %bb.j, label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit

bb.j:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.bs = tail call { ptr, ptr } @_ZN5clang7TypeLoc16IgnoreParensImplES0_(ptr nonnull %i.bm, ptr nonnull %i.bl) #25
  br label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit

_ZNK5clang7TypeLoc12IgnoreParensEv.exit:          ; preds = %bb.i, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.j
  %.fca.1.insert.merged.i = phi { ptr, ptr } [ %i.bs, %bb.j ], [ %.fca.1.insert.i, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i ], [ %.fca.1.insert.i, %bb.i ] ; 2 uses
  %i.bt = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 0 ; 4 uses
  %i.bu = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 1 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = and i64 %i.bv, 15
  %.not.i.i109 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i109, label %_ZN5clang25InheritingConcreteTypeLocINS_15FunctionTypeLocENS_20FunctionProtoTypeLocENS_17FunctionProtoTypeEE6isKindERKNS_7TypeLocE.exit.i, label %bb.af

_ZN5clang25InheritingConcreteTypeLocINS_15FunctionTypeLocENS_20FunctionProtoTypeLocENS_17FunctionProtoTypeEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang7TypeLoc12IgnoreParensEv.exit
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !808 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.by, align 16
  %i.ca = icmp eq i8 %i.bz, 24
  br i1 %i.ca, label %bb.k, label %bb.af

bb.k:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15FunctionTypeLocENS_20FunctionProtoTypeLocENS_17FunctionProtoTypeEE6isKindERKNS_7TypeLocE.exit.i
  %.not99 = icmp eq ptr %i.bk, %i.h
  br i1 %.not99, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i112 = load i64, ptr %i.bk, align 8, !tbaa !755 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.cc = inttoptr i64 %.sroa.0.0.copyload.i112 to ptr ; 2 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i112, 15
  %.not.i.i115 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i115, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i120, label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit123

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i120: ; preds = %bb.l
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !808
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i8, ptr %i.cf, align 16
  %i.ch = icmp eq i8 %i.cg, 38
  br i1 %i.ch, label %bb.m, label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit123

bb.m:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i120
  %i.ci = tail call { ptr, ptr } @_ZN5clang7TypeLoc16IgnoreParensImplES0_(ptr nonnull %i.cc, ptr nonnull %i.cb) #25
  %i.cj = extractvalue { ptr, ptr } %i.ci, 1
  br label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit123

_ZNK5clang7TypeLoc12IgnoreParensEv.exit123:       ; preds = %bb.l, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i120, %bb.m
  %.fca.1.insert.merged.i119 = phi ptr [ %i.cj, %bb.m ], [ %i.cb, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i120 ], [ %i.cb, %bb.l ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 16
  %i.cm = icmp eq i8 %i.cl, 23
  br i1 %i.cm, label %.critedge, label %_ZNK5clang15FunctionTypeLoc12getNumParamsEv.exit

_ZNK5clang15FunctionTypeLoc12getNumParamsEv.exit: ; preds = %_ZNK5clang7TypeLoc12IgnoreParensEv.exit123
  %i.cn = load i64, ptr %i.ck, align 16
  %i.co = lshr i64 %i.cn, 48                      ; 2 uses
  %.not103187 = icmp eq i64 %i.co, 0
  br i1 %.not103187, label %.critedge, label %.lr.ph190

.lr.ph190:                                        ; preds = %_ZNK5clang15FunctionTypeLoc12getNumParamsEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.fca.1.insert.merged.i119, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph190, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.088189 = phi i32 [ 0, %.lr.ph190 ], [ %.290, %.loopexit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !853 ; 6 uses
  %.not104.not = icmp eq ptr %i.cu, null
  br i1 %.not104.not, label %.critedge.thread177, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12576
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !891 ; 3 uses
  %i.cy = tail call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cu) #25
  br i1 %i.cy, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cz = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.da, align 8, !tbaa !755
  %i.db = load ptr, ptr %i.bd, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.dc = tail call i32 @_ZN5clang4Sema26getNumArgumentsInExpansionENS_8QualTypeERKNS_30MultiLevelTemplateArgumentListE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cz, i64 %.sroa.0.0.copyload.i128, ptr noundef nonnull align 8 dereferenceable(118) %i.db) #25 ; 2 uses
  %.not181 = icmp eq i32 %i.dc, 0
  br i1 %.not181, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.o, %bb.p
  %i.dd = add i32 %.088189, 1
  %i.de = zext i32 %.088189 to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !853 ; 3 uses
  %i.dh = load i32, ptr %i.cr, align 8, !tbaa !758 ; 2 uses
  %i.di = load i32, ptr %i.cs, align 4, !tbaa !767
  %.not.i129 = icmp ult i32 %i.dh, %i.di
  br i1 %.not.i129, label %bb.r, label %bb.q, !prof !768

bb.q:                                             ; preds = %.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.dg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit

bb.r:                                             ; preds = %.thread
  %i.dj = zext i32 %i.dh to i64
  %i.dk = load ptr, ptr %2, align 8, !tbaa !766
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  store ptr %i.dg, ptr %i.dl, align 1
  %i.dm = load i32, ptr %i.cr, align 8, !tbaa !758
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.cr, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit: ; preds = %bb.q, %bb.r
  tail call void @_ZN5clang23LocalInstantiationScope17InstantiatedLocalEPKNS_4DeclEPS1_(ptr noundef nonnull align 8 dereferenceable(148) %i.cx, ptr noundef nonnull %i.cu, ptr noundef %i.dg) #25
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN5clang23LocalInstantiationScope28MakeInstantiatedLocalArgPackEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(148) %i.cx, ptr noundef nonnull %i.cu) #25
  %i.do = add i32 %i.dc, -1                       ; 2 uses
  %.not105184 = icmp eq i32 %i.do, 0
  br i1 %.not105184, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131
  %.080186 = phi i32 [ %i.ea, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131 ], [ 0, %bb.s ]
  %.189185 = phi i32 [ %i.dp, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131 ], [ %.088189, %bb.s ] ; 2 uses
  %i.dp = add i32 %.189185, 1                     ; 2 uses
  %i.dq = zext i32 %.189185 to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !853 ; 3 uses
  %i.dt = load i32, ptr %i.cr, align 8, !tbaa !758 ; 2 uses
  %i.du = load i32, ptr %i.cs, align 4, !tbaa !767
  %.not.i130 = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i130, label %bb.u, label %bb.t, !prof !768

bb.t:                                             ; preds = %.lr.ph
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ds)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131

bb.u:                                             ; preds = %.lr.ph
  %i.dv = zext i32 %i.dt to i64
  %i.dw = load ptr, ptr %2, align 8, !tbaa !766
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  store ptr %i.ds, ptr %i.dx, align 1
  %i.dy = load i32, ptr %i.cr, align 8, !tbaa !758
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.cr, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131

_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131: ; preds = %bb.t, %bb.u
  tail call void @_ZN5clang23LocalInstantiationScope24InstantiatedLocalPackArgEPKNS_4DeclEPNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(148) %i.cx, ptr noundef nonnull %i.cu, ptr noundef %i.ds) #25
  %i.ea = add nuw i32 %.080186, 1                 ; 2 uses
  %.not105 = icmp eq i32 %i.ea, %i.do
  br i1 %.not105, label %.loopexit, label %.lr.ph, !llvm.loop !2439

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131, %bb.s, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit
  %.290 = phi i32 [ %i.dd, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit ], [ %.088189, %bb.s ], [ %i.dp, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE9push_backES3_.exit131 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not103 = icmp eq i64 %indvars.iv.next, %i.co
  br i1 %.not103, label %.critedge, label %bb.n, !llvm.loop !2440

bb.v:                                             ; preds = %bb.k
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 16
  %i.ed = icmp eq i8 %i.ec, 23
  br i1 %i.ed, label %.critedge, label %_ZNK5clang15FunctionTypeLoc12getNumParamsEv.exit134

_ZNK5clang15FunctionTypeLoc12getNumParamsEv.exit134: ; preds = %bb.v
  %i.ee = load i64, ptr %i.eb, align 16
  %i.ef = lshr i64 %i.ee, 48                      ; 2 uses
  %.not100191 = icmp eq i64 %i.ef, 0
  br i1 %.not100191, label %.critedge, label %.lr.ph193

.lr.ph193:                                        ; preds = %_ZNK5clang15FunctionTypeLoc12getNumParamsEv.exit134
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph193, %bb.ae
  %indvars.iv197 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next198, %bb.ae ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv197
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !853 ; 2 uses
  %.not101 = icmp eq ptr %i.en, null
  %i.eo = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68 ; 2 uses
  br i1 %.not101, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload.i135 = load i32, ptr %i.ek, align 8, !tbaa !796
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv197
  %.sroa.0.0.copyload.i136 = load i64, ptr %i.ep, align 8, !tbaa !755
  %i.eq = tail call noundef ptr @_ZN5clang4Sema26BuildParmVarDeclForTypedefEPNS_11DeclContextENS_14SourceLocationENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.eo, ptr noundef nonnull %i.ej, i32 %.sroa.0.0.copyload.i135, i64 %.sroa.0.0.copyload.i136) #25 ; 2 uses
  %i.er = load i32, ptr %i.eh, align 8, !tbaa !758 ; 2 uses
  %i.es = load i32, ptr %i.ei, align 4, !tbaa !767
  %.not.i137 = icmp ult i32 %i.er, %i.es
  br i1 %.not.i137, label %bb.z, label %bb.y, !prof !768

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.eq)
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.et = zext i32 %i.er to i64
  %i.eu = load ptr, ptr %2, align 8, !tbaa !766
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  store ptr %i.eq, ptr %i.ev, align 1
  %i.ew = load i32, ptr %i.eh, align 8, !tbaa !758
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.eh, align 8, !tbaa !758
  br label %bb.ae

bb.aa:                                            ; preds = %bb.w
  %i.ey = load ptr, ptr %i.bd, align 8, !tbaa !69, !nonnull !67, !align !68
  %i.ez = tail call noundef ptr @_ZN5clang4Sema16SubstParmVarDeclEPNS_11ParmVarDeclERKNS_30MultiLevelTemplateArgumentListEiNS_16OptionalUnsignedIjEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.eo, ptr noundef nonnull %i.en, ptr noundef nonnull align 8 dereferenceable(118) %i.ey, i32 noundef 0, i32 0, i1 noundef zeroext false, i1 noundef zeroext true) #25 ; 3 uses
  %.not102 = icmp eq ptr %i.ez, null
  br i1 %.not102, label %.critedge.thread177, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load i32, ptr %i.eh, align 8, !tbaa !758 ; 2 uses
  %i.fb = load i32, ptr %i.ei, align 4, !tbaa !767
  %.not.i139 = icmp ult i32 %i.fa, %i.fb
  br i1 %.not.i139, label %bb.ad, label %bb.ac, !prof !768

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ez)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fc = zext i32 %i.fa to i64
  %i.fd = load ptr, ptr %2, align 8, !tbaa !766
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fc
  store ptr %i.ez, ptr %i.fe, align 1
end_hunk_0
begin_hunk_1_@_ZN4llvm15SmallVectorImplISt4pairIPN5clang13CXXRecordDeclENS2_14SourceLocationEEEaSEOS7_:bb.a
.lr.ph.i.i.i.i.i35.prol:                          ; preds = %bb.k, %.lr.ph.i.i.i.i.i35.prol
  %.012.i.i.i.i.i36.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i35.prol ], [ %i.r, %bb.k ]
  %.0811.i.i.i.i.i37.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i35.prol ], [ %i.bf, %bb.k ] ; 3 uses
  %.0910.i.i.i.i.i38.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i35.prol ], [ %i.b, %bb.k ] ; 3 uses
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.lr.ph.i.i.i.i.i35.prol ], [ 0, %bb.k ]
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i38.prol, align 8, !tbaa !897
  store ptr %i.bg, ptr %.0811.i.i.i.i.i37.prol, align 8, !tbaa !2788
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38.prol, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37.prol, i64 8
  %i.bj = load i32, ptr %i.bh, align 8, !tbaa !796
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !796
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38.prol, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37.prol, i64 16 ; 2 uses
  %i.bm = add nsw i64 %.012.i.i.i.i.i36.prol, -1  ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.lr.ph.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i35.prol, !llvm.loop !2786

.lr.ph.i.i.i.i.i35.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i35.prol, %bb.k
  %.012.i.i.i.i.i36.unr = phi i64 [ %i.r, %bb.k ], [ %i.bm, %.lr.ph.i.i.i.i.i35.prol ]
  %.0811.i.i.i.i.i37.unr = phi ptr [ %i.bf, %bb.k ], [ %i.bl, %.lr.ph.i.i.i.i.i35.prol ]
  %.0910.i.i.i.i.i38.unr = phi ptr [ %i.b, %bb.k ], [ %i.bk, %.lr.ph.i.i.i.i.i35.prol ]
  %i.bn = icmp ult i32 %i.q, 4
  br i1 %i.bn, label %_ZSt4moveIPSt4pairIPN5clang13CXXRecordDeclENS1_14SourceLocationEES6_ET0_T_S8_S7_.exit39, label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %.lr.ph.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i35
  %.012.i.i.i.i.i36 = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i35 ], [ %.012.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i37 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i35 ], [ %.0811.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i38 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i35 ], [ %.0910.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 9 uses
  %i.bo = load ptr, ptr %.0910.i.i.i.i.i38, align 8, !tbaa !897
  store ptr %i.bo, ptr %.0811.i.i.i.i.i37, align 8, !tbaa !2788
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 8
  %i.br = load i32, ptr %i.bp, align 8, !tbaa !796
  store i32 %i.br, ptr %i.bq, align 8, !tbaa !796
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 16
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !897
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !2788
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 24
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !796
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !796
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 32
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !897
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !2788
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 40
  %i.cd = load i32, ptr %i.cb, align 8, !tbaa !796
  store i32 %i.cd, ptr %i.cc, align 8, !tbaa !796
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 48
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !897
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !2788
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 56
  %i.cj = load i32, ptr %i.ch, align 8, !tbaa !796
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !796
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 64
  %i.cm = add nsw i64 %.012.i.i.i.i.i36, -4
  %i.cn = icmp sgt i64 %.012.i.i.i.i.i36, 4
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i35, label %_ZSt4moveIPSt4pairIPN5clang13CXXRecordDeclENS1_14SourceLocationEES6_ET0_T_S8_S7_.exit39, !llvm.loop !2785

_ZSt4moveIPSt4pairIPN5clang13CXXRecordDeclENS1_14SourceLocationEES6_ET0_T_S8_S7_.exit39: ; preds = %.lr.ph.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i35, %bb.j, %bb.i
  %.026 = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.r, %.lr.ph.i.i.i.i.i35 ], [ %i.r, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 4 uses
  %i.co = load i32, ptr %i.m, align 8, !tbaa !758
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.cp
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang13CXXRecordDeclENS2_14SourceLocationEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt4moveIPSt4pairIPN5clang13CXXRecordDeclENS1_14SourceLocationEES6_ET0_T_S8_S7_.exit39
  %i.cq = load ptr, ptr %1, align 8, !tbaa !766
  %.idx40 = shl nuw nsw i64 %.026, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx40
  %i.cs = load ptr, ptr %0, align 8, !tbaa !766
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.026
  %i.cu = sub nsw i64 %i.cp, %.026
  %gepdiff = shl nsw i64 %i.cu, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 8 %i.cr, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang13CXXRecordDeclENS2_14SourceLocationEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang13CXXRecordDeclENS2_14SourceLocationEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit: ; preds = %_ZSt4moveIPSt4pairIPN5clang13CXXRecordDeclENS1_14SourceLocationEES6_ET0_T_S8_S7_.exit39, %bb.l
  store i32 %i.n, ptr %i.p, align 8, !tbaa !758
  store i32 0, ptr %i.m, align 8, !tbaa !758
  br label %bb.m

bb.m:                                             ; preds = %_ZSt4moveIPSt4pairIPN5clang13CXXRecordDeclENS1_14SourceLocationEES6_ET0_T_S8_S7_.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang13CXXRecordDeclENS2_14SourceLocationEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplISt4pairIPN5clang13CXXRecordDeclENS2_14SourceLocationEEE12assignRemoteEOS7_.exit
  ret ptr %0
}

declare noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN4llvm21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN5clang14TypeLocBuilder11pushTrivialERNS_10ASTContextENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef nonnull align 8 dereferenceable(23904), i64, i32) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904), i64, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema42PushExpressionEvaluationContextForFunctionENS0_27ExpressionEvaluationContextEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_ZN5clang4Sema24getDefaultedFunctionKindEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeEPNS_14TypeSourceInfoE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !755
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.sroa.0.0.copyload.i11 = load i64, ptr %1, align 8, !tbaa !755 ; 3 uses
  %i.e = icmp ult i64 %.sroa.0.0.copyload.i11, 16
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !1794
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 32, ptr %i.g, align 8, !tbaa !1795
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.h, align 8, !tbaa !1796
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !1797
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.j, align 4, !tbaa !1798
  %i.k = inttoptr i64 %.sroa.0.0.copyload.i11 to ptr
  %i.l = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i11) #25
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !1795
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.c, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.m) #25
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.b, %bb.c
  %i.p = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.k, ptr nonnull %i.a) ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, label %bb.d

_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !1794
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.u = load i64, ptr %i.g, align 8, !tbaa !1795
  %i.v = load i64, ptr %i.h, align 8, !tbaa !1796
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.t, i64 %i.p, i32 noundef %i.x) #25 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %3, align 8, !tbaa !1794  ; 2 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !1796
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ac, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge, %bb.d
  %i.ad = phi ptr [ %i.aa, %bb.d ], [ %.pre, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.y, %bb.d ], [ null, %_ZN5clang14TypeLocBuilder7reserveEm.exit._crit_edge ]
  %.not.i = icmp eq ptr %i.ad, %i.f
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond.i = or i1 %.not.i, %i.ae
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #26
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 12 uses
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !808
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bl [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 59, label %bb.bk
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"
    i8 27, label %bb.af
    i8 28, label %bb.ag
    i8 29, label %bb.ah
    i8 30, label %bb.ai
    i8 31, label %bb.aj
    i8 32, label %bb.ak
    i8 33, label %bb.al
    i8 34, label %bb.am
    i8 35, label %bb.an
    i8 36, label %bb.ao
    i8 37, label %bb.ap
    i8 38, label %bb.aq
    i8 39, label %bb.ar
    i8 40, label %bb.as
    i8 58, label %bb.bj
    i8 42, label %bb.at
    i8 43, label %bb.au
    i8 44, label %bb.av
    i8 45, label %bb.aw
    i8 46, label %bb.ax
    i8 47, label %bb.ay
    i8 48, label %bb.az
    i8 49, label %bb.ba
    i8 50, label %bb.bb
    i8 51, label %bb.bc
    i8 52, label %bb.bd
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 56, label %bb.bh
    i8 57, label %bb.bi
  ]

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread: ; preds = %bb.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = and i64 %i.a, -16
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !808
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -8
  %i.k = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.j) #25, !inline_history !2789
  %i.l = ptrtoint ptr %3 to i64
  %i.m = icmp ne ptr %3, null
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = udiv i64 %i.o, %i.p
  %i.r = add i64 %i.q, %i.n
  %i.s = mul i64 %i.r, %i.p
  %i.t = load ptr, ptr %i.g, align 16, !tbaa !808 ; 3 uses
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.w = and i64 %i.v, 15
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, label %bb.d

_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !808
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  switch i8 %i.z, label %bb.d [
    i8 51, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.aa = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #25, !inline_history !2789
  %i.ab = extractvalue { ptr, ptr } %i.aa, 1
  %.sroa.0.0.copyload.i.i.i.i486 = load i32, ptr %i.u, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i.i.i.i486, ptr %i.ab, align 4, !tbaa !796
  br label %bb.e

bb.c:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.ac = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #25, !inline_history !2789
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  %.sroa.0.0.copyload.i.i.i29.i = load i32, ptr %i.u, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i.i.i29.i, ptr %i.ad, align 4, !tbaa !796
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.ae = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.t, ptr %i.u), !inline_history !2789
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.037.0.i = phi i64 [ %i.v, %bb.b ], [ %i.ae, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.037.0.i, 16
  br i1 %i.af, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE20RebuildQualifiedTypeENS_8QualTypeENS_16QualifiedTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.037.0.i, ptr %2, ptr %3), !inline_history !2789 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  %spec.select.i = select i1 %i.ah, i64 0, i64 %i.ag
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ai = getelementptr i8, ptr %2, i64 32
  %.val = load i64, ptr %i.ai, align 16, !tbaa !755
  %i.aj = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ak = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.al = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.am = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE27TransformArrayParameterTypeERNS_14TypeLocBuilderENS_21ArrayParameterTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.an = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE32TransformDependentSizedArrayTypeERNS_14TypeLocBuilderENS_26DependentSizedArrayTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ao = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE28TransformIncompleteArrayTypeERNS_14TypeLocBuilderENS_22IncompleteArrayTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ap = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformVariableArrayTypeERNS_14TypeLocBuilderENS_20VariableArrayTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aq = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE19TransformAtomicTypeERNS_14TypeLocBuilderENS_13AtomicTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ar = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23TransformAttributedTypeERNS_14TypeLocBuilderENS_17AttributedTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.as = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE19TransformBitIntTypeERNS_14TypeLocBuilderENS_13BitIntTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.at = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE25TransformBlockPointerTypeERNS_14TypeLocBuilderENS_19BlockPointerTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.au = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE28TransformCountAttributedTypeERNS_14TypeLocBuilderENS_22CountAttributedTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.av = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE20TransformBuiltinTypeERNS_14TypeLocBuilderENS_14BuiltinTypeLocE"(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aw = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #25
  %i.ax = extractvalue { ptr, ptr } %i.aw, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.ax, align 4, !tbaa !796
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ay = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE21TransformDecltypeTypeERNS_14TypeLocBuilderENS_15DecltypeTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.az = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17TransformAutoTypeERNS_14TypeLocBuilderENS_11AutoTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ba = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE42TransformDeducedTemplateSpecializationTypeERNS_14TypeLocBuilderENS_36DeducedTemplateSpecializationTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bb = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE34TransformDependentAddressSpaceTypeERNS_14TypeLocBuilderENS_28DependentAddressSpaceTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bc = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE28TransformDependentBitIntTypeERNS_14TypeLocBuilderENS_22DependentBitIntTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bd = tail call fastcc range(i64 16, 1) i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull readonly %2, ptr readonly %3, i1 noundef zeroext false, i64 0, ptr noundef null), !inline_history !2790
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.be = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE36TransformDependentSizedExtVectorTypeERNS_14TypeLocBuilderENS_30DependentSizedExtVectorTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bf = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE28TransformDependentVectorTypeERNS_14TypeLocBuilderENS_22DependentVectorTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bg = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE28TransformFunctionNoProtoTypeERNS_14TypeLocBuilderENS_22FunctionNoProtoTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bh = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformFunctionProtoTypeERNS_14TypeLocBuilderENS_20FunctionProtoTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bi = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE35TransformHLSLAttributedResourceTypeERNS_14TypeLocBuilderENS_29HLSLAttributedResourceTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bj = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE27TransformMacroQualifiedTypeERNS_14TypeLocBuilderENS_21MacroQualifiedTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bk = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE27TransformConstantMatrixTypeERNS_14TypeLocBuilderENS_21ConstantMatrixTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bl = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE33TransformDependentSizedMatrixTypeERNS_14TypeLocBuilderENS_27DependentSizedMatrixTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ai:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bm = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.aj:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bn = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ak:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bo = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.al:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang14TypeLocBuilder12pushFullCopyENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3) #25
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.am:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bp = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformObjCTypeParamTypeERNS_14TypeLocBuilderENS_20ObjCTypeParamTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.an:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bq = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE29TransformOverflowBehaviorTypeERNS_14TypeLocBuilderENS_23OverflowBehaviorTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.br = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformPackExpansionTypeERNS_14TypeLocBuilderENS_20PackExpansionTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bs = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE25TransformPackIndexingTypeERNS_14TypeLocBuilderENS_19PackIndexingTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.aq:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bt = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE18TransformParenTypeERNS_14TypeLocBuilderENS_12ParenTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.ar:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bu = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE17TransformPipeTypeERNS_14TypeLocBuilderENS_11PipeTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.as:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bv = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE20TransformPointerTypeERNS_14TypeLocBuilderENS_14PointerTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"

bb.at:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bw = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformReferenceTypeERNS_14TypeLocBuilderENS_16ReferenceTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !2791
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit"
end_hunk_1
begin_hunk_2_@"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE":bb.a
  %i.bv = and i64 %.sroa.061.0, -16
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !808 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.by, align 16
  %.not.i51 = icmp eq i8 %i.bz, 30
  br i1 %.not.i51, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i.i.i.i52 = load i64, ptr %i.ca, align 8, !tbaa !755
  %i.cb = and i64 %.sroa.0.0.copyload.i.i.i.i52, -16
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !808
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i8, ptr %i.ce, align 16
  %i.cg = icmp eq i8 %i.cf, 30
  br i1 %i.cg, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %.critedge2

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.n
  %i.ch = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bx) #25 ; 2 uses
  %.not39 = icmp eq ptr %i.ch, null
  br i1 %.not39, label %.critedge2, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88: ; preds = %bb.m, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.1.i91 = phi ptr [ %i.ch, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %i.bx, %bb.m ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.1.i91, i64 32
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.ci, align 16, !tbaa !755 ; 2 uses
  %.not98 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i53
  br i1 %.not98, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88
  %i.cj = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.0.0.copyload.i53, i64 noundef 0, i32 noundef 1) #25 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.n, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %bb.o, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread88
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.061.0, i64 noundef 16, i32 noundef 8) #25
  %i.cl = extractvalue { ptr, ptr } %i.ck, 1      ; 2 uses
  %.sroa.0.0.copyload.i57 = load i32, ptr %3, align 8, !tbaa !796
  store i32 %.sroa.0.0.copyload.i57, ptr %i.cl, align 8, !tbaa !796
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.u, ptr %i.cm, align 8, !tbaa !2885
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge2, %bb.a
  %.sroa.085.2 = phi i64 [ 0, %bb.a ], [ 0, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit" ], [ 0, %bb.b ], [ 0, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %.sroa.061.0, %.critedge2 ]
  ret i64 %.sroa.085.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !755 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #25
  %i.e = icmp ne i64 %i.c, 0
  %i.f = zext i1 %i.e to i64                      ; 2 uses
  %i.g = sub i64 %i.c, %i.f
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = udiv i64 %i.g, %i.h
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %i.h
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.n = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.m, ptr %i.l) ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.p, align 4, !tbaa !861
  %.not = icmp eq i32 %.val.val, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %2 to i64
  %.sroa.0.0.copyload.i.i.i.i9 = load i64, ptr %i.a, align 16, !tbaa !755 ; 2 uses
  %i.r = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i9) #25 ; 0 uses
  %.not30 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i.i.i.i9
  br i1 %.not30, label %bb.d, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.val8.pre = load ptr, ptr %0, align 8, !tbaa !1865
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b
  %.val8 = phi ptr [ %.val8.pre, %..critedge_crit_edge ], [ %.val, %bb.b ]
  %i.s = getelementptr i8, ptr %.val8, i64 232
  %.val8.val = load ptr, ptr %i.s, align 8, !tbaa !805
  %i.t = tail call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.val8.val, i64 %i.n) #25 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sroa.017.0 = phi i64 [ %i.t, %.critedge ], [ %i.q, %bb.c ] ; 2 uses
  %i.v = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.017.0, i64 noundef 4, i32 noundef 4) #25
  %i.w = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i.i14 = load i32, ptr %3, align 4, !tbaa !796
  store i32 %.sroa.0.0.copyload.i.i14, ptr %i.w, align 4, !tbaa !796
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge, %bb.a
  %.sroa.029.1 = phi i64 [ 0, %bb.a ], [ %.sroa.017.0, %bb.d ], [ 0, %.critedge ]
  ret i64 %.sroa.029.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.1014", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.3552", align 8 ; 5 uses
  %6 = alloca %"class.clang::ObjCObjectTypeLoc", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.1677", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallVector.1531", align 8 ; 10 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %10 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  %11 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !755 ; 2 uses
  %i.c = ptrtoint ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16             ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 1016
  %i.h = lshr i32 %i.e, 24
  %i.i = add nuw nsw i32 %i.h, 20
  %.lhs.trunc.i.i.i.i = add nuw nsw i32 %i.i, %i.g
  %.zext.i.i.i.i = and i32 %.lhs.trunc.i.i.i.i, 2040
  %i.j = add nuw nsw i32 %.zext.i.i.i.i, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.k, %i.c                       ; 2 uses
  %i.m = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #25
  %i.n = icmp ne i64 %i.l, 0
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %i.p = sub i64 %i.l, %i.o
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = udiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  %i.t = mul i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.w = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.v, ptr %i.u) ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  br i1 %i.x, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i81 = load i64, ptr %i.b, align 8, !tbaa !755 ; 2 uses
  %i.y = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i81) #25 ; 0 uses
  %i.z = icmp ne i64 %i.w, %.sroa.0.0.copyload.i.i.i.i81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !766
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !758
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.ac, align 4, !tbaa !767
  %i.ad = load i32, ptr %i.d, align 16
  %i.ae = lshr i32 %i.ad, 19
  %i.af = and i32 %i.ae, 127                      ; 2 uses
  %.not196 = icmp eq i32 %i.af, 0
  br i1 %.not196, label %.thread191, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.au = zext nneg i32 %i.af to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.066199 = phi i1 [ %i.z, %.lr.ph ], [ %.369.jt4, %bb.y ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1179 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !tbaa !755 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.n

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !808 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 16
  %i.be = icmp eq i8 %i.bd, 36
  br i1 %i.be, label %._crit_edge216, label %bb.n

._crit_edge216:                                   ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1865
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.al, ptr %8, align 8, !tbaa !766
  store i32 0, ptr %i.am, align 8, !tbaa !758
  store i32 2, ptr %i.an, align 4, !tbaa !767
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.0.0.copyload.i90 = load i64, ptr %i.bf, align 16, !tbaa !755
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_8QualTypeERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, i64 %.sroa.0.0.copyload.i90, ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.0.0.copyload.i.i.i.i91 = load i64, ptr %i.bg, align 16, !tbaa !755 ; 2 uses
  %i.bh = ptrtoint ptr %i.ay to i64
  %i.bi = add i64 %i.bh, 4                        ; 2 uses
  %i.bj = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i91) #25
  %i.bk = icmp ne i64 %i.bi, 0
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  %i.bm = sub i64 %i.bi, %i.bl
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = udiv i64 %i.bm, %i.bn
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i91 to ptr
  store ptr %i.bs, ptr %9, align 8
  store ptr %i.br, ptr %i.ao, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !755
  %i.bv = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25 ; 0 uses
  %i.bw = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25 ; 0 uses
  %.val79 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.bx = getelementptr inbounds nuw i8, ptr %.val79, i64 13800 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !796 ; 2 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !796
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.ap, ptr %10, align 8, !tbaa !1794
  store i64 32, ptr %i.aq, align 8, !tbaa !1795
  store i64 32, ptr %i.ar, align 8, !tbaa !1796
  store i32 0, ptr %i.as, align 8, !tbaa !1797
  store i8 0, ptr %i.at, align 4, !tbaa !1798
  %i.by = load ptr, ptr %9, align 8, !tbaa !1199
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %i.bz) #25
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = load i64, ptr %i.aq, align 8, !tbaa !1795
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.d, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.d:                                             ; preds = %._crit_edge216
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.cb) #25
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %._crit_edge216, %bb.d
  %.sroa.041.0.copyload = load ptr, ptr %9, align 8, !tbaa !759
  %.sroa.242.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !759
  %i.ce = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %10, ptr %.sroa.041.0.copyload, ptr %.sroa.242.0.copyload) ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 16
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1, label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.cj = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %i.ce, i32 %i.bu, i1 noundef zeroext true) #25 ; 2 uses
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.cj, i64 noundef 4, i32 noundef 4) #25
  %i.cl = extractvalue { ptr, ptr } %i.ck, 1
  %.sroa.0.0.copyload.i96 = load i32, ptr %i.ay, align 8, !tbaa !796
  store i32 %.sroa.0.0.copyload.i96, ptr %i.cl, align 4, !tbaa !796
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.cp = load i64, ptr %i.aq, align 8, !tbaa !1795
  %i.cq = load i64, ptr %i.ar, align 8, !tbaa !1796
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.co, i64 %i.cj, i32 noundef %i.cs) #25 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %10, align 8, !tbaa !1794
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !1796
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cx, i64 %i.cr, i1 false)
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !758 ; 2 uses
  %i.cz = load i32, ptr %i.ac, align 4, !tbaa !767
  %.not.i97 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i97, label %bb.g, label %bb.f, !prof !768

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ct)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

bb.g:                                             ; preds = %bb.e
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %7, align 8, !tbaa !766
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  store ptr %i.ct, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.ab, align 8, !tbaa !758
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.ab, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4: ; preds = %bb.g, %bb.f
  %i.df = load ptr, ptr %10, align 8, !tbaa !1794 ; 3 uses
  %.not.i98.jt4 = icmp eq ptr %i.df, %i.ap
  %i.dg = icmp eq ptr %i.df, null
  %or.cond.i.jt4 = or i1 %.not.i98.jt4, %i.dg
  br i1 %or.cond.i.jt4, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4, label %bb.h

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.dh = load ptr, ptr %10, align 8, !tbaa !1794 ; 3 uses
  %.not.i98.jt1 = icmp eq ptr %i.dh, %i.ap
  %i.di = icmp eq ptr %i.dh, null
  %or.cond.i.jt1 = or i1 %.not.i98.jt1, %i.di
  br i1 %or.cond.i.jt1, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @_ZdaPv(ptr noundef nonnull %i.df) #26
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #26
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1

_ZN5clang14TypeLocBuilderD2Ev.exit.jt4:           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !796
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dj = load ptr, ptr %8, align 8, !tbaa !766   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.al
  br i1 %i.dk, label %bb.l, label %bb.j

_ZN5clang14TypeLocBuilderD2Ev.exit.jt1:           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !796
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dl = load ptr, ptr %8, align 8, !tbaa !766   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.al
  br i1 %i.dm, label %bb.m, label %bb.k

bb.j:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @free(ptr noundef %i.dj) #25
  br label %bb.l

bb.k:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @free(ptr noundef %i.dl) #25
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.loopexit

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.ag, ptr %11, align 8, !tbaa !1794
  store i64 32, ptr %i.ah, align 8, !tbaa !1795
  store i64 32, ptr %i.ai, align 8, !tbaa !1796
  store i32 0, ptr %i.aj, align 8, !tbaa !1797
  store i8 0, ptr %i.ak, align 4, !tbaa !1798
  %i.dn = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #25
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = load i64, ptr %i.ah, align 8, !tbaa !1795
  %i.dq = icmp ult i64 %i.dp, %i.do
  br i1 %i.dq, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit107

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %11, i64 noundef %i.do) #25
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit107

_ZN5clang14TypeLocBuilder7reserveEm.exit107:      ; preds = %bb.n, %bb.o
  %i.dr = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %11, ptr %i.az, ptr nonnull %i.ay) ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  br i1 %i.ds, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit112.jt1, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit107
  %i.dt = icmp eq i64 %i.dr, %.sroa.0.0.copyload.i
  br i1 %i.dt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.du = load i32, ptr %i.ab, align 8, !tbaa !758 ; 2 uses
  %i.dv = load i32, ptr %i.ac, align 4, !tbaa !767
  %.not.i111 = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i111, label %bb.s, label %bb.r, !prof !768

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ax)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit112.jt4

bb.s:                                             ; preds = %bb.q
  %i.dw = zext i32 %i.du to i64
  %i.dx = load ptr, ptr %7, align 8, !tbaa !766
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %i.ax, ptr %i.dy, align 1
end_hunk_2
begin_hunk_3_@"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE33TransformUnaryExprOrTypeTraitExprEPNS_24UnaryExprOrTypeTraitExprE":bb.a
bb.c:                                             ; preds = %bb.b
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1865 ; 2 uses
  %i.g = getelementptr i8, ptr %.val40, i64 13800
  %.val40.val = load i32, ptr %i.g, align 4, !tbaa !861
  %.not64 = icmp eq i32 %.val40.val, 0
  %i.h = icmp eq ptr %i.e, %i.f
  %or.cond = and i1 %i.h, %.not64
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %1 to i64
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 8, !tbaa !796
  %i.k = load i24, ptr %1, align 8
  %i.l = lshr i24 %i.k, 19
  %i.m = and i24 %i.l, 15
  %i.n = zext nneg i24 %i.m to i32
  %i.o = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  %i.p = tail call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, ptr noundef nonnull %i.f, i32 %.sroa.0.0.copyload.i, i32 noundef %i.n, i64 %i.o) #25
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextENS0_24ReuseLambdaContextDecl_tENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, i32 noundef 0, i32 noundef 0, i32 noundef 4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !1179
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !755  ; 6 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 511
  %.not = icmp eq i16 %i.u, 20
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1896 ; 3 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 511
  %i.z = icmp eq i16 %i.y, 71
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aa = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.w, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !2990 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.aa, 1
  br i1 %spec.select.i, label %bb.i, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit"

bb.i:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1865 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val.i, i64 13800
  %.val.val.i = load i32, ptr %i.ab, align 4, !tbaa !861
  %i.ac = icmp eq i32 %.val.val.i, 0
  %i.ad = and i64 %i.aa, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = icmp eq ptr %i.w, %i.ae
  %or.cond61 = and i1 %i.af, %i.ac
  br i1 %or.cond61, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = ptrtoint ptr %i.s to i64
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit"

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.0.0.copyload.i48 = load i32, ptr %i.ah, align 8, !tbaa !796
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.sroa.0.0.copyload.i47 = load i32, ptr %i.ai, align 4, !tbaa !796
  %i.aj = call i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %.sroa.0.0.copyload.i48, i32 %.sroa.0.0.copyload.i47, ptr noundef %i.ae) #25
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit"

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s)
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit": ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  %storemerge = phi i64 [ %i.ak, %bb.l ], [ %i.aj, %bb.k ], [ %i.ag, %bb.j ], [ %i.aa, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !1179 ; 2 uses
  %.not37 = icmp eq ptr %i.al, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit"
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.am, align 8, !tbaa !796
  %i.an = load i24, ptr %1, align 8
  %i.ao = lshr i24 %i.an, 19
  %i.ap = and i24 %i.ao, 15
  %i.aq = zext nneg i24 %i.ap to i32
  %i.ar = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  %.val41 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.as = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.al, i32 %.sroa.0.0.copyload.i45, i32 noundef %i.aq, i64 %i.ar) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.n:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit"
  %i.at = icmp eq i64 %storemerge, 1
  br i1 %i.at, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 2 uses
  %i.au = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.au, align 4, !tbaa !861
  %.not63 = icmp eq i32 %.val.val, 0
  %i.av = and i64 %storemerge, -2
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  br i1 %.not63, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !755
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.az = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

._crit_edge:                                      ; preds = %bb.o, %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.ba, align 8, !tbaa !796
  %i.bb = load i24, ptr %1, align 8
  %i.bc = lshr i24 %i.bb, 19
  %i.bd = and i24 %i.bc, 15
  %i.be = zext nneg i24 %i.bd to i32
  %i.bf = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %i.aw, i32 %.sroa.0.0.copyload.i46, i32 noundef %i.be) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %._crit_edge, %bb.q, %bb.m
  %.sroa.052.0 = phi i64 [ %i.as, %bb.m ], [ %i.bf, %._crit_edge ], [ %i.az, %bb.q ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.q) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.d, %bb.e, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.sroa.052.1 = phi i64 [ %.sroa.052.0, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.i, %bb.d ], [ %i.p, %bb.e ], [ 1, %bb.b ]
  ret i64 %.sroa.052.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE22TransformTypeTraitExprEPNS_13TypeTraitExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1677", align 8 ; 14 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  %4 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.1531", align 8 ; 8 uses
  %6 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !766
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !758
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !767
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !755  ; 2 uses
  %.not217 = icmp eq i32 %i.e, 0
  br i1 %.not217, label %.thread212, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.u = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.thread212, label %bb.c, !llvm.loop !2991

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0220 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.b ] ; 3 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = lshr i32 %i.v, 27
  %.lobit.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = xor i32 %.lobit.i.i.i.i.i.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1179 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !755 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.d

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !808
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.g, ptr %3, align 8, !tbaa !1794
  store i64 32, ptr %i.h, align 8, !tbaa !1795
  store i64 32, ptr %i.i, align 8, !tbaa !1796
  store i32 0, ptr %i.j, align 8, !tbaa !1797
  store i8 0, ptr %i.k, align 4, !tbaa !1798
  %i.aj = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #25
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !1795
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.ak) #25
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.d, %bb.e
  %i.an = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr %i.ad, ptr nonnull %i.ac) ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.sroa.0.0.copyload.i79 = load i64, ptr %i.ab, align 8, !tbaa !755
  %i.ap = icmp eq i64 %i.an, %.sroa.0.0.copyload.i79
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !758 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !767
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !768

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !766
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.ab, ptr %i.au, align 1
  %i.av = load i32, ptr %i.b, align 8, !tbaa !758
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !1795
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !1796
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %i.an, i32 noundef %i.bd) #25 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !1794
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !1796
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !758 ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !767
  %.not.i81 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i81, label %bb.l, label %bb.k, !prof !768

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %2, align 8, !tbaa !766
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.be, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !758
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.065 = phi i32 [ 4, %bb.i ], [ 1, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ 4, %bb.h ], [ 4, %bb.k ], [ 4, %bb.l ]
  %.2 = phi i1 [ %.0220, %bb.i ], [ %.0220, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ %.0220, %bb.h ], [ true, %bb.k ], [ true, %bb.l ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1794  ; 3 uses
  %.not.i83 = icmp eq ptr %i.bq, %i.g
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i = or i1 %.not.i83, %i.br
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #26
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.v

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 16, !tbaa !755 ; 2 uses
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %i.bv = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #25
  %i.bw = icmp ne i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = udiv i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = mul i64 %i.cb, %i.bz
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  store ptr %i.ce, ptr %4, align 8
  store ptr %i.cd, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.m, ptr %5, align 8, !tbaa !766
  store i32 0, ptr %i.n, align 8, !tbaa !758
  store i32 2, ptr %i.o, align 4, !tbaa !767
  %i.cf = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_7TypeLocERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cf, ptr %i.ce, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !755
  %i.ci = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25 ; 0 uses
  %i.cj = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25 ; 0 uses
  %.val72 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.ck = getelementptr inbounds nuw i8, ptr %.val72, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !796
  store i32 0, ptr %i.ck, align 4, !tbaa !796
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %i.p, ptr %6, align 8, !tbaa !1794
  store i64 32, ptr %i.q, align 8, !tbaa !1795
  store i64 32, ptr %i.r, align 8, !tbaa !1796
  store i32 0, ptr %i.s, align 8, !tbaa !1797
  store i8 0, ptr %i.t, align 4, !tbaa !1798
  %.sroa.0.0.copyload.i88 = load i64, ptr %i.ab, align 8, !tbaa !755
  %i.cl = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i88) #25
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !1795
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit91

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 noundef %i.cm) #25
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit91

_ZN5clang14TypeLocBuilder7reserveEm.exit91:       ; preds = %bb.n, %bb.o
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !759
  %.sroa.235.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !759
  %i.cp = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %6, ptr %.sroa.034.0.copyload, ptr %.sroa.235.0.copyload) ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  br i1 %i.cq, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit91
  %i.cr = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  %i.cs = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  %.sroa.2.0.insert.ext.i93 = zext i32 %i.cs to i64
  %.sroa.2.0.insert.shift.i94 = shl nuw i64 %.sroa.2.0.insert.ext.i93, 32
  %.sroa.0.0.insert.ext.i95 = zext i32 %i.cr to i64
  %.sroa.0.0.insert.insert.i96 = or disjoint i64 %.sroa.2.0.insert.shift.i94, %.sroa.0.0.insert.ext.i95
  %.sroa.0.0.copyload.i97 = load i32, ptr %i.ac, align 8, !tbaa !796
  %.val75 = load ptr, ptr %0, align 8, !tbaa !1865
  %i.ct = call i64 @_ZN5clang4Sema18CheckPackExpansionENS_8QualTypeENS_11SourceRangeENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val75, i64 %i.cp, i64 %.sroa.0.0.insert.insert.i96, i32 %.sroa.0.0.copyload.i97, i32 %i.ch) #25 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  br i1 %i.cu, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 %i.ct, i64 noundef 4, i32 noundef 4) #25
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  %.sroa.0.0.copyload.i99 = load i32, ptr %i.ac, align 8, !tbaa !796
  store i32 %.sroa.0.0.copyload.i99, ptr %i.cw, align 4, !tbaa !796
  %i.cx = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.da = load i64, ptr %i.q, align 8, !tbaa !1795
  %i.db = load i64, ptr %i.r, align 8, !tbaa !1796
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cz, i64 %i.ct, i32 noundef %i.dd) #25 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %6, align 8, !tbaa !1794
  %i.dh = load i64, ptr %i.r, align 8, !tbaa !1796
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.di, i64 %i.dc, i1 false)
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !758 ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !767
  %.not.i100 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i100, label %bb.s, label %bb.r, !prof !768

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.de)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101

bb.s:                                             ; preds = %bb.q
  %i.dl = zext i32 %i.dj to i64
end_hunk_3
begin_hunk_4_@"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE35TransformCXXRewrittenBinaryOperatorEPNS_26CXXRewrittenBinaryOperatorE":bb.a
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1: ; preds = %.loopexit.i.i.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1
  %.pre-phi.i.1 = phi i64 [ %.pre.i.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.eb, %.loopexit.i.i.i.1 ]
  %.lcssa.sink.i.i.i.1 = phi ptr [ %i.dp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.1 ], [ %i.ec, %.loopexit.i.i.i.1 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.pre-phi.i.1
  %.not.i43.1 = icmp eq ptr %.lcssa.sink.i.i.i.1, %i.ed
  br i1 %.not.i43.1, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit.1", label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %i.ee = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1875
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit.1"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit.1": ; preds = %bb.q, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %.0.i.1 = phi ptr [ %i.ef, %bb.q ], [ %i.cv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1 ] ; 3 uses
  %.not39.1 = icmp eq ptr %.0.i.1, null
  br i1 %.not39.1, label %.critedge, label %bb.r

bb.r:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit.1"
  %i.eg = ptrtoint ptr %.0.i.1 to i64
  %i.eh = or i64 %i.eg, 3
  %.not40.1 = icmp ne ptr %.0.i.1, %i.cv
  %spec.select.1 = select i1 %.not40.1, i1 true, i1 %.4.ph
  %i.ei = zext nneg i32 %i.ca to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ei
  store i64 %i.eh, ptr %i.ej, align 8
  %i.ek = add nuw nsw i32 %i.ca, 1
  store i32 %i.ek, ptr %i.k, align 8, !tbaa !758
  br label %.critedge.thread59

.critedge.thread59:                               ; preds = %bb.r, %bb.m, %bb.l, %bb.k
  %.4.ph.1 = phi i1 [ %spec.select.1, %bb.r ], [ %.4.ph, %bb.k ], [ %.4.ph, %bb.l ], [ %.4.ph, %bb.m ]
  %.val = load ptr, ptr %0, align 8, !tbaa !1865  ; 3 uses
  %i.el = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.el, align 4, !tbaa !861
  %i.em = icmp ne i32 %.val.val, 0
  %or.cond = select i1 %i.em, i1 true, i1 %.4.ph.1
  %.pre = and i64 %i.d, -2
  %.pre72 = inttoptr i64 %.pre to ptr             ; 2 uses
  br i1 %or.cond, label %.critedge.thread59._crit_edge, label %bb.s

bb.s:                                             ; preds = %.critedge.thread59
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !3314 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %.pre72
  br i1 %i.eo, label %bb.t, label %.critedge.thread59._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ep = and i64 %i.h, -2
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !3315 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eq
  br i1 %i.es, label %bb.u, label %.critedge.thread59._crit_edge

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %i.en, ptr %i.a, align 16, !tbaa !770
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.er, ptr %i.et, align 8, !tbaa !770
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull %1, i1 noundef zeroext false, ptr nonnull %i.a, i64 2) #25
  %i.eu = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

.critedge.thread59._crit_edge:                    ; preds = %.critedge.thread59, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) #31
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !3318
  %i.ex = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ey = load i32, ptr %3, align 8, !tbaa !3321
  %i.ez = and i64 %i.h, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ex, i32 noundef %i.ey, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.pre72, ptr noundef %i.fa, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #25
  br label %.critedge

.critedge:                                        ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit", %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit.1", %.critedge.thread59._crit_edge, %bb.u
  %.sroa.053.3 = phi i64 [ %i.fb, %.critedge.thread59._crit_edge ], [ %i.eu, %bb.u ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit.1" ], [ 1, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit" ]
  %i.fc = load ptr, ptr %4, align 8, !tbaa !766   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.j
  br i1 %i.fd, label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.fc) #25
  br label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit

_ZN5clang13UnresolvedSetILj2EED2Ev.exit:          ; preds = %.critedge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, %bb.b, %bb.a
  %.sroa.053.5 = phi i64 [ 1, %bb.a ], [ %.sroa.053.3, %_ZN5clang13UnresolvedSetILj2EED2Ev.exit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i64 %.sroa.053.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE23TransformCXXReflectExprEPNS_14CXXReflectExprE"() unnamed_addr #20 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE32TransformCXXPseudoDestructorExprEPNS_23CXXPseudoDestructorExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %9 = alloca %"class.clang::OpaquePtr.1744", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.clang::CXXScopeSpec", align 8 ; 12 uses
  %11 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %12 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3330
  %i.e = tail call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformExprEPNS_4ExprE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr null, ptr %9, align 8, !tbaa !1924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 0, ptr %i.b, align 1, !tbaa !860
  %i.g = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.h = and i64 %i.e, -2
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 4, !tbaa !796
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  %i.n = select i1 %i.m, i16 37, i16 26
  %i.o = call i64 @_ZN5clang4Sema28ActOnStartCXXMemberReferenceEPNS_5ScopeEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERNS_9OpaquePtrINS_8QualTypeEEERb(ptr noundef nonnull align 8 dereferenceable(18640) %i.g, ptr noundef null, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i16 noundef zeroext %i.n, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #25 ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %9, align 8, !tbaa !1924   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.s, align 8, !tbaa !71 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !759 ; 2 uses
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i48, 0
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call fastcc { i64, ptr } @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i48, ptr %.sroa.2.0.copyload.i, i64 %i.r, ptr noundef null) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.t, 1
  %.not93 = icmp eq i64 %i.u, 0
  br i1 %.not93, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.074.0 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %.sroa.8.0 = phi ptr [ %i.v, %bb.d ], [ %.sroa.2.0.copyload.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 %.sroa.074.0, ptr %.sroa.8.0) #25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8 ; 3 uses
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.y = icmp ne i64 %i.x, 0                      ; 2 uses
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %.not94 = icmp eq i64 %i.z, 0
  %.not = or i1 %i.y, %.not94
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i103 = load i64, ptr %i.aa, align 8, !tbaa !755 ; 3 uses
  %i.ab = icmp ult i64 %.sroa.0.0.copyload.i.i103, 16
  br i1 %i.ab, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !1794
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 32, ptr %i.ad, align 8, !tbaa !1795
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.ae, align 8, !tbaa !1796
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.af, align 8, !tbaa !1797
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.ag, align 4, !tbaa !1798
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ai = inttoptr i64 %.sroa.0.0.copyload.i.i103 to ptr ; 4 uses
  %i.aj = and i64 %.sroa.0.0.copyload.i.i103, 15
  %.not.i.i114 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i114, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !808
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 16
  switch i8 %i.am, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.h
    i8 20, label %bb.i
  ]

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.an = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !3322
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.ao = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !3322
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.g
  %i.ap = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ai, ptr nonnull %i.ah), !inline_history !3322
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit": ; preds = %bb.h, %bb.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.aq = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.aq, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !1794
  br label %bb.k

bb.j:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"
  %i.ar = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !1795
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !1796
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.at, i64 %.sroa.014.0.i, i32 noundef %i.ax) #25, !inline_history !3323 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %3, align 8, !tbaa !1794  ; 2 uses
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !1796
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.bc, i64 %i.aw, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bd = phi ptr [ %i.ba, %bb.j ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %.0.i = phi ptr [ %i.ay, %bb.j ], [ null, %._crit_edge.i ] ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.bd, %i.ac
  %i.be = icmp eq ptr %i.bd, null
  %or.cond.i.i = or i1 %.not.i.i104, %i.be
  br i1 %or.cond.i.i, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #26, !inline_history !3323
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not45.not = icmp eq ptr %.0.i, null
  br i1 %.not45.not, label %.thread, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread": ; preds = %bb.f, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit"
  %.1.i122 = phi ptr [ %.0.i, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit" ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %.1.i122) #25
  %.sroa.065.0.copyload66 = load i64, ptr %11, align 8
  %.sroa.7.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.7.0.copyload69 = load i32, ptr %.sroa.7.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.q

bb.m:                                             ; preds = %bb.e
  %i.bf = icmp ult ptr %i.q, inttoptr (i64 16 to ptr)
  br i1 %i.bf, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = and i64 %i.r, -16
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !808
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 17
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = and i16 %i.bk, 4
  %.not95 = icmp eq i16 %i.bl, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bm, align 8, !tbaa !796
  %i.bn = or i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.bo = select i1 %i.y, i64 %i.bn, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bp = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i56 = load i32, ptr %i.bq, align 8, !tbaa !796
  %.sroa.09.0.copyload = load ptr, ptr %9, align 8, !tbaa !759
  %i.br = call ptr @_ZN5clang4Sema17getDestructorNameERKNS_14IdentifierInfoENS_14SourceLocationEPNS_5ScopeERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i32 %.sroa.0.0.copyload.i.i56, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #25 ; 2 uses
  %.not96 = icmp eq ptr %i.br, null
  br i1 %.not96, label %.thread, label %.thread89

.thread89:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bs = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.bv = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr nonnull %i.br, ptr noundef null) #25
  %.sroa.0.0.copyload.i.i57 = load i32, ptr %i.bq, align 8, !tbaa !796
  %i.bw = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bu, i64 %i.bv, i32 %.sroa.0.0.copyload.i.i57) #25
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef %i.bw) #25
  %.sroa.065.0.copyload67 = load i64, ptr %12, align 8
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.7.0.copyload71 = load i32, ptr %.sroa.7.0..sroa_idx70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.q

bb.q:                                             ; preds = %.thread89, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread", %bb.o
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.copyload71, %.thread89 ], [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %.sroa.7.0.copyload69, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread" ] ; 2 uses
  %.sroa.065.2 = phi i64 [ %.sroa.065.0.copyload67, %.thread89 ], [ %i.bo, %bb.o ], [ %.sroa.065.0.copyload66, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread" ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3331 ; 4 uses
  %.not46 = icmp eq ptr %i.by, null
  br i1 %.not46, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i105 = load i64, ptr %i.by, align 8, !tbaa !755 ; 3 uses
  %i.bz = icmp ult i64 %.sroa.0.0.copyload.i.i105, 16
  br i1 %i.bz, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ca, ptr %2, align 8, !tbaa !1794
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 32, ptr %i.cb, align 8, !tbaa !1795
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 32, ptr %i.cc, align 8, !tbaa !1796
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.cd, align 8, !tbaa !1797
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i8 0, ptr %i.ce, align 4, !tbaa !1798
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cg = inttoptr i64 %.sroa.0.0.copyload.i.i105 to ptr ; 4 uses
  %i.ch = and i64 %.sroa.0.0.copyload.i.i105, 15
  %.not.i.i115 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i115, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118:  ; preds = %bb.s
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !808
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i8, ptr %i.cj, align 16
  switch i8 %i.ck, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116 [
    i8 50, label %bb.t
    i8 20, label %bb.u
  ]

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118
  %i.cl = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !3322
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119"

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118
  %i.cm = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !3322
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119"

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i118, %bb.s
  %i.cn = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cg, ptr nonnull %i.cf), !inline_history !3322
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119": ; preds = %bb.t, %bb.u, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116
  %.sroa.014.0.i117 = phi i64 [ %i.cn, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i116 ], [ %i.cl, %bb.t ], [ %i.cm, %bb.u ] ; 2 uses
  %i.co = icmp ult i64 %.sroa.014.0.i117, 16
  br i1 %i.co, label %._crit_edge.i111, label %bb.v

._crit_edge.i111:                                 ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119"
  %.pre.i112 = load ptr, ptr %2, align 8, !tbaa !1794
  br label %bb.w

bb.v:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit119"
  %i.cp = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.cs = load i64, ptr %i.cb, align 8, !tbaa !1795
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !1796
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cr, i64 %.sroa.014.0.i117, i32 noundef %i.cv) #25, !inline_history !3323 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %2, align 8, !tbaa !1794  ; 2 uses
  %i.cz = load i64, ptr %i.cc, align 8, !tbaa !1796
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr align 1 %i.da, i64 %i.cu, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i111
  %i.db = phi ptr [ %i.cy, %bb.v ], [ %.pre.i112, %._crit_edge.i111 ] ; 3 uses
  %.0.i106 = phi ptr [ %i.cw, %bb.v ], [ null, %._crit_edge.i111 ] ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.db, %i.ca
  %i.dc = icmp eq ptr %i.db, null
  %or.cond.i.i108 = or i1 %.not.i.i107, %i.dc
  br i1 %or.cond.i.i108, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.db) #26, !inline_history !3323
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113": ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not47 = icmp eq ptr %.0.i106, null
  br i1 %.not47, label %.thread, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread": ; preds = %bb.r, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113", %bb.q
  %.042 = phi ptr [ %.0.i106, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113" ], [ null, %bb.q ], [ %i.by, %bb.r ] ; 7 uses
  %i.dd = and i64 %i.o, -2
  %i.de = inttoptr i64 %i.dd to ptr               ; 4 uses
  %.sroa.0.0.copyload.i58 = load i32, ptr %i.j, align 4, !tbaa !796 ; 2 uses
  %i.df = load i8, ptr %i.k, align 8
  %i.dg = trunc i8 %i.df to i1                    ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.dh, align 8, !tbaa !796 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.di, align 4, !tbaa !796
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.065.2, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.7.2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.dj, align 8, !tbaa !755
  %i.dk = and i64 %.sroa.0.0.copyload.i.i61, -16
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !755
  %i.do = load i24, ptr %i.de, align 8
  %i.dp = and i24 %i.do, 65536
  %.not70.i = icmp eq i24 %i.dp, 0
  br i1 %.not70.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread"
  %i.dq = and i64 %.sroa.065.2, 4
  %.not.i.i.i.i.i.i63 = icmp eq i64 %i.dq, 0      ; 2 uses
  %i.dr = and i64 %.sroa.065.2, -5                ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %.not71.i = icmp eq i64 %i.dr, 0
  %.not.i = or i1 %.not.i.i.i.i.i.i63, %.not71.i
  br i1 %.not.i, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.dt = and i64 %i.dn, -16
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !808 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dw, align 16            ; 2 uses
  br i1 %i.dg, label %.critedge45.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = icmp eq i8 %i.dx, 49
  br i1 %i.dy, label %.critedge2.i, label %.critedge.i

.critedge45.i:                                    ; preds = %bb.z
  %i.dz = icmp eq i8 %i.dx, 40
  br i1 %i.dz, label %bb.ab, label %.critedge2.i

bb.ab:                                            ; preds = %.critedge45.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %.sroa.0.0.copyload.i49.i = load i64, ptr %i.ea, align 16, !tbaa !755
  %i.eb = and i64 %.sroa.0.0.copyload.i49.i, -16
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !808
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 8, !tbaa !755
  %i.ef = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !808 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i8, ptr %i.ei, align 16
  %i.ek = icmp ne i8 %i.ej, 49
  %.not4272.i = icmp eq ptr %i.eh, null
  %.not42.i = or i1 %.not4272.i, %i.ek
  br i1 %.not42.i, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %bb.ab, %bb.aa, %bb.y, %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit113.thread"
  %i.el = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.em = select i1 %i.dg, i16 37, i16 26
  %i.en = call i64 @_ZN5clang4Sema25BuildPseudoDestructorExprEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERKNS_12CXXScopeSpecEPNS_14TypeSourceInfoES3_S3_NS_27PseudoDestructorTypeStorageE(ptr noundef nonnull align 8 dereferenceable(18640) %i.el, ptr noundef nonnull %i.de, i32 %.sroa.0.0.copyload.i58, i16 noundef zeroext %i.em, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %.042, i32 %.sroa.0.0.copyload.i59, i32 %.sroa.0.0.copyload.i60, ptr noundef nonnull byval(%"class.clang::PseudoDestructorTypeStorage") align 8 %8) #25
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE30RebuildCXXPseudoDestructorExprEPNS_4ExprES2_bRNS_12CXXScopeSpecEPNS_14TypeSourceInfoES2_S2_NS_27PseudoDestructorTypeStorageE.exit"

.critedge2.i:                                     ; preds = %bb.ab, %.critedge45.i, %bb.aa
  %.0.i.i.i.i.i51.i = select i1 %.not.i.i.i.i.i.i63, ptr %i.ds, ptr null
  %i.eo = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 232
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 17800
  %.sroa.0.0.copyload.i52.i = load i64, ptr %i.ds, align 8, !tbaa !755 ; 2 uses
  %i.es = and i64 %.sroa.0.0.copyload.i52.i, -16
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !755
  %i.ew = and i64 %.sroa.0.0.copyload.i52.i, 7
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = call i64 @_ZN5clang20DeclarationNameTable20getCXXDestructorNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824) %i.er, i64 %i.ex) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 %i.ey, ptr %4, align 8, !tbaa !71
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.7.2, ptr %i.ez, align 8, !tbaa !796
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i64 %i.ey) #25
  store ptr %.0.i.i.i.i.i51.i, ptr %i.fa, align 8, !tbaa !755
  %.not43.i = icmp eq ptr %.042, null
  br i1 %.not43.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.critedge2.i
  %.sroa.0.0.copyload.i54.i = load i64, ptr %.042, align 8, !tbaa !755 ; 2 uses
  %i.fb = and i64 %.sroa.0.0.copyload.i54.i, -16
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !755
  %i.ff = and i64 %i.fe, -16
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !808
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i8, ptr %i.fi, align 16
  %i.fk = add i8 %i.fj, -47
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fk, 3
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.val47.i = load ptr, ptr %0, align 8, !tbaa !1865
  %i.fl = getelementptr inbounds nuw i8, ptr %.val47.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.fm = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.fn = inttoptr i64 %.sroa.0.0.copyload.i54.i to ptr
  store ptr %i.fn, ptr %6, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.fm, ptr %i.fo, align 8
  %i.fp = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i32 %i.fp, i32 noundef 3796) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.sroa.0.0.copyload.i58.i = load i64, ptr %.042, align 8, !tbaa !755
  store i64 %.sroa.0.0.copyload.i58.i, ptr %7, align 8
  %i.fq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.val46.i = load ptr, ptr %0, align 8, !tbaa !1865
  %i.fr = getelementptr inbounds nuw i8, ptr %.val46.i, i64 216
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1128, !nonnull !67, !align !68
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = lshr i32 %i.fu, 12
  %i.fw = and i32 %i.fv, 1
  store i32 %i.fw, ptr %i.a, align 4, !tbaa !796
end_hunk_4
begin_hunk_5_@"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i92, %bb.s, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i102, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i113
  %.sroa.6.0.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i92 ], [ %.0.copyload.i14.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i102 ], [ %.0.copyload.i.i.i93, %bb.s ], [ %.0.copyload.i16.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i113 ]
  call void @_ZN5clang12CXXScopeSpec6ExtendERNS_10ASTContextEPNS_17NamespaceBaseDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %.0.i, i32 %.sroa.0.0.i.i68.ph, i32 %.sroa.6.0.i.i) #25
  br label %bb.bg

bb.v:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.ei = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #25
  call void @_ZN5clang12CXXScopeSpec10MakeGlobalERNS_10ASTContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.eh, i32 %i.ei) #25
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit: ; preds = %bb.h
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !1872, !noalias !3524 ; 3 uses
  %i.ek = load ptr, ptr %i.z, align 8, !tbaa !1873, !noalias !3524 ; 2 uses
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !1803, !noalias !3524 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i118, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.en, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !796, !noalias !3525
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i124, label %.loopexit.i.i.i118, !prof !1764

.lr.ph.i.i.i.i.i124:                              ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.fg, %bb.x ], [ %i.et, %bb.w ]
  %.017.i.i.i.i.i125 = phi i32 [ %i.ff, %bb.x ], [ %i.es, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !986, !noalias !3525
  %i.fd = icmp eq ptr %i.fc, %i.ap
  br i1 %i.fd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126, label %bb.x, !prof !768

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i124
  %i.fe = add nuw i32 %.017.i.i.i.i.i125, 1
  %i.ff = and i32 %i.fe, %i.en                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !796, !noalias !3525
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i124, label %.loopexit.i.i.i118, !prof !1765

.loopexit.i.i.i118:                               ; preds = %bb.x, %bb.w, %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.fn = zext i32 %i.el to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126: ; preds = %.lr.ph.i.i.i.i.i124
  %.pre.i127 = zext i32 %i.el to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126, %.loopexit.i.i.i118
  %.pre-phi.i120 = phi i64 [ %.pre.i127, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126 ], [ %i.fn, %.loopexit.i.i.i118 ]
  %.lcssa.sink.i.i.i121 = phi ptr [ %i.fb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126 ], [ %i.fo, %.loopexit.i.i.i118 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.pre-phi.i120
  %.not.i122 = icmp eq ptr %.lcssa.sink.i.i.i121, %i.fp
  br i1 %.not.i122, label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit128", label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i121, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1875
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit128"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit128": ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119, %bb.y
  %.0.i123 = phi ptr [ %i.fr, %bb.y ], [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119 ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.fv = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #25
  %i.fw = load i64, ptr %12, align 8, !tbaa !1194 ; 5 uses
  %i.fx = icmp ugt i64 %i.fw, 7
  br i1 %i.fx, label %bb.z, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129

bb.z:                                             ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit128"
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148
    i32 2, label %.lr.ph.i.i.i134.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129: ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformDeclES2_PNS_4DeclE.exit128"
  %i.gb = icmp samesign ult i64 %i.fw, 2
  br i1 %i.gb, label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !1197
  %.0.copyload.i.i.i130 = load i32, ptr %i.gc, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148: ; preds = %bb.z
  %i.gd = and i64 %i.fw, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.3.0.copyload.i.i.i150 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i149, align 8, !tbaa !71 ; 2 uses
  %.not8.i.i.i151 = icmp eq i64 %.sroa.3.0.copyload.i.i.i150, 0
  br i1 %.not8.i.i.i151, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140, label %.lr.ph.i.i.i134.preheader

.lr.ph.i.i.i134.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148, %bb.z
  %storemerge9.i.i.i136.ph = phi i64 [ 2, %bb.z ], [ %.sroa.3.0.copyload.i.i.i150, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148 ]
  br label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %.lr.ph.i.i.i134.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142
  %.010.i.i.i135 = phi i32 [ %i.gi, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142 ], [ 0, %.lr.ph.i.i.i134.preheader ]
  %storemerge9.i.i.i136 = phi i64 [ %.sroa.3.0.i.i.i.i143, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142 ], [ %storemerge9.i.i.i136.ph, %.lr.ph.i.i.i134.preheader ] ; 4 uses
  %i.gf = icmp ugt i64 %storemerge9.i.i.i136, 7   ; 2 uses
  %i.gg = and i64 %storemerge9.i.i.i136, 6
  %i.gh = icmp eq i64 %i.gg, 0
  %spec.select.i.i.i.i137 = select i1 %i.gh, i32 12, i32 8
  %.0.i.i.i.i138 = select i1 %i.gf, i32 %spec.select.i.i.i.i137, i32 4
  %i.gi = add i32 %.0.i.i.i.i138, %.010.i.i.i135  ; 2 uses
  br i1 %i.gf, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139

bb.ab:                                            ; preds = %.lr.ph.i.i.i134
  %i.gj = trunc i64 %storemerge9.i.i.i136 to i32
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gk, 3
  switch i32 %i.gl, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i64 %storemerge9.i.i.i136, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i145 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.3.0.copyload.i.i.i.i146 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i145, align 8, !tbaa !71
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i143 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i146, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i144 = icmp eq i64 %.sroa.3.0.i.i.i.i143, 0
  br i1 %.not.i.i.i144, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139, label %.lr.ph.i.i.i134, !llvm.loop !14

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142, %bb.ab, %bb.ab, %.lr.ph.i.i.i134
  %i.go = add i32 %i.gi, 4
  %i.gp = zext i32 %i.go to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148, %bb.z
  %i.gq = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148 ], [ 4, %bb.z ], [ %i.gp, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139 ]
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !1197
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.0.copyload.i14.i.i141 = load i32, ptr %i.gs, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152: ; preds = %bb.z
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !1197
  %.0.copyload.i15.i.i153 = load ptr, ptr %i.gt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.gu = and i64 %i.fw, -8
  %i.gv = inttoptr i64 %i.gu to ptr
  store ptr %i.gv, ptr %7, align 8, !tbaa !1199
  store ptr %.0.copyload.i15.i.i153, ptr %i.ab, align 8, !tbaa !1200
  %i.gw = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25 ; 0 uses
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !1197
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i16.i.i154 = load i32, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152
  %.sroa.6.0.i.i131 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129 ], [ %.0.copyload.i14.i.i141, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140 ], [ %.0.copyload.i.i.i130, %bb.aa ], [ %.0.copyload.i16.i.i154, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152 ]
  call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.fu, ptr noundef %.0.i123, i32 %i.fv, i32 %.sroa.6.0.i.i131) #25
  br label %bb.bg

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.gz = and i64 %.sroa.0.0.copyload.i, -8       ; 3 uses
  %i.ha = inttoptr i64 %i.gz to ptr               ; 9 uses
  %.0.copyload.i.i = load ptr, ptr %.sroa.2.0.copyload.i, align 1 ; 7 uses
  store ptr %i.ha, ptr %13, align 8
  store ptr %.0.copyload.i.i, ptr %i.r, align 8
  %i.hb = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i157 = icmp eq i64 %i.hb, 0             ; 2 uses
  br i1 %.not.i.i157, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.am

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !808
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i8, ptr %i.hd, align 16
  %i.hf = icmp eq i8 %i.he, 20
  br i1 %i.hf, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hg, align 16, !tbaa !71 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2023 ; 2 uses
  %.not285 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not285, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = call fastcc { i64, ptr } @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i.i, ptr %i.hi, i64 %3, ptr noundef %4) ; 2 uses
  %i.hk = extractvalue { i64, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { i64, ptr } %i.hj, 1
  %.not286 = icmp eq i64 %i.hk, 0
  br i1 %.not286, label %.critedge53, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0 = phi ptr [ %i.hi, %bb.ad ], [ %i.hl, %bb.ae ]
  %.sroa.0244.0 = phi i64 [ 0, %bb.ad ], [ %i.hk, %bb.ae ]
  %.1 = phi ptr [ %4, %bb.ad ], [ null, %bb.ae ]
  %.sroa.043.1 = phi i64 [ %3, %bb.ad ], [ 0, %bb.ae ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %11, i64 %.sroa.0244.0, ptr %.sroa.8.0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2025
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 16
  %.sroa.0.0.copyload.i162 = load i32, ptr %i.ho, align 8, !tbaa !796
  %i.hp = load i64, ptr %12, align 8, !tbaa !1194 ; 5 uses
  %i.hq = icmp ugt i64 %i.hp, 7
  br i1 %i.hq, label %bb.ag, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163

bb.ag:                                            ; preds = %bb.af
  %i.hr = trunc i64 %i.hp to i32
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = and i32 %i.hs, 3
  switch i32 %i.ht, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182
    i32 2, label %.lr.ph.i.i.i168.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163: ; preds = %bb.af
  %i.hu = icmp samesign ult i64 %i.hp, 2
  br i1 %i.hu, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !1197
  %.0.copyload.i.i.i164 = load i32, ptr %i.hv, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182: ; preds = %bb.ag
  %i.hw = and i64 %i.hp, -8
  %i.hx = inttoptr i64 %i.hw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i183 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.3.0.copyload.i.i.i184 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i183, align 8, !tbaa !71 ; 2 uses
  %.not8.i.i.i185 = icmp eq i64 %.sroa.3.0.copyload.i.i.i184, 0
  br i1 %.not8.i.i.i185, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174, label %.lr.ph.i.i.i168.preheader

.lr.ph.i.i.i168.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182, %bb.ag
  %storemerge9.i.i.i170.ph = phi i64 [ 2, %bb.ag ], [ %.sroa.3.0.copyload.i.i.i184, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182 ]
  br label %.lr.ph.i.i.i168

.lr.ph.i.i.i168:                                  ; preds = %.lr.ph.i.i.i168.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176
  %.010.i.i.i169 = phi i32 [ %i.ib, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176 ], [ 0, %.lr.ph.i.i.i168.preheader ]
  %storemerge9.i.i.i170 = phi i64 [ %.sroa.3.0.i.i.i.i177, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176 ], [ %storemerge9.i.i.i170.ph, %.lr.ph.i.i.i168.preheader ] ; 4 uses
  %i.hy = icmp ugt i64 %storemerge9.i.i.i170, 7   ; 2 uses
  %i.hz = and i64 %storemerge9.i.i.i170, 6
  %i.ia = icmp eq i64 %i.hz, 0
  %spec.select.i.i.i.i171 = select i1 %i.ia, i32 12, i32 8
  %.0.i.i.i.i172 = select i1 %i.hy, i32 %spec.select.i.i.i.i171, i32 4
  %i.ib = add i32 %.0.i.i.i.i172, %.010.i.i.i169  ; 2 uses
  br i1 %i.hy, label %bb.ai, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173

bb.ai:                                            ; preds = %.lr.ph.i.i.i168
  %i.ic = trunc i64 %storemerge9.i.i.i170 to i32
  %i.id = lshr i32 %i.ic, 1
  %i.ie = and i32 %i.id, 3
  switch i32 %i.ie, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173
    i32 3, label %bb.aj
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = and i64 %storemerge9.i.i.i170, -8
  %i.ig = inttoptr i64 %i.if to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i179 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i.i.i.i180 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i179, align 8, !tbaa !71
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176: ; preds = %bb.aj, %bb.ai
  %.sroa.3.0.i.i.i.i177 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i180, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %.not.i.i.i178 = icmp eq i64 %.sroa.3.0.i.i.i.i177, 0
  br i1 %.not.i.i.i178, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173, label %.lr.ph.i.i.i168, !llvm.loop !14

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176, %bb.ai, %bb.ai, %.lr.ph.i.i.i168
  %i.ih = add i32 %i.ib, 4
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182, %bb.ag
  %i.ij = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182 ], [ 4, %bb.ag ], [ %i.ii, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173 ]
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !1197
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %.0.copyload.i14.i.i175 = load i32, ptr %i.il, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186: ; preds = %bb.ag
  %i.im = load ptr, ptr %i.q, align 8, !tbaa !1197
  %.0.copyload.i15.i.i187 = load ptr, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.in = and i64 %i.hp, -8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %6, align 8, !tbaa !1199
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.copyload.i15.i.i187, ptr %i.ip, align 8, !tbaa !1200
  %i.iq = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #25 ; 0 uses
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !1197
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i16.i.i188 = load i32, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163, %bb.ah, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186
  %.sroa.6.0.i.i165 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163 ], [ %.0.copyload.i14.i.i175, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174 ], [ %.0.copyload.i.i.i164, %bb.ah ], [ %.0.copyload.i16.i.i188, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186 ]
  %i.it = inttoptr i64 %.sroa.043.1 to ptr
  store ptr %i.it, ptr %14, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hn, ptr %i.iu, align 8, !tbaa !3527
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.0.0.copyload.i162, ptr %i.iv, align 8, !tbaa !796
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %.sroa.6.0.i.i165, ptr %i.iw, align 4, !tbaa !796
  %i.ix = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.iy = call noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ix, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %.1, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #25
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189
  %i.iz = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.jc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.jb) #25 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189, %bb.ak
  %.sroa.13.1 = phi ptr [ %i.je, %bb.ak ], [ null, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189 ]
  %.sroa.0260.1 = phi i64 [ %i.jd, %bb.ak ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge53

bb.am:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread262, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store i64 %i.gz, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr %i.s, ptr %16, align 8, !tbaa !1794
  store i64 32, ptr %i.t, align 8, !tbaa !1795
  store i64 32, ptr %i.u, align 8, !tbaa !1796
  store i32 0, ptr %i.v, align 8, !tbaa !1797
  store i8 0, ptr %i.w, align 4, !tbaa !1798
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jf, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not.i.i157, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.an
  %i.jg = load ptr, ptr %i.ha, align 8, !tbaa !808
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i8, ptr %i.jh, align 16
  switch i8 %i.ji, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.ao
    i8 20, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jj = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i64 %3, ptr noundef %4, i1 noundef zeroext true), !inline_history !3518
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jk = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i1 noundef zeroext false, i64 %3, ptr noundef %4), !inline_history !3518
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.an
  %i.jl = call fastcc i64 @"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr %i.ha, ptr %.0.copyload.i.i), !inline_history !3518
  br label %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"

"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit": ; preds = %bb.ao, %bb.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.jl, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.jj, %bb.ao ], [ %i.jk, %bb.ap ] ; 4 uses
  store i64 %.sroa.014.0.i, ptr %15, align 8, !tbaa !755
  %i.jm = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.jm, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %"_ZN5clang13TreeTransformIZZNS_4Sema29InstantiateFunctionDefinitionENS_14SourceLocationEPNS_12FunctionDeclEbbbENK3$_0clEvE30SpecialMemberTypeInfoRebuilderE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit"
  %i.jn = load ptr, ptr %0, align 8, !tbaa !1865, !nonnull !67, !align !68
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 232
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !805, !nonnull !67, !align !68 ; 2 uses
  %i.jq = load i64, ptr %i.t, align 8, !tbaa !1795
  %i.jr = load i64, ptr %i.u, align 8, !tbaa !1796 ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2632 ; 3 uses
  %i.ju = add i64 %i.js, 7
  %i.jv = and i64 %i.ju, -8                       ; 2 uses
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !800 ; 2 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = add i64 %i.jv, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 2640
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !801
  %i.kb = icmp ult i64 %i.jy, %i.ka
  br i1 %i.kb, label %bb.ar, label %bb.as, !prof !768

bb.ar:                                            ; preds = %bb.aq
  %i.kc = inttoptr i64 %i.jy to ptr
  store ptr %i.kc, ptr %i.jt, align 8, !tbaa !800
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.kd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, i64 noundef %i.js, i64 noundef %i.jv, i8 3)
  %.pre.i190 = load i64, ptr %i.u, align 8, !tbaa !1796
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit: ; preds = %bb.ar, %bb.as
  %i.ke = phi i64 [ %i.jr, %bb.ar ], [ %.pre.i190, %bb.as ]
  %.0.i.i.i.i191 = phi ptr [ %i.jw, %bb.ar ], [ %i.kd, %bb.as ] ; 3 uses
  %i.kf = load ptr, ptr %16, align 8, !tbaa !1794
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i191, ptr align 1 %i.kg, i64 %i.js, i1 false)
  %i.kh = inttoptr i64 %.sroa.014.0.i to ptr      ; 2 uses
  store ptr %i.kh, ptr %13, align 8, !tbaa !759
  store ptr %.0.i.i.i.i191, ptr %i.r, align 8, !tbaa !759
  br label %bb.at

bb.at:                                            ; preds = %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit, %bb.am
  %.sroa.2.0.copyload372 = phi ptr [ %.0.i.i.i.i191, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %.0.copyload.i.i, %bb.am ] ; 2 uses
  %.sroa.07.0.copyload370 = phi ptr [ %i.kh, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.ha, %bb.am ] ; 2 uses
  %.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.014.0.i, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.gz, %bb.am ]
  %i.ki = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !808 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 17
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 4
  %.not282 = icmp eq i16 %i.kn, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ko, align 8, !tbaa !755 ; 2 uses
  br i1 %.not282, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kp = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !808
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i8, ptr %i.ks, align 16            ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 49
  %.pre368.pre376 = load ptr, ptr %0, align 8, !tbaa !1865 ; 3 uses
  br i1 %i.ku, label %.critedge55, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre368.pre376, i64 216
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1128, !nonnull !67, !align !68
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = and i64 %i.kx, 8192
  %.not = icmp ne i64 %i.ky, 0
  %i.kz = icmp eq i8 %i.kt, 47
  %or.cond = and i1 %i.kz, %.not
  br i1 %or.cond, label %.thread, label %bb.bc

bb.aw:                                            ; preds = %bb.at
  %.pre368.pre = load ptr, ptr %0, align 8, !tbaa !1865 ; 2 uses
  %.pre378 = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %.pre379 = inttoptr i64 %.pre378 to ptr
  %.pre504 = load ptr, ptr %.pre379, align 16, !tbaa !808
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre504, i64 16
  %.pre505 = load i8, ptr %.phi.trans.insert, align 16
  %i.la = icmp eq i8 %.pre505, 47
  br i1 %i.la, label %.thread, label %.critedge55

.thread:                                          ; preds = %bb.av, %bb.aw
  %.pre368530 = phi ptr [ %.pre368.pre, %bb.aw ], [ %.pre368.pre376, %bb.av ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre368530, i64 8
  %i.lc = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #25
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 %i.lc, i32 noundef 6967) #25
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #25
  %.pre367 = load ptr, ptr %0, align 8, !tbaa !1865
  %.sroa.07.0.copyload.pre = load ptr, ptr %13, align 8, !tbaa !759
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !759
  br label %.critedge55

.critedge55:                                      ; preds = %bb.au, %.thread, %bb.aw
  %.sroa.2.0.copyload = phi ptr [ %.sroa.2.0.copyload.pre, %.thread ], [ %.sroa.2.0.copyload372, %bb.aw ], [ %.sroa.2.0.copyload372, %bb.au ]
  %.sroa.07.0.copyload = phi ptr [ %.sroa.07.0.copyload.pre, %.thread ], [ %.sroa.07.0.copyload370, %bb.aw ], [ %.sroa.07.0.copyload370, %bb.au ]
  %i.ld = phi ptr [ %.pre367, %.thread ], [ %.pre368.pre, %bb.aw ], [ %.pre368.pre376, %bb.au ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 232
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !805, !nonnull !67, !align !68
  %i.lg = load i64, ptr %12, align 8, !tbaa !1194 ; 5 uses
  %i.lh = icmp ugt i64 %i.lg, 7
  br i1 %i.lh, label %bb.ax, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i199

bb.ax:                                            ; preds = %.critedge55
  %i.li = trunc i64 %i.lg to i32
  %i.lj = lshr i32 %i.li, 1
  %i.lk = and i32 %i.lj, 3
  switch i32 %i.lk, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i210
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i222
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218
    i32 2, label %.lr.ph.i.i.i204.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i199: ; preds = %.critedge55
  %i.ll = icmp samesign ult i64 %i.lg, 2
  br i1 %i.ll, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit225, label %bb.ay

bb.ay:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i199
  %i.lm = load ptr, ptr %i.q, align 8, !tbaa !1197
  %.0.copyload.i.i.i200 = load i32, ptr %i.lm, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit225

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218: ; preds = %bb.ax
  %i.ln = and i64 %i.lg, -8
  %i.lo = inttoptr i64 %i.ln to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i219 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.3.0.copyload.i.i.i220 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i219, align 8, !tbaa !71 ; 2 uses
  %.not8.i.i.i221 = icmp eq i64 %.sroa.3.0.copyload.i.i.i220, 0
  br i1 %.not8.i.i.i221, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i210, label %.lr.ph.i.i.i204.preheader

.lr.ph.i.i.i204.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218, %bb.ax
  %storemerge9.i.i.i206.ph = phi i64 [ 2, %bb.ax ], [ %.sroa.3.0.copyload.i.i.i220, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i218 ]
  br label %.lr.ph.i.i.i204

.lr.ph.i.i.i204:                                  ; preds = %.lr.ph.i.i.i204.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212
  %.010.i.i.i205 = phi i32 [ %i.ls, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212 ], [ 0, %.lr.ph.i.i.i204.preheader ]
  %storemerge9.i.i.i206 = phi i64 [ %.sroa.3.0.i.i.i.i213, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212 ], [ %storemerge9.i.i.i206.ph, %.lr.ph.i.i.i204.preheader ] ; 4 uses
  %i.lp = icmp ugt i64 %storemerge9.i.i.i206, 7   ; 2 uses
  %i.lq = and i64 %storemerge9.i.i.i206, 6
  %i.lr = icmp eq i64 %i.lq, 0
  %spec.select.i.i.i.i207 = select i1 %i.lr, i32 12, i32 8
  %.0.i.i.i.i208 = select i1 %i.lp, i32 %spec.select.i.i.i.i207, i32 4
  %i.ls = add i32 %.0.i.i.i.i208, %.010.i.i.i205  ; 2 uses
  br i1 %i.lp, label %bb.az, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209

bb.az:                                            ; preds = %.lr.ph.i.i.i204
  %i.lt = trunc i64 %storemerge9.i.i.i206 to i32
  %i.lu = lshr i32 %i.lt, 1
  %i.lv = and i32 %i.lu, 3
  switch i32 %i.lv, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209
    i32 3, label %bb.ba
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212
  ]

bb.ba:                                            ; preds = %bb.az
  %i.lw = and i64 %storemerge9.i.i.i206, -8
  %i.lx = inttoptr i64 %i.lw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i215 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.3.0.copyload.i.i.i.i216 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i215, align 8, !tbaa !71
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212: ; preds = %bb.ba, %bb.az
  %.sroa.3.0.i.i.i.i213 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i216, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %.not.i.i.i214 = icmp eq i64 %.sroa.3.0.i.i.i.i213, 0
  br i1 %.not.i.i.i214, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209, label %.lr.ph.i.i.i204, !llvm.loop !14

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i209: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i212, %bb.az, %bb.az, %.lr.ph.i.i.i204
  %i.ly = add i32 %i.ls, 4
  %i.lz = zext i32 %i.ly to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i210
end_hunk_5
