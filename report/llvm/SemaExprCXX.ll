Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExprCXX?download=true
inline.NumInlined: 10145
inline.NumDeleted: 4656
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5clang4Sema22CheckConditionVariableEPNS_7VarDeclENS_14SourceLocationENS0_13ConditionKindE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.v = add i8 %i.m, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.x, align 8, !tbaa !728
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 %.sroa.0.0.copyload.i23, i32 noundef 4149) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.y = load ptr, ptr %1, align 8, !tbaa !763
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(100) %1) #25
  store i64 %i.ab, ptr %7, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = and i8 %i.ae, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.af, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = and i8 %i.m, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.ag, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.g
  %i.ah = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.f
  %.1.i8.i = phi ptr [ %i.ah, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.g, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.aj = load i24, ptr %i.ai, align 16
  %i.ak = and i24 %i.aj, 1048576
  %.not4.i.i = icmp eq i24 %i.ak, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !801 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i8, ptr %i.ap, align 16
  %i.ar = and i8 %i.aq, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.ar, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.as = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ao) #22
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ao, %.lr.ph.i.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.au = load i24, ptr %i.at, align 16
  %i.av = and i24 %i.au, 1048576
  %.not.i.i = icmp eq i24 %i.av, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.aw, align 8, !tbaa !749
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.g, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i, %bb.g ], [ %.sroa.0.0.copyload.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ax, align 8, !tbaa !728
  %i.ay = tail call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %.sroa.0.0.in.i.sroa.speculated, i32 noundef 1, i32 %.sroa.0.0.copyload.i25, ptr noundef null) #22
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, -2
  %i.bb = inttoptr i64 %i.ba to ptr               ; 3 uses
  switch i32 %3, label %bb.l [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.i:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.bc = tail call i64 @_ZN5clang4Sema21CheckBooleanConditionENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %2, ptr noundef %i.bb, i1 noundef zeroext false) #22
  br label %bb.m

bb.j:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.bd = tail call i64 @_ZN5clang4Sema21CheckBooleanConditionENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %2, ptr noundef %i.bb, i1 noundef zeroext true) #22
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.be = tail call i64 @_ZN5clang4Sema20CheckSwitchConditionENS_14SourceLocationEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %2, ptr noundef %i.bb) #22
  br label %bb.m

bb.l:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  unreachable

bb.m:                                             ; preds = %bb.c, %bb.e, %bb.k, %bb.j, %bb.i, %bb.a
  %.sroa.019.2 = phi i64 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.e ], [ %i.bc, %bb.i ], [ %i.bd, %bb.j ], [ %i.be, %bb.k ]
  ret i64 %.sroa.019.2
}

declare noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64, i32 noundef, i32, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21CheckBooleanConditionENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema20CheckSwitchConditionENS_14SourceLocationEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema24CheckCXXBooleanConditionEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %i.a = tail call i64 @_ZN5clang4Sema32PerformContextuallyConvertToBoolEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1) #22 ; 4 uses
  br i1 %2, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %i.a, -2
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i24, ptr %i.d, align 8
  %i.f = and i24 %i.e, 131072
  %.not = icmp eq i24 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  %i.h = tail call i64 @_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprENS_14SourceLocationEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.d, i32 %i.g, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.j, align 8, !tbaa !1623
  store i64 0, ptr %3, align 8, !tbaa !749
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.k, align 4, !tbaa !1625
  %i.l = and i64 %i.h, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = call i64 @_ZN5clang4Sema31VerifyIntegerConstantExpressionEPNS_4ExprEPN4llvm6APSIntEjNS_13AllowFoldKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.m, ptr noundef nonnull %3, i32 noundef 3515, i32 noundef 0) #22
  %i.o = load i32, ptr %i.j, align 8, !tbaa !1623
  %i.p = icmp ugt i32 %i.o, 64
  br i1 %i.p, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %3, align 8, !tbaa !749    ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.q) #23
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %_ZN4llvm5APIntD2Ev.exit
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %i.a, %bb.c ], [ 1, %bb.d ], [ %i.n, %_ZN4llvm5APIntD2Ev.exit ], [ %i.a, %bb.a ]
  ret i64 %.sroa.0.0
}

declare i64 @_ZN5clang4Sema32PerformContextuallyConvertToBoolEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprENS_14SourceLocationEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, -2                         ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZN5clang4Sema31DiagnoseUnexpandedParameterPackEPNS_4ExprENS0_30UnexpandedParameterPackContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.c, i32 noundef 0) #22
  br i1 %i.d, label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %3, label %bb.e, label %6

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !820, !nonnull !715, !align !716
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 2251799813685248
  %.not17 = icmp eq i64 %i.i, 0
  br i1 %.not17, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !749
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !714, !nonnull !715, !align !716 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 19368
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.m, align 8, !tbaa !749
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i18
  br i1 %i.n, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef ptr @_ZNK5clang10ASTContext13getObjCIdDeclEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.l) #22
  %i.p = tail call i64 @_ZNK5clang10ASTContext14getTypedefTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15TypedefNameDeclENS_8QualTypeESt8optionalIbE(ptr noundef nonnull align 8 dereferenceable(23904) %i.l, i32 noundef 6, i64 0, ptr noundef %i.o, i64 0, i16 0) #22
  %i.q = tail call i64 @_ZN5clang4Sema21forceUnknownAnyToTypeEPNS_4ExprENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.c, i64 %i.p) #22 ; 2 uses
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.g
  %.pre = and i64 %i.q, -2
  %.pre51 = inttoptr i64 %.pre to ptr
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.e, %bb.f
  %.pre-phi52 = phi ptr [ %.pre51, %..critedge_crit_edge ], [ %i.c, %bb.e ], [ %i.c, %bb.f ]
  %i.s = tail call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %.pre-phi52) #22 ; 2 uses
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.u = and i64 %i.s, -2
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call i64 @_ZN5clang4Sema23IgnoredValueConversionsEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.v) ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit, label %.thread

.thread:                                          ; preds = %bb.h
  %i.y = and i64 %i.w, -2                         ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  tail call void @_ZN5clang4Sema24DiagnoseUnusedExprResultEPKNS_4StmtEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.z, i32 noundef 7794) #22
  br label %bb.i

6:                                                ; preds = %bb.d
  %7 = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %7, label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit, label %bb.i

bb.i:                                             ; preds = %.thread, %6
  %.pre-phi49 = phi ptr [ %i.z, %.thread ], [ %i.c, %6 ] ; 2 uses
  %.pre-phi = phi i64 [ %i.y, %.thread ], [ %i.b, %6 ]
  tail call void @_ZN5clang4Sema18CheckCompletedExprEPNS_4ExprENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %.pre-phi49, i32 %2, i1 noundef zeroext %4) #22
  %i.aa = tail call noundef ptr @_ZN5clang4Sema12getCurLambdaEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i1 noundef zeroext true) #22 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1421 ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i46, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN5clang12CapturedDeclEEPNS1_11DeclContextEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN5clang12CapturedDeclEEPNS1_11DeclContextEEEbRKT0_.exit: ; preds = %bb.i, %_ZN5clang11DeclContext9getParentEv.exit
  %storemerge47 = phi ptr [ %.0.i.i19, %_ZN5clang11DeclContext9getParentEv.exit ], [ %i.ac, %bb.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge47, i64 8
  %i.ae = load i16, ptr %i.ad, align 8            ; 2 uses
  %i.af = and i16 %i.ae, 127
  %i.ag = icmp eq i16 %i.af, 7
  br i1 %i.ag, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang12CapturedDeclEEPNS1_11DeclContextEEEbRKT0_.exit
  %i.ah = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge47) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8 ; 3 uses
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit

bb.l:                                             ; preds = %bb.j
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1408
  br label %_ZN5clang11DeclContext9getParentEv.exit

_ZN5clang11DeclContext9getParentEv.exit:          ; preds = %bb.k, %bb.l
  %.0.i.i19 = phi ptr [ %i.al, %bb.k ], [ %i.ao, %bb.l ] ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i19, null
  br i1 %.not.i.i, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN5clang12CapturedDeclEEPNS1_11DeclContextEEEbRKT0_.exit, !llvm.loop !2414

bb.m:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang12CapturedDeclEEPNS1_11DeclContextEEEbRKT0_.exit
  %i.ap = and i16 %i.ae, 124
  %i.aq = icmp eq i16 %i.ap, 36
  br i1 %i.aq, label %bb.n, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds i8, ptr %storemerge47, i64 -72
  %i.as = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge47) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8 ; 3 uses
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1408
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i

_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i:   ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.az, %bb.p ] ; 2 uses
  %i.ba = icmp eq ptr %.0.i.i.i.i.i.i, null
  br i1 %i.ba, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !973 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i:    ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 8388608
  %.not.i.i20 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i20, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit

_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit: ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i
  %i.bg = tail call noundef i32 @_ZNK5clang12FunctionDecl21getOverloadedOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ar) #22
  %i.bh = icmp eq i32 %i.bg, 42
  %i.bi = icmp ne ptr %i.aa, null
  %or.cond = and i1 %i.bi, %i.bh
  br i1 %or.cond, label %bb.r, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread

bb.r:                                             ; preds = %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 1704
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !769
  %.not.i21 = icmp ne i32 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 1936
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = select i1 %.not.i21, i1 true, i1 %i.bn
  br i1 %i.bo, label %bb.s, label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread

bb.s:                                             ; preds = %bb.r
  %.val = load i24, ptr %1, align 8
  tail call fastcc void @_ZL57CheckIfAnyEnclosingLambdasMustCaptureAnyPotentialCapturesPN5clang4ExprEPNS_4sema15LambdaScopeInfoERNS_4SemaE(i24 %.val, ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(18640) %0)
  br label %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread

_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread: ; preds = %_ZN5clang11DeclContext9getParentEv.exit, %bb.i, %bb.q, %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i, %bb.m, %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit, %bb.r, %bb.s
  tail call void @_ZN5clang4Sema21CleanupVarDeclMarkingEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4488
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !1807, !range !731, !noundef !715
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.t, label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit

bb.t:                                             ; preds = %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !772
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !769
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [792 x i8], ptr %i.bt, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -784
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !1808
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !772
  %i.cc = zext i32 %i.bz to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !769
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !714, !nonnull !715, !align !716
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4489
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !1809, !range !731, !noundef !715
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = tail call noundef ptr @_ZN5clang16ExprWithCleanups6CreateERKNS_10ASTContextEPNS_4ExprEbN4llvm8ArrayRefINS6_12PointerUnionIJPNS_9BlockDeclEPNS_19CompoundLiteralExprEEEEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cj, ptr noundef %.pre-phi49, i1 noundef zeroext %i.cm, ptr %i.cd, i64 %i.ch) #22
  tail call void @_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #22
  %i.co = ptrtoint ptr %i.cn to i64
  br label %_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit

_ZN5clang4Sema27MaybeCreateExprWithCleanupsENS_12ActionResultIPNS_4ExprELb1EEE.exit: ; preds = %bb.t, %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread, %6, %bb.h, %.critedge, %bb.g, %bb.c, %bb.a
  %.sroa.016.0 = phi i64 [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %.critedge ], [ 1, %bb.h ], [ 1, %6 ], [ 1, %bb.a ], [ %.pre-phi, %_ZN5clang20isLambdaCallOperatorEPKNS_11DeclContextE.exit.thread ], [ %i.co, %bb.t ]
  ret i64 %.sroa.016.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema42IsStringLiteralToNonConstPointerConversionEPNS_4ExprENS_8QualTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr nofree noundef readonly %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511
  %.not = icmp eq i16 %i.b, 81
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1649
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.021 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]
  %i.e = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.021) #25 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 511
  %.not55 = icmp eq i16 %i.g, 9
  br i1 %.not55, label %bb.d, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %2, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !801 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  %.not.i = icmp eq i8 %i.l, 40
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !749
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !801
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.q, align 16
  %i.s = icmp eq i8 %i.r, 40
  br i1 %i.s, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.e
  %i.t = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.j) #22 ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread41

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread41: ; preds = %bb.d, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.1.i44 = phi ptr [ %i.t, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %i.j, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i44, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 16, !tbaa !749 ; 3 uses
  %i.v = and i64 %.sroa.0.0.copyload.i, -16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !801
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0.0.copyload.i.i.i.i33 = load i64, ptr %i.y, align 8, !tbaa !749
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i33, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !801 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 16
  %i.ae = icmp eq i8 %i.ad, 13
  %spec.select.i.i.i.i = select i1 %i.ae, ptr %i.ab, ptr null ; 2 uses
  %.not28 = icmp ne ptr %spec.select.i.i.i.i, null
  %i.af = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i35 = icmp eq i64 %i.af, 0
  %or.cond = and i1 %.not.i35, %.not28
  br i1 %or.cond, label %_ZNK5clang8QualType13hasQualifiersEv.exit, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang8QualType13hasQualifiersEv.exit:        ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread41
  %i.ag = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i1.i, 15
  %.not56 = icmp eq i64 %i.ai, 0
  br i1 %.not56, label %bb.f, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

bb.f:                                             ; preds = %_ZNK5clang8QualType13hasQualifiersEv.exit
  %i.aj = load i32, ptr %i.e, align 8
  %i.ak = lshr i32 %i.aj, 19
  %i.al = and i32 %i.ak, 7
  switch i32 %i.al, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread [
    i32 1, label %bb.h
    i32 6, label %bb.g
    i32 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.am = load i32, ptr %i.ac, align 16
  %i.an = lshr i32 %i.am, 19
  %i.ao = and i32 %i.an, 1023                     ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 454
  %i.aq = icmp eq i32 %i.ao, 465
  %spec.select = or i1 %i.ap, %i.aq
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !714, !nonnull !715, !align !716 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 18928
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.at, align 8, !tbaa !749
  %i.au = ptrtoint ptr %spec.select.i.i.i.i to i64
  %i.av = and i64 %i.au, -8
  %i.aw = tail call noundef zeroext i1 @_ZN5clang10ASTContext18typesAreCompatibleENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %i.as, i64 %.sroa.0.0.copyload.i.i, i64 %i.av, i1 noundef zeroext false) #22
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread41, %bb.f, %_ZNK5clang8QualType13hasQualifiersEv.exit, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %bb.c, %bb.h
  %i.ax = phi i1 [ %i.aw, %bb.h ], [ %spec.select, %bb.g ], [ false, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread41 ], [ false, %bb.c ], [ false, %bb.e ], [ false, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ false, %_ZNK5clang8QualType13hasQualifiersEv.exit ], [ false, %bb.f ]
  ret i1 %i.ax
}

declare noundef zeroext i1 @_ZN5clang10ASTContext18typesAreCompatibleENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904), i64, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema25PerformImplicitConversionEPNS_4ExprENS_8QualTypeERKNS_26ImplicitConversionSequenceENS_16AssignmentActionENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(152) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.clang::Sema::BoundTypeDiagnoser.2287", align 8 ; 5 uses
  %7 = alloca %"class.clang::SourceLocation", align 4 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.1602", align 8 ; 9 uses
  %9 = alloca %"class.clang::InitializedEntity", align 8 ; 8 uses
  %10 = alloca %"class.llvm::MutableArrayRef", align 8 ; 6 uses
  %11 = alloca %"class.clang::PartialDiagnostic", align 8 ; 9 uses
  %i.b = icmp eq i32 %5, 4                        ; 2 uses
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !749
  %i.d = and i64 %.sroa.0.0.copyload.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !801
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !749
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !801
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  %i.m = icmp eq i8 %i.l, 49
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %1 to i64
  br label %.thread

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = load i32, ptr %3, align 8
  %i.p = and i32 %i.o, 2147483647
  switch i32 %i.p, label %bb.an [
    i32 0, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.ae
    i32 5, label %bb.am
  ]

bb.d:                                             ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = tail call i64 @_ZN5clang4Sema25PerformImplicitConversionEPNS_4ExprENS_8QualTypeERKNS_26StandardConversionSequenceENS_16AssignmentActionENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i32 noundef %4, i32 noundef %5) ; 2 uses
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %i.r, -2
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.an

bb.f:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !749  ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 127
  %i.ab = icmp ne i32 %i.aa, 38
  %.not116 = icmp eq ptr %i.x, null
  %.not = or i1 %.not116, %i.ab                   ; 2 uses
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !714, !nonnull !715, !align !716
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.af = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8 ; 3 uses
  %i.ah = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1408
end_hunk_0
